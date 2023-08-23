<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="dao.ContatoDAO" />
	
	<table>
	<c:forEach var="contato" items="${dao.lista}">
		<tr>
			<td>${contato.nome}</td>
			<td>${contato.email}</td>
			<td>${contato.endereco}</td>
			<td>${contato.dataNascimento.time}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>