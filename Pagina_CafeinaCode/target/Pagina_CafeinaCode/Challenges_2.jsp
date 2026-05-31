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
            <a href="Inicio.jsp">Inicio</a>
            <a href="lecciones">Guía</a>
            <a href="Challenges.jsp" class="activo">Challenges</a>
            <a href="Mascotas.jsp">Mascota</a>
            <a href="Perfil.jsp">Perfil</a>
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

            <div id="alertaOpinion" class="alerta-opinion">
                <span class="alerta-icono">🐧 ¡OYE! ¡ESCRIBE ALGO PRIMERO!</span>
                Aún no has escrito tu opinión.
                <span class="alerta-sugerencia">
                    💡 Cuéntanos: ¿Qué ejercicios te gustaron más?<br>
                    ¿Te gustaría más retos de POO, arreglos, o algo completamente distinto?
                </span>
            </div>

            <div id="alertaExito" class="alerta-exito">
                <span class="alerta-icono">🐧 ¡GRACIAS POR TU OPINIÓN!</span>
                Tu respuesta fue enviada correctamente.
                <span class="alerta-sugerencia">
                    Redirigiendo al inicio en unos segundos...
                </span>
            </div>

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
                    const alerta = document.getElementById("alertaOpinion");
                    alerta.classList.remove("visible");
                    void alerta.offsetWidth;
                    alerta.classList.add("visible");
                    setTimeout(function() {
                        alerta.classList.remove("visible");
                    }, 8000);
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
                        const alertaExito = document.getElementById("alertaExito");
                        alertaExito.classList.add("visible");
                        setTimeout(function() {
                            window.location.href = "Inicio.jsp";
                        }, 2500);
                    } else {
                        const alertaExito = document.getElementById("alertaExito");
                        alertaExito.classList.add("visible");
                        setTimeout(function() {
                            window.location.href = "Inicio.jsp";
                        }, 2500);
                    }
                })
                .catch(function(error) {
                    const alertaExito = document.getElementById("alertaExito");
                    alertaExito.classList.add("visible");
                    setTimeout(function() {
                        window.location.href = "Inicio.jsp";
                    }, 2500);
                });
            }
        </script>
        <script src="js/mascota-caminando.js"></script>
    </body>
</html>