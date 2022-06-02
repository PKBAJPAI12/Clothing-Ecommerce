package project.Controller;

import project.Dao.UserDao;
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
                //get parameter from register.jsp by user input
                String userName=request.getParameter("user_name");
                String userEmail=request.getParameter("user_email");
                String userPassword=request.getParameter("user_password");
                HttpSession httpSession= request.getSession();
               UserDao userDao=new UserDao(FactoryProvider.getFactory());
                if(userName.length()==0){
                 httpSession.setAttribute("message","You are missing Name Please Enter Name");
                 response.sendRedirect("register.jsp");
                 return;

            }
                else if(userName.length()!=0 && userName.charAt(0)>='a'&& userName.charAt(0)<='z')
                    {
                        httpSession.setAttribute("message","User Name First Letter should be Capital");
                        response.sendRedirect("register.jsp");
                        return;
                }
                else if(userEmail.length()==0){
                    httpSession.setAttribute("message","You are missing Email Please Enter Email");
                    response.sendRedirect("register.jsp");
                    return;
                }
                else if(userPassword.length()==0){
                    httpSession.setAttribute("message","You are missing Password Please Enter Password");
                    response.sendRedirect("register.jsp");
                    return;
                }
                else if(userPassword.length()>=1 && userPassword.length()<=8 ){
                    httpSession.setAttribute("message","Password length should be Greater than 8");
                    response.sendRedirect("register.jsp");
                    return;
                }
                else if(!userDao.validateUserRegistrationEmail(userEmail) ){
                    httpSession.setAttribute("message","Email is Already Available");
                    response.sendRedirect("register.jsp");
                    return;
                }
                else if(!userDao.validateUserRegistrationUserName(userName)){
                    httpSession.setAttribute("message","User is Already Available");
                    response.sendRedirect("register.jsp");
                    return;
                }
                else if(!userDao.authenticatePassword(userPassword)){
                    httpSession.setAttribute("message","Please Follow Instruction for Create Password");
                    response.sendRedirect("register.jsp");
                    return;
                }
                // send parameter to User.java through User Constructor
             else{
                    User user= new User(userName, userEmail, userPassword);
                    Session hibernateSession= FactoryProvider.getFactory().openSession();
                    Transaction tx=hibernateSession.beginTransaction();
                    int userId=(int) hibernateSession.save(user);
                    tx.commit();
                    hibernateSession.close();
                    //create httpsession for store value of hibernateSession in session
                    httpSession.setAttribute("message","You have Successfully Created Account");
                    response.sendRedirect("register.jsp");
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
