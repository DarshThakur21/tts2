package com.yash.smt.controllers;

//import com.yash.smt.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hello")
public class HomeController {
        @RequestMapping(method = RequestMethod.GET)
        public String printHello(ModelMap model) {
            model.addAttribute("message", "Hello Spring MVC Framework!");
            return "index";
        }
    }




