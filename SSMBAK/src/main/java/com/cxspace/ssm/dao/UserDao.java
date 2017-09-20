package com.cxspace.ssm.dao;

import com.cxspace.ssm.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by liujie on 2017/8/8.
 */
public interface UserDao {


    /**
     * 根据用户名和密码查询教师
     * @param name
     * @param password
     * @return
     */

    public List<User> findUserByNameAndPass(@Param("name") String name, @Param("password")String password);

    public Integer updateUserPasswordById(@Param("password")String password , @Param("id")Integer id);

}
