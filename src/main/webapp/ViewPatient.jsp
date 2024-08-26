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
<h1>Patient Details</h1>
  <table class="table">
 
  <thead>
  <tr>
    <th scope="col" class="th">Sr.No</th>
    <th scope="col"  class="th">name</th> 
     <th scope="col"  class="th">Address</th>
    <th scope="col"  class="th">contact</th>
     <th scope="col"  class="th">Age</th>
    <th scope="col"  class="th">Gender</th>
    <th scope="col"  class="th">Category</th>
    <th scope="col"  class="th">Email</th>
    <th scope="col"  class="th">Doctor Name</th>
    <th scope="col"  class="th">Delete</th>
    <th scope="col"  class="th">Update</th> 
  </tr>
  
  </thead>
 <tbody>
  <%!
  PatientService ps=new PatientServiceIMPL();%>
  <% 
  List<Object[]> list=ps.getAllPatient();
  int count=0;
  for(Object obj[]:list)
   {
	 %>
	   <tr>
	   <td scope="row"><%=++count%></td>
	   <td><%=obj[0]%></td>
	   <td><%=obj[1]%></td>
	   <td><%=obj[2]%></td>
	   <td><%=obj[3] %></td>
	   <td><%=obj[4] %></td>
	   <td><%=obj[5] %></td>
	   <td><%=obj[6] %></td>
	   <td><%=obj[7]%></td>
	   <td><a href='DelPatient?pid=<%=obj[8]%>'><ion-icon name="close-circle-outline" class="icon1"></ion-icon></a></td>
	   
	   <td><a href='updPatient?pid=<%=obj[8] %>&name=<%=obj[0]%>&address=<%=obj[1] %>&contact=<%=obj[2]%>'><ion-icon name="sync-outline" class="icon1"></ion-icon></a></td>
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