
package com.mycompany.ecommerce5.dao;

import org.hibernate.SessionFactory;

public class UserDao {
    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
    //Get user by Email and Password (Method here) (Method will take email and pass and will return user or null
    public User getuserByEmailAndPassword(String email, String Password){
        User user = null;
        try {
            String query = "from User where "
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        return user;
    }
    
}
