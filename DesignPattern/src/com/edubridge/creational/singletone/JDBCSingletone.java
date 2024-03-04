package com.edubridge.creational.singletone;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCSingletone {

	private static JDBCSingletone jdbc;
	private JDBCSingletone() {}
	public static JDBCSingletone getInstance()
	{
		if (jdbc == null)
		{
			jdbc = new JDBCSingletone();
		}
		return jdbc;
	}
	
	private static Connection getConnection() throws ClassNotFoundException, SQLException{
		
		Connection con = null;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/singletone", "root", "root");
		return con;
		
	}
	
	public int insert(String name, String pass, int id) throws SQLException {
		
		Connection c = null;
		PreparedStatement ps = null;
		int recordCounter = 0;
		
		try {
			c = this.getConnection();
			ps = c.prepareStatement("insert into employee(uid, uname, upass) values(?,?,?)");

			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, pass);
			
			recordCounter = ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(ps!= null)
			{
				ps.close();
			}
			if(c!= null)
			{
				c.close();
			}
		}
		
		
		return recordCounter;
		
	}
	
	public void view() throws SQLException {
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try
		{
			con = this.getConnection();
			ps = con.prepareStatement("select * from employee");
			
			rs = ps.executeQuery();
			
			while(rs.next())
			{
			System.out.println("ID "+rs.getInt(1)+ "\t Name = "+rs.getString(1)+ "\t Password = "+rs.getString(3));
			}
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			if(rs!= null)
			{
				rs.close();
			}
			if(ps!= null)
			{
				ps.close();
			}
			if(con!= null)
			{
				con.close();
			}
		
	}
	}
	
public int update(String name, String password, int id) throws SQLException {
		
		Connection c = null;
		PreparedStatement ps = null;
		int recordCounter = 0;
		
		try
		{
			c = this.getConnection();
			ps = c.prepareStatement("update employee set uname = ? , upass = ? where uid = ?");
			
			ps.setString(1, name);
			ps.setString(2, password);
			ps.setInt(3, id);
			
			recordCounter = ps.executeUpdate();
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(ps!= null)
			{
				ps.close();
			}
			if(c!= null)
			{
				c.close();
			}
	}
		return recordCounter;	
	}

public int delete(int userid) throws SQLException {
	
	Connection c = null;
	PreparedStatement ps = null;
	int recordCounter = 0;
	
	try
	{
		c = this.getConnection();
		ps = c.prepareStatement("delete from student where uid = ?'"+userid+"'");
		
		recordCounter = ps.executeUpdate();
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	finally
	{
		if(ps!= null)
		{
			ps.close();
		}
		if(c!= null)
		{
			c.close();
		}
}
	return recordCounter;
}

}
	




