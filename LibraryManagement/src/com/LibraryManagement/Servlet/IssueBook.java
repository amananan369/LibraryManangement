package com.LibraryManagement.Servlet;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LibraryManagement.Bean.IssueBookBean;
import com.LibraryManagement.Deo.BookDao;


@WebServlet("/IssueBook")
public class IssueBook extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String callno=request.getParameter("callno");
		String studentid=request.getParameter("studentid");
		String studentname=request.getParameter("studentname");
		String sstudentmobile=request.getParameter("studentmobile");
		long studentmobile=Long.parseLong(sstudentmobile);
		
		IssueBookBean bean=new IssueBookBean(callno,studentid,studentname,studentmobile);
		int i=BookDao.issueBook(bean);
		if(i>0){
			request.setAttribute("msg", "Book  issued successfully");
			request.getRequestDispatcher("jsp/issuebookform.jsp").forward(request, response);
			
		}else{
			request.setAttribute("msg","<h5>Sorry, unable to issue book.</h5>We may have sortage of books. Kindly visit later.");
			request.getRequestDispatcher("jsp/issuebookform.jsp").forward(request, response);
		}
		
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  response.sendRedirect("jsp/issuebookform.jsp");
	}
}
