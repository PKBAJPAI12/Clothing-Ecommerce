<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 07-04-2022
  Time: 04:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SignUp-Supreme</title>
    <%@include file="/common_css_js.jsp"%>

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
            <h1 style="font-size:1.9rem; margin:auto">Sign Up</h1>
        </div>

        <%@include file="message.jsp" %>
        <form style="width: 75%;" action="RegisterServlet" method="post">
            <div class="formcol">
                <div class="formlevel">
                    <img style="width: 2rem; margin-right:1rem ;" src="img/user (2).png" alt="" srcset="">
                    <label>Name</label>
                </div>
                <input style="color:black;padding: 0.5rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="user_name" type="text" class="form-control" placeholder="Enter Name">
            </div>
            <div class="formcol">
                <div class="formlevel">
                    <img style="width: 2rem; margin-right:1rem ;" src="img/email.png" alt="" srcset="">
                    <label>Email Address</label>
                </div>
                <input style="color:black;padding: 0.5rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="user_email" type="email" class="form-control" placeholder="Enter email">
            </div>
            <div class="formcol">
                <div class="formlevel">
                    <img style="width: 2rem; margin-right:1rem ;" src="img/lock (1).png" alt="" srcset="">
                    <label>Password</label>
                </div>
                <input style="color:black;padding: 0.5rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="user_password" type="password" class="form-control" placeholder="Enter Password">
            </div>
            <div class="formsectionbtn">
                <button type="submit" class="leftsectionbtn" style="margin-right:1rem ;" >
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Sign Up
                </button>
                <button class="leftsectionbtn" type="reset" >
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Reset
                </button>
            </div>
            <h3 style="margin-top: 1.5rem;">Please <a style="text-decoration:none; " href="login1.jsp"><strong style="color:red">Login Now!</strong></a> If you have Already Account</h3></a>
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