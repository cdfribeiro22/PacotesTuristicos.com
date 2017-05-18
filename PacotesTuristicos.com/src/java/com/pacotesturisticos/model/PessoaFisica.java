/*

 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pacotesturisticos.model;

import java.util.Date;

/**
 *
 * @author Carlos Daniel
 */
public class PessoaFisica {
    
    private int rg;
    private Date dt_nasc;
    private char sexo;     
    private String telefone;       
    private String nome_responsavel;       
    private String fone_responsavel;

    public int getRg() {
        return rg;
    }

    public void setRg(int rg) {
        this.rg = rg;
    }

    public Date getDt_nasc() {
        return dt_nasc;
    }

    public void setDt_nasc(Date dt_nasc) {
        this.dt_nasc = dt_nasc;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getNome_responsavel() {
        return nome_responsavel;
    }

    public void setNome_responsavel(String nome_responsavel) {
        this.nome_responsavel = nome_responsavel;
    }

    public String getFone_responsavel() {
        return fone_responsavel;
    }

    public void setFone_responsavel(String fone_responsavel) {
        this.fone_responsavel = fone_responsavel;
    }
}
