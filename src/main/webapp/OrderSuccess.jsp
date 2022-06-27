<!DOCTYPE html>
<html lang="en">

<head>
    <title>Checkout-Supreme Clothing</title>
    <%@include file="common_css_js.jsp"%>

</head>

<body>

<%@include file="navbar.jsp"%>
<%
    User user=(User)session.getAttribute("current-user");
    if(user==null){
        session.setAttribute("message","You are not logged in");
        response.sendRedirect("login1.jsp");
        return;
    }
    int randomNumber=(int)(100000+(Math.random()*999999));
    String order_reference="ORD"+randomNumber;
%>

<div style="margin-top:1.5rem ; margin-left: 0rem; margin-right: 1.5rem; flex-direction: column;"  class="section">
    <div style="margin-bottom: 4rem; display: flex; justify-content: center;">
        <h1 style="margin-right:1rem; font-size: 2.2rem; font-style: italic; font-family: cursive;">Order Success </h1>
        <img style="width: 3rem;" src="img/swirly-scribbled-arrow.png" alt="" srcset="">
    </div>
    <div style=" display:flex; flex-direction: column; justify-content: center; background-color: white; width:45%; height:20rem; margin: auto; border-radius: 2rem; border: 2px solid black;">
        <div style="display: flex; justify-content: space-evenly; align-items: center;">
            <img style="width:5rem;" src="img/check.png" alt="" srcset="">
            <h1>You Order <%=order_reference%> has Completed Successfully</h1>
        </div>
        <div style="margin-top:2rem">
            <h1 style="font-size:1.5rem ; text-align:center;">We Delivered You Order Within 7 Days</h1>

            <img
                    style="width:5rem; margin-left: 45%; margin-top: 2rem;" src="img/recieved.png" alt="" srcset="">
        </div>
    </div>

</div>


<br>
<br>
<hr>
<div style="margin-bottom: 4rem; flex-flow: row wrap; justify-content: center;" class="section">
    <div class="cardfooter">
        <img style="width: 4.5rem; margin: 0.4rem;" src="img/truck.png" alt="" srcset="">
        <div class="footerhead">
            <h3 style="font-size: 1.1rem;">FREE SHIPPING</h3>
            <p style="font-size: 0.9rem; margin-top: 0.3rem;">Order Above &#x20b9;499</p>


        </div>
    </div>
    <div class="cardfooter">
        <img style="width: 4.5rem; margin: 0.4rem;" src="img/return-delivery-box.png" alt="" srcset="">
        <div class="footerhead">
            <h3 style="font-size: 1.1rem;">EASY RETURNS</h3>
            <p style="font-size: 0.9rem; margin-top: 0.3rem;">15 Days Return and Replacement</p>
        </div>
    </div>
    <div class="cardfooter">
        <img style="width: 4.5rem;" src="img/24-hour-call-service.png" alt="" srcset="">
        <div class="footerhead">
            <h3 style="font-size: 1.1rem;">24/7 SERVICE</h3>
            <p style="font-size: 0.9rem; margin-top: 0.3rem;">24/7 Service Availiable</p>
        </div>
    </div>
    <div class="cardfooter">
        <img style="width:4.5rem;" src="img/premium (1).png" alt="" srcset="">
        <div class="footerhead">
            <h3 style="font-size: 1.1rem;">QUALITY PRODUCT</h3>
            <p style="font-size: 0.9rem; margin-top: 0.3rem;">Authorised Brand and Quality Product</p>
        </div>
    </div>
</div>
<div class="sectionfooter">

    <p style="text-align: center; font-size: 1rem; padding-top: 0.6rem;">&#169; 2022 Superior Clothing Brand All
        Right Reserved</p>
</div>

</body>

</html>