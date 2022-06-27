<%@ page import="project.Dao.SellerDao" %>
<%@ page import="project.Helper.FactoryProvider" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <title>Seller DashBoard-Supreme Clothing</title>
    <%@include file="common_css_js.jsp"%>

</head>

<body>
<%@include file="navbarseller.jsp"%>

<%
    Seller seller=(Seller) session.getAttribute("current-seller");

    if(seller==null){
        session.setAttribute("message","You are not logged in");
        response.sendRedirect("SellerLogin.jsp");
        return;

    }

%>

<div style="margin-top:1.5rem ; margin-left: 0rem; margin-right: 1.5rem;"  class="section">
    <div style="width:25%; background-color:white; border-top-right-radius: 5rem; margin-right:2rem; border-top:2px solid #E110E9; border-right:1px solid #E110E9;">
        <div class="verticalnav" >
            <div style="border-top-right-radius: 1.1rem;" class="verticalnavele">
                <img style="width: 2.5rem; margin-right: 1rem;" src="img/dashboard.png" alt="" srcset="">
                <h4 style="font-size: 1.2rem;"><a style="text-decoration: none;" href="#">Dashboard</a></h4>
            </div>
            <div class="verticalnavele" >
                <img style="width: 2.5rem;  margin-right: 1rem;" src="img/orders.png" alt="" srcset="">
                <h4 style="font-size: 1.2rem;"><a style="text-decoration: none;" href="sellerOrder.jsp">Orders</a></h4>

            </div>
            <div class="verticalnavele">
                <img style="width: 2.5rem; margin-right: 1rem;" src="img/product (1).png" alt="" srcset="">
                <h4 style="font-size: 1.2rem;"><a style="text-decoration: none;" href="sellerProduct.jsp">Products</a></h4>

            </div>
            <div class="verticalnavele">
                <img style="width: 2.5rem; margin-right: 1rem;" src="img/supermarket.png" alt="" srcset="">
                <h4 style="font-size: 1.2rem;"><a style="text-decoration: none;" href="sellerAddProduct.jsp">Add Product</a></h4>

            </div>
            <div class="verticalnavele">
                <img style="width: 2.5rem; margin-right: 1rem;" src="img/customer.png" alt="" srcset="">
                <h4 style="font-size: 1.2rem;"><a style="text-decoration: none;" href="allCustomers.jsp">Customers</a></h4>

            </div>

        </div>
    </div>

    <div style="width:75%; ">

        <div style="margin-bottom: 1.5rem; display: flex; justify-content: center;">
            <h1 style="margin-right:1rem; font-size: 2.2rem; font-style: italic; font-family: cursive;">Sells
                Analytics </h1>
            <img style="width: 3rem;" src="./img/swirly-scribbled-arrow.png" alt="" srcset="">
        </div>

        <div class="brandproduct">

            <div class="analyticbox">
                <div style="display: flex; margin-bottom: 0.7rem;">
                    <img style="width:2.5rem; margin-right: 1rem;" src="./img/sales.png"
                         alt="">

                    <h2 style="font-size:1.8rem">Total Sales</h2>

                </div>
                <h1 style="font-size:2.4rem">100</h1>



            </div>

            <div  class="analyticbox">
                <div style="display: flex; margin-bottom: 0.7rem;">
                    <img style="width:2.5rem; margin-right: 1rem;" src="./img/box.png"
                         alt="">
                    <h2 style="font-size:1.8rem">Total Products</h2>

                </div>
                <h1 style="font-size:2.4rem">300</h1>

            </div>
            <div class="analyticbox">
                <div style="display: flex; margin-bottom: 0.7rem;">
                    <img style="width:2.5rem; margin-right: 1rem;" src="./img/rating (1).png"
                         alt="">

                    <h2 style="font-size:1.8rem">Total Customer</h2>

                </div>
                <h1 style="font-size:2.4rem">200</h1>



            </div>

        </div>
    </div>

</div>
<hr>
<div style="margin-bottom: 4rem; flex-flow: row wrap; justify-content: center;" class="section">
    <div class="cardfooter">
        <img style="width: 4.5rem; margin: 0.4rem;" src="./img/truck.png" alt="" srcset="">
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