<%-- 
    Document   : mostrarVehiculo
    Created on : 10/06/2019, 12:59:17 PM
    Author     : Rogger Antonio Maita Asmat
--%>

<%@page import="AbstractFactory.Interface.Vehiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String AddressInicio = request.getParameter("AddressInicio");
        String AddressFinal = request.getParameter("AddressFinal");
        String peso = request.getParameter("peso");
        String contenido = request.getParameter("contenido");
        //String Vehiculo = (String)request.getAttribute("vehiculo");
        Vehiculo Vehiculo = (Vehiculo)request.getAttribute("vehiculo");
    %>
    <body>
        <h1><%=Vehiculo.getTipo()%></h1>
        <h1><%=AddressInicio%></h1>
        <h1><%=AddressFinal%></h1>
        <h1><%=peso%></h1>
        <h1><%=contenido%></h1>
    </body>
</html>
