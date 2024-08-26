<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/Patient-form.css" rel="stylesheet">
</head>
<body>
<%@include file="AdminDashBoard.jsp" %>
<div class="col-md-8 content">
   <form class="formarea" name="frm" action="patientInfo" method="Post">
  <div class="form-group ">
  <lable for="patient">patient Name</lable>
  <input type="text"class="form-control control" name="name" id="machinecode" placeholder="enter patient name as Ram">
  
  
  <lable for="patient">patient Address</lable><br>
  <input type="text"class="form-control control" name="address" id="machinecode" placeholder="enter patient address as Pune">
   <lable for="patient">patient Contact</lable>
  <input type="text"class="form-control control" name="contact" id="machinecode" placeholder="enter patient contact as 7769880878">
   
   <lable for="patient">patient Age</lable><br>
  <input type="text"class="form-control control" name="age" id="machinecode" placeholder="enter patient age as 10">
   
   <lable for="patient">patient Gender</lable>
   <select class="form-control control" name="gender" id="machinecode" >
   <option>Female</option>
   <option>Male</option>
   </select>
  <lable for="patient">patient Category</lable>
  <input type="text"class="form-control control" name="category" id="machinecode" placeholder="enter patient type as Ortho">
 
  <lable for="patient">patient Email</lable>
   <input type="email"class="form-control control" name="email" id="machinecode" placeholder="enter patient type as ram@12gmail.com">

  </div>
  <button type="submit" class="btn bg-primary">Add New patient</button><br>
   
   </form>
        
        
        
        
        
        </div>
        
        </div>
     
     
     </div>
</body>
</html>