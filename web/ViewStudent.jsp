
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("adminsessionid")==null)
            {
                response.sendRedirect("index.jsp");
            }
            
            
            
        %>
        <h1>Welcome <%= session.getAttribute("adminsessionid")    %></h1>
        <a href="LogoutSer">Logout </a>
    <table border="1">
            <tr>
                <th>RNO</th>
                <th>SNAME</th>
            
                <th>BRANCH</th>
                <th>FEES</th>
            
            </tr>

        
       <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java56","root","");
          Statement st = con.createStatement();
          ResultSet res = st.executeQuery("select * from student");
          while(res.next())
          {  %>
          <tr><td> <%= res.getString(1) %></td> <td> <%= res.getString(2) %></td><td> <%= res.getString(3) %></td><td> <%= res.getString(4) %></td><td><a href="EditRecord.jsp?q=<%= res.getString(1) %>">Edit</a></td><td><a href="DeleteRecord.jsp?q=<%= res.getString(1) %>">Delete</a></td></tr>
            
         <% }
           
        %> 
           </table>
            <a href="StudentForm.jsp">Add Record</a>
    </body>
</html>
