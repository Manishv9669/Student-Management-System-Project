package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ViewStuDetailsDAO 
{
	public StudentBean sb = null;
	public MarksBean mb = null;
	public StudentBean viewStuDetails(String rNo)
	{
		try
		{
			Connection con = DBConnection.getCon();
			
			PreparedStatement ps1 = con.prepareStatement("Select * from Student71 where rollno=?");	
			PreparedStatement ps2 = con.prepareStatement("Select * from Marks71 where rollno=?");
			
			ps1.setString(1, rNo);
			ps2.setString(1, rNo);
			
			ResultSet rs1 = ps1.executeQuery();
			if(rs1.next())
			{
				sb = new StudentBean();
				
				sb.setRollNo(rs1.getString(1));
				sb.setName(rs1.getString(2));
				sb.setCourse(rs1.getString(3));
				sb.setTotMarks(rs1.getInt(4));
				sb.setPer(rs1.getFloat(5));
				sb.setResult(rs1.getString(6));
				
			}
			
			ResultSet rs2 = ps2.executeQuery();
			if(rs2.next() && sb!=null)
			{
				mb = new MarksBean();
				
				mb.setCoreJava(rs2.getInt(2));
				mb.setAdvJava(rs2.getInt(3));
				mb.setUi(rs2.getInt(4));
				mb.setDb(rs2.getInt(5));
				mb.setTools(rs2.getInt(6));
			}
			sb.setMk(mb);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return sb;
	}
}
