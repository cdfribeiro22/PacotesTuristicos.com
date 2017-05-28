package com.pacotesturisticos.bll;

import com.pacotesturisticos.dao.UsuarioDao;
import com.pacotesturisticos.model.UsuarioSistema;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import javax.servlet.annotation.WebServlet;

@WebServlet("/ClienteController")
public class ClienteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/clientes.jsp";
    private static String LIST_Cliente = "/clientes_listar.jsp";
    private UsuarioDao dao;

    public ClienteController() {
        super();
        dao = new UsuarioDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            dao.deleteCliente(codigo);
            forward = LIST_Cliente;
            request.setAttribute("clientes", dao.getAllCliente());

        } else if (action.equalsIgnoreCase("edit")) {
            forward = INSERT_OR_EDIT;
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            UsuarioSistema pessoa = dao.getPessoaById(codigo);
            request.setAttribute("cliente", pessoa);

        } else if (action.equalsIgnoreCase("listCliente")) {
            forward = LIST_Cliente;
            request.setAttribute("clientes", dao.getAllCliente());

        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsuarioSistema pessoa = new UsuarioSistema();

//        pessoa.setNome(request.getParameter("nome"));
//        pessoa.setEndereco(request.getParameter("endereco"));
//        pessoa.setCidade(request.getParameter("cidade"));
//        pessoa.setEstado(request.getParameter("estado"));
//        pessoa.setRg(request.getParameter("rg"));
//        pessoa.setCpf(request.getParameter("cpf"));
//        pessoa.setTelefone(request.getParameter("telefone"));
//        pessoa.setCep(request.getParameter("cep"));
//
        String codigo = request.getParameter("codigo");

        if (codigo == null || codigo.isEmpty()) {
            dao.addPessoa(pessoa);
        } else {
            pessoa.setCodigo(Integer.parseInt(codigo));
            dao.updatePessoa(pessoa);
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_Cliente);
        request.setAttribute("clientes", dao.getAllCliente());
        view.forward(request, response);
    }
}
