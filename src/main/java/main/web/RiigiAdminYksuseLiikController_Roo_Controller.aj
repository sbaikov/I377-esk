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
import main.entities.RiigiAdminYksus;
import main.entities.RiigiAdminYksuseLiik;
import main.entities.VoimalikAlluvus;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect RiigiAdminYksuseLiikController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String RiigiAdminYksuseLiikController.create(@Valid RiigiAdminYksuseLiik riigiAdminYksuseLiik, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("riigiAdminYksuseLiik", riigiAdminYksuseLiik);
            return "riigiadminyksuseliiks/create";
        }
        uiModel.asMap().clear();
        riigiAdminYksuseLiik.persist();
        return "redirect:/riigiadminyksuseliiks/" + encodeUrlPathSegment(riigiAdminYksuseLiik.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String RiigiAdminYksuseLiikController.createForm(Model uiModel) {
        uiModel.addAttribute("riigiAdminYksuseLiik", new RiigiAdminYksuseLiik());
        return "riigiadminyksuseliiks/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String RiigiAdminYksuseLiikController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("riigiadminyksuseliik", RiigiAdminYksuseLiik.findRiigiAdminYksuseLiik(id));
        uiModel.addAttribute("itemId", id);
        return "riigiadminyksuseliiks/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String RiigiAdminYksuseLiikController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("riigiadminyksuseliiks", RiigiAdminYksuseLiik.findRiigiAdminYksuseLiikEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) RiigiAdminYksuseLiik.countRiigiAdminYksuseLiiks() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("riigiadminyksuseliiks", RiigiAdminYksuseLiik.findAllRiigiAdminYksuseLiiks());
        }
        return "riigiadminyksuseliiks/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String RiigiAdminYksuseLiikController.update(@Valid RiigiAdminYksuseLiik riigiAdminYksuseLiik, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("riigiAdminYksuseLiik", riigiAdminYksuseLiik);
            return "riigiadminyksuseliiks/update";
        }
        uiModel.asMap().clear();
        riigiAdminYksuseLiik.merge();
        return "redirect:/riigiadminyksuseliiks/" + encodeUrlPathSegment(riigiAdminYksuseLiik.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String RiigiAdminYksuseLiikController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("riigiAdminYksuseLiik", RiigiAdminYksuseLiik.findRiigiAdminYksuseLiik(id));
        return "riigiadminyksuseliiks/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String RiigiAdminYksuseLiikController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        RiigiAdminYksuseLiik.findRiigiAdminYksuseLiik(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/riigiadminyksuseliiks";
    }
    
    @ModelAttribute("riigiadminyksuses")
    public Collection<RiigiAdminYksus> RiigiAdminYksuseLiikController.populateRiigiAdminYksuses() {
        return RiigiAdminYksus.findAllRiigiAdminYksuses();
    }
    
    @ModelAttribute("riigiadminyksuseliiks")
    public Collection<RiigiAdminYksuseLiik> RiigiAdminYksuseLiikController.populateRiigiAdminYksuseLiiks() {
        return RiigiAdminYksuseLiik.findAllRiigiAdminYksuseLiiks();
    }
    
    @ModelAttribute("voimalikalluvuses")
    public Collection<VoimalikAlluvus> RiigiAdminYksuseLiikController.populateVoimalikAlluvuses() {
        return VoimalikAlluvus.findAllVoimalikAlluvuses();
    }
    
    String RiigiAdminYksuseLiikController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
