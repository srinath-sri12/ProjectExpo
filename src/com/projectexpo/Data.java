package com.projectexpo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Data
 */
@WebServlet("/Data")
public class Data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Data() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String uname=request.getParameter("dname");
        String umobile=request.getParameter("dmobile");
        String udept=request.getParameter("ddept");
        String uarea=request.getParameter("darea");
        String ucode=request.getParameter("dcode");
        String upass=request.getParameter("dpass");
        
        if(ucode.equals("1234"))
        {
        	
        
        try
        {	
    		 String driver = "com.mysql.jdbc.Driver";
             String url = "jdbc:mysql://localhost:3306/project_expo";
             String username ="root";
             String password ="root";
    		
	       	 Class.forName(driver);
	       	 Connection con = DriverManager.getConnection(url,username,password);
	       	 PreparedStatement ps=con.prepareStatement("insert into signup(mname,mmobile,mdept,marea,mpass) values(?,?,?,?,?)");
	    		
	       	 ps.setString(1,uname);
	       	 ps.setString(2,umobile);
	       	 ps.setString(3,udept);
	       	 ps.setString(4,uarea);
	       	 ps.setString(5,upass);
        	
	       	 int i=ps.executeUpdate();
	       	 	
    	}
        catch(ClassNotFoundException ex)
        {
            System.out.println(ex);
        }
		catch (Exception e2) 
		{
			System.out.println(e2);
		}		
		
		
		HttpSession session=request.getSession();  
        session.setAttribute("name","admin");  
        request.getRequestDispatcher("index.jsp").include(request, response);
	}
	
	else{
		
		request.getRequestDispatcher("signup.jsp").include(request, response);
	}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
