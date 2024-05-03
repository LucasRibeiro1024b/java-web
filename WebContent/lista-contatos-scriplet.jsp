<%@ page import="java.util.*, dao.*, model.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Contatos</title>
</head>
<body>
<table>
<thead>
	<tr>
		<th>Nome</th>
		<th>Email</th>
		<th>Endereço</th>
		<th>Data Nascimento</th>
	</tr>
</thead>
<%
	ContatoDAO dao = new ContatoDAO();
	List<Contato> contatos = dao.getLista();
	
	String formatString = "yyyy/MM/dd hh:mm.ss";
	SimpleDateFormat simpleDate = new SimpleDateFormat(formatString);
	
	for (Contato contato : contatos ) {
		Date date = contato.getDataNascimento().getTime();
		String formattedDate = simpleDate.format(date);
	%>
	<tr>
		<td><%=contato.getNome() %></td>
		<td><%=contato.getEmail() %></td>
		<td><%=contato.getEndereco() %></td>
		<td><%= formattedDate %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>