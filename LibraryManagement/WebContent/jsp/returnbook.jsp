<!doctype html>
<html>
<head>

		<title>Return book</title>
		<SCRIPT >
 
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
<style>

</style>
</head>
<body>

<jsp:include page="userHeader.jsp"></jsp:include>
<div class="col-md-offset-4 col-md-4" >
<div class="well col-md-10">
<h3>Return Book Form</h3>
  <form action="${pageContext.request.contextPath }/ReturnBook" method="post" style="width:300px">
  <div class="form-group">
    <label for="callno1">Callno</label>
    <input type="text" class="form-control" name="callno" id="callno1" placeholder="Callno"/>
  </div>
  <div class="form-group">
    <label for="studentid1">Student Id</label>
    <input type="text" class="form-control" name="studentid" id="studentid1" placeholder="StudentId"/>
  </div>
  <button type="submit" class="btn btn-primary col-md-offset-4 col-md-4">Return Book</button>
</form>
<div class="h4"><%if((String)request.getAttribute("msg")!=null)%><%=(String)request.getAttribute("msg") %></div>
</div>
</div>
</body>
</html>