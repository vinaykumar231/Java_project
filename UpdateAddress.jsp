<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp" %>

<%
if(session.getAttribute("lgnuser")==null)
{
	response.sendRedirect("index.jsp");
}
else
{
	String un=session.getAttribute("lgnuser").toString();
	
 
	try
	{
	String adr=request.getParameter("txtaddress");
	String area=request.getParameter("txtarea");
	String city=request.getParameter("txtcity");
	String pin=request.getParameter("txtpin");
	
	PreparedStatement ps1=con.prepareStatement("UPDATE `delivery_address` SET `daddress`=?,`area`=?,`city`=?,`pincode`=? WHERE uname=?");
	ps1.setString(1,adr);
	ps1.setString(2,area);
	ps1.setString(3,city);
	ps1.setString(4,pin);
	ps1.setString(5,un);

	
	int ans=ps1.executeUpdate();
	if(ans>0)
	{
%>
	
	<script>
	if(confirm("Address Updated Successfully"))
	{	
		location="showcart.jsp";
	}
	else
	{
		location="showcart.jsp";
	}

	</script>
	
<%
}
	else
	{
		%>
		<script>
			if(confirm("Error In Address Update "))
			{	
				location="showcart.jsp";
			}
			else
			{
				location="showcart.jsp";
			}	
		</script>	
		
		<%
	}
	
	}
	catch(Exception e)
	{	out.println(e);
	}
	}


%>