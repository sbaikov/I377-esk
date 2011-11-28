// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package main.web;

import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import main.entities.OrgYksus;
import main.entities.Vaeosa;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect OrgYksusController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String OrgYksusController.create(@Valid OrgYksus orgYksus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("orgYksus", orgYksus);
            return "orgyksuses/create";
        }
        uiModel.asMap().clear();
        orgYksus.persist();
        return "redirect:/orgyksuses/" + encodeUrlPathSegment(orgYksus.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String OrgYksusController.createForm(Model uiModel) {
        uiModel.addAttribute("orgYksus", new OrgYksus());
        return "orgyksuses/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String OrgYksusController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("orgyksus", OrgYksus.findOrgYksus(id));
        uiModel.addAttribute("itemId", id);
        return "orgyksuses/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String OrgYksusController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("orgyksuses", OrgYksus.findOrgYksusEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) OrgYksus.countOrgYksuses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("orgyksuses", OrgYksus.findAllOrgYksuses());
        }
        return "orgyksuses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String OrgYksusController.update(@Valid OrgYksus orgYksus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("orgYksus", orgYksus);
            return "orgyksuses/update";
        }
        uiModel.asMap().clear();
        orgYksus.merge();
        return "redirect:/orgyksuses/" + encodeUrlPathSegment(orgYksus.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String OrgYksusController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("orgYksus", OrgYksus.findOrgYksus(id));
        return "orgyksuses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String OrgYksusController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        OrgYksus.findOrgYksus(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/orgyksuses";
    }
    
    @ModelAttribute("orgyksuses")
    public Collection<OrgYksus> OrgYksusController.populateOrgYksuses() {
        return OrgYksus.findAllOrgYksuses();
    }
    
    @ModelAttribute("vaeosas")
    public Collection<Vaeosa> OrgYksusController.populateVaeosas() {
        return Vaeosa.findAllVaeosas();
    }
    
    String OrgYksusController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
