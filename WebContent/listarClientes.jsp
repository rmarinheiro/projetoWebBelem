<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

<title>Listar Funcionários</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js" ></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<h1 class="bg-dark text-center text-white p-3">Projeto Java Web</h1>

<form action="" method="post">
	<table class="table">
		<thead class="thead-light">
			<tr>
			  <th scope="col">Excluir</th>
			  <th scope="col">Nome</th>
			  <th scope="col">Email</th>
			  <th scope="col">Logradouro</th>
			  <th scope="col">Bairro</th>
			  <th scope="col">Cidade</th>
			  <th scope="col">Estado</th>
			  <th scope="col">Cep</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <c:forEach items="${dadosCliente}" var="p">	
				<td scope="row"><input type="checkbox"></td>
				<td scope="row">${p.nome} </td>
				<td scope="row">${p.email}</td>
				<td scope="row">${p.endereco.logradouro}</td>
				<td scope="row">${p.endereco.bairro}</td>
				<td scope="row">${p.endereco.cidade}</td>
				<td scope="row">${p.endereco.estado}</td>
				<td scope="row">${p.endereco.cep}</td>
			</tr>
			</c:forEach>
		</tbody>

	</table>
	
	<input type="button" class="btn btn-secondary" value="Excluir Marcado(s)?"/>
	
</form>

</body>
</html>