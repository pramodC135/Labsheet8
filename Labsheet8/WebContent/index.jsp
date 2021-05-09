<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>

<link rel="stylesheet" href="Views/bootstrap.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class= "col-8">
				<h1 class="m-3"> Student Details</h1>
					
				<form id="formStudent"> 
					
					<!-- NAME -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Name: </span>
						</div>
						<input type="text" id="txtName" name="txtName">
						</div>
						
					<!-- GENDER -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Gender: </span>
						</div>
						&nbsp;&nbsp;Male
						<input type="radio" id="rdoGenderMale" name="rdoGender" value="Male">
						&nbsp;&nbsp;Female
						<input type="radio" id="rdoGenderFemale" name="rdoGender" value="Female">
					</div>
					
					<!-- YEAR -->
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName" >Year: </span>
						</div>
						<select id="ddlYear" name="ddYear">
							<option value="0">--Select Year-- </option>
							<option value="1">1st Year</option>
							<option value="2">2nd Year</option>
							<option value="3">3rd Year</option>
							<option value="4">4th Year</option>
						</select>
					</div>
					
					<div id="alertSuccess" class="alert alert-success"></div>
					<div id="alertError" class="alert alert-danger"></div>
					
					<input type="button" id="btnSave" value="Save" class="btn btn-primary">
				</form>
			</div>
			
		</div>
		<br>
		
		<div class="row">
			<div class="col-12" id="colStudents">
			
			</div>
		</div>
		
	</div>

</body>
</html>