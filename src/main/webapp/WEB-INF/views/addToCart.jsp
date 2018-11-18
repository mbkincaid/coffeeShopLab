<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	>
<meta charset="UTF-8">
<title>Edit</title>
<link rel="stylesheet" href="/style.css" />

</head>
<body>
	<div class="headz">
		<h1>GC COFFEE</h1>

	</div>
	<span>
			Hello ${ profile.first_name } ${ profile.last_name }
		</span>
	<div class="container">
		<h1>Add Item to Cart</h1>
		<form action="/addCartItem?id=${item.id }" method="post">
		<table class="table">
			<tr>
				<th scope="row">Quantity</th>
				<td><input type="number" name="quantity" value=" " /></td>
			</tr>
			<tr>
				<th scope="row">Name</th>
				<td><input type="text" name="name" value="${item.name}" readonly/></td>
			</tr>
			<tr>
				<th scope="row">Price</th>
				<td><input type="text" name="price" value="${item.price}" readonly />
				
				</td>
			</tr>
		</table>
		<button type="submit" class="btn btn-primary">Add</button>
		<a class="btn link" href="/menu">Cancel</a>
		</form>
	</div>

</body>
</html>