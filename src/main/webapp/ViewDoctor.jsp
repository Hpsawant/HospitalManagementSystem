<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="org.hospital.admin.model.*,org.hospital.admin.service.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/View-doctor.css" rel="stylesheet">
</head>
<body>
<%@include file="AdminDashBoard.jsp" %>
<div class="col-md-8 content">
<h1>Doctor Details</h1>
  <table class="table">
 
  <thead>
  <tr>
  <th scope="col" class="th">Sr.No</th>
 <th scope="col" class="th">Doctor Id</th>
  <th scope="col"  class="th">name</th> 
  <th scope="col"  class="th">Specialization</th>
    <th scope="col"  class="th">contact</th>
     <th scope="col"  class="th">Email</th>
     <th scope="col"  class="th">Schedule</th>
  <th scope="col"  class="th">Delete</th>
  <th scope="col"  class="th">Update</th> 
  </tr>
  </thead>
 <tbody>
  <%
  DoctorService ds=new DoctorServiceIMPL();
  List<DoctorModel> list=ds.getAllDoctor();
  int count=0;
  for(DoctorModel d:list)
   {
	 %>
	   <tr>
	   <th scope="row"><%=++count%></th>
	   <td><%=d.getDid()%></td>
	   <td><%=d.getName()%></td>
	   <td><%=d.getSpecialization()%></td>
	   <td><%=d.getContact() %></td>
	   <td><%=d.getEmail() %></td>
	   <td><%=d.getSchedule() %></td>
	   
	   
	   <td><a href='DelDoct?did=<%=d.getDid()%>'><ion-icon name="close-circle-outline" class="icon1"></ion-icon></a></td>
	   
	   <td><a href='updDoct?did=<%=d.getDid() %>&name=<%=d.getName()%>&contact=<%=d.getContact()%>&specialization=<%=d.getSpecialization()%>'><ion-icon name="sync-outline" class="icon1"></ion-icon></a></td>
	   </tr>
	 <%  
   }
  
  %>
  </tbody>
  </table>

</div>
</div>
</div>

 <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>