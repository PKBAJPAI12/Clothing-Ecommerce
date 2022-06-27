<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 03-04-2022
  Time: 11:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login-Supreme Clothing</title>
    <%@include file="common_css_js.jsp"%>

</head>
<body>
<div class="circle7">

</div>
<%@include file="navbar.jsp"%>
<div class="loginsection">
    <div class="rightlogin">
        <div class="triangle">

        </div>
        <div style="display: flex; margin-bottom: 1.5rem;" class="head1">
            <img style="width: 2.5rem; align-items: center; margin-right: 1rem;" src="img/right.png" alt="">
            <h1 style="font-size:1.9rem; margin:auto">Login</h1>
        </div>

        <%@include file="message.jsp"%>

        <form style="width: 75%;" action="LoginServlet" method="post">
            <div class="formcol">
                <div class="formlevel">
                    <img style="width: 2rem; margin-right:1rem ;" src="./img/email.png" alt="" srcset="">
                    <label>Email Address</label>
                </div>
                <input style="color:black;padding: 0.5rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="email" type="email" class="form-control" placeholder="Enter email">
            </div>
            <div class="formcol">
                <div class="formlevel">
                    <img style="width: 2rem; margin-right:1rem ;" src="./img/lock (1).png" alt="" srcset="">
                    <label>Password</label>
                </div>
                <input style="color:black;padding: 0.5rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="password" type="password" class="form-control" placeholder="Enter Password">
            </div>
            <div class="formsectionbtn">
                <button type="submit" class="leftsectionbtn" style="margin-right:1rem ;" >
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Log In
                </button>
                <button class="leftsectionbtn" type="reset" >
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Reset
                </button>
            </div>
            <h3 style="margin-top: 1.5rem;">Please <a style="text-decoration:none; " href="register.jsp"><strong style="color:red">Sign Up Now!</strong></a> If you are First Time User</h3>
        </form>

    </div>
    <div class="leftlogin">

        <div class="loginbox">
            <h1 style="font-size:1.9rem; margin-top: 2.5rem; margin-bottom: 1rem; color: white;">Open the Shopping Door</h1>
            <img style="width: 20rem;" src="img/shopping.png" alt="">
        </div>


    </div>

</div>

</body>
</html>