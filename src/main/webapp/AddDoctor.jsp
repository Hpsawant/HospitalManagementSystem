<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/Doctor-form.css" rel="stylesheet">

</head>
<body>
<%@include file="AdminDashBoard.jsp" %>

<div class="col-md-8 content">

   <form class="formarea" name="frm" action="addDoctor" method="Post">
  <div class="form-group">
  <lable for="doctorcode">Doctor Name</lable><br>
  <input type="text"class="form-control control" name="name" id="machinecode" placeholder="enter doctor name"><br>
 <lable for="doctorcode">Doctor specialization</lable><br>
  <input type="text"class="form-control control" name="specialization" id="machinecode" placeholder="enter doctor type "><br>
   <lable for="doctorcode">Doctor Contact</lable><br>
  <input type="text"class="form-control control" name="contact" id="machinecode" placeholder="enter doctor contact"><br>
   <lable for="doctorcode">Doctor Email</lable><br>
  <input type="Email"class="form-control control" name="Email" id="machinecode" placeholder="enter doctor contact"><br>
   <lable for="doctorcode">Doctor Schedule</lable><br>
  <input type="time"class="form-control control" name="schedule" id="machinecode" placeholder="enter doctor contact"><br>
  
 
  </div>
  <button type="submit" class="btn bg-primary">Submit</button><br>
   
   </form>
        </div>
        </div>
     </div>
</body>
</html>