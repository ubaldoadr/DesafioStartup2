<%@include file="head.jsp" %>

<%@include file="header.jsp" %>

 <section class="container">
 <div class="alert alert-warning display-3 alert-heading" role="alert">
  Error!!!
</div>
<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Espera un momento!</h4>
  <p>Ha ocurrido un error, no te preocupes, todo se puede solucionar!</p>
  <hr>
  <p class="mb-0display-6">Verifica datos o metodos y vuelve a intentar</p>
</div>

 
 <a href="${pageContext.request.contextPath}/index.jsp"> <button type="submit" class="btn btn-secondary"><i class="fa-duotone fa-reply"></i> Regresar</button></a>
 </section>
 
<%@include file="footer.jsp" %>