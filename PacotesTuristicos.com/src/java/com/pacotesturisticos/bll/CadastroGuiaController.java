/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pacotesturisticos.bll;

import com.pacotesturisticos.dao.GuiaDao;
import com.pacotesturisticos.dao.UsuarioDao;
import com.pacotesturisticos.model.CPessoaEndereco;
import com.pacotesturisticos.model.CPessoa;
import com.pacotesturisticos.model.CPessoaFisica;
import com.pacotesturisticos.model.CPessoaGuia;
import com.pacotesturisticos.model.CUsuarioSistema;

import com.pacotesturisticos.model.Pessoa;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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

    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/cadastroGuia_valido.jsp";
    private static String LIST_Cliente = "/cadastroGuia.jsp";
    private static String LIST_Admin_Clientes = "/cadastroGuia.jsp";
    private static String LIST_OCliente = "/cadastroGuia.jsp";
    private GuiaDao dao;

    public CadastroGuiaController() {
        super();
        dao = new GuiaDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("ativar")) {

//            int CodigoCliente = Integer.parseInt(request.getParameter("CodigoCliente"));
//            dao.ativaCliente(CodigoCliente);
//            forward = LIST_Admin_Clientes;
//            request.setAttribute("clientes", dao.getAllCliente());
        } else if (action.equalsIgnoreCase("inativar")) {

//            int CodigoCliente = Integer.parseInt(request.getParameter("CodigoCliente"));
//            dao.inativaCliente(CodigoCliente);
//            forward = LIST_Admin_Clientes;
//            request.setAttribute("clientes", dao.getAllCliente());
        } else if (action.equalsIgnoreCase("edit")) {
            forward = INSERT_OR_EDIT;

////            JOptionPane.showMessageDialog(null, request.getParameter("CodigoCliente"));
//            int CodigoCliente = Integer.parseInt(request.getParameter("CodigoCliente"));
//            CPessoaFisica cliente = dao.getPessoaById(CodigoCliente);
//            request.setAttribute("cliente", cliente);

        } else if (action.equalsIgnoreCase("listCliente")) {

//            forward = LIST_Admin_Clientes;
//            
//            request.setAttribute("clientes", dao.getAllCliente());
//            
        } else if (action.equalsIgnoreCase("listarCliente")) {

//            forward = LIST_OCliente;
//            
//            int CodigoCliente = Integer.parseInt(request.getParameter("CodigoCliente"));
//            CPessoaFisica cliente = dao.getPessoaById(CodigoCliente);
//            request.setAttribute("cliente", cliente);
//           
        } else {
           
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        JOptionPane.showMessageDialog(null, "DOPOST");
        CPessoaGuia guia = new CPessoaGuia();

        guia.setCodigocliente(Integer.parseInt(request.getParameter("Fcodigocliente")));
//            JOptionPane.showMessageDialog(null, request.getParameter("Ftipopessoa")); 
        guia.setNumerodoregistro(request.getParameter("Fregistro"));
        guia.setCategoria1(request.getParameter("Fcategoria1"));
        guia.setCategoria2(request.getParameter("Fcategoria2"));

//                   JOptionPane.showMessageDialog(null, request.getParameter("Fnascimento"));
        Date dob;
        try {
            dob = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("Fdtexpedicao"));
            guia.setDataexpedicao(dob);
        } catch (ParseException ex) {
            Logger.getLogger(CadastroGuiaController.class.getName()).log(Level.SEVERE, null, ex);
        }

//            JOptionPane.showMessageDialog(null, cliente.getDt_nasc());
        guia.setIdioma1(request.getParameter("Fidioma1"));
        guia.setIdioma2(request.getParameter("Fidioma2"));
        guia.setIdioma3(request.getParameter("Fidioma3"));
        guia.setCnh(request.getParameter("Fcnh"));
        Date dob1;
        try {
            dob1 = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("Fdatecnh"));
            guia.setDtcnhvencimento(dob1);
        } catch (ParseException ex) {
            Logger.getLogger(CadastroGuiaController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
       
            dao.addGuiaCadastro(guia);
            String forward = "";
            forward = INSERT_OR_EDIT;
             RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
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
