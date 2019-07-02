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
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
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
                        <div class="agile-field-txt">
                            <select class = "form-control" name="game" required>
                                <option value="-1" selected disabled>Select a game</option>
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
                            <input class="form-control" type="text" name="namePerson" placeholder="Your Name" required="" />
                        </div>
                        <div class="agile-field-txt">
                            <input class="form-control" type="number" name="clasification" placeholder="Classification [1-10]" required="" />
                        </div>
                        <div class="agile-field-txt">
                            <textarea class="form-control" type="text" name="comment" placeholder="Enter a comment" required=""></textarea>
                        </div>
                        <!--div class="agile-field-txt">
                                <input type="password" name="password" placeholder="password" required="" id="myInput" />
                        <!--div class="agile_label">
                                <input id="check3" name="check3" type="checkbox" value="show password">
                                <label class="check" for="check3">Remember me</label>
                        </div>
                </div-->
                        <div class="w3ls-bot">
                            <input type="submit" value="SEND">
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
