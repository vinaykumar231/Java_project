<%@include file="connect.jsp" %>
<%

int tid;
tid=Integer.parseInt(request.getParameter("id"));

		//out.println(un);	

PreparedStatement ps=con.prepareStatement("select  oqty from temp_cart where tcid=?");
ps.setInt(1,tid);
ResultSet rs=ps.executeQuery();
rs.next();
if(rs.getInt(1)>1)
{
	PreparedStatement ps1=con.prepareStatement("update temp_cart set oqty=oqty-1 where tcid=?");

	ps1.setInt(1,tid);
	int x=ps1.executeUpdate();
	if(x>0)
	{
	%>
	<script>
	location="showcart.jsp";
	</script>
	<%
	}

}
	%>