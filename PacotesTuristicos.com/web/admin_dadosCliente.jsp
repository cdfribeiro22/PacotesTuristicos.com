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
                        <h1>Meus Dados Cadastrados</h1>
                    </div>
                </div>
            </div>
        </section><!--/#title--> 

        <form method="post" action="CadastroController" name="form1"  >
            
            <!-- DADOS PESSOAIS-->
            <fieldset>
                <legend>Dados Pessoais</legend>
                <table cellspacing="10" class="text-center">
                     <tr>
                        <td>
                            <label for="Cnome">Código Cliente: </label>
                        </td>
                        <td align="left">
                            <td> <input type="text" readonly="readonly"  name="fcodigo" value="<c:out value="${cliente.getCodigoCliente()}" />" /> </td> 
                        </td>
                           
                    </tr>
                    <tr>
                        <td>
                            <label for="Cnome">Nome Completo: </label>
                        </td>
                        <td align="left">
                           <td> <input type="text" readonly="readonly"   name="fnome" value="<c:out value="${cliente.getNome()}" />" /> </td> 
                        </td>
                           
                    </tr>
                    <tr>
                        <td>
                            <label for="Csexo">Sexo:</label>
                        </td>
                        <td align="left">
                           <td> <input type="text"  readonly="readonly"   name="fsexo" value="<c:out value="${cliente.getSexo()}" />" /> </td> 
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label>Nascimento: </label>
                        </td>
                        <td align="left">
                          <td> <input type="date" readonly="readonly"   name="Fnascimento" value="<c:out value="${cliente.getDt_nasc()}" />" /> </td> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="rg">RG: </label>
                        </td>
                        <td align="left">
                            <td> <input type="text"  readonly="readonly" name="Frg" value="<c:out value="${cliente.getDocumento()}" />" /> </td> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>CPF:</label>
                        </td>
                        <td align="left">
                             <td> <input type="text"  readonly="readonly" name="Fcpf" value="<c:out value="${cliente.getCpf()}" />" /> </td> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Telefone:</label>
                        </td>
                        <td align="left">
                           <td> <input type="text" readonly="readonly" name="codigo" value="<c:out value="${cliente.getTelefoneFixo()}" />" /> </td> 
                        </td>
                    </tr>
                </table>
            </fieldset>
            <br />

            <!-- ENDEREÇO -->
            <fieldset>
                <legend>Dados de Endereço</legend>
                <table cellspacing="10" class="text-center">


                    <tr>
                        <td>
                            <label for="bairro">Bairro: </label>
                        </td>
                        <td align="left">
                            <td> <input type="text"  readonly="readonly" name="Fbairro" value="<c:out value="${cliente.getBairro()}" />" /> </td> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="rua">Rua:</label>
                        </td>
                        <td align="left">
                             <td> <input type="text"  readonly="readonly" name="Frua" value="<c:out value="${cliente.getLogradouro()}" />" /> </td> 
                        </td>
                     </tr>    
                     <tr>    
                        <td>
                            <label for="numero">Número:</label>
                        </td>
                        <td align="left">
                           <td> <input type="text"  readonly="readonly" name="Fnumero" value="<c:out value="${cliente.getNumero()}" />" /> </td> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="complemento">Complemento:</label>
                        </td>
                        <td align="left">
                            <td> <input type="text"  readonly="readonly" name="Fcomplemento" value="<c:out value="${cliente.getComplemento()}" />" /> </td> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="estado">Estado:</label>
                        </td>
                        <td align="left">
                             <td> <input type="text"  readonly="readonly" name="Festado" value="<c:out value="${cliente.getEstado()}" />" /> </td> 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="cidade">Cidade: </label>
                        </td>
                         <td align="left">
                             <td> <input type="text"  readonly="readonly" name="Fcidade" value="<c:out value="${cliente.getCidade()}" />" /> </td> 
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <label for="cep">CEP: </label>
                        </td>
                        <td align="left">
                             <td> <input type="text"  readonly="readonly" name="Fcep" value="<c:out value="${cliente.getCod_postal()}" />" /> </td> 
                         </td>
                    </tr>
                </table>
            </fieldset>
            <br />

            <!-- DADOS DE LOGIN -->
            <fieldset>
                <legend>Dados de login</legend>
                <table cellspacing="10" class="text-center">
                    <tr>
                        <td>
                            <label for="email">E-mail: </label>
                        </td>
                        <td align="left">
                            <td> <input type="text"  readonly="readonly" name="Femail" value="<c:out value="${cliente.getEmail()}" />" /> </td> 
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <label for="pass">Senha: </label>
                        </td>
                        <td align="left">
                           <td> <input type="text" readonly="readonly" name="Fsenha" value="<c:out value="*******" />" /> </td> 
                        </td>
                    </tr>

                </table>
            </fieldset>
            
            <a href="admin_listarclientes.jsp">< VOLTAR</a>
            <br />
        </form>

       

    </body>
</html>

