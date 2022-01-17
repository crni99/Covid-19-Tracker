<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<title>Error</title>
<link href="https://bootswatch.com/5/superhero/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
</head>
<body>
	<div style="height: 10em; display: flex; align-items: center; justify-content: center; margin-top: 200px;">
		<h1>Something went wrong!</h1>
		<form action="http://localhost:8080/all" style="margin-left: 35px;">
			<button type="submit" class="btn btn-primary">HOME</button>
		</form>
	</div>
</body>
</html>