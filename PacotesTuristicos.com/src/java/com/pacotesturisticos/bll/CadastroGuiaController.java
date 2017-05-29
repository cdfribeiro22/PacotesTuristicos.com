/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pacotesturisticos.bll;

import com.pacotesturisticos.dao.UsuarioDao;
import com.pacotesturisticos.model.Endereco;

import com.pacotesturisticos.model.UsuarioSistema;
import com.pacotesturisticos.model.UsuarioSistemaGuia;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author Carlos Daniel
 */

@WebServlet("/CadastroGuiaController")
public class CadastroGuiaController extends HttpServlet {
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        JOptionPane.showMessageDialog(null, "Request");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
           UsuarioDao dao = new UsuarioDao();
           UsuarioSistemaGuia cliente = new UsuarioSistemaGuia();
           Endereco casa = new Endereco();
           
            PreparedStatement ps = null;
            Connection cn = null;
                       
            cliente.setCpf(request.getParameter("Fcpf"));
            cliente.setNome(request.getParameter("Fnome"));
            cliente.setSexo((request.getParameter("Fsexo")));
            Date data = new Date();
            Timestamp timeStampDate = new Timestamp(data.getTime());
            cliente.setDt_nasc(timeStampDate);
            cliente.setRg(request.getParameter("Frg"));
            cliente.setTelefone(request.getParameter("Ftelefone"));
            cliente.setIdioma1(request.getParameter("Fidioma1"));
            cliente.setIdioma2(request.getParameter("Fidioma2"));
            cliente.setIdioma3(request.getParameter("Fidioma3"));
            cliente.setIdioma1(request.getParameter("Fcnh"));
            cliente.setIdioma1(request.getParameter("Fdatacnh"));
            casa.setLogradouro(request.getParameter("Frua"));
            casa.setNumero(Integer.parseInt(request.getParameter("Fnumero")));
            casa.setComplemento(request.getParameter("Fcomplemento"));
            casa.setBairro(request.getParameter("Fbairro"));
            casa.setEstado(request.getParameter("Festado"));
            casa.setCidade(request.getParameter("Fcidade"));
            String cep = request.getParameter("Fcep");
            cep = cep.replace(".", "").replace("-", "");
            casa.setCod_postal(Integer.parseInt(cep));
                       
            cliente.setEmail(request.getParameter("Femail"));
            cliente.setSenha(request.getParameter("repetir_senha"));
                        
            JOptionPane.showMessageDialog(null, cliente.getNome() 
                                        + "\n " + cliente.getCpf()
                                        + "\n " + cliente.getSexo()
                                        + "\n " + cliente.getDt_nasc()
                                        + "\n " + cliente.getRg()
                                        + "\n " + cliente.getTelefone()
                    
                    
                                                + "\n " + casa.getLogradouro()
                                                + "\n " + casa.getNumero()
                                                + "\n " + casa.getComplemento()
                                                + "\n " + casa.getBairro()
                                                + "\n " + casa.getEstado()
                                                + "\n " + casa.getCidade()
                                                + "\n " + casa.getCod_postal()
                                        + "\n " + cliente.getEmail()
                                        + "\n " + cliente.getSenha()

            );
            
                   
        
            dao.addPessoaCadastro(cliente , casa);
            
            String url = "cadastroCliente_1_valido.jsp";
            response.sendRedirect(url);
            
        } finally {
            out.close();
        
         }
    }
//            try {
//            Date dob = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("Fnascimento"));
//            cliente.setDt_nasc(dob);
//            JOptionPane.showMessageDialog(null, cliente.getDt_nasc());
//            } catch (ParseException e) {
//                JOptionPane.showMessageDialog(null, e);
//            }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
