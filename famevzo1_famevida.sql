-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-10-2020 a las 17:33:47
-- Versión del servidor: 5.6.41-84.1
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `famevzo1_famevida`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumnes`
--

CREATE TABLE `albumnes` (
  `album_id` int(11) NOT NULL,
  `album_titulo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `album_portada_principal` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_portada` varchar(2) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `albumnes`
--

INSERT INTO `albumnes` (`album_id`, `album_titulo`, `album_portada_principal`, `tipo_portada`) VALUES
(8, 'Feria de artesanos', 'plantilla_back/img/multimedia/IMG_20180811_122050.jpg', 'ii'),
(16, 'Album externo', 'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=3840x2160', 'ie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(11) NOT NULL,
  `banner_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `banner_imagen` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_banner` varchar(2) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`banner_id`, `banner_nombre`, `banner_imagen`, `tipo_banner`) VALUES
(31, 'banner1', 'plantilla_back/img/multimedia/banner1.jpg', 'ii'),
(32, 'banner2', 'plantilla_back/img/multimedia/banner4.jpg', 'ii'),
(35, 'bANNER INTERNO', 'plantilla_back/img/multimedia/IMG_20180811_124044.jpg', 'ii'),
(36, 'BANNER EXTERNO', 'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=3840x2160', 'ie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `titulo_pub` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `contenido_pub` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `autor_pub` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `portada_pub` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_portada` varchar(2) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`blog_id`, `titulo_pub`, `contenido_pub`, `autor_pub`, `fecha_pub`, `portada_pub`, `tipo_portada`) VALUES
(11, 'Presentación famevida', 'A continuación les presentamos nuestra fundación que esta a su disposición para servirles, para darles una mano en todo lo que se requiera a nuestros programas que hacen que ustedes estén acogidos por nosotros.A continuación les presentamos nuestra fundación que esta a su disposición para servirles, para darles una mano en todo lo que se requiera a nuestros programas que hacen que ustedes estén acogidos por nosotros.', 'Administrador', '2020-10-31 17:23:38', 'plantilla_back/img/multimedia/banner1.jpg', 'ii'),
(19, 'ffff', 'A continuación les presentamos nuestra fundación que esta a su disposición para servirles, para darles una mano en todo lo que se requiera a nuestros programas que hacen que ustedes estén acogidos por nosotros.', 'Administrador', '2020-10-31 17:22:44', 'plantilla_back/img/multimedia/banner1.jpg', 'ii'),
(22, 'blog video', 'A continuación les presentamos nuestra fundación que esta a su disposición para servirles, para darles una mano en todo lo que se requiera a nuestros programas que hacen que ustedes estén acogidos por nosotros.', 'Administrador', '2020-10-31 17:22:56', 'https://www.youtube.com/embed/7mNcCNawWgw', 've');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `contacto_id` int(11) NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `mensaje` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`contacto_id`, `nombre_completo`, `correo`, `mensaje`, `telefono`) VALUES
(4, 'alejandra dorado', 'alejandra@redepyme.co', 'quiero suscribirme a todos sus servicios', '4211035'),
(5, 'alejandra dorado', 'alejandra@redepyme.co', 'quiero suscribirme a todos sus servicios', '4211035'),
(6, 'alejandra dorado', 'alejandra@redepyme.co', 'quiero suscribirme a todos sus servicios', '4211035'),
(7, 'alejandra dorado', 'alejandra@redepyme.co', 'quiero suscribirme a todos sus servicios', '4211035'),
(8, 'jesus david duran', 'jduran1061539548@gmail.com', 'Felicitaciones por ese maravilloso aporte a la comunidad dios los bendiga', '3183058771'),
(9, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Gracias por estar comprometidos con el desarrollo personal infinitas gracias', '3183058771'),
(10, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Gracias por estar comprometidos con el desarrollo personal infinitas gracias', '3183058771'),
(11, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Gracias por estar comprometidos con el desarrollo personal infinitas gracias', '3183058771'),
(12, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Gracias por estar comprometidos con el desarrollo personal infinitas gracias', '3183058771'),
(13, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Gracias por estar comprometidos con el desarrollo personal infinitas gracias', '3183058771'),
(14, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Gracias por estar comprometidos con el desarrollo personal infinitas gracias', '3183058771'),
(15, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Quiero recibir información', '3183058771'),
(16, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Quiero recibir información', '3183058771'),
(17, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'gracias por contribuir al desarrollo humano', '3183058771'),
(18, 'Alejandra Mejia', 'alejandramf0721@gmail.com', 'Buenas tardes quiero que me informen respecto a sus programas', '3187011918'),
(19, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Muy buenos días me gustaría conocer mas de ustedes', '3182525189'),
(20, 'Jesús David duran', 'jduran1061539548@gmail.com', 'Buenos dias', '3183058771'),
(21, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Muy buenos días me gustaría conocer mas de ustedes', '3182525189'),
(22, 'jesus david chaguendo duran', 'jduran1061539548@gmail.com', 'Hola buenos dias', '3183058771'),
(23, 'jesus david chaguendo', 'jduran1061539548@gmail.com', 'Buenos dias', '3183058771'),
(24, 'jesus david duran', 'jduran1061539548@gmail.com', 'Buenos dias', '3183058771'),
(25, 'jesus david duran', 'jduran1061539548@gmail.com', 'Hola', '3182525189'),
(26, 'jesus david duran', 'jduran1061539548@gmail.com', 'Hola', '3182525189'),
(27, 'jesus david duran', 'jduran1061539548@gmail.com', 'Hola como estas', '3182525189'),
(28, 'jesus', 'jduran1061539548@gmail.com', 'Hola', '3183058771'),
(29, 'jesus david duran', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(30, 'jesus', 'jduran1061539548@gmail.com', 'hola', '4211035'),
(31, 'david', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(32, 'david', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(33, 'david', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(34, 'david', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(35, 'david', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(36, 'david', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(37, 'alejandra', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(38, 'alejandra', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(39, 'alejandra', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(40, 'alejandra', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(41, 'alejandra', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(42, 'alejandra', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(43, 'alejandra', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(44, 'alejandra', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(45, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(46, 'alejandra', 'jduran1061539548@gmail.com', 'hola', '3183058771'),
(47, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(48, 'yPZwOxtgbHujC', 'wouniflx@gmail.com', 'oIlErsqXCG', '9525150337'),
(49, 'JhBUtSpdjD', 'wouniflx@gmail.com', 'ohkNIzuPZl', '2627747795'),
(50, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(51, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(52, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(53, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(54, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(55, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(56, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(57, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(58, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(59, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(60, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(61, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(62, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(63, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(64, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(65, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(66, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(67, 'david', 'jduran1061539548@gmail.com', 'YHola como estas', '3183058771'),
(68, 'jesus david chaguendo', 'jesusdavid121994@gmail.com', 'Hola', '3183058771'),
(69, 'jesus david chaguendo', 'jesusdavid121994@gmail.com', 'Hola', '3183058771'),
(70, 'Alejandra dorado', 'jesusdavid121994@gmail.com', 'Hola', '3183058771'),
(71, 'Leonardo Fabio Cordoba', 'jesusdavid121994@gmail.com', 'Soy el director ejecutivo de la fundación empresarial Redepyme Corrdial saludo el presente mensaje es para notificarles que el servicio de correos electronicos han sido instalados en el servidor por parte del tecnologo jesus david duran', '3183058771'),
(72, 'carminia diaz', 'jesusdavid121994@gmail.com', 'Hola', '3182525189'),
(73, 'ancizar chaguendo', 'jesusdavid121994@gmail.com', 'Hola', '3183058771'),
(74, 'Alejandra dorado', 'jduran1061539548@gmail.com', 'Hola', '3183058771'),
(75, 'Eric Jones', 'eric@talkwithwebvisitor.com', 'By that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?', '416-385-3200'),
(76, 'Juan david duran', 'jduran1061539548@gmail.com', 'Hola buenos días deseo conocer de ustedes', '3183058771');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_galeria`
--

CREATE TABLE `contenido_galeria` (
  `contenido_galeria_id` int(11) NOT NULL,
  `contenido_galeria_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `album_id` int(11) NOT NULL,
  `contenido_galeria_foto` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_portada` varchar(2) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contenido_galeria`
--

INSERT INTO `contenido_galeria` (`contenido_galeria_id`, `contenido_galeria_nombre`, `album_id`, `contenido_galeria_foto`, `tipo_portada`) VALUES
(29, 'Feria', 8, 'plantilla_back/img/multimedia/IMG_20180811_115336.jpg', 'ii'),
(30, 'feria3', 8, 'plantilla_back/img/multimedia/IMG_20180811_124044.jpg', 'ii'),
(34, 'Elemento externo', 8, 'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=3840x2160', 'ie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `id_archivo` int(11) NOT NULL,
  `nombre_archivo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_archivo` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `archivo` varchar(500) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`id_archivo`, `nombre_archivo`, `tipo_archivo`, `archivo`) VALUES
(76, 'video', 've', '<iframe src=\"https://www.youtube.com/embed/7mNcCNawWgw\" class=\"img-archivo\" id=\"ve\"></iframe>'),
(77, 'video', 've', '<iframe src=\"https://www.youtube.com/embed/PO6_eiuGhiI\" class=\"img-archivo\" id=\"ve\"></iframe>'),
(79, 'blog', 'ii', '<img src=\"../plantilla_back/img/multimedia/banner1.jpg\" class=\"img-archivo\" id=\"ii\">'),
(81, 'banner', 'ii', '<img src=\"../plantilla_back/img/multimedia/banner4.jpg\" class=\"img-archivo\" id=\"ii\">'),
(82, 'programa', 'ii', '<img src=\"../plantilla_back/img/multimedia/SOLEDAD-EN-EL-ADULTO-MAYOR.jpg\" class=\"img-archivo\" id=\"ii\">'),
(83, 'programa', 'ii', '<img src=\"../plantilla_back/img/multimedia/MUJERES-RESILIENTES.jpg\" class=\"img-archivo\" id=\"ii\">'),
(84, 'programa', 'ii', '<img src=\"../plantilla_back/img/multimedia/MUJER-EMPRENDEDORA.jpg\" class=\"img-archivo\" id=\"ii\">'),
(85, 'programa', 'ii', '<img src=\"../plantilla_back/img/multimedia/JORNADAS-DE-ATENCION-HABITANTE-DE-CALLE.jpg\" class=\"img-archivo\" id=\"ii\">'),
(86, 'Feria', 'ii', '<img src=\"../plantilla_back/img/multimedia/IMG_20180811_122050.jpg\" class=\"img-archivo\" id=\"ii\">'),
(87, 'feria2', 'ii', '<img src=\"../plantilla_back/img/multimedia/IMG_20180811_124044.jpg\" class=\"img-archivo\" id=\"ii\">'),
(88, 'feria3', 'ii', '<img src=\"../plantilla_back/img/multimedia/IMG_20180811_115336.jpg\" class=\"img-archivo\" id=\"ii\">'),
(94, 'Nancy', 'ii', '<img src=\"../plantilla_back/img/multimedia/nancy.png\" class=\"img-archivo\" id=\"ii\">'),
(102, 'Prueba ii', 'ii', '<img src=\"../plantilla_back/img/multimedia/IMG_20180811_124044.jpg\" class=\"img-archivo\" id=\"ii\">'),
(103, 'prueba ie', 'ie', '<img src=\"https://www.xtrafondos.com/descargar.php?id=5846&resolucion=3840x2160\" class=\"img-archivo\" id=\"ie\">');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `personal_id` int(11) NOT NULL,
  `personal_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `personal_cargo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `perfil_profesional` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `personal_foto` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `link_facebook` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `link_instagram` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `link_twitter` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_portada` varchar(2) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`personal_id`, `personal_nombre`, `personal_cargo`, `perfil_profesional`, `personal_foto`, `link_facebook`, `link_instagram`, `link_twitter`, `tipo_portada`) VALUES
(10, 'Nancy Sepulveda', 'Fundadora', 'Hablar un poco de Nancy Sepúlveda es presentar a una mujer cuyo dinamismo y emprendimiento la llevo a construir una fundación sin ánimo de lucro denominada <b>FAMEVIDA</b> con el Propósito de promover un cambio socio cultural, con acciones que conlleven al reconocimiento, valoración y respeto por la dignidad humana en todas las instancias fundamentadas en esta misión, soy una mujer noble, cariñosa, jovial, sociable, y justa que le gusta escuchar y entender los diferentes pensamientos de las personas.', 'plantilla_back/img/multimedia/nancy.png', '#', '#', '#', 'ii');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `programa_id` int(11) NOT NULL,
  `titulo_programa` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `contenido_programa` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `portada_programa` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_portada` varchar(2) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `programas`
--

INSERT INTO `programas` (`programa_id`, `titulo_programa`, `contenido_programa`, `portada_programa`, `tipo_portada`) VALUES
(10, 'Soledad en el adulto mayor', 'El aislamiento social es un problema grave y habitual en la vejes, adulto mayor sienten falta de compañía, afecto y apoyo. Las consecuencias psicológicas de la soledad en el adulto mayor pueden llevarlo desde el aislamiento hasta la psicosis…. Surgen enfermedades como el alzhéimer, demencia senil, mal de Parkinson, entre otras. Llegar a esta etapa en la vida de una persona adulto mayor no debe significar el acabose.\r\nComo se siente los ancianos \r\nQue es el abandono en el adulto mayor, como se puede mejorar la calidad de vida de los adultos mayores, cuales son los efectos de la soledad, como se debe enfrentar la vejez.\r\nQue es ser viejo en la soledad actual.\r\n\r\nComo afecta la cotidianidad del adulto mayor, es más propenso a tener sentimientos de soledad, debido a la falta de afecto. La soledad en el adulto mayor es una condición emergente ya que esto conlleva a enfermedades por sentirse solo, con falta de afecto, pobreza, improductividad y jubilación.\r\n', 'plantilla_back/img/multimedia/SOLEDAD-EN-EL-ADULTO-MAYOR.jpg', 'ii'),
(11, 'Mujeres resilientes', 'Mujeres resilientes que ser resiliente no quiere decir que la persona no experimenta dificultades o angustias en el dolor emocional y la tristeza, son comunes en las personas que han sufrido grandes adversidades o como superar estas mismas.\r\nRodearse de personas positivas estableciendo buenas relaciones con la familia, amigos y compañeros, así como aceptar su ayuda en algunos momentos fortalece.\r\nCambiar la perspectiva no podemos evitar que ocurran acontecimientos que nos causan tensión, pero si podemos cambiar la manera como reaccionamos.\r\n', 'plantilla_back/img/multimedia/MUJERES-RESILIENTES.jpg', 'ii'),
(12, 'Mujer en el emprendimiento', 'La mujer colombiana es muy emprendedora, trabajadora y dinámica, con alto sentido de la responsabilidad y muy perseverante. Es en términos generales inteligente, estudiosa, recursiva y muy dedicada en sus labores, sin descuidar su hogar y sus familiares; empoderamiento en mujeres emprendedoras y comprende materiales de formación para la gestión empresarial desde el compromiso con los derechos de las mujeres.\r\nEs concebido como un material en construcción para ser enriquecido y mejorado por las personas que lo utilicen. Capacitaciones a mujeres emprendedoras, PROYECTO “<b>ELLA APRENDE, ELLA EMPRENDE</b>” \r\nCapacitaciones para mujeres rurales fortalezas y nuestras debilidades.\r\n', 'plantilla_back/img/multimedia/MUJER-EMPRENDEDORA.jpg', 'ii'),
(13, 'Atención habitantes de la calle', ' Jornada de atención para ciudadanos habitantes de calle, consiste en jornada de aseo, atención médica y odontológica donde se les atiende con apoyo odontológico, médico y psicológico, además en la jornada de aseo que consta de invitarlos a que se duchen luego pasen a peluquearse y por ultimo a vestirse con prendas limpias para ello se les entrega un kit de aseo que incluye jabón, cepillo, máquina de afeitar. Se les hace un compartir que incluye un desayuno, almuerzo, y refrigerio. Las personas que desean recuperarse e ingresar a una fundación aliada para iniciar este proceso, lo pueden hacer.', 'plantilla_back/img/multimedia/JORNADAS-DE-ATENCION-HABITANTE-DE-CALLE.jpg', 'ii'),
(17, 'Programa 1', 'Contenido', 'plantilla_back/img/multimedia/banner1.jpg', 'ii'),
(18, 'Programa 2', 'contenido', 'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=3840x2160', 'ie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_administradores`
--

CREATE TABLE `usuarios_administradores` (
  `usuario_id` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios_administradores`
--

INSERT INTO `usuarios_administradores` (`usuario_id`, `usuario`, `clave`) VALUES
(2, 'famevida', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `visita_id` int(11) NOT NULL,
  `visita_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`visita_id`, `visita_fecha`) VALUES
(43, '2020-10-08 18:00:04'),
(44, '2020-10-08 18:26:41'),
(45, '2020-10-08 19:03:13'),
(46, '2020-10-08 21:34:25'),
(47, '2020-10-08 22:08:55'),
(48, '2020-10-08 22:10:40'),
(49, '2020-10-08 22:16:29'),
(50, '2020-10-08 22:18:35'),
(51, '2020-10-08 22:28:01'),
(52, '2020-10-08 23:28:03'),
(53, '2020-10-09 00:32:00'),
(54, '2020-10-09 00:44:40'),
(55, '2020-10-09 00:54:18'),
(56, '2020-10-09 02:15:41'),
(57, '2020-10-09 02:24:36'),
(58, '2020-10-09 02:24:37'),
(59, '2020-10-09 03:02:16'),
(60, '2020-10-09 03:05:33'),
(61, '2020-10-09 03:05:34'),
(62, '2020-10-09 03:47:01'),
(63, '2020-10-09 03:47:36'),
(64, '2020-10-09 03:47:37'),
(65, '2020-10-09 03:58:49'),
(66, '2020-10-09 03:58:50'),
(67, '2020-10-09 03:58:50'),
(68, '2020-10-09 03:58:50'),
(69, '2020-10-09 04:41:36'),
(70, '2020-10-09 04:41:38'),
(71, '2020-10-09 06:12:55'),
(72, '2020-10-09 06:54:52'),
(73, '2020-10-09 08:14:57'),
(74, '2020-10-09 08:22:27'),
(75, '2020-10-09 08:23:50'),
(76, '2020-10-09 08:53:47'),
(77, '2020-10-09 08:59:01'),
(78, '2020-10-09 09:09:37'),
(79, '2020-10-09 10:48:18'),
(80, '2020-10-09 10:48:19'),
(81, '2020-10-09 13:46:16'),
(82, '2020-10-09 14:26:00'),
(83, '2020-10-09 14:54:50'),
(84, '2020-10-09 14:54:57'),
(85, '2020-10-09 15:12:33'),
(86, '2020-10-09 15:49:29'),
(87, '2020-10-09 15:54:36'),
(88, '2020-10-09 15:54:37'),
(89, '2020-10-09 16:54:35'),
(90, '2020-10-09 17:15:28'),
(91, '2020-10-09 17:17:45'),
(92, '2020-10-09 17:17:46'),
(93, '2020-10-09 17:41:41'),
(94, '2020-10-09 18:24:01'),
(95, '2020-10-09 18:35:36'),
(96, '2020-10-09 18:35:38'),
(97, '2020-10-09 19:06:48'),
(98, '2020-10-09 19:43:04'),
(99, '2020-10-09 19:43:05'),
(100, '2020-10-09 22:23:27'),
(101, '2020-10-09 23:04:47'),
(102, '2020-10-09 23:59:03'),
(103, '2020-10-10 00:56:38'),
(104, '2020-10-10 02:41:40'),
(105, '2020-10-10 02:41:41'),
(106, '2020-10-10 07:16:13'),
(107, '2020-10-10 07:16:15'),
(108, '2020-10-10 07:16:27'),
(109, '2020-10-10 09:15:54'),
(110, '2020-10-10 09:16:46'),
(111, '2020-10-10 11:03:33'),
(112, '2020-10-10 12:32:31'),
(113, '2020-10-10 13:18:18'),
(114, '2020-10-10 18:15:41'),
(115, '2020-10-10 22:37:11'),
(116, '2020-10-11 03:52:22'),
(117, '2020-10-11 04:44:48'),
(118, '2020-10-11 09:33:17'),
(119, '2020-10-11 09:33:31'),
(120, '2020-10-11 09:34:37'),
(121, '2020-10-11 11:33:34'),
(122, '2020-10-11 16:38:53'),
(123, '2020-10-11 19:09:11'),
(124, '2020-10-11 19:10:46'),
(125, '2020-10-11 19:33:58'),
(126, '2020-10-11 20:15:13'),
(127, '2020-10-11 21:01:44'),
(128, '2020-10-11 21:08:45'),
(129, '2020-10-11 23:30:16'),
(130, '2020-10-12 02:44:53'),
(131, '2020-10-12 06:00:51'),
(132, '2020-10-12 06:55:29'),
(133, '2020-10-12 16:41:20'),
(134, '2020-10-13 02:10:18'),
(135, '2020-10-13 02:10:53'),
(136, '2020-10-13 02:11:09'),
(137, '2020-10-13 02:11:37'),
(138, '2020-10-13 02:11:49'),
(139, '2020-10-13 02:21:32'),
(140, '2020-10-13 10:01:09'),
(141, '2020-10-13 10:16:34'),
(142, '2020-10-13 10:25:11'),
(143, '2020-10-13 11:23:50'),
(144, '2020-10-13 12:14:43'),
(145, '2020-10-13 12:18:00'),
(146, '2020-10-13 16:19:30'),
(147, '2020-10-13 21:56:44'),
(148, '2020-10-13 22:26:21'),
(149, '2020-10-13 22:27:58'),
(150, '2020-10-14 00:22:06'),
(151, '2020-10-14 00:46:28'),
(152, '2020-10-14 09:32:01'),
(153, '2020-10-14 10:21:05'),
(154, '2020-10-14 11:30:42'),
(155, '2020-10-14 14:14:40'),
(156, '2020-10-14 15:33:00'),
(157, '2020-10-14 17:50:20'),
(158, '2020-10-14 20:24:12'),
(159, '2020-10-14 21:00:58'),
(160, '2020-10-15 03:42:32'),
(161, '2020-10-15 07:06:04'),
(162, '2020-10-15 10:25:19'),
(163, '2020-10-15 19:24:12'),
(164, '2020-10-16 05:44:52'),
(165, '2020-10-16 07:53:32'),
(166, '2020-10-16 09:57:49'),
(167, '2020-10-16 10:20:48'),
(168, '2020-10-16 13:37:27'),
(169, '2020-10-16 14:03:35'),
(170, '2020-10-16 20:13:49'),
(171, '2020-10-17 02:20:18'),
(172, '2020-10-17 05:18:45'),
(173, '2020-10-17 15:33:30'),
(174, '2020-10-18 21:30:28'),
(175, '2020-10-19 08:16:50'),
(176, '2020-10-19 08:16:50'),
(177, '2020-10-19 14:43:33'),
(178, '2020-10-19 15:18:46'),
(179, '2020-10-19 15:19:16'),
(180, '2020-10-19 15:20:11'),
(181, '2020-10-19 15:20:41'),
(182, '2020-10-19 18:13:43'),
(183, '2020-10-19 18:13:45'),
(184, '2020-10-19 22:48:39'),
(185, '2020-10-20 11:33:25'),
(186, '2020-10-20 14:21:47'),
(187, '2020-10-20 15:48:37'),
(188, '2020-10-20 16:18:23'),
(189, '2020-10-20 16:23:51'),
(190, '2020-10-20 16:28:48'),
(191, '2020-10-20 16:29:54'),
(192, '2020-10-20 16:34:43'),
(193, '2020-10-20 16:53:22'),
(194, '2020-10-20 16:57:24'),
(195, '2020-10-20 17:30:47'),
(196, '2020-10-20 18:01:22'),
(197, '2020-10-20 18:08:24'),
(198, '2020-10-20 18:23:27'),
(199, '2020-10-20 21:34:48'),
(200, '2020-10-20 21:36:35'),
(201, '2020-10-20 22:48:03'),
(202, '2020-10-21 06:11:31'),
(203, '2020-10-21 06:11:31'),
(204, '2020-10-21 06:11:31'),
(205, '2020-10-21 06:11:32'),
(206, '2020-10-21 07:21:38'),
(207, '2020-10-21 11:06:30'),
(208, '2020-10-21 14:37:13'),
(209, '2020-10-21 18:33:22'),
(210, '2020-10-21 19:13:52'),
(211, '2020-10-21 19:15:38'),
(212, '2020-10-21 19:24:36'),
(213, '2020-10-21 19:25:04'),
(214, '2020-10-21 19:25:26'),
(215, '2020-10-21 19:27:02'),
(216, '2020-10-21 19:30:35'),
(217, '2020-10-21 20:19:19'),
(218, '2020-10-21 20:49:30'),
(219, '2020-10-21 20:55:20'),
(220, '2020-10-21 20:55:26'),
(221, '2020-10-21 20:55:28'),
(222, '2020-10-21 21:10:59'),
(223, '2020-10-21 21:11:34'),
(224, '2020-10-21 21:44:39'),
(225, '2020-10-21 21:44:39'),
(226, '2020-10-21 21:45:08'),
(227, '2020-10-21 21:51:23'),
(228, '2020-10-21 21:52:00'),
(229, '2020-10-21 22:47:30'),
(230, '2020-10-22 00:46:38'),
(231, '2020-10-22 00:46:48'),
(232, '2020-10-22 01:44:13'),
(233, '2020-10-22 03:26:59'),
(234, '2020-10-22 05:33:05'),
(235, '2020-10-22 10:52:44'),
(236, '2020-10-22 14:35:19'),
(237, '2020-10-22 14:36:47'),
(238, '2020-10-22 14:41:11'),
(239, '2020-10-22 14:42:03'),
(240, '2020-10-22 14:53:13'),
(241, '2020-10-22 15:29:32'),
(242, '2020-10-22 15:29:33'),
(243, '2020-10-22 17:04:57'),
(244, '2020-10-22 17:16:26'),
(245, '2020-10-22 17:39:13'),
(246, '2020-10-22 18:25:19'),
(247, '2020-10-22 18:25:35'),
(248, '2020-10-22 19:11:15'),
(249, '2020-10-22 19:48:20'),
(250, '2020-10-22 20:50:12'),
(251, '2020-10-22 23:52:19'),
(252, '2020-10-23 00:47:10'),
(253, '2020-10-23 01:22:03'),
(254, '2020-10-23 01:22:24'),
(255, '2020-10-23 03:46:31'),
(256, '2020-10-23 05:33:15'),
(257, '2020-10-23 07:08:42'),
(258, '2020-10-23 08:18:39'),
(259, '2020-10-23 11:27:49'),
(260, '2020-10-23 14:30:30'),
(261, '2020-10-23 19:07:33'),
(262, '2020-10-23 19:07:36'),
(263, '2020-10-23 19:18:22'),
(264, '2020-10-23 19:30:30'),
(265, '2020-10-23 22:22:27'),
(266, '2020-10-24 16:01:56'),
(267, '2020-10-25 09:26:29'),
(268, '2020-10-25 09:26:31'),
(269, '2020-10-25 11:59:04'),
(270, '2020-10-25 13:22:44'),
(271, '2020-10-25 13:22:49'),
(272, '2020-10-25 18:56:34'),
(273, '2020-10-26 00:14:50'),
(274, '2020-10-26 02:20:30'),
(275, '2020-10-26 04:33:43'),
(276, '2020-10-26 05:02:31'),
(277, '2020-10-26 13:36:57'),
(278, '2020-10-26 14:07:16'),
(279, '2020-10-26 15:23:43'),
(280, '2020-10-26 15:35:14'),
(281, '2020-10-26 15:40:00'),
(282, '2020-10-26 15:40:01'),
(283, '2020-10-26 15:40:41'),
(284, '2020-10-26 15:43:33'),
(285, '2020-10-26 15:49:30'),
(286, '2020-10-26 17:09:39'),
(287, '2020-10-26 17:09:44'),
(288, '2020-10-27 01:03:50'),
(289, '2020-10-27 02:13:30'),
(290, '2020-10-27 02:54:04'),
(291, '2020-10-27 09:05:24'),
(292, '2020-10-27 10:04:10'),
(293, '2020-10-27 12:46:25'),
(294, '2020-10-27 12:46:26'),
(295, '2020-10-27 12:50:57'),
(296, '2020-10-27 17:05:00'),
(297, '2020-10-27 17:05:01'),
(298, '2020-10-27 20:56:44'),
(299, '2020-10-27 21:11:41'),
(300, '2020-10-27 21:56:45'),
(301, '2020-10-27 21:56:47'),
(302, '2020-10-27 23:26:10'),
(303, '2020-10-28 01:19:25'),
(304, '2020-10-28 02:56:44'),
(305, '2020-10-28 03:06:06'),
(306, '2020-10-28 09:00:43'),
(307, '2020-10-28 12:33:35'),
(308, '2020-10-28 23:22:21'),
(309, '2020-10-29 07:51:38'),
(310, '2020-10-29 09:31:56'),
(311, '2020-10-29 09:32:01'),
(312, '2020-10-29 09:41:41'),
(313, '2020-10-29 09:56:08'),
(314, '2020-10-29 16:33:49'),
(315, '2020-10-29 22:03:27'),
(316, '2020-10-29 22:03:28'),
(317, '2020-10-29 23:21:12'),
(318, '2020-10-29 23:57:48'),
(319, '2020-10-29 23:57:51'),
(320, '2020-10-30 00:19:19'),
(321, '2020-10-30 01:06:39'),
(322, '2020-10-30 13:00:27'),
(323, '2020-10-30 14:01:24'),
(324, '2020-10-30 18:00:39'),
(325, '2020-10-30 18:03:46'),
(326, '2020-10-30 19:15:20'),
(327, '2020-10-30 21:51:52'),
(328, '2020-10-31 03:25:20'),
(329, '2020-10-31 04:21:05'),
(330, '2020-10-31 05:58:01'),
(331, '2020-10-31 05:58:02'),
(332, '2020-10-31 05:58:03'),
(333, '2020-10-31 05:58:09'),
(334, '2020-10-31 06:30:26'),
(335, '2020-10-31 12:18:58'),
(336, '2020-10-31 14:01:31'),
(337, '2020-10-31 15:01:25'),
(338, '2020-10-31 15:18:47'),
(339, '2020-10-31 15:48:02'),
(340, '2020-10-31 16:36:12'),
(341, '2020-10-31 17:03:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumnes`
--
ALTER TABLE `albumnes`
  ADD PRIMARY KEY (`album_id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`contacto_id`);

--
-- Indices de la tabla `contenido_galeria`
--
ALTER TABLE `contenido_galeria`
  ADD PRIMARY KEY (`contenido_galeria_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id_archivo`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`personal_id`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`programa_id`);

--
-- Indices de la tabla `usuarios_administradores`
--
ALTER TABLE `usuarios_administradores`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`visita_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumnes`
--
ALTER TABLE `albumnes`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `contacto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `contenido_galeria`
--
ALTER TABLE `contenido_galeria`
  MODIFY `contenido_galeria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `personal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `programas`
--
ALTER TABLE `programas`
  MODIFY `programa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios_administradores`
--
ALTER TABLE `usuarios_administradores`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `visita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contenido_galeria`
--
ALTER TABLE `contenido_galeria`
  ADD CONSTRAINT `contenido_galeria_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albumnes` (`album_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
