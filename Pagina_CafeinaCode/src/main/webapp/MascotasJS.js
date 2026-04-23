/* * MascotasJS.js - Versión con cambio de dirección de imagen
 */

window.onload = function() {

    // 1. REINICIAR RACHA AL REFRESCAR
    localStorage.setItem("rachaDias", 0);
    if (document.getElementById("contadorRacha")) {
        document.getElementById("contadorRacha").innerText = "0";
    }

    // 2. CARGAR NOMBRE GUARDADO
    cargarNombre();

    // 3. LÓGICA DE LA MASCOTA CAMINANDO
    var mascota = localStorage.getItem("mascota");
    var img = document.getElementById("mascotaCaminando");

    // Imagen inicial según la mascota
    if (mascota === "pat") { img.src = "secuencia_pat.gif"; }
    else if (mascota === "ros") { img.src = "final_ros.gif"; }
    else if (mascota === "bet") { img.src = "secuencia_bet.gif"; }
    else { img.src = "secuencia_pat.gif"; } 

    var x = -70;
    var y = window.innerHeight - 110;
    var velocidad = 1.2;
    var direccion = 1; // 1 = Derecha, -1 = Izquierda
    var pausado = false;
    var volando = false;
    var tiempoPausa = 0;
    var frameCount = 0;

    img.style.position = "fixed";
    img.style.width = "70px";
    img.style.zIndex = "999";
    img.style.transition = "none";

    function mover() {
        frameCount++;

        if (pausado) {
            tiempoPausa--;
            if (tiempoPausa <= 0) {
                pausado = false;
                volando = false;
            }
            img.style.left = x + "px";
            img.style.bottom = (window.innerHeight - y - 70) + "px";
            requestAnimationFrame(mover);
            return;
        }

        if (volando) {
            y -= 2;
            if (y < 60) {
                volando = false;
                pausado = true;
                tiempoPausa = 80;
            }
        } else {
            x += velocidad * direccion;
            y = window.innerHeight - 110;
        }

        // --- REBOTE DERECHA (Empieza a caminar a la IZQUIERDA) ---
        if (x > window.innerWidth - 70) {
            direccion = -1; 
            
            // Si es Pat, cambiamos a la imagen de la izquierda
            if (mascota === "pat" || !mascota) { 
                img.src = "secuencia_izq_pat.gif"; 
            }

            var random = Math.floor(Math.random() * 3);
            if (random === 0) { pausado = true; tiempoPausa = 90; } 
            else if (random === 1) { volando = true; }
        }

        // --- REBOTE IZQUIERDA (Empieza a caminar a la DERECHA) ---
        if (x < -70) {
            direccion = 1; 
            
            // Si es Pat, volvemos a la imagen original de la derecha
            if (mascota === "pat" || !mascota) { 
                img.src = "secuencia_pat.gif"; 
            }

            var random2 = Math.floor(Math.random() * 3);
            if (random2 === 0) { pausado = true; tiempoPausa = 90; } 
            else if (random2 === 1) { volando = true; }
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
};

// =====================================
// FUNCIONES GLOBALES
// =====================================

function cargarNombre() {
    var nombre = localStorage.getItem("nombreMascota");
    var elementoNombre = document.getElementById("nombreMascota");
    if (nombre && elementoNombre) {
        elementoNombre.innerText = nombre;
    }
}

function guardarNombre() {
    var nombreInput = document.getElementById("nombre");
    var nombreMascotaDisplay = document.getElementById("nombreMascota");
    
    if (nombreInput && nombreInput.value.trim() !== "") {
        var nombre = nombreInput.value.trim();
        localStorage.setItem("nombreMascota", nombre);
        if (nombreMascotaDisplay) nombreMascotaDisplay.innerText = nombre;
        nombreInput.value = "";
    }
}

function borrarNombre() {
    localStorage.removeItem("nombreMascota"); 
    var elementoNombre = document.getElementById("nombreMascota");
    if (elementoNombre) elementoNombre.innerText = "Sin nombre";
    var nombreInput = document.getElementById("nombre");
    if (nombreInput) nombreInput.value = "";
}

function aumentarRacha() {
    var racha = parseInt(localStorage.getItem("rachaDias") || 0);
    racha++;
    localStorage.setItem("rachaDias", racha);
    var elementoRacha = document.getElementById("contadorRacha");
    if (elementoRacha) elementoRacha.innerText = racha;
}