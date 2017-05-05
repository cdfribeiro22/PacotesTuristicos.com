package com.pacotesturisticos.model;

/**
 *
 * @author eduardo
 */
public enum TipoAtividade {
    TRASLADO_MOTO,
    TRASLADO_CARRO,
    TRASLADO_ONIBUS,
    VISITACAO;
    
    public int getId() {
        switch (this) {
            case TRASLADO_MOTO: return 1;
            case TRASLADO_CARRO: return 2;
            case TRASLADO_ONIBUS: return 3;
            case VISITACAO: return 4;
            default: return 0;
        }
    }
    
    public static TipoAtividade getById(int id) {
        switch(id) {
            case 1: return TRASLADO_MOTO;
            case 2: return TRASLADO_CARRO;
            case 3: return TRASLADO_ONIBUS;
            case 4: return VISITACAO;
            default: return null;
        }
    }
    
    @Override
    public String toString() {
        switch (this) {
            case TRASLADO_MOTO: return "Traslado em Moto";
            case TRASLADO_CARRO: return "Traslado em Carro";
            case TRASLADO_ONIBUS: return "Traslado em Onibus";
            case VISITACAO: return "Visitação";
            default: return null;
        }
    }
}
