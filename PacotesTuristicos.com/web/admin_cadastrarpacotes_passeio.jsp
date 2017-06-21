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

      

        <section id="title" class="emerald">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Cadastrar Novo Pacote</h1>
                    </div>
                </div>
            </div>
        </section><!--/#title--> 

        <form  name="form1" action='PacotesController'   method="post">
            

            
            <!-- DADOS PESSOAIS-->
            <fieldset>
                <legend>Dados do Pacotes</legend>
                <table cellspacing="10" class="text-center">
                     <tr>
                        <td>
                            <label for="fcodigo">Código do Pacote: </label>
                        </td>
                        <td align="left">
                             <input type="text" readonly="true" name="fcodigo" value="<c:out value="${pacote.getCodigopacote()}" />" />  
                        </td>
                           
                    </tr>
                    <tr>
                        <td>
                            <label for="Cregiao">Região: </label>
                        </td>
                        <td align="left">
                            <select name="Fregiao"> 
                                <option value="">Selecione</option> 
                                <option value="Sul">Sul</option> 
                                <option value="Sudeste">Sudeste</option> 
                                <option value="Centro-Oeste">Centro-Oeste</option> 
                                <option value="Nordeste">Nordeste</option> 
                                <option value="Norte">Norte</option> 
                            </select>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label for="Cpacote">Pacote: </label>
                        </td>
                        <td align="left">
                           <input type="text"  name="fpacote" maxlength="40" size="50" value="<c:out value="${pacote.getDescpasseio()}" />" /> 
                        </td>
                           
                    </tr>
                    <tr>
                        <td>
                            <label for="Csexo">Item 1: </label>
                        </td>
                        <td align="left">
                            <input type="text"  name="fitem1" maxlength="30" size="30" value="<c:out value="${pacote.getItem1()}" />" /> 
                        </td>

                    </tr>

                   <tr>
                        <td>
                            <label for="Csexo">Item 2: </label>
                        </td>
                        <td align="left">
                            <input type="text"  name="fitem2" maxlength="30" size="30" value="<c:out value="${pacote.getItem1()}" />" /> 
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label for="Csexo">Item 3: </label>
                        </td>
                        <td align="left">
                            <input type="text"  name="fitem3" maxlength="30" size="30" value="<c:out value="${pacote.getItem1()}" />" /> 
                        </td>

                    </tr>
                     <tr>
                        <td>
                            <label for="Cvalor">Valor: </label>
                        </td>
                        <td align="left">
                            <input type="text"  name="fpreco" onkeyup="moeda(this);" value="<c:out value="${pacote.getItem1()}" />" /> 
                        </td>

                    </tr>

                </table>
            </fieldset>
            <br />
             
            <input type="submit" value="Alterar/Incluir">
            
        </form>

       

    </body>
</html>

