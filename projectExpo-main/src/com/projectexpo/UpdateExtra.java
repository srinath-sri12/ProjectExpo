package com.projectexpo;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/UpdateExtra")
public class UpdateExtra extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
   

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
       
	      
       try{  
    	   String upextra =request.getParameter("updateextraname");
      	 String name =request.getParameter("name");
      	 String roll = request.getParameter("roll");
  	        String dept = request.getParameter("dept");
  	        
  	        String eventname= request.getParameter("eventname");
  	        String eventplace= request.getParameter("place");
  	        String eventdate= request.getParameter("date");
  	        String prize= request.getParameter("prize");
  	        
        	Class.forName("com.mysql.jdbc.Driver");  
			Connection conn=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/project_expo","root","root");    			
			
			 if(name.length()>0)
			 {
				 String j1="UPDATE extra SET Student_Name=? WHERE Activity_Name=?";
			PreparedStatement st=conn.prepareStatement(j1);
			st.setString(1,name);
			st.setString(2,upextra);
			st.executeUpdate();
			 }
	 		
			 if(roll.length()>0)
			 {String j1="UPDATE extra SET Roll_Number=? WHERE Activity_Name=?";
			PreparedStatement st=conn.prepareStatement(j1);
			st.setString(1,roll);
			st.setString(2,upextra);
			st.executeUpdate();
			 }
			 if(!dept.equals("select"))
			 {
				 String j1="UPDATE extra SET Department=? WHERE Activity_Name=?";
					PreparedStatement st=conn.prepareStatement(j1);
					st.setString(1,dept);
					st.setString(2,upextra);
					st.executeUpdate();
			 }
			
			 if(eventname.length()>0)
			 {
				 String j1="UPDATE extra SET Event_Name=? WHERE Activity_Name=?";
					PreparedStatement st=conn.prepareStatement(j1);
					st.setString(1,eventname);
					st.setString(2,upextra);
					st.executeUpdate();
			 }
			 if(eventplace.length()>0)
			 {
				 String j1="UPDATE extra SET Presented_Place=? WHERE Activity_Name=?";
					PreparedStatement st=conn.prepareStatement(j1);
					st.setString(1,eventplace);
					st.setString(2,upextra);
					st.executeUpdate();
			 }
			 if(eventdate.length()>0)
			 {
				 String j1="UPDATE extra SET Event_Date=? WHERE Activity_Name=?";
					PreparedStatement st=conn.prepareStatement(j1);
					st.setString(1,eventdate);
					st.setString(2,upextra);
					st.executeUpdate();
			 }
			 if(!prize.equals("select"))
			 {
				 String j1="UPDATE extra SET Prize_Won=? WHERE Activity_Name=?";
					PreparedStatement st=conn.prepareStatement(j1);
					st.setString(1,prize);
					st.setString(2,upextra);
					st.executeUpdate();
			 }
	      
	     
			 if(upextra.length()>0)
	        	  System.out.println(upextra);
	        else
	        	System.out.println("NO");
	        if(name.length()>0)
	        	  System.out.println(name);
	        else
	        	System.out.println("NO");
	      
	        if(roll.length()>0)
	        	  System.out.println(roll);
	        else
	        	System.out.println("NO");
	        
	        if(dept.equals("select"))
	        	  System.out.println("No");
	        else
	        	System.out.println(dept);
			
			conn.close();  
			
			
			//System.out.println("Successfully Updated!");
		}catch(Exception e){ 
			
			System.out.println(e);}  


       response.sendRedirect("searchextra.jsp");
		
	}
}
   
        
        
        
      
