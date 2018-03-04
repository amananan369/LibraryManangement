package com.LibraryManagement.Servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LibraryManagement.Bean.IssueBookBean;
import com.LibraryManagement.Deo.BookDao;

@WebServlet("/ViewIssuedBook")
public class ViewIssuedBook extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<IssueBookBean> list=BookDao.viewIssuedBooks();
	    request.setAttribute("view",list);
		request.getRequestDispatcher("jsp/ViewIssuedBook.jsp").forward(request, response);
		
	}
}
