package com.LibraryManagement.Servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LibraryManagement.Bean.LibrarianBean;
import com.LibraryManagement.Deo.LibrarianDao;

@WebServlet("/AddLibrarian")
public class AddLibrarian extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String smobile=request.getParameter("mobile");
		long mobile=Long.parseLong(smobile);
		LibrarianBean bean=new LibrarianBean(name, email, password, mobile);
		boolean check=LibrarianDao.exist(email);
		if(check) {
			request.setAttribute("msg", "Librarian already exist");
			request.getRequestDispatcher("jsp/addlibrarianform.jsp").forward(request, response);
		}else {
		int a=LibrarianDao.save(bean);
		if(a!=0) {
			request.setAttribute("msg","Librarian added Successfully...");
			request.getRequestDispatcher("jsp/addlibrarianform.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("msg","sorry some problem occurred");
			request.getRequestDispatcher("jsp/addlibrarianform.jsp").forward(request, response);
			
	}}

}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  response.sendRedirect("jsp/addlibrarianform.jsp");
	}}
