/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.pacotesturisticos.model.DecoratoPacote;


/**
 *
 * @author carlo
 */

public class ParqueDeDiversao extends Opcao {

    private PacoteTurismo parque;
    public ParqueDeDiversao(PacoteTurismo parque){
        this.parque = parque;
    }
    public String getDescricao(){
        return parque.getDescricao() + ", Parque de Diversão";
    }
    public double preco(){
        return 100 + parque.preco();
    }
}
