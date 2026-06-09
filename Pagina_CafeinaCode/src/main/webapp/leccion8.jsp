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
        <h1>CLASES DE OPERADORES</h1>

        <p>Los operadores en Java son símbolos especiales que permiten realizar operaciones sobre variables y valores. Se clasifican según el tipo de operación que realizan.</p>

        <h2>OPERADORES ARITMÉTICOS</h2>
        <p>Se usan para realizar operaciones matemáticas básicas:</p>
        <ul>
            <li><strong>+</strong> Suma: <code>a + b</code></li>
            <li><strong>-</strong> Resta: <code>a - b</code></li>
            <li><strong>*</strong> Multiplicación: <code>a * b</code></li>
            <li><strong>/</strong> División: <code>a / b</code></li>
            <li><strong>%</strong> Módulo: <code>a % b</code></li>
        </ul>

        <h2>OPERADORES RELACIONALES</h2>
        <p>Comparan dos valores y devuelven un resultado booleano (true o false):</p>
        <ul>
            <li><strong>==</strong> Igual a</li>
            <li><strong>!=</strong> Diferente de</li>
            <li><strong>&gt;</strong> Mayor que</li>
            <li><strong>&lt;</strong> Menor que</li>
            <li><strong>&gt;=</strong> Mayor o igual que</li>
            <li><strong>&lt;=</strong> Menor o igual que</li>
        </ul>

        <h2>OPERADORES LÓGICOS</h2>
        <p>Se usan para combinar expresiones booleanas:</p>
        <ul>
            <li><strong>&amp;&amp;</strong> AND lógico: ambas condiciones deben ser verdaderas</li>
            <li><strong>||</strong> OR lógico: al menos una condición debe ser verdadera</li>
            <li><strong>!</strong> NOT lógico: invierte el valor booleano</li>
        </ul>

        <h2>OPERADORES DE ASIGNACIÓN</h2>
        <p>Asignan valores a variables:</p>
        <ul>
            <li><strong>=</strong> Asignación simple: <code>a = 5</code></li>
            <li><strong>+=</strong> Suma y asigna: <code>a += 3</code> equivale a <code>a = a + 3</code></li>
            <li><strong>-=</strong> Resta y asigna: <code>a -= 3</code></li>
            <li><strong>*=</strong> Multiplica y asigna: <code>a *= 3</code></li>
            <li><strong>/=</strong> Divide y asigna: <code>a /= 3</code></li>
        </ul>
        <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">
            <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
            <span class="texto-boton">REGRESAR</span>
        </a>
    </div>

    <div class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </div>
</body>
</html>
