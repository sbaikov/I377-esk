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
import main.entities.Intsident;
import main.entities.IsikIntsidendi;
import main.entities.IsikuSeadusIntsidendi;
import main.entities.Piiririkkuja;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect IsikIntsidendiController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String IsikIntsidendiController.create(@Valid IsikIntsidendi isikIntsidendi, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("isikIntsidendi", isikIntsidendi);
            return "isikintsidendis/create";
        }
        uiModel.asMap().clear();
        isikIntsidendi.persist();
        return "redirect:/isikintsidendis/" + encodeUrlPathSegment(isikIntsidendi.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String IsikIntsidendiController.createForm(Model uiModel) {
        uiModel.addAttribute("isikIntsidendi", new IsikIntsidendi());
        return "isikintsidendis/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String IsikIntsidendiController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("isikintsidendi", IsikIntsidendi.findIsikIntsidendi(id));
        uiModel.addAttribute("itemId", id);
        return "isikintsidendis/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String IsikIntsidendiController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("isikintsidendis", IsikIntsidendi.findIsikIntsidendiEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) IsikIntsidendi.countIsikIntsidendis() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("isikintsidendis", IsikIntsidendi.findAllIsikIntsidendis());
        }
        return "isikintsidendis/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String IsikIntsidendiController.update(@Valid IsikIntsidendi isikIntsidendi, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("isikIntsidendi", isikIntsidendi);
            return "isikintsidendis/update";
        }
        uiModel.asMap().clear();
        isikIntsidendi.merge();
        return "redirect:/isikintsidendis/" + encodeUrlPathSegment(isikIntsidendi.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String IsikIntsidendiController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("isikIntsidendi", IsikIntsidendi.findIsikIntsidendi(id));
        return "isikintsidendis/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String IsikIntsidendiController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        IsikIntsidendi.findIsikIntsidendi(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/isikintsidendis";
    }
    
    @ModelAttribute("intsidents")
    public Collection<Intsident> IsikIntsidendiController.populateIntsidents() {
        return Intsident.findAllIntsidents();
    }
    
    @ModelAttribute("isikintsidendis")
    public Collection<IsikIntsidendi> IsikIntsidendiController.populateIsikIntsidendis() {
        return IsikIntsidendi.findAllIsikIntsidendis();
    }
    
    @ModelAttribute("isikuseadusintsidendis")
    public Collection<IsikuSeadusIntsidendi> IsikIntsidendiController.populateIsikuSeadusIntsidendis() {
        return IsikuSeadusIntsidendi.findAllIsikuSeadusIntsidendis();
    }
    
    @ModelAttribute("piiririkkujas")
    public Collection<Piiririkkuja> IsikIntsidendiController.populatePiiririkkujas() {
        return Piiririkkuja.findAllPiiririkkujas();
    }
    
    String IsikIntsidendiController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
