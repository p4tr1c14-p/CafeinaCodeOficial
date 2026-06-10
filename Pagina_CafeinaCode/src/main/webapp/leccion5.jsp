<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de Variables</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion5.css">
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
        <a href="${pageContext.request.contextPath}/VistasLecciones/leccion.jsp">Lecciones</a>
        <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
        <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascota</a>
        <a href="${pageContext.request.contextPath}/Perfil.jsp">Perfil</a>
    </div> 
    
    <div class="contenedor">
        <h1>¿Qué es un arreglo en Java?</h1>

        <p>
            Los arreglos en Java son estructuras que permiten almacenar múltiples
            elementos de forma secuencial, siempre que sean del mismo tipo de dato.
        </p>

        <h2>¿Cómo declarar un arreglo en Java?</h2>

        <p>
            Para declarar un arreglo se indica el tipo de dato de sus elementos y
            el nombre del arreglo. Para inicializarlo, se utiliza la palabra
            reservada <strong>new</strong> junto con el tamaño del arreglo entre
            corchetes.
        </p>

        <div class="bloque-codigo">
            <pre><code>// 1. Declaramos la variable
        int[] numeros;

        // 2. Creamos el arreglo con tamaño 10
        numeros = new int[10];

        // 3. Inicialización con valores conocidos
        int[] misNumeros = {10, 20, 30, 40};

        // Ejemplo de acceso y asignación
        int[] puntajes = new int[3];

        puntajes[0] = 100; // Primer elemento
        puntajes[1] = 85;  // Segundo elemento
        puntajes[2] = 92;  // Tercer elemento

        System.out.println("El primer puntaje es: " + puntajes[0]);</code></pre>
    </div>

        <p>
            Es importante recordar que en Java los arreglos comienzan desde el índice
            0. Por lo tanto:
        </p>

        <ul>
            <li>Primer elemento: índice 0</li>
            <li>Último elemento: índice n-1 (donde n es el tamaño del arreglo)</li>
        </ul>
    <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">    
    <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
    <span class="texto-boton">REGRESAR</span>
    </a>  
</div>
  
</body> 
</html>