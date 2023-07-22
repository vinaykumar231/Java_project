<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp" %>




<%!
	String cname,cmob,cadd,ccity,clm,secq,ans,cuname,cpass,cemail;

   %>
   
  <%
  	cname=request.getParameter("txtName");
  	cmob=request.getParameter("txtMobile");
  	cemail=request.getParameter("txtEmail");
  	cadd=request.getParameter("txtAdd");
  	ccity=request.getParameter("txtCity");
  
  	clm=request.getParameter("txtLandmark");
  	cuname=request.getParameter("txtUname");
	cpass=request.getParameter("txtPassword");
	secq=request.getParameter("secq");
	ans=request.getParameter("txtAns");
	
	  
  	
	try
	{
		PreparedStatement ps=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,cmob);
		ps.setString(2,cname);
		ps.setString(3,cadd);
		ps.setString(4,clm);
		ps.setString(5,ccity);
		ps.setString(6,cemail);
		ps.setString(7,cuname);
		ps.setString(8,cpass);
		ps.setString(9,secq);
		ps.setString(10,ans);
		
		PreparedStatement ps1=con.prepareStatement("INSERT INTO `delivery_address`(`daddress`, `area`, `city`, `uname`, `pincode`) VALUES (?,?,?,?,?)");
		ps1.setString(1,cadd);
		ps1.setString(2,clm);

		ps1.setString(3,ccity);
		ps1.setString(4,cuname);
		ps1.setString(5,"000000");
		
		int x=ps.executeUpdate();
		int y=ps1.executeUpdate();
		if(x>0 && y>0)
		{
	%>	
			<script>
			if(confirm("Registration  Successful!!"))
			{
				location="frmCustLogin.jsp";
			}
			else
			{
				location="frmCustLogin.jsp";
			}
			
		</script>	
		<%	
		}
		else
		{
	%>
			<script>
				if(confirm("Error in Registration "))
				{
					location="frmRegister.jsp";
				}
				else
				{
					location="frmRegister.jsp";
				}	
			</script>	
	<%
		
		}
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
  
  %>