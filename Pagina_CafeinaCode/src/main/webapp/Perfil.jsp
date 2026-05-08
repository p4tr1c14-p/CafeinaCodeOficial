<%-- 
    Document   : Perfil
    Created on : 7 may 2026, 18:42:59
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Perfil</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Perfil.css">
    </head>
    <body>
        <!-- HEADER -->
        <div class="menu">
            <img src="logo_cafeina_code.png" class="logo">

            <a href="Inicio.html">Inicio</a>
            <a href="Guia.html">Guía</a>
            <a href="Challenges.html">Challenges</a>
            <a href="Mascotas.html">Mascotas</a>

            <div class="dropdown">
            <button class="btn" type="button">
              Perfil
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="Perfil.html">Ver Perfil</a></li>
              <li><a class="dropdown-item" href="index.html">Cerrar Sesión</a></li>
            </ul>
        </div>
        </div>
        
        
        <div class="perfil_pantalla">
    <h1 class="titulo_seccion">Información básica</h1>

        <div class="perfil_layout">
            <div class="columna_foto">
                <div class="foto_marco">
                    <img src="usuario.png" class="foto_circular" alt="Perfil">
                </div>
            </div>

        <div class="columna_datos">
            <p>Nombre de usuario: <span class="valor">${miPerfil.nombre}</span></p>
            <p>Correo: <span class="valor">${miPerfil.correo}</span></p>
            <p>Pais: <span class="valor">${miPerfil.pais}</span></p>
            <p>Nivel en Java: <span class="valor">${miPerfil.nivel_del_curso}</span></p>
            <p>Lenguajes conocidos: <span class="valor">${miPerfil.lenguajes_conocidos}</span></p>

            <br>
            <p>Progreso completado: <span class="valor">${miPerfil.progreso}</span></p>

            <br>
            <p>Sobre mi:</p>
            <p class="valor">${miPerfil.sobre_mi}</p>

            <br>
            <p>Redes sociales: <span class="valor">${miPerfil.redes_sociales}</span></p>
        </div>
    </div>
</div>

    <footer class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </footer>
        
    <script>
    const botonPerfil = document.querySelector('.dropdown .btn');
    const menuDesplegable = document.querySelector('.dropdown-menu');

    // Al hacer clic en el botón, aparece/desaparece el menú
    botonPerfil.addEventListener('click', function(e) {
        e.stopPropagation(); // Evita que el clic se propague
        menuDesplegable.classList.toggle('mostrar-menu');
    });

    // Si haces clic en cualquier otra parte de la pantalla, el menú se cierra
    document.addEventListener('click', function() {
        menuDesplegable.classList.remove('mostrar-menu');
    });
</script>
    </body>
</html>
