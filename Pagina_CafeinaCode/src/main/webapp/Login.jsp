<%-- 
    Document   : Login
    Created on : 4 may 2026, 08:47:08
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Bitcount+Grid+Double:wght@100..900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="Login.css">
    </head>
    <body>
        <div class="cuadro_r">
            
            <div class="cerrar">
                <a href="index.jsp">
                    <img src="cerrar.png" class="x">
                </a>
            </div>
            
            <div class="c_logo">
                <img src="imagenes/logo_cafeina_code.png" class="logo">
            </div>
            
            <h1 class="registro">Login</h1>
            
            <form class="formulario_r" action="LoginServlet" method="POST">
                <div class="escribir_r">
                    <input type="email" name="correo" placeholder="Correo electrónico" id="email" required="">
                </div>
                <div class="escribir_r">
                    <input type="password" name="password" placeholder="Contraseña" id="pass" required="">
                </div>
                
                <div class="boton-contenedor">
                    <button type="submit" style="background: none; border: none; cursor: pointer;">
                        <img src="imagenes/Boton_Naranja.png" class="boton">
                        <span class="texto-boton">Empezar</span>
                    </button>
                </div>
            </form>
            
        </div>
        
        <!-- FOOTER -->
    <div class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </div>
    </body>
</html>
