package com.projectexpo;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DeleteProject")
public class DeleteProject extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
   

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
      
       try{  
    	   String delpaper =request.getParameter("deletepapername");
      	
        	Class.forName("com.mysql.jdbc.Driver");  
			Connection conn=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/project_expo","root","root");    			
			
	     
			 String j1="DELETE from project WHERE Project_Name=?";
				PreparedStatement st=conn.prepareStatement(j1);
				st.setString(1,delpaper);
				
				st.executeUpdate();
			
			conn.close();  
			
			
//			System.out.println("Successfully Updated!");
		}catch(Exception e){ 
			
			System.out.println(e);}  


       response.sendRedirect("searchdeleteproject.jsp");
		
	}
        
        
        
      

 }