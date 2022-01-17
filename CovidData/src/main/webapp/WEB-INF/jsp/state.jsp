<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<title>State</title>
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
<style>
tr th:first-child {
	width: 65%;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Covid-19 World Data Tracker</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarColor02"
				aria-controls="navbarColor02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarColor02">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link" href="http://localhost:8080/all">All</a>
					</li>
					<li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" role="button" aria-haspopup="true" aria-expanded="false">Continents</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="http://localhost:8080/continent/North America">North America</a> 
							<a class="dropdown-item" href="http://localhost:8080/continent/Asia">Asia</a>
							<a class="dropdown-item" href="http://localhost:8080/continent/South America">South America</a> 
							<a class="dropdown-item" href="http://localhost:8080/continent/Europe">Europe</a>
							<a class="dropdown-item" href="http://localhost:8080/continent/Africa">Africa</a> 
							<a class="dropdown-item" href="http://localhost:8080/continent/Australia-Oceania">Australia-Oceania</a>
						</div>
					</li>
					<li class="nav-item"><a class="nav-link" href="http://localhost:8080/countries">Countries</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="http://localhost:8080/states">States</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div
		style="width: 100%; max-width: 960px; margin: 0 auto; margin-top: 25px;">

		<c:forEach items="${state}" var="item">
			<div class="card text-white bg-dark border-light mb-3" id="card"
				style="margin: 10px; max-width: 60rem; width: 960px;">
				<div class="card-header" style="text-align: center;">${item.state}</div>
				<div class="card-body">
					<p class="card-text">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Today Cases</th>
								<th scope="col">${item.todayCases}</th>
							</tr>
							<tr>
								<th scope="col">Today Deaths</th>
								<th scope="col">${item.todayDeaths}</th>
							</tr>
							<tr>
								<th scope="col">Today Recovered</th>
								<th scope="col">${item.todayRecovered}</th>
							</tr>
							<tr>
								<th scope="col">Cases</th>
								<th scope="col">${item.cases}</th>
							</tr>
							<tr>
								<th scope="col">Deaths</th>
								<th scope="col">${item.deaths}</th>
							</tr>
							<tr>
								<th scope="col">Recovered</th>
								<th scope="col">${item.recovered}</th>
							</tr>
							<tr>
								<th scope="col">Active</th>
								<th scope="col">${item.active}</th>
							</tr>
							<tr>
								<th scope="col">Tests</th>
								<th scope="col">${item.tests}</th>
							</tr>
							<tr>
								<th scope="col">Cases Per One Million</th>
								<th scope="col">${item.casesPerOneMillion}</th>
							</tr>
							<tr>
								<th scope="col">Deaths Per One Million</th>
								<th scope="col">${item.deathsPerOneMillion}</th>
							</tr>
							<tr>
								<th scope="col">Tests Per One Million</th>
								<th scope="col">${item.testsPerOneMillion}</th>
							</tr>
							<tr>
								<th scope="col">Population</th>
								<th scope="col">${item.population}</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>

		</c:forEach>
	</div>

</body>
</html>