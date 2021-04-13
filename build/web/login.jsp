<%-- 
    Document   : login
    Created on : Oct 27, 2020, 8:06:31 PM
    Author     : longd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="assets/css/Account.css" rel="stylesheet" type="text/css"/>
        <link href="https://getbootstrap.com/docs/4.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
         <form action="login" method="POST" id = "lo">    
        <div class="container">
            <div class="row">
                <div class="col">
                </div>
                <div class="col">
                </div>
                <div class="col text-center">
                    <h3>Đăng nhập để tích điểm, lưu lại những món yêu thích và nhận những ưu đãi đặc biệt từ ToCoToCo nhé!</h3>
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col">
                </div>
                <div class="col">
                </div>
                <div class="col text-center">
                   
                        <input type = "text" name = "acc1" placeholder="Tài Khoản" required> <br><br>
                        <input type = "password" name = "pass1" placeholder="Mật Khẩu" required> <br><br>
                        <input type ="submit" class="btn btn-success" value= "Đăng nhập"> <br><hr>
                        Bạn chưa có tài khoản ?<a href="addAccount" >Đăng kí</a>
                </div>
            </div>
            </form>
    </body>
</html>
