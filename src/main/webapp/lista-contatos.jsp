<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Contatos</title>
</head>
<body>
	<c:import url="head.jsp" />
	
	<jsp:useBean id="dao" class="dao.ContatoDAO" />
	
	<table>
	<c:forEach var="contato" items="${dao.lista}">
		<tr>
			<td>${contato.nome}</td>
			<td>
				<c:choose>
					<c:when test="${not empty contato.email }">
						<a href="mailto:${contato.email }">${contato.email }</a>
					</c:when>
					<c:otherwise>Email not informed</c:otherwise>
				</c:choose>
			</td>
			<td>${contato.endereco}</td>
			<td><fmt:formatDate value="${contato.dataNascimento.time}"
pattern="dd/MM/yyyy" /></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>