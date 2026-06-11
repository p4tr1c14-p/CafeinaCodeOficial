<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BUCLES FOR & WHILE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion10.css">
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
        <img src="${pageContext.request.contextPath}/imagenes/logo_cafeina_code.png" class="logo">

        <a href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/VistasLecciones/leccion.jsp">Lecciones</a>
        <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
        <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascota</a>
        <a href="${pageContext.request.contextPath}/Perfil.jsp">Perfil</a>
    </div> 
    
    <div class="contenedor">
        <h1>BUCLES FOR &amp; WHILE</h1>

        <p>
            El bucle <strong>for</strong> se utiliza cuando conocemos el número de
            iteraciones (sabemos cuántas veces queremos repetir una tarea).
            La instrucción <strong>for</strong> incluye la inicialización, la condición
            y el incremento/decremento en una sola línea.
            El bucle <strong>for</strong> es ideal para situaciones donde se conoce
            el número exacto de iteraciones de antemano.
            Es la estructura de control más común para iterar sobre rangos de valores
            o colecciones.
        </p>

        <div class="bloque-codigo">
            <pre><code>for (int i = 0; i < 5; i++) {
        System.out.println("i: " + i);
    }</code></pre>
        </div>
    <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">    
    <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
    <span class="texto-boton">REGRESAR</span>
    </a>  
</div>
    
</body> 
</html>