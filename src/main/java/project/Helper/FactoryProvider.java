package project.Helper;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

//use FactoryProvider class for create connection between hibernate with registerServlet
public class FactoryProvider {
    private static SessionFactory factory;
    public static SessionFactory getFactory(){

            if(factory==null){
                Configuration cfg = new Configuration();
                cfg.configure("hibernate.cfg.xml");
                factory = cfg.buildSessionFactory();
            }

        return factory;
    }
    public void closeFactory(){
        if(factory.isOpen()){
            factory.close();
        }
    }
}
