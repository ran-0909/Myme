package com.buba.bean;

public class User {
    private  Integer id;
    private  String  name;
    private  String Names;
    private String Passwords;
    private  String phone;
    private  String sex;
    private  String age;


    public User() {
        super();
    }

    public User(Integer id, String name, String names, String passwords, String phone, String sex, String age) {
        this.id = id;
        this.name = name;
        Names = names;
        Passwords = passwords;
        this.phone = phone;
        this.sex = sex;
        this.age = age;
    }

    public String getPasswords() {
        return Passwords;
    }

    public void setPasswords(String Passwords) {
        this.Passwords = Passwords;
    }

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

    public String getNames() {
        return Names;
    }

    public void setUserName(String Names) {
        this.Names = Names;
    }

    public void setNames(String names) {
        Names = names;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", Names='" + Names + '\'' +
                ", Passwords='" + Passwords + '\'' +
                ", phone='" + phone + '\'' +
                ", sex='" + sex + '\'' +
                ", age='" + age + '\'' +
                '}';
    }
}
