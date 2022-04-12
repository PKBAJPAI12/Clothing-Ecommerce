package project.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import project.Model.User;

import org.hibernate.query.*;

public class UserDao {
    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
    public User getUserByEmailandPassword(String email, String password){
        User user=null;

        try{
          String query="from User where userEmail=:e and userPassword=:p";
          Session session=this.factory.openSession();
          Query q=session.createQuery(query);
          q.setParameter("e",email);
          q.setParameter("p",password);
             user=(User)q.uniqueResult();
          session.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }

    public boolean validateUserRegistrationEmail(String userEmail) {
        String q = "From User where userEmail=:e";
        Session session = this.factory.openSession();
        Query qu = session.createQuery(q);
        qu.setParameter("e", userEmail);
        if (qu.uniqueResult() == null) return true;
        return false;
    }


    public boolean validateUserRegistrationUserName(String userName) {
        String q = "From User where userName=:e";
        Session session = this.factory.openSession();
        Query qu = session.createQuery(q);
        qu.setParameter("e", userName);
        if (qu.uniqueResult() == null) {
            return true;
        }
        return false;
    }

    public boolean authenticatePassword(String userPassword) {
        boolean capitalLetterFlag = false;
        boolean smallLetterFlag = false;
        boolean numberFlag = false;
        for (int i = 0; i < userPassword.length(); i++) {
            int val = userPassword.charAt(i);
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
