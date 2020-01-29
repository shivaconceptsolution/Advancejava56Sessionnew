/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hp
 */
public class UpdateSer extends HttpServlet {

   public void doPost(HttpServletRequest request,HttpServletResponse response) 
   {
       try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java56","root","");
           Statement st = con.createStatement();
           int x = st.executeUpdate("update student  set sname='"+request.getParameter("txtsname")+"',branch='"+request.getParameter("txtbranch")+"',fees='"+request.getParameter("txtfees")+"' where rno='"+request.getParameter("txtrno")+"'");
           if(x!=0)
              response.sendRedirect("ViewStudent.jsp");
           else
               response.sendRedirect("ViewStudent.jsp");
       } catch (Exception ex) {
           
       }
   }

}
