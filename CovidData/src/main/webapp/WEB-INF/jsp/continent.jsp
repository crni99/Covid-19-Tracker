<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
	<head>
		<meta charset="UTF-8"/>
		<title>Continents</title>
		<link href="https://bootswatch.com/5/superhero/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
			integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
			integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
		
	</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Covid-19 World Data</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="index">Home
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="all">All</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="continent">Continent</a>
		<span class="visually-hidden">(current)</span>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="country">Country</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="state">State</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<table class="table">
	<thead>
		<c:forEach items="${continent}" var="item">
		    <tr>
		      <th scope="col">Updated</th><th scope="col">${item.updated}</th>
		    </tr>
		    <tr>
		      <th scope="col">Cases</th><th scope="col">${item.cases}</th>
		    </tr>
		    <tr>
		      <th scope="col">Today Cases</th><th scope="col">${item.todayCases}</th>
		    </tr>
		    <tr>
		      <th scope="col">Deaths</th><th scope="col">${item.deaths}</th>
		    </tr>
		    <tr>
		      <th scope="col">Today Deaths</th><th scope="col">${item.todayDeaths}</th>
		    </tr>
		    <tr>
		      <th scope="col">Recovered</th><th scope="col">${item.recovered}</th>
		    </tr>
		    <tr>
		      <th scope="col">Today Recovered</th><th scope="col">${item.todayRecovered}</th>
		    </tr>
		    <tr>
		      <th scope="col">Active</th><th scope="col">${item.active}</th>
		    </tr>
		    <tr>
		      <th scope="col">Critical</th><th scope="col">${item.critical}</th>
		    </tr>
		    <tr>
		      <th scope="col">Cases Per One Million</th><th scope="col">${item.casesPerOneMillion}</th>
		    </tr>
		    <tr>
		      <th scope="col">Deaths Per One Million</th><th scope="col">${item.deathsPerOneMillion}</th>
		    </tr>
		    <tr>
		      <th scope="col">Tests</th><th scope="col">${item.tests}</th>
		    </tr>
		    <tr>
		      <th scope="col">Tests Per One Million</th><th scope="col">${item.testsPerOneMillion}</th>
		    </tr>
		    <tr>
		      <th scope="col">Population</th><th scope="col">${item.population}</th>
		    </tr>
		    <tr>
		      <th scope="col">Continent</th><th scope="col">${item.continent}</th>
		    </tr>
		    <tr>
		      <th scope="col">Active Per One Million</th><th scope="col">${item.activePerOneMillion}</th>
		    </tr>
		    <tr>
		      <th scope="col">Recovered Per One Million</th><th scope="col">${item.recoveredPerOneMillion}</th>
		    </tr>
		    <tr>
		      <th scope="col">Ctitical Per One Million</th><th scope="col">${item.criticalPerOneMillion}</th>
		    </tr>
		    <tr>
		    	<c:forEach items="${item.continentInfo}" var="entry">
		  			<th scope="col">Continent Info</th><th scope="col">Latitude: ${entry.latitude} <br> Longitude: ${entry.longitude}</th>
		    	</c:forEach>
		    </tr>
		     <tr>
		      <th scope="col">Countries</th><th scope="col">${item.countries}<br></th>
		    </tr>
		</c:forEach>
	</thead>
</table>


</body>
</html>