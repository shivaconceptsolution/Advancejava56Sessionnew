/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hp
 */
public class ArrSer extends HttpServlet {
   public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
   {
      PrintWriter xyz = res.getWriter();
      res.setContentType("text/html");
      String arr[] = req.getParameterValues("arr[]");
      int max=0;
      for(String s:arr)
      {
          if(max<Integer.parseInt(s))
              max=Integer.parseInt(s);
          
      }
     //xyz.print("<h1>max element is </h1>"+max);
      res.sendRedirect("ArrExample.jsp?q="+max+"&q1="+100+"&q2="+200);
   }
     public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
   {
      PrintWriter xyz = res.getWriter();
      xyz.write("<h1>GET METHOD</h1>");
      
   }
}
