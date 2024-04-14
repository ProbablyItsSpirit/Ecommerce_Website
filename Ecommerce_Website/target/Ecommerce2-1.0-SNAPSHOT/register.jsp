<%-- 
    Document   : register
    Created on : 10-Apr-2024, 2:53:19 pm
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
    </head>
    <body>
        
        <%@include file= "components/common_css_js.jsp" %>
        <div class ="row" >
            <div class="col-md-4 offset-md-4">
                <<form action="action">
                    <div class="form-group">
                    <label for="name">User Name</label>
                    <input type="text" class="form-control" id="name" placeholder = "Enter here" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                    
                    <div class="form-group">
                        <label for="Email">Email address</label>
                        <input type="email" class="form-control" id="Email" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                      </div>
                    
                    <div class="form-group">
                    <label for="Password">Password</label>
                    <input type="password" class="form-control" id="Password" placeholder = "Enter here" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                    
                    <div class="form-group">
                    <label for="number">Phone number</label>
                    <input type="number" class="form-control" id="number" placeholder = "Enter here" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                    
                    <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id=address" placeholder = "Enter here" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                    
                    <div>
                        <button class ="btn btn-outline-success"> Register </button>
                    </div>
                </form>
                
            </div>
        </div>
    </body>
</html>
