package test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/update")
public class UpdateMarksServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired..."+"<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			@SuppressWarnings("unchecked")
			ArrayList<StudentBean> al = (ArrayList<StudentBean>)hs.getAttribute("alist");
			
			String rNo = req.getParameter("rollno");
			
			Iterator<StudentBean> it = al.iterator();
			
			while(it.hasNext())
			{
				StudentBean sb = (StudentBean)it.next();
				if(rNo.equals(sb.getRollNo()))
				{
					sb.getMk().setCoreJava(Integer.parseInt(req.getParameter("corejava")));
				
					sb.getMk().setAdvJava(Integer.parseInt(req.getParameter("advjava")));
					
					sb.getMk().setUi(Integer.parseInt(req.getParameter("ui")));
					
					sb.getMk().setDb(Integer.parseInt(req.getParameter("db")));
					
					sb.getMk().setTools(Integer.parseInt(req.getParameter("tools")));
					

					int totMarks = sb.getMk().getCoreJava()+sb.getMk().getAdvJava()+sb.getMk().getUi()+sb.getMk().getDb()+sb.getMk().getTools();
					
					float per = (float)totMarks/5;
					
					String result = null;
					
					if(per>=70 && per<=100) result = "A";
					else if(per>=60 && per<=70) result = "B";
					else if(per>=50 && per<=60) result = "C";
					else result = "D";
					
					sb.setTotMarks(totMarks);
					sb.setPer(per);
					sb.setResult(result);
					
					int k = new updateMarksDAO().update(sb);
					
					if(k>0)
					{
						req.setAttribute("msg", "Marks Updated...");
						req.getRequestDispatcher("UpdateMarks.jsp").forward(req, res);
						
					}
				}
				
			}
			
		}
	}
}
