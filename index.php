<!DOCTYPE html>
<html lang="en">
<?php 
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Allow: GET, POST, OPTIONS, PUT, DELETE");
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./assets/icono.png" type="image/x-icon">
    <link rel="manifest" href="./manifest.json">
    <title>UNRECORD | Inicio</title>
    <script src="./scripts/main.js"></script>
</head>
<body>

    <div id="container">
        <div>
        <img src="./assets/isotipo.png" alt="">
        <form action="" method="POST">
            <input type="text" placeholder="Usuario" name="user">
            <input type="password" placeholder="Contraseña" name="pass">
            <input type="submit" value="Iniciar Sesión" id="send">
            <a style="font-size: .9rem; margin-top: .2rem;" href="./registro.php">Registrarse</a>
        </form>
        </div>
    </div>

    <style>
        *{
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        #container{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }

        #container>div{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            border-radius: 1rem;
            width: 15rem;
            height: 20rem;
        }


        #container>div>img{
            width: 10rem;
            margin-top: -2rem;
            margin-left: .5rem;
            padding: 1.5rem;
        }
        input{
            text-align: center;
            border: solid;
            border-radius: .5rem;
            height: 2rem;
        }
        form{
            display: flex;
            flex-direction: column;
            align-items: center;
            gap:.3rem;
            width: min-content;
        }

        #send{
            width: 8rem;
            margin-top: .5rem;
        }
    </style>

    <?php 
    session_start();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        // Obtener valores del formulario
        $user = $_POST["user"];
        $pass = $_POST["pass"];
    
        // Conectar a la base de datos
        $con = @mysqli_connect("localhost", "Pablolivera235", "Eljavi.o01", "unrecord");
    
        // Verificar si la conexión fue exitosa
        if (!$con) {
            die("Error de conexión: " . mysqli_connect_error());
        }
    
        // Preparar la consulta para obtener el usuario y la contraseña
        $stmt = $con->prepare("SELECT Usuarios, Pass FROM usuarios WHERE Usuarios = ?");
        $stmt->bind_param("s", $user);
        $stmt->execute();
        $result = $stmt->get_result();
    
        // Verificar si se encontró el usuario
        if ($result->num_rows > 0) {
            // Obtener el registro del usuario
            $usuarioelegido = $result->fetch_array(MYSQLI_ASSOC);
    
            // Comparar el nombre de usuario con el ingresado
            if ($usuarioelegido['Usuarios'] === $user) {
                // Si el usuario coincide, comparar las contraseñas
                if ($usuarioelegido['Pass'] === $pass) {
                    header("Location: ./pages/home.php");
                } else {
                    echo "Contraseña incorrecta.";
                }
            } else {
                echo "El usuario no coincide.";
            }
        } else {
            echo "No se encontró el usuario.";
        }

        
        $_SESSION['usuario'] = $user;
        
        // Cerrar la conexión
        $stmt->close();
        mysqli_close($con);
    }
    
    ?>

<script>

var verificacionsn = <?php echo json_encode(htmlspecialchars($user, ENT_QUOTES, 'UTF-8')); ?>;
console.log("User:", verificacionsn);

</script>


    <script>
    if ('serviceWorker' in navigator) {
        window.addEventListener('load', function() {
            navigator.serviceWorker.register('sw.js').then(function(registration) {
                console.log('Service Worker registrado con éxito:', registration);
            }).catch(function(error) {
                console.log('Error al registrar el Service Worker:', error);
            });
        });
    }
    </script>
    
    
</body>
</html>
