
package com.example.student;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.FilterOperator;


import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

import java.io.*;

public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	   response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter(); 

	   DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		    String Name = request.getParameter("Name");
	    String RollNo = request.getParameter("RollNo");
	    String DOB = request.getParameter("DOB");
	
		Entity details = new Entity("StudentData");
			
			details.setProperty("Name",Name);
			details.setProperty("RollNo",RollNo);
			details.setProperty("DOB",DOB);
		
		    datastore.put(details);
	
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request,response);
	    response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter(); 
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		Query q = new Query("StudentData");
		PreparedQuery pq = datastore.prepare(q);
		
	   out.println("<!DOCTYPE html>");
	   out.println("<html>");
	  out.println("<head><marquee>Student Details</marquee></head>");
	  out.println("<body>");
	  out.println("<div style='margin-left:150px'>");
	out.println("<div style='margin-top:150px'>");
	 out.println("<p>");
	 out.println("<table style='background-color:#CCFF33'>");
	 out.println("<th>Student Name</th>");out.println("<th>Roll No#</th>");out.println("<th>D-O-B</th>");

	     for (Entity result : pq.asIterable()) {
		 
    		 String Name = (String) result.getProperty("Name");
		 String RollNo = (String) result.getProperty("RollNo");
		 String DOB = (String) result.getProperty("DOB");

	   	 out.println("<tr>");
	         out.print("<td>"+Name+"</td>");
	         out.print("<td>"+RollNo+"</td>");
	         out.print("<td>"+DOB+"</td>");
	         
	         out.println("</tr>");	
	     }   

	out.println("</table>");
	out.println("</p>");
	
	out.println("</div>");
	out.println("<div style='margin-left:160px'><a href='index.jsp'>Go Back</a></div>");
	out.println("</body>");
	out.println("</html>");
	}
	
}
