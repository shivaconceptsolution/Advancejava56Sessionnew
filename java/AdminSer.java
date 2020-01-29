/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hp
 */
public class AdminSer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try (PrintWriter out = response.getWriter()) {
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java56","root","");
            Statement st = con.createStatement();
            ResultSet res = st.executeQuery("select * from admin where username='"+request.getParameter("txtuser")+"' and password='"+request.getParameter("txtpass")+"'");
            if(res.next())
            {
                HttpSession session = request.getSession();
                session.setAttribute("adminsessionid",request.getParameter("txtuser"));
                if(request.getParameter("chk")!=null)
                {
                Cookie ucookie = new Cookie("ucookie",request.getParameter("txtuser"));
                ucookie.setMaxAge(1000);
                response.addCookie(ucookie);
                 Cookie pcookie = new Cookie("pcookie",request.getParameter("txtpass"));
                pcookie.setMaxAge(1000);
                response.addCookie(pcookie);
                }
                response.sendRedirect("ViewStudent.jsp");
            }
            else
            {
                 response.sendRedirect("index.jsp?q=invalid userid and password");
            }
        }
        catch(Exception ex)
        {
            
        }
    }

    

}
