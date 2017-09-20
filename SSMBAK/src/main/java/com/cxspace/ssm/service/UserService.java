package com.cxspace.ssm.service;

import com.cxspace.ssm.model.User;

import java.util.List;

/**
 * Created by liujie on 2017/8/8.
 */

public interface UserService {

    public List<User> login(String name, String password);

    public Integer updateTeacherPasswordById(String password , Integer id);

}
