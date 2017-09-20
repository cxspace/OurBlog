package com.cxspace.ssm.controller;

import com.cxspace.ssm.model.Comment;
import com.cxspace.ssm.model.Document;
import com.cxspace.ssm.model.User;
import com.cxspace.ssm.service.CommentService;
import com.cxspace.ssm.service.DocumentService;
import com.cxspace.ssm.utils.DateTimeHelper;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by liujie on 2017/8/9.
 */

@Controller

@RequestMapping("/comment")

public class CommentController {

    @Resource
    private CommentService commentService;

    @RequestMapping("/save")

    public String save(Comment comment, HttpSession session, Model model){

        List<Comment> comments = new ArrayList<Comment>();


        comment.setCreate_time(DateTimeHelper.getCurrentTime());

        commentService.save(comment);

        comments = commentService.findCommentsByDocId(comment.getDoc_id());

        model.addAttribute("comments",comments);

        return "forward:/blog/detail?id="+comment.getDoc_id();
    }

}
