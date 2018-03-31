package com.LibraryManagement.Servlet;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.LibraryManagement.Bean.StudentBean;
import com.LibraryManagement.Deo.UserDeo;

@WebServlet("/Student")
public class Student extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Student() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Writer out=response.getWriter();
		String sid=request.getParameter("sid");
		List<StudentBean> ls=UserDeo.ViewData(sid);	
		if(ls.isEmpty()) {
			out.write("<div class='panel panel-primary'><div class='panel-heading'><h4 align='center'>Data Not Found</h3></div></div>");
		
	}else {
		out.write("<div class='panel panel-primary'><div class='panel-body'><div class='table-responsive'><table class='table'><thead><tr><th>Name</th><th>Book</th><th>Issued Date</th><th>Return Status</th></tr></thead>");
		out.write("<tbody>");
		 for(StudentBean bean:ls){
			out.write("<tr><td>"+bean.getName()+"</td><td>"+bean.getE_name()+"</td><td>"+bean.getIssue()+"</td><td>"+bean.getReturnStatus()+"</td></tr>");
		}
		 out.write("</tbody>");
		 out.write("</table></div></div>");
	}
		out.close();
	}

}
