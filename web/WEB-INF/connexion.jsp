<%--
  Created by IntelliJ IDEA.
  User: alexl
  Date: 07/11/2015
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Connexion</title>
  <link type="text/css" rel="stylesheet" href="../inc/form.css" />
</head>
<body>

<form method="post" action="<c:url value="/connexion"/>">
  <fieldset>
    <legend>Connexion</legend>
    <p>Vous pouvez vous connecter via ce formulaire.</p>

    <%--<label for="nom">Adresse email <span class="requis">*</span></label>--%>
    <input type="email" id="email" name="email" value="<c:out value="${utilisateur.email}"/>" size="20" maxlength="60" />
    <span class="erreur">${form.erreurs['email']}</span>

    <%--<label for="motdepasse">Mot de passe <span class="requis">*</span></label>--%>
    <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
    <span class="erreur">${form.erreurs['motdepasse']}</span>

    <input type="submit" value="Connexion" class="sansLabel" />

    <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>

    <c:if test="${!empty sessionScope.sessionUtilisateur}">
      <p class="succes">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.email}</p>
    </c:if>
  </fieldset>
</form>

</body>
</html>