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
                <span>Enter your account</span>
                <input type="text" placeholder="Email or Account" name="account"/>
            </div>
            <div class="password-part">
                <span>Mật khẩu</span>
                <input type="password" placeholder="Password" name="password"/>
            </div>
            <div class="bottom-part">
                <p>Forgot password?</p>
                <div class="function-bottom">
                    <span><input type="checkbox"/> <label>Remember me</label></span>
                    <button>LOGIN</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>