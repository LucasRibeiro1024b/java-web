<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Bem vindo</title>
</head>
<body>

<c:import url="head.jsp" />

<%-- comentário em JSP aqui: nossa primeira página JSP --%>
<%
String mensagem = "Bem vindo ao sistema de agenda do FJ-21!";
%>
<% out.println(mensagem); %>
<br/>
<%
String desenvolvido = "Desenvolvido por (Lucas)";
%>
<%= desenvolvido %>
<br/>
<%
System.out.println("Tudo foi executado!");
%>

<c:import url="footer.jsp" />
</body>
</html>