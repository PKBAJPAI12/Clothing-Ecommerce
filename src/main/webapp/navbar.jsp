<%@ page import="project.Model.User" %>

<%
    User user1=(User)session.getAttribute("current-user");
%>

<div class="navbar">
    <div class="navleft">
        <ul class="navleftul">
            <li style="padding-right: 0rem;"><img  style="width: 2.5rem;" src="img/home (3).png" alt="" srcset=""></li>
            <li style="padding-left: 0.1rem;"><a href="index.jsp">Home</a> </li>
            <li><a href="Product.jsp">Collections</a></li>
            <li><a href="Product.jsp?collection=Mens">Men</a> </li>
            <li><a href="Product.jsp?collection=Womens">Women</a> </li>
            <li><a href="Product.jsp?collection=Kids">Kids</a> </li>
        </ul>
    </div>
    <div class="navcenter">
        <img style="width:3rem; margin-right: 1rem;" src="img/shopping-store.png" alt="">
        <h2 class="">Superior</h2>
    </div>
    <div class="navright">

        <ul>
            <% if(user1==null)
            {
            %>

            <li><img  style="width: 2.5rem; margin-left: 0.5rem;" src="img/login-arrow.png" alt="" srcset=""></li>
            <li><a href="login1.jsp">Login</a> </li>



            <%
            } else if(user1.getUserId()==1)
            {
            %>

            <li><img  style="width: 2.5rem; margin-left: 0.5rem;" src="img/logout-arrow.png" alt="" srcset=""></li>
            <li><a href="LogOutServlet">Logout</a> </li>
            <li id="dashboard"><div class="circlenav">
                <h1 style="text-align: center"><%=user1.getUserName().charAt(0)%></h1>
            </div></li>
            <!--  <div  style="background-color: white" class="dashboardnav">
                <div style="display: flex; justify-content: center; margin-bottom: 0.5rem; margin-top: 0.5rem">
                    <div style="width:3.2rem; height: 3.2rem;" class="circlenav">
                        <h1 style="margin-top: 0.5rem; text-align: center"><%=user1.getUserName().charAt(0)%></h1>
                    </div>
                    <div style="margin-left: 0.5rem; display: flex; flex-direction: column; justify-content: center">
                        <h2><%=user1.getUserName()%></h2>
                        <p><%=user1.getUserEmail()%></p>
                    </div>

                </div>
                <hr>
                <div>
                    <ul style="flex-direction: column;">
                        <li><a href="">Products</a> </li>
                        <li><a href="">Our Seller</a> </li>
                        <li><a href="">Seller Requests</a> </li>
                        <li><a href="">Complaints</a> </li>
                        <li><a href="">Notifications</a> </li>
                    </ul>
                </div>


            </div>-->

            <%
            }

            else {
            %>

            <li><img  style="width: 2.5rem; margin-left: 0.5rem;" src="img/logout-arrow.png" alt="" srcset=""></li>
            <li><a href="LogOutServlet">Logout</a> </li>
            <li id="dashboard"><div class="circlenav">
                <h1 style="text-align: center"><%=user1.getUserName().charAt(0)%></h1>
            </div></li>
            <div style="background-color: white; display: none" class="dashboardnav">
                <div style="display: flex; justify-content: center; margin-top:0.5rem; margin-bottom:0.5rem">
                    <div style="width:3.2rem; height: 3.2rem;" class="circlenav">
                        <h1 style="text-align: center; margin-top:0.5rem"><%=user1.getUserName().charAt(0)%></h1>
                    </div>
                    <div style="margin-left: 0.5rem; display: flex; flex-direction: column; justify-content: center">
                        <h2><%=user1.getUserName()%></h2>
                        <p><%=user1.getUserEmail()%></p>
                    </div>

                </div>
                <hr>
                <div>
                    <ul style="flex-direction: column;">
                        <li><a href="">My Orders</a> </li>
                        <li><a href="">MyCart</a> </li>
                        <li><a href="">My Wishlist</a> </li>
                        <li><a href="">Payment Methods</a> </li>
                        <li><a href="">Notifications</a> </li>
                        <li><a href="">Become Seller</a> </li>
                    </ul>
                </div>

            </div>
            <%            }
            %>

        </ul>




        <form style="display: flex;" action="TransactionServlet" method="post">
            <div style="margin-right:1rem;" class="searchform">
                <div  class="boximage">
                    <img style="width:1.8rem" src="img/search.png" alt="" srcset="">
                </div>
                <input style="color:white; border-color: transparent; color:white "  type="text" placeholder="Search" name="trans">
                <div style="border-left:1px solid black; padding-left:0.8rem;  display: flex " class="boximage">

                    <a href="checkout.jsp"  ><img style="width:1.8rem" src="img/cart.png" alt="" srcset=""></a>
                    <span class="cart-items" style="font-size:16px; margin-top: -4px; color: blue; margin-left:2px "></span>
                </div>
            </div>

        </form>


    </div>
</div>