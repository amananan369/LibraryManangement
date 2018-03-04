package com.LibraryManagement.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LibraryManagement.Bean.UserBean;
import com.LibraryManagement.Deo.UserDeo;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{       

		     UserBean user = new UserBean();
		     user.setUserName(request.getParameter("un"));
		     user.setPassword(request.getParameter("pw"));
		     user = UserDeo.login(user);
		                
		     if (user.isValid())
		     {
		           
		          HttpSession session = request.getSession(true);       
		          session.setAttribute("currentSessionAdmin",user); 
		          response.sendRedirect("jsp/AdminLogged.jsp");           
		     }
		           
		     else 
		    	 
		          response.sendRedirect("jsp/Sorry.jsp"); 
		} 
		      
		      
		catch (Throwable theException)        
		{
		     System.out.println(theException); 
		}
		       }
	}


