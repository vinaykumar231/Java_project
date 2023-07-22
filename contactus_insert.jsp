<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp" %>
 
 <%!
 		String em,mb,msg;
 %>
 <%
    em=request.getParameter("txtEmail");
 	mb=request.getParameter("txtMobile");
 	msg=request.getParameter("txtWords");
 	
 	//out.println("Values Entered are <br>Email"+em+"<br>Mobile:"+mb+"<br>Message:"+msg);
 	
 	try
 	{
 		PreparedStatement ps=con.prepareStatement("insert into contactus values(?,?,?)");
 		ps.setString(1,em);
 		ps.setString(2,mb);
 		ps.setString(3,msg);
 		int x=ps.executeUpdate();
 		if(x>0)
 		{
 			%>	
			<script>
			if(confirm("Submitted Successful!!"))
			{
				location="index.jsp";
			}
			else
			{
				location="index.jsp";
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