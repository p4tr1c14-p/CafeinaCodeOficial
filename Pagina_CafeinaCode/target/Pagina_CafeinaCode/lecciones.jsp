<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de Variables</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion1.css">
</head>

<body>

    <div class="menu">
        <img src="${pageContext.request.contextPath}/imagenes/logo_cafeina_code.png" class="logo">

        <a href="${pageContext.request.contextPath}/Inicio.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/lecciones.jsp">Lecciones</a>
        <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
        <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascota</a>
        <a href="${pageContext.request.contextPath}/Perfil.jsp">Perfil</a>
    </div> 
    
    <div class="contenedor">
        <h1>BIENVENIDO AL APARTADO DE GUÍA</h1>

        <p>
        En este apartado podras acceder a recursos, y herramientas diseñadas para ayudarte a familiarizarte con los conceptos básicos que deberias saber.
        Navega por el menú lateral para encontrar secciones como inicio, challenges, mascota y tu perfil.</p>

        <h2>SECCIONES DESTACADAS</h2>
        
        <form action="${pageContext.request.contextPath}/lecciones" method="post">

            <input type="hidden" name="accion" value="guardar">
            <input type="hidden" name="id_tema" value="1">

            <input type="hidden"
                   name="descripcion"
                   value="Introducción a Java y algunas dependencias">

            <button type="submit">
                FUNDAMENTOS DE JAVA
            </button>

        </form>          
        
        <form action="${pageContext.request.contextPath}/lecciones" method="post">

            <input type="hidden" name="accion" value="guardar">
            <input type="hidden" name="id_tema" value="2">

            <input type="hidden"
                   name="descripcion"
                   value="Temas introducctorioas a Java">

            <button type="submit">
                CONCEPTOS BASICOS
            </button>

        </form>

        
    </div>
        <div class="footer">
            Aviso de privacidad | @2025 Cafeína Code
        </div>

</body>
</html>
