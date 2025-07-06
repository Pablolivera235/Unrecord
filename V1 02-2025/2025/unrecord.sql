-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-05-2025 a las 04:59:23
-- Versión del servidor: 8.0.41-0ubuntu0.24.04.1
-- Versión de PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unrecord`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `id` int NOT NULL,
  `nombre_id` int NOT NULL,
  `temporada` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nombre` varchar(90) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `caratula` varchar(150) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`id`, `nombre_id`, `temporada`, `nombre`, `info`, `caratula`, `url`) VALUES
(1, 1, '01', '1.Perdido en la Oscuridad', 'Veinte años después de que un brote de hongos azote el planeta, a los sobrevivientes Joel y Tess les es asignada una misión que podría cambiarlo todo.', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s1/tlou0101.mp4'),
(2, 1, '01', '2.Infectados', 'Tras escapar de la zona de cuarentena, Joel y Tess discuten sobre el destino de Ellie mientras atraviesan las ruinas de Boston.', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s1/tlou0102.mp4'),
(3, 2, '01', '1.Piloto', 'En la víspera de un fatídico vuelo, un equipo campeón de fútbol femenil de preparatoria celebra traicionándose unas a otras. 25 años después', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0101.mkv'),
(4, 3, '01', NULL, NULL, NULL, '../movies/moanados.mp4'),
(16, 4, '01', NULL, NULL, NULL, '../movies/sonic3.MKV'),
(17, 5, '01', NULL, NULL, NULL, '../movies/mf.mkv'),
(18, 6, NULL, NULL, NULL, NULL, '../movies/thegorge.mp4'),
(19, 1, '01', '3.Mucho, Mucho Tiempo', 'Cuando un extraño se acerca al recinto de Bill, un aficionado en preparativos para escenarios apocalípticos, ambos forjan una conexión poco probable.', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s1/tlou0103.mp4'),
(20, 2, '01', '2. «Fa sostenido»', 'Misty encuentra un propósito en el bosque. En el presente, Shauna tiene un accidente con un apuesto desconocido, mientras Natalie y Misty reciben postales misteriosas.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0102.mkv'),
(21, 2, '01', '3. «La casa de las muñecas»', 'Conmocionado, el equipo hace un funeral por las víctimas del accidente. Años más tarde, la campaña política de Taissa sufre críticas, y Shauna ya no confía en Jeff.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0103.mkv'),
(22, 2, '01', '4.«Sigue pujando»', 'Las Yellowjackets sobrevivientes deben elegir una cazadora, pero ¿quién tiene el mejor tiro? En una recaudación, Taissa se enfrenta a una aliada poderosa pero fisgona.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0104.mkv'),
(23, 2, '01', '5. «Colmena de sangre»', 'El equipo hace una sesión espiritista para levantar los ánimos. En 2021, Shauna intenta ocultar un secreto apasionado, y Taissa descubre algo inquietante.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0105.mkv'),
(24, 2, '01', '6. «Santos»', 'En el bosque, el romance florece entre los sobrevivientes. La Misty de hoy idea un plan para impedir que una periodista husmee en la vida de las Yellowjackets.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0106.mkv'),
(25, 2, '01', '7. «Sin brújula»', 'Taissa lidera una expedición en busca de civilización, o al menos de comida. Las mujeres montan una vigilancia con la esperanza de atrapar a quien intenta chantajearlas.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0107.mkv'),
(26, 2, '01', '8. «El vuelo del abejorro»', 'Las chicas reciben una sorpresa sórdida, y Laura Lee da un salto de fe. Mientras Misty intenta evitar que Natalie recaiga, Shauna busca información sobre Adam.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0108.mkv'),
(27, 2, '01', '9. «Muerte próxima»', 'Celebran la Muerte Próxima. Lottie inicia la noche de fiesta salvaje de las chicas con un discurso, pero el evento estridente pronto se sale de control.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0109.mkv'),
(28, 2, '01', '10. «Sic Transit Gloria Mundi»', 'Jackie enfrenta a Shauna por una traición dolorosa. Después de afrontar una tarea horrible, las Yellowjackets adultas asisten a su reunión de 25 años de la secundaria.', '../../assets/portadas/yellowjackets_portada.jpg', '../movies/yellowjackets/s1/yj0110.mkv'),
(29, 7, '01', NULL, NULL, NULL, '../movies/inc.mkv'),
(30, 8, '01', NULL, NULL, NULL, '../movies/mufasa.mp4'),
(31, 9, '01', NULL, NULL, NULL, '../movies/cordillera.mp4'),
(32, 10, NULL, NULL, NULL, NULL, '../movies/gladiatordos.mkv'),
(33, 11, NULL, NULL, NULL, NULL, '../movies/nakedgun.mp4'),
(34, 12, '01', NULL, NULL, NULL, '../movies/nok.mp4'),
(35, 13, '01', NULL, NULL, NULL, '../movies/markedones.mkv'),
(36, 14, '01', NULL, NULL, NULL, '../movies/dim_desc.mp4'),
(37, 15, '01', NULL, NULL, NULL, '../movies/electric_state.mkv'),
(38, 19, '01', NULL, NULL, NULL, '../movies/relatos.mkv'),
(39, 16, '02', '1.Hola, señora Cobel', 'Mark vuelve al trabajo, pero las circunstancias han cambiado. Salen a la luz secretos del mundo exterior.', '../../assets/portadas/severance_portada.jpg', '../movies/severance/severance0201.mkv'),
(40, 16, '02', '2.Adiós, señora Selvig', 'El fueri de Mark se plantea el significado de un mensaje. Lumon se enfrenta a las consecuencias de la Contingencia de Horas Extra.', '../../assets/portadas/severance_portada.jpg', '../movies/severance/severance0202.mkv'),
(41, 16, '02', '3.¿Quién está vivo?', 'Mark y Helly regresan a un antiguo refugio. Irving y Dylan hacen averiguaciones por separado. El fueri de Mark prueba algo nuevo.', '../../assets/portadas/severance_portada.jpg', '../movies/severance/severance0203.mkv'),
(42, 16, '02', '4.El abismo de Aflicción', 'El equipo atraviesa un terreno desconocido. Mark y Helly exploran sus sentimientos. Irving desconfía cada vez más de un amigo.', '../../assets/portadas/severance_portada.jpg', '../movies/severance/severance0204.mkv'),
(43, 17, '01', '1.Tarjeta de Navidad', 'El grupo ayuda a una pareja desesperada a volver a estar juntos', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0101.mp4'),
(44, 17, '01', '2.Diagnóstico rectoscópico', 'Un dueño de un locutorio se endeuda con un mafioso que amenaza con matar a sus hijos si no le paga pronto.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0102.mp4'),
(45, 17, '01', '3.Seguro de desempleo', 'Un empleado de una lechería es despedido por ser ya mayor. Incapaz de encontrar otro trabajo por su edad, pide ayuda a los Simuladores para conservar su puesto', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0103.mp4'),
(46, 17, '01', '4.El testigo español', 'Una mujer es acosada por un amante extranjero que conoció en Miami, poniendo en riesgo su matrimonio. Los simuladores recrean conspiración policíaca para espantarlo del país.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0104.mp4'),
(47, 17, '01', '5.El joven simulador', 'El hijo de un arquitecto está a punto de repetir de año podría empeorar la situación. Los simuladores deberán ayudarlo a aprobar 7 exámenes para poder pasar de año.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0105.mp4'),
(48, 17, '01', '6.El pequeño problema', 'El Presidente tiene disfunción erectil y es incapaz de complacer a su mujer. Ella contrata a los simuladores para que lo ayuden a recuperar sus habilidades en la cama.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0106.mp4'),
(49, 17, '01', '7.Fuera de cálculo', 'Un operativo montado por los Simuladores en un banco es interrumpido por un robo. El grupo deberá ayudar a los ladrones luego de descubrir que el jefe comisario es corupto.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0107.mp4'),
(50, 17, '01', '8.El pacto Copérnico', 'Un abogado contrata la ayuda de los simuladores para que su mujer se enamore de alguien más, y Hacen creer a un hombre que es la clave en un plan de los Nazis.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0108.mp4'),
(51, 17, '01', '9.El último héroe', 'Un hombre estafa a una familia de clase baja. Ellos tratarán de recuperar lo perdido contratando a los Simuladores.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0109.mp4'),
(52, 17, '01', '10.Los impresentables', 'Una mujer pide ayuda a los Simuladores cuando debe presentar su familia \"impresentable\" a la familia de su novio.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0110.mp4'),
(53, 17, '01', '11.El colaborador foráneo', 'Crucitti is a corrupt sheriff on a non-specified city of Buenos Aires. The group of \"Los Simuladores\" will make him change.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0111.mp4'),
(54, 17, '01', '12.Marcela & Pau', 'El grupo ayuda a una mujer recientemente divorciada a recuperar su amor propio y ganas de vivir, organizándole una cena con el que ella piensa es el auténtico Paul McCartney.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0112.mp4'),
(55, 17, '01', '13.Un trabajo involuntario', 'Los Simuladores son extorsionados para hacer un trabajo a cambio de la vida de Santos.', '../../assets/portadas/simuladores_portada.jpeg', '../movies/simuladores/s1/simuladores0113.mp4'),
(56, 18, '02', '1.Vete al cielo, viejo', 'El viaje por carretera de los Matthew da un macabro giro cuando se desvían y llegan a un pueblo del que no pueden salir.', '../../assets/portadas/tulsa_portada.jpg\r\n', '../movies/tulsaking/s2/tulsa0201.mkv'),
(57, 18, '02', '', NULL, '../../assets/portadas/tulsa_portada.jpg', '../movies/tulsaking/s2/tulsa0202.mkv'),
(58, 18, '02', NULL, NULL, '../../assets/portadas/tulsa_portada.jpg', '../movies/tulsaking/s2/tulsa0203.mkv'),
(59, 18, '02', NULL, NULL, '../../assets/portadas/tulsa_portada.jpg', '../movies/tulsaking/s2/tulsa0204.mkv'),
(60, 18, '02', NULL, NULL, '../../assets/portadas/tulsa_portada.jpg', '../movies/tulsaking/s2/tulsa0205.mkv'),
(61, 18, '02', NULL, NULL, '../../assets/portadas/tulsa_portada.jpg', '../movies/tulsaking/s2/tulsa0206.mkv'),
(62, 18, '02', NULL, NULL, '../../assets/portadas/tulsa_portada.jpg', '../movies/tulsaking/s2/tulsa0207.mkv'),
(63, 18, '02', NULL, NULL, '../../assets/portadas/tulsa_portada.jpg', '../movies/tulsaking/s2/tulsa0208.mkv'),
(64, 18, '02', NULL, NULL, '../../assets/portadas/tulsa_portada.jpg', '../movies/tulsaking/s2/tulsa0209.mkv'),
(65, 18, '02', NULL, NULL, '../../assets/portadas/tulsa_portada.jpg', '../movies/tulsaking/s2/tulsa0210.mkv'),
(66, 21, '01', '1. El viaje del día a la noche', 'El viaje por carretera de los Matthew da un macabro giro cuando se desvían y llegan a un pueblo del que no pueden salir.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0101.mp4'),
(67, 21, '01', '2. Cómo son las cosas ahora', 'Tabitha y Julie se adaptan a la terrible realidad en Colony House. En el bosque, Jim, Boyd y Kristi tienen problemas para tratar a Ethan.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0102.mp4'),
(68, 21, '01', '3. El día de la elección', 'La familia Matthew debe escoger a qué asentamiento se unirán. Mientras tanto, Jade acepta su situación y Boyd debe tomar una decisión muy difícil', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0103.mp4'),
(69, 21, '01', '4. Una roca y una lejanía', 'Julie se refugia en sus nuevos amigos. Jim y Tabitha lidian con los problemas de su matrimonio. Ethan y Victor se adentran en el bosque.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0104.mp4'),
(70, 21, '01', '5. Siluetas', 'Jim, Tabitha e Ethan hacen preguntas sobre el lugar con la esperanza de regresar. Ellis y Fatima le muestran a Julie la parte divertida del pueblo.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0105.mp4'),
(71, 21, '01', '6. Libro 74', 'ade le pide ayuda a Jim con un experimento, mientras Tabitha descubre algo escalofriante que hace que busque respuestas en un lugar único.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0106.mp4'),
(72, 21, '01', '7. Todas las cosas buenas', 'Jim y Tabitha se consuelan el uno al otro. Colony House celebra el primer aniversario de la llegada de Fatima con una fiesta que sale muy mal.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0107.mp4'),
(73, 21, '01', '8. Ventanas,puertas abiertas', 'Kenny acepta su nuevo rol. Jim propone construir una torre de telecomunicaciones. Fatima le pide a Ellis que arregle las cosas con su padre.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0108.mp4'),
(74, 21, '01', '9. En los bosques', 'Boyd y Sara se adentran en el bosque y se encuentran más misterios terroríficos. Jim empieza a perder la confianza en la torre de telecomunicaciones.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0109.mp4'),
(75, 21, '01', '10.los sitios donde iremos', 'Boyd encuentra fuerza en algo inesperado. El agujero que Tabitha está cavando lleva a un lugar, y a una persona, que no esperaba. Todo cambiará.', '../../assets/portadas/from_portada.jpeg', '../movies/from/s1/from0110.mp4'),
(76, 22, '01', '1.Bienvenidos a margrave', 'Reacher es injustamente acusado de homicidio mientras visitaba el pequeño pueblo de Margrave, Gerogia.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0101.mp4'),
(77, 22, '01', '2.Primer baile', 'Cuando más víctimas son descubiertas, Reacher intenta obtener respuestas, pero le tienden una trampa. Roscoe recibe un mensaje amenazante.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0102.mp4'),
(78, 22, '01', '3.Cucharada', 'La investigación de Reacher y Finlay sobre la desaparición de Spivey los lleva a confrontar a Kilner. Roscoe recibe inquietantes noticias sobre Reacher.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0103.mp4'),
(79, 22, '01', '4.Un arbol', 'Mientras el peligro aumenta, Reacher y Roscoe se hacen más cercanos y hacen planes para encontrarse con su contacto de Seguridad Nacional.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0104.mp4'),
(80, 22, '01', '5.Sin disculpas', 'Mientras el misterio crece, Reacher hace equipo con una antigua colega y Finlay hace un descubrimiento estremecedor.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0105.mp4'),
(81, 22, '01', '6.Papel', 'Cuando el pueblo es agitado con otro asesinato, Reacher viaja a Nueva York y se entera de la verdad sobre el negocio ilegal en Margrave mientras que Roscoe enfrenta un ataque en el bosque.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0106.mp4'),
(82, 22, '01', '7.Reacher no habló', 'Reacher prepara una trampa y es él quien es atrapado.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0107.mp4'),
(83, 22, '01', '8.Pay', 'Reacher dirige una misión de rescate en la bodega y termina en un enfretnamiento.', '../../assets/portadas/reacher_portada.webp', '../movies/reacher/s1/reacher0108.mp4'),
(84, 23, '01', '1. «Episodio 1»', 'La policía derriba la puerta del hogar de los Miller. El adolescente Jamie es arrestado y llevado a la comisaría para un interrogatorio, pero insiste en que no ha hecho nada malo.', '../../assets/portadas/ad_portada.jpg', '../movies/adolecence/ad0101.mkv'),
(85, 23, '01', '2. «Episodio 2»', 'La policía busca respuestas —y el arma homicida— en la escuela de Jamie. No obtienen información de los amigos del chico, hasta que el hijo del detective Bascombe ofrece su ayuda.', '../../assets/portadas/ad_portada.jpg', '../movies/adolecence/ad0102.mkv'),
(86, 23, '01', '3. «Episodio 3»', 'Jamie se reúne con una psicóloga. Al principio, no quiere hablar, pero después se sincera sobre sus complejos sentimientos hacia Katie.', '../../assets/portadas/ad_portada.jpg', '../movies/adolecence/ad0103.mkv'),
(87, 23, '01', '4. «Episodio 4»', 'En el cumpleaños de Eddie, los Miller intentan festejar como si todo estuviera bien, pero una serie de sucesos imprevistos amenaza con desestabilizarlos.', '../../assets/portadas/ad_portada.jpg', '../movies/adolecence/ad0104.mkv'),
(88, 24, '01', NULL, NULL, NULL, '../movies/miky.mp4'),
(89, 25, '07', '1. «Una pareja cualquiera»', 'Cuando una maestra se debate entre la vida y la muerte, su esposo la inscribe en un procedimiento experimental para salvarla. Pero todo tiene un precio...', '../../assets/portadas/mirror_portada.jpg', '../movies/blackmirror/s7/mirror0701.mp4'),
(90, 25, '07', '2. «Bête Noire»', 'Una joven se altera cuando una vieja conocida se incorpora a la empresa donde trabaja, sobre todo porque percibe algo raro en ella que nadie más parece notar.', '../../assets/portadas/mirror_portada.jpg\r\n', '../movies/blackmirror/s7/mirror0702.mp4'),
(91, 25, '07', '3. «Hotel Reverie»', 'La adaptación de alta tecnología de una película clásica transporta a su famosa protagonista a otra dimensión, donde debe seguir el guion si quiere regresar a casa.', '../../assets/portadas/mirror_portada.jpg', '../movies/blackmirror/s7/mirror0703.mp4'),
(92, 25, '07', '4. «Juego»', 'En el Londres del futuro, un excéntrico sospechoso de un asesinato es vinculado con un peculiar videojuego de los 90, que alberga a una sociedad de seres vivientes digitales.', '../../assets/portadas/mirror_portada.jpg', '../movies/blackmirror/s7/mirror0704.mp4'),
(93, 25, '07', '5. «Apología»', 'Un hombre solitario descubre un sistema revolucionario que permite a los usuarios introducirse en fotos antiguas, pero despierta emociones intensas en el proceso.', '../../assets/portadas/mirror_portada.jpg', '../movies/blackmirror/s7/mirror0705.mp4'),
(94, 25, '07', '6. «USS Callister: Infinito»', 'Nanette Cole y la tripulación de la USS Callister se quedan varados en un universo virtual infinito en el que deben luchar contra 30 millones de jugadores para sobrevivir.', '../../assets/portadas/mirror_portada.jpg', '../movies/blackmirror/s7/mirror0706.mp4'),
(95, 26, '01', NULL, NULL, NULL, '../movies/df3.mp4'),
(96, 27, '01', NULL, NULL, NULL, '../movies/df4.mp4'),
(97, 28, '01', NULL, NULL, NULL, '../movies/df5.mp4'),
(98, 29, '01', NULL, NULL, NULL, '../movies/capambnw.mkv'),
(99, 30, '01', NULL, NULL, NULL, '../movies/novocaine.mkv'),
(100, 1, '02', '1. Días Futuros', 'Cinco años después de los eventos de la tempórada 1, Joel y Ellie se ven envueltos en un conflicto en un mundo aún mas peligroso', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s2/tlou0201.mp4'),
(101, 31, '01', NULL, NULL, NULL, '../movies/bcode.mkv'),
(102, 32, '01', NULL, NULL, NULL, '../movies/awman.mp4'),
(103, 33, '01', NULL, NULL, NULL, '../movies/idepol.mkv'),
(104, 1, '02', '2. Trough The Valley', 'Mientras Abby sopesa sus opciones, Jackson Hole se prepara para una tormenta en medio de crecientes avistamientos de Infectados', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s2/tlou0202.mkv'),
(105, 34, '01', NULL, NULL, NULL, '../movies/ash.mkv'),
(106, 1, '02', '3. El Camino', 'Tras recibir información de Dina, Ellie prepara una petición al consejo del pueblo. Cerca de Seattle, un grupo religioso huye de una guerra.', '../../assets/portadas/tlou_portada.jpeg', '../movies/tlou/s2/tlou0203.mp4'),
(107, 35, '01', NULL, NULL, NULL, '../movies/ngtree.mkv'),
(108, 36, '01', '1. «Noche de truco»', 'Una nevada insólita interrumpe la noche de truco de Juan y sus amigos. Entre la incertidumbre y las tensiones, improvisan un traje para que él enfrente la nieve y busque a su hija.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0101.mkv'),
(109, 36, '01', '2. «Salgan al sol»', 'Luego de atravesar una asolada ciudad de Buenos Aires para llegar al departamento de Elena y Clara, Juan descubre que el instinto humano puede ser tan letal como la nieve tóxica', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0102.mkv'),
(110, 36, '01', '3. «El magnetismo»', 'En busca de pistas en el colegio de Clara, Juan y Elena conocen a Pablo, un alumno angustiado. El Tano intenta comunicarse por radio, y las visiones de Juan se intensifican.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0103.mkv'),
(111, 36, '01', '4. «Credo»', 'El Tano y Juan se dirigen al centro, donde encuentran una barricada y a las fuerzas militares. Después de toparse con una amenaza repulsiva, reciben ayuda de un grupo muy peculiar.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0104.mkv'),
(112, 36, '01', '5. «Paisaje»', 'Con la isla como destino, el Tano tiene que tomar una decisión difícil para conseguir transporte. En el camino, descubren un campo de refugiados adentro de un shopping.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0105.mkv'),
(113, 36, '01', '6. «Jugo de tomate frío»', 'Después de una arriesgada misión en tren para volver a la ciudad, una misteriosa luz brillante atrae a Juan y lo conduce a un descubrimiento inimaginable.', '../../assets/portadas/eternauta_portada.png', '../movies/eternauta/s1/eternauta0106.mkv'),
(114, 37, '01', NULL, NULL, NULL, '../movies/conclave.mkv'),
(115, 38, '01', NULL, NULL, NULL, '../movies/mono.mkv');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `conectados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `conectados` (
`id` int
,`ultima_actividad` timestamp
,`usuario_id` int
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int NOT NULL,
  `id_usuario` int NOT NULL,
  `Img` varchar(50) NOT NULL,
  `Verificado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `id_usuario`, `Img`, `Verificado`) VALUES
(1, 10, 'archivo_67116ea46952c7.01429217.png', '1'),
(5, 18, 'archivo_67239f4686c557.94416403.jpg', '0'),
(6, 20, 'archivo_67bfe4abeedb77.66581877.png', '1'),
(7, 23, 'archivo_67bfe4bdd88f04.30362845.png', '1'),
(8, 22, 'archivo_67bfe6e721fbf7.72432001.png', '1'),
(11, 27, 'archivo_67bfee82242d95.22270497.jpg', '0'),
(12, 28, 'archivo_67ed63d2496533.86115389.png', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`id`, `nombre`, `descripcion`, `poster`) VALUES
(1, 'The Last Of Us', 'Drama - 2023\r\nSerie posapocalíptica inspirada en el aclamado videojuego que sigue la brutal y desgarradora travesía de un hombre cínico y una joven de 14 años.', '../../assets/posters/tlou_poster.webp'),
(2, 'YellowJackets', 'Thriller - 2021\r\nLas talentosas jugadoras de un equipo de futbol de secundaria, se convierten en las (des)afortunadas sobrevivientes de un accidente aereo en las entrañas de un bosque en Ontario.', '../../assets/posters/yellowjackets_poster.jpeg'),
(3, 'Moana 2', 'Animacion - 2024\r\nDespués de recibir una llamada inesperada de sus antepasados de referencia, Moana debe viajar a los mares lejanos de Oceanía y a aguas peligrosas y perdidas durante mucho tiempo, una aventura diferente a otras que haya enfrentado.', '../../assets/posters/moanados_poster.jpg'),
(4, 'Sonic 3', 'Aventuras - 2025\r\nSonic, Knuckles y Tails se reunirán para enfrentarse a un nuevo y poderoso adversario, Shadow, un misterioso villano con poderes nunca antes vistos.', '../../assets/posters/sonic3.jpg'),
(5, 'Martín Fierro', 'Western - 1968\r\nEl gaucho Martín Fierro es llevado por el gobierno a la fuerza para integrar las milicias y luchar contra los indios, cuando vuelve ha perdido a su familia y su rancho. La pena lo lleva a volverse \"gaucho matrero\"', '../../assets/posters/martinfierro_poster.jpeg'),
(6, 'El Abismo Secreto', 'Sci-Fi - 2025\r\nMandan a dos operativos de élite a vigilar lados opuestos de un misterioso abismo y allí intiman desde la distancia, pero deberán aunar fuerzas para sobrevivir al mal que esconde el abismo.', '../../assets/posters/thegorge.jpg'),
(7, 'Los Increibles', 'Animacion - 2001\r\nlos Parr son una familia de superheroe, que llevan un estilo de vida suburbano ante las restricciones gubernamentales impuestas tras considerarse que sus hazañas conllevan situaciones problemáticas para la sociedad.', '../../assets/posters/increibles_poster.jpg'),
(8, 'Mufasa: El Rey León', 'Animacion - 2025\r\nA través del relato del mandril Rafiki a la pequeña Kiara, hija de Simba y Nala, conocemos cómo Mufasa, un cachorro huérfano, es adoptado por la familia del príncipe Taka y cómo una serie de sucesos lo lleva a ser nombrado rey. ', '../../assets/posters/mufasa_poster.jpg'),
(9, 'La Cordillera', 'Suspenso - 2017\r\nEn una cumbre de presidentes latinoamericanos en Chile, donde se trazan las estrategias geopolíticas y las alianzas, Hernán Blanco, el presidente de Argentina, atraviesa un drama político y familiar. Está implicado en un caso de corrupción a través de su yerno. ', '../../assets/posters/cordillera_poster.jpg'),
(10, 'Gladiador 2', 'Accion - 2024\r\nAños después de presenciar la muerte del venerado héroe Maximus a manos de su tío, Lucius (Paul Mescal) se ve obligado a ingresar al Coliseo después de que su hogar fuera conquistado por los emperadores tiránicos que ahora dirigen Roma con mano de hierro.', '../../assets/posters/gladiador2_poster.jpg'),
(11, 'Naked Gun', 'Comedia - 1988\r\nEl teniente Frank Debin busca al jefe de una banda de narcotraficantes para vengarse por haber herido a su compañero en un tiroteo..', '../../assets/posters/naked_gun_poster.jpg'),
(12, 'Paranormal Activity 7', 'Terror - 2021\r\nUna documentalista sigue a Margot mientras se dirige a una apartada comunidad Amish con la esperanza de aprender sobre su familia. Tras una serie de extraños sucesos, pronto se da cuenta de que esta comunidad podría esconder algo siniestro', '../../assets/posters/nok_poster.jpg'),
(13, 'Paranormal Activity 3', 'Terror - 2011\r\nDespués de mudarse a una casa suburbana, una pareja se inquieta cada vez más por una presencia demoníaca nocturna.', '../../assets/posters/markedones_poster.webp'),
(14, 'Paranormal Activity 6', 'Terror - 2015\r\nLa Dimensión Fantasma es la sexta entrega de la saga de películas de terror Paranormal Activity. En ella, una familia se muda a una casa donde encuentran cintas de video que revelan la presencia de un antiguo mal.', '../../assets/posters/dimension_desc_poster.jpg'),
(15, 'The Electric State', 'Sci-Fi - 2025\r\nDe la mano de un robot, un contrabandista y su ocurrente compañero, una adolescente huérfana emprende un inolvidable viaje en busca de su hermano menor desaparecido.', '../../assets/posters/electric_state_poster.jpeg'),
(16, 'Severance', 'Suspenso - 2022\r\nEn esta serie ganadora al Emmy® del director Ben Stiller, Mark lidera a un equipo de oficinistas cuyas memorias han sido divididas quirúrgicamente entre su trabajo y vidas personales. Se embarcan en un viaje para descubrir la verdad sobre su trabajo… y ellos mismos.', '../../assets/posters/severance_poster.jpg'),
(17, 'Los Simuladores', 'Ingenio - 2002\r\nTeleserie argentina en torno a un grupo de cuatro socios que se dedican al negocio de la \"simulación\", resolviendo los problemas y necesidades de sus clientes mediante lo que ellos denominan \"operativos de simulación\", que suelen consistir en engañar a quienes generan los problemas de sus clientes', '../../assets/posters/simuladores_poster.jpg'),
(18, 'Tulsa King', 'Drama - 2022\r\nTras su liberación de prisión, el capo de la mafia Dwight \"El General\" Manfredi es exiliado a Tulsa, Oklahoma, donde construye un nuevo imperio criminal con un grupo de personajes inverosímiles.', '../../assets/posters/tulsa_poster.jpg'),
(19, 'Relatos salvajes', 'Drama - 2014\r\nUna bárbara propuesta compuesta de seis relatos cortos escritos y dirigidos por Damián Szifron, que mezclan el drama con la comedia negra', '../../assets/posters/relatos_poster.jpg'),
(20, 'Envidiosa', 'Drama - 2025\r\nTras una ruptura devastadora a sus casi cuarenta años, Vicky va en busca de un nuevo amor. Pero no sabe que ahora comienza un viaje profundo —y divertido— de autodescubrimiento', '../../assets/posters/envidiosa_poster.jpg'),
(21, 'From', 'Terror - 2022\r\nFrom es una serie de terror y ciencia ficción sobre un pueblo misterioso que atrapa a las personas que entran. Los residentes deben sobrevivir a las amenazas del bosque y a criaturas sobrenaturales que aparecen cada noche', '../../assets/posters/from_posters.jpg'),
(22, 'Reacher', 'Acción - 2022\r\nReacher viaja a Maine en búsqueda de un enemigo mortal y termina enredado con unos agentes de la DEA que actúan por cuenta propia, asesinos peligrosos y un misterioso negocio familiar.', '../../assets/posters/reacher_poster.jpg'),
(23, 'Adolesence', 'Drama - 2025\r\nCuando un chico de 13 años es acusado de asesinar a una compañera de clase, su familia, su terapeuta y el detective a cargo se preguntan qué pasó en realidad.', '../../assets/posters/ad_poster.jpg'),
(24, 'Mickey 17', 'Sci-Fi - 2025\r\nUn humano nombrado como un prescindible, es decir, un empleado desechable de una expedición para colonizar el mundo helado de Nilfheim', '../../assets/posters/miky_poster.webp'),
(25, 'Black Mirror', 'Sci-fi - 2011\r\nEsta surrealista serie de antología repleta de historias retorcidas muestra los peores rasgos de la humanidad, sus grandes innovaciones y mucho más.', '../../assets/posters/mirror_poster.jpg'),
(26, 'Destino Final 3', 'Terror - 2006\r\nUn grupo de estudiantes y amigos deben enfrentar las repercusiones tras haberse burlado de la muerte y sobrevivir a un terrible accidente en una montaña rusa.', '../../assets/posters/fd3_poster.jpg'),
(27, 'Destino Final 4', 'Terror - 2009\r\nUn grupo de amigos acude a un circuito de carreras. Durante la competencia, Nick tiene una premonición sobre un accidente y saca a sus amigos del recinto para escapar de la tragedia.', '../../assets/posters/fd4_poster.webp'),
(28, 'Destino Final 5', 'Terror - 2011\r\nLa premonición de un hombre salva a varias personas del fatal colapso de un puente y varias almas desafortunadas descubren que la muerte no puede ser engañada.', '../../assets/posters/fd5_poster.jpg'),
(29, 'Capitán América: Brave New World', 'Marvel - 2025\r\nTras reunirse con el presidente Thaddeus Ross, Sam se encuentra en medio de un incidente internacional y deberá descubrir los motivos detrás de una conspiración global.\r\n', '../../assets/posters/capambnw_poster.jpg'),
(30, 'Novocaine', 'Accioón - 2025\r\nLa chica de los sueños de un hombre es secuestrada, haciendo que su incapacidad para sentir dolor se convierta en una ventaja inesperada al luchar contra una banda de matones para rescatarla.', '../../assets/posters/novo_poster.jpg'),
(31, 'Black Code', 'Accion - 2025\r\nDurante su viaje de autodescubrimiento, el hombre se enfrenta también al deber de amar y defender a su patria, y se encuentra en tres importantes encrucijadas de su vida.', '../../assets/posters/bcode_poster.jpg'),
(32, 'A working Man', 'Accion - 2025\r\nLevon dejó atrás un pasado marcado por la violencia para ser un buen ejemplo para su hija. Sin embargo, cuando la hija de su jefe desaparece, este antiguo militar de élite no se detendrá ante nada.', '../../assets/posters/awman_poster.webp'),
(33, 'Y Donde Esta El policía 2', 'Comedia - 1991\r\nEl teniente de la policía, Frank Drebbin, se enfrente a los magnates corruptos de las industrias energéticas.', '../../assets/posters/idepol_poster.jpg'),
(34, 'Ash', 'Sci-Fi - 2025\r\nUna científica de la estación espacial Riya se despierta y descubre que sus colegas han sido asesinados brutalmente. Junto con Brion.', '../../assets/posters/ash_poster.jpg'),
(35, 'Donde Está El Policía 3', 'Comedia - 1994\r\nFrank Drebin vuelve de su retiro para intentar colaborar con la policía e infiltrarse en una pandilla de terroristas que intenta detonar una bomba.', '../../assets/posters/ngtree_poster.jpg'),
(36, 'El Eternauta', 'Sci-Fi - 2025\r\nDespués de una nevada mortal que acaba con gran parte de la población, Juan Salvo y un grupo de sobrevivientes en Buenos Aires deben resistir a una amenaza de otro planeta.', '../../assets/posters/eternauta_poster.jpg'),
(37, 'Cónclave', 'Drama - 2024\r\nTras la muerte del Papa, el cardenal Lawrence, partícipe en el cónclave en el que se elige al sucesor, descubre un secreto que pondrá en peligro los cimientos de la Iglesia católica.', '../../assets/posters/conclave_poster.jpg'),
(38, 'El Mono', 'Terror - 2025\r\nDos hermanos gemelos encuentran un misterioso mono de cuerda y una serie de muertes atroces separan a su familia. ', '../../assets/posters/mono_poster.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` int NOT NULL,
  `usuario_id` int DEFAULT NULL,
  `solicitud` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `usuario_id`, `solicitud`) VALUES
(1, 10, 'Los Simpsons'),
(4, 28, 'los simuladores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `Usuarios` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Usuarios`, `Pass`, `Correo`) VALUES
(10, 'Pablolivera235', 'Eljavi.o01', 'pablo.olivera235@gmail.com'),
(18, 'milo', 'milo', 'milo@milo'),
(19, 'Silvina', 'silvina', 'silvina.margaret78@gmail.com'),
(20, 'yoana', 'yoana', 'yoana@yoana'),
(21, 'Jose', 'jose', 'jose@jose'),
(22, 'Tamara', 'tamara', 'Zaira@Tamara'),
(23, 'Karen', 'karen', 'karen@karen'),
(24, 'Tony', 'tony', 'Anthony@Anthony'),
(27, 'prueba', 'prueba', 'prueba@prueba'),
(28, 'Nicolas', 'nicolas', 'nico@nico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_activos`
--

CREATE TABLE `usuarios_activos` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `ultima_actividad` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_activos`
--

INSERT INTO `usuarios_activos` (`id`, `usuario_id`, `ultima_actividad`) VALUES
(283, 20, '2025-03-02 02:55:56'),
(308, 22, '2025-03-04 18:29:30'),
(309, 22, '2025-03-04 18:36:14'),
(310, 22, '2025-03-04 19:10:47'),
(311, 22, '2025-03-04 19:39:53'),
(312, 22, '2025-03-04 20:04:45'),
(313, 22, '2025-03-04 20:06:30'),
(314, 22, '2025-03-04 20:06:52'),
(315, 22, '2025-03-04 20:30:58'),
(316, 22, '2025-03-04 20:38:26'),
(317, 22, '2025-03-04 21:15:38'),
(318, 22, '2025-03-04 21:29:06'),
(319, 22, '2025-03-04 21:58:30'),
(320, 22, '2025-03-04 22:23:32'),
(321, 22, '2025-03-04 22:30:33'),
(322, 22, '2025-03-05 00:57:23'),
(323, 22, '2025-03-05 01:22:51'),
(324, 22, '2025-03-05 01:28:32'),
(326, 22, '2025-03-05 01:53:55'),
(464, 19, '2025-03-06 03:13:16'),
(466, 19, '2025-03-06 03:14:03'),
(467, 19, '2025-03-06 03:15:12'),
(468, 19, '2025-03-06 03:15:52'),
(469, 19, '2025-03-06 03:16:07'),
(525, 18, '2025-03-06 15:22:25'),
(529, 18, '2025-03-06 17:05:17'),
(530, 18, '2025-03-06 17:57:51'),
(531, 18, '2025-03-06 19:46:18'),
(532, 18, '2025-03-06 19:47:19'),
(536, 18, '2025-03-06 20:34:54'),
(537, 18, '2025-03-06 20:35:30'),
(538, 19, '2025-03-06 21:54:32'),
(636, 19, '2025-03-07 20:53:44'),
(637, 19, '2025-03-07 20:53:48'),
(644, 19, '2025-03-07 20:58:06'),
(646, 19, '2025-03-07 20:59:05'),
(648, 19, '2025-03-07 21:00:06'),
(650, 19, '2025-03-07 21:01:05'),
(653, 19, '2025-03-07 21:02:06'),
(727, 23, '2025-03-08 15:18:01'),
(918, 19, '2025-03-12 02:09:30'),
(974, 27, '2025-03-12 03:38:13'),
(980, 18, '2025-03-12 17:04:56'),
(981, 18, '2025-03-12 17:14:01'),
(982, 18, '2025-03-12 17:15:06'),
(996, 18, '2025-03-13 16:34:39'),
(999, 18, '2025-03-14 15:13:09'),
(1000, 18, '2025-03-14 15:14:17'),
(1001, 18, '2025-03-14 16:00:38'),
(1749, 18, '2025-03-15 16:29:25'),
(1750, 18, '2025-03-16 15:57:31'),
(1751, 18, '2025-03-16 15:58:39'),
(1857, 18, '2025-03-18 16:10:36'),
(1858, 18, '2025-03-18 16:11:59'),
(2023, 27, '2025-04-02 16:07:19'),
(2028, 28, '2025-04-02 16:20:53'),
(2032, 28, '2025-04-02 16:44:15'),
(2038, 28, '2025-04-02 22:19:29'),
(2045, 28, '2025-04-02 23:27:00'),
(2046, 28, '2025-04-02 23:27:20'),
(2047, 28, '2025-04-02 23:27:58'),
(2048, 28, '2025-04-02 23:28:40'),
(2163, 18, '2025-04-03 18:42:42'),
(2164, 18, '2025-04-03 18:43:46'),
(2165, 18, '2025-04-03 18:44:46'),
(2194, 19, '2025-04-03 20:35:39'),
(2195, 19, '2025-04-03 20:36:03'),
(2196, 19, '2025-04-03 20:36:28'),
(2234, 19, '2025-04-03 21:50:01'),
(2235, 19, '2025-04-03 21:50:12'),
(2236, 19, '2025-04-03 21:50:48'),
(2237, 19, '2025-04-03 21:51:02'),
(2324, 18, '2025-04-05 17:14:10'),
(2325, 18, '2025-04-05 17:16:43'),
(2326, 18, '2025-04-05 17:22:37'),
(2327, 18, '2025-04-05 17:31:57'),
(2328, 18, '2025-04-05 17:33:41'),
(2329, 18, '2025-04-05 17:38:31'),
(2330, 18, '2025-04-05 17:40:42'),
(2331, 22, '2025-04-05 17:53:00'),
(2332, 22, '2025-04-05 17:54:01'),
(2333, 22, '2025-04-05 17:54:45'),
(2334, 22, '2025-04-05 17:55:27'),
(2335, 22, '2025-04-05 17:56:06'),
(2336, 22, '2025-04-05 17:56:13'),
(2337, 22, '2025-04-05 17:56:44'),
(2338, 22, '2025-04-05 17:57:01'),
(2340, 22, '2025-04-05 18:24:50'),
(2341, 22, '2025-04-05 18:25:10'),
(2342, 22, '2025-04-05 18:25:20'),
(2352, 18, '2025-04-05 21:46:39'),
(2353, 18, '2025-04-05 21:55:03'),
(2354, 18, '2025-04-05 23:06:06'),
(2355, 18, '2025-04-05 23:10:07'),
(2356, 18, '2025-04-05 23:10:42'),
(2357, 18, '2025-04-05 23:13:22'),
(2358, 18, '2025-04-05 23:14:10'),
(2359, 18, '2025-04-05 23:18:34'),
(2364, 19, '2025-04-06 04:20:54'),
(2365, 19, '2025-04-06 04:21:05'),
(2366, 19, '2025-04-06 04:21:21'),
(2374, 18, '2025-04-06 16:46:33'),
(2381, 18, '2025-04-08 16:16:33'),
(2382, 18, '2025-04-08 16:18:23'),
(2383, 22, '2025-04-13 19:15:25'),
(2395, 18, '2025-04-14 05:25:10'),
(2396, 18, '2025-04-14 05:26:58'),
(2446, 18, '2025-04-15 17:22:56'),
(2462, 18, '2025-04-22 23:46:43'),
(2463, 27, '2025-04-22 23:47:11'),
(2485, 27, '2025-04-25 22:45:35'),
(2486, 27, '2025-04-26 00:38:41'),
(2499, 22, '2025-04-28 02:09:55'),
(2500, 22, '2025-04-28 02:11:08'),
(2501, 22, '2025-04-28 02:11:50'),
(2502, 22, '2025-04-28 02:12:22'),
(2503, 22, '2025-04-28 02:12:23'),
(2531, 27, '2025-04-29 20:30:16'),
(2532, 27, '2025-04-29 20:30:26'),
(2533, 27, '2025-04-29 21:02:18'),
(2541, 10, '2025-04-30 05:36:44'),
(2542, 10, '2025-04-30 05:36:58'),
(2543, 10, '2025-04-30 05:37:08'),
(2544, 10, '2025-04-30 17:06:46'),
(2545, 10, '2025-04-30 17:11:19'),
(2546, 10, '2025-04-30 17:12:34'),
(2547, 10, '2025-04-30 17:18:18'),
(2548, 10, '2025-04-30 17:19:13'),
(2549, 10, '2025-04-30 17:23:13'),
(2550, 10, '2025-05-02 03:29:13'),
(2551, 10, '2025-05-02 05:27:17'),
(2552, 10, '2025-05-02 05:32:12'),
(2553, 10, '2025-05-02 05:35:56'),
(2554, 10, '2025-05-02 05:36:33'),
(2555, 10, '2025-05-02 05:36:45'),
(2556, 10, '2025-05-02 06:00:39'),
(2557, 10, '2025-05-02 17:58:24'),
(2558, 10, '2025-05-02 17:59:05'),
(2559, 10, '2025-05-02 18:04:54'),
(2560, 10, '2025-05-02 18:10:14'),
(2561, 10, '2025-05-02 18:21:08'),
(2562, 10, '2025-05-02 18:21:21'),
(2563, 10, '2025-05-02 18:22:16'),
(2564, 10, '2025-05-02 18:26:34'),
(2565, 10, '2025-05-02 18:30:31'),
(2566, 10, '2025-05-02 18:31:39'),
(2567, 10, '2025-05-02 18:35:37'),
(2568, 10, '2025-05-02 18:35:50'),
(2569, 27, '2025-05-02 18:50:24'),
(2570, 27, '2025-05-02 18:52:59'),
(2571, 27, '2025-05-02 19:43:14'),
(2572, 27, '2025-05-02 19:57:03'),
(2573, 27, '2025-05-02 19:58:34'),
(2574, 10, '2025-05-02 19:59:51'),
(2575, 10, '2025-05-03 05:17:41'),
(2576, 10, '2025-05-03 07:07:28'),
(2577, 10, '2025-05-03 21:09:13'),
(2578, 10, '2025-05-03 21:10:33'),
(2579, 10, '2025-05-03 21:11:49'),
(2580, 10, '2025-05-04 05:28:46'),
(2581, 10, '2025-05-04 06:18:03'),
(2582, 10, '2025-05-05 02:37:43');

-- --------------------------------------------------------

--
-- Estructura para la vista `conectados`
--
DROP TABLE IF EXISTS `conectados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`Pablolivera235`@`localhost` SQL SECURITY DEFINER VIEW `conectados`  AS SELECT `usuarios_activos`.`id` AS `id`, `usuarios_activos`.`usuario_id` AS `usuario_id`, `usuarios_activos`.`ultima_actividad` AS `ultima_actividad` FROM `usuarios_activos` ORDER BY `usuarios_activos`.`id` DESC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_series_nombre` (`nombre_id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuarios_usuarios` (`id_usuario`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_activos`
--
ALTER TABLE `usuarios_activos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuarios_activos`
--
ALTER TABLE `usuarios_activos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2583;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `fk_series_nombre` FOREIGN KEY (`nombre_id`) REFERENCES `series` (`id`);

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `solicitudes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
