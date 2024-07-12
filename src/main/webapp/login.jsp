<%@include file="head.jsp" %>

<%@include file="header.jsp" %>

	<main>
	
	<section class= "container p-3">
	<h2>Login</h2>
		<form method= "Post" action="${pageContext.request.contextPath}/Login">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" name= "correo" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <div class= "container p-3">
  <button type="submit" class="btn btn-primary">Submit</button>
	</div>
</form>
</section>
</main>

<%@include file="footer.jsp" %>