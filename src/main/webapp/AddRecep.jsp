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

   <form class="formarea" name="frm" action="AddRecep" method="Post">
  <div class="form-group ">
  <lable for="doctorcode">Receptionist Name</lable><br>
  <input type="text"class="form-control control" name="name" id="machinecode" placeholder="enter recep name"><br>
  
  </div>
  <button type="submit" class="btn bg-primary">Submit</button><br>
   
   </form>
        </div>
        </div>
     </div>
</body>
</html>