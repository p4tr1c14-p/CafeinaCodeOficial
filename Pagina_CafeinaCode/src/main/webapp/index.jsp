<%-- 
    Document   : index
    Created on : 7 may 2026, 19:14:45
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Bitcount+Grid+Double:wght@100..900&display=swap" rel="stylesheet">
    <title>Inicio_sesion</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="inicio_sesion.css">
</head>

<body>

    <!-- HEADER -->
        <div class="menu">
            <img src="imagenes/logo_cafeina_code.png" class="logo">

            <a href="Registro.jsp">Inicio</a>
            <a href="Registro.jsp">Guía</a>
            <a href="Registro.jsp">Challenges</a>
            <a href="Registro.jsp">Mascotas</a>

            <div class="dropdown">
                <button class="btn" type="button">
                  Registrarse
                </button>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="Registro.jsp">Registro</a></li>
                  <li><a class="dropdown-item" href="Login.jsp">Login</a></li>
                </ul>
            </div>
        </div>
    
    <div class="titulos">
        <h2> Aprende con </h2>
    
    <h1> Cafeína Code </h1>
    
    </div>

    <div class="boton-contenedor">
        <a href="Registro.jsp" class="boton-contenedor">
                <img src="imagenes/Boton_Naranja.png" class="boton">
                <span class="texto-boton">Empezar</span>
        </a>
    </div>
    
    <!-- FOOTER -->
    <div class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </div>
    
    <script>
        const botonindex = document.querySelector('.dropdown .btn');
        const menuDesplegable = document.querySelector('.dropdown-menu');

        botonindex.addEventListener('click', function(e) {
            e.stopPropagation(); // Evita que el clic se propague
            menuDesplegable.classList.toggle('mostrar-menu');
        });

        document.addEventListener('click', function() {
            menuDesplegable.classList.remove('mostrar-menu');
        });
    </script>

</body>

</html>