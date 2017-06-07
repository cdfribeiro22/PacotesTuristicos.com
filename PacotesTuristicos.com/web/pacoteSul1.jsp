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
        <script src="js/scriptCadastro.js" type="text/javascript"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
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

        <div class="container">

            <div id="packageDetail_CVC">

                <h1>PACOTE Beto Carrero com Joinville - 4 dias / 2 diárias com 01 dia de Parque</h1>

                <div id="packageDescription">

                    <p><strong>Sobre o destino: </strong>Já sabe seu destino nas próximas férias? Que tal o Parque Beto Carrero World? O maior parque de diversão da América Latina e o primeiro multitemático, em seus mais de 10 milhões de metros quadrados, oferece atrações para todos os gostos. Os brinquedos agradam tanto a criançada como os adultos, que irão se divertir nas áreas temáticas do complexo. Prepare-se para viver grandes emoções na FireWhipe, uma gigantesca montanha-russa com cinco loopings!</p>
                    <div id="allServicesDiv">
                        <button onclick="window.open('http://www.code3000.blogspot.pt/',
                                        'Code 3000', 'toolbar=no,location=no,status=no,menubar=no,\n\
                                        scrollbars=no,resizable=no,width=500,height=500')
                                        ;">Roteiro dia a dia</button>


                        <button onclick="window.open('http://www.code3000.blogspot.pt/',
                                        'Code 3000', 'toolbar=no,location=no,status=no,menubar=no,\n\
                                        scrollbars=no,resizable=no,width=500,height=500')
                                        ;">Serviços Inclusos</button>
                    </div>

                    <marquee direction="left" scrollamount="3" height="250px" behavior="alternate"  onmouseover="this.stop()" onmouseout="this.start()">
                        <img src="images/pacotesSul1/1.jpg">
                        <img src="images/pacotesSul1/2.jpg">
                        <img src="images/pacotesSul1/3.jpg">
                        <img src="images/pacotesSul1/4.jpg">
                        <img src="images/pacotesSul1/5.jpg">
                    </marquee>
                    <!-- packageGallery -->

                </div>
                <!-- packageDescription -->
                <div id="packageDate">
                    <div id="packageConfig">
                        <strong>Data da sua viagem</strong>
                        <label for="originCity">Cidade de origem:</label>
                        <strong id="originCity">SÃO PAULO</strong>
                        <a href="javascript:;" id="changeCityOrigin" class="blueBtn">Alterar</a>
                        <div class="roomsConfig">
                            <label for="adultsQtd">Adultos:</label>
                            <strong id="adultsQtd">2</strong>
                            <label for="childrenQtd">Crianças:</label>
                            <strong id="childrenQtd">0</strong>
                            <label for="babiesQtd">Bebês:</label>
                            <strong id="babiesQtd">0</strong>
                        </div>
                        <!-- roomsConfig -->
                    </div>
                    <!-- packageConfig -->
                    <tr>
                        <td>
                            <label>Data da Viagem</label>
                        </td>
                        <td align="left">
                            <input type="date" name="dataviagem" required>
                        </td>
                    </tr>

                    <div id="botaocomprar">
                        <a href="pagamento.jsp"><button id="botaocomprar">Comprar</button></a>
                    </div>
                </div>       
            </div>
        </div>

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

