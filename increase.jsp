<%@include file="connect.jsp" %>
<%

int tid;
tid=Integer.parseInt(request.getParameter("id"));

		//out.println(un);	

PreparedStatement ps1=con.prepareStatement("update temp_cart set oqty=oqty+1 where tcid=?");

ps1.setInt(1,tid);
int x=ps1.executeUpdate();
if(x>0)
{
%>
<script>
location="showcart.jsp";
</script>
<%}
%>