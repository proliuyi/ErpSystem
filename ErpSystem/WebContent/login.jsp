<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>系统登录 - 鑫源丰erp后台管理系统</title>
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body class="login_bg">
    <section class="loginBox">
        <header class="loginHeader">
            <h1>鑫源丰erp后台管理系统</h1>
        </header>
        <section class="loginCont">
            <form action="/ErpSystem/userAction" class="actionForm" id="actionFrom" method="post" >
            <input type="hidden" name="action" value="login" />
                <div class="inputbox">
                    <label for="user">用户名：</label>
                    <input id="user" type="text" name="uname" placeholder="请输入用户名" required/>
                </div>
                <div class="inputbox">
                    <label for="mima">密码：</label>
                    <input id="mima" type="password" name="pwd" placeholder="请输入密码" required/>
                </div>
                <div class="subBtn">
                <span style="color:red;">${error}</span>
                    <input type="submit" value="登录" />
                    <input type="reset" value="重置"/>
                </div>
            </form>
        </section>
    </section>
</body>
</html>