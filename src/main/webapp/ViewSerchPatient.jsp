<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 
  
 
  <tr>
  

    <th scope="col"  class="th">PatientId</th>
    <th scope="col"  class="th">name</th> 
     <th scope="col"  class="th">Address</th>
      <th scope="col"  class="th">contact</th>
     <th scope="col"  class="th">Age</th>
    <th scope="col"  class="th">Gender</th>
    <th scope="col"  class="th">Type</th>
    <th scope="col"  class="th">Category</th>
    <th scope="col"  class="th">AdmitDate</th>
    <th scope="col"  class="th">RecepId</th>
    <th scope="col"  class="th">Delete</th>
    <th scope="col"  class="th">Update</th> 
 
  </tr>
<c:forEach var="p" items="${b }">
<tr>
<td>${p.pid}</td>
<td>${p.name}</td>
<td>${p.address}</td>
<td>${p.contact}</td>
<td>${p.age}</td>
<td>${p.gender}</td>
<td>${p.type}</td>
<td>${p.category}</td>
<td>${p.pdate}</td>
<td>${p.rid}</td>
<td><a href='DelPatientt?did=${p.pid}'><ion-icon name="close-circle-outline" class="icon1"></ion-icon></a></td>
	   
<td><a href='updPatient?did=${p.pid }&name=${p.name }&contact=${p.contact }&category=${p.type }'><ion-icon name="sync-outline" class="icon1"></ion-icon></a></td>
	  
</tr>
</c:forEach>
 
</table>

 <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>