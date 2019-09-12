package com.buba.service;

import com.buba.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IuserService {
    //校验用户名
    User lookuname(String Names);
    //登录
     User login( String Names, String  Passwords);
     //查询用户信息
    List<User> all(Integer id);
}
