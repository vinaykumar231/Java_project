<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SES | Contact US</title>



<link rel=stylesheet href=css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link rel=stylesheet href="css/mystyle.css">
<script src=js/form_val.js></script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Teko:wght@500&display=swap');
</style>
<script>
function registerContact()
{
	
	if(subEmpty==0 && subEmail==0 && subMobile==0)
	{
		
		document.getElementById("frmRegister").submit();
		
	}
	else
	{
		alert("Enter all fields properly");
	}
}
</script>

</head>
<body>
<!--  Navigation Bar Code -->
<%@include file="navbar1.jsp" %>




<div class="container my-4" >

	<div class="row">
		<div class="col-6 datablock" >
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d952814.2839474967!2d74.6057499!3d21.115325!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd963f9693ba6b5%3A0xc1824819c6c06ef8!2sFARM%20DEVELOPER%20VISHVAJIT%20PATIL!5e0!3m2!1sen!2sin!4v1678776793593!5m2!1sen!2sin" width="500" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
			
		</div>
		<div class="col-5 offset-1 datablock">
		<h3 style="font-family: 'Teko', sans-serif;">Contact US</h3>
	
		<form action=contactus_insert.jsp id="frmRegister">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="txtEmail" name=txtEmail onblur="validateEmail(this,document.getElementById('errEmail'),'Enter Valid Email')"
     >
    <small id="errEmail" class="form-text text-muted"></small>
  </div>
<div class="form-group">
    <label for="exampleInputEmail1">Mobile </label>
    <input type="mobile" class="form-control" id="txtMobile" name=txtMobile onblur="validateMobile(this,document.getElementById('errMobile'),'Enter Valid Mobile Number')"
    >
    <small id="errMobile" class="form-text text-muted"></small>
  </div>
<div class="form-group">
    <label for="exampleInputEmail1">Your Words </label>
    <textarea cols=30 rows=5 class="form-control" id="txtWords" name=txtWords onblur="validateEmpty(this,document.getElementById('errWords'),'Enter Query')">
    </textarea>
    <small id="errWords" class="form-text text-muted"></small>
  </div>
    
	
  <input type="button" class="btn btn-primary" onclick="registerContact()" value="Submit"></button>
</form>
	

		</div>
	
	</div>

</div>













</body>
<%@include file="footer.jsp"%> 

</html>