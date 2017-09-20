package com.cxspace.ssm.dao;

import com.cxspace.ssm.model.SecondCatalog;

import java.util.List;

/**
 * Created by liujie on 2017/9/19.
 */
public interface SecondCatalogDao {

    /**
     * 根据一级目录的ID查找所有二级目录
     * @param id
     * @return
     */

    public List<SecondCatalog> findAllSecondCatalogByFirstCatalogId(Integer id);

    /**
     * 存储二级目录
     *
     * @param secondCatalog
     * @return
     */

    public Integer save(SecondCatalog secondCatalog);

    /**
     * 删除二级目录
     *
     * @param id
     * @return
     */

    public Integer deleteSecondCatalogById(Integer id);


    /**
     * 根据id查询单条记录
     * @param id
     * @return
     */

    public SecondCatalog selectOne(Integer id);

    /**
     *
     * 编辑单条记录
     *
     * @param secondCatalog
     * @return
     */

    public Integer edit(SecondCatalog secondCatalog);


    public List<SecondCatalog> findAll();

}
