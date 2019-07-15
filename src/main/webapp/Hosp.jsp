<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* Bordered form */
html, body {   
 width: 100%;   
height: 100%;   
font-family: "Helvetica Neue", Helvetica, sans-serif;   
color: #444;   
-webkit-font-smoothing: antialiased;    background: #f0f0f0;
}
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
#container {
  padding: 16px;
}
label {
    color: #555;
    display: inline-block;
    margin-left: 15px;
    padding-top: 10px;
    font-size: 14px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="container">
<form class="form-group" id="contact" action="option2" method="post"style="width: 645px;" >
           
           
            
                <h1> Patient Registration</h1>
                <p>Fill in the details</p>
            </form>
<label for="firstname">First Name</label>
<input type="text" value="" name="first_name"></br>
<label>Last Name</label>
<input type="text" value="" name="last_name"></br>
<label>Gender</label>
<input type="radio" value="male" name="gender"   checked='checked'/>Male			    
<input type="radio" value="female" name="gender"  />Female</br>
<label>Date of birth</label>
<input type="text"  name="birth_date" value=""></br>
<label>Blood Group</label>
<select name="blood_group">
<option value="">Select Blood Group</option>
<option value="O+" >O+ </option>
<option value="O-" >O- </option>
<option value="A+" >A+ </option>
<option value="A-" >A- </option>
<option value="B+" >B+ </option>
<option value="B-" >B- </option>
<option value="AB+" >AB+ </option>
<option value="AB-" >AB- </option>
</select></br>
<label>Symptoms</label>
<textarea name="symptoms"> </textarea></br>
<label>Address</label>
<input type="text"  name="address" value=""></br>
<label> Diagnosis Report</label>
<input type="file" name="diagnosis"></br>
<label>Department</label>
<select name="Department for diagnosis">
<option value="">Select Department</option>
<option value="General Physician" >General Physician </option>
<option value="Neurology" >Neurology</option>
<option value="Gynaecology" >Gynaecology</option>
<option value="Ophthalmology" >Ophthalmology</option>
<option value="Haematology" >Haematology</option>
<option value="Orthopedics" >Orthopedics</option>
<option value="Gastroenterology" >Gastroenterology</option>
<option value="Oncology" >Oncology</option>
</select></br>
<label>Mobile</label>
<input type="text" readonly value="+91" name="phonecode">
<input type="text"  name="mobile" value=""></br>
<label>Email</label>
<input id="email" type="text"  name="email" value=""></br>
<label>User Name</label>
<input id="username" type="text"  name="username" value="" ></br>
<label>Password</label>
<input type="password"  name="password" value=""></br>
<a href="success.jsp">Submit</a>	
</div>
</body>
</html>
