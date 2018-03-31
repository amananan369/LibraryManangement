package com.LibraryManagement.Deo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.LibraryManagement.Bean.StudentBean;
import com.LibraryManagement.Bean.UserBean;

public class UserDeo {
	static Connection currentCon = null;
	   static ResultSet rs = null;     
	   public static UserBean login(UserBean bean) {
	   
	      Statement stmt = null;    
	   
	      String username = bean.getUsername();    
	      String password = bean.getPassword();   
	      String dbname=null;
	      String dbpass=null;

	       
	   try 
	   {
	      currentCon = ConnectionManager.getConnection();
	      stmt=currentCon.createStatement();
	      rs = stmt.executeQuery("select * from admin");
	      while(rs.next()) {
	    	  dbname=rs.getString("username");
	    	  dbpass=rs.getString("password");
	      }
	      if(username.equals(dbname)&&password.equals(dbpass))
	          bean.valid=true;
	      else
	    	  bean.valid=false;
	   } 

	   catch (Exception ex) 
	   {
	      System.out.println("Log In failed: An Exception  occurred! " + ex);
	   } 
	   finally 
	   {
	      if (rs != null)   {
	         try {
	            rs.close();
	         } catch (Exception e) {}
	            rs = null;
	         }
	   
	      if (stmt != null) {
	         try {
	            stmt.close();
	         } catch (Exception e) {}
	            stmt = null;
	         }
	   
	      if (currentCon != null) {
	         try {
	            currentCon.close();
	         } catch (Exception e) {
	         }

	         currentCon = null;
	      }
	   }

	return bean;
	   
	   }
	public static List<StudentBean> ViewData(String data) {
		List<StudentBean> ls=new ArrayList<StudentBean>();
		 String sid=getCallId(data);
		try {
			Connection con=ConnectionManager.getConnection();
			String sql="select issuebook.SNAME,ebook.NAME,issuebook.ISSUEDDATE,issuebook.RETURNSTSTUS FROM ebook INNER JOIN issuebook ON issuebook.CALLNO=? and ebook.CALLNO=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,sid);
			ps.setString(2,sid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				StudentBean bean=new StudentBean();
				bean.setName(rs.getString(1));
				bean.setE_name(rs.getString(2));
				bean.setIssue(rs.getString(3));
				bean.setReturnStatus(rs.getString(4));
				ls.add(bean);
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		return ls;
	}
	private static String getCallId(String data) {
		String s=null;
		try {
		Connection con=ConnectionManager.getConnection();
		String sql="select CALLNO from issuebook where SID=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, data);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			 s=rs.getString(1);
			System.out.println(s);
			
		}
		}catch(Exception e) {System.out.print(e);}
		return s;
	}   

}
