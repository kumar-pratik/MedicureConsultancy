<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicure Consultancy</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<!--<link href="<c:url value="/resources/static/style/index.css" />" rel="stylesheet">-->
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<script src="https://cdnjs/cloudfare.com/ajax/libs/html2pdf.js/0.9.1/html2pdf.bundle.min.js"></script>
 <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<style>
body {
    margin-top: 170px;
}
.well{
padding:47px;}


</style>
</head>
<body>
 <center><h1>Receipt</h1></center>
 <div class="container" id="invoice">
    <div class="">
        <div>
            
             
                 
               
            <div class="row">
                <div class="">
                   
                    <h2>Medicure Consultancy</h2>
                    <br>
                    Patient Name: ${paydetail.patientname}<br>
                    Doctor Name: ${paydetail.doctorname}<br>
                    Appt. id: ${paydetail.appid}<br>
                    <br>
                </div>
                <!-- <div>
                    <address>
                        <strong>Medicure Consultancy</strong>
                       
                        <br>
                        <abbr title="Phone">Phone:</abbr> 7985855652
                    </address>-->
                   <!--   Medicure Consultancy
                </div>
                <div>
                     <p>
                        <em>Date: 28 April,2020</em>
                    </p>
                    <p>
                        <em>Receipt #: 34522677W</em>
                    </p>
                </div>-->
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Appointment</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9"><em>${paydetail.specialist}</em></h4></td>
                         
                            <td class="col-md-1 text-center">Rs. 700</td>
                            <td class="col-md-1 text-center">Rs. 700</td>
                        </tr>
                    
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                            <p>
                                <strong>Tax: </strong>
                            </p></td>
                            <td class="text-center">
                            <p>
                                <strong>Rs. 700</strong>
                            </p>
                            <p>
                                <strong>Rs. 6.94</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>Rs. 706.94</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
             <!--    < class="btn btn-success btn-lg btn-block"  >Pay now</button>-->
               
                <a type="button" class="btn btn-success btn-lg btn-block" href="../loginUs/welcomePatient">
                 Pay now <span class="glyphicon glyphicon-chevron-right"></span>
                </a> 
                
                </div>
            </div>
        </div>
    </div>
    
    
   
 
</body>

</html>