<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de Variables</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Leccionescss/leccion6.css">
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
        <a href="${pageContext.request.contextPath}/VistasLecciones/lecciones.jsp">Lecciones</a>
        <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
        <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascota</a>
        <a href="${pageContext.request.contextPath}/Perfil.jsp">Perfil</a>
    </div> 
    
    <div class="contenedor">
        <h1>CASTING DE VARIABLES</h1> 
        <p> En Java, cada variable se declara con un tipo de dato específico,el casting en Java se usa para convertir un tipo de dato en otro, en Java existen dos tipos de casting el implícito y el explícito.</p><br>
        <h3>Casting implícito</h3>
        <p>Sucede cuando conviertes un tipo “más pequeño” a uno “más grande”.</p>
        <div class="codigo">
        int numero = 10;
        double resultado = numero;  // int → double
        
        System.out.println(resultado); // 10.0
        </div>
        <h3>Casting expícito</h3>
        <p>Se usa cuando conviertes un tipo “más grande” a uno “más pequeño”. Aquí sí puede haber pérdida de datos.</p>
        <div class="codigo2">
        double numero = 9.78;
        int resultado = (int) numero;  // double → int

        System.out.println(resultado); // 9
        </div>
        <a href="${pageContext.request.contextPath}/VistasLecciones/leccion4.jsp" class="boton-fundamentos">
        <img src="${pageContext.request.contextPath}/img/Boton_Naranja.png" class="boton">
        <span class="texto-boton">REGRESAR</span>
        </a> 
    </div>
</body> 
</html>