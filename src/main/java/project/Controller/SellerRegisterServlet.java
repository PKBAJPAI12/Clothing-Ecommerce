package project.Controller;

import org.hibernate.Session;
import org.hibernate.Transaction;
import project.Dao.SellerDao;
import project.Helper.FactoryProvider;
import project.Model.Seller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SellerRegisterServlet", value = "/SellerRegisterServlet")
public class SellerRegisterServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("text/html");
        try(PrintWriter out = response.getWriter()) {

            try{
                //get parameter from register.jsp by user input

                String sellerName=request.getParameter("seller_name");
                String sellerEmail=request.getParameter("seller_email");
                String storeName=request.getParameter("store_name");
                String gstNumber=request.getParameter("gst_no");
                String sellerPassword=request.getParameter("seller_password");
                int randomNumber=(int)(3456+(Math.random()*9999));
                String sellerId="SUPREME"+storeName.substring(0,6)+randomNumber;
                HttpSession httpSession= request.getSession();
                SellerDao sellerDao=new SellerDao(FactoryProvider.getFactory());
                if(sellerName.length()==0){
                    httpSession.setAttribute("message","You are missing Name Please Enter Name");
                    response.sendRedirect("sellerregister.jsp");
                    return;

                }
                else if(sellerName.length()!=0 && sellerName.charAt(0)>='a'&& sellerName.charAt(0)<='z')
                {
                    httpSession.setAttribute("message","User Name First Letter should be Capital");
                    response.sendRedirect("sellerregister.jsp");
                    return;
                }
                else if(sellerEmail.length()==0){
                    httpSession.setAttribute("message","You are missing Email Please Enter Email");
                    response.sendRedirect("sellerregister.jsp");
                    return;
                }
                else if(sellerPassword.length()==0){
                    httpSession.setAttribute("message","You are missing Password Please Enter Password");
                    response.sendRedirect("sellerregister.jsp");
                    return;
                }
                else if(sellerPassword.length()>=1 && sellerPassword.length()<=8 ){
                    httpSession.setAttribute("message","Password length should be Greater than 8");
                    response.sendRedirect("sellerregister.jsp");
                    return;
                }
                else if(!sellerDao.validateSellerRegistrationEmail(sellerEmail) && !sellerDao.validateSellerRegistrationName(sellerName) ){
                    httpSession.setAttribute("message","Account is Already Available");
                    response.sendRedirect("sellerregister.jsp");
                    return;
                }

                else if(!sellerDao.authenticatePassword(sellerPassword)){
                    httpSession.setAttribute("message","Please Follow Instruction for Create Password");
                    response.sendRedirect("sellerregister.jsp");
                    return;
                }
                // send parameter to User.java through User Constructor
                else{
                    Seller seller= new Seller(sellerId,sellerName, sellerEmail,storeName,gstNumber, sellerPassword);
                    Session hibernateSession= FactoryProvider.getFactory().openSession();
                    Transaction tx=hibernateSession.beginTransaction();
                    hibernateSession.save(seller);
                    tx.commit();
                    hibernateSession.close();
                    //create httpsession for store value of hibernateSession in session
                    httpSession.setAttribute("message","Congratulation! Now You are Seller and Your Seller Account Id is "+sellerId);
                    response.sendRedirect("sellerregister.jsp");
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
