<%-- 
    Document   : MostrarSeleccion
    Created on : 3 oct. 2023, 08:15:34
    Author     : ET36
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultado</title>
        <link rel="stylesheet" href="Styles.css"> <!-- Asegúrate de tener este enlace para cargar el CSS -->
    </head>
    <body>
        <h1>TU SELECCION</h1>

        <div class="info-section">
            <p>Nombre: <%= request.getParameter("nombre")%></p>
        </div>

        <div class="info-section">
            <p>Apellido: <%= request.getParameter("apellido")%></p>
        </div>

        <div class="info-section">
            <p>Cursos seleccionados</p>
            <% String[] cursos = request.getParameterValues("curso");
                if (cursos != null) {
                    for (String curso : cursos) {
            %>
            <p id="cursos"><%= curso%></p>
            <% }
                }
            %>
        </div>

        <div class="info-section">
            <p>Forma de pago seleccionada: <%= request.getParameter("pago")%></p>
        </div>

    </body>
</html>
