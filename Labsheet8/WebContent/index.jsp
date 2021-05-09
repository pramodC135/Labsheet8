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
							<span class="input-group-text" id="LbLName">Name: </span>
						</div>
						<input type="text" id="txtName" name="txtName">
					</div>
				
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