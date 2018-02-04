<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


  		<form action="/springDemo/update" method="POST">
		  <div class="form-group">
		    <label for="nom">nom</label>
		    <input type="text" class="form-control" name="nom" id="nom" placeholder="nom" value=<c:out value="${personne.nom }"/>>
		  </div>
		  <div class="form-group">
		    <label for="prenom">prenom</label>
		    <input type="text" class="form-control" name="prenom" id="prenom" placeholder="prenom" value=<c:out value="${personne.prenom }"/> >
		  </div>
		  <div class="form-group">
		    <label for="email">e-mail</label>
		    <input type="email" class="form-control" name="email" id="email" placeholder="email"  value=<c:out value="${personne.email }"/> >
		  </div>
		  <div class="form-group">
		    <label for="genre">genre</label>
		    <input type="text" class="form-control" name="genre" id="genre" placeholder="genre"  value=<c:out value="${personne.genre }"/>>
		  </div>
		  <div class="form-group">
		    <label for="ip"><c:out value="@ mail"></c:out></label>
		    <input type="text" class="form-control" name="ip" id="ip" placeholder="adress ip"  value=<c:out value="${personne.adrssIp }"/>>
		  </div>
		   <div class="form-group">
		    <input type="hidden" class="form-control" name="id" id="ip" placeholder="adress ip"  value=<c:out value="${personne.id }"/>>
		  </div>
		  <button type="submit" class="btn btn-primary" >Ajouter</button>
	</form>
       
</body>
</html>