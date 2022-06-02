package project.Controller;

import project.Dao.SellerDao;
import project.Helper.FactoryProvider;
import project.Model.Seller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SellerLoginServlet", value = "/SellerLoginServlet")
public class SellerLoginServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("text/html");
        try(PrintWriter out = response.getWriter()) {

            try {
                //get parameter from register.jsp by user input
                String sellerId = request.getParameter("seller_id");
                String sellerPassword = request.getParameter("seller_password");
                SellerDao sellerDao = new SellerDao(FactoryProvider.getFactory());
                Seller seller = sellerDao.getSellerByIdandPassword(sellerId, sellerPassword);
                //create httpsession for store value of hibernateSession in session
                HttpSession httpSession = request.getSession();
                if (seller == null) {
                    httpSession.setAttribute("message", "Invalid Details");
                    response.sendRedirect("SellerLogin.jsp");
                    return;
                } else {
                    httpSession.setAttribute("current-seller", seller);
                    response.sendRedirect("SellerDash.jsp");
                    return;

                }
            }
            catch (Exception e){
                e.printStackTrace();
            }

        }

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);

    }
}
