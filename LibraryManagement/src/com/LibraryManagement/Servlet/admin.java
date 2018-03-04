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


import com.LibraryManagement.Bean.UserBean;

/**
 * Servlet Filter implementation class admin
 */
@WebFilter(filterName = "/admin", urlPatterns = {"/AddLibrarian","/ViewLibrarian","/EditLibrarian","/DeleteLibrarian","/Lock","/LogOut"})
public class admin implements Filter {

    /**
     * Default constructor. 
     */
    public admin() {
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
		// TODO Auto-generated method stub
     HttpSession session = ((HttpServletRequest) request).getSession();
     UserBean pass=(UserBean)session.getAttribute("currentSessionAdmin");
     HttpServletResponse res=(HttpServletResponse) response;
     if(pass==null)
     	res.sendRedirect("jsp/Change.jsp");
     else if(pass.getPasswordp()==null)
      	res.sendRedirect("jsp/Lock.jsp"); 
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
