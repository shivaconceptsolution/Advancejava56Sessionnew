<%-- 
    Document   : ViewStudent
    Created on : Jan 22, 2020, 3:30:58 AM
    Author     : Hp
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Are you sure you want to delete this record</h1>
        <form action="DeleteSer" method="post">
    <table border="1">
           

        
       <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java56","root","");
          Statement st = con.createStatement();
          ResultSet res = st.executeQuery("select * from student where rno='"+request.getParameter("q")+"'");
          if(res.next())
          {  %>
          <input type="hidden" name="txtrno" value="<%= res.getString(1) %>" />
          <tr><td>RNO:-<%= res.getString(1) %></td></tr>
          <tr> <td>SNAME:<%= res.getString(2) %></td></tr>
          <tr><td>Branch: <%= res.getString(3) %></td></tr>
          <tr><td> Fees:-<%= res.getString(4) %></td></tr>
          <tr><td><input type="submit" value="delete" name="btnsubmit" /><a href="ViewStudent.jsp">Cancel</a> </td></tr>
            
         <% }
           
        %> 
           </table>
        </form>
    </body>
</html>
