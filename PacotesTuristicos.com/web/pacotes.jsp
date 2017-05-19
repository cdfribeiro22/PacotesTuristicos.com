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
                        <img src="images/portfolio/thumb/item2.1.jpg" alt="">
                        <h5>Cataratas</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item2.1.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                            /div>           
                        </div>           
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sul">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item2.2.jpg" alt="">
                        <h5>Beto Carreiro</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item2.2.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                        </div>           
                    </div>
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sul">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item2.3.jpg" alt="">
                        <h5>Itaipu</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item2.3.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                        </div>           
                    </div>           
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sul">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item2.4.jpg" alt="">
                        <h5>Ópera de Arame</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item2.4.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                        </div>           
                    </div>           
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sul">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item2.5.jpg" alt="">
                        <h5>Jardim Botânico</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item2.5.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                        </div>           
                    </div>           
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sul">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item2.6.jpg" alt="">
                        <h5>Museu Ambiência Casa de Pedra</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item2.6.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                        </div>           
                    </div>

                <li class="portfolio-item joomla sul">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item2.7.jpg" alt="">
                        <h5>Teatro Guaíra</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item2.7.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                        </div>           
                    </div>           
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sul">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item2.8.jpg" alt="">
                        <h5>Parque das Aves</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item2.8.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                        </div>           
                    </div>

                <li class="portfolio-item joomla sul">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item2.9.jpg" alt="">
                        <h5>Museu Oscar Niemeyer</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item2.9.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                        </div>           
                    </div>


                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item3.1.jpg" alt="">
                        <h5>Ilha Grande</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item3.1.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item3.2.jpg" alt="">
                        <h5>Copacabana</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item3.2.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item3.3.jpg" alt="">
                        <h5>Ipanema</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item3.3.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item3.4.jpg" alt="">
                        <h5>Parque Nacional de Itatiaia</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item3.4.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item3.5.jpg" alt="">
                        <h5>Pico da Bandeira</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item3.5.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item3.6.jpg" alt="">
                        <h5>Cristo Redentor</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item3.6.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item3.7.jpg" alt="">
                        <h5>Pão de Açúcar</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item3.7.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item3.8.jpg" alt="">
                        <h5>Corcovado</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item3.8.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla sudeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item3.9.jpg" alt="">
                        <h5>Parque Nacional da Serra dos Órgãos</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item3.9.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->


                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item4.1.jpg" alt="">
                        <h5>Teatro Goiânia</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item4.1.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                        </div>           
                    </div>
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item4.2.jpg" alt="">
                        <h5>Museu Estadual Professor Zoroastro Artiaga</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item4.2.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                        </div>           
                    </div>
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item4.3.jpg" alt="">
                        <h5>Memorial JK</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item4.3.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                        </div>           
                    </div>           
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item4.4.jpg" alt="">
                        <h5>Praça dos Três Poderes</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item4.4.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                        </div>           
                    </div>           
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item4.5.jpg" alt="">
                        <h5>Catedral de Brasília</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item4.5.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                        </div>           
                    </div>           
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item4.6.jpg" alt="">
                        <h5>Congresso Nacional</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item4.6.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                        </div>           
                    </div>

                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item4.7.jpg" alt="">
                        <h5>Museu de Arte e Cultura Popular (Universidade Federal de Mato Grosso)</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item4.7.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                        </div>           
                    </div>           
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item4.8.jpg" alt="">
                        <h5>Parque Mãe Bonifácia</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item4.8.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                        </div>           
                    </div>

                <li class="portfolio-item joomla centro">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item4.9.jpg" alt="">
                        <h5>Obelisco do Centro Geodésico da América do Sul</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item4.9.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                        </div>           
                    </div>


                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item5.1.jpg" alt="">
                        <h5>Catedral Metropolitana de Alagoas</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item5.1.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item5.2.jpg" alt="">
                        <h5>Museu Afro-Brasileiro de Salvador</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item5.2.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item5.3.jpg" alt="">
                        <h5>Memorial da Cultura Cearense</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item5.3.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item5.4.jpg" alt="">
                        <h5>Centro Histórico de São Luis</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item5.4.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item5.5.jpg" alt="">
                        <h5>Estação Ecológica do Pau-Brasil</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item5.5.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item5.6.jpg" alt="">
                        <h5>Parque Ambiental de Teresina</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item5.6.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item5.7.jpg" alt="">
                        <h5>Olinda - Patrimônio Histórico da Humanidade</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item5.7.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item5.8.jpg" alt="">
                        <h5>Catedral de Santa Luzia (Mossoró)</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item5.8.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla nordeste">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item5.9.jpg" alt="">
                        <h5>Cidade Histórica de São Cristovão</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item5.9.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->

                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item6.1.jpg" alt="">
                        <h5>Palácio Rio Branco</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item6.1.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item6.2.jpg" alt="">
                        <h5>Museu da Borracha</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item6.2.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item6.3.jpg" alt="">
                        <h5>Linha do Equador</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item6.3.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item6.4.jpg" alt="">
                        <h5>Teatro Amazonas</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item6.4.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item6.5.jpg" alt="">
                        <h5>Praia da Ponta Negra</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item6.5.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item6.6.jpg" alt="">
                        <h5>Teatro da Paz (Belém)</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item6.6.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item6.7.jpg" alt="">
                        <h5>Museu da Estrada de Ferro Madeira Mamoré</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item6.7.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item6.8.jpg" alt="">
                        <h5>Parque Nacional de Monte Roraima</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item6.8.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
                <li class="portfolio-item joomla norte">
                    <div class="item-inner">
                        <img src="images/portfolio/thumb/item6.9.jpg" alt="">
                        <h5>Parque Cesamar</h5>
                        <div class="overlay">
                            <a class="preview btn btn-danger" href="images/portfolio/full/item6.9.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                        </div>    
                    </div>       
                </li><!--/.portfolio-item-->
            </ul>
        </section><!--/#portfolio-->

        <section id="bottom" class="wet-asphalt">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <h4>Sobre Nós</h4>
                        <p>A PacTur faz tudo por uma boa viagem. Por isso trabalha para 
                            transformar essa experiência na melhor conquista de sua vida, 
                            através de novas tendências e ampla rede de produtos e serviços turísticos. 
                            É essa forma de pensar que estabelece a PacTur como a maior operadora de turismo 
                            da América Latina.</p>
                        <p>O comprometimento social, a solidez e a inovação propiciaram 
                            notoriedade e visibilidade junto ao público.</p>
                    </div><!--/.col-md-3-->

                    <div class="col-md-3 col-sm-6">
                        <h4>A Empresa</h4>
                        <div>
                            <ul class="arrow">
                                <li><a href="#">Visão da Empresa</a></li>
                                <li><a href="#">Conheça o Time</a></li>
                                <li><a href="#">Nossos Parceiros</a></li>
                                <li><a href="#">Nossos Serviços</a></li>
                                <li><a href="#">Perguntas Frequentes</a></li>
                                <li><a href="#">Contatos</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Terms of Use</a></li>
                                <li><a href="#">Copyright</a></li>
                            </ul>
                        </div>
                    </div><!--/.col-md-3-->

                    <div class="col-md-3 col-sm-6">
                        <h4>Endereço</h4>
                        <address>
                            <strong>PacTur, Inc.</strong><br>
                            Rua 227-A, n° 95, Setor Leste Universitário<br>
                            CEP 74610-155 - Goiânia-GO<br>
                            Fone: (62) 3269-1200<br>
                        </address>
                        <h4>Receba dicas, novidades, ofertas e encontre seu próximo destino!</h4>
                        <form role="form">
                            <div class="input-group">
                                <input type="text" class="form-control" autocomplete="off" placeholder="Digite seu Email">
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">Enviar!</button>
                                </span>
                            </div>
                        </form>
                    </div> <!--/.col-md-3-->
                </div>
            </div>
        </section><!--/#bottom-->

        <footer id="footer" class="midnight-blue">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        &copy; 2017 <a>PacTur</a>. Todos os direitos reservados.
                    </div>
                    <div class="col-sm-6">
                        <ul class="pull-right">
                            <li><a id="gototop" class="gototop" href="#"> Voltar ao Topo <i class="icon-chevron-up"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer><!--/#footer-->

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>
        
        <%@include file="rodape.jsp" %>
        
    </body>
</html>

