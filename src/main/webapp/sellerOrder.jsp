<!DOCTYPE html>
<html lang="en">

<head>
    <title>Seller Orders-Supreme Clothing</title>
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

        <div style="margin-bottom: 2.2rem; display: flex; justify-content: center;">
            <h1 style="margin-right:1rem; font-size: 2.2rem; font-style: italic; font-family: cursive;">Orders </h1>
            <img style="width: 3rem;" src="img/swirly-scribbled-arrow.png" alt="" srcset="">
        </div>

        <div style="margin:auto; width: 85%; margin-bottom: 1.5rem;">
            <h2 style="font-size: 1.6rem; ">Pending Orders </h2>
            <table style="background:linear-gradient(45deg, lightsteelblue, transparent); margin-top:1.5rem " class="ordertable">
                <thead>
                <tr>
                    <th scope="col">S.No</th>
                    <th scope="col">Product</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>

                </tr>
                </thead>
                <tbody>

                <tr>
                    <th class="val" scope="row" >1</th>
                    <td><img style="width:2.5rem" src="img/add (1).png" alt="" srcset=""> </td>
                    <td>Jeans and Shirt</td>
                    <td>Men's</td>
                    <td>2</td>
                    <td>2500</td>
                    <td style="display: flex; justify-content: center;">
                        <form action="CreateUserServlet" method="post">
                            <input type="hidden" name="product_name" value="">
                            <input type="hidden" name="product_desc" value="">
                            <input type="hidden" name="product_category" value="">
                            <input type="hidden" name="product_price" value="">
                            <input type="hidden" name="product_qty" value="">
                            <input type="hidden" name="product_category" value="">
                            <input type="hidden" name="product_collection" value="">
                            <input type="hidden" name="status" value="Accept">

                            <div style="display: flex; " class="formsectionbtn">
                                <button style="top:0rem; padding: 3px 15px" type="submit">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    Accept
                                </button>
                            </div>
                        </form>
                    </td>

                </tr>


                </tbody>
            </table>



        </div>

        <div style="margin:auto; width: 85%; margin-bottom: 1.5rem;">
            <h2 style="font-size: 1.6rem; ">Complete Orders </h2>
            <table style="background:linear-gradient(45deg, lightsteelblue, transparent); margin-top:1.5rem " class="ordertable">
                <thead>
                <tr>
                    <th scope="col">S.No</th>
                    <th scope="col">Product</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>

                </tr>
                </thead>
                <tbody>

                <tr>
                    <th class="val" scope="row" >1</th>
                    <td><img style="width:2.5rem" src="img/add (1).png" alt="" srcset=""> </td>
                    <td>Jeans and Shirt</td>
                    <td>Men's</td>
                    <td>2</td>
                    <td>2500</td>
                    <td style="display: flex; justify-content: center;">
                        <form action="CreateUserServlet" method="post">
                            <input type="hidden" name="product_name" value="">
                            <input type="hidden" name="product_desc" value="">
                            <input type="hidden" name="product_category" value="">
                            <input type="hidden" name="product_price" value="">
                            <input type="hidden" name="product_qty" value="">
                            <input type="hidden" name="product_category" value="">
                            <input type="hidden" name="product_collection" value="">
                            <input type="hidden" name="status" value="Accept">

                            <div style="display: flex; " class="formsectionbtn">
                                <button style="top:0rem; padding: 3px 15px" type="submit">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    Accept
                                </button>
                            </div>
                        </form>
                    </td>

                </tr>


                </tbody>
            </table>



        </div>

        <div style="margin:auto; width: 85%; margin-bottom: 1.5rem;">
            <h2 style="font-size: 1.6rem; ">Cancelled Orders </h2>
            <table style="background:linear-gradient(45deg, lightsteelblue, transparent); margin-top:1.5rem " class="ordertable">
                <thead>
                <tr>
                    <th scope="col">S.No</th>
                    <th scope="col">Product</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>

                </tr>
                </thead>
                <tbody>

                <tr>
                    <th class="val" scope="row" >1</th>
                    <td><img style="width:2.5rem" src="img/add (1).png" alt="" srcset=""> </td>
                    <td>Jeans and Shirt</td>
                    <td>Men's</td>
                    <td>2</td>
                    <td>2500</td>
                    <td style="display: flex; justify-content: center;">
                        <form action="CreateUserServlet" method="post">
                            <input type="hidden" name="product_name" value="">
                            <input type="hidden" name="product_desc" value="">
                            <input type="hidden" name="product_category" value="">
                            <input type="hidden" name="product_price" value="">
                            <input type="hidden" name="product_qty" value="">
                            <input type="hidden" name="product_category" value="">
                            <input type="hidden" name="product_collection" value="">
                            <input type="hidden" name="status" value="Accept">

                            <div style="display: flex; " class="formsectionbtn">
                                <button style="top:0rem; padding: 3px 15px" type="submit">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    Accept
                                </button>
                            </div>
                        </form>
                    </td>

                </tr>


                </tbody>
            </table>



        </div>



    </div>

</div>
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
<script>

</script>
</html>













