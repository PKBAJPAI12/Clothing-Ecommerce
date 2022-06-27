<%@ page import="project.Helper.FactoryProvider" %>
<%@ page import="project.Dao.ProductDao" %>
<%@ page import="project.Model.Product" %>
<%@ page import="java.util.List" %>
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

    <div style="display: flex; margin-top: 3rem;">
        <div style="width:25%; margin-top:2rem;">
            <div class="collectionsection">
                <h1 style="margin-bottom: 0.7rem; font-size: 1.5rem;">Collections</h1>
                <ul style="width:11rem">
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?collection=allcol">All Collection</a> </li>
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?collection=Mens">Men's</a>  </li>
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?collection=Womens">Women's</a> </li>
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?collection=Kids">Kid's</a> </li>
                </ul>




            </div>
            <div class="categorysection">
                <h1 style="margin-bottom: 0.7rem; font-size: 1.5rem;">Category</h1>

                <ul style="width:11rem">
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?category=allcat">All Category</a> </li>
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?category=Casual">Casual</a>  </li>
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?category=Sports">Sports</a> </li>
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?category=Formal">Formal</a> </li>
                </ul>

            </div>
            <div class="pricesection">
                <h1 style="margin-bottom: 0.7rem; font-size: 1.5rem;">Price</h1>
                <ul style="width:11rem">
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?price=low">Low to High</a>  </li>
                    <li class="collectionsectionli"><a style="text-decoration: none" href="Product.jsp?price=high">High to Low</a> </li>
                </ul>


            </div>

        </div>

        <div style="width:75%; ">

            <div style="margin-bottom: 1.5rem; display: flex; justify-content: center;">

                <%
                    String cat = request.getParameter("category");
                    String col = request.getParameter("collection");

                    String price = request.getParameter("price");


                    // out.println(cat);
                    ProductDao dao = new ProductDao(FactoryProvider.getFactory());
                    // List<Product> list = dao.getAllProducts();
                    List<Product> list = null;
                    if (cat==null && col==null && price==null )
                    {
                        list = dao.getAllProducts();
                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">All Fashion Style </h1>
                <%

                }

                else if (col==null && price==null && cat.trim().equals("allcat"))
                {
                    list = dao.getAllProducts();
                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">All Fashion Style </h1>

                <%
                }
                else if (cat==null && price==null && col.trim().equals("allcol"))
                {
                    list = dao.getAllProducts();
                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">All Fashion Style </h1>
                <%
                }

                else if (col==null && price==null && cat.trim().equals("Casual"))
                {
                    list = dao.getProductsByCatName(cat.trim());
                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">Casual Clothes </h1>
                <%
                }
                else if (col==null && price==null && cat.trim().equals("Formal"))
                {
                    list = dao.getProductsByCatName(cat.trim());
                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">Formal Clothes </h1>

                <%
                }

                else if (col==null && price==null && cat.trim().equals("Sports"))
                {
                    list = dao.getProductsByCatName(cat.trim());

                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">Sports Clothes </h1>

                <%
                }

                else if (cat==null && price==null && col.trim().equals("Mens"))
                {
                    list = dao.getProductsByColName(col.trim());

                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">Men's Collection </h1>

                <%
                }
                else if (cat==null && price==null && col.trim().equals("Womens"))
                {
                    list = dao.getProductsByColName(col.trim());

                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">Women's Collection </h1>

                <%
                }
                else if (cat==null && price==null && col.trim().equals("Kids"))
                {
                    list = dao.getProductsByColName(col.trim());
                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">Kid's Collection</h1>

                <%
                }
                else if (cat==null && col==null && price.trim().equals("low"))
                {
                    list = dao.getProductsByLowPrice();
                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">Low to High Price</h1>

                <%
                }
                else if (cat==null && col==null && price.trim().equals("high"))
                {
                    list = dao.getProductsByHighPrice();
                %>
                <h1 style="margin-right:1rem; font-size: 1.5rem; font-style: italic; font-family: cursive;">High to Low Price </h1>
                <%
                    }
                %>



            </div>

            <div class="brandproduct">
                <%
                    for (Product p:list){
                %>
                <div style="width: 15rem; height:20rem; background:linear-gradient(white,#F5F7F9)" class="card">
                    <img style="width:15rem; height:13rem; border-top-left-radius: 2rem;"
                         src="img/<%=p.getpImage()%>" alt="" srcset="">
                    <div class="offer">
                        <h3 style="font-size: 0.8rem; text-align:center"><%=p.getpName()%></h3>
                        <div style="display: flex; margin-top:0.3rem; justify-content: space-between; align-items: flex-end">
                            <h2 style="color: red">Flat <%=p.getpDiscount()%>% Off</h2>
                            <h2>RS.<%=p.getpPrice()%></h2>
                        </div>
                        <h2 style="text-align: center; font-size: 1rem">RS.<%=p.getPriceAfterApplyingDiscount()%></h2>


                    </div>
                    <div  class="leftsectionbtn1">
                        <input style="width: 15rem; border-top-right-radius: 0rem; " type="button" onclick="add_to_cart(<%=p.getId()%>,'<%=p.getpName()%>','<%=p.getPriceAfterApplyingDiscount()%>','<%=p.getpImage()%>')" value="Add to Cart">
                    </div>
                </div>
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