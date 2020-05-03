<%@page import="com.sun.xml.bind.v2.schemagen.xmlschema.Import"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="covidjpa.entities.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de mensajes</title>
</head>
<body>

<div class="container">


	<jsp:useBean id="mDao" class="covidjpa.dao.MensajeDao" scope="request"></jsp:useBean>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Nombre</th>
				<th scope="col">Email</th>
				<th scope="col">WebSite</th>
				<th scope="col">Mensaje</th>
				<th scope="col">Usuario</th>
				<th> Acciones </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="m" items="${mDao.listar()}">
				<form  action="MensajeController" method="GET">	
				<input type="hidden" id="id" name="id" value="${ m.getId()}">		
				<input type="hidden" id="nombre" name="nombre" value="${ m.getName()}">		
				<input type="hidden" id="email" name="email" value="${ m.getEmail()}">		
				<input type="hidden" id="website" name="website" value="${ m.getWebsite()}">		
				<input type="hidden" id="mensaje" name="message" value="${ m.getMessage()}">	
				<input type="hidden" id="usuario" name="usuario" value="${ m.getUsuario()}">	
				
					<tr>				
					<th><c:out value="${ m.getId()}" /></th>
					<th><c:out value="${m.getName()}" /></th>
					<th><c:out value="${m.getEmail() }" /></th>
					<th><c:out value="${m.getWebsite()}" /></th>
					<th><c:out value="${m.getMessage()}" /></th>
					<th>
					<button type="submit" class="btn btn-success" id="accion" name="accion" value="1"> Eliminar </button>
					<button type="submit" class="btn btn-success" id="accion" name="accion" value="2"> Actualizar </button>								
					</th>
				</tr>
				</form>
			</c:forEach>
		</tbody>

	</table>
<a href="index.jsp" class="btn btn-danger"> Volver </a>

<form action="MensajeController" method="GET">

					<button type="submit" class="btn btn-success" name="accion" id="accion" value="0"> Agregar </button>

</form>
</div>


</body>
</html>