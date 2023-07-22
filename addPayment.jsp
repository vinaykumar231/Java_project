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
	String pmt=request.getParameter("pmtMethod");
	
	
	try
	{
	

	PreparedStatement psbill= con.prepareStatement("select max(bill_no)+1 from bill");
	ResultSet rsbill=psbill.executeQuery();
	rsbill.next();
	PreparedStatement ps1=con.prepareStatement("INSERT INTO `pay_method` VALUES(?,?)");
	ps1.setString(1,rsbill.getString(1));
	ps1.setString(2,pmt);

	
	int ans=ps1.executeUpdate();
	if(ans>0)
	{
		response.sendRedirect("showcart.jsp");
	}
	else
	{
		response.sendRedirect("showcart.jsp");
	}
	
	}
	catch(Exception e)
	{	out.println(e);
	}
}


%>