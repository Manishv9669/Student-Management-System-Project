package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/viewstu")
public class ViewStuDetailsServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession hs = req.getSession(false);
		if(hs == null)
		{
			req.setAttribute("msg", "Session Expired....");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			String rNo = req.getParameter("rollno");
			
			StudentBean sb = new ViewStuDetailsDAO().viewStuDetails(rNo);
			
			hs.setAttribute("stubean", sb);
			req.getRequestDispatcher("ViewStuDetails.jsp").forward(req, res);
		}
	}
}
