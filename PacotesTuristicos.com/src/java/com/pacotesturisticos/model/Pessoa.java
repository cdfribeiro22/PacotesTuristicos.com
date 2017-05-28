package com.pacotesturisticos.model;



import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

public class Pessoa {
    
    private int codigo; 
    private String cpf;
    private int pessoa;
    private String nome; 
    private String telefone; 
    private Endereco endereco;


    public int getCodigo() {
        return codigo;
    }
    
    

    public void setCodigo(int cpfBig) {
        this.codigo = cpfBig;
    }

    public int getPessoa() {
        return pessoa;
    }

    public void setPessoa(int pessoa) {
        this.pessoa = pessoa;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }
    
  

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
}