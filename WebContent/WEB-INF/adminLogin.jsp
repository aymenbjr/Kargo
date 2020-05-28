<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<link href="css/main.css" rel="stylesheet">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Admin</title>
</head>
<body>

<div class="container">

    <div class="wrapper">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Bienvenue Admin</h1>
            <div class="account-wall">
            <center>
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
                <img src="img/img-01.png"  width="200" height="200"
                    alt=""> 
                    </center>
                    <p>&nbsp;</p>
                <form action = "login_admin" method ="post" class="form-signin">
                <input type="text" name="user" class="form-control" placeholder="Nom" required autofocus>
                <input type="password" name="pass" class="form-control" placeholder="Passwort" required>
                <button  type="submit">connection
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
                <div class="text-center p-t-136">
						<a class="txt2" href="http://localhost:8080/Kargo/Acceuil">
						<i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
							Retourner a l'Acceuil
							
						</a>
					</div>
               
                </form>
			
            </div>
          
        </div>
    </div>
</div>
</body>
</html>