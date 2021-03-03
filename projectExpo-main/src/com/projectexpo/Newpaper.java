package com.projectexpo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class Newpaper
 */
@WebServlet("/Newpaper")
public class Newpaper extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Newpaper() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String wname=request.getParameter("pname");
		String wroll=request.getParameter("proll");
		String wdept=request.getParameter("pdept");
		String wpaper=request.getParameter("ppaper");
		String weventname=request.getParameter("peventname");
		String wplace=request.getParameter("pplace");
		String wdate=request.getParameter("pdate");
		String wprize=request.getParameter("pprize");
		String type = request.getParameter("paper");

		/*
		out.println(wname);
		out.println(wroll);
		out.println(wdept);
		out.println(wpaper);
		out.println(weventname);
		out.println(wplace);
		out.println(wdate);
		out.println(wprize);
		 */
		if(type.equals("paper"))
		{
			try
			{	
				String driver = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/project_expo";
				String username ="root";
				String password ="root";

				Class.forName(driver);
				Connection con = DriverManager.getConnection(url,username,password);
				PreparedStatement ps=con.prepareStatement("insert into paper(Student_Name,Roll_Number,Department,Paper_Name,Event_Name,Presented_Place,Event_Date,Prize_Won) values(?,?,?,?,?,?,?,?)");

				ps.setString(1,wname);
				ps.setString(2,wroll);
				ps.setString(3,wdept);
				ps.setString(4,wpaper);
				ps.setString(5,weventname);
				ps.setString(6,wplace);
				ps.setString(7,wdate);
				ps.setString(8,wprize);


				int i=ps.executeUpdate();

				request.getRequestDispatcher("addpaper.jsp").include(request, response);
			}
			catch(ClassNotFoundException ex)
			{
				System.out.println(ex);
			}
			catch (Exception e2) 
			{
				System.out.println(e2);
			}		
			out.close();
		}

		else if(type.equals("project"))
		{
			try
			{	
				String driver = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/project_expo";
				String username ="root";
				String password ="root";

				Class.forName(driver);
				Connection con = DriverManager.getConnection(url,username,password);
				PreparedStatement ps=con.prepareStatement("insert into project(Student_Name,Roll_Number,Department,Project_Name,Event_Name,Presented_Place,Event_Date,Prize_Won) values(?,?,?,?,?,?,?,?)");

				ps.setString(1,wname);
				ps.setString(2,wroll);
				ps.setString(3,wdept);
				ps.setString(4,wpaper);
				ps.setString(5,weventname);
				ps.setString(6,wplace);
				ps.setString(7,wdate);
				ps.setString(8,wprize);


				int i=ps.executeUpdate();

				request.getRequestDispatcher("addproject.jsp").include(request, response);
			}
			catch(ClassNotFoundException ex)
			{
				System.out.println(ex);
			}
			catch (Exception e2) 
			{
				System.out.println(e2);
			}		
			out.close();	

		}

		else{
			
			try
			{	
				String driver = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/project_expo";
				String username ="root";
				String password ="root";

				Class.forName(driver);
				Connection con = DriverManager.getConnection(url,username,password);
				PreparedStatement ps=con.prepareStatement("insert into extra(Student_Name,Roll_Number,Department,Activity_Name,Event_Name,Presented_Place,Event_Date,Prize_Won) values(?,?,?,?,?,?,?,?)");

				ps.setString(1,wname);
				ps.setString(2,wroll);
				ps.setString(3,wdept);
				ps.setString(4,wpaper);
				ps.setString(5,weventname);
				ps.setString(6,wplace);
				ps.setString(7,wdate);
				ps.setString(8,wprize);


				int i=ps.executeUpdate();
		
				request.getRequestDispatcher("addextra.jsp").include(request, response);
			}
			catch(ClassNotFoundException ex)
			{
				System.out.println(ex);
			}
			catch (Exception e2) 
			{
				System.out.println(e2);
			}		
			out.close();	


		}
	}



}