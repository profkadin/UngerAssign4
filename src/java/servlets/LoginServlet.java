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
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (username.equals(user.getUserName()) && password.equals(user.getPassword())){
            url = "/account_activity.jsp";           
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
                                        

