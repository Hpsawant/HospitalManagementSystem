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
<h1>Receptionist Details</h1>
  <table class="table">
 
  <thead>
  <tr>
 <th scope="col" class="th">Sr.No</th>
 <th scope="col"  class="th">Recep Id</th> 
  <th scope="col"  class="th">name</th> 
  <th scope="col"  class="th">Delete</th>
  <th scope="col"  class="th">Update</th> 
  </tr>
  
  </thead>
 <tbody>
  <%
  RecepService rs=new RecepServiceIMPL();
  List<RecepModel> list=rs.getAllRecep();
  int count=0;
  for(RecepModel r:list)
   {
	 %>
	   <tr>
	   <th scope="row"><%=++count%></th>
	   <td><%=r.getRid()%></td>
	   <td><%=r.getName()%></td>
	   
	   
	   <td><a href='DelRecep?rid=<%=r.getRid()%>'><ion-icon name="close-circle-outline" class="icon1"></ion-icon></a></td>
	   
	   <td><a href='updRecep?rid=<%=r.getRid() %>&name=<%=r.getName()%>'><ion-icon name="sync-outline" class="icon1"></ion-icon></a></td>
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