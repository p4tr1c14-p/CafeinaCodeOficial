<%-- 
    Document   : Perfil
    Created on : 7 may 2026, 18:42:59
    Author     : alber
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getAttribute("miPerfil") == null) {
        response.sendRedirect("PerfilServlet");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Perfil</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Perfil.css">
    </head>
    <body>
        <!-- HEADER -->
        <div class="menu">
            <img src="${pageContext.request.contextPath}/imagenes/logo_cafeina_code.png" class="logo">
            <a href="${pageContext.request.contextPath}/Inicio.jsp">Inicio</a>
            <a href="${pageContext.request.contextPath}/Guia.html">Guía</a>
            <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
            <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascotas</a>
            <div class="dropdown">
                <button class="btn" type="button">Perfil</button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/PerfilServlet">Ver Perfil</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/index.jsp">Cerrar Sesión</a></li>
                </ul>
            </div>
        </div>

        <div class="perfil_pantalla">
            <h1 class="titulo_seccion">Información básica</h1>
            <div class="perfil_layout">
                <div class="columna_foto">
                    <div class="foto_marco">
                        <img src="${pageContext.request.contextPath}/imagenes/usuario.png" class="foto_circular" alt="Perfil">
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
            botonPerfil.addEventListener('click', function(e) {
                e.stopPropagation();
                menuDesplegable.classList.toggle('mostrar-menu');
            });
            document.addEventListener('click', function() {
                menuDesplegable.classList.remove('mostrar-menu');
            });
        </script>
    </body>
</html>