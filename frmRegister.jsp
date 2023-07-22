<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SES | Admin</title>


<link rel=stylesheet href=css/bootstrap.min.css>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
	crossorigin="anonymous"></script>
<link rel=stylesheet href="css/mystyle.css">
<script src=js/form_val.js></script>
<style>
.frm {
	margin-top: 20vh;
}

.form-text {
	color: red;
}

body {
	
}

#login {
	background: rgb(2, 0, 36);
	background: linear-gradient(90deg, rgba(2, 0, 36, 0.2637429971988795) 0%,
		rgba(118, 121, 9, 0.7371323529411764) 56%, rgba(0, 212, 255, 1) 100%);
}
</style>

<script>
function registerFinal()
{
	
	if(subEmpty==0 && subEmail==0 && subUsername==0 && subCPassword==0 && subMobile==0)
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
	<%@include file="navbar1.jsp"%>
	<%
if(session.getAttribute("ebklgnadmn")!=null)
{
	response.sendRedirect("admindashboard.jsp");
}
%>

	<form id=frmRegister action=Register.jsp method=get>
		<div class="container frm">

			<div class="row justify-content-center">

				<div
					class="col-8 align-self-center shadow p-3 mb-5 bg-white rounded">

					<div class="form-group">
						<label for="exampleInputEmail1"
							style="background-color: #b2dceb; width: 100%; padding: 15px; text-align: center;"
							class="font-weight-bold text-warning text-uppercase">Customer
							Registration</label><br>
					</div>


					<div class="form-group">
						<label for="exampleInputEmail1">Customer Name</label> <input
							type="text" class="form-control" id="txtName" name="txtName"
							onblur="validateEmpty(this,document.getElementById('errName'),'Enter Valid Name')"
							required> <small id="errName" class="form-text"></small>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Mobile</label> <input type="text"
							class="form-control" id="txtMobile" name="txtMobile"
							onblur="validateMobile(this,document.getElementById('errMobile'),'Enter Valid Mobile Number')"
							required> <small id="errMobile" class="form-text"></small>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Email</label> <input type="email"
							class="form-control" id="txtEmail" name="txtEmail"
							onblur="validateEmail(this,document.getElementById('errEmail'),'Enter Valid Email')"
							required> <small id="errEmail" class="form-text"></small>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Address</label>
						<textarea area class="form-control" id="txtAdd" name="txtAdd"></textarea>
						<small id="errAdd" class="form-text"></small>
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">City</label> <input type="text"
							class="form-control" id="txtCity" name="txtCity"
							onblur="validateEmpty(this,document.getElementById('errCity'),'Enter Valid City Name')">
						<small id="errCity" class="form-text"></small>
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Landmark</label> <input
							type="text" class="form-control" id="txtState" name="txtLandmark"
							onblur="validateEmpty(this,document.getElementById('errState'),'Enter Valid Landmark')">
						<small id="errState" class="form-text"></small>
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Select Security Question</label> <select
							id=securityQuestion class=form-control name=secq>
							<option value="What is your nick name?">What is your
								nick name?</option>
							<option value="What is your pets name?">What is your
								pets name?</option>
							<option value="Food you like the most?">Food you like
								the most?</option>
							<option value="Teacher you want to meet?">Teacher you
								want to meet?</option>
							<option value="What is your goal?">What is your goal?</option>
							<option value="What is your high school name?">What is
								your high school name?</option>
							<option value="Person you love the Most?">Person you
								love the Most?</option>
						</select>

					</div>
					<div class="form-group">
						<label class="form-label">Answer to the Security Question
						</label> <input type="text"
							onblur="validateEmpty(this,document.getElementById('errAnswer'),'Enter Answer')"
							class="form-control" placeholder="answer" autocomplete="off"
							name=txtAns> <span id=errAnswer class=text-danger></span>

					</div>


					<div class="form-group">
						<label for="exampleInputEmail1">Username</label> <input type=text
							class="form-control" id="txtUname" name="txtUname"
							onblur="validateUsername(this,document.getElementById('errUsername'),'Username Invalid')">
						<small id="errUsername" class="form-text"></small>
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="txtPassword"
							name="txtPassword"
							onkeyup="validatePassword(this,document.getElementById('errPassword'),'Password is Weak','Strong Pasword')">
						<small id="errPassword" class="form-text"></small>

					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Confirm Password</label> <input
							type="password" class="form-control" id="txtCPassword"
							name="txtCPassword"
							onkeyup="validateConfirmPassword(this,document.getElementById('errCPassword'),'Password and confirm password doesnot match')">
						<small id="errCPassword" class="form-text"></small>

					</div>
					<input type="button" class="btn btn-primary"
						style="width: 100%; background-color: #b2dceb;" value=Register
						onclick="registerFinal()">
	</form>
	<a href=frmCustLogin.jsp>Already Registered? Login Here</a>


	</div>
	</div>
	</div>
	</form>

</body>
<%@include file="footer.jsp"%>

</html>