<%--
  Created by IntelliJ IDEA.
  User: alexl
  Date: 07/11/2015
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Liste des clients existants</title>
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
<div id="corps">
  <c:choose>
    <%-- Si aucun client n'existe en session, affichage d'un message par défaut. --%>
    <c:when test="${ empty sessionScope.clients }">
      <p class="erreur">Aucun client enregistré.</p>
    </c:when>
    <%-- Sinon, affichage du tableau. --%>
    <c:otherwise>
      <table>
        <tr>
          <th>Nom</th>
          <th>Prénom</th>
          <th>Adresse</th>
          <th>Téléphone</th>
          <th>Email</th>
          <th class="action">Action</th>
        </tr>
          <%-- Parcours de la Map des clients en session, et utilisation de l'objet varStatus. --%>
        <c:forEach items="${ sessionScope.clients }" var="mapClients" varStatus="boucle">
          <%-- Simple test de parité sur l'index de parcours, pour alterner la couleur de fond de chaque ligne du tableau. --%>
          <tr class="${boucle.index % 2 == 0 ? 'pair' : 'impair'}">
              <%-- Affichage des propriétés du bean Client, qui est stocké en tant que valeur de l'entrée courante de la map --%>
            <td><c:out value="${ mapClients.value.nom }"/></td>
            <td><c:out value="${ mapClients.value.prenom }"/></td>
            <td><c:out value="${ mapClients.value.adresse }"/></td>
            <td><c:out value="${ mapClients.value.telephone }"/></td>
            <td><c:out value="${ mapClients.value.email }"/></td>
              <%-- Lien vers la servlet de suppression, avec passage du nom du client - c'est-à-dire la clé de la Map - en paramètre grâce à la balise <c:param/>. --%>
            <td class="action">
              <a href="<c:url value="/suppressionClient"><c:param name="nomClient" value="${ mapClients.key }" /></c:url>">
                <img src="<c:url value="/inc/supprimer.png"/>" alt="Supprimer" />
              </a>
            </td>
          </tr>
        </c:forEach>
      </table>
    </c:otherwise>
  </c:choose>
</div>
</body>
</html>