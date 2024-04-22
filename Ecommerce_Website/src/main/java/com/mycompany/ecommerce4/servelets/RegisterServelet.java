 
package com.mycompany.ecommerce4.servelets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.mycompany.ecommerce4.entities.user;
import com.mycompany.ecommerce4.helper.FactoryProvider;
import jakarta.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

public class RegisterServelet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            try{
           
			
                String userName = request.getParameter("user_name");
                String userEmail = request.getParameter("user_Email");
                String userPassword = request.getParameter("user_Password");
                String userPhone = request.getParameter("user_Phone");
                String userAddress = request.getParameter("user_Address");
                
                
                
                //creating user object to store data
                user user = new user(userName,userEmail,userPassword,userPhone,userAddress);
                
                Session hibernateSession =FactoryProvider.getFactory().openSession();
			
			Transaction tx= hibernateSession.beginTransaction();
			
			int userId=(Integer) hibernateSession.save(user);
			
			
			tx.commit();
			hibernateSession.close();
			HttpSession httpSession=request.getSession();
			httpSession.setAttribute("message","*Registration SuccessFul !! User id is:" + userId);
			response.sendRedirect("register.jsp");
                        out.println("done");
			return;
                 
                
            }catch(Exception e){
                e.printStackTrace();
            
        }
                
            
        }
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
