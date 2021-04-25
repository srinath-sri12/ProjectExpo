package com.projectexpo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Servlet implementation class Passverify
 */
@WebServlet("/Passverify")
public class Passverify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Passverify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uname=request.getParameter("uname");
		String upass=request.getParameter("upass");
		String pass = null;
		
		System.out.println(uname);
		System.out.println(upass);
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/project_expo","root","root");  

			PreparedStatement ps=con.prepareStatement("select mpass from signup where mname=?");  
            ps.setString(1,uname);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
               pass = rs.getString(1);  
            }  
			
			con.close();  
		}catch(Exception e){ 

			System.out.println(e);}  
		
		if(upass.equals(pass))
		{
			HttpSession session=request.getSession();  
	        session.setAttribute("name",uname);  
	        request.getRequestDispatcher("welcome.jsp").include(request, response);
		}
		else
		{
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
	
		System.out.println(pass);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String test = request.getReader().lines().collect(Collectors.joining());
//		System.out.println(test);
//		ObjectMapper objectMapper = new ObjectMapper();
//
//		Map<String, Object> map = objectMapper.readValue(test,Map.class);
//		String name = (String) map.get("uname");
//		String pass= (String) map.get("upass");
//		
//		System.out.println(name);
//		System.out.println(pass);
//		
		doGet(request, response);
	}

}
