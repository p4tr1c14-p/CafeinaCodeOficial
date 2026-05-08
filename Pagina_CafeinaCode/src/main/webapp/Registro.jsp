<%-- 
    Document   : Registro
    Created on : 4 may 2026, 08:58:41
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Registro.css">
        <link href="https://fonts.googleapis.com/css2?family=Bitcount+Grid+Double:wght@100..900&display=swap" rel="stylesheet">
    </head>
    <body>
        
        <div class="cuadro_r">
            
            <div class="cerrar">
                <a href="index.html">
                    <img src="cerrar.png" class="x">
                </a>
            </div>
            
            <div class="c_logo">
                <img src="logo_cafeina_code.png" class="logo">
            </div>
            
            <h1 class="registro">Registro</h1>
            
            <form class="formulario_r" action="RegistroServlet" method="POST">
                <div class="escribir_r">
                    <input type="text" name="nombre_usuario" placeholder="Nombre de usuario" id="user" required="">
                </div>
                <div class="escribir_r">
                    <input type="email" name="correo" placeholder="Correo electrónico" id="email" required="">
                </div>

                <div class="escribir_r">
                    <input type="password" name="password" placeholder="Contraseña" id="pass" required="">
                </div>
                <div class="boton-contenedor">
                    <button type="submit" style="background: none; border: none; cursor: pointer;">
                        <img src="Boton_Naranja.png" class="boton">
                        <span class="texto-boton">Registrarse</span>
                    </button>
                </div>
            </form>
            
            <p>Tu nivel actual es: ${perfil.nivel_del_curso}</p>
<div class="barra-progreso">
    Progreso: ${perfil.progreso}
</div>
            
        </div>
        
        <!-- FOOTER -->
    <div class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </div>
    </body>
</html>
