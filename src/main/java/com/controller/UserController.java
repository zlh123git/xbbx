package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zlh
 * @date 2018/5/16 10:26
 */
@Controller
@RequestMapping(value = "/admin")
public class UserController {

    @RequestMapping(value = "/login")
    public String login(String name, String password) {
        return "index";
    }
}
