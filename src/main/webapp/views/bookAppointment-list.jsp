<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicure Consultancy</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
 <link href="<c:url value="/resources/static/style/appointment-list.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<style>
table{
  width:100%!important;
}
button{
	    background-color: #dae0e5!important;
	    padding: 5px 5px!important;
width: 100%!important;
color:black;
margin-top:5px;
margin-botton:5px;
}
.accept{
background-color:#CCCCFF!important;
}
.reject{
background-color:#FF9999!important;
}
img{
margin-left:0px!important;
margin-right:0px!important;}
body{
font-family: "Karma", sans-serif!important;
}
</style>
</head>
<body>
<div class="fixed-header">
         <div class="container">
            <nav>
            <img src="<c:url value="/resources/static/images/logo-edited.png"/>"/>
             <a href="../loginUs/welcomePatient">Home</a>
               <a href="../loginUs/doctor">Doctor</a>
                
                <a href="../loginUs/bookapp">Book Appointment</a>
              
                <a href="../loginUs/logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>
           

          
                
            </nav>
        </div>
    </div>
	<div class="container">
			
		
			<div class="panel panel-info">
				<div class="panel-heading"><br><br><br>
					<center><div  class="w3-button w3-white w3-padding-large w3-large w3-margin-top" style="color:black;padding: 8px 10px!important;font-size:30px;margin-left:340px">Appointment Details</div></center><br><br>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th><center>AId</center></th>
							<th><center>DId</center></th>
							<th><center>Doctor Name</center></th>
							<th><center>Specialist</center></th>
							<th><center>Symptom</center></th>
							<th><center>Status</center></th>
							<th><center>Selected Date</center></th>
							<th><center>Payment</center></th>
							<th><center>Prescription</center></th>
							<th><center>Action</center></th>
							
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempBookAppointment" items="${appList}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="patientId" value="${tempBookAppointment.patientId}" />
							</c:url>
							<c:url var="cancelLink" value="/loginUs/cancelAppointment">
								
								<c:param name="app_id" value="${tempBookAppointment.appid}" />
							</c:url>
							<c:url var="showPresPage" value="/loginUs/displayPresFromHistory">
								<c:param name="app_id" value="${tempBookAppointment.appid}" />
							</c:url>
					
							
							<tr bgcolor="">
								<td><center>${tempBookAppointment.appid}</center></td>
								<Td><center>${tempBookAppointment.doctorid}</center></Td>
								<td><center>${tempBookAppointment.doctorname}</center></td>
								
	
<td><center>${tempBookAppointment.specialist}</center></td>
<td><center>${tempBookAppointment.symptom}</center></td>
	<!--  <td>${tempBookAppointment.status}</td>-->
	
	<td>
	<c:choose>
    						<c:when test="${tempBookAppointment.status == 'Rejected'}">
							<center><button class="reject" disabled>${tempBookAppointment.status}</button></center>
							</c:when>
							
							<c:when test="${tempBookAppointment.status == 'Accepted'}">
							<center><button class="accept" disabled>${tempBookAppointment.status}</button></center>
							</c:when>
							
							<c:otherwise>
							
							<center><button>${tempBookAppointment.status}</button></center>
							
							</c:otherwise>
							</c:choose>
	</td>
	
	<!--  <td>${tempBookAppointment.selectedDate}</td>-->
	
	
	<td><c:choose>
    						<c:when test="${tempBookAppointment.selectedDate == 'Not Confirmed'}">
							<center>${tempBookAppointment.selectedDate}</center>
							</c:when>
							
							<c:otherwise>
							
							<center><button class="accept">${tempBookAppointment.selectedDate}</button></center>
							
							</c:otherwise>
							
							</c:choose>
							</td>
							<td><center>${tempBookAppointment.payment}</center></td>
							
							<td>
							<c:choose>
  							<c:when test="${tempBookAppointment.prescription == ''}">
   							<center>Not available</center>
  							</c:when>
  							
  							<c:otherwise>
    						<center><button><a href="${showPresPage}">View</a></button></center>
							</c:otherwise>
							</c:choose>
							</td>
							
	<td><center><a href="${cancelLink}">Cancel</a></center></td>						

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
			</div>

</body>

</html>