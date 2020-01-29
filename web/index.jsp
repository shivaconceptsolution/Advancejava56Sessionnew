<%-- 
    Document   : index
    Created on : Jan 23, 2020, 3:47:15 AM
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
        <%
            String uname="";
            String upass="";
            if(request.getCookies()!=null)
            {
            Cookie c[] = request.getCookies();
            for(int i=0;i<c.length;i++)
            {
                if(c[i].getName().equals("ucookie"))
                {
                   uname=c[i].getValue();
                }
                if(c[i].getName().equals("pcookie"))
                {
                   upass=c[i].getValue();
                }
            }
            }
            
            %>
        <form action="AdminSer" method="post">
            <p><input type="text" name="txtuser" value="<%= uname    %>" placeholder="Enter username" /></p> 
            <p><input type="password" name="txtpass" value="<%= upass   %>"  placeholder="Enter password" /></p>
            <p><input type="checkbox" name="chk" <% if(uname!=""){ out.print ("checked");}%>  />Remember me</p>
            <p><input type="submit" name="btnsubmit" value="Login" /> </p>
        </form>
    </body>
</html>
