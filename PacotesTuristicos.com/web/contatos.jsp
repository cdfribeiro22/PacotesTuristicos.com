<%-- 
    Document   : contatos1
    Created on : 17/05/2017, 18:45:23
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
        <title>Contatos | PacTur</title>
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
                        <h1>Fale Conosco</h1>
                        <p>Utilize nossos canais para esclarecer suas dúvidas, 
                            solicitar informações ou fazer sugestões sobre nossos serviços</p>
                    </div>
                </div>
            </div>
        </section><!--/#title-->    

        <section id="contact-page" class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="status alert alert-success" style="display: none"></div>
                    <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php" role="form">
                        <div class="row">
                            <div class="col-sm-5">
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Nome">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Sobrenome">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-lg">Enviar Mensagem</button>
                                </div>
                            </div>
                            <div class="col-sm-7">
                                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Mensagem"></textarea>
                            </div>
                        </div>
                    </form>
                </div><!--/.col-sm-8-->
            </div>
        </section><!--/#contact-page-->

        <%@include file="rodape.jsp" %>

    </body>
</html>
