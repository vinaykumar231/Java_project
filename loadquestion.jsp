<%@include file="connect.jsp" %>
<%

try
{
	String mob=request.getParameter("mob");

PreparedStatement ps= con.prepareStatement("select cmob,secq,ans from customer where cmob=?");

ps.setString(1,mob);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	out.println(rs.getString(2));
}
else
{
     out.println("No Questions Found !! Check Mobile");
}
}
catch(Exception e)
{
	out.println(e);
}

%>