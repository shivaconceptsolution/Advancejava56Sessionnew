/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hp
 */
public class StudentSer extends HttpServlet {

   public void doPost(HttpServletRequest request,HttpServletResponse response) 
   {
       try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java56","root","");
           Statement st = con.createStatement();
           int x = st.executeUpdate("insert into student(rno,sname,branch,fees) values('"+request.getParameter("txtrno")+"','"+request.getParameter("txtname")+"','"+request.getParameter("txtbranch")+"','"+request.getParameter("txtfees")+"')");
           if(x!=0)
              response.sendRedirect("StudentForm.jsp?q=insert success");
           else
               response.sendRedirect("StudentForm.jsp?q=insert fail");
       } catch (Exception ex) {
           
       }
   }

}
