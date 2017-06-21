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
public class CPasseios {
    
    private int codigopasseio;
    
    private int codigocliente;
    
    private String nomepasseio;
    
    private String descpasseio;
    
    private String periodo;
    
    private String pontodeencontro;
    
    private int codigoguia;
    
    private String valor;
    
    private String Status;

    /**
     * @return the codigopasseio
     */
    public int getCodigopasseio() {
        return codigopasseio;
    }

    /**
     * @return the codigocliente
     */
    public int getCodigocliente() {
        return codigocliente;
    }

    /**
     * @return the nomepasseio
     */
    public String getNomepasseio() {
        return nomepasseio;
    }

    /**
     * @return the descpasseio
     */
    public String getDescpasseio() {
        return descpasseio;
    }

    /**
     * @return the periodo
     */
    public String getPeriodo() {
        return periodo;
    }

    /**
     * @return the pontodeencontro
     */
    public String getPontodeencontro() {
        return pontodeencontro;
    }

    /**
     * @return the codigoguia
     */
    public int getCodigoguia() {
        return codigoguia;
    }

    /**
     * @return the valor
     */
    public String getValor() {
        return valor;
    }

    /**
     * @return the Status
     */
    public String getStatus() {
        return Status;
    }

    /**
     * @param codigopasseio the codigopasseio to set
     */
    public void setCodigopasseio(int codigopasseio) {
        this.codigopasseio = codigopasseio;
    }

    /**
     * @param codigocliente the codigocliente to set
     */
    public void setCodigocliente(int codigocliente) {
        this.codigocliente = codigocliente;
    }

    /**
     * @param nomepasseio the nomepasseio to set
     */
    public void setNomepasseio(String nomepasseio) {
        this.nomepasseio = nomepasseio;
    }

    /**
     * @param descpasseio the descpasseio to set
     */
    public void setDescpasseio(String descpasseio) {
        this.descpasseio = descpasseio;
    }

    /**
     * @param periodo the periodo to set
     */
    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    /**
     * @param pontodeencontro the pontodeencontro to set
     */
    public void setPontodeencontro(String pontodeencontro) {
        this.pontodeencontro = pontodeencontro;
    }

    /**
     * @param codigoguia the codigoguia to set
     */
    public void setCodigoguia(int codigoguia) {
        this.codigoguia = codigoguia;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(String valor) {
        this.valor = valor;
    }

    /**
     * @param Status the Status to set
     */
    public void setStatus(String Status) {
        this.Status = Status;
    }


}
