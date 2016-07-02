package kr.shin.server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2016-06-19.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @RequestMapping
    public String adminLogin() {
        return "admin/index";
    }
}
