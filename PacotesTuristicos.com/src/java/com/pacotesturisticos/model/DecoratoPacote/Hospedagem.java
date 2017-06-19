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

public class Hospedagem extends Opcao{
    private PacoteTurismo hotel;
    
    public Hospedagem(PacoteTurismo hotel){
        this.hotel = hotel;
    }
    public String getDescricao(){
        return hotel.getDescricao() + ", Hospedagem Hotel 5 Estrelas";
    }
    public double preco(){
        return 500 + hotel.preco();
    }
}
