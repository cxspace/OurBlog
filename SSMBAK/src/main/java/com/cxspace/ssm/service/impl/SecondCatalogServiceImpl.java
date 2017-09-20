package com.cxspace.ssm.service.impl;

import com.cxspace.ssm.dao.SecondCatalogDao;
import com.cxspace.ssm.model.SecondCatalog;
import com.cxspace.ssm.service.SecondCatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by liujie on 2017/9/19.
 */

@Service("secondCatalogServiceImpl")
public class SecondCatalogServiceImpl implements SecondCatalogService{

    @Autowired
    private SecondCatalogDao secondCatalogDao;

    public List<SecondCatalog> findAllSecondCatalogByFirstCatalogId(Integer id) {
        return secondCatalogDao.findAllSecondCatalogByFirstCatalogId(id);
    }

    public Integer save(SecondCatalog secondCatalog) {
        return secondCatalogDao.save(secondCatalog);
    }

    public Integer deleteSecondCatalogById(Integer id) {
        return secondCatalogDao.deleteSecondCatalogById(id);
    }

    public SecondCatalog selectOne(Integer id) {
        return secondCatalogDao.selectOne(id);
    }


    public Integer edit(SecondCatalog secondCatalog) {
        return secondCatalogDao.edit(secondCatalog);
    }

    public List<SecondCatalog> findAll() {
        return secondCatalogDao.findAll();
    }
}
