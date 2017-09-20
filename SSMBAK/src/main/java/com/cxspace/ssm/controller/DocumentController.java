package com.cxspace.ssm.controller;

import com.cxspace.ssm.model.*;
import com.cxspace.ssm.service.CommentService;
import com.cxspace.ssm.service.DocumentService;
import com.cxspace.ssm.service.FirstCatalogService;
import com.cxspace.ssm.service.SecondCatalogService;
import com.cxspace.ssm.utils.DateTimeHelper;
import org.apache.ibatis.javassist.scopedpool.SoftValueHashMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Created by liujie on 2017/8/9.
 */

@Controller
@RequestMapping("/blog")

public class DocumentController {


    @Resource
    private DocumentService documentService;

    @Resource
    private CommentService commentService;

    @Resource
    private FirstCatalogService firstCatalogService;

    @Resource
    private SecondCatalogService secondCatalogService;

    @RequestMapping("/article_manager")
    public String manager_list(int id ,HttpSession session, Model model){

        session.setAttribute("second_catalog_id",id);

        List<Document> documents = new ArrayList<Document>();

        documents = documentService.findDocumentsBySecondCatalogId(id);

        model.addAttribute("documents",documents);

        return "article_manager";
    }

    @RequestMapping("/article_manager_editUI")
    public String article_manager_editUI(int id ,  Model model){


        Document document = documentService.findDocById(id);

        model.addAttribute("document" , document);

        return "article_manager_edit";
    }

    @RequestMapping("/article_manager_edit")
    public String article_manager_edit(int id , String title , HttpSession session, String content , Model model){

        Document document = new Document();

        document.setId(id);

        document.setTitle(title);

        document.setContent(content);

        documentService.updateContentById(document);

        Integer second_catalog_id = (Integer) session.getAttribute("second_catalog_id");

        List<Document> documents = new ArrayList<Document>();

        documents = documentService.findDocumentsBySecondCatalogId(second_catalog_id);

        model.addAttribute("documents",documents);

        return "article_manager";
    }

    @RequestMapping("/article_manager_delete")
    public String article_manager_delete(int id , HttpSession session,Model model){

        documentService.deleteDocById(id);

        Integer second_catalog_id = (Integer) session.getAttribute("second_catalog_id");

        List<Document> documents = new ArrayList<Document>();

        documents = documentService.findDocumentsBySecondCatalogId(second_catalog_id);

        model.addAttribute("documents",documents);

        return "article_manager";
    }

    @RequestMapping("/detail")
    public String detail(int id,Model model){

        Document document = documentService.findDocById(id);

        List<Comment> comments = new ArrayList<Comment>();

        comments = commentService.findCommentsByDocId(id);

        model.addAttribute("comments",comments);

        model.addAttribute("document",document);

        return "blog_detail";
    }

    @RequestMapping("/index_search")
    public String index_search(String title,Model model) {

        List<Document> documents = documentService.searchByTitle(title);

        model.addAttribute("documents",documents);

        List<FirstCatalog> firstCatalogs = firstCatalogService.findAllFirstCatalog();

        List<SecondCatalog> secondCatalogs = secondCatalogService.findAll();

        model.addAttribute("secondCatalogs",secondCatalogs);

        model.addAttribute("firstCatalogs",firstCatalogs);

        return "index";
    }

    @RequestMapping("/search")
    public String search(String title,Model model) {

        List<Document> documents = documentService.searchByTitle(title);

        model.addAttribute("documents",documents);

        return "article_manager";
    }


    @RequestMapping("/blog_select")
    public String blog_select(int id,Model model){

        List<Document> documentList = new ArrayList<Document>();

        documentList = documentService.findDocumentsBySecondCatalogId(id);

        model.addAttribute("documentList",documentList);

        return "blog_select";
    }

    @RequestMapping("/catalog_select")
    public String catalog_select(int id, Model model){

        List<SecondCatalog> secondCatalogs = secondCatalogService.findAllSecondCatalogByFirstCatalogId(id);

        model.addAttribute("secondCatalogs",secondCatalogs);

        return "/catalog_select";
    }

    @RequestMapping("/secondCatalog")
    @ResponseBody
    public Map<String,Object> secondCatalog(int id,Model model){

        List<SecondCatalog> secondCatalogs = secondCatalogService.findAllSecondCatalogByFirstCatalogId(id);

        Map<String,Object> ReturnMap = new HashMap<String, Object>();

        System.out.println(secondCatalogs);

        ReturnMap.put("secondCatalogs",secondCatalogs);

        return ReturnMap;
    }

    @RequestMapping("/addUI")
    public String addUI(Model model){

        List<FirstCatalog> firstCatalogs = new ArrayList<FirstCatalog>();
        List<SecondCatalog> secondCatalogs = new ArrayList<SecondCatalog>();

        firstCatalogs = firstCatalogService.findAllFirstCatalog();

        model.addAttribute("firstCatalogs",firstCatalogs);

        return "add_blog";
    }

    @RequestMapping("/add")
    public String save(Document document, HttpSession session){

//        System.out.println("second_catalog_id: "+document.getSecond_catalog_id());

        document.setUsername (((User)(session.getAttribute("USER"))).getName());

        document.setCreate_time(DateTimeHelper.getCurrentTime());

        documentService.save(document);

        return "redirect:/main/index";
    }

}
