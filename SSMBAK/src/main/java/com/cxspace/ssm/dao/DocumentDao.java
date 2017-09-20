package com.cxspace.ssm.dao;

import com.cxspace.ssm.model.Document;
import com.cxspace.ssm.model.Page;

import java.util.List;

/**
 * Created by liujie on 2017/8/8.
 */
public interface DocumentDao {
    /**
     *
     * @param document 文档内容
     * @return
     *
     * 保存文档
     *
     */

    public int save(Document document);


    /**
     *
     * 通过二级目录查所有文章列表
     *
     * @param id
     * @return
     */

    public List<Document> findDocumentsBySecondCatalogId(Integer id);


    /**
     * 编辑某个具体文档的内容
     *
     * @param document
     * @return
     */

    public Integer updateContentById(Document document);



    /**
     * 查询并返回所有文档
     * @return
     *
     */
    public List<Document> fillAllDoc();


    /**
     * 通过文档id查询文档详细内容
     * @param doc_id
     * @return
     *
     */

    public Document findDocById(Integer doc_id);


    /*
       通过文档Id删除改文档
     */

    public void deleteDocById(Integer doc_id);



    /**
     * 分页查询,返回总记录数
     *
     * @param page
     * @return
     */

    public Integer selectPageCount(Page<Document> page);


    /**
     * 分页查询数据
     *
     * @param page
     * @return
     */

    public List<Document> selectPageList(Page<Document> page);


    /**
     *
     * 根据标题检索文章
     *
     * @param title
     * @return
     */

    public List<Document> searchByTitle(String title);

}
