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
public class PacoteDivertido extends PacoteTurismo {

    public PacoteDivertido(){
        descricao = "Adrenalina = Reserva";
    }
    public double preco(){
        return 200.00;
    }
}
