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
        <div class="menu">
            <img src="${pageContext.request.contextPath}/imagenes/logo_cafeina_code.png" class="logo">
            <a href="${pageContext.request.contextPath}/Inicio.jsp">Inicio</a>
            <a href="${pageContext.request.contextPath}/lecciones.jsp">Guía</a>
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
                    <br>
                    <button type="button" id="btn-editar" class="btn" style="width: 130px; display: block; margin: 10px auto 0 auto; padding: 6px 0;">Editar Perfil</button>
                </div>
                
                <div class="columna_datos" id="vista-datos">
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

                <div class="columna_datos" id="formulario-edicion" style="display: none;">
                    <form action="${pageContext.request.contextPath}/EditarPerfilServlet" method="POST">
                        <p>Nombre de usuario: <span class="valor">${miPerfil.nombre}</span></p>
                        <p>Correo: <span class="valor">${miPerfil.correo}</span></p>

                        <p>Pais: 
                            <input type="text" name="pais" value="${miPerfil.pais}" class="valor" style="background: rgba(0,0,0,0.5); border: 1px solid #ff007f; color: #fff; padding: 3px 8px; font-family: inherit;">
                        </p>

                        <p>Nivel en Java: <span class="valor">${miPerfil.nivel_del_curso}</span></p>

                        <p>Lenguajes conocidos: 
                            <input type="text" name="lenguajes_conocidos" value="${miPerfil.lenguajes_conocidos}" class="valor" style="background: rgba(0,0,0,0.5); border: 1px solid #ff007f; color: #fff; padding: 3px 8px; font-family: inherit; width: 70%;" placeholder="Ej. Java, C, SQL">
                        </p>
                        <br>

                        <p>Sobre mi:</p>
                        <textarea name="sobre_mi" rows="4" style="width: 100%; background: rgba(0,0,0,0.5); border: 1px solid #ff007f; color: #fff; padding: 8px; font-family: inherit; resize: none;">${miPerfil.sobre_mi}</textarea>
                        <br><br>

                        <p>Redes sociales: 
                            <input type="text" name="redes_sociales" value="${miPerfil.redes_sociales}" class="valor" style="background: rgba(0,0,0,0.5); border: 1px solid #ff007f; color: #fff; padding: 3px 8px; font-family: inherit; width: 80%;">
                        </p>
                        <br>
                        
                        <button type="submit" class="btn" style="background: #00f0ff; color: #000; font-weight: bold;">Guardar Cambios</button>
                        <button type="button" id="btn-cancelar" class="btn" style="background: #ff007f; color: #fff; margin-left: 10px;">Cancelar</button>
                    </form>
                </div>
            </div>
        </div>

        <footer class="footer">
            Aviso de privacidad | @2025 Cafeína Code
        </footer>

        <script>
            // Lógica del Dropdown existente
            const botonPerfil = document.querySelector('.dropdown .btn');
            const menuDesplegable = document.querySelector('.dropdown-menu');
            botonPerfil.addEventListener('click', function(e) {
                e.stopPropagation();
                menuDesplegable.classList.toggle('mostrar-menu');
            });
            document.addEventListener('click', function() {
                menuDesplegable.classList.remove('mostrar-menu');
            });

            // LÓGICA PARA INTERCAMBIAR VISTAS (EDICIÓN INTERACTIVA)
            const btnEditar = document.getElementById('btn-editar');
            const btnCancelar = document.getElementById('btn-cancelar');
            const vistaDatos = document.getElementById('vista-datos');
            const formularioEdicion = document.getElementById('formulario-edicion');

            btnEditar.addEventListener('click', function() {
                vistaDatos.style.display = 'none';
                formularioEdicion.style.display = 'block';
                btnEditar.style.display = 'none'; // Esconde el botón principal mientras edita
            });

            btnCancelar.addEventListener('click', function() {
                formularioEdicion.style.display = 'none';
                vistaDatos.style.display = 'block';
                btnEditar.style.display = 'block'; // Muestra de nuevo el botón de editar
            });
        </script>
    </body>
</html>