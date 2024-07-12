<%@include file="head.jsp" %>

<%@include file="header.jsp" %>

	<main>
	
	<div class="container p-3" >
	<h2>Registro</h2>
		<form method= "Post" action="${pageContext.request.contextPath}/Registro">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" name= "correo" class="form-control" required>
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">nick </label>
    <input type="text" name= "nick" class="form-control" required>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nombre</label>
    <input type=""text"" name= "nombre" class="form-control" required>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Password</label>
    <input type="password" name= "password" class="form-control" required>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Peso</label>
    <input type="number" name= "peso" class="form-control" required>
  </div>
  <h2>Dirección</h2>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nombre</label>
    <input type="text" name= "direccion" class="form-control" required>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Numeración</label>
    <input type="text" name= "numeracion" class="form-control" required>
  </div>
  <h2>Seleccionar Rol</h2>
  <select class="form-control" name="rol">
  <c:forEach var="rol" items="${roles}">
  <option value="${rol.getId()}">${rol.getNombre()}</option>
  </c:forEach>
</select>
<br>
  <button type="submit" class="btn btn-primary">Registrar</button>
</form>
</div>
</main>

<%@include file="footer.jsp" %>