<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <base href="http://localhost:8080/mes/static/">
    <title>登录</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=yes" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- 新 Bootstrap 核心 CSS 文件 -->
<%--    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">--%>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<%--    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
</head>
<body>
<div class="container">
    <div class="main">
        <div class="bg"></div>
        <form class="formone" action="../login" method="post" id="formid">
            <div class="title">登录</div>
            <span class="help-block">${empty param.meg?"请输入用户和密码":param.meg}</span>
            <div class="username"><input type="text" name="luser" id="login-username" v-model="username" value="" placeholder="请输入账号" /></div>
            <div class="password"><input type="password" name="lpass" v-model="password" id="login-password" value="" placeholder="请输入密码" /></div>
            <div class="loginbtn">
                <div class="btnbg" onclick="checkUser()">登录</div><button type="submit" id="sub_btn">登录</button>
            </div>
            <div class="registerbtn">
                <div class="btnbg">注册</div><button type="button">注册</button>
            </div>
        </form>
        <div class="registerpage">
            <form class="formtwo" action="../regist" method="post" id="formid2">
                <div class="registertitle">注册</div>
                <div> <span class="help-block">${empty param.mesg?"请输入用户名和密码":param.mesg}</span></div>
                <div class="savename"><input type="text" name="number" id="register-username" value="" placeholder="请输入学号" /></div>
                <div class=""><input type="text" name="name" id="register-realname" value="" placeholder="请输入姓名" /></div>
                <div class=""><input type="password" name="password" id="register-password" value="" placeholder="请输入密码" /></div>
                <div class=""><input type="password" name="password2" id="register-password2" value="" placeholder="请确认密码" /></div>
                <div class="btn_list">
                    <div class="okbtn" onclick="checkUser2()"><button type="submit" id="regist_btn">注册</button></div>
                    <div class="resetbtn"><button type="button">撤销</button></div>
                </div>

            </form>

        </div>
    </div>
</div>
<script type="text/javascript">
    function checkUser(){
        // var usernameText = $("input[name='luser']").val();
        // var usernamePatt=/^\w{5,12}$/;
        // if(!usernamePatt.test(usernameText)){
        //     $('span.help-block').text('用户不合法')
        //     return false;
        // }
        //
        // var passwordText = $("input[name='lpass']").val();
        // var passwordPatt=/^\w{5,12}$/;
        // if(!passwordPatt.test(passwordText)){
        //     $('span.help-block').text('密码不合法')
        //     return false;
        // }
        document.getElementById("formid").submit();
    }
    function checkUser2(){
        // var usernameText = $(" input[name='user']").val();
        // var usernamePatt=/^\w{5,12}$/;
        // if(!usernamePatt.test(usernameText)){
        //     $('span.help-block').text('用户不合法')
        //     return false;
        // }
        //
        var passwordText = $("input[name='password2']").val();
        // var passwordPatt=/^\w{5,12}$/;
        // if(!passwordPatt.test(passwordText)){
        //     $('span.help-block').text('密码不合法')
        //     return false;
        // }
        //
        var passwordText2 = $("input[name='password2']").val();
        if(passwordText!=passwordText2){
            $('span.help-block').text('两次密码输入不同')
            return false;
        }
        document.getElementById("formid2").submit();
    }
    let formone=document.querySelector('.formone');
    let registerpage=document.querySelector('.registerpage');
    let registerbtn=document.querySelector('.registerbtn');
    let resetbtn=document.querySelector('.resetbtn');
    registerbtn.addEventListener("click",()=>{
        formone.style.display='none';
        registerpage.style.display="flex";
    })
    resetbtn.addEventListener("click",()=>{
        formone.style.display='flex';
        registerpage.style.display="none";
    })
</script>
</body>
</html>