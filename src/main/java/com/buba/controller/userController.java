package com.buba.controller;

import com.buba.bean.User;
import com.buba.service.IuserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("user")
@Controller
public class userController {
    @Autowired
    private IuserService iuserService;

    //判断用户名
        @RequestMapping("/lookusername")
        @ResponseBody
    public  Boolean lookuserName(String Names){
            User lookuname = iuserService.lookuname(Names);
                if(lookuname!=null){
                    return true;
                }
                return false;
        }
        //登录
    @RequestMapping("/login")
    @ResponseBody
    public  Boolean login(String Names, String  Passwords, HttpServletRequest request,HttpSession session){
        User login = iuserService.login(Names,  Passwords);
        if (login!=null){
            session.setAttribute("user",login);
            return true;
        }
        return  false;
    }
    //查看所有用户
    @ResponseBody
    @RequestMapping("/all")
    public List<User> all( Integer id){
            System.out.println("获取的ID："+id);
            Integer a=0;
            if (id!=0){
            a=id;
            }
        List<User> all = iuserService.all(a);
        return  all;

    }
}
