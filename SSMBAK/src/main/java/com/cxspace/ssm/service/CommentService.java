package com.cxspace.ssm.service;

import com.cxspace.ssm.model.Comment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by liujie on 2017/8/9.
 */

public interface CommentService {

    /**
     *
     * @param comment  评论内容
     *
     *
     *     插入一条评论
     *
     * @return
     */

    public int save(Comment comment);


    /**
     *
     * 根据文档id查询所有属于改文档的评论
     *
     * @param doc_id
     * @return
     */

    public List<Comment> findCommentsByDocId(Integer doc_id);


}
