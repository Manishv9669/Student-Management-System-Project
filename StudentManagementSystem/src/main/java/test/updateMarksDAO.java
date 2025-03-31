package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class updateMarksDAO 
{
	public int k=0;
	public int update(StudentBean sb)
	{
		try
		{
			Connection con = DBConnection.getCon();
			
			PreparedStatement ps = con.prepareStatement("update marks71 set corejava=?, advjava=?, ui=?, db=?, tools=? where rollno=?");
			
			PreparedStatement ps2 = con.prepareStatement("update student71 set totalmarks=?, per=?, result=? where rollno=?");
			ps.setInt(1, sb.getMk().getCoreJava());
			ps.setInt(2, sb.getMk().getAdvJava());
			ps.setInt(3, sb.getMk().getUi());
			ps.setInt(4, sb.getMk().getDb());
			ps.setInt(5, sb.getMk().getTools());
			
			ps.setString(6, sb.getRollNo());
			k= ps.executeUpdate();
			
			ps2.setInt(1, sb.getTotMarks());
			ps2.setFloat(2, sb.getPer());
			ps2.setString(3, sb.getResult());
			
			ps2.setString(4, sb.getRollNo());
			ps2.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return k;
	}
}
