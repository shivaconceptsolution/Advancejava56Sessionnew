<%-- 
    Document   : demo1
    Created on : Jan 13, 2020, 3:30:10 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>SI Program</h1>
        <%!  float p=12000,r=2,t=2,si;       %>
        
        <p>Expression</p>
        
        <%
            si=(p*r*t)/100;
            
           %> 
           
           <h3><%= si  %>  </h3>
           
           <%
           si = p+r;
           
           %>
           <h4><%= si  %>  </h4>
           
           
    </body>
</html>
