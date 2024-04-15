
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <%@include file="components/common_css_js.jsp"%>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        
        <div class ="container">
            
        <div class="row">
            <div class="col-md-4 offset md-4">
                
                <form>
                  <div class="form-group">
                        <label for="name">User Name</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name here">
                        
                     </div>
                    
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                        
                     </div>
                    
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    
                     <div class="form-group">
                        <label for="phone">Contact no.</label>
                        <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter contact number">
                        
                     </div>
                    
                    <div class="form-group">
                        <label for="address">Address</label>
                        <textarea class="form-control"  placeholder="Enter your address"></textarea>
                         
                     </div>
                    
                     <div class="container text-center"> 
                        <button class="btn btn-outline-success">Register</button>
                    </div>
                    
                 
                    
                    
                     
                </form>
                
           
        </div>
        </div>
         
                    
        
    </body>
</html>
