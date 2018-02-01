<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
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






<table class="table">
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
        <p data-placement="top" data-toggle="tooltip" title="supprimer">
           <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
           <span class="glyphicon glyphicon-trash"></span>
           </button>
        </p>
    </td> 
    <td>
   			 <p data-placement="top" data-toggle="tooltip" title="Editer">
		            <button class="btn btn-primary btn-xs" data-title="Edit" 
		           	   data-toggle="modal" data-target="#myModal" >
		               <span <svg-icon><src href="sprite.svg#si-glyph-delete" /></svg-icon>></span>
		            </button >
			  </p>
	</td>
  </tr>
  </c:forEach>
</table>

<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">formulaire de modification</h4>
        </div>
        <div class="modal-body">
  				<form>
					  <div class="form-group">
					    <label for="adress">Addresse</label>
					    <input type="text" class="form-control" id="adress" />
					  </div>
					  <div class="form-group">
					    <label for="nature">Nature</label>
					    <input type="text" class="form-control" id="nature" />
					  </div>
					  <div class="form-group">
					    <label for="dept">Departement</label>
					    <input type="numeric" class="form-control" id="dept" />
					  </div>
					  <div class="form-group">
					    <label for="bailleur">Bailleur</label>
					    <input type="text" class="form-control" id="bailleur"/>
					  </div>
					 
					  <button type="submit" class="btn btn-default" >modifier</button>
				</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

</body>
</html>
