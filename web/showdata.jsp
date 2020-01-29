<%-- 
    Document   : showdata
    Created on : Jan 15, 2020, 3:33:10 AM
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
        <h1>Name is <%=  request.getParameter("txtname")   %></h1>
         <h1>Password is <%=  request.getParameter("txtpass")   %></h1>
         <h1>Emailid is <%=  request.getParameter("txtemail")   %></h1>
         <h1>Mobile no  is <%=  request.getParameter("txtmobile")   %></h1>
         <h1>DOB is <%=  request.getParameter("txtdate")   %></h1>
         <h1>Course is <%=  request.getParameter("txtcourse")   %></h1>
         <h1>Course Type is <%
            String arr[] = request.getParameterValues("course[]");
            String d="";
            for(String s:arr)
            {
                d=d+s+" ";
            }
            out.print(d);
         
             %></h1>
             <h1>Country is <%=  request.getParameter("ddlcountry") %> </h1>
             <h1>Course Type is <%
            String arr1[] = request.getParameterValues("state[]");
            String d1="";
            for(String s:arr1)
            {
                d1=d1+s+" ";
            }
            out.print(d1);
         
             %></h1>
             <h1>Goal is <%=  request.getParameter("txtcomment") %> </h1>
    </body>
</html>
