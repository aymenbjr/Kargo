<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="entities.Conteneur" %>
    <%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Web.ConteneurServlet"%>
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
						<li><a href="https://www.facebook.com/aymanebj"><i class="fa fa-user-o"></i></a></li>
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
						<li ><a href="http://localhost:8080/Kargo/Acceuil">Acceuil</a></li>
						<li><a href="http://localhost:8080/Kargo/conteneur">Nos Conteneurs</a></li>
						<li><a href="http://localhost:8080/Kargo/conteneur">Categories</a></li>
						<li><a href="Ports.jsp" alt="">Ports Proches</a></li>
						<li><a href="http://localhost:8080/Kargo/contact" alt="">Contacter Nous </a></li>
						
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
				
				
				
			<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="http://localhost:8080/Kargo/Acceuil">Home</a></li>
							<li class="active">${ conteneur.titre }</li>
						</ul>
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
					<!-- Product main img -->
					<div class="col-md-5 col-md-push-2">
						<div id="product-main-img">
							<div class="product-preview">
								<img src="${ conteneur.image }" alt="">
							</div>
						</div>
					</div>
					<!-- /Product main img -->
					<div class="col-md-2  col-md-pull-5">
						<div>
							<div class="product-preview">
								<img alt="">
							</div>

							<div class="product-preview">
								<img alt="">
							</div>

							<div class="product-preview">
								<img alt="">
							</div>

							<div class="product-preview">
								<img alt="">
							</div>
						</div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">${ conteneur.titre }</h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<a class="review-link">+11 Avis</a>
							</div>
							<div>
					 		<h3 class="product-price">${ conteneur.prix } <del class="product-old-price">${ conteneur.prix + 1250 }</del></h3> 
								<span class="product-available">En Stock</span>
							</div>
							<p>${ conteneur.description }</p>

							<div class="product-options">
								<label>
									Etat : <strong> ${ conteneur.etat } </strong>								
								</label>
								<label>
									Capacité : <strong> ${ conteneur.capacite } </strong>									
								</label>
							</div>
							<c:if test="${idUtilisateur != null}">
								<a href="http://localhost:8080/Kargo/utilisateur_commande?id_c=${ conteneur.id_Conteneur }&&id_u=${idUtilisateur}" class="add-to-cart">
									<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Commander</button>
								</a>
							</c:if>
							<c:if test="${idUtilisateur == null}">
							<ul class="product-links">
								<li>Veuiller vous identifier pour pouvoir effectuer votre commande</li>
								</ul>
								<a href="http://localhost:8080/Kargo/login_utilisateur" class="add-to-cart">
									<button class="add-to-cart-btn" ><i class="fa fa-user"></i>S'identifier</button>
								</a>
							</c:if>

						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>
								<li><a data-toggle="tab" href="#tab2">Details</a></li>
								<li><a data-toggle="tab" href="#tab3">Avis (+11)</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
											<p>${ conteneur.description }</p>
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12">
											<p>
Equipment

Access door with lock
2 windows
Electricity, lights, heating
Ventilation
Dimensions
Length: 2989 mm, width: 2438 mm, height: 2591 mm

Inner dimensions
Length: 2769 mm, width: 2218 mm, height: 2304 mm.</p>
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">
													<li>
														<div class="review-heading">
															<h5 class="name">Ali</h5>
															<p class="date">Aujourd'hui</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Good Service, I highly recommend!</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">Driss</h5>
															<p class="date">Aujourd'hui</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Conteneurs de bonne qualité, rien que parfait!</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">Hamid</h5>
															<p class="date">Hier</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Site facile à utiliser, tout est clair, tout fonctionne parfaitement</p>
														</div>
													</li>
												</ul>
												<ul class="reviews-pagination">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
												</ul>
											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										
										<!-- /Review Form -->
									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
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

		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-12">
						<div class="section-title text-center">
							<h3 class="title">Voir aussi</h3>
						</div>
					</div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
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
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
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
					</div>
					<!-- /product -->

					<div class="clearfix visible-sm visible-xs"></div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
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
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=21">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
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
									<a  class="add-to-cart-btn" href="http://localhost:8080/Kargo/conteneur?id_c=22">Plus d'Info
								<!-- 		<button class="add-to-cart-btn"><i class="fa fa-info-circle" ></i>Plus d'Info</button> -->
										</a>
									</div>
										</div>
					</div>
					<!-- /product -->

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>

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
									<li><a href="http://localhost:8080/Kargo/conteneur">Categories</a></li>
									<li><a href="Ports.jsp">Ports Proches</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Information</h3>
								<ul class="footer-links">
									<li><a href="http://localhost:8080/Kargo/contact">Contacter Nous</a></li>
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
		<script src="js/main.js"></script>

	</body>
</html>
