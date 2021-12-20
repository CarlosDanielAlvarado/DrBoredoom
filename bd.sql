-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-12-2021 a las 00:03:04
-- Versión del servidor: 10.5.12-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id18143489_marker`
--
CREATE DATABASE IF NOT EXISTS `id18143489_marker` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id18143489_marker`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `id_actividad` int(11) NOT NULL,
  `dia` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `hora_apertura` time NOT NULL,
  `hora_cierre` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcador`
--

CREATE TABLE `marcador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `maps` text COLLATE utf8_unicode_ci NOT NULL,
  `reservacion` text COLLATE utf8_unicode_ci NOT NULL,
  `horario` text COLLATE utf8_unicode_ci NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `id_tipo_actividad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marcador`
--

INSERT INTO `marcador` (`id`, `nombre`, `direccion`, `telefono`, `maps`, `reservacion`, `horario`, `lat`, `lng`, `id_tipo_actividad`) VALUES
(2, 'Paseo de la Reforma', 'Av. Paseo de la Reforma, Juárez, Cuauhtémoc, 06500 Ciudad de México, CDMX', 'N/A', 'https://goo.gl/maps/cUgcW7KZpyxmw8vL6', 'https://alcaldiacuauhtemoc.mx/descubre/angel-de-la-independencia/ ', 'Abierto las 24 horas', 19.421104, -99.228378, 1),
(3, 'Recorrido Gastronómico en Polaco', 'Polanco I Secc, Ciudad de México, CDMX', 'N/A', 'https://www.google.com/maps/place/52%C2%B014\'50.1%22N+21%C2%B000\'48.2%22E/@52.2472382,21.0112028,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0xff8c304def282c96!8m2!3d52.2472382!4d21.0133915', 'https://www.getyourguide.es/varsovia-l41/varsovia-comida-polaca-t207828/?partner_id=UYXFPVV&utm_medium=online_publisher&placement=content-end&cmp=tour_gastronomico', 'a partir de 15:00 hrs', 19.431175, -99.213463, 2),
(4, 'Mirador Torre Latinoamericana', 'Centro Histórico de la CDMX, Centro, 06000, Ciudad de México, CDMX', '5555187423', 'https://www.google.com/maps/place/Torre+Latinoamericana,+Centro+Hist%C3%B3rico+de+la+Cdad.+de+M%C3%A9xico,+Centro,+06000+Ciudad+de+M%C3%A9xico,+CDMX/data=!4m2!3m1!1s0x85d1f92b5b005b95:0x4da8ca5798c532b7?sa=X&ved=2ahUKEwivw5Cu0fD0AhXtlWoFHQOHDkIQ8gF6BAgXEAE', 'https://www.miradorlatino.com/boletos', 'Lunes a jueves 10:00 a 21:00 hrs. y viernes a domingo de 9:00 a 22:00 hrs', 19.433983, -99.140678, 1),
(5, 'Parque México Condesa', 'Av México s/n, Hipódromo, Cuauhtémoc, 06100 Ciudad de México, CDMX', 'N/A', 'https://www.google.com.mx/maps/place/Parque+M%C3%A9xico/@19.381861,-99.3226514,11z/data=!4m9!1m2!2m1!1sparque+mexico!3m5!1s0x85d1ff6eac23fc15:0xac32932330bb3713!8m2!3d19.4115814!4d-99.1695677!15sCg1wYXJxdWUgbWV4aWNvWg8iDXBhcnF1ZSBtZXhpY2-SAQRwYXJrmgEjQ2haRFNVaE5NRzluUzBWSlEwRm5TVU41ZW5WaVoyUlJFQUU', 'acceso libre', 'Abierto las 24 horas', 19.411581, 99.171753, 1),
(6, 'Acuario Inbursa', 'Blvd. Miguel de Cervantes Saavedra 386, Amp Granada, Miguel Hidalgo, 11500 Ciudad de México, CDMX', '5553954586', 'https://www.google.com.mx/maps/place/Acuario+Inbursa/@19.4399011,-99.2073026,17z/data=!3m1!4b1!4m5!3m4!1s0x85d2021a6a91f933:0x3c77eecdfc11df9a!8m2!3d19.4400807!4d-99.2049285', 'https://www.acuarioinbursa.com.mx/comprar/', 'de 10:00 a 18:00 horas', 19.440226, -99.204865, 1),
(7, 'Biblioteca Vasconcelos', 'Eje 1 Nte. S/N, Buenavista, Cuauhtémoc, 06350 Ciudad de México, CDMX', '5591572800', 'https://www.google.com.mx/maps/place/Biblioteca+Vasconcelos/@19.4463943,-99.1530828,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1f8d97f5adfe9:0xab381ade506b433d!8m2!3d19.4462211!4d-99.1509032', 'acceso libre', 'cerrado temportalmente', 19.446375, -99.150818, 1),
(8, 'Ciudad Universitaria', 'Universidad no. 3000, Universidad Nacional Autónoma de México, C.U., CDMX, 04510', '', 'https://www.google.com.mx/maps/place/C.U.,+Ciudad+de+M%C3%A9xico,+CDMX/@19.3216466,-99.202668,14z/data=!3m1!4b1!4m5!3m4!1s0x85ce000920979a1b:0x7c9f3c0207ba804d!8m2!3d19.3188895!4d-99.1843676', 'acceso libre', 'Visitas guiadas viernes 1pm ', 19.332176, -99.192024, 1),
(9, 'Monumento y Museo de la Revolución', 'Pl. de la República S/N, Tabacalera, Cuauhtémoc, 06030 Ciudad de México, CDMX', '5555922038', 'https://www.google.com.mx/maps/place/Monumento+a+la+Revoluci%C3%B3n/@19.4362086,-99.1568185,17z/data=!3m2!4b1!5s0x3a28dd36ca076017:0x8a3cf688bb8c6c4b!4m5!3m4!1s0x85d1f8d24522071f:0x20fdc6dd3dcc0c20!8m2!3d19.4362086!4d-99.1546298', 'https://boletos.mrm.mx/', 'Lunes a jueves 12 a 20 hrs. (límite de acceso 19:30)   Viernes y sábados 12 a 21 hrs. (límite de acceso 20:30)  Domingo: 11 a 20 hrs. (límite de acceso 19:30)', 19.436462, -99.154617, 1),
(10, 'Antara Fashion Hall', 'Av. Ejército Nacional Mexicano 843, Granada, Miguel Hidalgo, 11520 Ciudad de México, CDMX', '5545938870', 'https://www.google.com.mx/maps/place/Antara+Fashion+Hall/@19.4389224,-99.2044519,17z/data=!3m1!4b1!4m5!3m4!1s0x85d2021ad7d389b3:0xb83d3f5dc6bb9046!8m2!3d19.4389224!4d-99.2022632', 'acceso libre', 'de 11:00 a 23:00 horas', 19.438993, -99.202080, 1),
(11, 'Oasis Coyoacán', 'Av Miguel Ángel de Quevedo 227, Oxtopulco, Coyoacán, 04360 Ciudad de México, CDMX', 'N/A', 'https://www.google.com.mx/maps/place/Oasis+Coyoac%C3%A1n/@19.3455428,-99.1819004,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1fffb1ff033dd:0x25b2b4dd8162233f!8m2!3d19.3455428!4d-99.1797117', 'acceso libre', 'de 11:00 a 21:00 horas', 19.345724, -99.179626, 1),
(12, 'Biblioteca Central de la UNAM', ' Cto. Interior S/N, C.U., Coyoacán, 04510 Ciudad de México, CDMX', '5556221625', 'https://www.google.com.mx/maps/place/Biblioteca+Central+UNAM/@19.3333914,-99.1895308,17z/data=!3m1!4b1!4m5!3m4!1s0x85ce00005feef997:0xb7b5a1cccc88c89!8m2!3d19.3333914!4d-99.1873421', 'acceso libre', 'Lunes a domingo y días festivos, de 8:30 a 21:30 horas', 19.333553, -99.187309, 1),
(13, 'Parque Bicentenario', 'Av. 5 de Mayo #290, San Lorenzo Tlaltenango, Miguel Hidalgo, 11210 Ciudad de México, CDMX', '5591542244', 'https://www.google.com.mx/maps/place/Parque+Bicentenario/@19.3859728,-99.1987775,11.74z/data=!4m9!1m2!2m1!1sParque+Bicentenario!3m5!1s0x85d202791baf9b01:0x9e821838a7209c66!8m2!3d19.4689029!4d-99.1968238!15sChNQYXJxdWUgQmljZW50ZW5hcmlvWhUiE3BhcnF1ZSBiaWNlbnRlbmFyaW-SAQ9lY29sb2dpY2FsX3BhcmuaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVUnBkM1l0U0hSM1JSQUI', 'https://parquebicentenario.com.mx/#comprar-boletos', 'Martes a Domingo 07:00 a 18:00hrs.', 19.469597, -99.197174, 1),
(14, 'Parque Lincoln', 'Av. Emilio Castelar 163, Polanco, Polanco III Secc, Miguel Hidalgo, 11560 Ciudad de México, CDMX', 'N/A', 'https://www.google.com.mx/maps/place/Parque+Lincoln/@19.4294792,-99.1995285,17z/data=!3m1!4b1!4m5!3m4!1s0x85d201f879059717:0x14b2be7262bfc09a!8m2!3d19.4294792!4d-99.1973398', 'acceso libre', 'Abierto las 24 horas', 19.429581, -99.197342, 1),
(15, 'Los Pinos', 'Av. Parque Lira S/N, Bosque de Chapultepec I Secc, Miguel Hidalgo, 11850 Ciudad de México, CDMX', '5541550200', 'https://www.google.com.mx/maps/place/Los+Pinos/@19.4156586,-99.1934009,17z/data=!3m1!4b1!4m5!3m4!1s0x85d201e2607a9651:0xe8b1edf657b2032f!8m2!3d19.415622!4d-99.1910316', 'acceso libre', 'de 11:00 a 17:00 horas', 19.415861, -99.190941, 1),
(16, 'Centro Comercial Perisur', 'Anillo Perif. 4690, Insurgentes Cuicuilco, Coyoacán, 04500 Ciudad de México, CDMX', '5556068349', 'https://www.google.com.mx/maps/place/Centro+Comercial+Perisur/@19.3041764,-99.1922307,17z/data=!3m1!4b1!4m5!3m4!1s0x85cdff7fa2270785:0xe0f2f5b6d7d1416b!8m2!3d19.3041764!4d-99.190042', 'acceso libre', 'de 11:00 a 21:00 horas', 19.304440, -99.190071, 1),
(17, 'Museo Nacional de Antropología', 'Av. Paseo de la Reforma s/n, Polanco, Bosque de Chapultepec I Secc, Miguel Hidalgo, 11560 Ciudad de México, CDMX', '5555536266', 'https://www.google.com.mx/maps/place/Museo+Nacional+de+Antropolog%C3%ADa/@19.4260032,-99.1884673,17z/data=!3m1!4b1!4m5!3m4!1s0x85d201b420c8c849:0x84231ae36f6ec524!8m2!3d19.4260032!4d-99.1862786', 'https://mna.inah.gob.mx/informacion_general.php', 'Martes a sábado 10:00 a 18:00 horas', 19.426367, -99.186340, 1),
(18, 'Castillo de Chapultepec', 'Bosque de Chapultepec I Secc, Miguel Hidalgo, 11100 Ciudad de México, CDMX', '5576019811', 'https://www.google.com.mx/maps/place/Castillo+de+Chapultepec/@19.4204397,-99.1841237,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1fecd47ed8f23:0xa6e0008524818b32!8m2!3d19.4204397!4d-99.181935', 'https://mnh.inah.gob.mx/', 'Martes a sábado 10:00 a 17:00 horas', 19.420652, -99.181999, 1),
(19, 'Basílica de la Virgen Guadalupe', 'Fray Juan de Zumárraga No. 2, Villa Gustavo A. Madero, Gustavo A. Madero, 07050 Ciudad de México, CDMX', '5551180500', 'https://www.google.com.mx/maps/place/Bas%C3%ADlica+de+Guadalupe/@19.4848572,-99.1200503,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1f99c2a34a9c5:0x21a0eaf9a5286ab0!8m2!3d19.4848572!4d-99.1178616', 'acceso libre', 'de 09:00 a 18:30', 19.485109, -99.117432, 1),
(20, 'Bosque de Chapultepec', 'Miguel Hidalgo, Ciudad de México, CDMX', '5552711939', 'https://www.google.com.mx/maps/place/Bosque+de+Chapultepec/@19.4194815,-99.1916445,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1ff574549573f:0x42e2e5c1a219c3af!8m2!3d19.4194815!4d-99.1894558', 'acceso libre', 'de martes a domingo de  05:00 a 18:00', 19.419582, -99.189758, 1),
(21, 'Zócalo de la Ciudad de México', 'P.za de la Constitución S/N, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06010 Ciudad de México, CDMX', 'N/A', 'https://www.google.com.mx/maps/search/Z%C3%B3calo+de+la+Ciudad+de+M%C3%A9xico/@19.4332507,-99.1359386,17z/data=!3m1!4b1', 'acceso libre', 'Abierto las 24 horas', 19.432825, -99.133141, 1),
(22, 'Museo del Templo Mayor', 'Seminario 8, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06060 Ciudad de México, CDMX', '5540405600', 'https://www.google.com.mx/maps/place/Museo+del+Templo+Mayor/@19.4346038,-99.1340697,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1f92d7281d1dd:0x8c90beca651436b0!8m2!3d19.4346038!4d-99.131881', 'https://www.templomayor.inah.gob.mx/el-museo-y-sus-servicios/visitas-guiadas', 'martes, miércoles, viernes, sábados y domingos, de 09:00 a 17:00 horas. ', 19.434776, -99.131454, 1),
(23, 'Museo Frida Kahlo', 'Londres 247, Del Carmen, Coyoacán, 04100 Ciudad de México, CDMX', '5555545999', 'https://www.google.com.mx/maps/place/Museo+Frida+Kahlo/@19.3551806,-99.1646523,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1ffc400ba3f3b:0x6201a4f7f7ccf4a1!8m2!3d19.3550256!4d-99.1623207', 'https://www.museofridakahlo.org.mx/es/el-museo/tu-visita/', 'Martes: 10:00 – 18:00 h. Miércoles: 11:00 – 18:00 h. Jueves a Domingo: 10:00 – 18:00 h.', 19.355242, -99.162346, 1),
(24, 'Museo Soumaya', 'Blvd. Miguel de Cervantes Saavedra, Granada, Miguel Hidalgo, 11529 Ciudad de México, CDMX', '5511039800', 'https://www.google.com.mx/maps/place/Museo+Soumaya/@19.4406926,-99.2068888,17z/data=!3m1!4b1!4m5!3m4!1s0x85d2021a6e3a3d09:0x9372e2224c033cb3!8m2!3d19.4406926!4d-99.2047001', 'acceso libre', 'de 10:30 a 18:30 horas', 19.440914, -99.204681, 1),
(25, 'Museo de Arte Popular', 'Revillagigedo 11, Colonia Centro, Centro, Cuauhtémoc, 06050 Ciudad de México, CDMX', '5555102201', 'https://www.google.com.mx/maps/place/Museo+de+Arte+Popular/@19.4337002,-99.148417,17z/data=!3m2!4b1!5s0x85d1f8d55ca8cd0f:0xcd6a2ba589320c33!4m5!3m4!1s0x85d1f8d544b5be9d:0x1da23d82c6aab38c!8m2!3d19.4337002!4d-99.1462283', '', '10:00 a 18:00 horas', 19.433933, -99.146172, 1),
(26, 'Museo de Cera de la Ciudad de México', 'Londres núm. 6, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX', '5555467670', 'https://www.google.com.mx/maps/place/Museo+de+Cera/@19.4285273,-99.1593175,17z/data=!3m1!4b1!4m5!3m4!1s0x85d21ce7601f431d:0xd66803d577847042!8m2!3d19.4285273!4d-99.1571288', 'https://museodecera.com.mx/museo-de-cera-cdmx', 'Todos los días del año de 11:00 a 19:00 horas', 19.429028, -99.156944, 1),
(27, 'Palacio Postal ', 'Calle de Tacuba 1, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06000 Ciudad de México, CDMX', '5555120091', 'https://www.google.com.mx/maps/place/Palacio+Postal/@19.435559,-99.1424259,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1f92b7c6b4877:0x4b7dfa3e33326fa7!8m2!3d19.435559!4d-99.1402372', '', 'de 8:00 a 19:30 horas', 19.435659, -99.140076, 1),
(28, 'Museo Trick Eye', 'Av. Ejército Nacional Mexicano 843-B, Granada, Miguel Hidalgo, 11520 Ciudad de México, CDMX', '5586627789', 'https://www.google.com.mx/maps/place/MUSEO+TRICK+EYE/@19.4396114,-99.2045287,17z/data=!3m1!4b1!4m5!3m4!1s0x85d203381ee263f7:0x61ac9c5be50c2391!8m2!3d19.4396114!4d-99.20234', 'https://trickeye.com/mexico/Ticket', 'de 11:00 a 19:00 horas', 19.439854, -99.202286, 1),
(29, 'Parque Nacional Desierto de los Leones', 'Álvaro Obregón, 05800 CDMX', 'N/A', 'https://www.google.com.mx/maps/place/Desierto+de+los+Leones/@19.3058148,-99.305463,17z/data=!3m1!4b1!4m5!3m4!1s0x85cdf8eadecf3873:0xe8c42a08a27d22c3!8m2!3d19.3058148!4d-99.3032743', '', 'de 8:00 a 17:00 horas', 19.308393, -99.300537, 1),
(30, 'Jardines Flotantes de Xochimilco', 'Bugambilia 179, Xaltocan, Xochimilco, 16090 Ciudad de México, CDMX', '5571559230', 'https://www.google.com.mx/maps/place/Jardines+Flotantes+Xochimilco/@19.2499024,-99.1034478,17z/data=!3m1!4b1!4m5!3m4!1s0x85ce03fe283fe473:0xf7741bdb8db9ec7e!8m2!3d19.2499594!4d-99.1012096', '', 'de 8:00 a 18:00 horas', 19.250086, -99.101143, 1),
(31, 'Miralto', 'Eje Central Lázaro Cárdenas, TORRE LATINOAMERICANA 2-PISO 41, Centro, Cuauhtémoc, 06000 CDMX', '5555181710', 'https://www.google.com.mx/maps/place/Miralto/@19.4338818,-99.1427984,17z/data=!3m1!4b1!4m8!3m7!1s0x85d1f92d357b9bb7:0xfe091449c3bdf99f!5m2!4m1!1i2!8m2!3d19.4338818!4d-99.1406097', 'http://www.miralto.com.mx/', 'de 9:00 a 22:00 horas', 19.434135, -99.140663, 2),
(32, 'Museo Casa Luis Barragán', 'Gral. Francisco Ramírez 12, Ampliación Daniel Garza, Amp Daniel Garza, Miguel Hidalgo, 11840 Ciudad de México, CDMX', '5581040688', 'https://www.google.com.mx/maps/place/Casa+Estudio+Luis+Barrag%C3%A1n/@19.4111664,-99.1945425,17z/data=!3m1!4b1!4m5!3m4!1s0x85d201e1a46a250f:0x5a5e4fdc58f57a53!8m2!3d19.4111672!4d-99.1923587', 'http://www.casaluisbarragan.org/visitas.html', 'Lunes a Viernes 11:00 a 17:00 hrs último acceso a las 16:00 hrs  Sábados y Domingos 11:00 a 14:00 hrs último acceso a las 13:00 hrs', 19.411226, -99.192314, 1),
(33, 'Museo del Tequila y el Mezcal', 'Pl. Garibaldi s/n, Centro, Cuauhtémoc, 06010 Ciudad de México, CDMX', '5555266540', 'https://www.google.com.mx/maps/place/Museo+del+Tequila+y+el+Mezcal/@19.4406907,-99.1417749,17z/data=!3m2!4b1!5s0x85d1f92ec8fddbc3:0x4e9a5927f4f6a388!4m5!3m4!1s0x85d1f92eb38286ed:0xd0c2d96f27185634!8m2!3d19.4406913!4d-99.1395949', 'http://www.mutemgaribaldi.mx/reservaciones.html', 'de 11:00 a 00:00 horas', 19.440912, -99.139488, 2),
(34, 'Museo del Tequila y el Mezcal', 'Pl. Garibaldi s/n, Centro, Cuauhtémoc, 06010 Ciudad de México, CDMX', '5555266540', 'https://www.google.com.mx/maps/place/Museo+del+Teq...', 'http://www.mutemgaribaldi.mx/reservaciones.html', 'de 11:00 a 00:00 horas', 19.440832, -99.139557, 1),
(35, 'Zinco Jazz Club', 'Calle de Motolinia 20, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06050 Ciudad de México, CDMX', '5511317760', 'https://www.google.com.mx/maps/place/Zinco+Jazz+Club/@19.4340762,-99.1392988,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1f92d280b90af:0x28e1fe0a9a9084fb!8m2!3d19.4340762!4d-99.1371101', 'https://www.zincojazz.com/', 'lunes a sábado de 10:00 am a 6:00 pm', 19.434328, -99.137138, 2),
(36, 'Jules Basement', 'Calle Julio Verne 93, Polanco, Polanco IV Secc, Miguel Hidalgo, 11560 Ciudad de México, CDMX', '5552801278', 'https://www.google.com.mx/maps/place/Jules+Basement/@19.4306638,-99.1984016,17z/data=!3m1!4b1!4m5!3m4!1s0x85d202020f17bd0f:0x338bf7bb012e3607!8m2!3d19.4306908!4d-99.1962562', 'http://www.julesbasement.com/?lang=es', 'de 5:00 pm a 2:00 am', 19.430918, -99.196106, 2),
(37, 'Bar La bipo', 'Malintzin 155, Del Carmen, Coyoacán, 04100 Ciudad de México, CDMX', '5554848230', 'https://www.google.com.mx/maps/place/La+Bipo/@19.3522114,-99.1647369,17z/data=!3m2!4b1!5s0x85d1ffc378e45b45:0x5130adfcf79e5659!4m5!3m4!1s0x85d1ffc3791b9a7b:0x6d8a6e23741ae021!8m2!3d19.3521811!4d-99.162546', '', 'Lu-dom de 13:00 a 00:00 Hrs', 19.352192, -99.162422, 2),
(38, 'Bar Pata Negra Centro Histórico', 'Av. 5 de Mayo 49, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06000 Ciudad de México, CDMX', 'N/A', 'https://www.google.com.mx/maps/place/Bar+Pata+Negra+Hist%C3%B3rico/@19.4340634,-99.1377504,17z/data=!3m2!4b1!5s0x85d1f92d480ca78d:0x440f7e003866dd58!4m5!3m4!1s0x85d1f92d416397a3:0xb0d06e94df15b323!8m2!3d19.4340538!4d-99.135568', '', 'de 9:00 am a 2:00 am', 19.434225, -99.135429, 2),
(39, 'Los Insurgentes Pulqueria', 'Av. Insurgentes Sur 226, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX', '5552070917', 'https://www.google.com.mx/maps/place/Pulqueria+Los+Insurgentes/@19.4193039,-99.1662359,17z/data=!3m2!4b1!5s0x85d1ff39c4c8d4d3:0x9dfc67351fb4be0a!4m5!3m4!1s0x85d1ff39c4dc85d9:0x6d68dab3cc6a77a3!8m2!3d19.4193098!4d-99.1640681', 'https://es-la.facebook.com/pulqueriainsurgentes/', '14:00 - 00:00', 19.419497, -99.164101, 2),
(40, 'Patrick Miller', 'Merida 17, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX', '5555115406', 'https://www.google.com.mx/maps/place/Patrick+Miller/@19.4237513,-99.1611522,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1ff31b1c5d613:0x14a558e077781da0!8m2!3d19.4237683!4d-99.158888', 'https://es-la.facebook.com/PatrickMillerMX/', 'viernes de 22:00 a 4:00 horas', 19.424025, -99.158920, 1),
(41, 'Circulo 99 Billar & Café', 'Eje Central Lázaro Cárdenas 559, Narvarte Oriente, Benito Juárez, 03023 Ciudad de México, CDMX', '5556017857', 'https://www.google.com.mx/maps/place/C%C3%ADrculo+99+Billar+%26+Caf%C3%A9/@19.3957386,-99.163677,14z/data=!4m9!1m2!2m1!1sCirculo+99+Billar+%26+Caf%C3%A9!3m5!1s0x85d1ffaa931d4e9f:0xb7e40c4c3e3f705b!8m2!3d19.3957386!4d-99.1461675!15sChlDaXJjdWxvIDk5IEJpbGxhciAmIENhZsOpkgEJcG9vbF9oYWxs', 'https://www.circulo99.com/', 'LUNES A VIERNES DE 1 A 10 PM SABADOS Y DOMINGOS DE 3 A 10 PM', 19.396549, -99.145744, 1),
(42, 'Círculo 99 Billar & Café Obrera', 'Eje Central Lázaro Cárdenas 248, Obrera, Cuauhtémoc, 06800 Ciudad de México, CDMX', '5556017761', 'https://www.google.com.mx/maps/place/C%C3%ADrculo+99+Billar+%26+Caf%C3%A9+Obrera/@19.4090399,-99.1617957,14z/data=!4m9!1m2!2m1!1sCirculo+99+Billar+%26+Caf%C3%A9!3m5!1s0x85d1ff9d155a5929:0xd5b9f45b4c6800ae!8m2!3d19.4090399!4d-99.1442862!15sChlDaXJjdWxvIDk5IEJpbGxhciAmIENhZsOpWhsiGWNpcmN1bG8gOTkgYmlsbGFyICYgY2Fmw6mSAQNiYXI', 'https://www.circulo99.com/', 'LUNES A VIERNES DE 1 A 10 PM SABADOS Y DOMINGOS DE 3 A 10 PM', 19.410578, -99.144203, 1),
(43, 'Yoru Handroll and Sushi Bar', 'Sinaloa 156A, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX', '5616096323', 'https://www.google.com.mx/maps/place/Yoru+Handroll+and+Sushi+Bar/@19.4198789,-99.1728548,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1ffe7e137bf7b:0x925dd21e2d73e533!8m2!3d19.4198789!4d-99.1706661', 'https://yoru.mx/reserva/', 'de 14:00 a 18:30 horas', 19.419970, -99.170670, 2),
(44, 'La Teatrería (Roma) ', 'Tabasco 152, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX', '5552073234', 'https://www.google.com.mx/maps/place/La+Teatrer%C3%ADa/@19.4191667,-99.1616331,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1ff3a8a5f8ee7:0x6b83636882901f10!8m2!3d19.4191296!4d-99.1594505', 'https://www.lateatreria.com/', 'por evento', 19.419268, -99.159500, 1),
(45, 'Cicatriz Cafetería', 'C. Dinamarca 44, Cuauhtémoc, 06600 Ciudad de México, CDMX', 'N/A', 'https://www.google.com.mx/maps/place/Cicatriz/@19.4278274,-99.160742,17z/data=!3m2!4b1!5s0x85d1ff3247c85de9:0x8c9e42e9a92d0d7!4m5!3m4!1s0x85d1ff324830636d:0x8f1b80fe7e7f135e!8m2!3d19.4278274!4d-99.1585533', 'no hay reservaciones', 'de 9:00 a 23:00 horas', 19.428101, -99.158585, 2),
(46, 'La Distral', 'Fiesta Americana, Av. Paseo de la Reforma, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX', '5551404100', 'https://www.google.com.mx/maps/place/La+Distral/@19.432281,-99.156903,17z/data=!3m2!4b1!5s0x85d1f8d2cd31a09b:0x592e1ac6da06b5e4!4m5!3m4!1s0x85d1f91b8075b351:0xd92579f0c2f036a4!8m2!3d19.432281!4d-99.1547143', '', 'abierto las 24 horas', 19.432585, -99.154716, 2),
(47, 'chedrahui martinez de la torre', 'Andrés Vázquez, Adolfo Ruiz Cortines, 93607 Martínez de la Torre, Ver.', '7675767', 'https://goo.gl/maps/gF3XTXPe5nsoKk1n6', 'acceso libre', 'hjhjk', 20.070633, -97.064529, 2),
(48, 'chedrahui martinez de la torre', 'Andrés Vázquez, Adolfo Ruiz Cortines, 93607 Martínez de la Torre, Ver.', '6456', 'https://goo.gl/maps/gF3XTXPe5nsoKk1n6', 'acceso libre', 'hjhjk', 20.070633, -97.064529, 2),
(49, 'chedrahui martinez de la torre', 'Andrés Vázquez, Adolfo Ruiz Cortines, 93607 Martínez de la Torre, Ver.', '6456', 'https://goo.gl/maps/gF3XTXPe5nsoKk1n6', 'acceso libre', 'hjhjk', 20.070633, -97.064529, 2),
(50, 'chedrahui martinez de la torre', 'Andrés Vázquez, Adolfo Ruiz Cortines, 93607 Martínez de la Torre, Ver.', '64', 'https://goo.gl/maps/gF3XTXPe5nsoKk1n6', 'acceso libre', 'hjhjk', 20.070633, -97.064529, 2),
(51, 'chedrahui martinez de la torre', 'Andrés Vázquez, Adolfo Ruiz Cortines, 93607 Martínez de la Torre, Ver.', '445', 'https://goo.gl/maps/gF3XTXPe5nsoKk1n6', 'acceso libre', 'hjhjk', 20.070633, -97.064529, 2),
(52, 'chedrahui martinez de la torre', 'Andrés Vázquez, Adolfo Ruiz Cortines, 93607 Martínez de la Torre, Ver.', '678', 'https://goo.gl/maps/gF3XTXPe5nsoKk1n6', 'acceso libre', 'hjhjk', 20.070633, -97.064529, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_actividad`
--

CREATE TABLE `tipo_actividad` (
  `id_tipo_act` int(11) NOT NULL,
  `tipo_act` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_actividad`
--

INSERT INTO `tipo_actividad` (`id_tipo_act`, `tipo_act`) VALUES
(1, 'Divertirse'),
(2, 'Comer');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`),
  ADD KEY `ikact` (`id_actividad`);

--
-- Indices de la tabla `marcador`
--
ALTER TABLE `marcador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ifk_idtipo` (`id_tipo_actividad`);

--
-- Indices de la tabla `tipo_actividad`
--
ALTER TABLE `tipo_actividad`
  ADD PRIMARY KEY (`id_tipo_act`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcador`
--
ALTER TABLE `marcador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `tipo_actividad`
--
ALTER TABLE `tipo_actividad`
  MODIFY `id_tipo_act` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `marcador`
--
ALTER TABLE `marcador`
  ADD CONSTRAINT `ifk_idtipo` FOREIGN KEY (`id_tipo_actividad`) REFERENCES `tipo_actividad` (`id_tipo_act`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
