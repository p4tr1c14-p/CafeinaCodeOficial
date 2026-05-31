<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
        <title>Mascota 2 - Ros</title>
        <link rel="stylesheet" href="css/Mascota_2.css">
    </head>
    <body>
        <div class="menu">
            <img src="imagenes/logo_cafeina_code.png" class="logo">
            <a href="Inicio.jsp">Inicio</a>
            <a href="lecciones">Guía</a>
            <a href="Challenges.jsp">Challenges</a>
            <a href="Mascotas.jsp" class="activo">Mascota</a>
            <a href="Perfil.jsp">Perfil</a>
        </div>
        <div class="contenido">
            <div class="columna-mascota">
                <img src="imagenes/final_ros.gif" class="mascota-arriba">
                <h2 id="nombreMascota">Sin nombre</h2>
                <form class="formulario_r" onsubmit="return false;">
                    <input type="text" id="nombre" placeholder="Escribe el nombre">
                    <div id="alertaNombre" class="alerta-nombre">
                        <span class="alerta-icono">🐾 ¡NOMBRE GUARDADO!</span>
                        Tu mascota ya tiene su nombre.
                        <span class="alerta-sugerencia">
                            ¡Cuídala bien y sigue aprendiendo! ☕
                        </span>
                    </div>
                    <div class="botones-fila">
                        <button type="button" onclick="guardarNombre()">Guardar</button>
                        <button type="button" onclick="borrarNombre()" style="background:red;">Borrar Nombre</button>
                    </div>
                </form>
            </div>
            <div class="frase-contenedor">
                <p class="frase" id="fraseMotivacional">"El esfuerzo de hoy es el éxito de mañana"</p>
                <div class="contenedor-racha">
                    <div class="racha-texto">
                        <img src="imagenes/fuego_racha.gif" class="gif-racha">
                        <span id="contadorRacha">0</span> DÍAS DE RACHA
                    </div>
                    <button type="button" class="btn-racha" onclick="toggleMascota()">👁 Ocultar mascota</button>
                </div>
            </div>
        </div>
        <div class="footer">
            Aviso de privacidad | @2025 Cafeína Code
        </div>
        <script src="js/MascotasJS.js"></script>
        <script src="js/mascota-caminando.js"></script>
        <script>
            function toggleMascota() {
                var oculta = localStorage.getItem("mascotaOculta") === "true";
                localStorage.setItem("mascotaOculta", !oculta);
                var btn = document.querySelector(".btn-racha");
                if (!oculta) {
                    btn.textContent = "👁 Mostrar mascota";
                } else {
                    btn.textContent = "👁 Ocultar mascota";
                }
                location.reload();
            }
            window.addEventListener("load", function() {
                var oculta = localStorage.getItem("mascotaOculta") === "true";
                var btn = document.querySelector(".btn-racha");
                if (btn) btn.textContent = oculta ? "👁 Mostrar mascota" : "👁 Ocultar mascota";
            });
        </script>
    </body>
</html>