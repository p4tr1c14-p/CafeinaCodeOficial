<%--
    Document   : Challenges
    Created on : 30 abr. 2026, 17:41:03
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenges</title>
        <link rel="stylesheet" href="css/Challenges.css">
    </head>

    <body>
        <div class="menu">
            <img src="imagenes/logo_cafeina_code.png" class="logo">

            <a href="Inicio.jsp">Inicio</a>
            <a href="lecciones.jsp">Guía</a>
            <a href="Challenges.jsp" class="activo">Challenges</a>
            <a href="Mascotas.jsp">Mascota</a>
            <a href="Perfil.jsp">Perfil</a>
        </div>

        <!-- CONTENEDOR PRINCIPAL -->
        <div class="contenedor-challenges">

            <!-- FONDO BLANCO -->
            <div class="cuadro">

                <h1>¡Prepárate para los Challenges!</h1>

                <p>
                    Bienvenido al apartado de Challenges de Java, un espacio diseñado
                    para poner a prueba tus conocimientos, mejorar tu lógica de programación
                    y aprender practicando.
                    <br><br>
                    Aquí encontrarás retos de todos los niveles desde ejercicios básicos
                    hasta más avanzados que te ayudarán a fortalecer tu experiencia con Java paso a paso.
                    ¡Prepárate para desafiarte y seguir creciendo como programador!
                    <br><br>
                    Cuando te sientas listo o lista, presiona el botón de abajo para iniciar con los retos.
                </p>

                <a href="Challenges_1.jsp" class="boton-contenedor">
                    <img src="imagenes/Boton_Naranja.png" class="boton">
                    <span class="texto-boton">Comenzar</span>
                </a>

            </div>

        </div>

        <img src="imagenes/Magia_Challenges.gif" class="gif-magia">

        <!-- FOOTER -->
        <div class="footer">
            Aviso de privacidad | @2025 Cafeína Code
        </div>

    </body>
</html>
