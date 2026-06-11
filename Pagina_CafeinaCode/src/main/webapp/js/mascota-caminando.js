/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

(function() {
    var mascota = localStorage.getItem("mascota");
    var oculta = localStorage.getItem("mascotaOculta");
    if (!mascota || oculta === "true") return;

    var img = document.createElement("img");
    img.id = "mascotaCaminando";

    if (mascota === "pat") { img.src = "imagenes/secuencia_derec_pati.gif"; }
    else if (mascota === "ros") { img.src = "imagenes/final_ros.gif"; }
    else if (mascota === "bet") { img.src = "imagenes/secuencia_bet.gif"; }

    img.style.position = "fixed";
    img.style.width = "70px";
    img.style.zIndex = "999";
    img.style.transition = "none";
    document.body.appendChild(img);

    var x = -70;
    var y = window.innerHeight - 110;
    var velocidad = 1.2;
    var direccion = 1;
    var pausado = false;
    var volando = false;
    var tiempoPausa = 0;
    var frameCount = 0;

    function mover() {
        frameCount++;

        if (pausado) {
            tiempoPausa--;
            if (tiempoPausa <= 0) { pausado = false; volando = false; }
            img.style.left = x + "px";
            img.style.bottom = (window.innerHeight - y - 70) + "px";
            requestAnimationFrame(mover);
            return;
        }

        if (volando) {
            y -= 2;
            if (y < 60) { volando = false; pausado = true; tiempoPausa = 80; }
        } else {
            x += velocidad * direccion;
            y = window.innerHeight - 110;
        }

        if (x > window.innerWidth - 70) {
            direccion = -1;
            if (mascota === "pat" || !mascota) { img.src = "imagenes/secuencia_izq_pati.gif"; }
            var r = Math.floor(Math.random() * 3);
            if (r === 0) { pausado = true; tiempoPausa = 90; }
            else if (r === 1) { volando = true; }
        }

        if (x < -70) {
            direccion = 1;
            if (mascota === "pat" || !mascota) { img.src = "imagenes/secuencia_derec_pati.gif"; }
            var r2 = Math.floor(Math.random() * 3);
            if (r2 === 0) { pausado = true; tiempoPausa = 90; }
            else if (r2 === 1) { volando = true; }
        }

        if (!volando && frameCount % 100 === 0) {
            if (Math.floor(Math.random() * 2) === 0) {
                pausado = true;
                tiempoPausa = 60 + Math.floor(Math.random() * 80);
            }
        }

        img.style.left = x + "px";
        img.style.bottom = (window.innerHeight - y - 70) + "px";
        requestAnimationFrame(mover);
    }

    mover();
})();
