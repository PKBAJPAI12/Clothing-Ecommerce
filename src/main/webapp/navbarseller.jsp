<%@ page import="project.Model.Seller" %>
<%
    Seller seller1=(Seller)session.getAttribute("current-seller");
%>

<div class="navbar">
    <div class="navleft">
        <ul class="navleftul">
            <li style="padding-right: 0rem;"><img  style="width: 2.5rem;" src="img/home (3).png" alt="" srcset=""></li>
            <li style="padding-left: 0.1rem;"><a href="index.jsp">Home</a> </li>
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

        <ul>
            <%
                if(seller1==null)
                {
            %>
            <li><img  style="width: 2.5rem; margin-left: 0.5rem;" src="img/login-arrow.png" alt="" srcset=""></li>
            <li><a href="SellerLogin.jsp">Login</a> </li>
            <%
            } else
            {
            %>
            <li><img  style="width: 2.5rem; margin-left: 0.5rem;" src="img/logout-arrow.png" alt="" srcset=""></li>
            <li><a href="">Logout</a> </li>
            <li id="dashboard"><div class="circlenav">
                <h1 style="text-align: center"><%=seller1.getSellerName().charAt(0)%></h1>
            </div></li>

            <%
                }
            %>


        </ul>




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