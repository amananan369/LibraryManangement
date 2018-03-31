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
 * Servlet implementation class ULock
 */
@WebServlet("/ULock")
public class ULock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ULock() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		LibrarianBean lb=(LibrarianBean)session.getAttribute("LibrarianSession");
		lb.setPassword(null);
		response.sendRedirect("jsp/ULock.jsp");
		
	}

	

}
