package com.cxspace.ssm.controller;

import com.cxspace.ssm.model.SecondCatalog;
import com.cxspace.ssm.service.DocumentService;
import com.cxspace.ssm.service.SecondCatalogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by liujie on 2017/9/19.
 */

@Controller

@RequestMapping("/second_catalog")
public class SecondCatalogController {

    @Resource
    private SecondCatalogService secondCatalogService;

    @Resource
    private DocumentService documentService;

    @RequestMapping("/delete")
    public String delete(Integer id,Model model,HttpSession session){


        if(documentService.findDocumentsBySecondCatalogId(id).size() == 0) {
            secondCatalogService.deleteSecondCatalogById(id);
            model.addAttribute("ErrorMsg","");
        }else {
            model.addAttribute("ErrorMsg","请先删除下级目录!!!");
        }

        String first_catalog_id = (String) session.getAttribute("first_catalog_id");

        List<SecondCatalog> secondCatalogs = new ArrayList<SecondCatalog>();

        secondCatalogs = secondCatalogService.findAllSecondCatalogByFirstCatalogId(Integer.parseInt(first_catalog_id));

        model.addAttribute("secondCatalogs",secondCatalogs);

        return "second_catalog_manager";
    }

    @RequestMapping("/add")
    public String add(SecondCatalog secondCatalog, HttpSession session , Model model){

        String first_catalog_id = (String) session.getAttribute("first_catalog_id");

        System.out.println(first_catalog_id+"==============");

        SecondCatalog secondCatalogNew = new SecondCatalog();

        secondCatalogNew.setFirst_catalog_id(Integer.parseInt(first_catalog_id));

        secondCatalogNew.setName(secondCatalog.getName());

        secondCatalogService.save(secondCatalogNew);

        List<SecondCatalog> secondCatalogs = new ArrayList<SecondCatalog>();

        secondCatalogs = secondCatalogService.findAllSecondCatalogByFirstCatalogId(Integer.parseInt(first_catalog_id));

        model.addAttribute("secondCatalogs",secondCatalogs);

        System.out.println(secondCatalog.getName());

        return "second_catalog_manager";
    }

    @RequestMapping("/edit")
    public String edit(SecondCatalog secondCatalog, HttpSession session,Model model){


        String first_catalog_id = (String) session.getAttribute("first_catalog_id");

        System.out.println(first_catalog_id+"==============");

        secondCatalogService.edit(secondCatalog);

        List<SecondCatalog> secondCatalogs = new ArrayList<SecondCatalog>();

        secondCatalogs = secondCatalogService.findAllSecondCatalogByFirstCatalogId(Integer.parseInt(first_catalog_id));

        model.addAttribute("secondCatalogs",secondCatalogs);


        return "second_catalog_manager";
    }

    @RequestMapping("/editUI")
    public String editUI(HttpServletRequest request,Model model){

        String id = request.getParameter("id");

        SecondCatalog secondCatalog = secondCatalogService.selectOne(Integer.parseInt(id));

        model.addAttribute("secondCatalog",secondCatalog);

        return "second_catalog_edit";
    }

}

