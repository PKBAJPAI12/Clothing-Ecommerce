<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shop-Supreme-EShop</title>
    <%@include file="common_css_js.jsp"%>

</head>
<body>
<div class="circle7">

</div>
<%@include file="navbar.jsp"%>


<div style="flex-direction: column;" class="section">
<div style="margin: auto; display: flex;">
    <h1 style="margin-right:1rem; font-size: 2.2rem; font-style: italic; font-family: cursive;">Top Brands </h1>
    <img style="width: 3rem;" src="img/swirly-scribbled-arrow.png" alt="" srcset="">
</div>

<div style="display: flex; margin-top: 3rem;">
    <div style="width:25%; margin-top:2rem;">
        <div class="collectionsection">
            <h1 style="margin-bottom: 0.7rem; font-size: 1.5rem;">Collections</h1>
            <div class="labelsection">
                <input type="checkbox" id="allcollection" name="allcategory" value="allcategory" Checked>
                <label for="allcollection"> All Collections</label>
            </div>
            <div class="labelsection">
                <input type="checkbox" id="men" name="men" value="men">
                <label for="men"> Men's</label>
            </div>
            <div class="labelsection">
                <input type="checkbox" id="women" name="women" value="women">
                <label for="women"> Women's</label>
            </div>
            <div class="labelsection">
                <input type="checkbox" id="kids" name="kids" value="kids">
                <label for="kids">Kids </label>
            </div>




        </div>
        <div class="categorysection">
            <h1 style="margin-bottom: 0.7rem; font-size: 1.5rem;">Category</h1>

            <div class="labelsection">
                <input type="checkbox" id="allcategory" name="allcategory" value="allcategory" Checked>
                <label for="allcategory"> All Category</label>
            </div>
            <div class="labelsection">
                <input type="checkbox" id="casualwear" name="Casual Wear" value="casual">
                <label for="casualwear">Casual</label>
            </div>
            <div class="labelsection">
                <input type="checkbox" id="formalwear" name="Formal Wear" value="formal">
                <label for="formalwear"> Formal</label>
            </div>

            <div class="lavelsection">
                <input type="checkbox" id="sportswear" name="Sports Wear" value="sports">
                <label for="sportswear">Sports </label>
            </div>

        </div>
        <div class="pricesection">
            <h1 style="margin-bottom: 0.7rem; font-size: 1.5rem;">Price</h1>
            <div class="labelsection">
                <input type="checkbox" id="low" name="low" value="low" Checked>
                <label for="low"> Low to High</label>
            </div>
            <div class="labelsection">
                <input type="checkbox" id="high" name="high" value="high">
                <label for="high"> High to Low</label>
            </div>




        </div>

    </div>

    <div style="width:75%; ">


        <div class="brandproduct">
            <div style="width: 15rem; height:22rem; background:linear-gradient(white,#F5F7F9)" class="card">
                <img style="width:15rem; height:18rem; border-top-left-radius: 2rem;"
                     src="img/deal-page-467x316-levis1.jpg" alt="" srcset="">
                <div class="offer">
                    <h3>Falt 15% Off on All Products</h3>
                    <h2>$180</h2>
                </div>
                <div  class="leftsectionbtn1">
                    <input style="width: 15rem; border-top-right-radius: 0rem; " type="button" value="Add to Cart">
                </div>
            </div>
            <div style="width: 15rem; height:22rem; background:linear-gradient(white,#F5F7F9)" class="card">
                <img style="width:15rem; height:18rem; border-top-left-radius: 2rem;" src="img/2016-06-09.jpg"
                     alt="">
                <div class="offer">
                    <h3>Falt 15% Off on All Products</h3>
                    <h2>$180</h2>
                </div>
                <div class="leftsectionbtn1">
                    <input style="width: 15rem; border-top-right-radius: 0rem; " type="button" value="Add to Cart">
                </div>
            </div>
            <div style="width: 15rem; height:22rem; background:linear-gradient(white,#F5F7F9)" class="card">
                <img style="width:15rem; height:18rem; border-top-left-radius: 2rem;" src="img/jpg.jpg" alt="">
                <div class="offer">
                    <h3>Falt 15% Off on All Products</h3>
                    <h2>$180</h2>
                </div>
                <div class="leftsectionbtn1">
                    <input style="width: 15rem; border-top-right-radius: 0rem; " type="button" value="Add to Cart">
                </div>
            </div>
            <div style="width: 15rem; height:22rem; background:linear-gradient(white,#F5F7F9)" class="card">

                <img style="width:15rem; height:18rem; border-top-left-radius: 2rem;" src="img/3302738.webp"
                     alt="" srcset="">
                <div class="offer">
                    <h3>Falt 15% Off on All Products</h3>
                    <h2>$180</h2>
                </div>
                <div class="leftsectionbtn1">
                    <input style="width: 15rem; border-top-right-radius: 0rem; " type="button" value="Add to Cart">
                </div>
            </div>
            <div style="width: 15rem; height:22rem;background:linear-gradient(white,#F5F7F9)" class="card">
                <img style="width:15rem; height:18rem; border-top-left-radius: 2rem;" src="img/images.jpg"
                     alt="">
                <div class="offer">
                    <h3>Falt 15% Off on All Products</h3>
                    <h2>$180</h2>
                </div>
                <div class="leftsectionbtn1">
                    <input style="width: 15rem; border-top-right-radius: 0rem; " type="button" value="Add to Cart">
                </div>
            </div>
            <div style="width: 15rem; height:22rem; background:linear-gradient(white,#F5F7F9)" class="card">
                <img style="width:15rem; height:18rem; border-top-left-radius: 2rem;"
                     src="img/van-heusen-shirt-500x500.png" alt="">
                <div class="offer">
                    <h3>Falt 15% Off on All Products</h3>
                    <h2>$180</h2>
                </div>
                <div class="leftsectionbtn1">
                    <input style="width: 15rem; border-top-right-radius: 0rem; " type="button" value="Add to Cart">
                </div>
            </div>
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
    <div  class="cardfooter">
        <img style="width: 4.5rem; margin: 0.4rem;" src="img/return-delivery-box.png" alt="" srcset="">
        <div class="footerhead">
            <h3 style="font-size: 1.1rem;">EASY RETURNS</h3>
            <p style="font-size: 0.9rem; margin-top: 0.3rem;">15 Days Return and Replacement</p>
        </div>
    </div>
    <div  class="cardfooter">
        <img style="width: 4.5rem;" src="img/24-hour-call-service.png" alt="" srcset="">
        <div class="footerhead">
            <h3 style="font-size: 1.1rem;">24/7 SERVICE</h3>
            <p style="font-size: 0.9rem; margin-top: 0.3rem;">24/7 Service Availiable</p>
        </div>
    </div>
    <div  class="cardfooter">
        <img style="width:4.5rem;" src="img/premium (1).png" alt="" srcset="">
        <div class="footerhead">
            <h3 style="font-size: 1.1rem;">QUALITY PRODUCT</h3>
            <p style="font-size: 0.9rem; margin-top: 0.3rem;">Authorised Brand and Quality Product</p>
        </div>
    </div>
</div>
<div class="sectionfooter">

    <p style="text-align: center; font-size: 1rem; padding-top: 0.6rem;">&#169; 2022 Superior Clothing Brand All Right Reserved</p>
</div>

</body>
</html>