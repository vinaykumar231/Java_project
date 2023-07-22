<%@page import="java.sql.*" %>   
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sportseq","root","");
%>
<%

int tid;
tid=Integer.parseInt(request.getParameter("id"));
String un=session.getAttribute("lgnuser").toString();
		//out.println(un);	
		
PreparedStatement ps1=con.prepareStatement("delete from temp_cart where tcid=?");
ps1.setInt(1,tid);
ps1.executeUpdate();
response.sendRedirect("showcart.jsp");

%>
