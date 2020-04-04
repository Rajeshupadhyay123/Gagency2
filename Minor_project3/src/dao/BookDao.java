package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import conn.Myconn;
import dto.Book;

public class BookDao {
	
	private Connection con;
	public int book(Book b)
	{
		long millis=System.currentTimeMillis();  
		Date date=new Date(millis); 
		
		int i=0;
		try{
			con=new Myconn().getMyConn();
			PreparedStatement ps=con.prepareStatement("insert into  orderBeg(name,mobile,counum,address,cylweg,date) values(?,?,?,?,?,?)");
			ps.setString(1, b.getName());
			ps.setString(2, b.getMobile());
			ps.setString(3, b.getCounum());
			ps.setString(4, b.getAddress());
			ps.setString(5, b.getCylweg());
			ps.setDate(6, date);
		i=ps.executeUpdate();	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
	public int book_indian(Book b)
	{
		long millis=System.currentTimeMillis();  
		Date date=new Date(millis); 
		
		int i=0;
		try{
			con=new Myconn().getMyConn();
			PreparedStatement ps=con.prepareStatement("insert into  orderBeg_indian(name,mobile,counum,address,cylweg,date) values(?,?,?,?,?,?)");
			ps.setString(1, b.getName());
			ps.setString(2, b.getMobile());
			ps.setString(3, b.getCounum());
			ps.setString(4, b.getAddress());
			ps.setString(5, b.getCylweg());
			ps.setDate(6, date);
		i=ps.executeUpdate();	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
	public int book_bharat(Book b)
	{
		long millis=System.currentTimeMillis();  
		Date date=new Date(millis); 
		
		int i=0;
		try{
			con=new Myconn().getMyConn();
			PreparedStatement ps=con.prepareStatement("insert into  orderBeg_bharat(name,mobile,counum,address,cylweg,date) values(?,?,?,?,?,?)");
			ps.setString(1, b.getName());
			ps.setString(2, b.getMobile());
			ps.setString(3, b.getCounum());
			ps.setString(4, b.getAddress());
			ps.setString(5, b.getCylweg());
			ps.setDate(6, date);
		i=ps.executeUpdate();	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
	
	
	
}
