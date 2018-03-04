<doctype html>
<html>
<head>

		<title>Add Librarian</title>
		<SCRIPT LANGUAGE="JavaScript">
 
    function ieClicked() {
        if (document.all) {
            return false;
        }
    }
    function firefoxClicked(e) {
        if(document.layers||(document.getElementById&&!document.all)) {
            if (e.which==2||e.which==3) {
                return false;
            }
        }
    }
    if (document.layers){
        document.captureEvents(Event.MOUSEDOWN);
        document.onmousedown=firefoxClicked;
    }else{
        document.onmouseup=firefoxClicked;
        document.oncontextmenu=ieClicked;
    }
    document.oncontextmenu=new Function("return false")
 
</script>

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="col-md-offset-4 col-md-4">
<div class="well col-md-10">

<h3 align="center">Add Librarian</h3>
  <form action="${pageContext.request.contextPath}/AddLibrarian" method="post" name="registration" onsubmit="return formValidation()" style="width:300px">
  <div class="form-group">
    <label for="name1">Name</label>
    <input type="text" class="form-control" name="name" id="name1" placeholder="Name"/>
  </div>
  <div class="form-group">
    <label for="email1">Email address</label>
    <input type="email" class="form-control" name="email" id="email1" placeholder="Email"/>
  </div>
  <div class="form-group">
    <label for="password1">Password</label>
    <input type="password" class="form-control" name="password" id="password1" placeholder="Password"/>
  </div>  
  <div class="form-group">
    <label for="mobile1">Mobile Number</label>
    <input type="text" class="form-control" name="mobile" id="mobile1" placeholder="Mobile"/>
  </div>
  <button  type="submit" class="btn btn-primary col-md-offset-4 col-md-4">Submit</button>
</form>
<div id="h1"><%String msg=(String)request.getAttribute("msg"); 
if(msg!=null){
%>
<%=msg %>
<%} msg=null;%>
</div>
</div>
</div>
<script src="js/librarian.js"></script>
	</body>
</html>