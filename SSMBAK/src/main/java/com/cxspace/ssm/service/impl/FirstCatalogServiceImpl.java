package com.cxspace.ssm.service.impl;

import com.cxspace.ssm.dao.FirstCatalogDao;
import com.cxspace.ssm.model.FirstCatalog;
import com.cxspace.ssm.service.FirstCatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by liujie on 2017/9/19.
 */

@Service("firstCatalogServiceImpl")

public class FirstCatalogServiceImpl implements FirstCatalogService {

    @Autowired
    private FirstCatalogDao firstCatalogDao;

    public int save(FirstCatalog firstCatalog) {
        return firstCatalogDao.save(firstCatalog);
    }

    public int update(FirstCatalog firstCatalog) {
        return firstCatalogDao.update(firstCatalog);
    }

    public List<FirstCatalog> findAllFirstCatalog() {
        return firstCatalogDao.findAllFirstCatalog();
    }

    public Integer delete(FirstCatalog firstCatalog) {
        return firstCatalogDao.delete(firstCatalog);
    }

    public FirstCatalog selectOne(Integer id) {
        return firstCatalogDao.selectOne(id);
    }


}
