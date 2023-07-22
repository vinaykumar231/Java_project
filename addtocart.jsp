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
	
	int pid=Integer.parseInt(request.getParameter("pid"));
	//out.println(pid); 
	try
	{
	PreparedStatement ps= con.prepareStatement("select pname,bprice from product where productid=?");
	//prepareStatement("select bname,bprice from book where isbn=?");
	ps.setInt(1,pid);
	

	String mn;
	String pr;
	ResultSet rs=ps.executeQuery();
	rs.next();
	mn=rs.getString(1);
	pr=rs.getString(2);
	
	PreparedStatement psbill= con.prepareStatement("select max(bill_no)+1 from bill");
	ResultSet rsbill=psbill.executeQuery();
	rsbill.next();
	PreparedStatement ps1=con.prepareStatement("INSERT INTO `temp_cart`(`cuname`, `pid`,pname, `ostatus`, `itemprice`,oqty,bno) VALUES(?,?,?,?,?,?,?)");
	ps1.setString(1,un);
	ps1.setInt(2,pid);
	ps1.setString(3,mn);
	ps1.setString(4,"Addedincart");
	ps1.setString(5,pr);
	ps1.setInt(6,1);
	ps1.setString(7,rsbill.getString(1));

	
	int ans=ps1.executeUpdate();
	if(ans>0)
	{
%>
	
	<script>
	if(confirm("Item Added Successfully"))
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
			if(confirm("Error In Adding Item "))
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
	
	}
	catch(Exception e)
	{	out.println(e);
	}
	}


%>