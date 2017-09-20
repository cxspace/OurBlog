package com.cxspace.ssm.model;

import java.io.Serializable;

/**
 * Created by liujie on 2017/9/19.
 */
public class FirstCatalog implements Serializable{

    private Integer id;

    private String name;

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

    public FirstCatalog(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public FirstCatalog() {

    }

    @Override
    public String toString() {
        return "FirstCatalog{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
