<%-- 
    Document   : cabecalho
    Created on : 04/05/2017, 19:29:08
    Author     : Gylles
--%>


<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <link href="css/diversos.css" rel="stylesheet" type="text/css"/>
    </head>
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
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="./">Inicio</a></li>
                        
<%
                            if (session.getAttribute("login") != null) {
                                String logado = "admin@pactur.com";
                                if (session.getAttribute("login") != null && (logado.equals(session.getAttribute("login")))) {
%>                           
                        <li><a href="#">Administrador</a></li>
                        <li><a href="admin_listarclientes.jsp">Clientes</a></li>
                        <li><a href="#">Pacotes</a></li>
<%                        
                            }                                            
 %>
                        
                        <li>  <% out.print(session.getAttribute("login").toString()); %> </li>
                        <li><a class="btn btn-danger" href="LoginServlet1?acao=logout">Logout</a></li>
<%
                        } else {
%>
                        <li><a href="login.jsp">Login</a></li>
<%
                                }
%>                    

                    </ul>
                </div>
                            


            </div>
        </header><!--/header-->
       
    </body>


</html>
