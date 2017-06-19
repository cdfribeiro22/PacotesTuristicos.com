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
                <legend>Dados Pessoais</legend>
                <table cellspacing="10" class="text-center">
                    <tr>
                        <td>
                            <label>CPF:</label>
                        </td>


                        <td align="left">
                            <input id="cpf" type="text" name="Fcpf" onBlur="ValidarCPF(form2.Fcpf);" onKeyPress="MascaraCPF(form2.Fcpf);" value=" <%= user.getCpf()%>" maxlength="14" required> 
                        </td>
                        <td >
                            <p id="cpfinvalido"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="Cnome">Nome Completo: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="Fnome" maxlength="35" size="35" required>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label for="Csexo">Sexo:</label>
                        </td>
                        <td align="left">
                            <select name="Fsexo"> 
                                <option value="">...</option> 
                                <option value="Masculino">Masculino</option> 
                                <option value="Feminino">Feminino</option> 
                            </select>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label>Data de Nascimento: </label>
                        </td>
                        <td align="left">
                            <input type="date" name="Fnascimento" required>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="rg">RG: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="Frg" size="20" maxlength="15" required> 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Telefone:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="Ftelefone" onKeyPress="MascaraTelefone(form2.Ftelefone);" maxlength="14" required>
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
            <!-- ENDEREÇO ------------------------------------------------------------------------------>
            <fieldset>
                <legend>Dados de Endereço</legend>
                <table cellspacing="10" class="text-center">
                    <tr>
                        <td>
                            <label for="rua">Rua:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="Frua" size="30" maxlength="30" required>
                        </td>
                        <td>
                            <label for="numero">Número:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="Fnumero" size="6" maxlength="6" required>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="complemento">Complemento:</label>
                        </td>
                        <td align="left">
                            <input type="text" name="Fcomplemento" size="30" maxlength="30">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="bairro">Bairro: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="Fbairro" size="30" maxlength="30" required>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="estado">Estado:</label>
                        </td>
                        <td align="left">
                            <select name="Festado"> 
                                <option value="Acre">Acre</option> 
                                <option value="Alagoas">Alagoas</option> 
                                <option value="Amazonas">Amazonas</option> 
                                <option value="Amapá">Amapá</option> 
                                <option value="Bahia">Bahia</option> 
                                <option value="Ceará">Ceará</option> 
                                <option value="Distrito">Distrito Federal</option> 
                                <option value="Espírito">Espírito Santo</option> 
                                <option value="Goiás">Goiás</option> 
                                <option value="Maranhão">Maranhão</option> 
                                <option value="Mato Grosso">Mato Grosso</option> 
                                <option value="Mato Grosso do Sul">Mato Grosso do Sul</option> 
                                <option value="Minas Gerais">Minas Gerais</option> 
                                <option value="Pará">Pará</option> 
                                <option value="Paraíba">Paraíba</option> 
                                <option value="Paraná">Paraná</option> 
                                <option value="Pernambuco">Pernambuco</option> 
                                <option value="Piauí">Piauí</option> 
                                <option value="Rio de Janeiro">Rio de Janeiro</option> 
                                <option value="Rio Grande do Norte">Rio Grande do Norte</option> 
                                <option value="Rondônia">Rondônia</option> 
                                <option value="Rio Grande do Sul">Rio Grande do Sul</option> 
                                <option value="Roraima">Roraima</option> 
                                <option value="Santa Catarina">Santa Catarina</option> 
                                <option value="Sergipe">Sergipe</option> 
                                <option value="São Paulo">São Paulo</option> 
                                <option value="Tocantins">Tocantins</option> 
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="cidade">Cidade: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="Fcidade" size="30" maxlength="30" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="cep">CEP: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="Fcep" onKeyPress="MascaraCep(form2.Fcep);" maxlength="10" required>

                        </td>
                    </tr>
                </table>
            </fieldset>
            <br />

            <!-- DADOS DE LOGIN --------------------------------------------------------------------->
            <fieldset>
                <legend>Dados de Login</legend>
                <table cellspacing="10" class="text-center">
                    <tr>
                        <td>
                            <label for="email">E-mail: </label>
                        </td>
                        <td align="left">
                            <input type="text" name="Femail" onBlur="validacaoEmail(form2.Femail);"  maxlength="40" size='40' required>
                        </td>
                        <td >
                            <p id="emailinvalido"></p>
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

                            <input id="txtSenha" name="senha" type="password" required placeholder="Digite uma Senha" title="Senha" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="passconfirm">Confirme a senha: </label>
                        </td>
                        <td align="left">

                            <input id="repetir_senha" name="repetir_senha" type="password" required  onBlur="validarSenha(this);" placeholder="Repetir Senha" title="Repetir Senha" />
                        </td>
                        <td >
                            <p id="senhainvalida"></p>
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

