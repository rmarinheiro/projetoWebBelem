package br.com.coti.persistence;

import java.util.ArrayList;
import java.util.List;

import br.com.coti.entity.Produto;

public class ProdutoDao extends Dao {
	
	public void gravar (Produto p) throws Exception{
		open();
		stmt = con.prepareStatement("insert into produto values(null,?,?,?,?)");
		stmt.setString(1,p.getNome());
		stmt.setString(2, p.getDescricao());
		stmt.setDouble(3, p.getPreco());
		stmt.setString(4, p.getImagem());
		stmt.execute();
		stmt.close();
		close();
	}
	
	public List<Produto> listarTodosProdutos() throws Exception{
		open();
		stmt = con.prepareStatement("select * from produto");
		rs = stmt.executeQuery();
		List<Produto> dadosProduto = new ArrayList<>();
		while(rs.next()) {
			Produto p = new Produto();
			p.setId(rs.getInt("id"));
			p.setNome(rs.getString("nome"));
			p.setDescricao(rs.getString("descricao"));
			p.setPreco(rs.getDouble("preco"));
			p.setImagem(rs.getString("imagem"));
			dadosProduto.add(p);
		}
		close();
		return dadosProduto;
	}
	
	public void deletar(Integer key) throws Exception{
		open();
		stmt = con.prepareStatement("delete from produto where id = ?");
		stmt.setInt(1, key);
		stmt.execute();
		stmt.close();
		close();
	}
	
	public static void main(String[] args) {
	//	Produto p1 = new Produto(null,"Notebook","Notebool Dell", 2000.00, "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR-eZHYPyL-qlW5pHz3lbAz06FMrZs8P6giwnkq8sAKuPiChecctWcZNtISxxTJmAcZ5s6J_Ss&usqp=CAc");
		ProdutoDao pdao = new ProdutoDao();
		try {
			//pdao.gravar(p1);
			System.out.println(pdao.listarTodosProdutos());
			//System.out.println("Dados gravados com sucesso");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	
	}

}
