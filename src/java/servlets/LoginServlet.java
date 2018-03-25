package servlets;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import servlets.NewCustomerServlet;
import servlets.TransactionServlet;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                          throws ServletException, IOException 
    
    {
    
        String url = "/index.html";
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if (username.equals("jsmith@toba.com") && password.equals("letmein")){
            url = "/Account_activity.html";          
        }
        else{
            url = "/Login_failure.html";          
        }
             
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
                                        

