<%-- 
    Document   : MyComments
    Created on : 15-jul-2019, 11:13:20
    Author     : hecto
--%>

<%@page import="Prototype.OpinionPrototype"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- //Meta-Tags -->
        <!-- Stylesheets -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="css/MyComments.css" rel='stylesheet' type='text/css' />
        <title>Mis comentarios</title>
        <%
            ArrayList<OpinionPrototype> commentsGames = (ArrayList) request.getAttribute("game");
            ArrayList<OpinionPrototype> commentsServices = (ArrayList) request.getAttribute("service");
            ArrayList<OpinionPrototype> commentsVenues = (ArrayList) request.getAttribute("venues");
            Cookie[] cookies = null;
            cookies = request.getCookies();
            String dni = "";
            String nombre = "";

            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equalsIgnoreCase("dni")) {
                    dni = cookies[i].getValue();
                }
                if (cookies[i].getName().equalsIgnoreCase("name")) {
                    nombre = cookies[i].getValue();
                }
            }
            if (dni == null || dni.equalsIgnoreCase("") || dni.length() > 8) {
                response.sendRedirect("index.jsp");
            }
        %>
        <script>
            function regresar() {
                location.href = 'index.jsp';
            }
        </script>
    </head>
    <body class="hm-gradient">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <%if (dni.equalsIgnoreCase("")) {%>   
            <a class="navbar-brand" ></a>
            <%} else {%>
            <a class="navbar-brand" >Bienvenido <%=nombre%></a>
            <%}%>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        <a  class="nav-link" style="cursor:pointer;" onclick="regresar();">Regresar</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class ="container mt-4">
            <div class="text-center darken-grey-text mb-4">
                <h1 class="font-bold mt-4 mb-3 h1">Opiniones</h1>
            </div>
            <div class="card mb-4">
                <div class="card-body">
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-md-12">
                            <h2 class="pt-3 pb-4 text-center font-bold font-up info-text">Juegos</h2>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!--Table-->
                    <table class="table table-hover">
                        <!--Table head-->
                        <thead class="mdb-color darken-3">
                            <tr class="text-white">
                                <th>#</th>
                                <th>DNI</th>
                                <th>Juego</th>
                                <th>Calificación</th>
                                <th>Comentario</th>
                            </tr>
                        </thead>
                        <!--Table head-->
                        <!--Table body-->
                        <tbody>
                            <%
                                for (OpinionPrototype comment : commentsGames) {

                            %>  
                            <tr>
                                <th scope="row">1</th>
                                <td><%=comment.getIdPersona()%></td>
                                <td><%=comment.getNombre()%></td>
                                <td><%=comment.getClasificacion()%></td>
                                <td><%=comment.getComentario()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                        <!--Table body-->
                    </table>
                    <!--Table-->
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-body">
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-md-12">
                            <h2 class="pt-3 pb-4 text-center font-bold font-up info-text">Servicios</h2>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!--Table-->
                    <table class="table table-hover">
                        <!--Table head-->
                        <thead class="mdb-color darken-3">
                            <tr class="text-white">
                                <th>#</th>
                                <th>DNI</th>
                                <th>Juego</th>
                                <th>Calificación</th>
                                <th>Comentario</th>
                            </tr>
                        </thead>
                        <!--Table head-->
                        <!--Table body-->
                        <tbody>
                            <%
                                for (OpinionPrototype comment : commentsServices) {

                            %>  
                            <tr>
                                <th scope="row">1</th>
                                <td><%=comment.getIdPersona()%></td>
                                <td><%=comment.getNombre()%></td>
                                <td><%=comment.getClasificacion()%></td>
                                <td><%=comment.getComentario()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                        <!--Table body-->
                    </table>
                    <!--Table-->
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-body">
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-md-12">
                            <h2 class="pt-3 pb-4 text-center font-bold font-up info-text">Sede</h2>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!--Table-->
                    <table class="table table-hover">
                        <!--Table head-->
                        <thead class="mdb-color darken-3">
                            <tr class="text-white">
                                <th>#</th>
                                <th>DNI</th>
                                <th>Juego</th>
                                <th>Calificación</th>
                                <th>Comentario</th>
                            </tr>
                        </thead>
                        <!--Table head-->
                        <!--Table body-->
                        <tbody>
                            <%
                                for (OpinionPrototype comment : commentsVenues) {

                            %>  
                            <tr>
                                <th scope="row">1</th>
                                <td><%=comment.getIdPersona()%></td>
                                <td><%=comment.getNombre()%></td>
                                <td><%=comment.getClasificacion()%></td>
                                <td><%=comment.getComentario()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                        <!--Table body-->
                    </table>
                    <!--Table-->
                </div>
            </div>
        </div>
    </body>
</html>
