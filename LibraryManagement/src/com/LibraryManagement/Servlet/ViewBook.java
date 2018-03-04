package com.LibraryManagement.Servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LibraryManagement.Bean.BookBean;
import com.LibraryManagement.Deo.BookDao;

@WebServlet("/ViewBook")
public class ViewBook extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<BookBean> list=BookDao.view();
	    request.setAttribute("view",list);
		request.getRequestDispatcher("jsp/viewBook.jsp").forward(request, response);
		
	}
}
