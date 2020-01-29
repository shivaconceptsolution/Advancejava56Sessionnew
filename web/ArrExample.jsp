<%-- 
    Document   : ArrExample
    Created on : Jan 18, 2020, 3:22:28 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
           // window.location="ArrSer";
        </script>
    </head>
    <bo
        <form action="ArrSer" method="post">
            <select multiple="true" name="arr[]">
                 <option value="12" >12</option>
                 <option value="23" >23</option>
                 <option value="34" >34</option>
                 <option value="11" >11</option>
                 <option value="9" >9</option>
            </select>  
            <br>
            <br>
            <input type="submit" name="btnsubmit" value="Submit" />
        </form>
        
        <%
           // response.sendRedirect("ArrSer");
            if(request.getParameter("q")!=null)
            {
           out.print("max element is "+request.getParameter("q"));
            }
            
         %>
    </body>
</html>
