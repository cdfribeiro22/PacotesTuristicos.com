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

            <!-- DADOS PESSOAIS-->
            <fieldset>
                <legend>Dados Pessoais</legend>
                <table cellspacing="10" class="text-center">
                    <tr>
                        <td>
                            <label for="Cnome">Nome Completo: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="Cnome">
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label for="Csexo">Sexo:</label>
                        </td>
                        <td align="left">
                            <select name="sexo"> 
                                <option value="M">...</option> 
                                <option value="M">Masculino</option> 
                                <option value="F">Feminino</option> 
                            </select>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label>Nascimento: </label>
                        </td>
                        <td align="left">
                            <input type="date" name="CNAscimento" required>
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
                            <input type="text" name="cpf" onBlur="ValidarCPF(form1.cpf);" onKeyPress="MascaraCPF(form1.cpf);"  maxlength="14"> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Telefone:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="telefone2" size="11" maxlength="11">
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
                            <label for="numero">Número:</label>
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
                            <input type="text" name="cep" size="7" maxlength="7">
                           
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
                            <input type="text" name="email">
                        </td>
                    </tr>
                    <!--
                    <tr>
                        <td>
                            <label for="imagem">Imagem de perfil:</label>
                        </td>
                        <td>
                            <input type="file" name="imagem" >

                        </td>
                    </tr>
                    -->
                    <tr>
                        <td>
                            <label for="pass">Senha: </label>
                        </td>
                        <td align="left">
                            <input type="password" name="pass">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="passconfirm">Confirme a senha: </label>
                        </td>
                        <td align="left">
                            <input type="password" name="passconfirm">
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

