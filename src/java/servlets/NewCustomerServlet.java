package servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import servlets.NewCustomerServlet;
import servlets.TransactionServlet;

public class NewCustomerServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                          throws ServletException, IOException 
    {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String phoneNum = request.getParameter("phoneNumber");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipcode = request.getParameter("zipcode");

        response.sendRedirect("Success.html");


    }
}
