window.onload = function() {
    localStorage.setItem("rachaDias", 0);
    if (document.getElementById("contadorRacha")) {
        document.getElementById("contadorRacha").innerText = "0";
    }
    fetch('MascotaServlet')
        .then(r => r.json())
        .then(data => {
            if (data.nombre) {
                var el = document.getElementById("nombreMascota");
                if (el) el.innerText = data.nombre;
                localStorage.setItem("nombreMascota", data.nombre);
            }
            if (data.frase) {
                var fEl = document.getElementById("fraseMotivacional");
                if (fEl) fEl.innerText = '"' + data.frase + '"';
            }
            if (data.racha !== undefined) {
                var rEl = document.getElementById("contadorRacha");
                if (rEl) rEl.innerText = data.racha;
            }
        })
        .catch(function() {
            cargarNombre();
        });
};

function cargarNombre() {
    var nombre = localStorage.getItem("nombreMascota");
    var elementoNombre = document.getElementById("nombreMascota");
    if (nombre && elementoNombre) {
        elementoNombre.innerText = nombre;
    }
}

function mostrarAlertaNombre() {
    var alerta = document.getElementById("alertaNombre");
    if (!alerta) return;
    alerta.classList.remove("visible");
    void alerta.offsetWidth;
    alerta.classList.add("visible");
    setTimeout(function() {
        alerta.classList.remove("visible");
    }, 6000);
}

function guardarNombre() {
    var nombreInput = document.getElementById("nombre");
    var nombreMascotaDisplay = document.getElementById("nombreMascota");
    if (nombreInput && nombreInput.value.trim() !== "") {
        var nombre = nombreInput.value.trim();
        localStorage.setItem("nombreMascota", nombre);
        if (nombreMascotaDisplay) nombreMascotaDisplay.innerText = nombre;
        fetch('MascotaServlet', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: 'nombre=' + encodeURIComponent(nombre)
        })
        .then(response => response.text())
        .then(data => {
            console.log("Respuesta servidor:", data);
            mostrarAlertaNombre();
        })
        .catch(error => {
            console.error('Error:', error);
            mostrarAlertaNombre();
        });
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