package com.LibraryManagement.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LibraryManagement.Bean.UserBean;

/**
 * Servlet implementation class CLock
 */
@WebServlet("/CLock")
public class CLock extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String pas=request.getParameter("pw");
	HttpSession session=request.getSession(false);
	UserBean data=(UserBean)session.getAttribute("currentSessionAdmin");
	try {
	if(data.getPassword().equals(pas)) {
		data.setPasswordp(pas);
		response.sendRedirect("jsp/AdminLogged.jsp"); }
	else
		response.sendRedirect("jsp/Lock.jsp");
	}catch(Exception e) {response.sendRedirect("jsp/Change.jsp");}
}
}