
package com.mycompany.ecommerce5.dao;

import com.mycompany.ecommerce5.entities.user;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class UserDao {
    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
    //Get user by Email and Password (Method here) (Method will take email and pass and will return user or null
    public user getuserByEmailAndPassword(String email, String Password){
        user user = null;
        try {
            String query = "from user where userEmail =: e and userPassword =: p"
             (Session session = this.factory.openSession()) {
               Query q = session.createQuery(query);
               q.setParameter("e",email);
               q.setParameter('p', password);
               
             user =(user)  q.uniqueResult();
                        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        return user;
    }
    
}
