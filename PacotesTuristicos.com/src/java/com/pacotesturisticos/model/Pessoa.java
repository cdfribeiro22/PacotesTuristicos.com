package com.pacotesturisticos.model;



import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

public class Pessoa {
    
    private BigInteger cpfBig; 
    private String cpf;
    private int pessoa;
    private String nome; 
    private String telefone; 
    private Endereco endereco;


    public BigInteger getCpfBig() {
        return cpfBig;
    }
    
    

    public void setCpfBig(BigInteger cpfBig) {
        this.cpfBig = cpfBig;
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
    
    public BigDecimal ParaDecimal(){
        BigDecimal converter = new BigDecimal(cpfBig);
        return converter;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
}