package com.atguigu.crowd.controller;

import com.atguigu.crowd.bean.TAdmin;
import com.atguigu.crowd.service.TAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @author zzk
 * @create 2020-05-20 15:58
 */
@Controller
public class LoginController {
    @Autowired
    private TAdminService adminService;

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/doLogin", method = RequestMethod.POST)
    public String doLogin(
            @RequestParam String loginacct,
            @RequestParam String userpswd,
            HttpSession session) {

        Map<String, String> acctPwdMap = new HashMap<>();
        acctPwdMap.put("loginacct", loginacct);
        acctPwdMap.put("userpswd", userpswd);

        TAdmin loginAdmin = adminService.getTAdminByLogin(acctPwdMap);
        session.setAttribute("loginAdmin", loginAdmin);
        return "redirect:/admin/main";
    }
}
