<%-- 
    Document   : cabecalho
    Created on : 04/05/2017, 19:29:08
    Author     : Gylles
--%>


<%@page import="com.pacotesturisticos.dao.GuiaDao"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.pacotesturisticos.model.CPessoaFisica"%>
<%@page import="com.pacotesturisticos.dao.UsuarioDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <link href="css/diversos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <%
                            // verificando se tem um atributo login na sessao
                            // se tiver vai continuar e mostrar o menu
                            if (session.getAttribute("login") != null) {
                                UsuarioDao dao = new UsuarioDao();
                                GuiaDao daoguia = new GuiaDao();
                                CPessoaFisica user = new CPessoaFisica();
                                user = dao.getPessoaByEmail(session.getAttribute("login").toString());
                                //JOptionPane.showMessageDialog(null, user.getCodigoClienteString());

                        %>


                        <li><a href="./">Inicio</a></li>

                        <li><a href="montarPacotes.jsp">Montar Pacotes</a></li>
                        <li><a href="pacotes.jsp">Pacotes</a></li>
                            <%                             // se n�o existir um login na sessao, 
                                // vai enviar para a p�gina de login novamente
                                if (daoguia.ConsultarGuiaExistente(user)) {
                            %>
                        <li> <a href="cadastroGuia_ativo.jsp">Guia Turistico</a></li>
                            <%
                            } else {
                            %>

                        <li>   <a href="cadastroGuia_1.jsp">Guia Turistico (Cadsatro)</a></li>

                        <%
                            }
                        %>

                        <li><a href="contatos.jsp">Contatos</a></li>

                        <li><a href="CadastroController?action=edit&CodigoCliente=<c:out value="<%= user.getCodigoClienteString()%>"/>">Meus Dados</a></li>

                        <li>  <% out.print(session.getAttribute("login").toString()); %> <a></a></li>

                        <li><a class="btn btn-danger" href="LoginServlet1?acao=logout">Logout</a></li>
                            <%
                                // se n�o existir um login na sessao, 
                                // vai enviar para a p�gina de login novamente
                                String logado = "admin@pactur.com";
                                if (session.getAttribute("login") != null && (logado.equals(session.getAttribute("login")))) {
                            %>
                        <li><a href="admin_index.jsp">Gerenciar Site</a></li>

                        <%
                            }
                        %>                            
                        <%
                            // se n�o existir um login na sessao, 
                            // vai enviar para a p�gina de login novamente
                        } else {
                        %>
                        <li><a href="login.jsp">Login</a></li>
                            <%
                                }
                            %>                    

                    </ul>
                </div>



            </div>
        </header><!--/header-->

    </body>


</html>
