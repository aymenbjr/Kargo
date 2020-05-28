<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Kargo</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<link type="text/css" rel="stylesheet" href="css/style8.css"/>
		
		<link type="text/css" rel="stylesheet" href="css/style2.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<link rel="stylesheet" href="css/style7.css" type="text/css" media="all" />
		
		<link type="text/css" rel="stylesheet" href="css/style5.css"/>
    </head>
	<body>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> 0623198124</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> Kargo.GmbH@gmail.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i>  Marjane 2,B.P. 15290  </a></li>
					</ul>
					<ul class="header-links pull-right">
						<li><a href="https://www.facebook.com/aymanebj"><i class="fa fa-user-o"></i> Benjbara </a></li>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="http://localhost:8080/Kargo/Acceuil" class="logo">
									<img src="./img/logo.png" alt="" width="200" height="65">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<select class="input-select">
										<option value="0">Categories</option>
										<option value="1">DRY</option>
										<option value="1">OPEN TOP</option>
										<option value="1">FLAT RACK</option>
									</select>
									<input class="input" placeholder="Chercher ici">
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->
						
						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="http://localhost:8080/Kargo/utilisateur_commande">
										<i class="fa fa-gear"></i>
										<span>Reglages</span>
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a href="http://localhost:8080/Kargo/deconnection">
										<i class="fa fa-user-o"></i>
										<span>Déconnection</span>
									</a>
									
								</div>
									
								</div>
							</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
					<li><a href="http://localhost:8080/Kargo/utilisateur_commande">Mes Commandes</a></li>
						<li><a href="http://localhost:8080/Kargo/parametre">Informations Personnels</a></li>
						<li class="active"><a href="http://localhost:8080/Kargo/reglage" alt="">Reglage </a></li>
						<li ><a href="http://localhost:8080/Kargo/contact" alt="">Contactez Nous </a></li>
						
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
				<div id="responsive-nav">
				<div class="box">
					<!-- Box Head -->
					
					<!-- End Box Head -->	

					<!-- Table -->
					<ul class="nav nav-tabs" id="myTab" role="tablist">
                               <li ><a href="http://localhost:8080/Kargo/utilisateur_edit" alt="">Modifier Informations Personnels </a></li>
                              <li class="active"><a href="http://localhost:8080/Kargo/utilisateur_mdp" alt="">Modifier Passwort</a></li>
                            </ul>
				</div>
</div>
<div class="wrapper" style2="background-image: url('images/bg-registration-form-1.jpg');">
				<div class="inner">
				<div class="image-holder">
					<img src="img/img-01.png" alt="">
				</div>
<form action="">
					<h3>Modifiez votre</h3><h3> Passwort</h3>
		    <div class="form-wrapper">
						<label>Passwort actuel</label>
						</div>
		    <div class="form-group pass_show"> 
                <input type="password" value="" class="form-control" required="" placeholder=""> 
            </div> 
		       <label>Nouveau Passwort</label>
            <div class="form-group pass_show"> 
                <input type="password" value="" class="form-control" required="" placeholder=""> 
            </div> 
		       <label>Confirmer Passwort</label>
            <div class="form-group pass_show"> 
                <input type="password" value="" class="form-control" required="" placeholder=""> 
            </div> <div class="text-center p-t-136">
						<a class="txt2" href= "">
							changer
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a></div>
		    
	</form>
</div>
			</div>
		</div>
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		

		<!-- FOOTER -->
		
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
		<script src="js/main3.js"></script>

	</body>
</html>
