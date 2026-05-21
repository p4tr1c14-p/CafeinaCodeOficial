<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de Variables</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion7.css">
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
        <h1>VARIABLES EN JAVA</h1>

        <p>
            Son contenedores en los que se guardan datos de un tipo específico.
        </p>

        <h2>Variables locales</h2>
        <p>Solo pueden utilizarse dentro de un método.</p>

        <div class="bloque-codigo">
            public static void main(String[] args) {<br>
            &nbsp;&nbsp;int var = 5;<br>
            &nbsp;&nbsp;System.out.println(var);<br>
            }
        </div>

        <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">
        <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
        <span class="texto-boton">REGRESAR</span>
        </a> 
    </div>

</body>
</html>