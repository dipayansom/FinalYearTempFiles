<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>

<head>



	

  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type="text/javascript"
	src='<spring:url value="/Script/registration.js"/>'></script>
<script type="text/javascript"
	src='<spring:url value="/Script/jquery-ui.min.js"/>'></script>
	
	
	
	
	
	
	<link href='<spring:url value="/css/addMedicine.css"/>'
	rel="stylesheet" />
	
	

	
	
<link href='<spring:url value="/css/jquery-ui.min.css"/>'
	rel="stylesheet" />
	
	
	


<title>ADD MEDICINE</title>
</head>

<body>
	<div class="main">
		<section class="signup">
		<div class="container">
			<div class="col-md-6 col-md-offset-3">
				<div class="signup-content">
				
				
				
				
				
				
				
				
				
				
					          
            <form:form method="POST" id="signup-form" class="signup-form" action="commitAddMedicine" commandName="medicine">
              <h2 class="form-title">ADD MEDICINE</h2>
              <div class="form-group">
                <form:input type="textarea" class="form-control input-lg" path="medicineDescription" id="medicineDescription" placeholder="Medicine Description" required="required" />
              </div>
              
                 <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="cureFor" id="cureFor" placeholder="Cure For" required="required" />  
              </div>
              
              <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="manufacturingCompany" id="manufacturingCompany" placeholder="Manufacturing Company" required="required" />  
              </div>
              
              
              
           
              
              <div class="form-group">
                <form:input type="number" class="form-control input-lg" path="dosage" id="dosage"  min="0" max="5000" placeholder="Dosage" required="required" />
              </div>



              <div class="form-group">
                <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo" id="prescribedFor">
                	<span id="genderText">Prescribed For</span>
                </button>
                <div id="demo" class="collapse">
                  <div class="radio">
                    <label><form:input type="radio" path="prescribedFor" value="Adult"/>Adult</label>
                  </div>
                  <div class="radio">
                    <label><form:input type="radio" path="prescribedFor" value="Child"/> Child </label>
                  </div>
                </div>
              </div>

 			<div class="form-group">
                <form:input type="number" class="form-control input-lg" path="amount" id="amount"  min="0" max="50000" placeholder="Amount" required="required" />
              </div>



			  
         
              
                         <input type="submit" class="form-input" name="" id="submit" value="Add" />
            </form:form>

				</div>
			</div>
		</div>
		</section>
	</div>
</body>

</html>

