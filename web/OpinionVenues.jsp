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
        <title>Opinion de Servicios</title>
        <%
            ArrayList<Sede> venue = (ArrayList) request.getAttribute("venues");
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
                    <form action="ServletOpinionService" method="post" style="width: 600px" required>
                        <div class="agile-field-txt">
                            <select class = "form-control" name="AddressInicio">
                                <option value="-1" selected disabled>Select a venue</option>
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
                            <input class="form-control" type="text" name="nombrePersona" placeholder="Your Name" required="" />
                        </div>
                        <div class="agile-field-txt">
                            <input class="form-control" type="number" name="clasificacion" placeholder="Classification [1-10]" required="" />
                        </div>
                        <div class="agile-field-txt">
                            <textarea class="form-control" type="text" name="comentario" placeholder="Enter a comment" required=""></textarea>
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


