<%--
    Document   : Mascotas
    Created on : 1 may. 2026, 0:02:28
    Author     : Dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
        <title>Mascotas</title>
        <link rel="stylesheet" href="css/MascotasCSS.css">
        <script src="js/mascota-caminando.js"></script>
    </head>

    <body>

        <div class="menu">
            <img src="imagenes/logo_cafeina_code.png" class="logo">

            <a href="Inicio.jsp">Inicio</a>
            <a href="lecciones.jsp">Guía</a>
            <a href="Challenges.jsp">Challenges</a>
            <a href="Mascotas.jsp" class="activo">Mascota</a>
            <a href="Perfil.jsp">Perfil</a>
        </div>

        <h1 class="titulo">ELIGE TU MASCOTA</h1>

        <!-- MASCOTAS -->
        <div class="contenedor-mascotas">
            <img src="imagenes/final_pat.gif" class="mascota"
                 onclick="guardarMascota('pat'); window.location.href='Mascota_1.jsp'">
            <img src="imagenes/final_ros.gif" class="mascota"
                 onclick="guardarMascota('ros'); window.location.href='Mascota_2.jsp'">
            <img src="imagenes/final_bet.gif" class="mascota"
                 onclick="guardarMascota('bet'); window.location.href='Mascotas_3.jsp'">
        </div>

        <!-- FOOTER -->
        <div class="footer">
            Aviso de privacidad | @2025 Cafeína Code
        </div>

        <script src="js/scriptMascota.js"></script>
        <script>
            function guardarMascota(tipo) {
                localStorage.setItem("mascota", tipo);
            }
        </script>

    </body>
</html>
