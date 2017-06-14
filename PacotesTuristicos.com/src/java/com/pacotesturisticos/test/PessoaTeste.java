/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pacotesturisticos.test;

import com.pacotesturisticos.dao.UsuarioDao;
import com.pacotesturisticos.model.CPessoaEndereco;
import com.pacotesturisticos.model.CPessoa;
import com.pacotesturisticos.model.CPessoaFisica;
import com.pacotesturisticos.model.Pessoa;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.swing.JOptionPane;

/**
 *
 * @author Carlos Daniel
 */
public class PessoaTeste {

    public static void main(String[] args) {

//        try {
        UsuarioDao dao = new UsuarioDao();

        CPessoaFisica cliente = new CPessoaFisica();
        BigInteger num = BigInteger.valueOf(0);
        Date d = new Date();
        Calendar cal = new GregorianCalendar();
        cal.getTime();
        BigDecimal decimal = new BigDecimal(num);

        cliente.setTipoPessoa(1);
        cliente.setNome("Carlos 2");

        cliente.setTipoUsuario(1);
        cliente.setEmail("carlos1@gmail.com2");
        cliente.setSenha("1234562");

        cliente.setDocumento("10554201-12");

        cliente.setSexo("Masculino2");
        cliente.setTelefoneFixo("(62)98182-8461");

        cliente.setTelefoneMovel("(62)98182-8461");
        cliente.setCpf("043.345.036.05");
        cliente.setOrgaoExpeditor("SSP-MG2");

        cliente.setLogradouro("Rua 1");
        cliente.setNumero(12345);
        cliente.setComplemento("apto 1");
        cliente.setBairro("bairro 1");
        cliente.setEstado("Estado 1");
        cliente.setCidade(" cidade 1");
        cliente.setCod_postal("74.223-045");
        cliente.setPais("Brasil 1");

        dao.addPessoaCadastro(cliente);

//        } catch (Exception e) {
////            JOptionPane.showMessageDialog(null, e);
//        }
    }

}
