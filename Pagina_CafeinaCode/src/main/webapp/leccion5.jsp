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
        
        <p>Los arreglos en Java son un tipo de contenedor, donde se pueden almacenar múltiples elementos de forma secuencial, siempre que sean del mismo tipo.</p>
        <h2>¿Cómo declarar un arreglo en Java?</h2>
        <p>Para declarar un arreglo, se tiene que indicar el tipo de dato de los elementos que contendrá el arreglo, y el nombre del arreglo.Para inicializarlo, se tiene que crear una nueva instancia y asignarla a la variable.Esto se logra usando la palabra reservada new, seguida del tipo de dato, así como indicando el tamaño del arreglo entre corchetes</p>
        <div class="arreglos">
            1._Declaramos la variable (el nombre y el tipo). 
        <br>int[] numeros;<br>
        2._Creamos el arreglo con un tamaño de 10 espacios.
        <br>numeros = new int[10];<br>
        3._A veces ya sabes qué datos quieres guardar desde el principio. En este caso, no necesitas la palabra new ni especificar el tamaño:<br>
        int[] misNumeros = {10, 20, 30, 40};<br>
        Ejemplo de acceso y asignación:
        <br>int[] puntajes = new int[3];<br>
        
        Es fundamental mencionar que en Java empezamos a contar desde cero.
        Primer elemento: Índice 0
        Último elemento: Índice n-1 (donde n es el tamaño).
        <br>puntajes[0] = 100; // Primer espacio<br>
        puntajes[1] = 85;  // Segundo espacio<br>
        puntajes[2] = 92;  // Tercer y último espacio<br>
        System.out.println("El primer puntaje es: " + puntajes[0]);         
    </div>
    <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">    
    <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
    <span class="texto-boton">REGRESAR</span>
    </a>  
</div>
    
</body> 
</html>