<!DOCTYPE html>
<html>
<head>
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
    background-image: url("${pageContext.request.contextPath}/jsp/img/library.png");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.top{
	margin-top:50px;
}
.space{
margin-bottom:10px;
}

</style>
</head>
<body>
<div class="bg">
<div class="container">
<div class="col-md-offset-3 col-md-6  top">
<form action="">
<div class="panel panel-primary">
<div class="panel-heading" align="center">Enter Student Id:</div>
<div class="panel-body"> <input type="text" class="form-control space" id="sid" placeholder="Enter Student Id" name="sid">
<input type="submit" class="btn btn-primary col-md-offset-4 col-md-4 "  >
</div>
 </div>
</form>
</div>
</div>

</div>



</body>
</html>
