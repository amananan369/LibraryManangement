<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import=" java.util.List"
    import="com.LibraryManagement.Bean.BookBean"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>View Book</title>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css">

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
	.h1{
	color: #ffffff!important;
	text-align:center;
	}
	.well{
	
	box-shadow: 7px 8px 11px 2px #fcfcfc!important;
	}
	
</style>
</head>
<body>
<jsp:include page="userHeader.jsp"></jsp:include>

<div class="container">

   <div class="h1 alert btn-info col-md-offset-4 col-md-4">Book Details</div>          
 <div class="well col-md-12" > 
   <div class ='table-responsive '>           
  <table id="example" class="table" cellspacing="0" width="100%">
    <thead>
      <tr>
        <th>Callno</th>
        <th>Name</th>
        <th>Author</th>
        <th>Publisher</th>
         <th>Quantity</th>
          <th>Issued</th>
           <th>Delete</th>
      </tr>
    </thead>
   <tbody>

<% List<BookBean> data= (List)request.getAttribute("view");
for(BookBean bean:data){

%>
 
      <tr>  
<td><%=bean.getCallno() %></td>
<td><%= bean.getName()%></td>
<td><%=bean.getAuthor() %></td>
<td><%= bean.getPublisher()%></td>
<td><%=bean.getQuantity() %></td>
<td><%=bean.getIssued() %></td>
<td><a href='DeleteBook?callno=<%= bean.getCallno()%>'>Delete</a></td>
<%}%>
 </tr>
 </tbody>
  </table>
  </div>
</div>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
 <script type="text/javascript">
    	$(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
    </script>
</body>
</html>