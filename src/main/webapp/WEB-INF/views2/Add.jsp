<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Add an Item</h1>
		
		<form action="/add" method="post">
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<th scope="row">Description</th>
				<td><input type="text" name="description"/></td>
			</tr>
			<tr>
				<th scope="row">Price</th>
				<td><input type="number" name="price"/></td>
			</tr>
			<tr>
				<th scope="row">Quantity</th>
				<td><input type="number" name="quantity"/></td>
			</tr>
		</table>
		<button type="submit" class="btn btn-primary" href="/add">Add new item</button>
		</form>
	</div>

</body>
</html>