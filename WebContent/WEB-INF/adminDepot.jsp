<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ page import="entities.Depot" %>
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
			    <li><a href="http://localhost:8080/Kargo/admin_conteneur" ><span>Gestion des Conteneurs</span></a></li>
			    <li><a href="http://localhost:8080/Kargo/admin_client"><span>Gestion des Clients</span></a></li>
			    <li><a href="http://localhost:8080/Kargo/admin_commande" ><span>Gestion des Commandes</span></a></li>
			    <li><a href="http://localhost:8080/Kargo/admin_depot" class="active"><span>Gestion des Depots</span></a></li>
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
			Depots
		</div>
		<!-- End Small Nav -->
			<c:if test="${succes != null }">
	<div style="color: green" role="alert">
  		<c:out value=" ${succes} "></c:out>
	</div>
</c:if>
<c:if test="${erreur != null }">
	<div style="color: red"" role="alert">
  		<c:out value=" ${erreur} "></c:out>
	</div>
</c:if>
		<!-- Message OK -->		
		
		<!-- End Message Error -->
		<br />
		<!-- Main -->
		<div id="main">
			<div class="cl">&nbsp;</div>
			
			<!-- Content -->
			<div id="content">
				
				<!-- Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2 class="left">Liste des depots</h2>
						
					</div>
					<!-- End Box Head -->	

					<!-- Table -->
					<div class="table">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th>Id Depot</th>
								<th>Id Conteneur</th>
								<th>Libelle du Depot</th>
								<th>Capacite du Depot</th>
								
								<th width="110" class="ac">Handlungen</th>
							</tr>
							<c:forEach items="${ depots }" var="depot">
							<tr>
								<td> ${depot.id_Depot } </td>
								<td> ${depot.id_Conteneur } </td>
								<td> ${depot.libelle_Depot } </td>
								<td> ${depot.capacite_Depot } </td>
								<td><a href="http://localhost:8080/Kargo/supprimer_depot?id_c=${depot.id_Depot }" class="ico del">Supprimer</a></td>
							</tr>
							</c:forEach>
						</table>
						
						
						<!-- Pagging -->
						<div class="pagging">
							<div class="left">Showing 1 of 2</div>
							<div class="right">
								<a href="#">Precedent</a>
								<a href="#">1</a>
								<a href="#">2</a>
								<span>...</span>
								<a href="#">Suivant</a>
							</div>
						</div>
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
				
				</div>
				<!-- End Box -->
			</div>
			<!-- End Sidebar -->
			
			<div class="cl">&nbsp;</div>			
		</div>
		<!-- Main -->
	</div>
</div>
<!-- End Container -->

<!-- Footer -->
<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
<div id="footer">
	<div class="shell">
		<span class="left">&copy; 2019 - Bachelor</span>
		<span class="right">
			Design by <a href="https://www.facebook.com/aymanebj" target="_blank" title="The Sweetest CSS Templates WorldWide">Benjbara</a>
		</span>
	</div>
	</div>
	</div>
</div>
</footer>
<!-- End Footer -->
	
</body>
</html>