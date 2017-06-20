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
public class CPessoaGuia {

    private int codigoguia;
    private int codigocliente;
    private String numerodoregistro;
    private String categoria1;
    private String categoria2;
    private Date dataexpedicao;
    private String idioma1;
    private String idioma2;
    private String idioma3;
    private String cnh;
    private Date dtcnhvencimento;

    /**
     * @return the codigoguia
     */
    public int getCodigoguia() {
        return codigoguia;
    }

    /**
     * @return the codigocliente
     */
    public int getCodigocliente() {
        return codigocliente;
    }

    /**
     * @return the numerodoregistro
     */
    public String getNumerodoregistro() {
        return numerodoregistro;
    }

    /**
     * @return the categoria1
     */
    public String getCategoria1() {
        return categoria1;
    }

    /**
     * @return the categoria2
     */
    public String getCategoria2() {
        return categoria2;
    }

    /**
     * @return the dataexpedicao
     */
    public Date getDataexpedicao() {
        return dataexpedicao;
    }

    /**
     * @return the idioma1
     */
    public String getIdioma1() {
        return idioma1;
    }

    /**
     * @return the idioma2
     */
    public String getIdioma2() {
        return idioma2;
    }

    /**
     * @return the idioma3
     */
    public String getIdioma3() {
        return idioma3;
    }

    /**
     * @return the cnh
     */
    public String getCnh() {
        return cnh;
    }

    /**
     * @return the dt_cnh_vencimento
     */
    public Date getDtcnhvencimento() {
        return dtcnhvencimento;
    }

    /**
     * @param codigoguia the codigoguia to set
     */
    public void setCodigoguia(int codigoguia) {
        this.codigoguia = codigoguia;
    }

    /**
     * @param codigocliente the codigocliente to set
     */
    public void setCodigocliente(int codigocliente) {
        this.codigocliente = codigocliente;
    }

    /**
     * @param numerodoregistro the numerodoregistro to set
     */
    public void setNumerodoregistro(String numerodoregistro) {
        this.numerodoregistro = numerodoregistro;
    }

    /**
     * @param categoria1 the categoria1 to set
     */
    public void setCategoria1(String categoria1) {
        this.categoria1 = categoria1;
    }

    /**
     * @param categoria2 the categoria2 to set
     */
    public void setCategoria2(String categoria2) {
        this.categoria2 = categoria2;
    }

    /**
     * @param dataexpedicao the dataexpedicao to set
     */
    public void setDataexpedicao(Date dataexpedicao) {
        this.dataexpedicao = dataexpedicao;
    }

    /**
     * @param idioma1 the idioma1 to set
     */
    public void setIdioma1(String idioma1) {
        this.idioma1 = idioma1;
    }

    /**
     * @param idioma2 the idioma2 to set
     */
    public void setIdioma2(String idioma2) {
        this.idioma2 = idioma2;
    }

    /**
     * @param idioma3 the idioma3 to set
     */
    public void setIdioma3(String idioma3) {
        this.idioma3 = idioma3;
    }

    /**
     * @param cnh the cnh to set
     */
    public void setCnh(String cnh) {
        this.cnh = cnh;
    }

    /**
     * @param dt_cnh_vencimento the dt_cnh_vencimento to set
     */
    public void setDtcnhvencimento(Date dt_cnh_vencimento) {
        this.dtcnhvencimento = dt_cnh_vencimento;
    }

   
}
