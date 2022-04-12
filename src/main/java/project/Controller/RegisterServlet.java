package project.Controller;

import project.Helper.FactoryProvider;
import project.Model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("text/html");
        try(PrintWriter out = response.getWriter()) {

            try{
                String userName=request.getParameter("user_name");
                String userEmail=request.getParameter("user_email");
                String userPassword=request.getParameter("user_password");
                out.println(userName);
                out.println(userEmail);
                out.println(userPassword);

                User user= new User(userName, userEmail, userPassword);

                Session hibernateSession= FactoryProvider.getFactory().openSession();
                Transaction tx=hibernateSession.beginTransaction();
                int userId=(int) hibernateSession.save(user);
                tx.commit();
                hibernateSession.close();

                HttpSession httpSession= request.getSession();
                httpSession.setAttribute("message","You have Successfully Created Account");
                response.sendRedirect("register.jsp");

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
