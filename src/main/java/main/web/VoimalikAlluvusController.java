package main.web;

import main.entities.VoimalikAlluvus;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "voimalikalluvuses", formBackingObject = VoimalikAlluvus.class)
@RequestMapping("/voimalikalluvuses")
@Controller
public class VoimalikAlluvusController {
}
