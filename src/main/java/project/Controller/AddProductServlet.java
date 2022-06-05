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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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



            ProductDao pDao = new ProductDao(FactoryProvider.getFactory());
            HttpSession httpSession= request.getSession();
            String path=request.getRealPath("img")+File.separator+part.getSubmittedFileName();

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

            if(pDiscount>0 && pDiscount<=100){
                Product p=new Product(pName,pDesc,pQty,pPrice,pDiscount,pCollection,pCategory,part.getSubmittedFileName() );
                Session session = FactoryProvider.getFactory().openSession();
                Transaction tx = session.beginTransaction();
                session.save(p);
                tx.commit();
                session.close();
                httpSession.setAttribute("message", "You have Successfully Added Product");
                response.sendRedirect("sellerAddProduct.jsp");
                return;


            }
            else{
                httpSession.setAttribute("message", "Discount can Not More than 100%");
                response.sendRedirect("sellerAddProduct.jsp");
                return;
            }


            //create httpsession for store value of hibernateSession in sessio




        }

    }
}
