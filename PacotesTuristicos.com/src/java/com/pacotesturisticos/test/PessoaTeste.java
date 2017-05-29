/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pacotesturisticos.test;

import com.pacotesturisticos.dao.UsuarioDao;
import com.pacotesturisticos.model.Endereco;
import com.pacotesturisticos.model.Pessoa;
import com.pacotesturisticos.model.UsuarioSistema;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;
import javax.swing.JOptionPane;

/**
 *
 * @author Carlos Daniel
 */
public class PessoaTeste {
    
    public static void main(String[] args) {
        
//        try {
            
            UsuarioDao dao = new UsuarioDao();

        
        
        
        
        UsuarioSistema cliente  = new UsuarioSistema();
        BigInteger num = BigInteger.valueOf(0);
        Date data = new Date();
        BigDecimal decimal = new BigDecimal(num);
        
        
        cliente.setCpf("04324503605");
        cliente.setNome("Carlos");
        cliente.setPessoa(1);
        cliente.setTelefone("6281828461");
        cliente.setEmail("carlos@gmail.com");
        cliente.setSenha("123456");
        Timestamp timeStampDate = new Timestamp(data.getTime());
        cliente.setDt_cadatro(timeStampDate);
        cliente.setStatus(1);
        cliente.setDt_ultimo_status(data);
        cliente.setTipo_usuario(1);
                
        System.out.println(cliente.getCpf());
        System.out.println(cliente.getPessoa());
        System.out.println(cliente.getNome());
        System.out.println(cliente.getTelefone());
        System.out.println(cliente.getEmail());
        System.out.println(cliente.getSenha());
        System.out.println(cliente.getDt_cadatro());
        System.out.println(cliente.getStatus());
        System.out.println(cliente.getDt_ultimo_status());
        System.out.println(cliente.getTipo_usuario());
    
        dao.addPessoa(cliente);
            
//        } catch (Exception e) {
////            JOptionPane.showMessageDialog(null, e);
//        }
         
        

    }

 
}
