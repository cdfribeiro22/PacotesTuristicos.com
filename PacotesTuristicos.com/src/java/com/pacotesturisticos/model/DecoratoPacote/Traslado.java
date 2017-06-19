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

public class Traslado extends Opcao{
    
    private PacoteTurismo aviao;
    
    public Traslado(PacoteTurismo aviao){
        this.aviao = aviao;
    }
    
    public String getDescricao(){
        return aviao.getDescricao() + ", Passsagem Aerea";
    }
    
    public double preco(){
        return 1000 + aviao.preco();
    }
}
