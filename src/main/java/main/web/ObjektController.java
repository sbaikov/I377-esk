package main.web;

import main.entities.Objekt;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "objekts", formBackingObject = Objekt.class)
@RequestMapping("/objekts")
@Controller
public class ObjektController {
}
