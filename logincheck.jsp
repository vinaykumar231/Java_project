<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp" %>
 
  
<%! String un,pass; %>
  
<%
	
	un=request.getParameter("txtUname");
	pass=request.getParameter("txtPass");
	
	PreparedStatement ps=con.prepareStatement("select count(*) from customer where uname=? and upass=?");
	ps.setString(1,un);
	ps.setString(2,pass);
	
	ResultSet rs=ps.executeQuery();
	rs.next();
	if(rs.getString(1).equals("1"))
	{
		
		session.setAttribute("lgnuser",un);
%>
	<script>
		if(confirm("Login Successful"))
		{
			location="custdashboard.jsp";
		}
		else
		{
			location="custdashboard.jsp";
		}
		
	</script>	
	
	
<%		
	}
	else
	{
%>
	
	<script>
		if(confirm("invalid Username or Password"))
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
	
	
	
	
	
%>