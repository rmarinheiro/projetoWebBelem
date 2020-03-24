class Produto{
	constructor(nome,descricao,preco,imagem){
		this.nome = nome;
		this.descricao = descricao;
		this.preco = preco;
		this.imagem = imagem;
		
	}
	
	toString(){
		return this.nome + " , " + this.descricao + " , "+ this.preco +" , " +this.imagem;
		
	}
	
	isNome(){
		var regex = new RegExp("[a-z A-Z]{2,50}");
		return regex.test(this.nome);
	}
	
	isDescricao(){
		var regex = new RegExp("[a-z A-Z]{2,50}");
		return regex.test(this.descricao);
		
	}
	
	isPreco(){
		var regex = new RegExp(/^[0-9]{1,}$/);
		return regex.test(this.preco);
	}
	
}