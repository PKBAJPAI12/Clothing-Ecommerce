package project.Controller;

import org.hibernate.Session;
import org.hibernate.Transaction;
import project.Dao.UserDao;
import project.Helper.FactoryProvider;
import project.Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("text/html");
        try(PrintWriter out = response.getWriter()) {

            try{
                //get parameter from register.jsp by user input
                String userEmail=request.getParameter("email");
                String userPassword=request.getParameter("password");
                UserDao userDao=new UserDao(FactoryProvider.getFactory());
                User user=userDao.getUserByEmailandPassword(userEmail,userPassword);
                //create httpsession for store value of hibernateSession in session
                HttpSession httpSession= request.getSession();
if(user==null){
      httpSession.setAttribute("message","Invalid Details");
    response.sendRedirect("login1.jsp");
    return;
}
else{
    httpSession.setAttribute("current-user",user);

    if(user.getUserId()==1){
       response.sendRedirect("admin.jsp");
    }
    else
    response.sendRedirect("Product.jsp");
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
