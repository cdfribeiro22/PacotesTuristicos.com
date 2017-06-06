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

        <div class="container">

            <div id="packageDetail_CVC">

                <h1>PACOTE Beto Carrero com Joinville - 4 dias / 2 diárias com 01 dia de Parque</h1>

                <div id="packageDescription">

                    <p><strong>Sobre o destino: </strong>Já sabe seu destino nas próximas férias? Que tal o Parque Beto Carrero World? O maior parque de diversão da América Latina e o primeiro multitemático, em seus mais de 10 milhões de metros quadrados, oferece atrações para todos os gostos. Os brinquedos agradam tanto a criançada como os adultos, que irão se divertir nas áreas temáticas do complexo. Prepare-se para viver grandes emoções na FireWhipe, uma gigantesca montanha-russa com cinco loopings!</p>
                    <div id="allServicesDiv">
                        <a href="javascript:;" id="EverydayScript" class="blueBtn" title="Roteiro dia a dia" trigger="click" modal="EveryDayScript">Roteiro dia a dia</a>
                        <a href="javascript:;" id="AllServicesIncluded" class="blueBtn" title="Serviços Inclusos" trigger="click" modal="EveryDayScript">Serviços Inclusos</a>
                    </div>
                    <div id="packageGallery">

                        <div class="thumbsHolder">
                            <ul>
                                <div class="scroller" style="width: 592px;">

                                    <li class="imageItem  active">
                                        <a href="javascript:;">
                                            <img src="images/pacotesSul1/1.jpg" width="33" height="28">
                                        </a>
                                    </li>

                                    <li class="imageItem ">
                                        <a href="javascript:;">
                                            <img src="images/pacotesSul1/2.jpg" width="33" height="28">
                                        </a>
                                    </li>

                                    <li class="imageItem ">
                                        <a href="javascript:;">
                                            <img src="images/pacotesSul1/3.jpg" width="33" height="28">
                                    </li>

                                    <li class="imageItem ">
                                        <a href="javascript:;">
                                            <img src="images/pacotesSul1/4.jpg" width="33" height="28">
                                        </a>
                                    </li>

                                    <li class="imageItem ">
                                        <a href="javascript:;">
                                            <img src="images/pacotesSul1/5.jpg" width="33" height="28">
                                        </a>
                                    </li>

                                </div>
                                <!-- scroller -->
                            </ul>
                            <a href="javascript:;" class="prevBtn">Voltar</a>
                            <a href="javascript:;" class="nextBtn">Próximo</a>
                        </div>
                        <!-- thumbsHolder -->
                        <div class="bigImageContainer">
                            <img class="imageBig" src="../../img.cvc.com.br/images/189723.jpg" alt="BETO CARRERO WORLD" title="BETO CARRERO WORLD">
                            <p class="image-legend hide">BETO CARRERO WORLD</p>
                        </div>
                        <!-- bigImageContainer -->
                        <a href="javascript:;" class="galleryPrev previous">Anterior</a>
                        <a href="javascript:;" class="galleryNext next">Próximo</a>

                    </div>
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
                            <label for="roomsQtd">Quartos:</label>
                            <strong id="roomsQtd">1</strong>
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
                    <div id="packageCalendar"></div>
                    <!-- packageCalendar -->
                    <span class="package-info">Preço por pessoa.</span>
                    <span class="legend">
                        <strong>Legenda:</strong>
                        <span class="color1"></span>
                        <span>Datas promocionais</span>
                        <span class="color2"></span>
                        <span>Datas disponíveis</span>
                    </span>
                    <div id="calendarPreLoader"></div>
                    <div id="liUnavailableFlights" style="display: none">
                        <a href="javascript://void(0);" class="send" title="Visualizar vôos indiponíveis" trigger="click" modal="UnavaiableFlighScript">Vôos indisponíveis</a>
                    </div>
                </div>
                <div class="messageImportant">
                    <p><strong>Importante:</strong> Quando houver a inclusão da criança ou bebê na viagem o valor total do quarto será dividido pela quantidade de passageiros. Para casos de promoção que incluam bebê ou criança grátis, o desconto já estará aplicado no total do quarto e dividido pelo total de passageiros (adulto ou criança ou bebê).</p>
                </div>        
                <!-- packageDate -->
                <div id="packagesHolder">


                    <div id="packageBoxContainer" class="engine_search" style="position: absolute; top: inherit; left: inherit;">
                        <div class="msgText">
                            Encontramos o melhor preço para a sua pesquisa!
                        </div>
                        <div id="primaryBoxContainer">
                            <div id="boxAereo" class="itemBox">
                                <div class="itemHeader">
                                    <strong class="title">Voo</strong>
                                    <a href="javascript:;" class="seeItemDetails">Ver detalhes</a>
                                </div>
                                <strong class="addTitle">Nenhum voo adicionado</strong>
                                <a href="javascript:;" class="addItem">Adicionar</a>
                            </div>
                        </div>
                        <div id="secondBoxContainer">
                            <div id="selectedHotel" class="itemBox">
                                <div class="itemHeader">
                                    <strong class="title">Hotel</strong>
                                    <a href="javascript:;" class="seeItemDetails">Ver detalhes</a>
                                </div>
                                <strong class="addTitle">Nenhum hotel adicionado</strong>
                                <a href="javascript:;" class="addItem">Adicionar</a>
                            </div>
                        </div>
                        <div id="servicesContainer" class="itemBox">
                            <div class="itemHeader">
                                <strong class="title">Serviços</strong>
                                <a href="javascript:;" id="AllServicesIncluded" class="seeItemDetails" trigger="click" modal="EveryDayScript">Ver detalhes</a>
                            </div>
                            <div id="selected-services">
                                <strong class="addTitle">Nenhum serviço adicionado</strong>
                            </div>
                        </div>
                        <div id="thirdBoxContainer">
                        </div>
                    </div>

                    <div class="packageContainer">
                        <div id="packageResults" style="display: none;"></div>
                        <!-- packageResults -->
                        <div id="contentResults" class="search_results hotel">
                            <div id="hotelResults" class="results">
                                <div class="header filterHeader">
                                    <div class="label">
                                        <span>Ordenar por:</span>
                                        <select id="hotelSort">
                                            <option value="2">Maior preço</option>
                                            <option value="1" selected="selected">Menor preço</option>
                                            <option value="3">Nome do Hotel</option>
                                            <option value="4">Recomendados</option>
                                        </select>
                                    </div>
                                    <div class="label">
                                        <span>Itens por página:</span>
                                        <select id="Select2">
                                            <option value="10" selected="selected">10</option>
                                            <option value="20">20</option>
                                            <option value="30">30</option>
                                            <option value="50">50</option>
                                        </select>
                                    </div>
                                    <div class="showMore">
                                        Mostrando <strong><span id="showingPage"></span>- <span id="showingPerPage"></span>&nbsp;de&nbsp;<span id="showingTotal"></span></strong>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- search_results hotel -->

                        <div class="PriceGroups">
                            <div id="priceGroupsResults"></div>
                        </div>
                        <!-- search_results hotel -->

                    </div>
                    <!-- packagesHolder -->
                    <div id="packageErrorMessages"></div>
                    <div id="estimateBox"></div>
                </div>
                <!-- packageDetail_CVC -->

            </div>
            <div id="packageCVCLoaderHolder"></div>
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

