<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<link href='<spring:url value="/css/addPatient.css"/>'
	rel="stylesheet" />
<link href='<spring:url value="/css/jquery-ui.min.css"/>'
	rel="stylesheet" />
  <title>ADD PATIENT</title>
</head>

<body>
  <div class="main">
    <section class="signup">
      <div class="container">
        <div class="col-md-6 col-md-offset-3">
          <div class="signup-content">
          
          
            <form:form method="POST" id="signup-form" class="signup-form" action="commitAddDoctor" commandName="doctor">
              <h2 class="form-title">ADD DOCTOR</h2>
              <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="firstName" id="firstName" placeholder="First Name" required="required" />
              </div>
              
              
              <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="lastName" id="lastName" placeholder="Last Name" required="required" />  
              </div>
              
              
              <div class="form-group">
                <form:input type="number" class="form-control input-lg" path="age" id="age" min="13" max="100" placeholder="Age" required="required" />
              </div>

              <div class="form-group">
                <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo" id="gender"><span id="genderText">Gender</span></button>
                <div id="demo" class="collapse">
                  <div class="radio">
                    <label><form:input type="radio" path="gender" value="Male"/>Male</label>
                  </div>
                  <div class="radio">
                    <label><form:input type="radio" path="gender" value="Female"/> Female </label>
                  </div>
                </div>
              </div>



 
                       <div class="form-group">
              <div class="row">
		        <div class='col-sm-3'>
		            <div class="form-group">
		            
		                <!-- <div class='input-group date' id='datetimepicker1'  > -->
		                    <%-- <form:input type="text" name="dateofbirth" id="dateofbirth"> --%>
		                    
		                    <form:input type='text' class="form-control" id="mydate" placeholder='DOB' path="dob" />
		                <!-- </div> -->
		            </div>
		        </div>
    		</div>
    		</div>
			<script type="text/javascript">
						$(document).ready(function(){
							$('#mydate').datepicker({dateFormat: "dd-M-yy",
								changeMonth: true,
								changeYear: true
								});
							}
						)
						</script>
						
						
						
				 
				
              <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="contactNumber" id="contactNumber" placeholder="Contact Number" required="required"/>
              </div>
              
              
              
              <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="alternateContactNumber" id="alternateContactNumber" placeholder="Alternate Contact Number" required="required"/>
              </div>
              
              
              <div class="form-group">
                <form:input type="email" path="emailId" placeholder="Email" class="form-control input-lg" required="required" />
              </div>
              
                  
              <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="addressLine1" id="addressLine1" placeholder="Address Line 1" required="required"  onkeypress="this.style.width = ((this.value.length + 1) * 8) + 'px';"/>  
              </div>
              
               <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="addressLine2" id="addressLine2" placeholder="Address Line 2"  />  
              </div>
              
                   
                  <div class="form-group">
                <form:input type="number" class="form-control input-lg" path="zipCode" id="zipCode" placeholder="Zip Code"  />  
              </div>
              
              
                  <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="state" id="state" placeholder="State"  />  
              </div>
              
                   <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="city" id="city" placeholder="City"  />  
              </div>
              
              
              
              
              
			  
			  <div class="form-group">
                <form:input type="text" class="form-control input-lg" path="degree" id="degree" placeholder="Degree"  />  
              </div>
			  
			  <div class="form-group">
                <input type="text" class="form-control input-lg" path="" id="specialty" placeholder="Specialty"  />  
              </div>
			  
			    
			  <div class="form-group">
                <input type="number" class="form-control input-lg" path="workHours" id="workHours" min="1" max="24" placeholder="Work Hours" required />
              </div>
			  
			  
			  <div class="form-group">
                <input type="text" class="form-control input-lg" path="hospitalName" id="hospitalName" placeholder="Hospital/ Clinic Name"  />  
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

s