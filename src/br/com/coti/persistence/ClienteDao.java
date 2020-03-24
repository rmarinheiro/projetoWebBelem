package br.com.coti.persistence;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import br.com.coti.entity.Cliente;
import br.com.coti.entity.Endereco;


public class ClienteDao extends Dao {

	public void gravar(Cliente cliente) throws Exception{
		
		open();
		con.setAutoCommit(false);
		try {
			stmt = con.prepareStatement("insert into cliente values(null,?,?)",PreparedStatement.RETURN_GENERATED_KEYS);
			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getEmail());
			stmt.executeUpdate();
			rs = stmt.getGeneratedKeys();
			rs.next();
			cliente.setIdCliente(rs.getInt(1));
			stmt.close();
			
			stmt = con.prepareStatement("insert into endereco values(null,?,?,?,?,?,?)");
			stmt.setString(1, cliente.getEndereco().getLogradouro());
			stmt.setString(2, cliente.getEndereco().getBairro());
			stmt.setString(3, cliente.getEndereco().getCidade());
			stmt.setString(4, cliente.getEndereco().getEstado());
			stmt.setInt(5, cliente.getEndereco().getCep());
			stmt.setInt(6, cliente.getIdCliente());
			stmt.execute();
			
			
		} catch (Exception e) {
			e.printStackTrace();
			con.rollback();
		}
		con.setAutoCommit(true);
		close();
		
	}
	
	public List<Cliente> listarTodosFuncionarios() throws Exception{
		open();
		List<Cliente> dadosCliente = new ArrayList<Cliente>();
		try {
			stmt = con.prepareStatement("select c.nome,c.email,e.logradouro,e.bairro,e.cidade,e.estado,e.cep from endereco as e join cliente as c on c.idCliente = e.id_cliente");
			rs = stmt.executeQuery();
			while(rs.next()) {
				Cliente c = new Cliente();
				c.setNome(rs.getString("nome"));
				c.setEmail(rs.getString("email"));
				c.setEndereco(new Endereco(null,rs.getString("logradouro"), rs.getString("bairro"),rs.getString("cidade"), rs.getString("estado"), new Integer(rs.getInt("cep"))));
				dadosCliente.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dadosCliente;
		
	}
	
	public static void main(String[] args) {
		try {
			Cliente c = new Cliente(null , "Rafael","rsmarinheiro007@gmail.com");
			c.setEndereco(new Endereco(null, "Rua Mariz e Barros", "Tijuca", "RJ", "RJ", 20270001));
			new ClienteDao().gravar(c);
			System.out.println("Dados Gravados com Sucesso");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
