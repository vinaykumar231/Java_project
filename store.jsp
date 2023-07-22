<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SES | Store</title>



<link rel=stylesheet href=css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link rel=stylesheet href="css/mystyle.css">

<style>
@import url('https://fonts.googleapis.com/css2?family=Teko:wght@500&display=swap');
</style>

</head>
<body>
<!--  Navigation Bar Code -->
<%@include file="navbar1.jsp" %>




<div class="container my-4" >

	<div class="row my-4">
			
			<%
PreparedStatement ps=con.prepareStatement("select * from product");


ResultSet rs=ps.executeQuery();
while(rs.next())
{
	

%>
<div class="col-3 offset-1 my-4">
  <div class="card">
    <img src="Uploads/<%=rs.getString(6) %>" class="card-img-top" alt="..." width=300px height=150px>
    <div class="card-body">
      <h5 class="card-title"><%=rs.getString(2) %></h5>
      <p class="card-text">Price: <%=rs.getString(3) %> </p>
      
      <p class="card-text">Product Id: <%=rs.getString(1) %> </p>
    </div>
    <div class="card-footer">
      <small class=""><a href=addtocart.jsp?isbn="<%=rs.getString(1)%>">Add to Cart</a></small>
    </div>
  </div>
 </div>
  <%
  
  }
  %>
 
	
	</div>

</div>


   












</body>
<%@include file="footer.jsp"%> 

</html>