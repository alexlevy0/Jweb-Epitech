<%@ page import="java.io.PrintWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: alexl
  Date: 22/10/2015
  Time: 00:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login JWeb</title>
  <link rel="stylesheet" href="/inc/css/reset.css">
  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="/inc/css/style.css">
</head>
<body>
<div class="pen-title">
  <h1>Login JWeb</h1><span>JWeb <i class='fa fa-code'></i> by <a href='http://deadline-bde.com'>Flo/Alex</a></span>
</div>
<div class="rerun">
  <a href="/home" >Retour Acceuil</a></div>
<div class="rerun">
  <a href="/inscription" >Inscription</a></div>
<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <form method="post" action="<c:url value="/connexion"/>">
      <fieldset>
        <legend>Connexion</legend>
        <p>Vous pouvez vous connecter via ce formulaire.</p>

        <label for="nom">Adresse email <span class="requis">*</span></label>
        <input type="email" id="email" name="email" value="<c:out value="${utilisateur.email}"/>" size="20" maxlength="60" />
        <span class="erreur">${form.erreurs['email']}</span>
        <br>
        <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
        <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
        <span class="erreur">${form.erreurs['motdepasse']}</span>

        <input type="submit" value="Connexion" class="sansLabel" />

        <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>

        <c:if test="${!empty sessionScope.sessionUtilisateur}">
          <p class="succes">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.email}</p>
        </c:if>
      </fieldset>
    </form>


  <%--<form method="post" action="inscription">--%>
      <%--<fieldset>--%>
        <%--<legend>Login</legend>--%>
        <%--<p>Vous pouvez vous connecter via ce formulaire.  <span class="requis">* est un champs requis.</span> </p>--%>
        <%--<div class="input-container">--%>
          <%--<label for="nom"></label>--%>
          <%--<input type="text" id="nom" name="nom" value="" placeholder="Nom d'utilisateur" size="20" maxlength="20" />--%>
          <%--<span class="requis">*</span>--%>
          <%--<div class="bar"></div>--%>
          <%--<span class="erreur">${erreurs['nom']}</span>--%>
        <%--</div>--%>
        <%--<div class="input-container">--%>
          <%--<label for="motdepasse"></label>--%>
          <%--<input type="password" id="motdepasse" name="motdepasse" placeholder="Mot de passe" value="" size="20" maxlength="20" />--%>
          <%--<span class="requis">*</span>--%>
          <%--<div class="bar"></div>--%>
          <%--<span class="erreur">${erreurs['motdepasse']}</span>--%>
        <%--</div>--%>
        <%--<div class="button-container">--%>
          <%--<button><span> <input type="submit" value="Login" class="sansLabel" /></span></button>--%>
        <%--</div>--%>
        <%--<p class="${empty erreurs ? 'succes' : 'erreur'}">${resultat}</p>--%>
      <%--</fieldset>--%>
    <%--</form>--%>

  </div>
</div>
<!-- Portfolio <a id="portfolio" href="http://deadline-bde.com/" title="my portfolio!"><i class="fa fa-link"></i></a>
<!-- CodePen--><a id="codepen" href="../home.jsp" title="Deadline!"><i class="fa fa-angellist"></i></a>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>
</body>
</html>
