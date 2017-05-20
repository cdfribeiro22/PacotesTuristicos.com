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
        <header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="about-us.html">About Us</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="pacotes.html">Pacotes</a></li>
                        <li><a href="login.html">Login</a></li>
                        <li><a href="blog.html">Blog</a></li> 
                        <li><a href="contatos.html">Contatos</a></li>
                    </ul>
                </div>
            </div>
        </header><!--/header-->

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

        <section id="portfolio" class="container">
            <ul class="portfolio-filter">
                <li><a class="btn btn-default active" href="#" data-filter="*">Todos</a></li>
                <li><a class="btn btn-default" href="#" data-filter=".sul">Sul</a></li>
                <li><a class="btn btn-default" href="#" data-filter=".sudeste">Sudeste</a></li>
                <li><a class="btn btn-default" href="#" data-filter=".centro">Centro-Oeste</a></li>
                <li><a class="btn btn-default" href="#" data-filter=".nordeste">Nordeste</a></li>
                <li><a class="btn btn-default" href="#" data-filter=".norte">Norte</a></li>
            </ul><!--/#portfolio-filter-->

            <ul class="portfolio-items col-3">
                <li class="portfolio-item joomla sul">
                    <div class="item-inner">

                        <table class="table table-hover" border=1>
                            <thead>
                                <tr>
                                    <th><font size=4> <i class="fa fa-car" style=" font-size: 15px; color: lightblue; text-shadow:2px 2px 4px #000000;"></i>Beto Carrero com Joinville - 4 dias / 2 dias
                                        com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 758,00</font>
                                        <br><font size=1> 10x de 75,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Curitiba com Ilha do Mel - 5 dias / 3 
                                        diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Beto Carrero com Joinville e Unipraias - 5 
                                        dias / 3 diárias com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Oktoberfest e Beto Carrero com Itajaí - 5 dias 
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 948,00</font>
                                        <br><font size=1> 10x de 94,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Rota da Amizade - Fraiburgo, Treze Tílias e Videira - 5 dias
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 1.078,00</font>
                                        <br><font size=1> 10x de 107,80</font>
                                    </th>
                                </tr>
                            </thead>
                        </table>
                    </div>           
                </li><!--/.portfolio-item-->



                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <table class="table table-hover" border=1>
                            <thead>
                                <tr>
                                    <th><font size=4> <i class="fa fa-car" style=" font-size: 15px; color: lightblue; text-shadow:2px 2px 4px #000000;"></i>Beto Carrero com Joinville - 4 dias / 2 dias
                                        com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 758,00</font>
                                        <br><font size=1> 10x de 75,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Curitiba com Ilha do Mel - 5 dias / 3 
                                        diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Beto Carrero com Joinville e Unipraias - 5 
                                        dias / 3 diárias com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Oktoberfest e Beto Carrero com Itajaí - 5 dias 
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 948,00</font>
                                        <br><font size=1> 10x de 94,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Rota da Amizade - Fraiburgo, Treze Tílias e Videira - 5 dias
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 1.078,00</font>
                                        <br><font size=1> 10x de 107,80</font>
                                    </th>
                                </tr>
                            </thead>
                        </table>   
                    </div>       
                </li><!--/.portfolio-item-->



                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <table class="table table-hover" border=1>
                            <thead>
                                <tr>
                                    <th><font size=4> <i class="fa fa-car" style=" font-size: 15px; color: lightblue; text-shadow:2px 2px 4px #000000;"></i>Beto Carrero com Joinville - 4 dias / 2 dias
                                        com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 758,00</font>
                                        <br><font size=1> 10x de 75,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Curitiba com Ilha do Mel - 5 dias / 3 
                                        diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Beto Carrero com Joinville e Unipraias - 5 
                                        dias / 3 diárias com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Oktoberfest e Beto Carrero com Itajaí - 5 dias 
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 948,00</font>
                                        <br><font size=1> 10x de 94,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Rota da Amizade - Fraiburgo, Treze Tílias e Videira - 5 dias
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 1.078,00</font>
                                        <br><font size=1> 10x de 107,80</font>
                                    </th>
                                </tr>
                            </thead>
                        </table>          
                    </div>
                </li><!--/.portfolio-item-->


                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <table class="table table-hover" border=1>
                            <thead>
                                <tr>
                                    <th><font size=4> <i class="fa fa-car" style=" font-size: 15px; color: lightblue; text-shadow:2px 2px 4px #000000;"></i>Beto Carrero com Joinville - 4 dias / 2 dias
                                        com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 758,00</font>
                                        <br><font size=1> 10x de 75,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Curitiba com Ilha do Mel - 5 dias / 3 
                                        diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Beto Carrero com Joinville e Unipraias - 5 
                                        dias / 3 diárias com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Oktoberfest e Beto Carrero com Itajaí - 5 dias 
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 948,00</font>
                                        <br><font size=1> 10x de 94,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Rota da Amizade - Fraiburgo, Treze Tílias e Videira - 5 dias
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 1.078,00</font>
                                        <br><font size=1> 10x de 107,80</font>
                                    </th>
                                </tr>
                            </thead>
                        </table>    
                    </div>       
                </li><!--/.portfolio-item-->



                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <table class="table table-hover" border=1>
                            <thead>
                                <tr>
                                    <th><font size=4> <i class="fa fa-car" style=" font-size: 15px; color: lightblue; text-shadow:2px 2px 4px #000000;"></i>Beto Carrero com Joinville - 4 dias / 2 dias
                                        com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 758,00</font>
                                        <br><font size=1> 10x de 75,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Curitiba com Ilha do Mel - 5 dias / 3 
                                        diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Beto Carrero com Joinville e Unipraias - 5 
                                        dias / 3 diárias com 01 dia de Parque</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 898,00</font>
                                        <br><font size=1> 10x de 89,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Oktoberfest e Beto Carrero com Itajaí - 5 dias 
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 948,00</font>
                                        <br><font size=1> 10x de 94,80</font>
                                    </th>
                                </tr>
                                <tr>
                                    <th><font size=4>Rota da Amizade - Fraiburgo, Treze Tílias e Videira - 5 dias
                                        / 3 diárias</font>
                                        <br>
                                        <i class="fa fa-camera" style="font-size: 15px"> Passeio + </i>
                                        <i class="fa fa-bus" style="font-size: 15px"> Transporte Rodoviário + </i>
                                        <i class="fa fa-ticket" style="font-size: 15px"> Ingresso</i>
                                    </th>
                                    <th><font size=4>Preço por Pessoa</font>
                                        <br><font size=1> a partir de</font>
                                        <br><font size=4> R$ 1.078,00</font>
                                        <br><font size=1> 10x de 107,80</font>
                                    </th>
                                </tr>
                            </thead>
                        </table>    
                    </div>       
                </li><!--/.portfolio-item-->


            </ul>
        </section><!--/#portfolio-->

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>

        <%@include file="rodape.jsp" %>

    </body>
</html>
