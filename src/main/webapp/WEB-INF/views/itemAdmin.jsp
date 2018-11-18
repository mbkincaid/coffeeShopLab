<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Item Admin</title>
<link rel="stylesheet" href="/style.css" />

</head>
<body>
	<div class="headz">
		<h1>GC COFFEE</h1>

	</div>
	<span>
			Hello ${profile.first_name} ${profile.last_name}
		</span>
	<div class= "body">
	<h2>Item Admin Menu</h2>
	
	<table class="table table-sm">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Price</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
        <th scope="col">Edit/Delete</th>
    </tr>
  </thead>
	<tr>
	</tr>
	<c:forEach var = "item" items="${items}">
	<tr>
	<td>$<fmt:formatNumber type = "number" 
         pattern = "##.##" value = "${item.price}" /></td><td>${item.name}</td><td>${ item.description}</td>
         <td><a class="btn btn-secondary" href="/edit?id=${item.id }">Edit</a>
         <a class="btn btn-danger" href="/delete?id=${item.id }">Delete</a></td>
	</tr>
</c:forEach>
	</table>
	<a href="/add" class="btn btn-secondary">Add Item</a>
	<a href="/" class="btn btn-secondary">Home</a>
</div>

</body>
</html></html>