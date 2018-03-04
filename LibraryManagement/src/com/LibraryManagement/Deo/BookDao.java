package com.LibraryManagement.Deo;
import com.LibraryManagement.Bean.BookBean;
import com.LibraryManagement.Bean.IssueBookBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class BookDao {

	public static int save(com.LibraryManagement.Bean.BookBean bean){
		int status=0;
		try{
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into ebook values(?,?,?,?,?,?)");
			ps.setString(1,bean.getCallno());
			ps.setString(2,bean.getName());
			ps.setString(3,bean.getAuthor());
			ps.setString(4,bean.getPublisher());
			ps.setInt(5,0);
			ps.setInt(6,bean.getQuantity());
			
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	public static List<BookBean> view(){
		List<BookBean> list=new ArrayList<BookBean>();
		try{
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from ebook");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				BookBean bean=new BookBean();
				bean.setCallno(rs.getString("callno"));
				bean.setName(rs.getString("name"));
				bean.setAuthor(rs.getString("author"));
				bean.setPublisher(rs.getString("publisher"));
				bean.setQuantity(rs.getInt("quantity"));
				bean.setIssued(rs.getInt("issued"));
				
				list.add(bean);
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return list;
	}
	public static int delete(String callno){
		int status=0;
		try{
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from ebook where callno=?");
			ps.setString(1,callno);
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	public static boolean checkIssue(String callno){
		boolean status=false;
		try{
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from ebook where callno=? and quantity>0");
			ps.setString(1,callno);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				status=true;
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	public static int issueBook(IssueBookBean bean){
		String callno=bean.getCallno();
		boolean checkstatus=checkIssue(callno);
		if(checkstatus){
			int status=0;
			try{
				Connection con=ConnectionManager.getConnection();
				PreparedStatement ps=con.prepareStatement("insert into issuebook values(?,?,?,?,?,?)");
				ps.setString(1,bean.getCallno());
				ps.setString(2,bean.getStudentid());
				ps.setString(3,bean.getStudentname());
				ps.setLong(4,bean.getStudentmobile());
				java.sql.Date currentDate=new java.sql.Date(System.currentTimeMillis());
				ps.setDate(5,currentDate);
				ps.setString(6,"no");
				
				status=ps.executeUpdate();
				if(status>0){
					PreparedStatement ps2=con.prepareStatement("UPDATE ebook SET Issued =issued +1, Quantity = Quantity-1 WHERE callno=?");
					ps2.setString(1,callno);
					status=ps2.executeUpdate();
				}
				con.close();
				
			}catch(Exception e){System.out.println(e);}
			
			return status;
		}else{
			return 0;
		}
	}
	public static int returnBook(String callno,int studentid){
		int status=0;
			try{
				Connection con=ConnectionManager.getConnection();
				PreparedStatement ps=con.prepareStatement("update issuebook set returnststus='yes' where callno=? and sid=?");
				ps.setString(1,callno);
				ps.setInt(2,studentid);
				
				status=ps.executeUpdate();
				if(status>0){
					
					PreparedStatement ps2=con.prepareStatement("update ebook set issued=issued-1 , quantity=quantity+1 where callno=?");
					ps2.setString(1,callno);
					status=ps2.executeUpdate();
				}
				con.close();
				
			}catch(Exception e){System.out.println(e);}
			
			return status;
	}
	public static List<IssueBookBean> viewIssuedBooks(){
		List<IssueBookBean> list=new ArrayList<IssueBookBean>();
		try{
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from issuebook order by issueddate desc");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				IssueBookBean bean=new IssueBookBean();
				bean.setCallno(rs.getString("callno"));
				bean.setStudentid(rs.getString("sid"));
				bean.setStudentname(rs.getString("sname"));
				bean.setStudentmobile(rs.getLong("smobile"));
				bean.setIssueddate(rs.getDate("issueddate"));
				bean.setReturnstatus(rs.getString("returnststus"));
				list.add(bean);
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return list;
	
	}}
