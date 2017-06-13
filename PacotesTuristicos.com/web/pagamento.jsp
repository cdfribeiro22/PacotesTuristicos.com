<%-- 
    Document   : newjs
    Created on : 06/06/2017, 21:54:29
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

        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="js/jquery.maskedinput.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.min.js"></script>
        <script type="text/javascript" src="js/jquery.zebra-datepicker.js"></script>
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
        <script type="text/javascript">
            // Define máscaras
            $(document).ready(function () {
                $('#data').Zebra_DatePicker();

                $("#datanasc").mask("99/99/9999");
                $("#telefone").mask("(99) 9999-9999");
                $("#cpf").mask("999.999.999-99");
                $("#cep").mask("99999-999");
                $("#codseguranca").mask("999");

                $('#celular').focusout(function () {
                    var phone, element;
                    element = $(this);
                    element.unmask();
                    phone = element.val().replace(/\D/g, '');
                    if (phone.length > 10) {
                        element.mask("(99) 99999-999?9");
                    } else {
                        element.mask("(99) 9999-9999?9");
                    }
                }).trigger('focusout');
            });

            // Define regras para a validação
            $(document).ready(function () {
                $("#validate").validate({
                    // Define as regras
                    rules: {
                        nome: {
                            required: true
                        },
                        email: {
                            required: true, email: true
                        },
                        datanasc: {
                            required: true, date: true
                        },
                    },
                    messages: {
                        nome: {
                            required: "Digite o seu nome",
                        },
                        email: {
                            required: "Digite o seu e-mail para contato",
                            email: "Digite um e-mail válido"
                        },
                        datanasc: {
                            required: "Digite uma data",
                            date: "Digite uma data válida"
                        },
                    }
                });
            });
        </script>
    </head><!--/head-->

    <body>

        <%@include file="cabecalho.jsp" %>

        <section id="title" class="emerald">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Pagamento</h1>
                    </div>
                </div>
            </div>
        </section><!--/#title-->
        <br>


        <!-- DADOS PESSOAIS-->
        <fieldset>
            <div class="formulario">  

                <form action="finalizacao.jsp" method="post" id="validate">           

                    <label>* Nome</label>
                    <input name="nome" type="text" class="g">

                    <label>* E-mail</label>
                    <input name="email" type="text" class="g">

                    <label>Telefone</label>
                    <input name="" type="text" class="p" id="telefone">

                    <label>Celular</label>
                    <input name="" type="text" class="p" id="celular">

                    <label>Data de Nascimento</label>
                    <input name="datanasc" type="text" class="p" id="datanasc">

                    <label>Sexo</label>
                    <select name="" class="m">
                        <option>Selecione</option>
                        <option>Masculino</option>
                        <option>Feminino</option>
                    </select>

                    <label>CEP</label>
                    <input name="" type="text" class="p" id="cep">

                    <label>Endereço</label>
                    <input name="" type="text" class="g">

                    <label>Número</label>
                    <input name="" type="text" class="pp" >

                    <label>Complemento</label>
                    <input name="" type="text" class="m">

                    <label>Bairro</label>
                    <input name="" type="text" class="p">

                    <label>Cidade</label>
                    <input name="" type="text" class="p">

                    <label>Número do Cartão</label>
                    <input name="" type="text" class="p">

                    <label>Nome Impresso no Cartão</label>
                    <input name="" type="text" class="p">

                    <label>Data de Validade - Mês</label>
                    <select name="" class="m1">
                        <option>Mês</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                    </select>
                    <label>Data de Validade - Ano</label>
                    <select name="" class="m1">
                        <option>Ano</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                        <option>24</option>
                        <option>25</option>
                        <option>26</option>
                        <option>27</option>
                    </select>
                    
                    <label>Código de Segurança</label>
                    <input id="codseguranca" name="" type="text" class="pp" >

                    <input type="submit" value="Finalizar">

                </form>
            </div><!--/formulario-->
        </fieldset>
        <br>

        <%@include file="rodape.jsp" %>

    </body>
</html>

