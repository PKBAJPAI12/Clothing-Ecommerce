package project.Controller;

import org.hibernate.Session;
import org.hibernate.Transaction;
import project.Dao.ProductDao;
import project.Helper.FactoryProvider;
import project.Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet(name = "AddProductServlet", value = "/AddProductServlet")
@MultipartConfig
public class AddProductServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("text/html");
        try(PrintWriter out = response.getWriter()) {

                //get parameter from register.jsp by user input
                String pName=request.getParameter("product_name");
                String pDesc=request.getParameter("product_desc");
                int pQty=Integer.parseInt(request.getParameter("product_qty"));
                int pPrice=Integer.parseInt(request.getParameter("product_price"));
                int pDiscount=Integer.parseInt(request.getParameter("discount"));
                Part part=request.getPart("product_image");
                String pCollection=request.getParameter("collection_type");
                String pCategory=request.getParameter("product_category");
                Product p=new Product();
                ProductDao pDao = new ProductDao(FactoryProvider.getFactory());


                String path=request.getRealPath("img")+ File.separator+"products"+File.separator+part.getSubmittedFileName();
                System.out.println(path);

                try {
                    //uploading code
                    FileOutputStream fos = new FileOutputStream(path);
                    InputStream is = part.getInputStream();    //we have converted the data into into stream and converted into string

                    //reading data
                    byte[] data = new byte[is.available()];
                    is.read(data);

                    //writing the data
                    fos.write(data);
                    fos.close();
                }

                catch (Exception e){
                    e.printStackTrace();
                }

                //create httpsession for store value of hibernateSession in sessio
                HttpSession httpSession= request.getSession();
                if(!pDao.saveProduct(p)) {
                    httpSession.setAttribute("message", "Your Product is Not Added Please Try Again");
                    response.sendRedirect("sellerAddProduct.jsp");
                    return;
                }
                else{

                    httpSession.setAttribute("message", "You have Successfully Added Product");
                    response.sendRedirect("sellerAddProduct.jsp");
                    return;
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
