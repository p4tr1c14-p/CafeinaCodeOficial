<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>HERENCIA</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion12.css">
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
        <h1>HERENCIA</h1>

        <p>
            La herencia es uno de los pilares fundamentales de la programación
            orientada a objetos. Permite que una clase herede atributos y métodos
            de otra clase, favoreciendo la reutilización de código y la creación
            de jerarquías entre clases.
        </p>

        <p>
            En Java, la herencia se implementa mediante la palabra reservada
            <strong>extends</strong>. La clase que hereda se denomina
            <em>clase hija</em> o <em>subclase</em>, mientras que la clase de la
            que se heredan los miembros se denomina <em>clase padre</em> o
            <em>superclase</em>.
        </p>

        <div class="bloque-codigo">
            <pre><code>public class ClasePadre {
        public String propiedadP = "Soy una propiedad de la clase padre.";

        public void metodoP() {
            System.out.println("Soy un método de la clase padre");
        }
    }

    public class ClaseHija extends ClasePadre {
        public String propiedadH = "Soy una propiedad de la clase hija.";

        public void metodoH() {
            System.out.println("Soy un método de la clase hija");
        }
    }</code></pre>
        </div>

        <p>
            Gracias a la herencia, los objetos de la clase hija pueden acceder a
            los atributos y métodos públicos o protegidos de la clase padre sin
            necesidad de volver a definirlos.
        </p>
    <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">    
    <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
    <span class="texto-boton">REGRESAR</span>
    </a>  
</div>
</body> 
</html>