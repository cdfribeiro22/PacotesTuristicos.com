<%-- 
    Document   : cabecalho
    Created on : 04/05/2017, 19:29:08
    Author     : Gylles
--%>


<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
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
                        <li><a href="cadastroGuia.jsp">Guia</a></li>
                        <li><a href="montarPacotes.jsp">Montar Pacotes</a></li>
                        <li><a href="pacotes.jsp">Pacotes</a></li>
                        <li><a href="contatos.jsp">Contatos</a></li>
                        
                           
<%
	// verificando se tem um atributo login na sessao
	// se tiver vai continuar e mostrar o menu
	if(session.getAttribute("login") != null) {
%>
                         <li><a href="cadastroCliente_1_Dados.jsp">Meus Dados</a></li>
                         <li>  <% out.print(session.getAttribute("login")); %> </li>
                         <li><a class="btn btn-danger" href="LoginServlet1?acao=logout">Logout</a></li>
                         
 <%
	// se não existir um login na sessao, 
	// vai enviar para a página de login novamente
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
