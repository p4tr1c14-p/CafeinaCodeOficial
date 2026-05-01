<%--
    Document   : Challenges_1
    Created on : 30 abr. 2026, 17:42:06
    Author     : Dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenges 1 - Cafeína Code</title>
        <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/Challenges_1.css">
    </head>
    <body>
        <div class="menu">
            <img src="imagenes/logo_cafeina_code.png" class="logo">
            <a href="Inicio.html">Inicio</a>
            <a href="Guia.html">Guía</a>
            <a href="Challenges.jsp" class="activo">Challenges</a>
            <a href="Mascotas.jsp">Mascota</a>
            <a href="Perfil.html">Perfil</a>
        </div>

        <div class="contenedor">
            <div class="reto">
                <h3 id="tituloReto">Desafío Java Aleatorio</h3>
                <button type="button" class="btn-refrescar" onclick="cargarEjercicioAleatorio()">
                    ↻ OTRO EJERCICIO
                </button>
                <p id="descripcionEjercicio">Conectando con la base de datos... ☕</p>
                <textarea id="codigoUsuario" placeholder="Escribe tu código Java aquí..."></textarea>
            </div>

            <!-- BOTÓN ENVIAR -->
            <button class="boton-contenedor" onclick="enviarRespuesta()">
                <img src="imagenes/Boton_Naranja.png" class="boton">
                <span class="texto-boton">ENVIAR</span>
            </button>

            <!-- BOTÓN SIGUIENTE - aparece después de enviar -->
            <div id="btn-siguiente-wrapper" class="btn-siguiente-wrapper" style="display:none;">
                <p class="siguiente-texto">¿Listo para terminar?</p>
                <a href="Challenges_2.jsp" class="btn-siguiente">
                    Finalizar Challenges ➜
                </a>
            </div>
        </div>

        <img src="imagenes/Gif_Gary.gif" class="gary">
        <img id="mascotaCaminando" src="" class="mascota-caminando">

        <div class="footer">
            Aviso de privacidad | @2026 Cafeína Code
        </div>

        <script src="js/MascotasJS.js"></script>
        <script src="js/ChallengesJS.js"></script>

        <script>
            window.addEventListener('load', function () {
                const originalEnviar = window.enviarRespuesta;
                if (typeof originalEnviar === 'function') {
                    window.enviarRespuesta = function () {
                        originalEnviar();
                        setTimeout(function () {
                            document.getElementById('btn-siguiente-wrapper').style.display = 'block';
                        }, 2000);
                    };
                }
            });
        </script>
    </body>
</html>
