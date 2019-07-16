<%@page import="AbstractFactory.Interface.Opinion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
    <%
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
    if (${param.cod==1}) {
        $(document).ready(function () {
            Swal.fire({
                title: 'Guardado!',
                text: 'Tu comentario ha sido realizado',
                type: 'success',
                confirmButtonText: 'Correcto'
            });
        });
    }
    function logout() {
        document.cookie = "dni=";
        document.cookie = "name=";
        location.href = 'index.jsp';
    }
    function validar(tipo) {

        if ("<%=dni%>" === "") {
            Swal.fire({
                title: 'Error',
                text: 'Debe ingresar al sistema',
                type: 'error',
                confirmButtonText: 'Correcto'
            });
            location.href = '#header';
            $("#modalLogin").modal()
        } else {
            switch (tipo) {
                case "juego":
                    location.href = 'ServletGame';
                    break;
                case "servicio":
                    location.href = 'ServletService';
                    break;
                case "sede":
                    location.href = 'ServletVenues';
                    break;

                default:

                    break;
            }
        }
    }
</script>
<div class="main-wrapper-first">
    <div class="hero-area relative">
        <header id="header">
            <nav class="navbar navbar-expand-sm navbar-light">
                <%if (dni.equalsIgnoreCase("")) {%>   
                <a class="navbar-brand" ></a>
                <%} else {%>
                <a class="navbar-brand" >Bienvenido <%=nombre%></a>
                <%}%>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item">
                            <%if (!dni.equalsIgnoreCase("")) {%>
                            <a  class="nav-link" style="cursor:pointer;" href="ServletMyComments">Mis comentarios</a>
                            <%}%>
                        </li>
                        <li class="nav-item">
                            <%if (dni.equalsIgnoreCase("")) {%>   
                            <a  class="nav-link" style="cursor:pointer;" data-toggle="modal" data-target="#modalLogin">Ingresar/Registrar</a>
                            <%} else {%>
                            <a  class="nav-link" style="cursor:pointer;" onclick="logout()">Cerrar Sesión</a>
                            <%}%>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="banner-area">
            <div class="container">
                <div class="row height align-items-center">
                    <div class="col-lg-7">
                        <div class="banner-content" style ="margin-left: 30px">
                            <h1 class="text-white text-uppercase mb-10 text-left" >Lima 2019</h1>
                            <p class="text-white mb-30">Los Juegos Panamericanos de 2019, oficialmente los XVIII Juegos Panamericanos, será un evento multideportivo internacional que se celebrará entre el 26 de julio y el 11 de agosto de 2019 en Lima (Perú).</p>
                            <a href="https://www.lima2019.pe/" class="primary-btn d-inline-flex align-items-center"><span class="mr-10">Sitio oficial</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="main-wrapper">
    <section id="opinion">
        <div class="working-process-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="section-title text-center">
                            <h2>Alcance de comentarios</h2>
                            <p>Accede a una opción para dejar tu comentario</p>
                        </div>
                    </div>
                </div>
                <div class="total-work-process d-flex flex-wrap justify-content-around align-items-center">
                    <div class="single-work-process">
                        <a style="cursor:pointer;" onclick="validar('juego')">
                            <div class="work-icon-box">
                                <img src="img/milco-4.png" alt="logo" style="width: 100%">
                            </div>
                            <h4 class="caption">1. Juegos</h4>
                        </a>
                    </div>

                    <div class="single-work-process">
                        <a style="cursor:pointer;" onclick="validar('servicio')">
                            <div class="work-icon-box">
                                <img src="img/milco1.png" alt="logo" style="width: 100%">
                            </div>
                            <h4 class="caption">2. Servicios</h4>
                        </a>
                    </div>
                    <div class="single-work-process">
                        <a style="cursor:pointer;" onclick="validar('sede')">
                            <div class="work-icon-box">
                                <img src="img/estadio.png" alt="logo" style="width: 100%">
                            </div>
                            <h4 class="caption">3. Sedes</h4>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<div class="main-wrapper">
    <section class="remarkable-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section-title text-center">
                        <h2>Interactúa con nostros</h2>
                        <p>Our organization has tools for your needs<p>
                    </div>
                </div>
            </div>
            <div class="single-remark">
                <div class="row no-gutters">
                    <div class="col-lg-7 col-md-6">
                        <div class="remark-thumb" style="background: url(https://www.steelconstruction.org/custom/uploads/2016/10/London-Olympic-Roof-Conversion.jpg);"></div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="remark-desc">
                            <h4>Clasificación de la etapa</h4>
                            <p>Puedes puntuar las etapas actuales de la competición. Es un espacio donde puede informarnos qué cree que falta en la mayoría de los estadios o podios. También puede interactuar con otras personas para dar su opinión a los gerentes de la competencia.</p>
                            <a href="#opinion" class="primary-btn"><span>Califica</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-remark">
                <div class="row no-gutters">
                    <div class="col-lg-7 col-md-6">
                        <div class="remark-desc">
                            <h4>Busca</h4>
                            <p>¿Has perdido la pista con tu deporte favorito? ¿Quieres seguir tu etapa más cercana? Bueno, ahora puedes buscarlos en un solo lugar. Nuestro navegador puede informarle todo sobre un juego, escenario o servicio.</p>
                            <a href="#opinion" class="primary-btn"><span>Buscar</span></a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="remark-thumb" style="background: url(http://www.careerexperts.co.uk/wp-content/uploads/2015/09/Where-to-look-for-jobs.jpg);"></div>
                    </div>
                </div>
            </div>
            <div class="single-remark">
                <div class="row no-gutters">
                    <div class="col-lg-7 col-md-6">
                        <div class="remark-thumb" style="background: url(https://blogs.forbes.com/glennllopis/files/2018/02/shutterstock_1253381451.jpg);"></div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="remark-desc">
                            <h4>Realimentación</h4>
                            <p>Su opinión es importante para nosotros y para otros, nos brinda nuevos puntos de vista para que podamos mejorar nuestra competencia en todo el mundo. Por favor, no dude en utilizar nuestra plataforma, háganos saber lo que está pensando.</p>
                            <a href="#opinion" class="primary-btn"><span>Comentar</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="container">
            <div class="footer-content d-flex justify-content-between align-items-center flex-wrap">
                <!--div class="logo">
                    <a href="index.html"><img src="img/logo.png" alt=""></a>
                </div-->
                <div class="copy-right-text">Copyright &copy; 2019  |  All rights reserved to <a href="#">FISI.</a></div>
                <!--div class="footer-social">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-behance"></i></a>
                </div-->
            </div>
        </div>
    </footer>
    <!-- End Footer Widget Area -->

</div>