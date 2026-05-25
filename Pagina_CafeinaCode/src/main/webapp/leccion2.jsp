<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de Variables</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion2.css">
</head>
<body>
    <div class="menu">
        <img src="${pageContext.request.contextPath}/imagenes/logo_cafeina_code.png" class="logo">
        <a href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/lecciones">Lecciones</a>
        <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
        <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascota</a>
        <a href="${pageContext.request.contextPath}/Perfil.jsp">Perfil</a>
    </div>

    <div class="contenedor">
        <h1>¿QUÉ ES ESTE SITIO?</h1>
        <p>
        Este sitio está diseñado para estudiantes que buscan mejorar sus habilidades 
        y conocimientos en el lenguajes de programación Java.
        </p>
        <p>
        Aquí encontraras ejercicios, una guía con conceptos clave
        y otros recursos que te ayudaran en el proceso de aprendizaje.
        </p>
        <a href="${pageContext.request.contextPath}/lecciones" class="boton-fundamentos">
            <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="img-boton">
            <span class="texto-boton">REGRESAR</span>
        </a>
    </div>

    <div class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </div>
    <script src="${pageContext.request.contextPath}/js/mascota-caminando.js"></script>
</body>
</html>