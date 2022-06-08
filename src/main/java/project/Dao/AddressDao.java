package project.Dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import project.Model.Address;
import project.Model.User;


import java.util.List;

public class AddressDao {
    private SessionFactory factory;

    public AddressDao(SessionFactory factory) {
        this.factory = factory;
    }
    public List<Address> getAllAddresses(){
        Session s = this.factory.openSession();
        Query query = s.createQuery("FROM Address ");
        List<Address> list=query.list();
        return list;

    }
    public Address getAddressByUserId(int id){
        Address add=null;
        try{
            Session session = this.factory.openSession();
            String q = "from Address where user.userId=:i order by addressId DESC";
            Query query = (Query) session.createQuery(q);
            query.setParameter("i", id);

            query.setMaxResults(1);
            add=(Address) query.uniqueResult();
            session.close();


        }
        catch (Exception e){
            e.printStackTrace();
        }
return add;
    }
    public List<Address> getAddressListByUserId(int id){
        List<Address> list = null;

        try {
            //validation if the user exists
            Session session = this.factory.openSession();
            String q = "from Address where user.userId=:i";
            Query query = (Query) session.createQuery(q);
            query.setParameter("i", id);
            list = query.list();
            session.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }




        return list;

    }
}
