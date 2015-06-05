<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Grupa 6 - Projekt</title>
	<meta name="description" content="Konferencja">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
	<style>
        .jumbotron {    
    color: whitesmoke;
    background-image: url('${pageContext.request.contextPath}/resources/gfx/technology-662833_1280.jpg');
    text-shadow: black 0.4em 0.6em 0.2em;
}
        h1 {
    text-align: center;
    font-weight: bold;
}
        h2 {
    text-align: center;
    font-weight: bold;
}
        p.main {
    text-align: justify;
}

	</style>

</head>

<body>
<div class="container">
    <hr>
    <!-- jumbotron -->
  <div class="jumbotron">
      <h1><b>Zapraszamy na konferencję!</b></h1>           
  </div>
    <hr>

  <!-- menu po lewej -->
  <div class="row">
      <div class="col-md-2">
      <ul class="nav nav-pills nav-stacked no-active">
      
        <c:choose>
            <c:when test="${not empty pageContext.request.remoteUser}">
                <li><a href="${pageContext.request.contextPath}/konto" onmouseover="" style="cursor: pointer;">Moje konto</a></li>
            </c:when>
        </c:choose>
      
        <li><a href="${pageContext.request.contextPath}/" onmouseover="" style="cursor: pointer;">Strona główna</a></li>
        <li><a href="${pageContext.request.contextPath}/konferencja" onmouseover="" style="cursor: pointer;">O konferencji</a></li>
        <li><a href="${pageContext.request.contextPath}/program" onmouseover="" style="cursor: pointer;">Program</a></li>
        <li><a href="${pageContext.request.contextPath}/prelegenci" onmouseover="" style="cursor: pointer;">Prelegenci</a></li>
        <c:choose>
            <c:when test="${not empty pageContext.request.remoteUser}">
                <li><a href="${pageContext.request.contextPath}/j_spring_security_logout" onmouseover="" style="cursor: pointer;">Wyloguj się</a></li>
            </c:when>
            <c:otherwise>
                <li><a onmouseover="" style="cursor: pointer;" data-toggle="modal" data-target="#loginModal">Logowanie</a></li>
                <li><a onmouseover="" style="cursor: pointer;" data-toggle="modal" data-target="#signModal">Rejestracja</a></li>
            </c:otherwise>
        </c:choose>
        <li class="divider"></li>
        <li><a onmouseover="" style="cursor: pointer;" data-toggle="modal" data-target="#autorsModal">O autorach</a></li>
        <li><a onmouseover="" style="cursor: pointer;" data-toggle="modal" data-target="#contactModal">Kontakt</a></li>
        <li><a href="${pageContext.request.contextPath}/test" onmouseover="" style="cursor: pointer;">Dla testerów</a></li>
      </ul>
      </div>
