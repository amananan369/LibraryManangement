package com.LibraryManagement.Servlet;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LibraryManagement.Bean.LibrarianBean;
import com.LibraryManagement.Deo.LibrarianDao;

@WebServlet("/LibrarianLogin")
public class LibrarianLogin extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		if(LibrarianDao.authenticate(email, password)){
			LibrarianBean lb=new LibrarianBean();
			lb.setEmail(email);
			lb.setPassword(password);
			lb.setuPassword(password);
			HttpSession session=request.getSession();
			session.setAttribute("LibrarianSession",lb);
			response.sendRedirect("jsp/LibrarianLogedIn.jsp");
			
		}else{
	
		  response.sendRedirect("jsp/wrong.jsp");
			
		}
		
	
		
	}

}
