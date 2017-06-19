<%-- 
    Document   : cadastrar1
    Created on : 17/05/2017, 18:44:57
    Author     : Gylles
--%>

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
        <script src="js/scriptCadastro.js" type="text/javascript"></script>
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
        <%      UsuarioDao dao = new UsuarioDao();
            CPessoaFisica user = new CPessoaFisica();
            user = dao.getPessoaByEmail(session.getAttribute("login").toString());


        %>

        <form name="form2" action="CadastroGuiaController" method="post" >

            <!-- DADOS PESSOAIS-->
            <fieldset>
                <legend><h2> Dados do Ministérdo Turismo </h2></legend>
                <table cellspacing="10" class="text-center">
                    <tr>
                        <td>
                            <label>CPF:</label>
                        </td>


                        <td align="left">
                            <input id="cpf" type="text"  readonly="true" name="Fcpf" onBlur="ValidarCPF(form2.Fcpf);" onKeyPress="MascaraCPF(form2.Fcpf);" value=" <%= user.getCpf()%>" maxlength="14" required> 
                        </td>
                        <td >

                        </td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <td>
                            <label for="Cnome">Nome Completo: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="Fnome" maxlength="35" size="35" required value=" <%= user.getNome()%>" >
                        </td>

                    </tr>
                    </tr>
                    <tr>
                        <td>
                            <label for="Cnome">Número do Registro: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="Fnome" maxlength="35" size="35" required value=" <%= user.getNome()%>" >
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label for="Ccategoria1">Categoria de atuação 1:</label>
                        </td>
                        <td align="left">
                            <select name="Fcategoria1"> 
                                <option value="">...</option> 
                                <option value="Turismo Regional">Turismo Regional</option> 

                            </select>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label for="Ccategoria2">Categoria de atuação 2:</label>
                        </td>
                        <td align="left">
                            <select name="Fcategoria2"> 
                                <option value="">...</option> 
                                <option value="Turismo Nacional">Turismo Nacional</option> 

                            </select>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label>Data de Expedicao </label>
                        </td>
                        <td align="left">
                            <input type="date" name="Fdtexpedicao" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="idioma1">Idioma 1:</label>
                        </td>
                        <td align="left">
                            <select name="Festado">
                               <option value="Mandarim">-</option>
                                <option value="Arabe">Árabe</option> 
                                <option value="Espanhol">Espanhol</option> 
                                <option value="Frances">Francês</option> 
                                <option value="Ingles">Inglês</option> 
                                <option value="Portugues">Português</option> 
                                <option value="Mandarim">Mandarim</option> 
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="idioma2">Idioma 2:</label>
                        </td>
                        <td align="left">
                            <select name="Festado">
                                <option value="Mandarim">-</option>
                                <option value="Arabe">Árabe</option> 
                                <option value="Espanhol">Espanhol</option> 
                                <option value="Frances">Francês</option> 
                                <option value="Ingles">Inglês</option> 
                                <option value="Portugues">Português</option> 
                                <option value="Mandarim">Mandarim</option> 
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="idioma3">Idioma 3:</label>
                        </td>
                        <td align="left">
                            <select name="Fidioma1"> 
                                <option value="Mandarim">-</option>
                                <option value="Arabe">Árabe</option> 
                                <option value="Espanhol">Espanhol</option> 
                                <option value="Frances">Francês</option> 
                                <option value="Ingles">Inglês</option> 
                                <option value="Portugues">Português</option> 
                                <option value="Mandarim">Mandarim</option> 
                            </select>
                        </td>
                    </tr>    

                    <tr>
                        <td>
                            <label>Tipo CNH</label>
                        </td>
                        <td align="left">
                            <select name="Fidioma3"> 
                                <option value="A">A</option> 
                                <option value="B">B</option> 
                                <option value="C">C</option> 
                                <option value="D">D</option> 
                                <option value="E">E</option> 
                                <option value="AB">AB</option>
                                <option value="AC">AC</option> 
                                <option value="AD">AD</option>
                                <option value="AE">AE</option> 
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Data de Vencimento CNH</label>
                        </td>
                        <td align="left">
                            <input type="date" name="Fnascimento" required>
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

