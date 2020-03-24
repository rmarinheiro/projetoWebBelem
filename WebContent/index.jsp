<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Proutos</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js" ></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script src="js/produto.js"></script>

<script>
$(document).ready(function(){

	var produto = null;
	var msg = "";
	
 function resgate(){
	produto = new Produto($("#nome").val(),
			 $("#descricao").val(),
			 $("#preco").val(),
			 $("#imagem").val()
			 );
		console.log(produto);
 }
 
 function valida(){
	 if(!produto.isNome()){
		 msg +="<li>Nome do Produto Inválido</li>";
	 }
	 
	 if(!produto.isDescricao()){
		 msg +="<li>Descrição do Produto Inválido</li>";
	 }
	 
	 if(!produto.isPreco()){
		 msg +="<li> Preco Invalido</li>";
		 
	 }
	 
 }
 
 function dispara(){
	 
	 if(msg.length != 0){
		 $("#resposta").html(msg);
	 }else{
		 $("#resposta").html("<li>Dados Validos...</li>");
		 //setTimeout(()=>{ $("#formProduto").submit() } , 3000 );
		 setTimeout(() =>{ $("#formProduto").submit() }, 3000);
	 }
 }
 
 	$("#btn1").click(function(){
		resgate();
	 	valida();
	 	dispara();
	 	msg = "";
	 
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
						Formulário de Cadastro
					</div>
					
					<div class="card-body" >
						<form id="formProduto" action="produto?action=cadastrar" method="post">
							<label>Nome do Produto</label>
							<input type="text" name="nome" placeholder= "Digite o nome do Produto" required="required" class="form-control" id="nome">
							
							<label>Descrição</label>
							<input type="text" name="descricao" placeholder="Digite a Descrição do Produto" required="required" class="form-control" id="descricao">
							
							<label>Preço</label>
							<input type="number" name="preco" placeholder="Digite o Preço do Produto" required="required" class="form-control" id="preco">
							
							<label>Imagem</label>
							<input type="text" name="imagem" placeholder="Digite a URL da imagem" required="required" class="form-control mb-2" id="imagem">
							
							<button  type="button" class="btn btn-info btn-block" id="btn1">Gravar<i class="fas fa-spinner fa-spin"></i>
							<button  type="reset" class="btn btn-info btn-block">Apagar<i class="fas fa-spinner fa-spin"></i>
							
							</button>
							<div id="resposta">
							</div>
							<br>${msg}</br> 
							<br><a href="home.jsp">Voltar</a>					
						</form>
					</div>
				
				</div>
			
			</div>


</div>

</body>
</html>