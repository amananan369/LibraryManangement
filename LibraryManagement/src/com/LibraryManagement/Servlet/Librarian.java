package com.LibraryManagement.Servlet;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LibraryManagement.Bean.LibrarianBean;

/**
 * Servlet Filter implementation class Librarian
 */
@WebFilter(filterName="Librarian" , urlPatterns= {"/ViewBook","/AddBook","/DeleteBook","/IssueBook","/ULock","/ViewIssuedBook","/ReturnBook"})
public class Librarian implements Filter {

    /**
     * Default constructor. 
     */
    public Librarian() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session=((HttpServletRequest) request).getSession();
       LibrarianBean data=(LibrarianBean)session.getAttribute("LibrarianSession");
        HttpServletResponse res=(HttpServletResponse) response;
        if(data==null) 
        	res.sendRedirect("jsp/Librarian.jsp");
        else if(data.getPassword()==null)
            res.sendRedirect("jsp/ULock.jsp");
        else
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
