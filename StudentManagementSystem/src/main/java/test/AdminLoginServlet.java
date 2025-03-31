package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/admin")
public class AdminLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String uN = req.getParameter("uname");
		String pW = req.getParameter("pword");
		
		AdminBean ab = new AdminLoginDAO().login(uN, pW);
		
		if(ab==null)
		{
			req.setAttribute("msg", "Invalid Login process...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		
		else
		{
			HttpSession hs = req.getSession();//Creating new Session
			hs.setAttribute("abean", ab); //AdminBean is added to Session
			req.getRequestDispatcher("AdminLoginSuccess.jsp").forward(req, res);
			
		}
			
	}
}
