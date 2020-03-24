<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Produtos</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js" ></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<h1 class="bg-dark text-center text-white p-3">Projeto Web Java</h1>

<form name="formListaProduto" action="produto?action=excluir" method="post" onsubmit="return window.confirm('Deseja excluir estes iten(s)?');">
<table class="table">
	<thead class="thead-light">
		<tr>
			<th scope="col">Excluir</th>
			<th scope="col">ID Produto</th>
			<th scope="col">Nome do Produto</th>
			<th scope="col">Descrição do Produto</th>
			<th scope="col">Preço</th>
			<th scope="col">Url da Imagem</th>
		</tr>
	</thead>
	<tbody>
		 <c:forEach items="${dadosProduto}" var="p">
		   <tr>
		   		<td scope="row"><input type="checkbox" name="itens" value="${p.id}"/></td>
				<td scope="row">${p.id}</td>
				<td scope="row">${p.nome}</td>
				<td scope="row">${p.descricao}</td>
				<td scope="row"><fmt:formatNumber value="${p.preco}" type="currency"/> </td>
				<td scope="row">${p.imagem}</td>	
		</tr>
		
		</c:forEach>
	</tbody>	

</table>
	<input class="btn btn-secondary" type="submit" value="Excluir marcado(s)?">
 
</form>
<br><a href="home.jsp">Voltar</a>
<h3>${msg}</h3>
</body>
</html>