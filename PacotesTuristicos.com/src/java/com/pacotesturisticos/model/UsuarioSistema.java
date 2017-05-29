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
    
    
}
