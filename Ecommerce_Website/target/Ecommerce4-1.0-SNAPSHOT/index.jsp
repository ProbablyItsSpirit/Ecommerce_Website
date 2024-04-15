
<%@page import = "com.mycompany.ecommerce4.helper.FactoryProvider" %> 
<%@page contentType="text/html" pageEncoding = "UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Ecommerce-home</title>
        
        <%@include file ="components/common_css_js.jsp" %>
    </head>
<body>
    
    
    <%@include file="components/navbar.jsp"  %>   
<h2>Hello World!</h2>
<h2> Creating session factory </h2>

<%
    out.println(FactoryProvider.getFactory());
%>



</body>
</html>
