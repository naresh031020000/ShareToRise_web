package com.fssa.sharetorise.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.sharetorise.exceptions.ServiceException;
import com.fssa.sharetorise.model.User;
import com.fssa.sharetorise.service.UserService;


/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		  // Retrieve parameters for all the attributes using their names
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String email = request.getParameter("email");
        Long phoneNumber = Long.parseLong(request.getParameter("phone_number")) ;
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");
        
        
        User user = new User();
        
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setPhoneNumber(phoneNumber);
        user.setPassword(password);
        user.setConfirmPassword(confirmPassword);
        
        
    	UserService userService = new UserService(); 
    	
    	try {
    		
    		
    		userService.addUser(user);
    		
    		response.sendRedirect(request.getContextPath()+"/login.jsp");
    		System.out.println("user registered successfully");

    	}
    	catch(ServiceException e) {
    		
    		request.setAttribute("error", e.getMessage());
    		request.setAttribute("path", "./register.jsp");
    		request.getRequestDispatcher("register.jsp").forward(request, response);
    		
    		System.out.println(e.getMessage());
    		e.printStackTrace();
    		response.sendRedirect(request.getContextPath()+"/register.jsp");

    	}

        
        
	}

}
  