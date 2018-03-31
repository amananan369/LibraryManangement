package com.LibraryManagement.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LibraryManagement.Bean.LibrarianBean;

/**
 * Servlet implementation class UCLock
 */
@WebServlet("/UCLock")
public class UCLock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pas=request.getParameter("pw");
		HttpSession session=request.getSession(false);
		LibrarianBean data=(LibrarianBean) session.getAttribute("LibrarianSession");
		
		try {
		if(data.getuPassword().equals(pas)) {
			data.setPassword(pas);
			response.sendRedirect("jsp/LibrarianLogedIn.jsp"); }
		else
			response.sendRedirect("jsp/ULock.jsp");
		}catch(Exception e) {response.sendRedirect("jsp/Librarian.jsp");}
	}

}
