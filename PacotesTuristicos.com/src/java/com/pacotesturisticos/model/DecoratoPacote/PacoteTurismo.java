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
public abstract  class PacoteTurismo {
    String descricao = "Pacote";

	public String getDescricao() {
		return descricao;
	}
        
	public abstract double preco();
}
