<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <%@ page import="entities.Conteneur" %>
    <%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Web.ConteneurServlet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Administration</title>
	<link rel="stylesheet" href="css/style6.css" type="text/css" media="all" />
</head>
<body>
<!-- Header -->
<div id="header">
	<div class="shell">
		<!-- Logo + Top Nav -->
		<div id="top">
			<h1><a href="http://localhost:8080/Kargo/Acceuil" class="logo">
									<img src="./img/logo2.png" alt="" width="200" height="65">
								</a></h1>
			<div id="top-navigation">
				Welcome <a><strong>Aymen</strong></a>
				<span>|</span>
				<a href="http://localhost:8080/Kargo/deconnection">Déconnection</a>
			</div>
		</div>
		<!-- End Logo + Top Nav -->
		
		<!-- Main Nav -->
		<div id="navigation">
			<ul>
			    <li><a href="http://localhost:8080/Kargo/admin_conteneur" class="active"><span>Gestion des Conteneurs</span></a></li>
			    <li><a href="http://localhost:8080/Kargo/admin_client"><span>Gestion des Clients</span></a></li>
			    <li><a href="http://localhost:8080/Kargo/admin_commande"><span>Gestion des Commandes</span></a></li>
			    <li><a href="http://localhost:8080/Kargo/admin_depot" ><span>Gestion des Depots</span></a></li>
			</ul>
		</div>
		<!-- End Main Nav -->
	</div>
</div>
<!-- End Header -->

<!-- Container -->
<div id="container">
	<div class="shell">
		
		<!-- Small Nav -->
		<div class="small-nav">
			<a href="#">Dashboard</a>
			<span>&gt;</span>
			Conteneurs
		</div>
		<!-- End Small Nav -->
		<!--  Des alerts bootstrap -->
<c:if test="${succes != null }">
	<H2 style="color: green" role="alert">
  		<c:out value=" ${succes} "></c:out>
	</H2>
</c:if>
<c:if test="${erreur != null }">
	<H2 style="color: red"" role="alert">
  		<c:out value=" ${erreur} "></c:out>
	</H2>
</c:if>
		
		<!-- Message OK -->		
		
		<!-- End Message Error -->
		<br />
		<!-- Main -->
		<div id="main">
			<div class="cl">&nbsp;</div>
			
			<!-- Content -->
			<div id="content">
				<div class="box">
					
					<!-- Box Head -->
					<div class="box-head">
						<h2>Management</h2>
					</div>
					<!-- End Box Head-->
					
					<div class="box-content">
						<a href="http://localhost:8080/Kargo/ajout_conteneur" class="add-button"><span>Ajouter un Conteneur</span></a>
						<div class="cl">&nbsp;</div>
						<div class="box-content">
						<a href="http://localhost:8080/Kargo/ajout_client" class="add-button"><span>Ajouter un Client</span></a>
						<div class="cl">&nbsp;</div>
						<!-- End Sort -->
						</div>
					</div>
				</div>
				<!-- Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2 class="left">Liste des Conteneurs</h2>
						 
					</div>
					<!-- End Box Head -->	

					<!-- Table -->
					<div class="table">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th>id_Conteneur</th>
								<th>titre</th>
								<th>Type</th>
								<th>Taille</th>
								<th>Prix</th>
								<th>Poids</th>
								<th>Capacite</th>
								<th>Etat</th>
								<th width="110" class="ac">Handlungen</th>
							</tr>
								<c:forEach items="${ conteneurs }" var="conteneur">
							<tr>
								<td> ${ conteneur.id_Conteneur}</td>
								<td> ${ conteneur.titre}</td>
								<td> ${ conteneur.type}</td>
								<td> ${ conteneur.taille}</td>
								<td> ${ conteneur.prix}</td>
								<td> ${ conteneur.poids}</td>
								<td> ${ conteneur.capacite}</td>
								<td> ${ conteneur.etat}</td>
								<td><a href="http://localhost:8080/Kargo/supprimer_conteneur?id_c=${ conteneur.id_Conteneur}" class="ico del">Supprimer</a><a href="http://localhost:8080/Kargo/modifier_conteneur?id_c=${ conteneur.id_Conteneur}" class="ico edit">Modifier</a></td>
							</tr> 
							</c:forEach>
						<!-- End Pagging -->
						
					</div>
					<!-- Table -->
					
				</div>
				<!-- End Box -->
				
				<!-- Box -->
				
				<!-- End Box -->

			</div>
			<!-- End Content -->
			
			<!-- Sidebar -->
			<div id="sidebar">
				
				<!-- Box -->
				
				<!-- End Box -->
			
			<!-- End Sidebar -->
			
			<div class="cl">&nbsp;</div>			
		</div>
		<!-- Main -->
	</div>
</div>
<!-- End Container -->

<!-- Footer -->
<!-- End Footer -->
	
</body>
</html>