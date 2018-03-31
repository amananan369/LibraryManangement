<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
com.LibraryManagement.Bean.UserBean se=(com.LibraryManagement.Bean.UserBean)session.getAttribute("currentSessionAdmin");
if(se==null){
	System.out.print(se)
;%>
<jsp:forward page="Change.jsp"></jsp:forward>
<% }%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <style>
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("${pageContext.request.contextPath}/jsp/img/admin.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
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
      <a class="navbar-brand" href="${pageContext.request.contextPath}/jsp/AdminLogged.jsp">LibraryManagement</a>
    </div>
    <ul class="nav navbar-nav navbar-right collapse navbar-collapse"  id="myNavbar">
      <li><a href="${pageContext.request.contextPath}/AddLibrarian">Add Librarian</a></li>
      <li><a href="${pageContext.request.contextPath}/ViewLibrarian">View Librarian</a></li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Logout <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/Lock">Lock</a></li>
          <li><a href="${pageContext.request.contextPath}/LogOut">Logout</a></li>    
        </ul>
      </li>
    </ul>
  </div>
  
</nav> 

</body>
</html>