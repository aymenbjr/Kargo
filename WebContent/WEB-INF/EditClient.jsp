<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <%@ page import="entities.Client" %>
    <%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Web.ConteneurServlet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

</head>

<!-- Form Name -->
<legend>Modifier Client n° ${ client.id_Client} </legend>

<!-- Text input-->
<form action="modifier_utilisateur" method="post">
				<div class="panel-primary">
				<table class="table table-striped">	
						<tr style="display: none"> 
							<th> <label >id: ( ce tr ne sera pas affiché, il sert a stocké l'id de l'utilisateur qu'on utilisera pour sa modification)</label> </th> <th><input type="text" class="form-control" name="id" value=${ client.id_Client}> </th>
						</tr>
						<tr> 
							<th> <label >nom:</label> </th> <th><input type="text" class="form-control" name="nom" value=${ client.nom}> </th>
						</tr>	
						<tr> 
							<th> <label  >prenom:</label> </th> <th> <input type="text" class="form-control"  name="prenom" value=${ client.prenom}> </th>
						</tr>
						<tr> 
							<th> <label  >Email:</label> </th> <th> <input type="email" class="form-control"  name="email" value=${ client.e_mail}> </th>
						</tr>
						<tr> 
							<th> <label  >Adresse:</label> </th> <th> <input type="text" class="form-control"  name="adresse" value=${ client.adresse}> </th>
						</tr>
						<tr> 
							<th> <label  >Tel:</label> </th> <th> <input type="text" class="form-control"  name="tel" value=${ client.tel}> </th>
						</tr>
						<tr> 
							<th> <label  >Fax:</label> </th> <th> <input type="text" class="form-control"  name="fax" value=${ client.fax}> </th>
						</tr>
						<tr> 
							<th> <label  >Passwort:</label> </th> <th> <input type="password" class="form-control"  name="mdp" placeholder="Nouveau Passwort"> </th>
						</tr>
				</table>		
					
				</div>				
				
				<div class="container col-md-3  ">
    				<input type="submit" onclick="return confirm('Êtes-vous sûr de bien vouloir modifier cet élément?');" name ="modifier"  value="modifier" class="btn btn-primary" />
    				
  				</div>
  				<!-- 	<div class="container col-md-3  ">
  						<input type="submit" class="btn btn-primary" name="Abbrechen" value="Abbrechen"/>
  					</div> -->
  					
       </form>
<!-- Select Basic -->
 


<!-- Button -->


