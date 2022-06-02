package project.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import project.Model.Seller;

public class SellerDao {
    private SessionFactory factory;

    public SellerDao(SessionFactory factory) {
        this.factory = factory;
    }
    public Seller getSellerByIdandPassword(String sellerId, String sellerPassword){
        Seller seller=null;

        try{
            String query="from Seller where sellerId=:i and sellerPassword=:p";
            Session session=this.factory.openSession();
            Query q=session.createQuery(query);
            q.setParameter("i",sellerId);
            q.setParameter("p",sellerPassword);
            seller=(Seller)q.uniqueResult();
            session.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return seller;
    }

    public boolean validateSellerRegistrationEmail(String sellerEmail) {
        String q = "from Seller where sellerEmail=:e";
        Session session = this.factory.openSession();
        Query qu = session.createQuery(q);
        qu.setParameter("e", sellerEmail);
        if (qu.uniqueResult() == null) return true;
        return false;
    }


    public boolean validateSellerRegistrationName(String sellerName) {
        String q = "from Seller where sellerName=:e";
        Session session = this.factory.openSession();
        Query qu = session.createQuery(q);
        qu.setParameter("e", sellerName);
        if (qu.uniqueResult() == null) {
            return true;
        }
        return false;
    }

    public boolean authenticatePassword(String sellerPassword) {
        boolean capitalLetterFlag = false;
        boolean smallLetterFlag = false;
        boolean numberFlag = false;
        for (int i = 0; i < sellerPassword.length(); i++) {
            int val = sellerPassword.charAt(i);
            if (65 <= val && val <= 90) {
                capitalLetterFlag = true;
            }
            if (97 <= val && val <= 122) {
                smallLetterFlag = true;
            }
            if (48 <= val && val <= 57) {
                numberFlag = true;
            }
        }
        if (capitalLetterFlag && smallLetterFlag && numberFlag) {
            return true;
        }
        return false;
    }
}
