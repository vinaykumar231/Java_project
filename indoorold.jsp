<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="connect.jsp" %>
 
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>SES | Indoor Products</title>



<link rel=stylesheet href=css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link rel=stylesheet href="css/mystyle.css">


<script type="text/javascript">
function noBack(){window.history.forward();}
noBack();
window.onload=noBack;
window.onpageshow=function(evt){if(evt.persisted)noBack();}
window.onunload=function(){void(0);}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Pacifico&family=Shojumaru&family=Teko:wght@500&display=swap');


.hd
{
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,0.2637429971988795) 0%, rgba(0,212,255,1) 0%, rgba(74,212,122,0.22172619047619047) 0%, rgba(252,213,34,0.8743872549019608) 85%);}







</style>

<script src="../JS/form_val.js"></script>

<script>





</script>
<!--  Navigation Bar Code -->
<%@include file="navbar1.jsp" %>
</head>
<body>








<div class="jumbotron jumbotron-fluid hd">
  <div class="container">
    <h1 class="display-4" style="text-align:center;">List of All Indoor Games Products</br></h1>
    <p class="lead" style="font-family:  'Redressed', cursive;;text-align:center;">... Enjoy the shopping</p>
  </div>
</div>

		
		
			
<div class="container my-4" >
		<div class=row>
					
						
						<% 
PreparedStatement ps=con.prepareStatement("select * from product where bcat='Indoor'");


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
      
      <p class="card-text">Product ID: <%=rs.getString(1) %> </p>
    </div>
    <div class="card-footer">
      <small class=""><a class="btn btn-success" href=addtocart.jsp?pid=<%=rs.getString(1)%>>Add to Cart</a></small>
    </div>
  </div>
 </div>
  <%
  
  }
  %>
						
						
						
						
						
						
						
	 </div>
					
	</div>
				
			

</body>
</html>