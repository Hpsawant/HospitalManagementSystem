package org.hospital.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hospital.admin.model.*;
import org.hospital.admin.service.*;


/**
 * Servlet implementation class Doctorlogin
 */
@WebServlet("/doctorlogin")
public class Doctorlogin extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String u=request.getParameter("username");
		String p=request.getParameter("password");
		DoctorModel dmodel=new DoctorModel();
		 dmodel.setEmail(u);
		 dmodel.setContact(p);
		DoctorService ds=new DoctorServiceIMPL();
		  
		 int result=ds.getDoctor(dmodel);
		 System.out.println(result);
		  if(result==1)
		  {
			 RequestDispatcher r=request.getRequestDispatcher("SearchDoctor.jsp");
				 r.include(request, response);
		  }
		  else {
			  RequestDispatcher r=request.getRequestDispatcher("DoctorLoginPage.jsp");
				 r.include(request, response);
		  }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
