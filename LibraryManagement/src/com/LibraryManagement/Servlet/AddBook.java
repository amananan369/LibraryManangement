package com.LibraryManagement.Servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LibraryManagement.Bean.BookBean;
import com.LibraryManagement.Deo.BookDao;
@WebServlet("/AddBook")
public class AddBook extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("jsp/addbookform.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String callno=request.getParameter("callno");
		String name=request.getParameter("name");
		String author=request.getParameter("author");
		String publisher=request.getParameter("publisher");
		String squantity=request.getParameter("quantity");
		int quantity=Integer.parseInt(squantity);
		BookBean bean=new BookBean(callno,name,author,publisher,quantity);
		int i=BookDao.save(bean);
		if(i>0){
			request.setAttribute("msg", "Book saved successfully");
			request.getRequestDispatcher("jsp/addbookform.jsp").forward(request, response);
		}else
		{
			request.setAttribute("msg", "Sorry for technical issue..");
			request.getRequestDispatcher("jsp/addbookform.jsp").forward(request, response);
		}
		
		

	}
	
}