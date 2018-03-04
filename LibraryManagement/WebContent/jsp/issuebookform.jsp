<!doctype html>
<html>
<head>
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
<style>



</style>
</head>
<body>

<jsp:include page="userHeader.jsp"></jsp:include>
<div class="col-md-offset-4 col-md-4 " >
<div class="well col-md-10">
<h3>Issue Book Form</h3>
  <form action="${pageContext.request.contextPath }/IssueBook" method="post" style="width:300px">
  <div class="form-group">
    <label for="callno1">Book Callno</label>
    <input type="text" class="form-control" name="callno" id="callno1" placeholder="Callno"/>
  </div>
  <div class="form-group">
    <label for="id1">Student Id</label>
    <input type="text" class="form-control" name="studentid" id="id1" placeholder="Student Id"/>
  </div>
  <div class="form-group">
    <label for="name1">Student Name</label>
    <input type="text" class="form-control" name="studentname" id="name1" placeholder="Student Name"/>
  </div>
  <div class="form-group">
    <label for="mobile1">Student Mobile</label>
    <input type="number" class="form-control" name="studentmobile" id="mobile1" placeholder="Student Mobile"/>
  </div>
  <button type="submit" class="btn btn-primary col-md-offset-4 col-md-4">Issue Book</button>
</form>
<div class="h4"><%if((String)request.getAttribute("msg")!=null)%><%=(String)request.getAttribute("msg") %></div>
</div>
</div>
</body>