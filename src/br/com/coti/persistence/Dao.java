package br.com.coti.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
	
	Connection con; //conexão com o banco
	ResultSet rs; //Acesso a tabela
	PreparedStatement stmt; //pesquisa no banco
	
	public void open() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdjava?useTimezone=true&serverTimezone=UTC","root", "rafael");
	}
	
	public void close() throws Exception{
		con.close();
	}
	
	public static void main(String[] args) {
		try {
			Dao d = new Dao();
			d.open();
			d.close();							
			System.out.println("Banco conectado");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
																																																											
}
