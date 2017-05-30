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
public class UsuarioSistemaGuia extends UsuarioSistema{
    
    private String idioma1;
    private String idioma2;
    private String idioma3;
    private String cnh;
    private Date dt_cnh_vencimento;

    public String getIdioma1() {
        return idioma1;
    }

    public void setIdioma1(String idioma1) {
        this.idioma1 = idioma1;
    }

    public String getIdioma2() {
        return idioma2;
    }

    public void setIdioma2(String idioma2) {
        this.idioma2 = idioma2;
    }

    public String getIdioma3() {
        return idioma3;
    }

    public void setIdioma3(String idioma3) {
        this.idioma3 = idioma3;
    }

    public String getCnh() {
        return cnh;
    }

    public void setCnh(String cnh) {
        this.cnh = cnh;
    }

    public Date getDt_cnh_vencimento() {
        return dt_cnh_vencimento;
    }

    public void setDt_cnh_vencimento(Date dt_cnh_vencimento) {
        this.dt_cnh_vencimento = dt_cnh_vencimento;
    }


    
    
}
