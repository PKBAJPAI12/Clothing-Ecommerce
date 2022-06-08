package project.Controller;

import org.hibernate.Session;
import org.hibernate.Transaction;
import project.Dao.AddressDao;

import project.Dao.UserDao;
import project.Helper.FactoryProvider;
import project.Model.Address;
import project.Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddressServlet", value = "/AddressServlet")
public class AddressServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("text/html");
        try(PrintWriter out = response.getWriter()) {

            try{
                //get parameter from register.jsp by user input

                String firstName=request.getParameter("first_name");
                String lastName=request.getParameter("last_name");
                String shippingEmail=request.getParameter("email_address");
                long phoneNumber=Long.parseLong(request.getParameter("phone_no"));
                String shippingAddress=request.getParameter("street_address");
                String country=request.getParameter("country");
                String city=request.getParameter("city");
                int pinCode=Integer.parseInt(request.getParameter("pin_code"));
                String orderReference=request.getParameter("order_reference");
                int userId=Integer.parseInt(request.getParameter("userop"));
                HttpSession httpSession= request.getSession();
UserDao uDao=new UserDao(FactoryProvider.getFactory());

                User user = uDao.getUserById(userId);

                AddressDao addressDao=new AddressDao(FactoryProvider.getFactory());
                if(firstName.length()==0){
                    httpSession.setAttribute("message","You are missing First Name Please First Name");
                    response.sendRedirect("AddAddress.jsp");
                    return;

                }
                else if(lastName.length()==0){
                    httpSession.setAttribute("message","You are missing Last Name Please Last Name");
                    response.sendRedirect("AddAddress.jsp");
                    return;
                }
                else if(firstName.length()!=0 &&  firstName.charAt(0)>='a'&& firstName.charAt(0)<='z')
                {
                    httpSession.setAttribute("message","First Name First Letter should be Capital");
                    response.sendRedirect("AddAddress.jsp");
                    return;
                }
                else if(lastName.length()!=0 &&  lastName.charAt(0)>='a'&& lastName.charAt(0)<='z')
                {
                    httpSession.setAttribute("message","Last Name First Letter should be Capital");
                    response.sendRedirect("AddAddress.jsp");
                    return;
                }
                else if(shippingEmail.length()==0){
                    httpSession.setAttribute("message","You are missing Email Please Enter Email");
                    response.sendRedirect("AddAddress.jsp");
                    return;
                }



                // send parameter to User.java through User Constructor
                else{
                    Address address= new Address(firstName,lastName, shippingEmail,phoneNumber, shippingAddress,country,pinCode,city,orderReference,user);
                    Session hibernateSession= FactoryProvider.getFactory().openSession();
                    Transaction tx=hibernateSession.beginTransaction();
                  int addressId =(int) hibernateSession.save(address);
                    tx.commit();
                    hibernateSession.close();
                    //create httpsession for store value of hibernateSession in session
                    httpSession.setAttribute("message","You have Successfully Saved Address");
                    response.sendRedirect("AddAddress.jsp");
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
