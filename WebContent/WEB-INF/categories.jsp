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

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

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
						<li><a ><i class="fa fa-user-o"></i> ${prenom } </a></li>
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
								<form  method ="post" action="recherche">
									<select class="input-select" name="option">
										<option value="0">Categories</option>
										<option value="1">DRY</option>
										<option value="1">OPEN TOP</option>
										<option value="1">FLAT RACK</option>
									</select>
									<input class="input" placeholder="Chercher ici" name="recherche">
									<button class="search-btn">Chercher</button>
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
						<li><a href="http://localhost:8080/Kargo/Acceuil">Acceuil</a></li>
						<li><a href="http://localhost:8080/Kargo/conteneur">Nos Conteneurs</a></li>
						<li class="active"><a href="http://localhost:8080/Kargo/categorie">Categories</a></li>
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
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="http://localhost:8080/Kargo/Acceuil">Acceuil</a></li>
							<li><a href="http://localhost:8080/Kargo/conteneur">Categories</a></li>
							
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
				<div class="row">
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop01.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Conteneur<br>Dry</h3>
								<a href="http://localhost:8080/Kargo/categorie?categorie_c=DRY" class="cta-btn">Catalogue <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop03.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Conteneur<br>Open Top</h3>
								<a href="http://localhost:8080/Kargo/categorie?categorie_c=OPEN TOP" class="cta-btn">Catalogue <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop02.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Conteneur<br>Flat Rack</h3>
								<a href="http://localhost:8080/Kargo/categorie?categorie_c=FLAT RACK" class="cta-btn">Catalogue <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- BREADCRUMB -->
		
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
			<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
				<!-- row -->
				<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Voir Aussi</h3>
							<div class="section-nav">
								
							</div>
						</div>
					</div>
				<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<!-- product -->
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
												<h3 class="product-name"><a href="#">H0 20 ft containers</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-info-circle"></i>Plus d'Info</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
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
												<button class="add-to-cart-btn"><i class="fa fa-info-circle"></i>Plus d'Info</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src=" ./img/product08.jpg" height="180" " alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">DRY</p>
												<h3 class="product-name"><a href="#">CONTENEUR DE STOCKAGE</a></h3>
										 
												<div class="product-rating">
												</div>
												
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-info-circle"></i>Plus d'Info</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src=" ./img/product09.jpg" height="180" " alt="">
											</div>
											<div class="product-body">
												<p class="product-category">OPEN TOP</p>
												<h3 class="product-name"><a href="#">1/50 CONTENEUR MAERSK 40 OPEN TOP</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-info-circle"></i>Plus d'Info</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src=" ./img/product10.jpg" height="180" " height="180"   alt="">
											</div>
											<div class="product-body">
												<p class="product-category">FLAT RACK</p>
												<h3 class="product-name"><a href="#">MSC FLAT RACK 1/50 CONTENEUR SCALE 20</a></h3>
										 
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
												
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-info-circle"></i>Plus d'Info</button>
											</div>
										</div>
										<!-- /product -->
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

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
									<li><a href="http://localhost:8080/Kargo/conteneur">Nos Conteneurs</a></li>
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
								<h3 class="footer-title">Suiver Nous</h3>
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
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> Projet Site de location des Conteneurs <i class="fa fa-heart-o"></i> by <a href="https://www.facebook.com/aymanebj"" target="_blank">Aymen Benjbara</a>
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
