<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SENTENCIAS IF-ELSE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion9.css">
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
        <h1>Condicionales if &amp; else</h1>

        <p>
            La instrucción <strong>if-else</strong> en Java es una herramienta de
            toma de decisiones que se utiliza para controlar el flujo del programa
            en función de ciertas condiciones. Ejecuta un bloque de código si una
            condición es verdadera y otro bloque si la condición es falsa.
        </p>

        <h2>Sentencia if en Java</h2>

        <p>
            La sentencia <strong>if</strong> en Java se utiliza para evaluar una
            condición y ejecutar cierto código solo si la condición se cumple.
            Por ejemplo: si está lloviendo iré en mototaxi a la universidad; si no,
            iré caminando.
        </p>

        <div class="bloque-codigo">
            <pre><code>public class IfElse {
        public static void main(String[] args) {
            boolean estaLloviendo = true;
            Persona persona = new Persona();

            if (estaLloviendo) {
                persona.irEnMototaxi();
            } else {
                persona.irCaminando();
            }
        }
    }</code></pre>
        </div>

        <p>
            La condición también puede ser cualquier expresión que devuelva un valor
            booleano (verdadero o falso). Por ejemplo:
        </p>

        <div class="bloque-codigo">
            <pre><code>if (x &gt; 5) {
        System.out.println("x es mayor que 5");
    }</code></pre>
        </div>
    <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">    
    <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
    <span class="texto-boton">REGRESAR</span>
    </a>  
</div>
    
</body> 
</html>
