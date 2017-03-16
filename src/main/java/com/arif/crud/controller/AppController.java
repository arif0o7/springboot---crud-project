package com.arif.crud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {

    @RequestMapping("/")
    String home(ModelMap model){
        model.addAttribute("title","CRUD Example");
        return "list";
    }
    @RequestMapping("/partials/{page}")
    String partialHandaler(@PathVariable("page") final String page){
        return page;
    }
}
