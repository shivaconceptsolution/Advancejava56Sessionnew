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
        <form action="UpdateSer" method="post">
    <table border="1">
           

        
       <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java56","root","");
          Statement st = con.createStatement();
          ResultSet res = st.executeQuery("select * from student where rno='"+request.getParameter("q")+"'");
          if(res.next())
          {  %>
          <tr><td>RNO:-<input type="text" value="<%= res.getString(1) %>" name="txtrno" /></td></tr>
          <tr> <td>SNAME:<input type="text" value="<%= res.getString(2) %>" name="txtsname" /></td></tr>
          <tr><td>Branch: <select name="txtbranch" > 
                <option value="">Select Branch</option>
                <option value="CS">CS</option>
                <option value="IT" selected="true">IT</option>
                <option value="EC">EC</option>
            </select></td></tr>
          <tr><td> Fees:-<input type="text" value="<%= res.getString(4) %>" name="txtfees" /></td></tr>
          <tr><td><input type="submit" value="update" name="btnsubmit" /><a href="ViewStudent.jsp">Cancel</a></td></tr>
            
         <% }
           
        %> 
           </table>
          
        </form>
    </body>
</html>
