<%-- 
    Document   : cadastrar1
    Created on : 17/05/2017, 18:44:57
    Author     : Gylles
--%>

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
                        <h1>Cadastrar Novo Passeio</h1>
                    </div>
                </div>
            </div>
        </section><!--/#title--> 

        <form  name="form1" action='PasseioController'   method="post">
            

            
            <!-- DADOS PESSOAIS-->
            <fieldset>
                <legend>Passeio: </legend>
                <table cellspacing="10" class="text-center">
                     <tr>
                        <td>
                            <label for="fcodigo">Código do Passeio </label>
                        </td>
                        <td align="left">
                             <input type="text" readonly="true" name="fcodigo" value="0" />
                        </td>
                           
                    </tr>
                    <tr>
                        <td>
                            <label for="fcodigo">Nome do Passeio: </label>
                        </td>
                        <td align="left">
                             <input type="text"  name="fnomepasseio" value="<c:out value="${passeio.getNomepasseio()}" />" />  
                        </td>
                           
                    </tr>
                    
                    <tr>
                        <td>
                            <label for="Cregiao">Descrição do Passeio: </label>
                        </td>
                        <td align="left">
                           <input type="text"  name="fpasseio" maxlength="140" size="150" value="<c:out value="${passeio.getDescpasseio()}" />" /> 
                        </td>
                           
                    </tr>
                    <tr>
                        <td>
                            <label for="Ccategoria2">Periodo:</label>
                        </td>
                        <td align="left">
                            <select name="Fperiodo"> 
                                <option value="">...</option> 
                                <option value="Manhã">Manhã</option>
                                <option value="Tarde">Tarde</option> 
                                <option value="Noite">Noite</option> 
                                <option value="Dia todo">Dia Todo</option> 

                            </select>
                        </td>

                    </tr>

                   <tr>
                        <td>
                            <label for="Cpencontro">Ponto de Encontro: </label>
                        </td>
                        <td align="left">
                            <input type="text"  name="fpencontro" maxlength="30" size="30" value="<c:out value="${passeio.getPontodeencontro()}" />" /> 
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label for="Ccodguia">Codigo do Guia </label>
                        </td>
                        <td align="left">
                            <input type="text"  name="fcodigoguia" maxlength="30" size="30" value="<c:out value="${passeio.getCodigoguia()}" />" /> 
                        </td>

                    </tr>
                     <tr>
                        <td>
                            <label for="Cvalor">Valor: </label>
                        </td>
                        <td align="left">
                            <input type="text"  name="fvalor" onkeyup="moeda(this);" value="<c:out value="${passeio.getValor()}" />" /> 
                        </td>

                    </tr>

                </table>
            </fieldset>
            <br />
             
            <input type="submit" value="Alterar/Incluir">
            
        </form>

       

    </body>
</html>

