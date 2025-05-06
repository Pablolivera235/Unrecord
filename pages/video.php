<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../scripts/main.js"></script>
    <title>Unrecord | Player</title>
</head>
<body>
<?php
session_start();
?>

<div id="contenedor">
<video id="mi-video" autoplay width='fit-content' style='display: flex; width: 100vw;'>
    <source id='videom' alt='Imagen del post' type='video/mp4'>
            <audio id="aud" autoplay controls> </audio>     
</video>

<div id="container_buttons">
<img id="back" src="../assets/volver.png">

<span id="tiempoActual">00:00</span>

<div id="barra-progreso" class="barra-progreso">
<div id="progreso" class="progreso"></div>
</div>

<img id="fullscreen" src="../assets/fullsc.png" onclick="activarFullscreen()">
<!-- Botón para pausar el video -->
<img id="botonPausa" src="../assets/pause.png" onclick="togglePlayPause()">
<img id="retroceder" src="../assets/rewind.png" onclick="retroceder30s()">
<img id="adelantar" src="../assets/forward.png" onclick="adelantar30s()">
<button id="siguiente">Siguiente</button>
</div>


    <script>
        // Obtener elementos del video y la barra de progreso
const video = document.getElementById('mi-video');
const progreso = document.getElementById('progreso');
const botonPausa = document.getElementById('botonPausa');


let intervaloDeActualizacion;

// Función para alternar entre pausar y reproducir el video
function togglePlayPause() {
    if (video.paused) {
        video.play(); // Reproducir video
        botonPausa.src = "../assets/pause.png"; // Cambiar texto del botón
        iniciarActualizacionBarra();
    } else {
        video.pause(); // Pausar video
        botonPausa.src = "../assets/play.png"; // Cambiar texto del botón
        clearInterval(intervaloDeActualizacion);
    }
}

// Función para actualizar la barra de progreso en tiempo real
function actualizarBarraProgreso() {
    const porcentaje = (video.currentTime / video.duration) * 100;
    progreso.style.width = porcentaje + '%';
}

// Iniciar la actualización de la barra cuando el video se reproduce
function iniciarActualizacionBarra() {
    clearInterval(intervaloDeActualizacion);
    intervaloDeActualizacion = setInterval(actualizarBarraProgreso, 100);
}

const barraProgreso = document.getElementById('barra-progreso');

barraProgreso.addEventListener('click', (event) => {
    const rect = barraProgreso.getBoundingClientRect(); // Tamaño y posición de la barra
    const offsetX = event.clientX - rect.left; // Posición del clic dentro de la barra
    const porcentaje = offsetX / rect.width; // Porcentaje en el que se hizo clic
    video.currentTime = porcentaje * video.duration; // Mueve el video a ese punto
});

// Escuchar eventos del video para actualizar la barra de progreso
video.addEventListener('timeupdate', actualizarBarraProgreso);


        let imagen = document.getElementById("container_buttons");

        function ocultarImagen() {
            imagen.classList.add("oculto");
        }

        function mostrarImagen() {
            imagen.classList.remove("oculto");
        }

        // Ocultar cada 10 segundos
        setInterval(ocultarImagen, 5000);

        // Mostrar al hacer clic en el div
        video.addEventListener("mousemove", mostrarImagen);



// Escuchar eventos del video para sincronizar la barra de progreso
video.addEventListener('play', iniciarActualizacionBarra);
video.addEventListener('pause', () => clearInterval(intervaloDeActualizacion));

// Función para alternar entre entrar y salir de pantalla completa
function activarFullscreen() {
    if (!document.fullscreenElement) {
        // Si NO está en fullscreen, lo activamos
        if (document.documentElement.requestFullscreen) {
            document.documentElement.requestFullscreen();
        } else if (document.documentElement.mozRequestFullScreen) { // Firefox
            document.documentElement.mozRequestFullScreen();
        } else if (document.documentElement.webkitRequestFullscreen) { // Chrome, Safari y Opera
            document.documentElement.webkitRequestFullscreen();
        } else if (document.documentElement.msRequestFullscreen) { // IE/Edge
            document.documentElement.msRequestFullscreen();
        }
    } else {
        // Si YA está en fullscreen, salimos de él
        if (document.exitFullscreen) {
            document.exitFullscreen();
        } else if (document.mozCancelFullScreen) { // Firefox
            document.mozCancelFullScreen();
        } else if (document.webkitExitFullscreen) { // Chrome, Safari y Opera
            document.webkitExitFullscreen();
        } else if (document.msExitFullscreen) { // IE/Edge
            document.msExitFullscreen();
        }
    }
}

const source = document.getElementById('videom');


 const botonSiguiente = document.getElementById("siguiente");

document.addEventListener("DOMContentLoaded", function () {
    const video = document.getElementById("mi-video");
    const source = document.getElementById("videom");
    const botonSiguiente = document.getElementById("siguiente");

    // Obtener la URL desde localStorage
    let peli = localStorage.getItem("movie");

    if (peli) {
        source.setAttribute("src", peli);
        video.load(); // Cargar el video al iniciar
    }

    function cambiarNumeroEnURL(incremento) {
        let url = localStorage.getItem("movie");

        // Extraer el número de 4 dígitos de la URL
        let match = url.match(/(\d{4})(?=\.(mp4|mkv)$)/);

        if (match) {
            let numeroActual = parseInt(match[1]); // Convertir a número
            let nuevoNumero = (numeroActual + incremento).toString().padStart(4, "0"); // Asegurar 4 dígitos

            // Reemplazar el número en la URL
            let nuevaURL = url.replace(/\d{4}(?=\.(mp4|mkv)$)/, nuevoNumero);

            // Guardar en localStorage y actualizar el video
            localStorage.setItem("movie", nuevaURL);
            source.setAttribute("src", nuevaURL);
            video.load();
            video.play();
        }
    }

    // Evento para cambiar al siguiente número
    botonSiguiente.addEventListener("click", () => cambiarNumeroEnURL(1));
});

// Obtener la película desde el localStorage
const peli = localStorage.getItem('movie');

if (peli) {
    console.log(`Película seleccionada: ${peli}`);
    source.setAttribute('src', peli); // Establece la fuente del video correctamente
    video.load(); // Recarga el video con la nueva fuente
}

const tipo = localStorage.getItem('tipo');
console.log(`Tipo de video: ${tipo}`);
if (tipo == "pelicula") {
    var sig = document.getElementById("siguiente");
    sig.classList.add("oculto");
}
if (tipo == "serie") {
    var sig = document.getElementById("siguiente");
    sig.classList.remove("oculto");
}

function actualizarTiempo() {
    const tiempoActual = document.getElementById("tiempoActual");
    const minutos = Math.floor(video.currentTime / 60); // Minutos
    const segundos = Math.floor(video.currentTime % 60); // Segundos
    const formatoTiempo = `${minutos.toString().padStart(2, '0')}:${segundos.toString().padStart(2, '0')}`;
    tiempoActual.textContent = formatoTiempo;
}


var back = document.getElementById("back");

back.addEventListener("click", function() {
            window.history.back();
        });


// Escuchar el evento de actualización de tiempo del video
video.addEventListener("timeupdate", actualizarTiempo);


        function retroceder30s() {
    if (video.currentTime - 30 > 0) {
        video.currentTime -= 30; // Resta 30 segundos
    } else {
        video.currentTime = 0; // Si es menor a 0, lo pone al inicio
    }
}

function adelantar30s() {
    if (video.currentTime + 30 < video.duration) {
        video.currentTime += 30; // Suma 30 segundos
    } else {
        video.currentTime = video.duration; // Si supera la duración, lo pone al final
    }
}

        
        if (peli === '../movies/mf.mkv') {
            var mensaje = "<source id='audio' src='../movies/mf.mp4' type='audio/mp3'>";
            document.getElementById('aud').innerHTML = mensaje;

            const audio = document.getElementById('aud');

            video.ontimeupdate = function (){
            if(math,abs(audio.currentTime - video.currentTime) > 0.000001){
                audio.currentTime = video.CurrentTime;
            }
            };

            video.onseeked = function(){
                audio.currentTime = video.currentTime;
            };

            video.onpause = function(){
                audio.pause();
            };

            video.onplay = function(){
                audio.play();
            };
        }



        async function lockOrientation() {
  if (screen.orientation) {
    try {
      await screen.orientation.lock("landscape");
    } catch (error) {
      console.error("No se pudo bloquear la orientación:", error);
    }
  }
}

// Intentar bloquear la orientación cuando la página cargue
document.addEventListener("DOMContentLoaded", () => {
  lockOrientation();
});


    </script>

    <style>
        #aud{
            opacity: 0;
        }

        .oculto {
            opacity: 0;
        }
        *{
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        body{
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: black;
            width: 100vw;
            height: 100vh;
        }
        #container_buttons{
            height: 14vh;
        }
        #back{
            display: block;
            position: absolute;
            top: .5rem;
            left: .5rem;
            width: 4rem;
            z-index: 2;
        }
        #botonPausa{
            position: absolute;
            width: 4rem;
            left: 50%;
            transform: translateX(-50%);
        }
        #fullscreen{
            position: absolute;
            bottom: 1.9rem;
            right: 1.7rem;
            width: 3rem;
        }
        #retroceder, #adelantar {
            position: absolute;
            width: 4rem;

        }

        #retroceder {
            left: 42%;
        }

        #adelantar {
            right: 42%;
        }

        #tiempoActual{
            position: absolute;
            color: white;
            left: 2rem;
            bottom: 2.7rem;
            font-weight: bolder;
        }

        #contenedor{
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }
        #mi-video{
            width: 100%;
            height: 100%;
            object-fill: cover;

        }
        .barra-progreso {
            position: absolute;
            bottom: 3rem;
            left: 50%;
            transform: translateX(-50%);
            width: 90%;
            height: 8px;
            background: rgba(255, 255, 255, 0.3);
            border-radius: 5px;
        }

        .progreso {
            height: 100%;
            width: 0%;  /* Se actualizará con el tiempo */
            background: #ff5733;
            border-radius: 5px;
        }

        #siguiente{
            position: absolute;
            bottom: 4.5rem;
            right: 9rem;
            padding: .3rem;
            width: 8rem;
        }

        @media(max-width: 1179px){
            
        #retroceder {
            left: 40%;
        }

        #adelantar {
            right: 40%;
        }
        .barra-progreso {
            width: 83%;
        }

        #fullscreen{
            right: 1.7rem;
        }

        }

        @media(max-width: 978px){
            
        #retroceder {
            left: 38%;
        }

        #adelantar {
            right: 38%;
        }
        .barra-progreso {
            width: 79%;
        }

        #fullscreen{
            right: 1.7rem;
        }

        }

        @media(max-width: 780px){
            
        #retroceder {
            left: 35%;
        }

        #adelantar {
            right: 35%;
        }
        .barra-progreso {
            width: 71%;
        }

        #fullscreen{
            right: 1.7rem;
        }

        }

        @media(max-width: 640px){
        #retroceder {
            left: 28%;
        }

        #adelantar {
            right: 28%;
        }
        .barra-progreso {
            width: 56%;
        }

        #fullscreen{
            right: 1.7rem;
        }

        #siguiente{
            position: absolute;
            bottom: 4.5rem;
            right: 7rem;
            padding: .1rem;
            width: 5rem;
        }
        }

        @media(max-width: 508px){
        #retroceder {
            left: 27%;
        }

        #adelantar {
            right: 27%;
        }
        .barra-progreso {
            width: 56%;
        }

        #fullscreen{
            right: 1.7rem;
        }
        }


        @media(max-width: 490px){
        #retroceder {
            left: 19%;
        }

        #adelantar {
            right: 19%;
        }
        .barra-progreso {
            width: 50%;
        }

        #fullscreen{
            right: 1.7rem;
        }
        }
    </style>
</body>
</html>
