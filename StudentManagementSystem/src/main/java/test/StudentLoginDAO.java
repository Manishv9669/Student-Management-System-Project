package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StudentLoginDAO 
{
	public StudentBean sb = null;
	
	public StudentBean stuLogin(String rNO)
	{
		try
		{
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("Select * from Student71 where rollno=?");
			
			ps.setString(1, rNO);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				sb = new StudentBean();
				
				sb.setRollNo(rs.getString(1));
				sb.setName(rs.getString(2));
				sb.setCourse(rs.getString(3));
				sb.setTotMarks(rs.getInt(4));
				sb.setPer(rs.getFloat(5));
				sb.setResult(rs.getString(6));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return sb;
	}
}
