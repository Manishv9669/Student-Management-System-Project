package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/studentlogin")
public class StudentLoginServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String rNo = req.getParameter("rollno");
		
		StudentBean sb = new StudentLoginDAO().stuLogin(rNo);
		
		if(sb==null)
		{
			req.setAttribute("msg", "Invalid RollNo...");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			HttpSession hs = req.getSession();
			hs.setAttribute("sbean", sb);
			req.getRequestDispatcher("StudentLogin.jsp").forward(req, res);
		}
	}
}
