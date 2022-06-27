
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Seller Add Product-Supreme Clothing</title>
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
      <h1 style="margin-right:1rem; font-size: 2.2rem; font-style: italic; font-family: cursive;">Add Product </h1>
      <img style="width: 3rem;" src="img/swirly-scribbled-arrow.png" alt="" srcset="">
    </div>

    <div class="addproductform">

      <img id="formimg" style="width: 3rem; padding:2rem; box-sizing: content-box;" src="./img/hand (1).png" alt="" srcset="">
      <%@include file="message.jsp"%>
      <form style="width: 90%;" action="AddProductServlet" method="post" enctype="multipart/form-data">
        <div class="formrows">
          <div style="width: 90%; margin: auto;" class="formcol">
            <div class="formlevel">
              <img style="width: 2rem; margin-right:1rem ;" src="img/product (2).png" alt="" srcset="">
              <label>Product Name</label>
            </div>
            <input style="padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="product_name" type="text" class="form-control" placeholder="Enter Product Name">
          </div>
        </div>
        <div class="formrows">

          <div style="width: 90%; margin: auto;" class="formcol">
            <div class="formlevel">
              <img style="width: 2rem; margin-right:1rem ;" src="img/add (1).png" alt="" srcset="">
              <label>Product Description</label>
            </div>
            <textarea style="padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="product_desc" id="" cols="30" rows="10" class="form-control" placeholder="Enter Product Description"></textarea>

          </div>
        </div>
        <div class="formrows" style="display: flex;">

          <div style="width: 40%; margin: auto;" class="formcol">
            <div class="formlevel">
              <img style="width: 2rem; margin-right:1rem ;" src="img/package.png" alt="" srcset="">
              <label>Product Quantity</label>
            </div>
            <input style="padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="product_qty" type="number" class="form-control" placeholder="Enter Product Quantity">
          </div>

          <div style="width: 40%; margin: auto;" class="formcol">
            <div class="formlevel">
              <img style="width: 2rem; margin-right:1rem ;" src="img/price-tag.png" alt="" srcset="">
              <label>Product Price</label>
            </div>
            <input style="padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="product_price" type="number" class="form-control" placeholder="Enter Price">
          </div>


        </div>
        <div class="formrows" style="display: flex">
          <div style="width: 40%; margin: auto;" class="formcol">
            <div class="formlevel">
              <img style="width: 2rem; margin-right:1rem ;" src="img/category.png" alt="" srcset="">
              <label>Select Product Image</label>
            </div>
            <input type="file" style="padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="product_image"  class="form-control" required/>

          </div>
          <div style="width: 40%; margin: auto;" class="formcol">
            <div class="formlevel">
              <img style="width: 2rem; margin-right:1rem ;" src="img/discount.png" alt="" srcset="">
              <label>Discount</label>
            </div>
            <input style="padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="discount" type="number" class="form-control" placeholder="Discount">

          </div>
        </div>
        <div class="formrows" style="margin-bottom: 1rem">
          <div style="width: 90%; margin: auto;" class="formcol">
            <div class="formlevel">
              <img style="width: 2rem; margin-right:1rem ;" src="img/category.png" alt="" srcset="">
              <label>Choose Product Category</label>
            </div>
            <select style="padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="product_category" id="product_category">
              <option value="Casual">Casual</option>
              <option value="Sports">Sports</option>
              <option  value="Formal">Formal</option>

            </select>
          </div>
        </div>

        <div class="formrows" style="margin-bottom: 1rem">
          <div style="width: 90%; margin: auto;" class="formcol">
            <div class="formlevel">
              <img style="width: 2rem; margin-right:1rem ;" src="img/box (1).png" alt="" srcset="">
              <label>Choose Collection Type</label>
            </div>
            <select style="padding: 0.3rem; margin-bottom: 1rem; border-radius: 0.4rem;" name="collection_type">
              <option  value="Mens">Mens</option>
              <option value="Womens">Womens</option>
              <option value="Kids">Kids</option>

            </select>
          </div>
        </div>

        <div style="display: flex; justify-content: center;" class="formsectionbtn">
          <button style="margin:1rem ;" type="submit">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Submit
          </button>
          <button  style="margin:1rem ;" type="reset" >
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Reset
          </button>
        </div>
      </form>
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

</html>