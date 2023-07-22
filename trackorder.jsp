<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp"%>
<%@include file="checklogin.jsp"%>


<!doctype html>

<html class="no-js" lang="">
<head>

<title>SES | Customer Dashboard</title>
<%@include file="cust_includes/alllinks.html"%>
<script src=js/form_val.js></script>
<script>

</script>


<style>
#weatherWidget .currentDesc {
	color: #ffffff !important;
}

.traffic-chart {
	min-height: 335px;
}

#flotPie1 {
	height: 150px;
}

#flotPie1 td {
	padding: 3px;
}

#flotPie1 table {
	top: 20px !important;
	right: -10px !important;
}

.chart-container {
	display: table;
	min-width: 270px;
	text-align: left;
	padding-top: 10px;
	padding-bottom: 10px;
}

#flotLine5 {
	height: 105px;
}

#flotBarChart {
	height: 150px;
}

#cellPaiChart {
	height: 160px;
}
</style>
</head>

<body>

	<%@include file="cust_includes/sidebar.jsp"%>
	<%@include file="cust_includes/header.jsp"%>

	<div class="container" style="padding-top: 10px;">
		<div class="row my-4 justify-content-center">
			<div class="col-10">
				<%

try
{
	String un=session.getAttribute("lgnuser").toString();
	PreparedStatement ps=con.prepareStatement("select * from bill where ostatus='Ordered' and cuname=?");
	ps.setString(1,un);
	ResultSet rs=ps.executeQuery();
	
%>
<h3 class="text-success text-center mb-4">You will get all the details of Latest Orders here </h3>
<table class="table table-hover"><tr class=table-primary><th>BillNo </th><th>Date </th><th>Bill Amount Rs.</th><th>User</th><th>Action</th></tr>

<%
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(6)+"</td><td>");
		%><a target=_blank href=viewlatestorder.jsp?billno=<%=rs.getString(1)%>&uname=<%=rs.getString(6)%> class="btn btn-warning">Get Order Details</a></td></tr>
		<% //out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getInt(11)+"</td><td><a class='btn btn-warning' style='width:80px;' data-toggle=modal data-target=#exampleModal  onclick=getBookData()>Edit</a></td></tr>");
		
	}
	out.println("</table>");	
}
catch(Exception e)
{
	out.println(e);
}

%>
			</div>
		</div>
	</div>
	

	<div class="clearfix"></div>
	<!-- Footer -->
	<%@include file="cust_includes/footer.jsp"%>

	<!-- /#right-panel -->

	<!-- Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="assets/js/main.js"></script>

	<!--  Chart js -->
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

	<!--Chartist Chart-->
	<script
		src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
	<script src="assets/js/init/weather-init.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
	<script src="assets/js/init/fullcalendar-init.js"></script>

	<!--Local Stuff-->
</body>
</html>
