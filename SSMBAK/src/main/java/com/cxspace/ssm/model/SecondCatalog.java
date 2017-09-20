package com.cxspace.ssm.model;

import java.io.Serializable;

/**
 * Created by liujie on 2017/9/19.
 */
public class SecondCatalog implements Serializable{

    private Integer id;

    private String name;

    private Integer first_catalog_id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getFirst_catalog_id() {
        return first_catalog_id;
    }

    public void setFirst_catalog_id(Integer first_catalog_id) {
        this.first_catalog_id = first_catalog_id;
    }

    public SecondCatalog() {
    }

    public SecondCatalog(Integer id, String name, Integer first_catalog_id) {
        this.id = id;
        this.name = name;
        this.first_catalog_id = first_catalog_id;
    }

    @Override
    public String toString() {
        return "SecondCatalog{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", first_catalog_id=" + first_catalog_id +
                '}';
    }
}
