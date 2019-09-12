package com.buba.service.impl;

import com.buba.bean.User;
import com.buba.mapper.UserMapper;
import com.buba.service.IuserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class userServiceImpl implements IuserService {
    @Autowired
    private UserMapper userMapper;

//用户名判断
    @Override
    public User lookuname(String Names) {
        User lookuname1 = userMapper.lookuname(Names);
        if (lookuname1!=null){
            return lookuname1;
        }
        return  null;
    }
//登录
    @Override
    public User login(String Names, String Passwords) {
        User login = userMapper.login(Names,  Passwords);
        if(login!=null){
            return login;
        }

        return null;
    }
    //所有用户信息的查询
    @Override
    public List<User> all(Integer id) {
        return userMapper.all(id);
    }
}
