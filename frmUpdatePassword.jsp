<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connect.jsp" %>

<!doctype html>

 <html class="no-js" lang="">
<head>
    
 <title>SES | Customer Dashboard</title>
   <%@include file="cust_includes/alllinks.html" %>

   <script src=js/form_val.js></script>

   
      <style>
    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }

    </style>
</head>

<body>

<div class="container my-4">
		<div class="row justify-content-center my-4">
			<div class="col-6 shadow-none p-3 mb-5 bg-light rounded my-4">
				<form action=updatepasswordLogin.jsp id=frmPassword>
					<div class=form-label>Mobile</div>
                <input type=text name=txtMobile id=txtMobile class=form-control value="<%=request.getParameter("mob")%>" readonly>
                <span id=errMobile class="text-danger"></span>
                
					<div class=form-label>New Password</div>
					<input type=password name=txtPassword id=txtPassword class=form-control
						onkeyup="validatePassword(this,document.getElementById('errPassword'),'Password is Weak','Strong Pasword')"
						required> <span id=errPassword class=text-danger></span>
					<div class=form-label>Confirm New Password</div>
					<input type=password name=txtCPassword id=txtCPassword class=form-control
						onkeyup="validateConfirmPassword(this,document.getElementById('errCPassword'),'Password and confirm password doesnot match')"
						required> <span id=errCPassword class=text-danger></span>
					<div>
						<br>
					</div>
					<input type=button value="Update Password" class="btn btn-info"
						onclick="passwordUpdate()">

				</form>
			</div>


		</div>
	</div>

						
      
      
        <div class="clearfix"></div>
        <!-- Footer -->
 <%@include file="cust_includes/footer.jsp" %>

    <!-- /#right-panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
    <script src="assets/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
    <script src="assets/js/init/fullcalendar-init.js"></script>

    <!--Local Stuff-->
   </body>
</html>
