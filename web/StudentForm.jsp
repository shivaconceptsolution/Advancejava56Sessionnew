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
        <script>
            function validate()
            {
             if(document.getElementById("txtrno").value.length==0)   
             {
                 alert("rno is required");
                 return false;
             }
             else if(document.getElementById("txtname").value.length==0)
             {
                alert("name is required");
                 return false;  
             } 
             else if(document.getElementById("txtbranch").value=="0")
             {
               alert("branch is required");
                 return false;  
             }
             else if(isNaN(document.getElementById("txtfees").value))
             {
               alert("fees should be numeric");
                 return false;  
             }
            }
            function checkrno(a)
            {
              var xmlhttp = new XMLHttpRequest();  
              xmlhttp.onreadystatechange=function(){
            document.getElementById("sprno").innerHTML = xmlhttp.responseText;    
                  
              };
              
              xmlhttp.open("post","CheckSer?q="+a,true);
              xmlhttp.send();
            }
            
        </script>
    </head>
    <body>
        <form action="StudentSer" method="post">
            <input type="text" name="txtrno" id="txtrno" placeholder="Enter rno" required="" onblur="checkrno(this.value)" />
            <span id="sprno"></span><br><br>
            <input type="text" name="txtname" id="txtname" placeholder="Enter name" required="" /> <br><br>
            <select name="txtbranch" id="txtbranch" > 
                <option value="0">Select Branch</option>
                <option value="CS">CS</option>
                <option value="IT">IT</option>
                <option value="EC">EC</option>
            </select><br><br>
            <input type="text" name="txtfees" id="txtfees" placeholder="Enter fees" required="" /> <br><br>
               <input type="submit" name="btnsubmit" value="Insert" onclick="return validate()" />
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
