package project.Dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import project.Model.Product;
import org.hibernate.query.*;

import java.util.List;

public class ProductDao {
    private SessionFactory factory;

    public ProductDao(SessionFactory factory) {
        this.factory = factory;
    }
    public List<Product> getAllProducts(){
        Session s = this.factory.openSession();
        Query query = s.createQuery("FROM Product ");
        List<Product> list=query.list();
        return list;

    }
    public List<Product> getProductsByCatName(String catName){
        Session s = this.factory.openSession();
        Query query = s.createQuery("FROM Product where pCategory=:name");
        query.setParameter("name",catName);
        List<Product> list=query.list();
        return list;
    }
    public List<Product> getProductsByColName(String colName){
        Session s = this.factory.openSession();
        Query query = s.createQuery("FROM Product where pCollection=:name");
        query.setParameter("name",colName);
        List<Product> list=query.list();
        return list;
    }
    public List<Product> getProductsByLowPrice(){
        Session s = this.factory.openSession();
        Query query = s.createQuery("FROM Product as p order by  p.pPrice ASC");
        List<Product> list=query.list();
        return list;
    }
    public List<Product> getProductsByHighPrice(){
        Session s = this.factory.openSession();
        Query query = s.createQuery("FROM Product as p order by  p.pPrice DESC");
        List<Product> list=query.list();
        return list;
    }
}
