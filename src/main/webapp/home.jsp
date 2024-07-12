     <%@include file="head.jsp" %>
     <%@include file="header.jsp" %>

<div class="container">
		<h1>Home: Usuarios</h1>
		<a href="${pageContext.request.contextPath}/Registro" class="btn btn-primary">Nuevo Registro</a>
		<table class="table" id="tblUsuarios">
			<thead class="table-dark ">
				<tr>
					<th>Id</th>
					<th>Correo</th>
					<th>Nombre</th>
					<th>Nick</th>
					<th>Password</th>
					<th>Peso</th>
					<th>Creado</th>
					<th>Modificado</th>						
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}">
					<tr>
					
						<td><c:out value="${user.getId()}"></c:out></td>
						<td><c:out value="${user.getCorreo()}"></c:out></td>
						<td><c:out value="${user.getNombre()}"></c:out></td>
						<td><c:out value="${user.getNick()}"></c:out></td>
						<td><c:out value="${user.getPassword()}"></c:out></td>
						<td><c:out value="${user.getPeso()}"></c:out></td>
						<td><c:out value="${user.getCreate_at()}"></c:out></td>
						<td><c:out value="${user.getUpdate_at()}"></c:out></td>
																		
					</tr>
				 </c:forEach>
			</tbody>
		</table>
	</div>

<%@include file="footer.jsp" %>