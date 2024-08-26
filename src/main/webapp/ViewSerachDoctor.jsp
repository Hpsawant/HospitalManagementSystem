<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="org.hospital.admin.model.*,org.hospital.admin.service.*,java.util.*" %>
<%--      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 --%><!DOCTYPE html>
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
 
  
 
  <tr>
  
 <th scope="col" class="th">Doctor Id</th>
  <th scope="col"  class="th">Name</th>
    <th scope="col"  class="th">Specialization</th>
    <th scope="col"  class="th">Contact</th>
     <th scope="col"  class="th">Email</th>
      <th scope="col"  class="th">Schedule</th>
      <th scope="col"  class="th">Delete</th>
  <th scope="col"  class="th">Update</th> 
 
  </tr>
<c:forEach var="e" items="${list }">
<tr>
<td>${e.did }</td>
<td>${e.name }</td>
<td>${e.specialization }</td>
<td>${e.contact }</td>
<td>${e.email }</td>
<td>${e.schedule }</td>
<td><a href='DelDoct?did=${e.did}'><ion-icon name="close-circle-outline" class="icon1"></ion-icon></a></td>
	   
<td><a href='updDoct?did=${e.did }&name=${e.name }&specialization=${e.specialization }&contact=${e.contact }&email=${e.email }&schedule=${e.schedule }'><ion-icon name="sync-outline" class="icon1"></ion-icon></a></td>
	  
</tr>
</c:forEach>
 
</table>

 <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>