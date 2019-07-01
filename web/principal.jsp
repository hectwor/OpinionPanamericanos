<%-- 
    Document   : principal
    Created on : 10/05/2018, 12:04:05 AM
    Author     : Steve
--%>

<%@page import="Db.Modelos.Juego"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        ArrayList <Juego> juegos = (ArrayList) request.getAttribute("juegos");
        %>
    </head>
    <body>
        <form action="ServletVehiculo" method="POST">
        <div>
        <label>Escoge una direccion inicial  : </label>
        <select name="AddressInicio">
            <%
                
                for(Juego adr: juegos) {
                  
            %>      
                  <option value="<%=adr.getId()%>"> <%=adr.getNombreJuego()%></option>
            <%
                }
            %>

        </select>
        </div>
        <div>
        <label>Escoge una direccion final  : </label>
        <select name="AddressFinal">
            <%
                
                for(Juego adr: juegos) {
                  
            %>      
            <option value="<%=adr.getId()%>"> <%=adr.getDescripcionJuego()%></option>
            <%
                }
            %>

        </select>
        </div>
        <div>
        <label>PESO</label>
        <input type="text" name="peso">
        </div>
        <div>
        <label>CONTENIDO  </label>
        <select name="contenido">
            <option value="PERSONAS">Personas</option>
            <option value="PERSONAS Y CARGA">Personas y carga</option>
            <option value="CARGA">Carga</option>
        </select>
        </div>
        <input type="submit" value="Escoger">
        </form>
    </body>
</html>
