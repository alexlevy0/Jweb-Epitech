<%--
  Created by IntelliJ IDEA.
  User: alexl
  Date: 04/11/2015
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="menu">
  <p><a href="<c:url value="/creationClient"/>">Créer un nouveau client</a></p>
  <p><a href="<c:url value="/creationCommande"/>">Créer une nouvelle commande</a></p>
  <p><a href="<c:url value="/listeClients"/>">Voir les clients existants</a></p>
  <p><a href="<c:url value="/listeCommandes"/>">Voir les commandes existantes</a></p>
</div>