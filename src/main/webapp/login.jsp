<%@include file="jstlImport.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/styles.css" />
    <link rel="stylesheet" href="./css/login.css"/>
    <title>Login</title>
</head>
<body>
    <div class="header">
        <a href="home">My <span>Music</span></a>
    </div>
    <div class="login-body">
        <h1>LOGIN</h1>
        <form action="login" method="post">
            <div class="username-part">
                <span>Địa chỉ email hoặc tên người dùng</span>
                <input type="text" placeholder="Địa chỉ email hoặc tên người dùng" name="account"/>
            </div>
            <div class="password-part">
                <span>Mật khẩu</span>
                <input type="password" placeholder="Mật khẩu" name="password"/>
            </div>
            <div class="bottom-part">
                <p>Quên mật khẩu của bạn ?</p>
                <div class="function-bottom">
                    <span><input type="checkbox"/> <label>Hãy nhớ tôi</label></span>
                    <button>ĐĂNG NHẬP</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>