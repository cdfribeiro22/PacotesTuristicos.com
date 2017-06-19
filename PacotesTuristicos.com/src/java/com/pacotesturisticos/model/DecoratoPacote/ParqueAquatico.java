/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package com.pacotesturisticos.model.DecoratoPacote;


/**
 *
 * @author carlo
 */

public class ParqueAquatico extends Opcao {
    private PacoteTurismo parque;
    
    public ParqueAquatico(PacoteTurismo parque){
        this.parque = parque;
    }
    public String getDescricao(){
        return parque.getDescricao() + ", Entrada Parque Aquatico";
    }
    public double preco(){
        return 200 + parque.preco();
    }
}
