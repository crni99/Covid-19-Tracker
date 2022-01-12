<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
	<head>
		<meta charset="UTF-8"/>
		<title>States</title>
		<link href="https://bootswatch.com/5/superhero/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
			integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
			integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Covid-19 World Data Tracker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="all">All</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Continents</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="/continent/North America">North America</a>
            <a class="dropdown-item" href="/continent/Asia">Asia</a>
            <a class="dropdown-item" href="/continent/South America">South America</a>
            <a class="dropdown-item" href="/continent/Europe">Europe</a>
            <a class="dropdown-item" href="/continent/Africa">Africa</a>
            <a class="dropdown-item" href="/continent/Australia-Oceania">Australia-Oceania</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/countries">Countries</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="/states">States</a>
        </li>
        <li class="nav-item">
        <input type="text" id="Search" onkeyup="myFunction()" class="form-control" placeholder="Search all fields">
				<script>
					function myFunction() {
  					  var input = document.getElementById("Search");
					  var filter = input.value.toLowerCase();
					  var nodes = document.getElementsByClassName('card');
					
					  for (i = 0; i < nodes.length; i++) {
					    if (nodes[i].innerText.toLowerCase().includes(filter)) {
					      nodes[i].style.display = "inline-block";
					    } else {
					      nodes[i].style.display = "none";
					    }
					  }
					}
				</script>
      </li>
      </ul>
    </div>
  </div>
</nav>

<br>
<div style="width: 100%; max-width: 1200px; margin: 0 auto;">

<c:forEach items="${states}" var="item">
    <div class="card text-white bg-dark border-light mb-3" id="card" style="margin: 10px; max-width: 25rem; display:inline-block; width: 370px;">
  <div class="card-header">${item.state}</div>
  <div class="card-body">
    <h4 class="card-title"> <a href="state/${item.state}" target="_blank" class="text-warning"> <strong>${item.state}</strong></a></h4>
    <p class="card-text">Today cases: ${item.todayCases} <br> Today deaths: ${item.todayDeaths} </p>
  </div>
</div>
</c:forEach>

</div>
</body>
</html>