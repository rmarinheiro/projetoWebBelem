<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Projeto Java Web Treinamento</title>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<style>
.imagemdeFundo{
	background-image:url('imagens/imagem.jpg');
	width: 900px;
	height:500px;
	background-position: center;
	background-size: cover;
	
	
}

</style>    
</head>
<body>
	<h1 class="bg-dark text-center text-white p-3">Projeto Web Java</h1>
	
  <div class="imagemdeFundo">			
	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
		  <a class="nav-link" href="index.jsp">Cadastrar Novo Produto</a>
		  <a class="nav-link" href="produto?action=consultar">Listar Produtos</a>
		  <a class="nav-link" href="cliente.jsp">Cadastrar Cliente</a>
			<a class="nav-link" href="cliente?action=consultar">Listar Todos os Clientes</a>
		
			<!-- - <a class="nav-link dropdown-toogle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Produto</a>
			<div class="dropdown-menu" arial-labelledby="navbarDropdown">
				<a class="dropdown-item" href="index.jsp">Cadastrar Novo Produto</a>
				<a class="dropdown-item" href="produto?action=consultar">Listar Todos os Produtos</a>
			</div> -->
			
			<!--  <a class="nav-link dropdown-toogle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Usuário</a>
			<div class="dropdown-menu" arial-labelledby="navbarDropdown">
				<a class="dropdown-item" href="cliente.jsp">Cadastrar Cliente</a>
				<a class="dropdown-item" href="cliente?action=consultar">Listar Todos os Clientes</a>
			</div>-->
		</nav>
	</div>

	<!--  <h1 class="bg-dark text-center text-white p-3">Projeto Java Web</h1>
		  <button class="btn btn-secondary btn-lg" type="button" id="dropdownMenu5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		Selecione a opção Desejada:
  		</button>
  	<div class="imagemdeFundo">		
		<div class="dropdown-menu">
			<a class="dropdown-item" href="index.jsp">Cadastrar Novo Produto</a>
			<a class="dropdown-item" href="produto?action=consultar">Listar Todos os Produtos</a>
			<a class="dropdown-item" href="cliente.jsp">Cadastrar Usuário</a>
			<a class="dropdown-item" href="cliente?action=consultar">Listar Todos os Funcionários</a>
		
		</div>
	</div>-->
	
		
			
	


</body>
</html>