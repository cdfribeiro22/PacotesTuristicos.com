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


public class Alimentacao extends Opcao {
    private PacoteTurismo alimento;
    
    public Alimentacao(PacoteTurismo alimento){
        this.alimento = alimento;
    }
    
    public String getDescricao(){
        return alimento.getDescricao() + ", Café+Almoço+Jantar";
    }
    
    public double preco(){
        return 150 + alimento.preco();
    }

    
}
