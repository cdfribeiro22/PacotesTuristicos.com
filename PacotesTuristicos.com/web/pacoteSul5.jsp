<%-- 
    Document   : pacotes1
    Created on : 17/05/2017, 18:44:03
    Author     : Gylles
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Pacotes Prontos | PacTur</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
                        <h1>Nossos passeios</h1>
                        <p>Vários passeios por cidades históricas por todo o Brasil</p>
                    </div>
                </div>
            </div>
        </section><!--/#title--> 

        
        <div class="table-responsive">
            <table id="tabela1" border="1">
                <tr><td><img src="images/pacotesSul5/1.jpg" style="width:100%"></td> <td><img src="images/pacotesSul5/6.jpg" style="width:100%"></td> <td><img src="images/pacotesSul5/8.jpg" style="width:100%"></td> </tr>
                <tr><td><img src="images/pacotesSul5/2.jpg" style="width:100%"></td>

                    <td>
                        <font size=5> Beto Carrero com Joinville e Unipraias -<br>
                        5 dias / 3 diárias com 01 dia de Parque</font><br>
                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i></td> 

                    <td><img src="images/pacotesSul5/9.jpg" style="width:100%"></td> </tr>

                <tr><td><img src="images/pacotesSul5/3.jpg" style="width:100%"></td>

                    <td>
                        Aproveite as várias atrações de Fraiburgo, onde você pode<br>
                        fazer trilhas, admirar a flora da região e aprender sobre<br> 
                        preservação ecológica. Já Treze Tílias te leva a um cenário<br> 
                        único, com inspirações austríacas na arquitetura e nas famosas<br> 
                        produções de escultura em madeira. É a mais importante cidade de<br> 
                        colonização austríaca do Brasil e também oferece rica gastronomia.<br> 
                        Curta o passeio por parques, monumentos e trilhas, além das diversas<br> 
                        atividades relacionadas ao turismo rural.<br>
                    </td> 

                    <td><img src="images/pacotesSul5/10.jpg" style="width:100%"></td> </tr>

                <tr><td><img src="images/pacotesSul5/4.jpg" style="width:100%"></td> 

                    <td>
                        <font size=4>Preço por Pessoa</font>
                        <br><font size=2> a partir de</font>
                        <br><font size=4> R$ 1.078,00</font>
                        <br><font size=2> 10x de 107,80</font>
                        <div id="verdetalhes">
                            <a href="pagamento.jsp"><button id="verdetalhes">Comprar</button></a>
                        </div>
                    </td> 

                    <td><img src="images/pacotesSul5/3.jpg" style="width:100%"></td> </tr>
                <tr><td><img src="images/pacotesSul5/5.jpg" style="width:100%"></td> <td><img src="images/pacotesSul5/7.jpg" style="width:100%"></td> <td><img src="images/pacotesSul5/8.jpg" style="width:100%"></td> </tr>
            </table>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <%@include file="rodape.jsp" %>

    </body>
</html>

