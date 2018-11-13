<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Info</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
	
    <h1>You are registered as:</h1>
		<ul class="form">
			<li> Name: ${user.firstname} ${ user.lastname} </li>
  			<li> Phone number: ${number}</li>
  			<li> Email: ${email}</li>
		</ul>
		<h1><a href="/registration">Back to Registration Page</a></h1>
		<h1><a href="/">Home Page</a></h1>
    
</div>
	
</body>
</html>