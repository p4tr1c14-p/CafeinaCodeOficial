<%--
    Document   : Mascota_1
    Created on : 1 may. 2026, 0:28:02
    Author     : Dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
        <title>Mascota</title>
        <link rel="stylesheet" href="css/Mascota_1.css">
    </head>

    <body>

        <div class="menu">
            <img src="imagenes/logo_cafeina_code.png" class="logo">

            <a href="Inicio.jsp">Inicio</a>
            <a href="Guia.jsp">Guía</a>
            <a href="Challenges.jsp">Challenges</a>
            <a href="Mascotas.jsp" class="activo">Mascota</a>
            <a href="Perfil.jsp">Perfil</a>
        </div>

        <!-- CONTENIDO -->
        <div class="contenido">

            <div class="columna-mascota">
                <!-- El gif de la mascota principal -->
                <img src="imagenes/final_pat.gif" class="mascota-arriba">

                <!-- El nombre justo debajo del gif -->
                <h2 id="nombreMascota">Sin nombre</h2>

                <form class="formulario_r" onsubmit="return false;">
                    <input type="text" id="nombre" placeholder="Escribe el nombre">
                    <div class="botones-fila">
                        <button type="button" onclick="guardarNombre()">Guardar</button>
                        <button type="button" onclick="borrarNombre()" style="background:red;">Borrar</button>
                    </div>
                </form>
            </div>

            <div class="frase-contenedor">
                <p class="frase">"El esfuerzo de hoy es el éxito de mañana"</p>

                <div class="contenedor-racha">
                    <div class="racha-texto">
                        <img src="imagenes/fuego_racha.gif" class="gif-racha">
                        <span id="contadorRacha">0</span> DÍAS DE RACHA
                    </div>
                    <button type="button" class="btn-racha" onclick="aumentarRacha()">🔥 ¡Logro del día!</button>
                </div>
            </div>

        </div>

        <div class="footer">
            Aviso de privacidad | @2025 Cafeína Code
        </div>

        <img id="mascotaCaminando" src="" class="mascota-caminando">

        <script src="js/MascotasJS.js"></script>

    </body>
</html>
