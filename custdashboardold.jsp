<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="connect.jsp" %>
<%@include file="checklogin.jsp" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SES | Customer</title>
<link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin=anonymous>

<script src=//code.jquery.com/jquery-3.3.1.slim.min.js integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin=anonymous></script>

<script src=//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin=anonymous></script>

<script src=//stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin=anonymous></script>

<script src=//code.jquery.com/jquery-3.5.1.slim.js integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin=anonymous></script>
  
<link rel=stylesheet href=../css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link rel=stylesheet href="../css/mystyle.css">

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

a
{
	color:black;
	width:200px;
	background-color:red;
	
}

.zoom {
  padding: 10px;
  background-color: #b3edf2;
  transition: transform .2s; /* Animation */
  width: 300px;
  height: 60px;
  margin: 0 auto;
}

.zoom:hover {
  transform: scale(1.6); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
  color:white;
}



</style>

<script src="../JS/form_val.js"></script>

<script>





</script>

</head>
<body>










<div class="jumbotron jumbotron-fluid hd">
  <div class="container">
    <h1 class="display-4" style="text-align:center;">Hello <%=session.getAttribute("ebklgncust") %><a href=logout.jsp class="btn  my-2 zoom">Logout</a><a href=showcart.jsp class="btn  my-2 mx-2 zoom"><img src=images/cart.png height=32px width=32px></a></br></h1>
    <p class="lead" style="font-family:  'Redressed', cursive;;text-align:center;">You can Add Products in your cart from here... Enjoy the shopping</p>
  </div>
</div>

		
		
			
<div class="container my-4" >
		<div class=row>
					
						
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