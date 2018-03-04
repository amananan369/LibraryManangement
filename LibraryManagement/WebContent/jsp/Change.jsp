<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <% response.setHeader("Cache-Control","no-cache");
 response.setHeader("Cache-Control","no-store");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", 0); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../web/Change.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js">
        </script>
  <script type = "text/javascript" >
  
 
  $(document).ready(function() {
      function disableBack() { window.history.forward() }

      window.onload = disableBack();
      window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
  });

function clearForms()
{
  var i;
  for (i = 0; (i < document.forms.length); i++) {
    document.forms[i].reset();
  }
}
function validateForm()
{
var x=document.forms["myForm"]["un"].value;
if (x==null || x=="")
  {
  alert("Username must be filled out");
  document.getElementById('un').focus();
  return false;
  }
var y=document.forms["myForm"]["pw"].value;
if (y==null || y=="")
  {
  alert("password must be filled out");
  document.getElementById('pw').focus();
  return false;
  }
}
</script>
     <title>Login Page</title>
   </head>
    <body onLoad="clearForms()" onunload="clearForms()">
   <div class="container">
	<div class="login-container">
            <div id="output"></div>
            <div class="avatar"></div>
            <div class="form-box">
    <form action="${pageContext.request.contextPath}/AdminLogin" onSubmit="return validateForm()" method="post"  name="myForm">
      <input name="un" type="text" placeholder="username">
      <input  name="pw" type="password" placeholder="password">
      <button class="btn btn-info btn-block login" type="submit">Login</button>       
      </form>
         </div>
        </div>
        
</div>

      </body>
      </html>