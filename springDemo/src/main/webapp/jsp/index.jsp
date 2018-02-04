<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<script src="<c:url value="js/js.js"/>"></script>
<link rel="stylesheet" href=" <c:url value= "/resources/css/style.css"  />" />

</head>
<body>



	<form action="add" method="POST">
		  <div class="form-group">
		    <label for="nom">nom</label>
		    <input type="text" class="form-control" name="nom" id="nom" placeholder="nom">
		  </div>
		  <div class="form-group">
		    <label for="prenom">prenom</label>
		    <input type="text" class="form-control" name="prenom" id="prenom" placeholder="prenom">
		  </div>
		  <div class="form-group">
		    <label for="email">e-mail</label>
		    <input type="email" class="form-control" name="email" id="email" placeholder="email">
		  </div>
		  <div class="form-group">
		    <label for="genre">genre</label>
		    <input type="text" class="form-control" name="genre" id="genre" placeholder="genre">
		  </div>
		  <div class="form-group">
		    <label for="ip"><c:out value="@ mail"></c:out></label>
		    <input type="text" class="form-control" name="ip" id="ip" placeholder="adress ip">
		  </div>
		  <button type="submit" class="btn btn-primary" >Ajouter</button>
	</form>






<table class="table table-striped table-advance table-hover table-bordered">
  <tr  class="thead-dark">
    <th scope="col">nom</th>
    <th scope="col">prenom</th>
    <th scope="col">email</th>
    <th scope="col">genre</th>
    <th scope="col">ip</th>
    <th scope="col">supprimer</th>
    <th scope="col">modfier</th>
  </tr>
  <c:forEach items="${ personnes}" var="p">
  <tr>
    <td><c:out value="${p.nom }"/></td>
    <td><c:out value="${p.prenom }"/></td>
    <td><c:out value="${p.email }"/></td>
    <td><c:out value="${p.genre }"/></td>
    <td><c:out value="${p.adrssIp }"/></td>
    <td>       
        <a class="btn btn-primary" href="/springDemo/supprimer?id=${p.id}" role="button" title="Supprimer">Supprimer</a>
    </td>     
    <td>
    	<a class="btn btn-primary" href="/springDemo/modifier?id=${p.id}" role="button" title="Modifier">Modifier</a>			  
	</td>
  </tr>
  </c:forEach>
</table>

</body>
</html>
