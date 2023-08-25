<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Contatos</title>
</head>
<body>
	<h1>Contém tabela com link para email.</h1>

	<jsp:useBean id="dao" class="dao.ContatoDAO" />
	
	<table>
	<c:forEach var="contato" items="${dao.lista}">
		${ dao.pesquisar(5) }
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
			<td>${contato.dataNascimento.time}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>