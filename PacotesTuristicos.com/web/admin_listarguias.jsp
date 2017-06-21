<%-- 
    Document   : cadastrar1
    Created on : 17/05/2017, 18:44:57
    Author     : Gylles
--%>

<%@page import="javax.swing.text.Document"%>
<%@page import="com.pacotesturisticos.dao.GuiaDao"%>
<%@page import="com.pacotesturisticos.model.CPessoaGuia"%>
<%@page import="com.pacotesturisticos.model.CPessoaFisica"%>
<%@page import="com.pacotesturisticos.model.CUsuarioSistema"%>

<%@page import="javax.swing.JOptionPane"%>

<%@page import="com.pacotesturisticos.dao.UsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

        <script src="js/scriptCadastro.js" type="text/javascript"></script>
        <title>Registro | PacTur</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->
    
                        

    <body>

        <%@include file="admin_cabecalho.jsp" %>

        <section id="title" class="emerald">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Guias Cadastrados</h1>
                    </div>
                </div>
            </div>
        </section><!--/#title--> 

        <p></p>

        <input type="button" onclick="location.href = 'CadastroGuiaController?action=listGuia';" value="LISTAR" />

        <p></p>



        <!-- DADOS PESSOAIS-->

    <legend>Dados Pessoais</legend>
    <table id=listarMensagens cellspacing="10" class="text-center" border=1>
        <thead>
            <tr align="center">
                <th>Código Cliente</th>
                <th>Nome Completo</th>
                <th>Sexo</th>
                <th>Estado</th>
                <th>Cidade</th>
                <th>E-mail</th>
                <th>Telefone</th>    
                <th></th>
                <th><FONT COLOR="0000FF">Mais Detalhes</th>
            </tr>    
        </thead>        
        <tbody>
            <c:forEach items="${clientes}" var="cliente">
                <tr align="center">
                    <td><c:out value="${cliente.getCodigoCliente()}" /></td>
                    <td><c:out value="${cliente.getNome()}" /></td>
                    <td><c:out value="${cliente.getSexo()}" /></td>
                 
                    <td><c:out value="${cliente.getEstado()}" /></td>
                    <td><c:out value="${cliente.getCidade()}" /></td>
                    
                    <td><c:out value="${cliente.getEmail()}" /></td>
                    <td><c:out value="${cliente.getTelefoneMovel()}" /></td>
                    <td>></td>
                    <td><a href="#"><FONT COLOR="0000FF"><b>Detalhes</b></a></td>
                </tr>
            </c:forEach>   
        </tbody>   

    </table>

    <br />
    

</body>
</html>

