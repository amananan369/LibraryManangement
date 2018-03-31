<!doctype html>
<html>
<head><title>Librarian login</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  .top{
    padding-top:100px;
  }
  
  
  body{
   background-image: url("${pageContext.request.contextPath}/jsp/img/librarianlogin.jpg");
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  }
  </style>
</head>
<body>
<div class="container">
<div class="col-md-offset-4 col-md-4 top">
<div  class="panel panel-primary">
<div class="panel-heading" align="center">Librarian Login</div>
<div class="panel-body">
<form action="${pageContext.request.contextPath}/LibrarianLogin" method="post">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
    <button type="submit" class="btn btn-primary col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4">Submit</button>
  </form>
</div>
<p align="center">Wrong userName Password</p>
</div>

</div>
</div>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>