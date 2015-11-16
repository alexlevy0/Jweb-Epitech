<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Création d'un client</title>
  <link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />
  <link rel="shortcut icon" href="../inc/images/Dead.jpg">
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
  <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"><link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
  <link rel="stylesheet" href="../inc/css/default.css">
</head>
<body>

<header id="header">
  <div id="head" class="parallax" parallax-speed="5">
    <h1 id="logo" class="text-center">
      <img class="img-circle" src="../inc/images/Dead.jpg" alt="">
      <span class="title">Factory</span>
      <span class="tagline">The new famous e-commerce<br>
      <a href="">bde-lyon@epitech.eu</a></span>
    </h1>
  </div>
  <nav class="navbar navbar-default navbar-sticky">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active">
            <a href="/home">Acceuil</a>
          </li>
          <li>
            <a href="/about">A propos</a>
          </li>
          <c:if test="${empty sessionScope.sessionUtilisateur}">
            <p>${sessionScope.sessionUtilisateur.email}</p>
            <li>
              <a href="/log">Login</a>
            </li>
          </c:if>
          <li>
            <a href="/deconnexion">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>


<c:import url="/inc/menu.jsp" />
<div>
  <form method="post" action="<c:url value="/creationClient"/>">
    <fieldset>
      <legend>Informations client</legend>
      <c:import url="/inc/inc_client_form.jsp" />
    </fieldset>
    <p class="info">${ form.resultat }</p>
    <input type="submit" value="Valider"  />
    <input type="reset" value="Remettre à zéro" /> <br />
  </form>
</div>
</body>
</html>