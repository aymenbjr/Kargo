<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<form class="form-horizontal" method="post" action="ajout_client">
<fieldset>

<!-- Form Name -->
<legend>Ajouter un nouveau Client (page réservé à l'administrateur)</legend>

<!-- Text input-->
<div class="form-group">

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
						
						
  <label class="col-md-4 control-label" for="titre">Nom</label>  
  <div class="col-md-4">
  <input id="product_id" name="nom" placeholder="Nom" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="description">Prenom</label>  
  <div class="col-md-4">
  <input id="prenom" name="product_name" placeholder="Prenom" class="form-control input-md" required="" type="text">
    
  </div>
</div>

 


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">Passwort</label>  
  <div class="col-md-4">
  <input id="product_name_fr" name="mdp" placeholder="Passwort" class="form-control input-md" required="" type="password">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">Adresse Mail</label>  
  <div class="col-md-4">
  <input id="product_name_fr" name="email" placeholder="Email" class="form-control input-md" required="" type="email">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">Adresse</label>  
  <div class="col-md-4">
  <input id="product_name_fr" name="adresse" placeholder="Adresse" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">Telephone</label>  
  <div class="col-md-4">
  <input id="product_name_fr" name="telephone" placeholder="Telephone" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">Fax</label>  
  <div class="col-md-4">
  <input id="product_name_fr" name="fax" placeholder="Fax" class="form-control input-md" required="" type="text">
    
  </div>
</div>
<!-- Select Basic -->
 


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton">  </label>
  <div class="col-md-4">
    <button type="submit" id="singlebutton" name="singlebutton" class="btn btn-primary">Ajouter</button>
  </div>
  </div>

</fieldset>


<a href="http://localhost:8080/Kargo/admin_commande"> Retourner à la liste des commandes</a>

</form>

