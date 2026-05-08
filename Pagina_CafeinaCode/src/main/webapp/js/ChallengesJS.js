/*
 * ChallengesJS.js - Lógica para carga de ejercicios aleatorios y racha
 */

let ejercicioActual = { id: null, texto: "" };

window.onload = function() {
    cargarEjercicioAleatorio();
    var nombre = localStorage.getItem("nombreMascota");
    if (nombre && document.getElementById("nombreMascotaDisplay")) {
        document.getElementById("nombreMascotaDisplay").innerText = nombre;
    }
    actualizarPantallaRacha();
};

function cargarEjercicioAleatorio() {
    const contenedor = document.getElementById("descripcionEjercicio");
    if (!contenedor) return;
    contenedor.innerText = "Cargando desafío...";

    fetch('/Pagina_CafeinaCode/obtenerEjercicio')
        .then(function(response) {
            if (!response.ok) throw new Error("Error en la respuesta del servidor");
            return response.json();
        })
        .then(function(data) {
            ejercicioActual.id    = data.id;
            ejercicioActual.texto = data.ejercicio;
            contenedor.innerText  = data.ejercicio;
        })
        .catch(function(error) {
            console.error('Error:', error);
            contenedor.innerText = "Error al cargar el ejercicio. ¿Iniciaste el servidor?";
        });
}

function enviarRespuesta() {
    const codigo     = document.getElementById("codigoUsuario").value;
    const contenedor = document.getElementById("descripcionEjercicio");

    if (!codigo.trim()) {
        alert("Escribe tu código antes de enviar.");
        return;
    }

    if (!ejercicioActual.id) {
        alert("Espera a que cargue el ejercicio.");
        return;
    }

    contenedor.innerText = "Evaluando con IA... ☕";

    const params = new URLSearchParams();
    params.append("codigo",      codigo);
    params.append("ejercicio",   ejercicioActual.texto);
    params.append("idEjercicio", ejercicioActual.id);

    fetch('/Pagina_CafeinaCode/evaluarRespuesta', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: params.toString()
    })
    .then(function(response) {
        if (!response.ok) throw new Error("Error en la respuesta del servidor");
        return response.json();
    })
    .then(function(data) {
        contenedor.innerText = data.retroalimentacion;
        if (data.retroalimentacion.toUpperCase().includes("CORRECTO")) {
            aumentarRacha();
        }
    })
    .catch(function(error) {
        console.error('Error:', error);
        contenedor.innerText = "Error al evaluar la respuesta. ¿Iniciaste el servidor?";
    });
}

function completarReto() {
    alert("¡Felicidades! Reto completado.");
    aumentarRacha();
    cargarEjercicioAleatorio();
}

function aumentarRacha() {
    let racha = parseInt(localStorage.getItem("rachaDias") || 0);
    racha++;
    localStorage.setItem("rachaDias", racha);
    actualizarPantallaRacha();
}

function actualizarPantallaRacha() {
    const elementoRacha = document.getElementById("contadorRacha");
    if (elementoRacha) {
        elementoRacha.innerText = localStorage.getItem("rachaDias") || 0;
    }
}