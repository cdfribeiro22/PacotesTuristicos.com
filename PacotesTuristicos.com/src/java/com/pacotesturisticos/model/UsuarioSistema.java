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
public class UsuarioSistema extends PessoaFisica{
    
    private String email;
    private String senha;
    private Date dt_cadatro;
    private String pBairro;
    private String pRua;
    private int pNumero;
    private String pComplemento;
    private String pEstado;
    private String pCidade;
    private String pCep;
    private String pEmail;
    private String psenha;
    private Date dt_ult_acess;     
    private int status;
    private Date dt_ultimo_status;
    private int tipo_usuario;
    

 
    
    


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Date getDt_cadatro() {
        return dt_cadatro;
    }

    public void setDt_cadatro(Date dt_cadatro) {
        this.dt_cadatro = dt_cadatro;
    }

    public Date getDt_ult_acess() {
        return dt_ult_acess;
    }

    public void setDt_ult_acess(Date dt_ult_acess) {
        this.dt_ult_acess = dt_ult_acess;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getDt_ultimo_status() {
        return dt_ultimo_status;
    }

    public void setDt_ultimo_status(Date dt_ultimo_status) {
        this.dt_ultimo_status = dt_ultimo_status;
    }

    public int getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(int tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }

    public String getpBairro() {
        return pBairro;
    }

    public void setpBairro(String pBairro) {
        this.pBairro = pBairro;
    }

    public String getpRua() {
        return pRua;
    }

    public void setpRua(String pRua) {
        this.pRua = pRua;
    }

    public int getpNumero() {
        return pNumero;
    }

    public void setpNumero(int pNumero) {
        this.pNumero = pNumero;
    }

    public String getpComplemento() {
        return pComplemento;
    }

    public void setpComplemento(String pComplemento) {
        this.pComplemento = pComplemento;
    }

    public String getpEstado() {
        return pEstado;
    }

    public void setpEstado(String pEstado) {
        this.pEstado = pEstado;
    }

    public String getpCidade() {
        return pCidade;
    }

    public void setpCidade(String pCidade) {
        this.pCidade = pCidade;
    }

    public String getpCep() {
        return pCep;
    }

    public void setpCep(String pCep) {
        this.pCep = pCep;
    }

    public String getpEmail() {
        return pEmail;
    }

    public void setpEmail(String pEmail) {
        this.pEmail = pEmail;
    }

    public String getPsenha() {
        return psenha;
    }

    public void setPsenha(String psenha) {
        this.psenha = psenha;
    }
    
    
}
