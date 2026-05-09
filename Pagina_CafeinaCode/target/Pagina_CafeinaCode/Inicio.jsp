<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css2?family=Bitcount+Grid+Double:wght@100..900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/Inicio.css">
    </head>
    <body>
        <!-- HEADER -->
        <div class="menu">
            <img src="imagenes/logo_cafeina_code.png" class="logo">

            <a href="Inicio.jsp" class="activo">Inicio</a>
            <a href="lecciones.jsp">Guía</a>
            <a href="Challenges.jsp">Challenges</a>
            <a href="Mascotas.jsp">Mascotas</a>
            <a href="Perfil.jsp">Perfil</a>
        </div>
        
        <div class="c_principal">
            <div class="c_secudnario_1">
                <div class="bloque_izquierdo">
                    <div class="textos">
                        <p class="texto_1">
                            Refuerza tus conocimientos <br>
                            en Java de manera práctica <br>
                            y divertida.
                            <br><br>
                        </p>
                        <p class="texto_2">
                            Aprende Java con ejercicios <br>
                            divertidos materiales claros <br>
                            y una mascota virtual que te <br>
                            a compañará durante tu proceso.
                        </p>
                    </div>
                    <a href="guia2.jsp" class="link_boton">
                        <button class="boton_texto">¿Qué es este sitio?</button>
                    </a>
                </div>
                <div class="mono_sentado">
                    <img src="imagenes/mono_sin_fondo.png" class="mono">
                </div>
            </div>
            <div class="c_secundario_2">
                <div class="tarjetas">
                    <img src="imagenes/escribir.png">
                    <p><strong>Aprende:</strong> Guías paso a paso</p>
                </div>
                <div class="tarjetas">
                    <img src="imagenes/codigo.png">
                    <p><strong>Practica:</strong> Desafíos de código</p>
                </div>
                <div class="tarjetas">
                    <img src="imagenes/buscar.png">
                    <p><strong>Elije:</strong> La mascota que te acompañará</p>
                </div>
            </div>
            <div class="c_secundario_3">
                <div class="usuario_info">
                    <img src="imagenes/usuario.png" class="usuario_img">
                </div>
                <div class="comentarios">
                    <strong>ALBERTO</strong>
                    <p>¡Increíble! Los materiales de Java son súper claros. Tenía problemas entendiendo los ciclos for y while en clase, pero con las guías de Cafeína Code por fin me hicieron clic.</p>
                </div>
                <div class="flecha">
                    <span>❯</span>
                </div>
            </div>
        </div>
        
        <!-- FOOTER -->
    <div class="footer">
        Aviso de privacidad | @2025 Cafeína Code
    </div>
        
    

</body>
</html>

