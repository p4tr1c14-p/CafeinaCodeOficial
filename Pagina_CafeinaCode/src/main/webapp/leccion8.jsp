<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de Variables</title>
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
        <h1>Clases de opreadores</h1>
        <p>Los operadores Java son símbolos especiales que realizan operaciones sobre variables y valores. Se utilizan para manipular datos y variables en expresiones.<br>
        Tipos de operadores:<br>
        Operadores aritméticos<br>
        Operadores relacionales<br>
        Operadores lógicos<br>
        Operadores de asignación<br>
    </p>
        <p>Los operadores aritméticos se utilizan para realizar operaciones matemáticas básicas.</p>
        <div class="ejemplo">
        <h4> + (Adición)</h4>
        <h4>- (Resta)</h4>
        <h4>* (Multiplicación)</h4>
        <h4>/ (División)</h4>
        <h4>% (Módulo)</h4> 
        <h3>Ejemplo:</h3>
        int a = 10;<br>
        int b = 5;<br>
        System.out.println("Addition: " + (a + b));      // Output: 15<br>
        System.out.println("Subtraction: " + (a - b));   // Output: 5<br>
        System.out.println("Multiplication: " + (a * b));// Output: 50<br>
        System.out.println("Division: " + (a / b));      // Output: 2<br>
        System.out.println("Modulus: " + (a % b));       // Output: 0<br>
        </div>
        <h3>Operadores relacionales</h3>
        <div class="ejemplo2">
        <h4> == (Igual a)</h4>
        <h4> != (No es igual a)</h4>
        <h4> > (Mayor que)</h4>           
        <h4> < (Menor de)</h4>           
        <h4>>= (Mayor o igual que)</h4>           
        <h4> <= (Inferior o igual a)</h4>           
        <h3>Ejemplo:</h3>
        int a = 10;<br>
        int b = 5;<br>
        System.out.println(a == b); // Output: false<br>
        System.out.println(a > b);  // Output: true<br>
        System.out.println(a < b);  // Output: false<br>
             
        <h3>Operadores lógicos</h3>
        <div class="ejemplo3">
        <h4> && (Y lógico)</h4>
        <h4>|| (OR lógico)</h4>
        <h4>! (Lógico NO)</h4>            
        <h3>Ejemplo:</h3>    
        boolean x = true;<br>
        boolean y = false;<br>
        System.out.println(x && y); // Output: false<br>
        System.out.println(x || y); // Output: true<br>
        System.out.println(!x);// Output: false<br>
    
            
        <h3>Operadores de asignación</h3>
        <div class="ejemplo4">
        <h4>= (Asignación simple)</h4>
        <h4>+= (Añadir y asignar)</h4>
        <h4>-= (Restar y asignar)</h4>            
        <h4>*= (Multiplica y asigna)</h4>            
        <h4>/= (Divide y asigna)</h4>            
        <h4>%= (Módulo y asignar)</h4>    
        <h3>Ejemplo:</h3>        
        int a = 10;<br>
        a += 5;  // Equivalente a = a + 5<br>
        System.out.println(a); // Output: 15<br>
        
        
        <a href="${pageContext.request.contextPath}/leccion4.jsp" class="boton-fundamentos">
        <img src="${pageContext.request.contextPath}/imagenes/Boton_Naranja.png" class="boton">
        <span class="texto-boton">REGRESAR</span>
        </a>   
    </div>
    
</body> 
</html>    