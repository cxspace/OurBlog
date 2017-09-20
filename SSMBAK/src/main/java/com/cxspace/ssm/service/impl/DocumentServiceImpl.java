package com.cxspace.ssm.service.impl;

import com.cxspace.ssm.dao.CommentDao;
import com.cxspace.ssm.dao.DocumentDao;
import com.cxspace.ssm.model.Document;
import com.cxspace.ssm.model.Page;
import com.cxspace.ssm.service.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by liujie on 2017/8/9.
 */

@Service("documentServiceImpl")
public class DocumentServiceImpl implements DocumentService {

    @Autowired
    private DocumentDao documentDao;

    @Autowired
    private CommentDao commentDao;

    public int save(Document document) {
        return documentDao.save(document);
    }

    public List<Document> fillAllDoc() {
        return documentDao.fillAllDoc();
    }

    public Document findDocById(Integer doc_id) {
        return documentDao.findDocById(doc_id);
    }

    public void deleteDocById(Integer doc_id) {
        documentDao.deleteDocById(doc_id);
    }

    public Page<Document> selectPageList(Page<Document> page) {

        page.setList(documentDao.selectPageList(page));

        int totalRecord = documentDao.selectPageCount(page);

        page.setTotalRecord(totalRecord);

        if (totalRecord % page.getRows() == 0){
            page.setTotalPage(totalRecord/page.getRows());
        }else {
            page.setTotalPage(totalRecord/page.getRows() + 1);
        }

        return page;
    }


    public List<Document> findDocumentsBySecondCatalogId(Integer id) {
        return documentDao.findDocumentsBySecondCatalogId(id);
    }

    public Integer updateContentById(Document document) {
        return documentDao.updateContentById(document);
    }

    public List<Document> searchByTitle(String title) {
        return documentDao.searchByTitle("%"+title+"%");
    }
}
