package org.hospital.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updPatient")
public class UpdatePatient extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int pid=Integer.parseInt(request.getParameter("pid"));
		String  name=request.getParameter("name");
		String address=request.getParameter("address");
		String contact=request.getParameter("contact");
		
		RequestDispatcher r=request.getRequestDispatcher("AdminDashBoard.jsp");
		r.include(request,response);
		out.println("<link href='CSS/Update-doctor.css' rel='stylesheet'>");
		out.println("<div class='col-md-8'>");
		out.println(" <form class='formfuel' name='frm' action='FinalUpdP' method='Post'>");
		out.println("<h1>Update Patient</h1>");
		out.println("<input type='hidden' value='"+pid+"' class='form-control c' name='pid'><br>");
		out.println("<input type='text' value='"+name+"' class='form-control c' name='name' placeholder='Enter doctor name'><br>");
		out.println("<input type='text' value='"+contact+"' class='form-control c' name='contact' placeholder='Enter patient contact'><br>");
		out.println("<input type='text' value='"+address+"' class='form-control c' name='address'  placeholder='Enter patient address'><br>");
		
		out.println("<button type='submit' name='s' class='btn bg-primary'>Update Patient</button>");
		out.println("</div></div></div>");	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
