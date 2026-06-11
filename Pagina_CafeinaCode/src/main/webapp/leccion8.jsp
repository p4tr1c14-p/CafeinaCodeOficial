<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clases de Operadores</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion8.css">
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
        <a href="${pageContext.request.contextPath}/lecciones.jsp">Lecciones</a>
        <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
        <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascota</a>
        <a href="${pageContext.request.contextPath}/Perfil.jsp">Perfil</a>
    </div> 
    
    <div class="contenedor">
        <h1>OPERADORES EN JAVA</h1>

        <p>
            Los operadores en Java son símbolos especiales que permiten realizar
            operaciones sobre variables y valores. Se clasifican según el tipo de
            operación que realizan.
        </p>

        <h2>OPERADORES ARITMÉTICOS</h2>
        <p>Se utilizan para realizar operaciones matemáticas básicas:</p>

        <ul>
            <li><strong>+</strong> Suma: <code>a + b</code></li>
            <li><strong>-</strong> Resta: <code>a - b</code></li>
            <li><strong>*</strong> Multiplicación: <code>a * b</code></li>
            <li><strong>/</strong> División: <code>a / b</code></li>
            <li><strong>%</strong> Módulo: <code>a % b</code></li>
        </ul>

        <div class="bloque-codigo">
            <pre><code>int a = 10;
    int b = 3;

    System.out.println(a + b); // 13
    System.out.println(a % b); // 1</code></pre>
        </div>

        <h2>OPERADORES RELACIONALES</h2>
        <p>
            Comparan dos valores y devuelven un resultado booleano
            (<code>true</code> o <code>false</code>):
        </p>

        <ul>
            <li><strong>==</strong> Igual a</li>
            <li><strong>!=</strong> Diferente de</li>
            <li><strong>&gt;</strong> Mayor que</li>
            <li><strong>&lt;</strong> Menor que</li>
            <li><strong>&gt;=</strong> Mayor o igual que</li>
            <li><strong>&lt;=</strong> Menor o igual que</li>
        </ul>

        <div class="bloque-codigo">
            <pre><code>int edad = 18;

    System.out.println(edad >= 18); // true</code></pre>
        </div>

        <h2>OPERADORES LÓGICOS</h2>
        <p>Se utilizan para combinar expresiones booleanas:</p>

        <ul>
            <li><strong>&amp;&amp;</strong> AND lógico: ambas condiciones deben ser verdaderas.</li>
            <li><strong>||</strong> OR lógico: al menos una condición debe ser verdadera.</li>
            <li><strong>!</strong> NOT lógico: invierte el valor booleano.</li>
        </ul>

        <div class="bloque-codigo">
            <pre><code>boolean estudia = true;
    boolean trabaja = false;

    System.out.println(estudia && trabaja); // false
    System.out.println(estudia || trabaja); // true</code></pre>
        </div>

        <h2>OPERADORES DE ASIGNACIÓN</h2>
        <p>Permiten asignar y modificar valores de variables:</p>

        <ul>
            <li><strong>=</strong> Asignación simple: <code>a = 5</code></li>
            <li><strong>+=</strong> Suma y asigna: <code>a += 3</code></li>
            <li><strong>-=</strong> Resta y asigna: <code>a -= 3</code></li>
            <li><strong>*=</strong> Multiplica y asigna: <code>a *= 3</code></li>
            <li><strong>/=</strong> Divide y asigna: <code>a /= 3</code></li>
        </ul>

        <div class="bloque-codigo">
            <pre><code>int numero = 10;

    numero += 5; // 15
    numero *= 2; // 30</code></pre>
        </div>

        <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">
            <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton" alt="Botón regresar">
            <span class="texto-boton">REGRESAR</span>
        </a>
    </div>

    <div class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </div>
</body>
</html>
