<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <%@ page import="entities.Conteneur" %>
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
<legend>Modifier Conteneur n° ${ conteneurs.id_Conteneur} </legend>

<!-- Text input-->
<form action="modifier_conteneur" method="post">
				<div class="panel-primary">
				<table class="table table-striped">	
						<tr style="display: none"> 
							<th> <label >id: ( ce tr ne sera pas affiché, il sert a stocké l'id du Conteneur qu'on utilisera pour sa modification)</label> </th> <th><input type="text" class="form-control" name="id" value=${ conteneurs.id_Conteneur}> </th>
						</tr>
						<tr> 
							<th> <label >Titre:</label> </th> <th><input type="text" class="form-control" name="titre" value=${ conteneurs.titre}> </th>
						</tr>	
						<tr> 
							<th> <label  >Description:</label> </th> <th><input type="text" class="form-control"  name="description" value=${ conteneurs.description}> </th>
						</tr>
						<tr> 
							<th> <label  >Type:</label> </th> <th> <input type="text" class="form-control"  name="type" value=${ conteneurs.type}> </th>
						</tr>
						<tr> 
							<th> <label  >Taille:</label> </th> <th> <input type="text" class="form-control"  name="taille" value=${ conteneurs.taille}> </th>
						</tr>
						<tr> 
							<th> <label  >Prix:</label> </th> <th> <input type="text" class="form-control"  name="prix" value=${ conteneurs.prix}> </th>
						</tr>
						<tr> 
							<th> <label  >Poids:</label> </th> <th> <input type="text" class="form-control"  name="poids" value=${ conteneurs.poids}> </th>
						</tr>
						<tr> 
							<th> <label  >Capacite:</label> </th> <th> <input type="text" class="form-control"  name="capacite" value=${ conteneurs.capacite}> </th>
						</tr>
						<tr> 
							<th> <label  >Etat:</label> </th> <th> <input type="text" class="form-control"  name="etat" value=${ conteneurs.etat}> </th>
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


