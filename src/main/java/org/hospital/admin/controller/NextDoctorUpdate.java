package org.hospital.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NextDoctorUpdate
 */
@WebServlet("/updDoct")
public class NextDoctorUpdate extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int did=Integer.parseInt(request.getParameter("did"));
		String  name=request.getParameter("name");
		String specialization=request.getParameter("specialization");
		String contact=request.getParameter("contact");

		RequestDispatcher r=request.getRequestDispatcher("AdminDashBoard.jsp");
		r.include(request,response);
		out.println("<link href='CSS/Update-doctor.css' rel='stylesheet'>");
		out.println("<div class='col-md-8'>");
		out.println(" <form class='formfuel' name='frm' action='FinalUpd' method='Post'>");
		out.println("<h1>Update Fuel</h1>");
		out.println("<input type='hidden' value='"+did+"' class='form-control c' name='did'><br>");
		out.println("<input type='text' value='"+name+"' class='form-control c' name='name' placeholder='Enter doctor name'><br>");
		out.println("<input type='text' value='"+specialization+"' class='form-control c' name='specialization' placeholder='Enter doctor specialization'><br>");
		out.println("<input type='text' value='"+contact+"' class='form-control c' name='contact'  placeholder='Enter doctor contact'><br>");
		
		out.println("<button type='submit' name='s' class='btn bg-primary'>Update Doctor</button>");
		out.println("</div></div></div>");	
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
