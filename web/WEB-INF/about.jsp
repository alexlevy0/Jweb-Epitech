<%--
  Created by IntelliJ IDEA.
  User: norius
  Date: 21/10/2015
  Time: 07:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport"    content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">

  <title>About page</title>

  <link rel="shortcut icon" href="/inc/images/Dead.jpg">

  <!-- Bootstrap -->
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
  <!-- Icon font -->
  <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
  <!-- Fonts -->
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
  <!-- Custom styles -->
  <link rel="stylesheet" href="../inc/css/default.css">


</head>
<body>

<header id="header">
  <div id="head" class="parallax" parallax-speed="5">
    <h1 id="logo" class="text-center">
      <img class="img-circle" src="/inc/images/Dead.jpg" alt="">
      <span class="title">Factory</span>
			<span class="tagline">The new famous e-commerce<br>
				<a href="">bde-lyon@epitech.eu</a></span>
    </h1>
  </div>

  <nav class="navbar navbar-default">
    <div class="container-fluid">

      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>

      <div class="navbar-collapse collapse">

        <ul class="nav navbar-nav">
          <li><a href="/home">Acceuil</a></li>
          <li class="active"><a href="about.jsp">A propos</a></li>
          <%--<li class="dropdown">--%>
            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">More Pages <b class="caret"></b></a>--%>
            <%--<ul class="dropdown-menu">--%>
              <%--<li><a href="sidebar-left.jsp">Left Sidebar</a></li>--%>
              <%--<li><a href="sidebar-right.jsp">Right Sidebar</a></li>--%>
              <%--<li><a href="single.jsp">Blog Post</a></li>--%>
            <%--</ul>--%>
          <%--</li>--%>
          <c:choose>
            <c:when test="${!empty sessionScope.sessionUtilisateur}">
              <p class="succes">${sessionScope.sessionUtilisateur.email}</p>
              <li><a href="/deconnexion">Logout</a></li>
            </c:when>
            <c:otherwise>
              <li><a href="/log">Login</a></li>
            </c:otherwise>
          </c:choose>
        </ul>

      </div><!--/.nav-collapse -->
    </div>
  </nav>
</header>
<div>
    <div>
      <article class="col-sm-8 maincontent">
        <p><img src="/inc/images/team.jpg" alt="" class="" width="100%" style="margin-top: 25px;"></p>
        <p>La factory est le prolongement du BDE Deadline dans la mise en vente de produits derivé de la marque apposé Deadline.</p>
        <h3>Localisation</h3>
        <p>Nous sommes situés sur le boulevard marius vivier merle dans le 3eme arrondissement Lyonnais physiquement</p>
        <h3>Le bureau</h3>
        <p>Florian Goudot Président, Antonin Bouscarel Vice-Président, Axel Bourset, Trésorier, Geoffrey Rivory Secrétaire</p>
      </article>
    </div>  <!-- Article main content --><!-- /Article -->
</div>

<footer id="footer" class="topspace">
  <div class="container">
    <div class="row">
      <div class="col-md-3 widget">
        <h3 class="widget-title">Contact</h3>
        <div class="widget-body">
          <p>+234 23 9873237<br>
            <a href="mailto:#">lyon-bde@epitech.eu</a><br>
            <br>
156 rue paul bert , 69003 Lyon
          </p>
        </div>
      </div>

      <div class="col-md-3 widget">
        <h3 class="widget-title">Suivez-nous</h3>
        <div class="widget-body">
          <p class="follow-me-icons">
            <a href="https://twitter.com/deadlinebde"><i class="fa fa-twitter fa-2"></i></a>
            <a href="https://www.facebook.com/BDE-Deadline-769410893125773/"><i class="fa fa-facebook fa-2"></i></a>
          </p>
        </div>
      </div>

      <div class="col-md-3 widget">
        <h3 class="widget-title">Présentation</h3>
        <div class="widget-body">
          <p> De gauche à droite en haut (Mathurin, Florian, Axel, Antonin, Nicolas, Loic, Ben, Quentin, Geoffrey)</p>
          <p>De gauche a droite en bas (Maxime, Elliot, Sylvain, Alexandre, Nicolas)</p>
        </div>
      </div>
  </div>
    </div>
</footer>

<footer id="underfooter">
  <div class="container">
    <div class="row">

      <div class="col-md-6 widget">
        <div class="widget-body">
          <p>156 rue Paul Bert, 69003 Lyon</p>
        </div>
      </div>

      <div class="col-md-6 widget">
        <div class="widget-body">
          <p class="text-right">
            Copyright &copy; 2014,Deadline<br>
        </div>
      </div>

    </div> <!-- /row of widgets -->
  </div>
</footer>



<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="assets/js/template.js"></script>
</body>
</html>
