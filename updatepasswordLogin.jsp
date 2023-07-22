<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp" %>




<%!
	String un,cpass;

   %>
   
  <%
  	cpass=request.getParameter("txtPassword");
	//un=session.getAttribute("lgnuser").toString();
	String mob=request.getParameter("txtMobile");
	
  	
	try
	{
		PreparedStatement ps=con.prepareStatement("update customer set upass=? where cmob=?");
		ps.setString(1,cpass);
		ps.setString(2,mob);
		int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Update Successful!!"))
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
				if(confirm("Error in Password Updation "))
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
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
  
  %>