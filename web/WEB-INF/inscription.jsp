<%--
  Created by IntelliJ IDEA.
  User: alexl
  Date: 04/11/2015
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Inscription</title>
<!--  <link type="text/css" rel="stylesheet" href="../inc/form.css" /> -->
  <link rel="stylesheet" href="../inc/css/reset.css">
  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="../inc/css/style.css">
</head>
<body>
  <div class="pen-title">
    <h1>Inscription JWeb</h1><span>JWeb <i class='fa fa-code'></i> by <a href='http://deadline-bde.com'>Flo/Alex</a></span>
  </div>
  <div class="rerun">
    <a href="/home" >Retour acceuil</a></div>
  <div class="rerun">
    <a href="/log" >Login</a></div>
  <div class="container">
    <div class="card"></div>
    <div class="card">
      <h1 class="title">Inscription</h1>

      <form method="post" action="inscription">
        <fieldset>
          <legend>Inscription</legend>
          <p>Vous pouvez vous inscrire via ce formulaire.</p>

          <label for="email">Adresse email <span class="requis">*</span></label>
          <input type="email" id="email" name="email" value="<c:out value="${param.email}"/>" size="20" maxlength="60" />
          <span class="erreur">${erreurs['email']}</span>
          <br />

          <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
          <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
          <span class="erreur">${erreurs['motdepasse']}</span>
          <br />

          <label for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label>
          <input type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" />
          <span class="erreur">${erreurs['confirmation']}</span>
          <br />

          <label for="nom">Nom d'utilisateur</label>
          <input type="text" id="nom" name="nom" value="<c:out value="${param.nom}"/>" size="20" maxlength="20" />
          <span class="erreur">${erreurs['nom']}</span>
          <br />

          <input type="submit" value="Inscription" class="sansLabel" />
          <br />

          <p class="${empty erreurs ? 'succes' : 'erreur'}">${resultat}</p>
        </fieldset>
      </form>

    </div>
  </div>
</body>
</html>