package com.cxspace.ssm.service;

import com.cxspace.ssm.model.FirstCatalog;
import com.cxspace.ssm.model.SecondCatalog;

import java.util.List;

/**
 * Created by liujie on 2017/9/19.
 */
public interface FirstCatalogService {


    /**
     *
     * 添加一级目录
     *
     * @param firstCatalog
     * @return
     */

    public int save(FirstCatalog firstCatalog);

    /**
     *
     * 编辑一级目录
     *
     * @param firstCatalog
     * @return
     */

    public int update(FirstCatalog firstCatalog);

    /**
     *
     * 查找所有一级目录
     * @return
     */

    public List<FirstCatalog> findAllFirstCatalog();

    /**
     * 删除一级目录
     * @param firstCatalog
     * @return
     */

    public Integer delete(FirstCatalog firstCatalog);

    /**
     * 编辑一级目录
     * @param id
     * @return
     */

    public FirstCatalog selectOne(Integer id);


}
