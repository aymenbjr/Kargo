<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<html>
	<head>
	
		<meta charset="utf-8">
		<title>Client Registration</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- style2 CSS -->
		<link rel="stylesheet" href="css/style2.css">
	</head>

	<body>

		<div class="wrapper" style2="background-image: url('images/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="images/registration-form-1.jpg" alt="">
				</div>
				
				<form  method="post" action="ajout_utilisateur" >
					<!--  Des alerts bootstrap -->
					<c:if test="${succes != null }">
						<div class="alert alert-success" role="alert">
					  		<c:out value=" ${succes} "></c:out>
						</div>
					</c:if>
					<c:if test="${erreur != null }">
						<div class="alert alert-danger" role="alert">
					  		<c:out value=" ${erreur} "></c:out>
						</div>
					</c:if>
					<h3>Inscrivez vous</h3>
					<div class="form-group">
						<input type="text" name="nom" placeholder="Nom" class="form-control">
						<input type="text" name = "prenom" placeholder="Prenom" class="form-control">
					</div>
					<div class="form-wrapper">
						<input type="password"  name="mdp" placeholder="Passwort" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
					<div class="form-wrapper">
						<input type="email" name="email" placeholder="Adresse Email" class="form-control">
						<i class="zmdi zmdi-email"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" name="adresse" placeholder="Adresse" class="form-control">
						<i class="zmdi zmdi-home"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" name="telephone" placeholder="Telephone" class="form-control">
						<i class="zmdi zmdi-phone"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" name="fax" placeholder="Fax" class="form-control">
						<i class="zmdi zmdi-email"></i>
					</div>
					<button  type="submit">S'inscrire
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
					<div class="text-center p-t-136">
						<a class="txt2" href="http://localhost:8080/Kargo/Acceuil">
							Retourner à l'acceuil
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
					<div class="text-center p-t-136">
						<a class="txt2" href="http://localhost:8080/Kargo/login_utilisateur">
							S'identifier
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>