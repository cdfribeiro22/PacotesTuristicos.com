/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pacotesturisticos.model;

/**
 *
 * @author Carlos Daniel
 */
public class Endereco {
    
    private int cod_postal;
    private String logradouro;
    private int numero;
    private String complemento;
    private Cidade cidade;

    public int getCod_postal() {
        return cod_postal;
    }

    public void setCod_postal(int cod_postal) {
        this.cod_postal = cod_postal;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public Cidade getCidade() {
        return cidade;
    }

    public void setCidade(Cidade cidade) {
        this.cidade = cidade;
    }
    
}
