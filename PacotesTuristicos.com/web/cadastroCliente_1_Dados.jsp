<%-- 
    Document   : cadastrar1
    Created on : 17/05/2017, 18:44:57
    Author     : Gylles
--%>

<%@page import="com.pacotesturisticos.model.Endereco"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.pacotesturisticos.model.UsuarioSistema"%>
<%@page import="com.pacotesturisticos.dao.UsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

        <%@include file="cabecalho.jsp" %>

        <section id="title" class="emerald">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Cadastre-se</h1>
                    </div>
                </div>
            </div>
        </section><!--/#title--> 

        <form name="form1" action="Script_do_Formulario.php" method="post">
            
            <%
                UsuarioDao dao = new UsuarioDao();
                UsuarioSistema user = new UsuarioSistema();
                user = dao.getPessoaById(17);
                
                  
            %>

            <!-- DADOS PESSOAIS-->
            <fieldset>
                <legend>Dados Pessoais</legend>
                <table cellspacing="10" class="text-center">
                    <tr>
                        <td>
                            <label for="Cnome">Nome Completo: </label>
                        </td>
                        <td align="left">
                            <%= user.getNome() %> 
                        </td>
                           
                    </tr>
                    <tr>
                        <td>
                            <label for="Csexo">Sexo:</label>
                        </td>
                        <td align="left">
                            <%= user.getSexo()%> 
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label>Nascimento: </label>
                        </td>
                        <td align="left">
                             <%= user.getDt_nasc()%>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="rg">RG: </label>
                        </td>
                        <td align="left">
                             <%= user.getRg()%>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>CPF:</label>
                        </td>
                        <td align="left">
                              <%= user.getCpf()%>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Telefone:</label>
                        </td>
                        <td align="left">
                            <%= user.getTelefone()%>
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
                            <%= user.getpBairro() %>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="rua">Rua:</label>
                        </td>
                        <td align="left">
                             <%= user.getpRua()%>
                        </td>
                     </tr>    
                     <tr>    
                        <td>
                            <label for="numero">Número:</label>
                        </td>
                        <td align="left">
                            <%= user.getpNumero()%>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="complemento">Complemento:</label>
                        </td>
                        <td align="left">
                            <%= user.getpComplemento()%>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="estado">Estado:</label>
                        </td>
                        <td align="left">
                             <%= user.getpEstado()%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="cidade">Cidade: </label>
                        </td>
                         <td align="left">
                             <%= user.getpCidade()%>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <label for="cep">CEP: </label>
                        </td>
                        <td align="left">
                              <%= user.getpCep()%>
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
                            <%= user.getEmail()%>
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <label for="pass">Senha: </label>
                        </td>
                        <td align="left">
                            <%= user.getSenha() %>
                        </td>
                    </tr>

                </table>
            </fieldset>
            <br />
            <input type="submit">
            <input type="reset" value="Limpar">
        </form>

        <%@include file="rodape.jsp" %>

    </body>
</html>

