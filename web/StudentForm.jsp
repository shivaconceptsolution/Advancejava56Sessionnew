<%-- 
    Document   : StudentForm
    Created on : Jan 21, 2020, 3:39:33 AM
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
        <form action="StudentSer" method="post">
            <input type="text" name="txtrno" placeholder="Enter rno" required="" />
            <br><br>
            <input type="text" name="txtname" placeholder="Enter name" required="" /> <br><br>
            <select name="txtbranch" > 
                <option value="">Select Branch</option>
                <option value="CS">CS</option>
                <option value="IT">IT</option>
                <option value="EC">EC</option>
            </select><br><br>
            <input type="number" name="txtfees" placeholder="Enter fees" required="" /> <br><br>
               <input type="submit" name="btnsubmit" value="Insert" />
        </form>
        <a href="ViewStudent.jsp">View Student</a>
        <%
            if(request.getParameter("q")!=null)
            {
                out.print(request.getParameter("q"));
            }
         %>
    </body>
</html>
