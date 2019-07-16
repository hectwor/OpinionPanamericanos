<%-- 
    Document   : OpinionVenues
    Created on : 02-jul-2019, 8:54:33
    Author     : hecto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Db.Modelos.Sede"%>
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
                    document.getElementById("roman").style.display = 'none';
                } else if (value === "range") {
                    document.getElementById("score").style.display = 'none';
                    document.getElementById("range").style.display = 'block';
                    document.getElementById("roman").style.display = 'none';
                } else if (value === "roman") {
                    document.getElementById("score").style.display = 'none';
                    document.getElementById("range").style.display = 'none';
                    document.getElementById("roman").style.display = 'block';
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
        <title>Opinion de Servicios</title>
        <%
            ArrayList<Sede> venue = (ArrayList) request.getAttribute("venues");
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
        %>
    </head>
    <body>
        <div class="w3ls-login box">
            <div class="row"class="align-items-center">
                <div class="col-sm-6" style="margin-top: 100px">
                    <img src="img/estadioejemplo.png" alt="logo_img" />
                </div>
                <div class="col-sm-6" style="margin-top: 100px">
                    <!-- form starts here -->
                    <form action="ServletOpinionVenues" method="post" style="width: 600px" required>
                        <label>Número de DNI</label>
                        <div class="agile-field-txt">
                            <input class="form-control" type="text" name="namePerson" value='<%=dni%>'  readonly="readonly"/>
                        </div>
                        <div class="agile-field-txt">
                            <select class = "form-control"  name="venue" required>
                                <option value="-1" selected disabled>Seleccione una sede</option>
                                <%
                                    for (Sede adr : venue) {

                                %>      
                                <option value="<%=adr.getId()%>"> <%=adr.getNombreSede()%></option>
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
                                <option value="roman">Números Romanos</option>
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
                        <div class="agile-field-txt" id="roman" style="display: none">
                            <input class="form-control" type="text" name="clasificationRoman" placeholder="Calificación [ROMAN]" />
                        </div>
                        <div class="agile-field-txt">
                            <textarea class="form-control" type="text" name="comment" placeholder="Ingrese un comentario" required=""></textarea>
                        </div>
                        <div class="w3ls-bot">
                            <input type="submit" value="Enviar">
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


