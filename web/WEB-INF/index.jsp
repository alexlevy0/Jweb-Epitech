<%--
  Created by IntelliJ IDEA.
  User: alexl
  Date: 19/10/2015
  Time: 16:39
  To change this template use File | Settings | File Templates
--%>

<%@ page pageEncoding="UTF-8" %>
<html><head>
  <meta equiv="Content-Type" content="text/jsp;charset=UTF-8">
  <meta charset="utf-8">
  <meta name="viewport"    content="width=device-width, initial-scale=1.0">
  <title>Factory</title>
  <link rel="shortcut icon" href="../inc/images/Dead.jpg">
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
  <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"><link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
  <link rel="stylesheet" href="../inc/css/default.css">
</head>
<body class="home">

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
          <li class="active">
            <a href="/news">News</a>
          </li>
          <li class="active">
            <a href="/restriction">Admin</a>
          </li>
          <li>
            <a href="/about">A propos</a>
          </li>
          <%--<c:if test="${!empty sessionScope.sessionUtilisateur}">--%>
            <%--<p>${sessionScope.sessionUtilisateur.email}</p>--%>
            <%--<li><a href="/log">Login</a></li>--%>
          <%--</c:if>--%>
            <%--<li>--%>
              <%--<a href="/deconnexion">Logout</a>--%>
            <%--</li>--%>
          <c:choose>
            <c:when test="${!empty sessionScope.sessionUtilisateur}">
              <li>
                <a href="/deconnexion">Logout</a>
              </li>
            </c:when>
            <c:otherwise>
              <li><a href="/log">Login</a></li>
            </c:otherwise>
          </c:choose>
        </ul>
      </div>
    </div>
  </nav>
</header>

<main id="main">

  <div class="container">

    <div class="row section topspace">
      <div class="col-md-12">
        <p class="lead text-center text-muted">Laisser vous charmer par ces produits en vente flash !. </p>
      </div>
    </div> <!-- / section -->

    <div class="row section featured topspace">
      <h2 class="section-title"><span>Produits</span></h2>
      <div class="row">
        <div class="col-sm-6 col-md-3">
          <h3 class="text-center">Radiateur Chauffage central</h3>
          <img class="img-product" src="../inc/images/radiateur.jpg">
          <p class="txt-product">VOLTMAN Radiateur Chauffage central - 708 W- Radiateur eau chaude 6 Elements VOLTMAN Radiateur aluminium Norme NF hydraulique</p>
          <h2 style="color: #990000;text-align: center">125€</h2>
          <p class="text-center"><a href="/creationCommande" class="btn btn-action">Achetez maintenant</a></p>
        </div>
        <div class="col-sm-6 col-md-3">
          <h3 class="text-center">Machine expresso automatique</h3>
          <img class="img-product" src="../inc/images/expresso.jpg">
          <p class="txt-product">Machine à expresso - Broyeur integre - Puissance : 1400 W - Pression : 15 bars - Capacite du reservoir d'eau : 1 L - Nettoyage automatique du circuit - Broyeurs 100 % ceramique : rÃ©glable 5 niveaux - Chaudiere a  chauffe rapide - Bac d'egouttement compatible lave-vaisselle - Couleur : Noir</p>
          <h2 style="color: #990000;text-align: center">60€</h2>
          <p class="text-center"><a href="/creationCommande" class="btn btn-action">Achetez maintenant</a></p>
        </div>
        <div class="col-sm-6 col-md-3">
          <h3 class="text-center">SAMSUNG HT-H5550 Home Cinéma</h3>
          <img class="img-product" src="../inc/images/home_c.jpg">
          <p class="txt-product">Home Cinéma Blu-ray 3D/DVD 5.1 - HT-H5550 - Systeme 5.1, 1000W RMS - Decodeur multi formats - Crystal Amplifier Plus - Lecteur Blu-Ray 3D - Applications connectes et DLNA - Enceinte type Colonne - Bluetooth / Bluetooth PowerOn Dolby Digital Plus - Dolby True HD - 3D Sound - Tuner FM/RDS - DLNA - Wi-Fi intÃ©grÃ© - NFC - USB -Sortie HDMI - Antenne FM et TÃ©lÃ©commande fournies - Garantie 1 an</p>
          <h2 style="color: #990000;text-align: center">200€</h2>
          <p class="text-center"><a href="/creationCommande" class="btn btn-action">Achetez maintenant</a></p>
        </div>
        <div class="col-sm-6 col-md-3">
          <h3 class="text-center">THOMSON 55UA7706 Smart TV LED UHD 4K 3D</h3>
          <img class="img-product" src="../inc/images/tele.jpg">
          <p class="txt-product">THOMSON 55UA7706 Smart TV LED UHD 4K 3D 140cm (55") - Résolution : 3840x2160 pixels - Technologie 3D Active - 800Hz CMI - Smart TV 2.0 - Pure Image Ultra HD - Luminosite : 400 cd/m2 - Mega Contrast - Processeur Quad Core - Technologie 3D active - 4x HDMI 2.0 - 1 CMP - 3x USB (dont 1x USB 3.0) - DLNA - MHL - Prise pÃ©ritel - MIRACAST - Classe Ã©nergÃ©tique A
          <h2 style="color: #990000;text-align: center">305€</h2>
          <p class="text-center"><a href="/creationCommande" class="btn btn-action">Achetez maintenant</a></p>
        </div>
      </div>
    </div> <!-- / section -->
</main>
  <div class="non-floater">
    <iframe src="http://localhost:8180/news"></iframe>
  </div>
<style>
  .non-floater { overflow:hidden; }
  iframe { width:100%; padding:0; border:0; height:700px; }
</style>
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-3 widget">
        <h3 class="widget-title">Contact</h3>
        <div class="widget-body">
          <p>+234 23 9873237<br>
            <a href="mailto:#">lyon.bde@epitech.eu</a><br>
            <br>
            156 rue paul bert, 69003 Lyon
          </p>
        </div>
      </div>
      <div class="col-md-3 widget">
        <h3 class="widget-title">Follow me</h3>
        <div class="widget-body">
          <p class="follow-me-icons">
            <a href="https://twitter.com/deadlinebde"><i class="fa fa-twitter fa-2"></i></a>
            <a href="https://www.facebook.com/BDE-Deadline-769410893125773/"><i class="fa fa-facebook fa-2"></i></a>
          </p>
        </div>
      </div>
      <div class="col-md-3 widget">
        <h3 class="widget-title">Form widget</h3>
        <div class="widget-body">
          <p>+234 23 9873237<br>
            <a href="mailto:#">lyon.bde@epitech.eu</a><br>
            <br>
           156 rue paul bert , 69003 Lyon
          </p>
        </div>
      </div>

    </div> <!-- /row of widgets -->
  </div>
</footer>

<footer id="underfooter">
  <div class="container">
    <div class="row">

      <div class="col-md-6 widget">
        <div class="widget-body">
          <p>156 rue paul bert, 69003 Lyon </p>
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
