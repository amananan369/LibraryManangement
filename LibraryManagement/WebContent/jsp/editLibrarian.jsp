<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import=" java.util.List"
    import="com.LibraryManagement.Bean.LibrarianBean"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Librarian </title>
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
<doctype html>
<html>
<head>

		<title>Admin</title>

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="col-md-offset-4 col-md-4">
<div class="well col-md-10">
<div class="h3 " >Edit Librarian</div>
<%LibrarianBean bean=(LibrarianBean)request.getAttribute("data"); %>
  <form action="${pageContext.request.contextPath}/EditLibrarian" method="post" style="width:300px">
  <div class="form-group">
    <label for="name1">Name</label>
    <input type="hidden" name="id" value=<%=bean.getId() %>>
    <input type="text" class="form-control" name="name" id="name1" value=<%=bean.getName() %>  >
  </div>
  <div class="form-group">
    <label for="email1">Email address</label>
    <input type="email" class="form-control" name="email" id="email1" value=<%=bean.getEmail() %> >
  </div>
  <div class="form-group">
    <label for="password1">Password</label>
    <input type="text" class="form-control" name="password" id="password1" value=<%=bean.getPassword() %>   />
  </div>  
  <div class="form-group">
    <label for="mobile1">Mobile Number</label>
    <input type="text" class="form-control" name="mobile" id="mobile1" value=<%=bean.getMobile() %>  >
  </div>
  <button  type="submit" class="btn btn-primary col-md-offset-4 col-md-4">Submit</button>
</form>
</div>
</div>
	</body>
</html>
</body>
</html>