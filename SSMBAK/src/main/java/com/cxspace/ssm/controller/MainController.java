package com.cxspace.ssm.controller;

import com.cxspace.ssm.model.*;
import com.cxspace.ssm.service.DocumentService;
import com.cxspace.ssm.service.FirstCatalogService;
import com.cxspace.ssm.service.SecondCatalogService;
import com.cxspace.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by liujie on 2017/8/5.
 */


@Controller

@RequestMapping("/main")
public class MainController {


    @Resource
    private DocumentService documentService;

    @Resource
    private UserService userService;

    @Resource
    private FirstCatalogService firstCatalogService;

    @Resource
    private SecondCatalogService secondCatalogService;

    /**
     *
     * @function 跳转到主页
     *
     * @return
     */

    @RequestMapping("/index")
    public String Index(Model model){

        List<FirstCatalog> firstCatalogs = firstCatalogService.findAllFirstCatalog();

        List<SecondCatalog> secondCatalogs = secondCatalogService.findAll();

        model.addAttribute("secondCatalogs",secondCatalogs);

        model.addAttribute("firstCatalogs",firstCatalogs);

        return "index";
    }

    /**
     *
     * @function 登录逻辑
     *
     *
     * @param session
     * @return
     */

    @RequestMapping("/login")

    public String doLogin(User user, HttpSession session){

        System.out.println(user.getName()+"==="+user.getPassword());

        if (userService.login(user.getName(),user.getPassword()).size() > 0)
        {
            session.setAttribute("USER",userService.login(user.getName(),user.getPassword()).get(0));

            session.setAttribute("ErrorMsg","");

        }else {

            session.setAttribute("ErrorMsg","用户名或密码错误!!!");

            return "redirect:/main/index";
        }

        return "redirect:/main/index";
    }


    /**
     * 注销
     *
     * @param session
     * @return
     */

    @RequestMapping("/loginOut")
    public String logout(HttpSession session){

        session.removeAttribute("USER");

        return "redirect:/main/index";
    }

    @RequestMapping("/blog_manager")
    public String blog_manager(Model model){

        List<FirstCatalog> firstCatalogs = new ArrayList<FirstCatalog>();

        firstCatalogs = firstCatalogService.findAllFirstCatalog();

        System.out.println(firstCatalogs);

        model.addAttribute("firstCatalogs",firstCatalogs);

        return "blog_manager";
    }

}
