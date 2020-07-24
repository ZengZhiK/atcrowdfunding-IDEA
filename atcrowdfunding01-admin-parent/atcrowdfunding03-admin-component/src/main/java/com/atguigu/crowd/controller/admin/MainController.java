package com.atguigu.crowd.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author zzk
 * @create 2020-7-23 21:00:33
 */
@Controller
@RequestMapping("/admin")
public class MainController {
    @RequestMapping("/main")
    public String main(HttpSession session) {
        return "main";
    }
}
