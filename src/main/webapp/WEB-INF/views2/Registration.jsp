<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
<title>Registration Page</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="column">
    	</div>
		<div class="column">
			<form action="/user" method="post">
				<h3 class="form">
					First Name:<br> 
					<input name="firstname" required minlength="2" maxlength="20"/>
				</h3>	
				<h3 class="form">
					Last Name:<br>
					<input name="lastname" required minlength="2" maxlength="30"/>
				</h3>
				<h3 class="form">
					Email:<br> 
					<input name="email"/>
				</h3>
				<h3 class="form">
					Phone Number:<br> 
					<input name="number"/>
				</h3>
				<h3 class="form">
					Password:<br> 
					<input name="password required minlength="6" maxlength="26"" />
				</h3>
				<h3 class="form">
					<button>Submit Registration</button>
				</h3>		
			</form>
		</div>
	</div>
</div>
	
</body>
</html>