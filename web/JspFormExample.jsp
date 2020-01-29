<%-- 
    Document   : JspFormExample
    Created on : Jan 15, 2020, 3:09:43 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
          input[type="text"],input[type="email"],input[type="password"],input[type="number"],input[type="date"],select
          {
              height: 30px;
              width:300px;
              
          }
          .lst,textarea
          {
              height: 150px;
              width:300px;
          }
          
          input[type="submit"]
          {
              width:250px;
              height: 40px;
              background-color: blue;
              color:white;
              border-radius: 10px;
          }
          label
          {
              font-weight: bolder;
              font-size: 18px;
          }
            
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="HelloSer"  method="get" name="frmreg">
            <table>
                <tr><td><label for="name"> Enter Name</label></td><td> <input type="text" name="txtname" required="" /></td></tr>
           
                <tr><td><label for="pass"> Enter Password</label></td><td><input type="password" name="txtpass" required="" /></td></tr>
            
                <tr><td><label for="email"> Enter Email</label></td><td><input type="email" name="txtemail" required=""/></td></tr>
                <tr><td><label for="dob"> Enter DOB</label></td><td><input type="date" name="txtdate" /></td></tr>
            
                <tr><td><label for="mobile"> Enter Mobile Number</label></td><td><input type="number" name="txtmobile" required="" /></td></tr>
            
             
                <tr><td><label for="Course"> Select Course</label></td><td><input type="radio" name="txtcourse" value="JAVA" required="" />JAVA &nbsp;&nbsp;<input type="radio" name="txtcourse" value=".NET" />.NET</td></tr>
             
                <tr><td><label for="Coursetype"> Select CourseType</label></td><td><input type="checkbox" name="course[]" value="Job Oriented" />Job Oriented &nbsp;&nbsp;<input type="checkbox" name="course[]" value="Certification" />Certification</td></tr>
             
                <tr><td> <label for="Country"> Select Country</label></td><td> <select name="ddlcountry">
             <option value="INDIA">INDIA</option> 
             <option value="USA">USA</option> 
             <option value="UK">UK</option> 
             <option value="CHINA">CHINA</option> 
             </select></td></tr>
            
            
             
                <tr><td><label for=""> Select State</label></td><td> <select name="state[]" multiple="true" class="lst">
             <option value="MP">MADHYAPRADESH</option> 
             <option value="UP">UP</option> 
             <option value="UK">UK</option> 
             <option value="HP">HP</option> 
             </select></td></tr>
           
             
            
                <tr><td><label for="">Write your goal</label></td><td> <textarea name="txtcomment" rows="10" cols="30" required=""></textarea></td></tr>
                <tr><td></td><td>  <input type="submit" name="btnsubmit" value="Click" /></td></tr>
           
            </table>
        </form>
        
</html>
