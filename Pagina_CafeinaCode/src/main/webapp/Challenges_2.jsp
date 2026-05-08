<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenges Final</title>
        <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/Challenges_2.css">
    </head>
    <body>
        <div class="menu">
            <img src="imagenes/logo_cafeina_code.png" class="logo">
            <a href="index.jsp">Inicio</a>
            <a href="Guia.html">Guía</a>
            <a href="Challenges.jsp" class="activo">Challenges</a>
            <a href="Mascotas.jsp">Mascota</a>
            <a href="PerfilServlet">Perfil</a>
        </div>
        <div class="contenedor">
            <h2>Felicidades por completar los Challenges!</h2>
            <p>
                ¡Excelente trabajo! Has terminado todos los challenges de esta sección
                y has demostrado dedicación, esfuerzo y ganas de seguir aprendiendo Java.
                <br><br>
                Los resultados de tus retos completados se enviarán directamente a tu correo,
                para que puedas revisarlos cuando quieras.
                <br><br>
                Antes de irte, nos encantaría conocer tu opinión, cuéntanos cómo te parecieron los challenges.
                <br><br>
                Tu valoración es muy importante para seguir mejorando la página y crear mejores ejercicios.
                <br><br>
                ¡Gracias por aprender con nosotros!
            </p>
            <textarea id="opinion" placeholder="Escribe tu opinión aquí..."></textarea>
            <a href="#" class="boton-contenedor" onclick="enviarOpinion()">
                <img src="imagenes/Boton_Naranja.png" class="boton">
                <span class="texto-boton">ENVIAR</span>
            </a>
        </div>
        <img src="imagenes/Penguin.gif" class="penguin">
        <div class="footer">
            Aviso de privacidad | @2025 Cafeína Code
        </div>
        <script>
            function enviarOpinion() {
                const opinion = document.getElementById("opinion").value;
                if (!opinion.trim()) {
                    alert("Escribe tu opinión antes de enviar.");
                    return;
                }
                const params = new URLSearchParams();
                params.append("retroalimentacion", opinion);
                fetch('/Pagina_CafeinaCode/GuardarRetroServlet', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
                    body: params.toString()
                })
                .then(function(response) {
                    if (response.ok || response.redirected) {
                        alert("¡Gracias por tu opinión!");
                        window.location.href = "index.jsp";
                    } else {
                        alert("Error al enviar la opinión.");
                    }
                })
                .catch(function(error) {
                    alert("Error al enviar la opinión.");
                });
            }
        </script>
    </body>
</html>