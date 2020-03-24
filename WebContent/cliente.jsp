<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js"  ></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Clientes</title>
<script>
	$(document).ready(function(){
		$("#accordion").accordion();
		$("#cep").mask('00000000');
		
		$("#cep").on('blur',function(){
			var vcep = $(this).val();
			$.getJSON('https://api.postmon.com.br/v1/cep/' + vcep,	
				function(data){
					$("#logradouro").val(data.logradouro);
					$("#bairro").val(data.bairro);
					$("#cidade").val(data.cidade);
					$("#estado").val(data.estado);
					$("#saida").html("Cep foi encontrado");
				})
				.fail(function(){
					$("#logradouro").val("");
					$("#bairro").val("");
					$("#cidade").val("");
					$("#estado").val("");
					$("#saida").html("Cep não foi informado");
				});
			
		});
		
	});

</script>
</head>
<body>
<h1 class="bg-dark text-center text-white p-3">Projeto Web Java</h1>

	
	<div class="container-fluid"> 
		<div class="col-md-6">
		  <div class="card">
			<div class="card-head text center bg-info text-white">
				<h3> Cadastro de Clientes</h3>
			</div>
			
 			<div class="card-body" >
 		
			<form action="ClienteController" method="post">
 		
 			<label>Nome do Cliente:</label>
 			<input type="text" name="nome" placeholder="Digite o nome do Cliente" required="true" pattern="[a-z A-Z]{2,50}" id="nome" size="50"/>
 			
 			<br/>	
 			<label>Email:</label>
 			<input type="email" name="email" placeholder="Digite o email do cliente" required="true"id="email" size="50"/>
 		
 			<br/>
 			<label>Cep:</label>
 			<input type="text" name="cep" placeholder="Digite o Cep" required="true" id="cep"/>
 			
 			<br/>
 			<label>Logradouro:</label>
 			<input type="text" name="logradouro"  required="true" id="logradouro" size="30"/>
 			
 			<br/>
 			<label>Bairro:</label>
 			<input type="text" name="bairro" required="true" id="bairro" size="20"/>
 			
 			<br/>
 			<label>Cidade:</label>
 			<input type="text" name="cidade" required="true" id="cidade" size="20"/>
 			
 			<br/>
 			<label>Estado</label>
 			<input type="text" name="estado" required="true" id="estado" size="20"/>
 		
 			<button type="submit" class="btn btn-info btn-block" id="btn1"/>Gravar</button>
 			
 			<div id="saida">
 			</div>
 			<br>${msg}</br>
 			
 		</form>
 		<a href="home.jsp">Voltar para o inicio</a>
 			</div>	
 		</div>
 	</div>	
 </div>

</body>
</html>