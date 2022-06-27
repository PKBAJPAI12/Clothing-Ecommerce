<%@ page import="project.Model.Address" %>
<%@ page import="project.Dao.AddressDao" %>
<%@ page import="project.Helper.FactoryProvider" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>

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

    <div style=" display:flex; width:100%">

        <div style="width:65%; ">

            <div class="card-body" style="margin:auto; width: 85%; margin-bottom: 1.5rem;">
                <h2 style="font-size: 1.6rem; ">Cart Products </h2>
                <div class="cart-body">

                </div>


            </div>
            <div>
                <%--        form details--%>
                <div class="">
                    <div class="getOrderData">

                        <%--                    here we will get product data--%>
                    </div>
                </div>
            </div>

        </div>



        <div style="width:35%; ">

            <div class="addproductform" style="border-top:0px solid black;
                border-left: 0px solid black;
                border-right: 0px solid black;
                border-top-left-radius: 0rem ;
                border-top-right-radius: 0rem;">

                <img id="formimg" style="width: 3rem; padding:2rem; box-sizing: content-box;" src="./img/hand (1).png" alt="" srcset="">
                <%@include file="message.jsp"%>
                <%
                    User user=(User)session.getAttribute("current-user");

                    if(user==null){
                        session.setAttribute("message","You are not logged in");
                        response.sendRedirect("login1.jsp");
                        return;

                    }
                    Address add = new AddressDao(FactoryProvider.getFactory()).getAddressByUserId(user.getUserId());

                %>
                <%
                    if(add!=null){


                %>
                <form style="width: 85%;" action="" method="post">
                    <h2 style="font-size: 1.5rem; margin-left:0.5rem; margin-bottom:1rem">Personal Details</h2>

                    <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" type="hidden" name="addid" value="<%=add.getAddressId()%>" type="text" class="form-control" placeholder="Enter First Name">

                    <div class="formrows" >
                        <div style="width: 90%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/product (2).png" alt="" srcset="">
                                <label>Name</label>
                            </div>

                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="name" value="<%=add.getFirstName()+" "+add.getLastName()%>" type="text" class="form-control" placeholder="Enter First Name">
                        </div>

                    </div>
                    <div class="formrows">

                        <div style="width: 90%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/add (1).png" alt="" srcset="">
                                <label>Email Address</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" value="<%=add.getUserShippingEmail()%>" name="email_address" type="email" class="form-control" placeholder="Enter Email">

                        </div>

                    </div>
                    <div class="formrows">

                        <div style="width: 90%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/package.png" alt="" srcset="">
                                <label>Phone Number</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" value="<%=add.getUserPhone()%>" name="phone_no" type="number" class="form-control" placeholder="Enter Phone Number">
                        </div>

                    </div>
                    <h2 style="font-size: 1.5rem; margin-left:0.5rem; margin-bottom:1rem; margin-top: 2rem;">Address Details</h2>
                    <div class="formrows">
                        <div style="width: 90%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/product (2).png" alt="" srcset="">
                                <label>Street Address</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="street_address" value="<%=add.getAddress()%>" type="text" class="form-control" placeholder="Enter Address">
                        </div>
                    </div>
                    <div class="formrows" style="display: flex">

                        <div style="width: 30%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/package.png" alt="" srcset="">
                                <label>Country</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="country" value="<%=add.getUserPhone()%>" type="text" class="form-control" placeholder="Enter Country Name">
                        </div>

                        <div style="width: 30%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/price-tag.png" alt="" srcset="">
                                <label>City</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="city" value="<%=add.getCity()%>" type="text" class="form-control" placeholder="Enter City Name">
                        </div>

                        <div style="width: 20%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/discount.png" alt="" srcset="">
                                <label>Pin Code</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="pin_code" value="<%=add.getPinCode()%>" type="number" class="form-control" placeholder="Pin code">

                        </div>
                    </div>
                    <div style="display: flex; justify-content: space-evenly" class="formsectionbtn">
                        <a style="text-decoration: none" href="OrderSuccess.jsp"><input style="width: 7rem; padding: 0.7rem" class="newsectionbtn" type="button" value="Order Now"></a>
                        <a style="text-decoration: none" href="Product.jsp"><input style="width: 10rem; padding: 0.7rem" class="newsectionbtn" type="button" value="Continue Shopping"></a>

                    </div>
                </form>
                <%
                }
                else
                {
                %>
                <form style="width: 85%;" action="AddressServlet" method="post">
                    <h2 style="font-size: 1.5rem; margin-left:0.5rem; margin-bottom:1rem">Personal Details</h2>


                    <div class="formrows" >
                        <div style="width: 90%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/product (2).png" alt="" srcset="">
                                <label>Name</label>
                            </div>

                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="first_name" type="text" class="form-control" placeholder="Enter First Name">
                        </div>

                    </div>
                    <div class="formrows" >
                        <div style="width: 90%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/user (3).png" alt="" srcset="">
                                <label>Name</label>
                            </div>

                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="last_name" type="text" class="form-control" placeholder="Enter First Name">
                        </div>

                    </div>
                    <div class="formrows">

                        <div style="width: 90%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/email.png" alt="" srcset="">
                                <label>Email Address</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;"  name="email_address" type="email" class="form-control" placeholder="Enter Email">

                        </div>

                    </div>
                    <div class="formrows">

                        <div style="width: 90%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/package.png" alt="" srcset="">
                                <label>Phone Number</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;"  name="phone_no" type="number" class="form-control" placeholder="Enter Phone Number">
                        </div>

                    </div>
                    <h2 style="font-size: 1.5rem; margin-left:0.5rem; margin-bottom:1rem; margin-top: 2rem;">Address Details</h2>
                    <div class="formrows">
                        <div style="width: 90%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/product (2).png" alt="" srcset="">
                                <label>Street Address</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="street_address"  type="text" class="form-control" placeholder="Enter Address">
                        </div>
                    </div>
                    <div class="formrows" style="display: flex">

                        <div style="width: 30%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/package.png" alt="" srcset="">
                                <label>Country</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="country"  type="text" class="form-control" placeholder="Enter Country Name">
                        </div>

                        <div style="width: 30%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/price-tag.png" alt="" srcset="">
                                <label>City</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="city" type="text" class="form-control" placeholder="Enter City Name">
                        </div>

                        <div style="width: 20%; margin: auto;" class="formcol">
                            <div class="formlevel">
                                <img style="width: 2rem; margin-right:1rem ;" src="img/discount.png" alt="" srcset="">
                                <label>Pin Code</label>
                            </div>
                            <input style="color:black;padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="pin_code"  type="number" class="form-control" placeholder="Pin code">

                        </div>
                    </div>
                    <div style="display: flex; justify-content: center " class="formsectionbtn">
                        <a style="text-decoration: none" href="OrderSuccess.jsp"><input style="width: 7rem; padding: 0.7rem" class="newsectionbtn" type="button" value="Order Now"></a>
                        <a style="text-decoration: none" href="Product.jsp"><input style="width: 10rem; padding: 0.7rem" class="newsectionbtn" type="button" value="Continue Shopping"></a>
                    </div>
                </form>
                <%

                    }
                %>
            </div>




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