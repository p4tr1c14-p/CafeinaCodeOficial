/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

/* 
 * MascotasJS.js - Versión Final Unificada con reinicio de racha
 */

window.onload = function() {

    // 1. REINICIAR RACHA AL REFRESCAR (Petición especial)
    // Ponemos la racha en 0 en el almacenamiento y en la pantalla al cargar
    localStorage.setItem("rachaDias", 0);
    document.getElementById("contadorRacha").innerText = "0";

    // 2. CARGAR NOMBRE GUARDADO
    cargarNombre();

    // 3. LÓGICA DE LA MASCOTA CAMINANDO
    var mascota = localStorage.getItem("mascota");
    var img = document.getElementById("mascotaCaminando");

    if (mascota === "pat") { img.src = "secuencia_pat.gif"; }
    else if (mascota === "ros") { img.src = "final_ros.gif"; }
    else if (mascota === "bet") { img.src = "secuencia_bet.gif"; }
    else { img.src = "secuencia_pat.gif"; } 

    var x = -70;
    var y = window.innerHeight - 110;
    var velocidad = 1.2;
    var direccion = 1;
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

        if (x > window.innerWidth - 70) {
            direccion = -1;
            var random = Math.floor(Math.random() * 3);
            if (random === 0) { pausado = true; tiempoPausa = 90; } 
            else if (random === 1) { volando = true; }
        }

        if (x < -70) {
            direccion = 1;
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

// --- Gestión del Nombre ---
function cargarNombre() {
    var nombre = localStorage.getItem("nombreMascota");
    if (nombre) {
        document.getElementById("nombreMascota").innerText = nombre;
    }
}

function guardarNombre() {
    var nombre = document.getElementById("nombre").value.trim();
    if (nombre !== "") {
        localStorage.setItem("nombreMascota", nombre);
        document.getElementById("nombreMascota").innerText = nombre;
        document.getElementById("nombre").value = "";
    }
}

function borrarNombre() {
    localStorage.removeItem("nombreMascota"); 
    document.getElementById("nombreMascota").innerText = "Sin nombre";
    document.getElementById("nombre").value = "";
}

// --- Gestión de la Racha ---
function aumentarRacha() {
    // Lee el valor (que será 0 al refrescar) y le suma 1
    var racha = parseInt(localStorage.getItem("rachaDias") || 0);
    racha++;
    localStorage.setItem("rachaDias", racha);
    document.getElementById("contadorRacha").innerText = racha;
    console.log("Racha aumentada a:", racha);
}
