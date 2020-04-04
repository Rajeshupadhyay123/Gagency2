package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import conn.Myconn;
import dto.Register;

public class RegisterDao {
	private Connection con;
	public int registration(Register register)
	{
		int i=0;
		try{
			con=new Myconn().getMyConn();
			PreparedStatement ps=con.prepareStatement
("insert into registration(firstname,lastname,counum,mobile,email,address,password,aadhaarNum,age) values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, register.getFirstname());
			ps.setString(2, register.getLastname());
			ps.setString(3, register.getCounum());
			ps.setString(4, register.getMobile());
			ps.setString(5, register.getEmail());
			ps.setString(6, register.getAddress());
			ps.setString(7, register.getPassword());
			ps.setString(8, register.getAadhaarNum());
			ps.setString(9, register.getAge());
			i=ps.executeUpdate();
		}catch(Exception e)
		{
			
		}
		return i;
		
		
	}
	
}
