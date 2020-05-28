<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<title>Kunden</title>
</head>
<body>
<p></p>
<div class="container col-md-6 col-md-offset-3 ">
		<div class="well well-sm">
   				 <div class="panel-heading"> Kundenmodifikation</div>
  		</div>
			<form action="update_client.php" method="get">
				<div class="panel-primary">
				<table class="table table-striped">
				        <tr>					
							<th><label>ID :</label></th><th><input  type="text" class="form-control"  name="id" value=${model.cl.id} ><th> 
						</tr>	
					 	<tr>					
							<th><label>Name:</label></th><th><input  type="text"  class="form-control" name="nom" value=${model.cl.nom}></th> 
						</tr>
						<tr>
							<th><label>Vorname:</label></th><th><input type="text"  class="form-control" name ="prenom" value= ${model.cl.prenom}  ></th> 
						</tr>
						
						<tr>
							<th><label>Adresse :</label></th><th><input type="text"   class="form-control" name="adresse" value =${model.cl.adresse}></th> 
						</tr>
						
						<tr>	
							<th><label>Email:</label> </th><th><input  type="email"  class="form-control" name="email" value =${model.cl.email}> </th>
						</tr>
						<tr>	
							<th><label>Telefon :</label> </th><th><input type="text" class="form-control" name="tel" value=${model.cl.tel} > </th>
						</tr>
						<tr>
							<th><label>Fax :</label></th><th><input type="text" class="form-control" name = "fax" value=${model.cl.fax} ></th>  
						</tr>
						<tr>
							<th><label>Passwort:</label></th><th><input type="text" class="form-control" name="password" value=${model.cl.password}></th>  
						</tr>
						
						<tr>
							<th><input type="submit" onclick="return confirm('Êtes-vous sûr de bien vouloir modifier cet élément?');" class="btn btn-primary" value="Confirmer" name="confimer"></th>
							<th><input type="submit" class="btn btn-primary"  value="Abbrechen" name="Abbrechen"></th>  
						</tr>	
				</table>			
				</div>	
				
       </form>
       </div>
        </footer>
  <!--/ footer-->

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>
</body>
</html>
