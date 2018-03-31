<!doctype html>
<html>
<head>
<script language="JavaScript">
 
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
<jsp:include page="userHeader.jsp"></jsp:include>

<div class="col-md-offset-4 col-md-4" >
<div class="well col-md-10">
<div class="h3" align="center">Add Book Form</div>
  <form action="${pageContext.request.contextPath }/AddBook" method="post" name="registration" onsubmit="return formValidation()" style="width:300px">
  <div class="form-group">
    <label for="callno1">Callno</label>
    <input type="text" class="form-control" name="callno" id="callno1" placeholder="Callno"/>
  </div>
  <div class="form-group">
    <label for="name1">Name</label>
    <input type="text" class="form-control" name="name" id="name1" placeholder="Name"/>
  </div>
  <div class="form-group">
    <label for="author1">Author</label>
    <input type="text" class="form-control" name="author" id="author1" placeholder="Author"/>
  </div>
  <div class="form-group">
    <label for="publisher1">Publisher</label>
    <input type="text" class="form-control" name="publisher" id="publisher1" placeholder="Publisher"/>
  </div>
  <div class="form-group">
    <label for="quantity1">Quantity</label>
    <input type="text" class="form-control" name="quantity" id="quantity1" placeholder="Quantity"/>
  </div>
  <button type="submit" class="btn btn-primary col-md-offset-4 col-md-4" >Save Book</button>

</form>

<div class="col-md-12"><%if((String)request.getAttribute("msg")!=null)%><%=(String)request.getAttribute("msg") %></div>
</div>
</div>
<script src="js/addBook.js"></script>
</body>
</html>