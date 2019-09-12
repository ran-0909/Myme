<%--
  Created by IntelliJ IDEA.
  User: 燃
  Date: 2019/9/3
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>绿色清爽响应式登录页面模板</title>
    <style>
        * { margin: 0; padding: 0; }
        html { height: 100%; }
        body { height: 100%; background: #fff url(/static/images/backgroud.png) 50% 50% no-repeat; background-size: cover;}
        .dowebok { position: absolute; left: 50%; top: 50%; width: 430px; height: 550px; margin: -300px 0 0 -215px; border: 1px solid #fff; border-radius: 20px; overflow: hidden;}
        .logo { width: 104px; height: 104px; margin: 50px auto 80px; background: url(static/images/login.png) 0 0 no-repeat; }
        .form-item { position: relative; width: 360px; margin: 0 auto; padding-bottom: 30px;}
        .form-item input { width: 288px; height: 48px; padding-left: 70px; border: 1px solid #fff; border-radius: 25px; font-size: 18px; color: #fff; background-color: transparent; outline: none;}
        .form-item button { width: 360px; height: 50px; border: 0; border-radius: 25px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff; }
        #username { background: url(/static/images/emil.png) 20px 14px no-repeat; }
        #password { background: url(/static/images/password.png) 23px 11px no-repeat; }
        .tip { display: none; position: absolute; left: 20px; top: 52px; font-size: 14px; color: #f50; }
        .reg-bar { width: 360px; margin: 20px auto 0; font-size: 14px; overflow: hidden;}
        .reg-bar a { color: #fff; text-decoration: none; }
        .reg-bar a:hover { text-decoration: underline; }
        .reg-bar .reg { float: left; }
        .reg-bar .forget { float: right; }
        .dowebok ::-webkit-input-placeho4lder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok ::-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-ms-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}

        @media screen and (max-width: 500px) {
            * { box-sizing: border-box; }
            .dowebok { position: static; width: auto; height: auto; margin: 0 30px; border: 0; border-radius: 0; }
            .logo { margin: 50px auto; }
            .form-item { width: auto; }
            .form-item input, .form-item button, .reg-bar { width: 100%; }
        }
    </style>
</head>
<body>
<div class="dowebok">
    <div class="logo"></div>
    <div class="form-item">
        <input id="username" name="uname" type="text" autocomplete="off" placeholder="用户名"><span id="dui" ><b style="color:#325aff" >合格√</b></span>
        <p class="tip">请输入合法的用户名</p>
    </div>
    <div class="form-item">
        <input id="password" type="password" name="passwoed" autocomplete="off" placeholder="登录密码">
        <p class="tip">用户名或密码不正确</p>
    </div>
    <div class="form-item"><button id="submit">登 录</button></div>
    <div class="reg-bar">
        <a class="reg" href="javascript:">立即注册</a>
        <a class="forget" href="javascript:">忘记密码</a>
    </div>
</div>
<script src="static/images/jquery.min.js"></script>
<script>

  $(function () {
      //用户名判断
      $("#dui").hide()
      $("#username").blur(function () {
          var uname= $("#username").val();
          alert(uname);
          $.ajax({
              url:"${pageContext.request.contextPath}/user/lookusername",
              dataType:"json",
              type:"post",
              data:{"Names":uname},
              success:function (data) {
                  if (data){
                      $("#dui").show();
                  }
              }
          })
      })
      //登录
      $("#submit").click(function () {
          var username= $("#username").val();
          var password=$("#password").val();
          alert( password);
          $.ajax({
              url:"${pageContext.request.contextPath}/user/login",
              type:"post",
              dataType:"json",
              data:{"Names":username,"Passwords":password},
              success:function (data) {
                  if(data){
                      alert("登陆成功");
                      window.location.href="${pageContext.request.contextPath}/indext.jsp";
                  }
              }
          })
      })
    })
</script>


</body>
</html>
