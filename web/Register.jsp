<%-- 
    Document   : Register
    Created on : 02-jul-2019, 14:44:33
    Author     : hecto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </head>
    <body>
        <div class="w3ls-login box">
            <div class="row"class="align-items-center">
                <div class="col-sm-6" style="margin-top: 200px">
                    <img src="img/REGISTRARSE.png" alt="logo_img" />
                </div>
                <div class="col-sm-6" style="margin-top: 100px">
                    <!-- form starts here -->
                    <form action="ServletRegister" method="post" style="width: 600px" required>
                        <div class="agile-field-txt">
                        </div>
                        <div class="agile-field-txt">
                            <input class="form-control" type="text" name="dni" placeholder="DNI" required="" />
                        </div>
                        <div class="agile-field-txt">
                            <input class="form-control" type="text" name="name" placeholder="Nombres" required="" />
                        </div>
                        <div class="agile-field-txt">
                            <input class="form-control" type="text" name="lastNameP" placeholder="Apellido Paterno" required="" />
                        </div>
                        <div class="agile-field-txt">
                            <input class="form-control" type="text" name="lastNameM" placeholder="Apellido Materno" required="" />
                        </div>
                        <div class="agile-field-txt">
                            <input class="form-control" type="password" name="pass" placeholder="Contraseña" required="" />
                        </div>
                        <select class = "form-control"  name="rol">
                                <option value="-1" selected disabled>Seleccion un rol</option>
                                <option value="rol-01" >Público</option>
                                <option value="rol-02" >Deportista</option>
                        </select>
                        <div class="w3ls-bot">
                            <input type="submit" value="Registrarse">
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


