<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/DoctorForm.css" rel="stylesheet">
</head>
<body>
<%@include file="AdminDashBoard.jsp" %>

<div class="col-md-8 content">

   <form class="formarea" name="frm" action="IPDBill" method="Post">
  <div class="form-group ">
  <lable for="doctorcode">Doctor Fees</lable><br>
  <input type="text"class="form-control control" name="name" id="machinecode" placeholder="enter doctor Fees"><br>
  
   <lable for="doctorcode">Bill Date</lable><br>
  <input type="date"class="form-control control" name="contact" id="machinecode" placeholder=""><br>
  
 </div>
  <button type="submit" class="btn bg-primary">Submit</button><br>
   
   </form>
        
        
        
        
        
        </div>
        
        </div>
     
     
     </div>
</body>
</html>