/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


/* * ChallengesJS.js - Lógica para carga de ejercicios aleatorios y racha
 */

window.onload = function() {
    // 1. Cargamos el ejercicio desde el Servlet inmediatamente
    cargarEjercicioAleatorio();

    // 2. Cargamos el nombre de la mascota (opcional, por si quieres mostrarlo)
    var nombre = localStorage.getItem("nombreMascota");
    if (nombre && document.getElementById("nombreMascotaDisplay")) {
        document.getElementById("nombreMascotaDisplay").innerText = nombre;
    }

    // 3. Mostrar la racha actual al cargar
    actualizarPantallaRacha();
};

/**
 * Conecta con el Servlet de Java para traer un ejercicio al azar
 */
function cargarEjercicioAleatorio() {
    const contenedor = document.getElementById("descripcionEjercicio");
    
    // Si el contenedor no existe en el HTML, no hacemos nada
    if (!contenedor) return;

    contenedor.innerText = "Cargando desafío...";

    fetch('./obtenerEjercicio') // Este nombre debe coincidir con el @WebServlet del Java
        .then(response => {
            if (!response.ok) throw new Error("Error en la respuesta del servidor");
            return response.json();
        })
        .then(data => {
            contenedor.innerText = data.ejercicio;
        })
        .catch(error => {
            console.error('Error:', error);
            contenedor.innerText = "Error al cargar el ejercicio. ¿Iniciaste el servidor?";
        });
}

/**
 * Función para cuando el usuario termine el reto correctamente
 */
function completarReto() {
    alert("¡Felicidades! Reto completado.");
    aumentarRacha();
    // Opcional: cargar uno nuevo automáticamente
    cargarEjercicioAleatorio();
}

/**
 * Gestión de la racha (Lógica unificada)
 */
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