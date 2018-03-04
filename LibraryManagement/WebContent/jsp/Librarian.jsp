
<!DOCTYPE html>
<html lang="en">
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js">
        </script>
  <script type = "text/javascript" >
  $(document).ready(function() {
      function disableBack() { window.history.forward() }

      window.onload = disableBack();
      window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
  });
</script>
	<title>Librarian Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../LibrarianLogin/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/css/util.css">
	<link rel="stylesheet" type="text/css" href="../LibrarianLogin/css/main.css">
<!--===============================================================================================-->
 
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('../LibrarianLogin/images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Librarian Login
				</span>
				<form action="${pageContext.request.contextPath }/LibrarianLogin"
				class="login100-form validate-form p-b-33 p-t-5" method="post" onsubmit="validate()">
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="email" name="email" placeholder="User name">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

				</form>
				
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	<script type="text/javascript" src="js/validate.js"></script>
<!--===============================================================================================-->
	<script src="../LibrarianLogin/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../LibrarianLoginvendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../LibrarianLoginvendor/bootstrap/js/popper.js"></script>
	<script src="../LibrarianLoginvendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../LibrarianLoginvendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../LibrarianLoginvendor/daterangepicker/moment.min.js"></script>
	<script src="../LibrarianLoginvendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../LibrarianLoginvendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../LibrarianLoginjs/main.js"></script>

</body>
</html>