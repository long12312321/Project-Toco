<%-- 
    Document   : Register
    Created on : Apr 14, 2021, 12:10:38 PM
    Author     : longd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="assets/css/Register.css" rel="stylesheet" type="text/css"/>
          <link href="https://getbootstrap.com/docs/4.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
          <script type ="text/javascript">
            function validate() {
                var account = document.getElementById('acc').value;
                var password = document.getElementById('pass').value;
                var name = document.getElementById('name').value;
                var male = document.getElementById('male');
                var female = document.getElementById('female');
                var dob = document.getElementById('dob').value;
                var address = document.getElementById('add').value;
                var phone = document.getElementById('phone').value;
                if (account == "") {
                    alert("please enter name Acccount");
                    return false;
                }else {
                    if (password == "") {
                        alert("please enter password");
                        return false;
                    } else {
                        if (name == "") {
                            alert("please enter name ");
                             return false;
                        } else {
                            if (male.checked || female.check) {
                                if(dob == ""){
                                    alert("please choose date ");
                                     return false;
                                }else{
                                    if(address == ""){
                                        alert("please enter address ");
                                         return false;
                                    }else{
                                        if(phone == ""){
                                            alert("please enter phone ");
                                             return false;
                                        }else{
                                            alert("Register succesful ");
                                        }
                                    }
                                }
                            } else {
                                
                                alert("please choose option");
                                return false;
                            }
                        }
                    }
                }
                
            }
        </script>
    </head>
    <body>
        <form action="Register" method="POST" >    
        Tài Khoản<input type = "text" id= "acc" name = "acc1"   required> <br><br>
        Mật Khẩu <input type = "password" id="pass" name = "pass1" required> <br><br>
        Tên <input type="text" name="name" id ="name" required/> <br/>
        <br/>
        Giới tính <input type="radio" name="gender" id="male" value="male" required/> Male
            <input type="radio" name="gender" id="female" value="female"required/> Female <br/>
            <br/>
        Ngày Sinh <input type = "date" id="dob" name = "dob"required><br/><br/>
        Địa Chỉ <input type="text" id="add" name="address" required/> <br/><br/>
        Sđt <input type="text"id="phone" name="phone"required/> <br/> <br/><br/>
        <input type ="submit" class="btn btn-success" onclick=" return validate();" value= "Đăng kí"> <br>
        </form>
    </body>
</html>
