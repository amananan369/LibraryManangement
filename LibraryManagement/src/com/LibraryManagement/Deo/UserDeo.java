package com.LibraryManagement.Deo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

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

}
