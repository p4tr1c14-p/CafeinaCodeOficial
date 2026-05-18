<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clases de Operadores</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion4.css">
</head>
<body>
    <div class="menu">
        <img src="${pageContext.request.contextPath}/imagenes/logo_cafeina_code.png" class="logo">
        <a href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
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
        <p>• <strong>+</strong> Suma: <code>a + b</code></p>
        <p>• <strong>-</strong> Resta: <code>a - b</code></p>
        <p>• <strong>*</strong> Multiplicación: <code>a * b</code></p>
        <p>• <strong>/</strong> División: <code>a / b</code></p>
        <p>• <strong>%</strong> Módulo (residuo): <code>a % b</code></p>

        <h2>OPERADORES RELACIONALES</h2>
        <p>Comparan dos valores y devuelven un resultado booleano (true o false):</p>
        <p>• <strong>==</strong> Igual a</p>
        <p>• <strong>!=</strong> Diferente de</p>
        <p>• <strong>&gt;</strong> Mayor que</p>
        <p>• <strong>&lt;</strong> Menor que</p>
        <p>• <strong>&gt;=</strong> Mayor o igual que</p>
        <p>• <strong>&lt;=</strong> Menor o igual que</p>

        <h2>OPERADORES LÓGICOS</h2>
        <p>Se usan para combinar expresiones booleanas:</p>
        <p>• <strong>&amp;&amp;</strong> AND lógico: ambas condiciones deben ser verdaderas</p>
        <p>• <strong>||</strong> OR lógico: al menos una condición debe ser verdadera</p>
        <p>• <strong>!</strong> NOT lógico: invierte el valor booleano</p>

        <h2>OPERADORES DE ASIGNACIÓN</h2>
        <p>Asignan valores a variables:</p>
        <p>• <strong>=</strong> Asignación simple: <code>a = 5</code></p>
        <p>• <strong>+=</strong> Suma y asigna: <code>a += 3</code> equivale a <code>a = a + 3</code></p>
        <p>• <strong>-=</strong> Resta y asigna: <code>a -= 3</code></p>
        <p>• <strong>*=</strong> Multiplica y asigna: <code>a *= 3</code></p>
        <p>• <strong>/=</strong> Divide y asigna: <code>a /= 3</code></p>

        <a href="${pageContext.request.contextPath}/lecciones.jsp" class="boton-fundamentos">
            <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
            <span class="texto-boton">REGRESAR</span>
        </a>
    </div>

    <div class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </div>
</body>
</html>