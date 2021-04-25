package com.projectexpo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Loginsignup
 */
@WebServlet("/Loginsignup")
public class Loginsignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginsignup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String form=request.getParameter("login");
		if(form.equals("login"))
		{
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
		
		if(form.equals("signup"))
		{
			request.getRequestDispatcher("signup.jsp").include(request, response);
		}
		
		if(form.equals("logout"))
		{
			HttpSession session =request.getSession();
			session.removeAttribute("name");
			session.invalidate();
			request.getRequestDispatcher("index.jsp").include(request, response);
		}
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
