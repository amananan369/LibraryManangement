<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  body, html {
    height: 100%;
    margin: 0;
}
  .bg{
  background-image:url("${pageContext.request.contextPath}/jsp/img/librarian.jpeg");
  height:100%;
 background-repeat:no-repeat;
background-size:cover;
 background-position: center;
  }
  .navbar-default .navbar-brand {
  display: flex;
  align-items: center;
  padding: 5px;
}
.navbar-brand img {
  height: 100%;
  margin-left:20px;
  margin-right:10px;
}
  </style>
</head>
<body>
<div class="bg">
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href=""><img class="img-responsive2" src="${pageContext.request.contextPath}/jsp/img/lib.png"/>Library Management</a>
    </div>
    <ul class="nav navbar-nav navbar-right collapse navbar-collapse"  id="myNavbar">
      <li><a href="${pageContext.request.contextPath}/AddBook">Add Book</a></li>
      <li><a href="${pageContext.request.contextPath}/ViewBook">View Book</a></li>
      <li><a href="${pageContext.request.contextPath}/IssueBook">Isseue Book</a></li>
      <li><a href="${pageContext.request.contextPath}/ViewIssuedBook">View Issued Book</a></li>
      <li><a href="${pageContext.request.contextPath}/ReturnBook">Return Book</a></li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Logout <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/ULock">Lock</a></li>
          <li><a href="${pageContext.request.contextPath}/ULogOut">Logout</a></li>    
        </ul>
      </li>
    </ul>
  </div>
</nav>
</body>
</html>