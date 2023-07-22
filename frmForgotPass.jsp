<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SES | Login</title>


<link rel=stylesheet href=css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link rel=stylesheet href="css/mystyle.css">

<style>

.frm
{
	margin-top:25vh;
}

body
{

}

#login
{
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,0.2637429971988795) 0%, rgba(118,121,9,0.7371323529411764) 56%, rgba(0,212,255,1) 100%);
}

</style>

<script>
            function loadquestion(mob)
            {
                if(mob.length==0)
                {
                     alert("Enter Mobile Number");   
                }
                else
                {
                    
                ob=new XMLHttpRequest();
                ob.open("GET","loadquestion.jsp?mob="+mob);
                ob.send();
                ob.onreadystatechange=function()
                {
                    if(ob.readyState==4)
                    {
                        if(ob.responseText=="No Questions Found !! Check Mobile")
                        {
                            document.getElementById("errMobile").value=ob.responseText;

                        }
                        else
                        {
                            document.getElementById("question").value=ob.responseText;

                        }
                        
                    }
                }
                }
            }
            function checkanswer()
            {
                ans=document.getElementById("txtAns").value
                
                mob=document.getElementById("txtMobile").value

                ob=new XMLHttpRequest();
                ob.open("GET","checkanswer.jsp?ans="+ans+"&mob="+mob);
                ob.send();
                //alert("Sent");
                ob.onreadystatechange=function()
                {
                    if(ob.readyState==4)
                    {
                        //alert(ob.responseText);
                        if(ob.responseText==1)
                        {
                            location="frmUpdatePassword.jsp?mob="+mob;
                        }
                        else
                        {
                            document.getElementById("errAns").innerHTML="Wrong Answer";
                        }
                       
                            
                    }
                    
                }
            }
        </script>





</head>
<body>
<%@include file="navbar1.jsp" %>
<%
if(session.getAttribute("ebklgncust")!=null)
{
	response.sendRedirect("custdashboard.jsp");
}
%>


<div class="container frm">
 
  <div class="container my-4">
        
        <div class="row justify-content-center">
           
            <div class="col-8">
             <h4 class="text-warning text-center">Recover Password</h4>
                <div class=form-label>Enter Mobile</div>
                <input type=text name=txtMobile id=txtMobile class=form-control onkeyup="loadquestion(this.value)" >
                <span id=errMobile class="text-danger"></span>
                <div class=form-label>Security Question</div>
                <input type=text id=question name=txtQues class=form-control  readonly>
                <div class=form-label>Answer to Recover password</div>
                <input type=text name=txtAns id=txtAns class=form-control >
                <span id=errAns class="text-danger"></span>
                <br>
                <input type=button value="Recover Password" class="btn btn-primary" onclick="checkanswer()">
                
                
            </div>

        </div> 
 
   </div>
</form>

</body>
</html>