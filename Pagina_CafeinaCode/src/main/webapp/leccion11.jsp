<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CONSTRUCTORES</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion11.css">
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
        <h1>CONSTRUCTORES</h1>

        <p>
            El constructor en Java es uno de los conceptos fundamentales de la
            programación orientada a objetos. Cuando diseñamos una clase para crear
            objetos a partir de ella, necesitamos un constructor que permita
            inicializar los atributos del objeto al momento de su creación.
        </p>

        <p>
            En Java, un constructor es un método especial que tiene el mismo nombre
            que la clase y no posee tipo de retorno. Puede recibir parámetros para
            asignar valores iniciales a los atributos cuando se crea una nueva
            instancia de la clase.
        </p>

        <div class="bloque-codigo">
            <pre><code>public class Persona {
        private String nombre;
        private int edad;

        // Constructor
        public Persona(String nombre, int edad) {
            this.nombre = nombre;
            this.edad = edad;
        }
    }</code></pre>
        </div>
    <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">    
    <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
    <span class="texto-boton">REGRESAR</span>
    </a>  
</div>
    
</body> 
</html>