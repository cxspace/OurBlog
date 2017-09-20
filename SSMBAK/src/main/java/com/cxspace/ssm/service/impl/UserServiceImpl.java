package com.cxspace.ssm.service.impl;

import com.cxspace.ssm.dao.UserDao;
import com.cxspace.ssm.model.User;
import com.cxspace.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by liujie on 2017/8/8.
 */

@Service("teacherServiceImpl")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public List<User> login(String name, String password) {
        return userDao.findUserByNameAndPass(name,password);
    }

    public Integer updateTeacherPasswordById(String password, Integer id) {
        return userDao.updateUserPasswordById(password, id);
    }
}
