package com.cxspace.ssm.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by liujie on 2017/8/8.
 */
public class Document implements Serializable {

    private Integer id;

    private String title;

    private String content;

    private String create_time;

    private String useremail;

    private String username;

    private Integer second_catalog_id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getSecond_catalog_id() {
        return second_catalog_id;
    }

    public void setSecond_catalog_id(Integer second_catalog_id) {
        this.second_catalog_id = second_catalog_id;
    }

    public Document(Integer id, String title, String content, String create_time, String useremail, String username, Integer second_catalog_id) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.create_time = create_time;
        this.useremail = useremail;
        this.username = username;
        this.second_catalog_id = second_catalog_id;
    }

    public Document() {
    }

    @Override
    public String toString() {
        return "Document{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", create_time='" + create_time + '\'' +
                ", useremail='" + useremail + '\'' +
                ", username='" + username + '\'' +
                ", second_catalog_id=" + second_catalog_id +
                '}';
    }
}
