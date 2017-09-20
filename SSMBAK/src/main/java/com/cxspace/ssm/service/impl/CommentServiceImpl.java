package com.cxspace.ssm.service.impl;

import com.cxspace.ssm.dao.CommentDao;
import com.cxspace.ssm.model.Comment;
import com.cxspace.ssm.service.CommentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liujie on 2017/8/9.
 */

@Service("commentServiceImpl")

public class CommentServiceImpl implements CommentService{

    @Resource
    private CommentDao commentDao;

    public int save( Comment comment ) {
        return commentDao.save(comment);
    }

    public List<Comment> findCommentsByDocId(Integer doc_id) {
        return commentDao.findCommentsByDocId(doc_id);
    }
}
