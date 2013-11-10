<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" flush="true">  
	<jsp:param name="title" value="Cadastro de Multa"/>  
</jsp:include> 	
<p>${message}</p>
<form:form method="POST" commandName="penalty" action="${pageContext.request.contextPath}/penalty/add.html" class="form-horizontal" >
	<div class="form-group">					
	  <label class="col-lg-2 control-label">Usuário</label>
      <div class="col-lg-3">      
      	 <form:select path="user.userId" class="form-control" required="True">
      	   <form:option value="" label="Selecione..." />
      	   <c:forEach items="${users}" var="user">      	     
      	     <form:option value="${user.userId}">${user.name}</form:option>
      	   </c:forEach>
      	 </form:select>
	  </div>					  
	</div>
	<div class="form-group">					
	  <label class="col-lg-2 control-label">Tipo de Multa</label>
      <div class="col-lg-3">      
      	 <form:select path="typePenalty.typePenaltyId" class="form-control" required="True">
      	   <form:option value="" label="Selecione..." />
      	   <c:forEach items="${typePenaltys}" var="typePenalty">      	     
      	     <form:option value="${typePenalty.typePenaltyId}">${typePenalty.description}</form:option>
      	   </c:forEach>
      	 </form:select>
	  </div>					  
	</div>
	<div class="form-group">					
	  <label class="col-lg-2 control-label">Data de Vencimento</label>
      <div class="col-lg-3">
      	<form:input path="expirationDate" class="form-control" placeholder="Insira a data"/>		    				
	  </div>					  
	</div>					
	<div class="form-group">
		<div class="col-lg-1 control-label"></div>
		<div class="col-lg-1 control-label">
	      	<input type="submit" value="Cadastrar" class="btn btn-default" />		    				
		</div>
	</div>							
</form:form>
<p></p>				
<jsp:include page="footer.jsp" flush="true"/> 				