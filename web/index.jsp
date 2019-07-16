
<%-- 
    Document   : index
    Created on : 02-jul-2019, 14:16:52
    Author     : hecto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Opiniones Panamericanos</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,500,600" rel="stylesheet">
        <!--
        CSS
        ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/main.css">
        <!--// Stylesheets -->
        <!--online fonts-->
        <link href="//fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <!--//online fonts-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    </head>
    <body>
        <script>

            function ingresar() {
                var name = document.getElementById("nameModal").value;
                var pass = document.getElementById("passModal").value;
                if (name === "") {
                    Swal.fire({
                        title: 'Error',
                        text: 'Colocar DNI',
                        type: 'error',
                        confirmButtonText: 'Correcto'
                    })
                } else if (pass === "") {
                    Swal.fire({
                        title: 'Error',
                        text: 'Colocar contraseña',
                        type: 'error',
                        confirmButtonText: 'Correcto'
                    })
                } else {
                    $.get("ServletLogin?dni=" + name + "&pass=" + pass, function (data) {
                        var obj = JSON.parse(data);
                        if (obj.resp === "1") {
                            $("#modalLogin").modal('hide');
                            Swal.fire({
                                title: 'Éxito',
                                text: 'Ingreso Correcto',
                                type: 'success',
                                confirmButtonText: 'Confirmar'
                            })
                            location.href = 'index.jsp';
                        } else if (obj.resp === "2") {
                            Swal.fire({
                                title: 'Error',
                                text: 'Contraseña Incorrecta',
                                type: 'error',
                                confirmButtonText: 'Correcto'
                            })
                        } else if (obj.resp === "3") {
                            Swal.fire({
                                title: 'Error',
                                text: 'Usuario no existe, registrarse',
                                type: 'error',
                                confirmButtonText: 'Correcto'
                            })
                        }
                    });
                }
            }
            function pulsar(e) {
                if (e.keyCode === 13 && !e.shiftKey) {
                    ingresar();
                }
            }
        </script>
        <%@ include file="home.jsp" %>

        <div class="modal" id="modalLogin">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Ingreso al sistema</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <form>
                            <div class="agile-field-txt">
                                <input class="form-control" type="text" id="nameModal" name="namePerson" placeholder="DNI" onkeypress="pulsar(event)" required="" />
                            </div>
                            <br/>
                            <div class="agile-field-txt">
                                <input class="form-control" type="text" id="passModal" name="password" placeholder="Contraseña" onkeypress="pulsar(event)" required="" />
                            </div>
                            <div style="text-align: right">
                                <a href="ServletRegister"><span>Registrarme</span></a>
                            </div>

                        </form>


                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" onclick="ingresar();" class="btn btn-info">Ingresar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
