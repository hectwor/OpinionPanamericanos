<%-- 
    Document   : OpinionJuego
    Created on : 02-jul-2019, 8:36:02
    Author     : hecto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Db.Modelos.Juego"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function changeMethod(e) {
                var value = e.value;
                if (value === "score") {
                    document.getElementById("score").style.display = 'block';
                    document.getElementById("range").style.display = 'none';
                } else if (value === "range") {
                    document.getElementById("score").style.display = 'none';
                    document.getElementById("range").style.display = 'block';
                }
            }
        </script>
        <!-- //Meta-Tags -->
        <!-- Stylesheets -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!--// Stylesheets -->
        <!--online fonts-->
        <link href="//fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <!--//online fonts-->

        <link rel="stylesheet" href="css/bootstrap.css">
        <title>Opinion de Juegos</title>
        <%
            ArrayList<Juego> juegos = (ArrayList) request.getAttribute("juegos");
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
            /*if (dni == null || dni.equalsIgnoreCase("") || dni.length() > 8) {
        response.sendRedirect("index.jsp");
    }*/
        %>
    </head>
    <body>
        <div class="w3ls-login box">
            <div class="row">
                <div class="col-sm-6">
                    <img src="img/milco-4.png" alt="logo_img" />
                </div>
                <div class="col-sm-6" style="margin-top: 100px">
                    <!-- form starts here -->
                    <form action="ServletOpinionGame" method="post">
                        <label>Número de DNI</label>
                        <div class="agile-field-txt">
                            <input class="form-control" type="text" name="namePerson" value='<%=dni%>' readonly="readonly"/>
                        </div>
                        <div class="agile-field-txt">
                            <select class = "form-control" name="game" required>
                                <option value="-1" selected disabled>Seleccione un juego</option>
                                <%
                                    for (Juego adr : juegos) {

                                %>      
                                <option value="<%=adr.getId()%>"> <%=adr.getNombreJuego()%></option>
                                <%
                                    }
                                %>

                            </select>
                        </div>
                        <div class="agile-field-txt">
                            <select class = "form-control" name="SelectCalication" onchange = "changeMethod(this);" required>
                                <option value="-1" selected disabled>Seleccione un método de calificación</option>
                                <option value="score">Puntuación</option>
                                <option value="range">Rangos</option>
                            </select>
                        </div>  
                        <div class="agile-field-txt" id="score" style="display: none">
                            <input class="form-control" type="number" name="clasificationScore" placeholder="Calificación [1-100]" />
                        </div>
                        <div class="agile-field-txt" id="range" style="display: none">
                            <div class="form-check-inline" selected> 
                                <label class="form-check-label" >
                                    <input type="radio" class="form-check-input" name="clasificationRange" checked="checked">0/20
                                </label>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="clasificationRange">20/40
                                </label>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="clasificationRange" >40/60
                                </label>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="clasificationRange" >60/80
                                </label>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="clasificationRange" >80/100
                                </label>
                            </div>
                        </div>
                        <div class="agile-field-txt">
                            <textarea class="form-control" type="text" name="comment" placeholder="Ingrese un comentario" required=""></textarea>
                        </div>
                        <!--div class="agile-field-txt">
                                <input type="password" name="password" placeholder="password" required="" id="myInput" />
                        <!--div class="agile_label">
                                <input id="check3" name="check3" type="checkbox" value="show password">
                                <label class="check" for="check3">Remember me</label>
                        </div>
                </div-->
                        <div class="w3ls-bot">
                            <input type="submit" value="ENVIAR">
                        </div>
                        <div class="w3ls-bot">
                            <a class="btn btn-block" href="/OpinionPanamericanos">Regresar</a>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </body>
</html>
