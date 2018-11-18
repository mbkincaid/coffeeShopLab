<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Welcome!</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
<div class = "headz">
  <h1>GC COFFEE</h1>
  
</div>
<br>
<div class = "body">
<h2>Welcome, ${user.firstName}!</h2>
<br>
<h5>Registration Details</h5>
<p>Name: ${user.first_name} ${user.last_name} </p>
<p>User Name: ${user.username}</p>
<h5>Thanks for registering!</h5>
</div>
</body>
</html>