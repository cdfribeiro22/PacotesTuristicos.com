package com.pacotesturisticos.model;

/**
 *
 * @author eduardo
 */
public enum CPessoaCategoriaCNH {
    A, B, C, D, E,
    AB, AC, AD, AE;

    public static CPessoaCategoriaCNH getById(int id) {
        switch (id) {
            case 1: return A;
            case 2: return B;
            case 3: return C;
            case 4: return D;
            case 5: return E;
            case 6: return AB;
            case 7: return AC;
            case 8: return AD;
            case 9: return AE;
            default: return null;
        }
    }

    public int getId() {
        switch(this) {
            case A: return 1;
            case B: return 2;
            case C: return 3;
            case D: return 4;
            case E: return 5;
            case AB: return 6;
            case AC: return 7;
            case AD: return 8;
            case AE: return 9;
            default: return 0;
        }
    }
}
