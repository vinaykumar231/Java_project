<%@include file="connect.jsp" %>
<%

try
{
	String mob=request.getParameter("mob");
	String ans=request.getParameter("ans");
PreparedStatement ps= con.prepareStatement("select cmob,secq,ans from customer where cmob=?");

ps.setString(1,mob);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	if(rs.getString(3).equals(ans))
	{
		out.print("1");
	}
	else
	{
		out.print("0");
	}
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