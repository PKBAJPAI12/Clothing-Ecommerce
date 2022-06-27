<%@ page import="project.Dao.AddressDao" %>
<%@ page import="project.Model.Address" %>
<%@ page import="project.Helper.FactoryProvider" %>
<%@ page import="java.util.List" %><%
    User user=(User)session.getAttribute("current-user");
    if(user==null){
        session.setAttribute("message","You are not logged in");
        response.sendRedirect("login1.jsp");
        return;
    }
    List<Address> list = new AddressDao(FactoryProvider.getFactory()).getAddressListByUserId(user.getUserId());
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Checkout-Supreme Clothing</title>
    <%@include file="common_css_js.jsp"%>

</head>

<body>

<%@include file="navbar.jsp"%>

<div style="margin-top:1.5rem ; margin-left: 0rem; margin-right: 1.5rem; flex-direction: column;"  class="section">
    <div style="margin-bottom: 1.5rem; display: flex; justify-content: center;">
        <h1 style="margin-right:1rem; font-size: 2.2rem; font-style: italic; font-family: cursive;">Checkout </h1>
        <img style="width: 3rem;" src="img/swirly-scribbled-arrow.png" alt="" srcset="">
    </div>
    <div style="  width:80%; margin:auto">





        <div class="addproductform" style="border-top:0px solid black;
                border-left: 0px solid black;
                border-right: 0px solid black;
                border-top-left-radius: 0rem ;
                border-top-right-radius: 0rem;">

            <img id="formimg" style="width: 3rem; padding:2rem; box-sizing: content-box;" src="./img/hand (1).png" alt="" srcset="">
            <%@include file="message.jsp"%>
            <form style="width: 85%;" action="AddressServlet" method="post">
                <h2 style="font-size: 1.5rem; margin-left:0.5rem; margin-bottom:1rem">Personal Details</h2>
                <input type="hidden" class="form-control" value="<%=user.getUserId()%>" name="userop"  >

                <div class="formrows" style="display: flex">
                    <div style="width: 40%; margin: auto;" class="formcol">
                        <div class="formlevel">
                            <img style="width: 2rem; margin-right:1rem ;" src="img/product (2).png" alt="" srcset="">
                            <label>First Name</label>
                        </div>
                        <input style="color:white;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="first_name" type="text" class="form-control" placeholder="Enter First Name">
                    </div>
                    <div style="width: 40%; margin: auto;" class="formcol">
                        <div class="formlevel">
                            <img style="width: 2rem; margin-right:1rem ;" src="img/product (2).png" alt="" srcset="">
                            <label>Last Name</label>
                        </div>
                        <input style="color:white;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="last_name" type="text" class="form-control" placeholder="Enter Last Name">
                    </div>
                </div>
                <div class="formrows" style="display: flex">

                    <div style="width: 40%; margin: auto;" class="formcol">
                        <div class="formlevel">
                            <img style="width: 2rem; margin-right:1rem ;" src="img/add (1).png" alt="" srcset="">
                            <label>Email Address</label>
                        </div>
                        <input style="color:white;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="email_address" type="email" class="form-control" placeholder="Enter Email">

                    </div>
                    <div style="width: 40%; margin: auto;" class="formcol">
                        <div class="formlevel">
                            <img style="width: 2rem; margin-right:1rem ;" src="img/package.png" alt="" srcset="">
                            <label>Phone Number</label>
                        </div>
                        <input style="color:white;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="phone_no" type="number" class="form-control" placeholder="Enter Phone Number">
                    </div>

                </div>
                <h2 style="font-size: 1.5rem; margin-left:0.5rem; margin-bottom:1rem; margin-top: 2rem;">Address Details</h2>
                <div class="formrows">
                    <div style="width: 90%; margin: auto;" class="formcol">
                        <div class="formlevel">
                            <img style="width: 2rem; margin-right:1rem ;" src="img/product (2).png" alt="" srcset="">
                            <label>Street Address</label>
                        </div>
                        <input style="color:white;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="street_address" type="text" class="form-control" placeholder="Enter Address">
                    </div>
                </div>
                <div class="formrows" style="display: flex">

                    <div style="width: 30%; margin: auto;" class="formcol">
                        <div class="formlevel">
                            <img style="width: 2rem; margin-right:1rem ;" src="img/package.png" alt="" srcset="">
                            <label>Country</label>
                        </div>
                        <input style="color:white;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="country" type="text" class="form-control" placeholder="Enter Country Name">
                    </div>

                    <div style="width: 30%; margin: auto;" class="formcol">
                        <div class="formlevel">
                            <img style="width: 2rem; margin-right:1rem ;" src="img/price-tag.png" alt="" srcset="">
                            <label>City</label>
                        </div>
                        <input style="color:white;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="city" type="text" class="form-control" placeholder="Enter City Name">
                    </div>

                    <div style="width: 20%; margin: auto;" class="formcol">
                        <div class="formlevel">
                            <img style="width: 2rem; margin-right:1rem ;" src="img/discount.png" alt="" srcset="">
                            <label>Pin Code</label>
                        </div>
                        <input style="color:white;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="pin_code" type="number" class="form-control" placeholder="Pin code">

                    </div>
                </div>
                <div style="display: flex; " class="formsectionbtn">
                    <button style="margin:1rem ;" type="submit">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        Save Address
                    </button>

                </div>
            </form>


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