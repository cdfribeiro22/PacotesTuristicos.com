/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pacotesturisticos.bll;

import com.pacotesturisticos.dao.PacotesDao;
import com.pacotesturisticos.dao.UsuarioDao;
import com.pacotesturisticos.model.CPacotes;
import com.pacotesturisticos.model.CPessoaEndereco;
import com.pacotesturisticos.model.CPessoa;
import com.pacotesturisticos.model.CPessoaFisica;
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
@WebServlet("/PacotesController")
public class PacotesController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/admin_cadastrarpacotes.jsp";
    private static String LIST_pacote = "/admin_listarpacotes.jsp";
    private static String LISTAR_OPacote = "/admin_listarpacotes.jsp";
    private PacotesDao dao;

    public PacotesController() {
        super();
        dao = new PacotesDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("ativar")) {

            int CodigoPacote = Integer.parseInt(request.getParameter("CodigoPacote"));
            dao.ativaPacote(CodigoPacote);
            forward = LIST_pacote;
            request.setAttribute("pacotes", dao.getAllPacotes());

        } else if (action.equalsIgnoreCase("desativar")) {

            int CodigoPacote = Integer.parseInt(request.getParameter("CodigoPacote"));
            dao.inativaPacote(CodigoPacote);
            forward = LIST_pacote;
            request.setAttribute("pacotes", dao.getAllPacotes());

        } else if (action.equalsIgnoreCase("edit")) {
            forward = INSERT_OR_EDIT;

////            JOptionPane.showMessageDialog(null, request.getParameter("CodigoCliente"));
            int CodigoPacote = Integer.parseInt(request.getParameter("CodigoPacote"));
            CPacotes pacote = dao.getPacoteById(CodigoPacote);
            request.setAttribute("pacote", pacote);

        } else if (action.equalsIgnoreCase("listPacotes")) {

            forward = LIST_pacote;

            request.setAttribute("pacotes", dao.getAllPacotes());

        } else if (action.equalsIgnoreCase("listarpacote")) {

            forward = LISTAR_OPacote;

            int CodigoCliente = Integer.parseInt(request.getParameter("CodigoPacote"));
            CPacotes pacote = dao.getPacoteById(CodigoCliente);
            request.setAttribute("pacote", pacote);

        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        JOptionPane.showMessageDialog(null, "DOPOST");
        CPacotes pacote = new CPacotes();

        
        pacote.setRegiao(request.getParameter("Fregiao"));
        pacote.setDescpasseio(request.getParameter("fpasseio"));
        pacote.setItem1(request.getParameter("fitem1"));
        pacote.setItem2(request.getParameter("fitem2"));
        pacote.setItem3(request.getParameter("fitem3"));
        pacote.setPreco(request.getParameter("fpreco"));
        
       String CodigoCliente = request.getParameter("CodigoCliente");
        

        if (CodigoCliente == null || CodigoCliente.isEmpty()) {
            dao.addPacoteCadastro(pacote);
        } else {
            pacote.setCodigopacote(Integer.parseInt(CodigoCliente));
//            dao.updatePessoa(pacote);
        }
        
        RequestDispatcher view = request.getRequestDispatcher(LIST_pacote);
        request.setAttribute("clientes", dao.getAllPacotes());
        view.forward(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        JOptionPane.showMessageDialog(null, "Request");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            UsuarioDao dao = new UsuarioDao();

            CPessoaFisica pf = new CPessoaFisica();

            PreparedStatement ps = null;
            Connection cn = null;

            pf.setCpf(request.getParameter("Fcpf"));
//            JOptionPane.showMessageDialog(null, request.getParameter("Ftipopessoa")); 
            if ("1".equals(request.getParameter("Ftipopessoa"))) {
                pf.setTipoPessoa(1);
            }
            pf.setTipoUsuario(1);
            pf.setNome(request.getParameter("Fnome"));
            pf.setSexo(request.getParameter("Fsexo"));

            JOptionPane.showMessageDialog(null, request.getParameter("Fnascimento"));
            Date dob;
            try {
                dob = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("Fnascimento"));
                pf.setDt_nasc(dob);
            } catch (ParseException ex) {
                Logger.getLogger(PacotesController.class.getName()).log(Level.SEVERE, null, ex);
            }

            JOptionPane.showMessageDialog(null, pf.getDt_nasc());

            pf.setDocumento(request.getParameter("Frg"));
            pf.setOrgaoExpeditor(request.getParameter("ForgaoExpeditor"));
            pf.setTelefoneFixo(request.getParameter("Ftelefone1"));
            pf.setTelefoneMovel(request.getParameter("Ftelefone2"));

            pf.setLogradouro(request.getParameter("Frua"));
            pf.setNumero(Integer.parseInt(request.getParameter("Fnumero")));
            pf.setComplemento(request.getParameter("Fcomplemento"));
            pf.setBairro(request.getParameter("Fbairro"));
            pf.setEstado(request.getParameter("Festado"));
            pf.setCidade(request.getParameter("Fcidade"));
            pf.setCod_postal(request.getParameter("Fcep"));
            pf.setPais(request.getParameter("Fpais"));
//            String cep = request.getParameter("Fcep");
//            cep = cep.replace(".", "").replace("-", "");
//            pf.setCod_postal(Integer.parseInt(cep));

            pf.setEmail(request.getParameter("Femail"));
            pf.setSenha(request.getParameter("repetir_senha"));

//            JOptionPane.showMessageDialog(null, "FIM CADASTRO"); 
            dao.addPessoaCadastro(pf);

            String url = "cadastroCliente_1_valido.jsp";
            response.sendRedirect(url);

        } finally {
            out.close();

        }
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
