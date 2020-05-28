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
								<form method ="post" action="recherche">
									<select class="input-select">
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
								<div>
									<a href="http://localhost:8080/Kargo/login_utilisateur">
										<i class="fa fa-user-o"></i>
										<span>Mon Compte</span> 
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
									<div class="cart-dropdown">
										<div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product01.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>

											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product02.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
										</div>
										<div class="cart-summary">
											<small>3 Item(s) selected</small>
											<h5>SUBTOTAL: $2940.00</h5>
										</div>
										<div class="cart-btns">
											<a href="Cart.jsp">View Cart</a>
											<a href="checkout.html">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
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
						<li><a href="http://localhost:8080/Kargo/conteneur">Nos Conteneurs</a></li>
						<li><a href="http://localhost:8080/Kargo/conteneur">Categories</a></li>
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

		<!-- BREADCRUMB -->
				
				<p>
				
				
				<h1>Politique de Confidentialit�</h1>


<p>Date de prise d'effet: May 18, 2019</p>


<p>Kargo ("nous", "notre", "nos") exploite le site web Kargo.ma (ci-apr�s d�sign� par le terme "Service").</p>

<p>Cette page vous explique nos politiques en mati�re de collecte, d'utilisation et de communication des donn�es � caract�re personnel lorsque vous utilisez notre Service ainsi que les choix qui s'offrent � vous en ce qui concerne ces donn�es. Our Privacy Policy  for Kargo is created with the help of the <a href="https://www.freeprivacypolicy.com/free-privacy-policy-generator.php">Free Privacy Policy Generator</a>.</p>

<p>Nous utilisons vos donn�es pour fournir et am�liorer le Service. En utilisant le Service, vous consentez � la collecte et � l'utilisation d'informations conform�ment � la pr�sente politique. Sauf d�finition contraire dans la pr�sente Politique de Confidentialit�, les termes utilis�s dans la pr�sente Politique de Confidentialit� ont la m�me signification que dans nos Conditions G�n�rales qui sont disponibles sur Kargo.ma</p>

<h2>D�finitions</h2>
<ul>
    <li>
        <p><strong>Service</strong></p>
                <p>Par Service on entend le site web Kargo.ma exploit� par Kargo</p>
            </li>
    <li>
        <p><strong>Donn�es � caract�re personnel</strong></p>
        <p>Donn�es � Caract�re Personnel d�signe des donn�es concernant un individu vivant qui peut �tre identifi� � partir de ces donn�es (ou � partir de ces donn�es et d'autres informations en notre possession ou susceptibles d'entrer en notre possession).</p>
    </li>
    <li>
        <p><strong>Donn�es d'Utilisation</strong></p>
        <p>Les Donn�es d'Utilisation sont recueillies automatiquement et sont g�n�r�es soit par l'utilisation du Service, soit par l'infrastructure du Service proprement dite (par exemple, dur�e de consultation d'une page).</p>
    </li>
    <li>
        <p><strong>Cookies</strong></p>
        <p>Les cookies sont de petits fichiers enregistr�s sur votre dispositif (ordinateur ou dispositif mobile).</p>
    </li>
</ul>

<h2>Collecte et utilisation des donn�es</h2>
<p>Nous recueillons plusieurs types de donn�es � diff�rentes fins en vue de vous fournir notre Service et de l'am�liorer.</p>

<h3>Types de donn�es recueillies</h3>

<h4>Donn�es � Caract�re Personnel</h4>
<p>Lorsque vous utilisez notre Service, il est possible que nous vous demandions de nous fournir certaines donn�es personnelles nominatives qui peuvent servir � vous Contactez ou � vous identifier ("Donn�es � Caract�re Personnel"). Les donn�es personnelles nominatives peuvent comprendre, mais de mani�re non limitative:</p>

<ul>
                    <li>Cookies et Donn�es d'Utilisation</li>
</ul>

<h4>Donn�es d'Utilisation</h4>

<p>Nous pouvons �galement recueillir des informations relatives au mode d'acc�s et d'utilisation du Service ("Donn�es d'Utilisation"). Ces Donn�es d'Utilisation peuvent comprendre des informations telles que l'adresse de protocole Internet (c.-�-d. l'adresse IP) de votre ordinateur, le type de navigateur, la version du navigateur, les pages de notre Service que vous consultez, la date et l'heure de votre visite, le temps pass� sur ces pages, les identifiants uniques de dispositifs ainsi que d'autres donn�es de diagnostic.</p>

<h4>Suivi et donn�es de cookies</h4>
<p>Nous avons recours � des cookies et � d'autres technologies de suivi similaires pour effectuer un suivi des activit�s effectu�es dans notre Service, et nous conservons certaines informations.</p>
<p>Les cookies sont des fichiers � faible volume de donn�es pouvant comporter un identifiant unique anonyme. Les cookies sont envoy�s � votre navigateur depuis un site web et sont stock�s sur votre dispositif. D'autres technologies de suivi telles que les pixels, les balises et les scripts sont �galement utilis�es pour recueillir et suivre des informations et afin d'am�liorer et d'analyser notre Service.</p>
<p>Vous pouvez demander � votre navigateur de refuser tous les cookies ou de vous avertir lorsqu'un cookie est envoy�. Toutefois, si vous n'acceptez pas les cookies, il se peut que vous ne puissiez pas utiliser certains �l�ments de notre Service.</p>
<p>Exemples de cookies que nous utilisons :</p>
<ul>
    <li><strong>Cookies de Session.</strong> Nous utilisons des Cookies de Session pour faire fonctionner notre Service.</li>
    <li><strong>Cookies de Pr�f�rences.</strong> Nous utilisons des Cookies de Pr�f�rences pour m�moriser vos pr�f�rences et vos diff�rents param�tres.</li>
    <li><strong>Cookies de S�curit�.</strong> Nous utilisons des Cookies de S�curit� pour des raisons de s�curit�.</li>
</ul>

<h2>Utilisation des donn�es</h2> 

<p>Kargo utilise les donn�es recueillies � des fins diverses:</p>    
<ul>
    <li>Pour fournir et assurer notre Service</li>
    <li>Pour vous faire part des changements apport�s � notre Service</li>
    <li>Pour vous permettre d'utiliser les fonctions interactives de notre Service quand vous le souhaitez</li>
    <li>Pour assurer l'assistance client</li>
    <li>Pour recueillir des donn�es pr�cieuses ou d'analyses qui nous permettront d'am�liorer notre Service</li>
    <li>Pour contr�ler l'utilisation de notre Service</li>
    <li>Pour d�tecter, pr�venir et r�gler les probl�mes techniques</li>
</ul>

<h2>Transfert des donn�es</h2>
<p>Les informations vous concernant, notamment vos Donn�es � Caract�re Personnel, peuvent �tre transf�r�es de votre r�gion, province, pays, ou autre division territoriale vers des ordinateurs   et stock�es sur ces derniers   situ�s � un endroit o� la l�gislation relative � la protection des donn�es diff�re de celle du territoire o� vous r�sidez.</p>
<p>Si vous r�sidez hors de/du Morocco et que vous choisissez de nous communiquer des informations, sachez que nous transf�rons les donn�es, y compris les Donn�es � Caract�re Personnel, vers le/la Morocco et que nous les y traitons.</p>
<p>En acceptant la pr�sente Politique de Confidentialit� puis en soumettant ces informations, vous consentez � ce transfert.</p>
<p>Kargo prendra toutes les mesures raisonnablement n�cessaires pour faire en sorte que vos donn�es soient trait�es de mani�re s�curis�e et conform�ment � la pr�sente Politique de Confidentialit� et vos Donn�es � Caract�re Personnel ne seront transf�r�es vers aucune organisation ni aucun pays � moins que des contr�les ad�quats ne soient en place, notamment en ce qui concerne la s�curit� de vos donn�es et d'autres donn�es personnelles.</p>

<h2>Communication de donn�es</h2>

<h3>Exigences l�gales</h3>
<p>Kargo peut communiquer vos Donn�es � Caract�re Personnel si elle estime de bonne foi que cela est n�cessaire pour:</p>
<ul>
    <li>S'acquitter d'une obligation l�gale</li>
    <li>Prot�ger et d�fendre les droits ou les biens de Kargo</li>
    <li>Pr�venir d'�ventuels actes r�pr�hensibles ou enqu�ter sur de tels actes dans le cadre du Service </li>
    <li>Assurer la s�curit� personnelle des utilisateurs du Service ou du public</li>
    <li>Se prot�ger contre la responsabilit� civile</li>
</ul>

<h2>S�curit� des donn�es</h2>
<p>La s�curit� de vos donn�es nous tient � c ur. Toutefois, n'oubliez pas qu'aucune m�thode de transmission de donn�es par Internet ou m�thode de stockage �lectronique n'est s�re � 100 %. Bien que nous nous efforcions d'utiliser des m�thodes commercialement acceptables pour prot�ger vos Donn�es � Caract�re Personnel, nous ne pouvons pas leur garantir une s�curit� absolue.</p>

<h2>Prestataires de services</h2>
<p>Nous pouvons faire appel � des soci�t�s tierces et � des tierces personnes pour faciliter la prestation de notre Service ("Prestataires de Services"), assurer le Service en notre nom, assurer des services li�s au Service ou nous aider � analyser la fa�on dont notre Service est utilis�.</p>
<p>Ces tiers n'ont acc�s � vos Donn�es � Caract�re Personnel que pour effectuer ces t�ches en notre nom et il leur est interdit de les communiquer ou de les utiliser � quelle qu'autre fin. </p>



<h2>Liens pointant vers d'autres sites</h2>
<p>Il se peut que notre Service contienne des liens pointant vers d'autres sites que nous n'exploitons pas. Si vous cliquez sur un lien de tiers, vous serez redirig� vers le site de ce tiers. Nous vous recommandons vivement d'examiner la politique de confidentialit� de chacun des sites que vous consultez.</p>
<p>Nous n'avons aucun contr�le sur le contenu, les politiques ou pratiques de confidentialit� des sites ou services de tiers et d�clinons toute responsabilit� en ce qui les concerne.</p>


<h2>Vie priv�e des enfants</h2>
<p>Notre Service ne s'adresse pas aux personnes de moins de 18 ans ("Enfants").</p>
<p>Nous ne recueillons pas sciemment de donn�es personnelles nominatives aupr�s de personnes de moins de 18 ans. Si vous �tes un parent ou un tuteur et que vous savez que votre Enfant nous a communiqu� des Donn�es � Caract�re Personnel, veuillez nous Contactez. Si nous apprenons que nous avons recueilli des Donn�es � Caract�re Personnel aupr�s d'enfants sans v�rifier s'il y a consentement parental, nous faisons le n�cessaire pour supprimer ces informations de nos serveurs.</p>


<h2>Modifications de la pr�sente Politique de Confidentialit�</h2>
<p>Nous nous r�servons le droit d'actualiser notre Politique de Confidentialit� de temps � autre. Nous vous informerons de toute modification en publiant la nouvelle Politique de Confidentialit� sur cette page.</p>
<p>Avant que la modification ne prenne effet, nous vous en informerons par e-mail et/ ou en pla�ant un avis bien en vue dans notre Service et nous actualiserons la "date de prise d'effet" qui figure en haut de la pr�sente Politique de Confidentialit�.</p>
<p>Nous vous conseillons de consulter la pr�sente Politique de Confidentialit� p�riodiquement pour prendre connaissance de toute modification. Les modifications apport�es � la pr�sente Politique de Confidentialit� prennent effet lorsqu'elles sont publi�es sur cette page.</p>


<h2>Nous Contactez</h2>
<p>Pour toute question relative � la pr�sente Politique de Confidentialit�, veuillez nous Contactez:</p>
<ul>
        <li>Par courrier �lectronique: Kargo.GmbH@gmail.com</li>
          
        </ul>
        </p>
				
				
				
			
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
								<h3 class="footer-title">�ber uns</h3>
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
