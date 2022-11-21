<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <h1>REGISTER</h1>
        <form action="registered" method="post">
            <div class="username-part">
                <span>Name</span>
                <input type="text" placeholder="Nhập tên của bạn" name="username"/>
            </div>
            <div class="name-part">
                <span>Account</span>
                <input type="text" placeholder="Nhập tên tài khoản của bạn" name="useraccount"/>
            </div>
            <div class="password-part">
                <span>Password</span>
                <input type="password" placeholder="Mật khẩu" name="userpassword"/>
            </div>
            <div class="re-password-part">
                <span>Retype Password</span>
                <input type="password" placeholder="Nhập lại mật khẩu" name="passwordconfirm"/>
            </div>
            <div class="bottom-part">

                <div class="function-bottom">
                    <span></span>
                    <button type="submit" value="submit">ÄÄNG KYÌ</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>