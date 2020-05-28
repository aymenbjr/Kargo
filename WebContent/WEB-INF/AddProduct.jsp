<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

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

<br/>


<form class="form-horizontal" method="post" action="ajout_conteneur" >
<fieldset>

<!-- Form Name -->
<legend>Ajouter conteneur</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="titre">Titre</label>  
  <div class="col-md-4">
  	<input id="product_id" name="titre" placeholder="Titre" class="form-control input-md" required="" type="text">    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="description">Description</label>  
  <div class="col-md-4">
  <input id="product_name" name="description" placeholder="Description" class="form-control input-md" required="" type="text">
    
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="type">Type</label>
  <div class="col-md-4">
    <select id="type" name="type" placeholder="Type" class="form-control">
   		<option val="" disabled>Type</option>
        <option val="DRY">Dry</option>
        <option val="OPEN TOP">Open Top</option>
        <option val="FLAT RACK">Flat Rack</option>
    </select>
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">Taille</label>  
  <div class="col-md-4">
  <input id="product_name_fr" name="taille" placeholder="Taille" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="available_quantity">Prix</label>  
  <div class="col-md-4">
  <input id="available_quantity" name="prix" placeholder="Prix" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Poids">Poids</label>  
  <div class="col-md-4">
  <input id="product_weight" name="poids" placeholder="Poids " class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Poids">Capacite</label>  
  <div class="col-md-4">
  <input id="product_weight" name="capacite" placeholder="Capacite " class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">Etat</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="etat" placeholder="Etat" name="etat"></textarea>
  </div>
</div>



<!-- Button-->
  <button type="submit" class="btn btn-primary">Ajouter</button>

</fieldset>
</form>
