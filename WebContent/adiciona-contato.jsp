<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ctags" %>

<c:import url="head.jsp" />

<h2>POST</h2>
<form action="adicionaContato" method="post">
Nome: <input type="text" name="nome" /><br />
E-mail: <input type="text" name="email" /><br />
Endereço: <input type="text" name="endereco" /><br />
Data Nascimento: <ctags:campoData id="dataNascimento" /><br />
<input type="submit" value="Gravar" />
</form>

	<h2>GET</h2>
<form action="adicionaContato" method="get">
Nome: <input type="text" name="nome" /><br />
E-mail: <input type="text" name="email" /><br />
Endereço: <input type="text" name="endereco" /><br />
Data Nascimento: <ctags:campoData id="dataNascimento" /><br />
<input type="submit" value="Gravar" />
</form>

<c:import url="footer.jsp" />