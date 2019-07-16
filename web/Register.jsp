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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!-- //Meta-Tags -->
        <!--online fonts-->
        <link href="//fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <!--//online fonts-->

        <link rel="stylesheet" href="css/bootstrap.css">
        <title>Opinion de Servicios</title>
    </head>
    <body  style="background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);">
        <div class="container">
            <div class="row"  style="margin-top: 100px">
                <div class="col-sm text-center">
                    <div style="height: 350px; width: 350px">
                        <img src="img/adress_card.png" alt="logo_img" style="height: 100%; width: 100%" />
                    </div>
                </div>
                <div class="col-sm  text-center card text-white bg-info mb-3">
                    <div class="card-body">
                        <!-- form starts here -->
                        <h1>Registro de Usuario</h1>
                        <br/>
                        <form action="ServletRegister" method="post">
                            <div class="agile-field-txt">
                            </div>
                            <div class="agile-field-txt">
                                <input class="form-control" type="text" name="dni" placeholder="DNI" required="" />
                            </div>
                            <br/>
                            <div class="agile-field-txt">
                                <input class="form-control" type="text" name="name" placeholder="Nombres" required="" />
                            </div>
                            <br/>
                            <div class="agile-field-txt">
                                <input class="form-control" type="text" name="lastNameP" placeholder="Apellido Paterno" required="" />
                            </div>
                            <br/>
                            <div class="agile-field-txt">
                                <input class="form-control" type="text" name="lastNameM" placeholder="Apellido Materno" required="" />
                            </div>
                            <br/>
                            <div class="agile-field-txt">
                                <input class="form-control" type="password" name="pass" placeholder="Contraseña" required="" />
                            </div>
                            <br/>
                            <select class = "form-control"  name="rol">
                                <option value="-1" selected disabled>Seleccion un rol</option>
                                <option value="rol-01" >Público</option>
                                <option value="rol-02" >Deportista</option>
                            </select>
                            <br/>
                            <div class="w3ls-bot">
                                <input class="btn btn-success" type="submit" value="Registrarse">
                            </div>
                            <br/>
                            <div class="w3ls-bot">
                                <a class="btn btn-light" href="/OpinionPanamericanos">Regresar</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>


