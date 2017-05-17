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
        <title>Registration | Flat Theme</title>
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

        <form action="Script_do_Formulario.php" method="post">

            <!-- DADOS PESSOAIS-->
            <fieldset>
                <legend>Dados Pessoais</legend>
                <table cellspacing="10">
                    <tr>
                        <td>
                            <label for="nome">Nome: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="email">
                        </td>
                        <td>
                            <label for="sobrenome">Sobrenome: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="sobrenome">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Nascimento: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="dia" size="2" maxlength="2" value="dd"> 
                            <input type="text" name="mes" size="2" maxlength="2" value="mm"> 
                            <input type="text" name="ano" size="4" maxlength="4" value="aaaa">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="rg">RG: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="rg" size="13" maxlength="13"> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>CPF:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="cpf" size="9" maxlength="9"> - 
                            <input type="text" name="cpf2" size="2" maxlength="2">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Telefone:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="telefone1" size="2" maxlength="2"> - 
                            <input type="text" name="telefone2" size="9" maxlength="9">
                        </td>
                    </tr>
                </table>
            </fieldset>
            <br />

            <!-- ENDEREÇO -->
            <fieldset>
                <legend>Dados de Endereço</legend>
                <table cellspacing="10">


                    <tr>
                        <td>
                            <label for="bairro">Bairro: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="bairro">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="rua">Rua:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="rua">
                        </td>
                        <td>
                            <label for="numero">Numero:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="numero" size="4">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="complemento">Complemento:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="complemento">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="estado">Estado:</label>
                        </td>
                        <td align="left">
                            <select name="estado"> 
                                <option value="ac">Acre</option> 
                                <option value="al">Alagoas</option> 
                                <option value="am">Amazonas</option> 
                                <option value="ap">Amapá</option> 
                                <option value="ba">Bahia</option> 
                                <option value="ce">Ceará</option> 
                                <option value="df">Distrito Federal</option> 
                                <option value="es">Espírito Santo</option> 
                                <option value="go">Goiás</option> 
                                <option value="ma">Maranhão</option> 
                                <option value="mt">Mato Grosso</option> 
                                <option value="ms">Mato Grosso do Sul</option> 
                                <option value="mg">Minas Gerais</option> 
                                <option value="pa">Pará</option> 
                                <option value="pb">Paraíba</option> 
                                <option value="pr">Paraná</option> 
                                <option value="pe">Pernambuco</option> 
                                <option value="pi">Piauí</option> 
                                <option value="rj">Rio de Janeiro</option> 
                                <option value="rn">Rio Grande do Norte</option> 
                                <option value="ro">Rondônia</option> 
                                <option value="rs">Rio Grande do Sul</option> 
                                <option value="rr">Roraima</option> 
                                <option value="sc">Santa Catarina</option> 
                                <option value="se">Sergipe</option> 
                                <option value="sp">São Paulo</option> 
                                <option value="to">Tocantins</option> 
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="cidade">Cidade: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="cidade">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="cep">CEP: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="cep" size="5" maxlength="5"> - 
                            <input type="text" name="cep2" size="3" maxlength="3">
                        </td>
                    </tr>
                </table>
            </fieldset>
            <br />

            <br />
            <input type="submit">
            <input type="reset" value="Limpar">
        </form>

    </body>
</html>

