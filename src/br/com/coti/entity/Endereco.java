package br.com.coti.entity;

import java.io.Serializable;

public class Endereco implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer idEndreco;
	private String logradouro;
	private String bairro;
	private String cidade;
	private String estado;
	private Integer cep;
	private Cliente cliente;
	
	public Integer getIdEndreco() {
		return idEndreco;
	}
	public void setIdEndreco(Integer idEndreco) {
		this.idEndreco = idEndreco;
	}
	public String getLogradouro() {
		return logradouro;
	}
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}	
	
	public Integer getCep() {
		return cep;
	}
	public void setCep(Integer cep) {
		this.cep = cep;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public Endereco() {
	}
	
	
	
	public Endereco(Integer idEndreco, String logradouro, String bairro, String cidade, String estado, Integer cep) {
		super();
		this.idEndreco = idEndreco;
		this.logradouro = logradouro;
		this.bairro = bairro;
		this.cidade = cidade;
		this.estado = estado;
		this.cep = cep;
	}
	@Override
	public String toString() {
		return "Endereco [idEndreco=" + idEndreco + ", logradouro=" + logradouro + ", bairro=" + bairro + ", cidade="
				+ cidade + ", estado=" + estado + ", cep=" + cep + "]";
	}
	
	
	
	

}
