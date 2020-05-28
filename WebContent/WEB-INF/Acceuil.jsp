<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="height=device-height, initial-scale=1">
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

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
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
					<c:choose>
					<c:when test="${session == null}">
						<ul class="header-links pull-right">
							<li><i class="fa fa-user-o"></i></li>
						</ul>
					</c:when>
					<c:when test="${session != null}">
						<ul class="header-links pull-right">
							<li><i class="fa fa-user-o"></i><a><% session.getAttribute("prenom"); %></a></li>
						</ul>
					</c:when>
					</c:choose>
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
							<div class="header-logo" >
								<a href="http://localhost:8080/Kargo/Acceuil" class="logo">
									<img src="./img/logo.png" alt="" width="200" height="65">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form method ="post" action="recherche">
									<select class="input-select" name="option" >
										<option value="0">Categories</option>
										<option value="1">DRY</option>
										<option value="2">OPEN TOP</option>
										<option value="3">FLAT RACK</option>
									</select>
									<input class="input" placeholder="Chercher ici" name="recherche" >
									<button class="search-btn">Chercher</button>
									</select>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<c:choose>
								<c:when test="${session == null}">
								<div>
									<a href="http://localhost:8080/Kargo/login_utilisateur">
										<i class="fa fa-user-o"></i>
										<span>Login</span>
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a href="http://localhost:8080/Kargo/conteneur">
										<i class="fa fa-shopping-cart"></i>
										<span>Produits</span>
										<div class="qty">+99</div>
									</a>
									
								</div>
								</c:when>
								<c:when test="${session != null}">
								<div>
									<a href="http://localhost:8080/Kargo/utilisateur_commande">
										<i class="fa fa-gear"></i>
										<span>Mon Compte</span>
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
								</c:when>
								</c:choose>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
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
						<li class="active"><a href="http://localhost:8080/Kargo/Acceuil">Acceuil</a></li>
						<li><a href="http://localhost:8080/Kargo/conteneur">Nos conteneurs</a></li>
						<li><a href="http://localhost:8080/Kargo/categorie">Categories</a></li>
						<li><a href="Ports.jsp" alt="">Ports Proches</a></li>
						<li><a href="http://localhost:8080/Kargo/contact" alt="">Contactez Nous </a></li>
						
						
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- SECTION -->
		
			<!-- container -->
				 
				<!--  Messages bootstrap de succes et d'erreur -->
			<div class="container">
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
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="./img/slid1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="./img/slid.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="./img/slid2.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
			<!-- /container -->
			
		<!-- /SECTION -->

		<!-- dSECTION -->
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Nouveaux Produits</h3>
							<div class="section-nav">
								
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1">
										<div class="product">
											<div class="product-img">
												<img src="./img/product01.jpg" height="180" alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">DRY</p>
												<h3 class="product-name"><a href="http://localhost:8080/Kargo/conteneur?id_c=1">conteneur DE STOCKAGE ISOLÉ</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=1">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
										<div class="product">
											<div class="product-img">
												<img src="./img/product02.jpg" height="180"   alt="">
												<div class="product-label">
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">OPEN TOP</p>
												<h3 class="product-name"><a href="http://localhost:8080/Kargo/conteneur?id_c=2">conteneur DE PENSEE  AWS 40 OPEN TOP</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=2">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
										<div class="product">
											<div class="product-img">
												<img src="./img/product03.jpg" height="180"   alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">DRY</p>
												<h3 class="product-name"><a href="http://localhost:8080/Kargo/conteneur?id_c=3">ABRI POUR conteneur D'EXPÉDITION DE 20</a></h3>
										 
												<div class="product-rating">
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=3">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
										<div class="product">
											<div class="product-img">
												<img src="./img/product04.jpg" height="180"   alt="">
											</div>
											<div class="product-body">
												<p class="product-category">FLAT RACK</p>
												<h3 class="product-name"><a href="http://localhost:8080/Kargo/conteneur?id_c=4">conteneur PLATEAU STOCKAGE SECHE</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=4">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
										<div class="product">
											<div class="product-img">
												<img src="./img/product05.jpg" height="180"   alt="">
											</div>
											<div class="product-body">
												<p class="product-category">OPEN TOP</p>
												<h3 class="product-name"><a href="http://localhost:8080/Kargo/conteneur?id_c=5">conteneur OUVERTE D'EXPÉDITION</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=5">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> 
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
		<div id="hot-deal" class="section">
		 
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="hot-deal">
						<!--
							<ul class="hot-deal-countdown">
								<li>
									<div>
										<h3>02</h3>
										<span>Days</span>
									</div>
								</li>
								<li>
									<div>
										<h3>10</h3>
										<span>Hours</span>
									</div>
								</li>
								<li>
									<div>
										<h3>34</h3>
										<span>Mins</span>
									</div>
								</li>
								<li>
									<div>
										<h3>60</h3>
										<span>Secs</span>
									</div>
								</li>
							</ul>
							-->
							<h2 class="text-uppercase">Essayer notre recherche avancée</h2>
							<p>pour une facilité de recherche</p>
							<a class="primary-btn cta-btn" href="http://localhost:8080/Kargo/recherche2">Recherche Avancée</a>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /HOT DEAL SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Meilleurs Ventes</h3>
							<div class="section-nav">
								
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<div class="product">
											<div class="product-img">
												<img src=" ./img/product06.jpg" height="180" " alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">DRY</p>
												<h3 class="product-name"><a href="#">H0 20 ft DRY containers</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=19">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
										<div class="product">
											<div class="product-img">
												<img src=" ./img/product07.jpg" height="180" " alt="">
												<div class="product-label">
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">FLAT RACK</p>
												<h3 class="product-name"><a href="#">1/50 SCALE 40 FLAT RACK AWS</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=20">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
										<div class="product">
											<div class="product-img">
												<img src=" ./img/product08.jpg" height="180" " alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">DRY</p>
												<h3 class="product-name"><a href="#">conteneur DE STOCKAGE</a></h3>
										 
												<div class="product-rating">
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=21">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
										<div class="product">
											<div class="product-img">
												<img src=" ./img/product09.jpg" height="180" " alt="">
											</div>
											<div class="product-body">
												<p class="product-category">OPEN TOP</p>
												<h3 class="product-name"><a href="#">1/50 conteneur MAERSK 40 OPEN TOP</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=22">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
										<div class="product">
											<div class="product-img">
												<img src=" ./img/product10.jpg" height="180" " height="180"   alt="">
											</div>
											<div class="product-body">
												<p class="product-category">FLAT RACK</p>
												<h3 class="product-name"><a href="#">MSC FLAT RACK 1/50 conteneur SCALE 20</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=23">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
							</div>
						</div>
					</div> 
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
<div id="hot-deal2" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="hot-deal">
						<!--
							<ul class="hot-deal-countdown">
								<li>
									<div>
										<h3>02</h3>
										<span>Days</span>
									</div>
								</li>
								<li>
									<div>
										<h3>10</h3>
										<span>Hours</span>
									</div>
								</li>
								<li>
									<div>
										<h3>34</h3>
										<span>Mins</span>
									</div>
								</li>
								<li>
									<div>
										<h3>60</h3>
										<span>Secs</span>
									</div>
								</li>
							</ul>
							-->
							<h2 class="text-uppercase" length=90px font color="red">Explorer comment les conteneurs sont fabriqués </h2>
							<p> </p>
							<a class="primary-btn cta-btn" href="video.jsp">Voir la Video</a>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
				<div class="row">
					<div class="col-md-4 col-xs-6">

						<div class="products-widget-slick" data-nav="#slick-nav-3">
							<div>
							
							</div>
						</div>
					</div>

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->


		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Über uns</h3>
								<p>Assurez-vous de noter ce Module avec 20</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i> Marjane 2,B.P. 15290 </a></li>
									<li><a href="#"><i class="fa fa-phone"></i>0623198124</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>Kargo.GmbH@gmail.com</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">NOTRE MARKETPLACE</h3>
								<ul class="footer-links">
								<li><a href="http://localhost:8080/Kargo/Acceuil">Acceuil</a></li>
									<li><a href="http://localhost:8080/Kargo/conteneur">Nos conteneurs</a></li>
									<li><a href="http://localhost:8080/Kargo/categorie">Categories</a></li>
									<li><a href="Ports.jsp">Ports Proches</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Information</h3>
								<ul class="footer-links">
									<li><a href="http://localhost:8080/Kargo/contact">Contactez Nous</a></li>
									<li><a href="Privacy%20Policy.jsp">Privacy Policy</a></li>
									<li><a href="Privacy%20Policy.jsp">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">suivez Nous</h3>
								<ul class="footer-links">
									 
									 
									 
									 
									 
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-payments">
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
								<li><a href=""><i class="fa fa-cc-amex"></i></a></li>
							</ul>
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> Projet Site de gestion des conteneurs Kargo <i class="fa fa-heart-o"></i> by <a href="https://www.facebook.com/aymanebj"" target="_blank">Aymen Benjbara</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>


						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
