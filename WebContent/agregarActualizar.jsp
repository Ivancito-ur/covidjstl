<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Insert title here</title>
</head>
<body>

<div>

<form class="container" style="border: blue 4px solid; border-radius: 6px" method="POST" action="MensajeController">
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">ID</label>
    <div class="col-sm-10">
      <input type="number" readonly class="form-control-plaintext" id="id" name="id" value="${id}">
    </div>
  </div>
  <div class="form-group row">
    <label for="staticNombre" class="col-sm-2 col-form-label">Nombre</label>
    <div class="col-sm-10">
      <input type="text"  class="form-control" id="nombre" name="nombre" value="${nombre}">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input type="text"  class="form-control" id="email" name="email" placeholder="Email" value="${email}">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputWebsite" class="col-sm-2 col-form-label">WebSite</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="website" name="website" placeholder="Website" value="${website}">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputMensaje" class="col-sm-2 col-form-label">Mensaje</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="website" name="mensaje" placeholder="" value="${mensaje}">
    </div>
  </div>
  <input type="hidden" name="idA" id="idA" value="${idA}">
  <div class="form-group row">
    <label for="staticUsuario" class="col-sm-2 col-form-label">Usuario</label>
    <div class="col-sm-10">
      <input type="text"  class="form-control-plaintext" id="usuario" name="usuario" value="${usuario}">
    </div>
  </div>
  
  <button class="btn btn-info">
  	${accionBoton}
  </button>
</form>

</div>



</body>
</html>