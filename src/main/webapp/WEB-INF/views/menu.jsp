<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
	${menu}
	
	<table class="table">
			<thead>
				<th>Item</th><th>Description</th><th>Price</th>
			</thead>
			<tbody>
		
			<c:forEach items="${menu}" var="mi">
				<tr>
					<td>Name: ${cartItem.menuItem.name}</td>
					<td>Description: ${cartItem.menuItem.description}</td>
					<td>Price: ${cartItem.menuItem.price}</td>
				</tr>
			</c:forEach>
</body>
</html>