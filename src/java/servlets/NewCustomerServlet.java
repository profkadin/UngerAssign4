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
            String url;
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String phoneNum = request.getParameter("phoneNumber");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipcode = request.getParameter("zipcode");
          
            String username = lastName + zipcode;
            String password = "welcome1";
            
            
            String message;
            if(firstName == null || lastName == null || email == null || phoneNum == null
                    || address == null || city == null || state == null || zipcode == null ||
                    firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()  || phoneNum.isEmpty() 
                    || address.isEmpty() || city.isEmpty()  || state.isEmpty()  || zipcode.isEmpty())
            {
                    message = "Please fill out all of the text boxes.";
                    url = "/New_customer.jsp";
            }
            else{
            User user = new User(firstName, lastName, email, phoneNum, address, city, state, zipcode, username, password);
            
            UserDB.insert(user);
            
            HttpSession session=request.getSession();
            session.setAttribute("user", user);
            message = "";
            url = "/Success.jsp";
            }
            
            request.setAttribute("message", message);
        //response.sendRedirect("Success.html");
           
            getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
}
