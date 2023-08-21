<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib prefix="security"
  uri="http://www.springframework.org/security/tags" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>KPRIET LAB</title>  
<link rel = "icon" href = "https://www.kpriet.ac.in/asset/frontend/images/logo/logo-footer-color.png" type = "image/x-icon">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="http://resources/demos/style.css">
  <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<style type="text/css">

table {
  border-collapse: collapse;
  width: 100%;
  background-color:white;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
  background-color:white;
}

tr:hover {background-color:yellow;}

table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 12px;
}

input[type=text] {
  width: 15%;
  padding: 12px 0px;
  margin: 15px 20px ;
  box-sizing: border-box;
  border: 2px solid red;
  border-radius: 2px;
  text-align:left;
  align:right;
  color:green;
}
div.Submit>button{

    font-size: 15px;
    font-weight: bold;
    font-family: sans-serif;
    background-color: red;
    margin-left: 100px;
    display: inline-block;
    color:black;
    text-align: center;
    padding: 15px 32px;
    
}
div.Submit:hover>button{
    background:yellow;
    }
body
{
    background-color:black;
    background-size: cover;    
    background-image: url("https://wallpapercave.com/wp/wp2649374.jpg");
    
}
item{
color:blue;
}
sub{
color:blue;
}
obj{
 color:blue;
 }
h2{
color:black;
align:center
} 
span {
  background-color: black;
}
</style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                               
      </button>
      <a class="navbar-brand" href="https://www.kpriet.ac.in/">KPRIET</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav nav-tabs">
        <li class="active"><a role="button" data-toggle="tab" data-target="#home">Home</a></li>
        <li><a href="http://www.kpriet.ac.in/about/">About</a></li>
        <sec:authorize access="hasRole('admin')">
        <li><a data-toggle="tab" href="#cmp_reg">Component Register</a></li>
        </sec:authorize>
        <sec:authorize access="hasRole('admin')">
        <li><a  data-toggle="tab" href="#userregister">User Register</a></li>
        </sec:authorize>
        
        <li><a role="button" data-toggle="tab" data-target="#map_com">Map Component</a></li>
        <li><a role="button" data-toggle="tab" data-target="#map_det">Mapping Details</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
      
    </div>
    
  </div>
</nav>
<div class="col-sm-8 text-left" style="margin-top:100px"> 
<div class="tab-content">
<div id="home" class="tab-pane fade in active">
<h2 class="w3-center">KPR Institute of Engineering and Technology</h2>
<br>

<div class="w3-content w3-display-container">
  <img class="mySlides" src="./homepage/covid-19-lets-get-through.jpg" style="width: 1000px; display: none;" height="500px">
  <img class="mySlides" src="./homepage/header.jpg" style="width: 1000px; display: block;" height="500px">
  <img class="mySlides" src="./homepage/find-your-future.jpg" style="width: 1000px; display: none;" height="500px">
  

  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>
<div class="item">
    <b> Learn Beyond</b>
</div>
<div class="sub">
    <p>"Everything is theoretically impossible, until it is done!"</p>
   </div>
 <div class="obj">
  <h2> Objectives</h2>
    <p style="background-color:tomoto;">
    To maintain the inventory of lab equipment / component in database <br>

To identify the component specifications / usage / service / transfer / obsolete / AMC and etc.,   <br>

To access the utility / service / audit report of the equipment / component <br>

  To trace the deficiency / excess of the components in the lab. <br>
</p>
 
  </div>
   


<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>


</div>
<div id="userregister" class="tab-pane fade">
<form action="userregister" method="post">
	<span><label style="color:red" >Department</label></span>
	<input type="text" name="dept" ><br>
	<span><label style="color:red">Name</label></span>
	<input type="text" name="name" ><br>
	<span><label style="color:red">Password</label></span>
	<input type="text" name="password" ><br>
	<span><label style="color:red">Roles</label></span>
	<input type="text" name="roles" ><br>
	<span><label style="color:red">Roll no</label></span>
	<input type="text" name="rollno" ><br>
	<span><label style="color:red">Section</label></span>
	<input type="text" name="section" ><br>
	<span><label style="color:red">Email ID</label></span>
	<input type="text" name="username" ><br>
	<span><label style="color:red">Year</label></span>
	<input type="text" name="year" ><br>
	<div class="Submit">	
	<span><button type="submit">Add</button></span>
	</div>
	</form>
</div>
<div id="cmp_reg" class="tab-pane fade">
	<form action="com_reg" method="post">
	<span><label style="color:red">Component</label></span>
	<input type="text" name="cmname" ><br>
	<span><label style="color:red">Component ID</label></span>
	<input type="text" name="cmdid" ><br>
	<span><label style="color:red">Department</label></span>
	<input type="text" name="dept" ><br>
	<span><label style="color:red">Lab</label></span>
	<input type="text" name="lab" ><br>
	<span><label style="color:red">Supplier</label></span>
	<input type="text" name="Supplier" ><br>
	<span><label style="color:red">Date of Purchase</label></span>
	<input type="text" name="date_purchase" ><br>
	<span><label style="color:red">Quantity</label></span>
	<input type="text" name="quatity" ><br>
	<div class="Submit">	
	<span><button type="submit">Add</button></span>
	</div>
	</form>
	</div>
	<div id="map_com" class="tab-pane fade">
	<form action="map_com" method="post">
	<span><label style="color:red">Component ID</label></span>
	<input type="text" name="com_id"><br>
	<div class="Submit">
	<span><button type="submit" style="color:red" >Submit</button></span>
	</div>
	</form>
	</div>

	<div id="map_det" class="tab-pane fade">
		<table class="table-bordered tabe-striped">
			<thead>
			<tr>
			
			<span><th>Roll_no</th></span>
			<span><th>Name</th></span>
			<span><th>Component ID</th></span>
			<span><th>Component Name</th></span>
			<span><th>Supplier</th></span>
			<span><th>Quantity</th></span>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="l" items="${l }">
			<tr>
			
			<td><c:out value="${l.roll_no }" /></td>
			
			<td><c:out value="${l.name }" /></td>
			<td><c:out value="${l.com_id }" /></td>
			<td><c:out value="${l.com_name }" /></td>
			<td><c:out value="${l.supplier }" /></td>
			<td><c:out value="${l.quantity }" /></td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</div>
</body>
</html>