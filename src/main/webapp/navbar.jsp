<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 03-04-2022
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Navbar</title>
</head>
<body>
<div class="navbar">
    <div class="navleft">
        <ul class="navleftul">
            <li style="padding-right: 0rem;"><img  style="width: 2.5rem;" src="img/home (3).png" alt="" srcset=""></li>
            <li style="padding-left: 0.1rem;"><a href="">Home</a> </li>
            <li><a href="">New Collection</a></li>
            <li><a href="">Men</a> </li>
            <li><a href="">Women</a> </li>
            <li><a href="">Kids</a> </li>
        </ul>
    </div>
    <div class="navcenter">
        <img style="width:3rem; margin-right: 1rem;" src="img/shopping-store.png" alt="">
        <h2 class="">Superior</h2>
    </div>
    <div class="navright">
        <img style="width: 2.8rem; margin-left: 0.5rem;" src="img/login-arrow.png" alt="" srcset="">
        <form style="display: flex;" action="TransactionServlet" method="post">
            <div style="margin-right:1rem" class="searchform">
                <div  class="boximage">
                    <img style="width:1.8rem" src="img/search.png" alt="" srcset="">
                </div>
                <input style="color:white; border-color: transparent; color:white "  type="text" placeholder="Search" name="trans">
                <div style="border-left:1px solid black; padding-left:0.8rem " class="boximage">
                    <img style="width:1.8rem" src="img/cart.png" alt="" srcset="">
                </div>
            </div>

        </form>


    </div>
</div>

</body>
</html>
