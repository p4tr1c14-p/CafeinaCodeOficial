<%-- 
    Document   : Mascota_3
    Created on : 7 may 2026, 21:07:06
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://googleapis.com" rel="stylesheet">
    <title>Mascota - Bet</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/Mascotas_3.css">
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
            <img src="imagenes/final_bet.gif" class="mascota-arriba">

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
                <!-- El botón ahora está en una línea nueva gracias al CSS -->
                <button type="button" class="btn-racha" onclick="aumentarRacha()">🔥 ¡Logro del día!</button>
            </div>
        </div>


    </div>

    <div class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </div>

    <!-- Imagen de Bet caminando -->
    <img id="mascotaCaminando" src="" class="mascota-caminando">

    <script src="js/MascotasJS.js"></script>
    
</body>
</html>
