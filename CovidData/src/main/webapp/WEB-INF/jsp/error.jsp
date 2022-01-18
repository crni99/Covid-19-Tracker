<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<div style="height: 10em; display: flex; align-items: center; justify-content: center; margin-top: 150px;">
		<div class="card text-white bg-dark border-light mb-3" id="card"
			style="margin: 10px; max-width: 35rem; display: inline-block; width: 500px;">
			<div class="card-header">Page Not Found!</div>
			<div class="card-body">
				<h4 class="card-title"></h4>
				<p class="card-text">Looks like you've followed a broken link or
					entered a URL that doesn't exist on this site.</p>
				<form action="http://localhost:8080/all" style="margin-left: 308px;">
					<button type="submit" class="btn btn-primary">Back to home page</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>