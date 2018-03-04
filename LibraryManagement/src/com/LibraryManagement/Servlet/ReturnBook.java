package com.LibraryManagement.Servlet;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LibraryManagement.Deo.BookDao;
@WebServlet("/ReturnBook")
public class ReturnBook extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String callno=request.getParameter("callno");
		String sstudentid=request.getParameter("studentid");
		int studentid=Integer.parseInt(sstudentid);
		
		int i=BookDao.returnBook(callno,studentid);
		if(i>0){
			request.setAttribute("msg", "Book returned successfully");
			request.getRequestDispatcher("jsp/returnbook.jsp").forward(request, response);
			
		}else{
			request.setAttribute("msg", "Some Technical Error occurr");
			request.getRequestDispatcher("jsp/returnbook.jsp").forward(request, response);

		}
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  response.sendRedirect("jsp/returnbook.jsp");
	}
}
