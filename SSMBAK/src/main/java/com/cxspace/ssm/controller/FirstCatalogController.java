package com.cxspace.ssm.controller;

import com.cxspace.ssm.model.FirstCatalog;
import com.cxspace.ssm.model.SecondCatalog;
import com.cxspace.ssm.service.FirstCatalogService;
import com.cxspace.ssm.service.SecondCatalogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by liujie on 2017/9/19.
 */

@Controller

@RequestMapping("/first_catalog")

public class FirstCatalogController {

    @Resource
    private FirstCatalogService firstCatalogService;

    @Resource
    private SecondCatalogService secondCatalogService;

    /**
     * 添加一级目录
     * @param firstCatalog
     * @return
     */

    @RequestMapping("/add")
    public String add(FirstCatalog firstCatalog){

        System.out.println(firstCatalog.getName()+"==="+firstCatalog.getId());

        firstCatalogService.save(firstCatalog);

        return "redirect:/first_catalog/list";
    }

    @RequestMapping("/list")
    public String list(Model model){

        List<FirstCatalog> firstCatalogs = new ArrayList<FirstCatalog>();

        firstCatalogs = firstCatalogService.findAllFirstCatalog();

        System.out.println(firstCatalogs);

        model.addAttribute("firstCatalogs",firstCatalogs);

        return "forward:/main/blog_manager";
    }

    @RequestMapping("/delete")
    public String delete(Integer id,Model model){

        List<SecondCatalog> secondCatalogs = secondCatalogService.findAllSecondCatalogByFirstCatalogId(id);

        if (secondCatalogs.size()==0) {

            firstCatalogService.delete(new FirstCatalog(id, ""));
            model.addAttribute("ErrorMsg","");
        }else {
            model.addAttribute("ErrorMsg","请先删除下级目录!!!");
        }

        return "forward:/first_catalog/list";
    }

    @RequestMapping("/editUI")
    public String editUI(HttpServletRequest request , Model model){

        String id = request.getParameter("id");

        FirstCatalog firstCatalog = firstCatalogService.selectOne(Integer.parseInt(id));

        model.addAttribute("firstCatalog",firstCatalog);

        return "first_catalog_edit";
    }

    @RequestMapping("/edit")
    public String edit(FirstCatalog firstCatalog){

        firstCatalogService.update(firstCatalog);

        return "redirect:/first_catalog/list";
    }

    @RequestMapping("/second_catalog_manager")
    public String second_catalog_manager(HttpServletRequest request , HttpSession session ,Model model){

        String first_catalog_id = request.getParameter("id");

        List<SecondCatalog> secondCatalogs = secondCatalogService.findAllSecondCatalogByFirstCatalogId(Integer.parseInt(first_catalog_id));

        model.addAttribute("secondCatalogs",secondCatalogs);

        session.setAttribute("first_catalog_id",first_catalog_id);

        return "second_catalog_manager";
    }

}
