<%-- 
    Document   : cadastrar1
    Created on : 17/05/2017, 18:44:57
    Author     : Gylles
--%>

<%@page import="com.pacotesturisticos.model.CPacotes"%>
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

      

        <section id="title" class="emerald">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Listas de Passeios</h1>
                    </div>
                </div>
            </div>
        </section><!--/#title--> 

        <p></p>

        <input type="button" onclick="location.href = 'PacotesController?action=listPacotes';" value="LISTAR" />
        <input type="button" onclick="location.href = 'admin_listarpacotes.jsp';" value="Voltar para Pacotes" />
        
        <p></p>



        <!-- DADOS PESSOAIS-->

    <legend>Dados Pessoais</legend>
    <table id=listarMensagens cellspacing="10" class="text-center" border=1>
        <thead>
            <tr align="center">
                <th>Código Pacote</th>
                <th>Região</th>
                <th>Descrição do Pacote</th>
                <th>Item 1 do Pacote</th>
                <th>Item 2 do Pacote</th>
                <th>Item 3 do Pacote</th>
                <th>Preço</th>
                <th>Status</th>
                <th><FONT COLOR="0000FF">Ativar pacote</th>
                <th><FONT COLOR="0000FF">Inativar pacote</th>
                
            </tr>    
        </thead>        
        <tbody>
            <c:forEach items="${pacotes}" var="pacote">
                <tr align="center">
                    <td><c:out value="${pacote.getCodigopacote()}" /></td>
                    <td><c:out value="${pacote.getRegiao()}" /></td>
                    <td><c:out value="${pacote.getDescpacote()}" /></td>
                    <td><c:out value="${pacote.getItem1()}" /></td>
                    <td><c:out value="${pacote.getItem2()}" /></td>
                    <td><c:out value="${pacote.getItem3()}" /></td>
                    <td><c:out value="${pacote.getPreco()}" /></td>
                    <td><c:out value="${pacote.getStatus()}" /></td>
                    <td><a href="PacotesController?action=ativar&CodigoPacote=<c:out value="${pacote.getCodigopacote()}"/>"><FONT COLOR="0000FF"><b>Ativar</b></a></td>
                    <td><a href="PacotesController?action=desativar&CodigoPacote=<c:out value="${pacote.getCodigopacote()}"/>"><FONT COLOR="0000FF"><b>Inativar</b></a></td>
                </tr>
            </c:forEach>   
        </tbody>   

    </table>

    <br />
    

</body>
</html>

