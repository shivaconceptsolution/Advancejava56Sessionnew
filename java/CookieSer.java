/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hp
 */
public class CookieSer extends HttpServlet {

   

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        if(request.getParameter("btnsubmit1")!=null)
        {
       Cookie ref = new Cookie("uname",request.getParameter("txtuser"));
       ref.setMaxAge(1000);
       response.addCookie(ref);
       
        }
        else
        {
            
            Cookie c[] = request.getCookies();
            for(int i=0;i<c.length;i++)
            {
                if(c[i].getName().equals("uname"))
                {
                   out.print(c[i].getValue());
                }
            }
        }
    }

}
