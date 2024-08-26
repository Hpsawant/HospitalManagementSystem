<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link href="CSS/Admin-style.css" rel="stylesheet">
 
</head>
<body>

     <div class="container-fluid mycontainer">
     <div class="row nav-bar">
       <div class="col-md-12 nav-img">
          
        <img src="<%="images/hs.png"%> " class="img1">
       
       </div>
       
        <div class="col-md-12 nav-content">
          
        <h1>Hospital Management System</h1>
       
       </div>
       
     </div>
        <div class="row">
        <div class="col-md-4 admin-sidebar">
         
          <details class="dropdown">
    <summary role="button">
 
   
    <a class="button"> <img src="<%="images/receptionist.png"%>" class="img3">Receptionist</a>
    </summary>
    <ul>
      <li><a href="AddRecep.jsp">Add New Receptionist</a></li>
      <li><a href="ViewRecep.jsp">View Receptionist</a></li>
      
 
</details>
 <details class="dropdown">
    <summary role="button">
 
   
    <a class="button"> <img src="<%="images/doctor1.png"%>" class="img3">Doctor</a>
    </summary>
    <ul>
      <li><a href="AddDoctor.jsp">Add New Doctor</a></li>
      <li><a href="ViewDoctor.jsp">View Doctor</a></li>
      <li><a href="SearchDoctor.jsp">Search Doctor</a></li>
 
</details>
 <details class="dropdown">
    <summary role="button">
    <a class="button"><img src="<%="images/patient.png"%>" class="img3">Patient</a>
    </summary>
    <ul>
      <li><a href="AddPatient.jsp">Add New Patient</a></li>
      <li><a href="ViewPatient.jsp">View Patient</a></li>
      <li><a href="SearchPatient.jsp">Serach Patient</a></li>
 
</details>

 
 <details class="dropdown">
    <summary role="button">
 
   
    <a class="button"> <img src="<%="images/bill.png"%>" class="img3">Bill</a>
    </summary>
    <ul>
      <li><a href="IPDBill.jsp">IPDBill</a></li>
      <li><a href="OPDBill.jsp">OPDBill</a></li>
</details>
       </div>
       
        

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>