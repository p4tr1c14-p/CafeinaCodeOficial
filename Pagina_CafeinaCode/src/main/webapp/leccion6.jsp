<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de Variables</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion6.css">
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

        <a href="${pageContext.request.contextPath}/Inicio.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/VistasLecciones/lecciones.jsp">Lecciones</a>
        <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
        <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascota</a>
        <a href="${pageContext.request.contextPath}/Perfil.jsp">Perfil</a>
    </div> 
    
    <div class="contenedor">
        <h1>CASTING DE VARIABLES</h1>

        <p>
            En Java, cada variable se declara con un tipo de dato específico.
            El <strong>casting</strong> es el proceso de convertir un tipo de dato
            en otro. Existen dos tipos de casting: implícito y explícito.
        </p>

        <h3>Casting implícito</h3>

        <p>
            Ocurre automáticamente cuando se convierte un tipo de dato más pequeño
            a uno más grande. Esta conversión no implica pérdida de información.
        </p>

        <div class="bloque-codigo">
            <pre><code>int numero = 10;
    double resultado = numero;  // int → double

    System.out.println(resultado); // 10.0</code></pre>
        </div>

        <h3>Casting explícito</h3>

        <p>
            Se utiliza cuando se convierte un tipo de dato más grande a uno más
            pequeño. En este caso puede producirse pérdida de información, por lo
            que es necesario indicar la conversión manualmente.
        </p>

        <div class="bloque-codigo">
            <pre><code>double numero = 9.78;
    int resultado = (int) numero;  // double → int

    System.out.println(resultado); // 9</code></pre>
        </div>
        <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">
        <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
        <span class="texto-boton">REGRESAR</span>
        </a> 
    </div>
</body> 
</html>