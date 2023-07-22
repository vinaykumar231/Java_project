<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp" %>
<%@ page import="java.text.*" %>
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
	String price=request.getParameter("subtotal");
	Long gst=Math.round(Double.parseDouble(price)*0.18);
	Long grand=Math.round(Double.parseDouble(price)+gst);
	String st_gst=gst.toString();
	String st_grand=grand.toString();
	
	DateFormat df=new SimpleDateFormat("yyyy-M-dd");
	String dt=df.format(new java.util.Date());
	
	
	PreparedStatement ps1=con.prepareStatement("INSERT INTO `bill`(`subtotal`, `gst`, `grandtotal`, `billdate`, `cuname`, `ostatus`) VALUES (?,?,?,?,?,?)");
	ps1.setString(1,price);
	ps1.setString(2,st_gst);
	ps1.setString(3,st_grand);
	ps1.setString(4,dt);
	ps1.setString(5,un);
	ps1.setString(6,"Ordered");

	
	int ans=ps1.executeUpdate();
	if(ans>0)
	{
		PreparedStatement ps2=con.prepareStatement("select max(bill_no) from bill");
		ResultSet rsbno=ps2.executeQuery();
		rsbno.next();
		int billno=rsbno.getInt(1);
		PreparedStatement ps3=con.prepareStatement("update temp_cart set bno=?,ostatus=? where cuname=? and ostatus=?");
		ps3.setInt(1,billno);
		ps3.setString(2,"Ordered");
		ps3.setString(3,un);
		ps3.setString(4,"Addedincart");
		int bg=ps3.executeUpdate();
		if(bg>0)
		{
%>
	
	<script>
	if(confirm("Order Placed Successfully"))
	{	
		location="trackorder.jsp";
	}
	else
	{
		location="trackorder.jsp";
	}

	</script>
	
<%
}
	else
	{
		%>
		<script>
			if(confirm("Error In Placing order "))
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
	}
	catch(Exception e)
	{	out.println(e);
	}
	}


%>