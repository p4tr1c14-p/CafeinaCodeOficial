<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de Variables</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion3.css">
</head>
    <%
        String mensaje = (String) session.getAttribute("mensajeExito");
        if (mensaje != null) {
    %>

    <div class="mensaje">
        <%= mensaje %>
    </div>

    <%
            session.removeAttribute("mensajeExito");
        }
    %>
<body>

    <div class="menu">
        <img src="${pageContext.request.contextPath}/img/logo_cafeina_code.png" class="logo">

        <a href="${pageContext.request.contextPath}/Inicio.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/lecciones.jsp">Lecciones</a>
        <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
        <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascota</a>
        <a href="${pageContext.request.contextPath}/Perfil.jsp">Perfil</a>
    </div> 
    
        <div class="contenedor">
        <h1>FUNDAMENTOS DE JAVA</h1>
        
    <p>                                                    
    Los fundamentos de Java se centran en ser un lenguaje orientado a objetos, 
    multiplataforma y robusto. Sus pilares principales son la Programación Orientada a Objetos (POO), 
    la sintaxis básica, y su plataforma de ejecución.
    </p>
    <h2>COMPONENTES DEL ENTORNO DE JAVA</h2>
    <p>•JVM (Java Virtual Machine): El componente de software que ejecuta el bytecode de Java, proporcionando independencia de la plataforma.</p>
    <p>•JRE (Java Runtime Environment): Incluye la JVM y las bibliotecas necesarias para ejecutar aplicaciones Java.</p>
    <p>•JDK (Java Development Kit): El conjunto completo de herramientas para desarrolladores, que incluye el JRE, el compilador (javac) y otras utilidades para crear aplicaciones Java.</p>
    <a href="${pageContext.request.contextPath}/lecciones.jsp" class="boton-fundamentos">
        <img src="${pageContext.request.contextPath}/imgagenes/Boton_Naranja.png" class="img-boton">
        <span class="texto-boton">REGRESAR</span>
    </a> 

    </div>
        <div class="footer">
            Aviso de privacidad | @2025 Cafeína Code
    </div>

</body>
</html>