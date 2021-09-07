-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: evaluacion
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Fútbol'),(2,'Voley'),(3,'Básquet'),(4,'Rugby'),(5,'Tenis'),(6,'Gimnasia Artística'),(7,'Handball'),(8,'Hockey'),(9,'Natación'),(10,'Lanzamiento de Jabalina');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` text NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `canDeleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Messi estaba afilado: tremendo gol en el calentamiento antes de Brasil - Argentina','2021-09-05 12:18:58','¿Cómo llegaba Lionel Messi al frustrado clásico entre Brasil y Argentina, suspendido a los 4\' PT por un escándalo sin precedentes? Decir que afilado es poco... En la previa del encuentro, la Pulga clavó al ángulo un remate, en un ejercicio típico de entrada en calor.\r\nSin haber podido desplegar su magia, a Messi se lo vio muy caliente en San Pablo con lo sucedido. \"Nos vamos\", fue lo primero que dijo, ante la intención de las autoridades locales que querían llevarse a los cuatro jugadores argentinos que estuvieron en el Reino Unido hace menos de dos semanas (Dibu Martínez, Cuti Romero, Gio Lo Celso y Emiliano Buendía). \"Hace tres días que estábamos acá, nos estaban esperando. Avisaban y listo\", expresó luego, ya con la curiosa pechera de fotógrafo con la que regresó al campo de juego minutos después de la suspensión.\r\n\r\n',1,1,0),(2,'Facundo Conte: “Queremos impulsar nuestro deporte para poder llegar a más chicos\" ','2021-08-23 12:15:10','\"Facundo Conte, jugador de la Selección Argentina de vóley que logró el bronce olímpico al derrotar a Brasil, charló sobre el momento especial que vive ese deporte ante la hazaña en Tokio y acerca de la relación con su madre, Hugo, y su madre, Sonia, ambos ex jugadores de esa disciplina.\r\n\r\n“Más allá de la medalla, queremos llegar a más cabezas para que se acerquen al deporte. El deporte es unificación, disfrute, emociones, muchos valores. Queremos impulsar el vóley para poder llegar a que más chicos que se sumen a esta aventura, y también instituciones y empresas que quieran impulsarlo”, expresó Conte en diálogo con Federico Almejun y Paula Galloni en Esto es Hollywood por Mucha Radio 94.7 FM.\r\n\r\nFacundo, “el heredero”, habló también de la influencia de su padre, Hugo Conte -también medallista olímpico en los juegos de Seúl de 1988- y, a modo de broma, aseguró: “Mi papá es casi como mi maestro jedi, me ha enseñado los secretos de la fuerza”. “A nivel deportivo me dio un montón de ventajas de conocer el vóley desde otro lugar y a mejorar más rápidamente”, añadió.\"\r\n',2,2,0),(3,'Scola y su sentido mensaje a Sergio Hernández','2021-09-05 13:09:10','\"La Confederación Argentina de Básquetbol (CABB) confirmó que Sergio Hernández no continuará en su cargo como entrenador de la selección argentina y le pondrá fin a su segundo ciclo al frente del equipo. Luego de la noticia, al Oveja le llegaron los reconocimientos por su trabajo. Uno de los más destacados fue el de Luis Scola, quienno dudó y en redes sociales sentenció \"se va el mejor de todos”.\r\n\r\nHernández dirigió a la selección argentina de Básquet en dos etapas, de 2005 a 2010 la primera vez, con medalla de bronce en Beijing 2008, y en esta segunda oportunidad, de 2016 a 2021, con segundo lugar en el Mundial de China 2019. En sus 12 años como entrenador albiceleste, hubo una persona que lo defendió dentro de la cancha y fue Scola.\r\nFue justamente el gran capitán de la selección, el que anunció que a los 41 años ya no seguiria defendiendo la celeste y blanca, quien le dedicó unas sentidas palabras en su cuenta de Twitter e Instagram. Luifa escribió \"se va el mejor de todos. Ya volverás de una manera u otra cuando sea el momento justo. Seguí brillando allá por donde vayas. Gracias, coach”.\"',3,3,0),(4,'Scarlets confirmó la incorporación de Tomás Lezana','2021-05-11 19:34:45','\"Scarlets confirmó el fichaje del argentino Tomas Lezana procedente de Western Force para la próxima temporada. El tercera línea de 27 años, que acumula 39 tests para Los Pumas, se sumará al equipo de Gales que disputa el Pro14.\r\nLezana hizo su debut internacional contra Francia en París en 2014 y salió desde el banco de suplentes en la histórica victoria de Argentina sobre los All Blacks el año pasado. Ha jugado para los Jaguares en Super Rugby y esta temporada ha estado jugando para el Force en Super Rugby AU.\r\n\r\nLezana brindará más opciones a la última línea de los Scarlets y se siente igualmente cómodo en el lado ciego como en el flanco abierto. “Estamos encantados de haber asegurado el fichaje de Tomas para la próxima temporada”, dijo el gerente general de rugby Jon Daniels.\r\n\r\n“Tomas ha jugado al más alto nivel con Los Pumas y también tiene una gran experiencia en Super Rugby. “Es alguien que nos dará una amenaza de carga adicional y es conocido por sus altas estadísticas defensivas y su ritmo de trabajo.\r\n\r\n\"Con Josh Macleod todavía recuperándose de su lesión en el tendón de Aquiles y James Davies también trabajando para volver a estar en forma, sentimos que necesitamos reforzar nuestros recursos de la fila de atrás antes de la próxima temporada y estamos ansiosos por darle la bienvenida a Tomas a Parc y Scarlets\".\r\n\r\nLezana dijo: “Es un honor para mí unirme a un equipo con la gran historia y tradiciones de Scarlets. Después de haber jugado en Super Rugby con Jaguares y Force, estoy deseando ponerme a prueba en el rugby del hemisferio norte y jugar en el nivel más alto de la competencia europea.\"',4,4,0),(5,'Schwartzman, de su derrota en el US Open al Argentina-Brasil: “Domingo de m...”','2021-09-06 00:12:55','Diego Schwartzman (14°) no tuvo un buen día: quedó eliminado del US Open en octavos de final, durante un partido que su adversario podría haberlo definido antes por haber tenido hasta cuatro match points. Su rival, el neerlandés Botic van de Zandschulp (117°), se quedó con el triunfo por 6-3, 6-4, 5-7, 5-7 y 6-1 en 4h20m, logrando la victoria en el quinto set.\r\n\"En el quinto set, cuando venís de dos sets a cero, parece que las chances van a ir a tu favor y al final fue el set más fácil para él. Creo que se merece la victoria. Ha jugado mucho mejor todo el partido. Yo no tuve muchas chances. Él fue arriba en los cinco sets\", declaró el Peque una vez que finalizó el juego en el Louis Armstrong Stadium.\r\nPara el tenista argentino fue un baldazo de agua fría, debido a que hasta el momento no había cedido sets en las tres primeras rondas. Van de Zandschulp, por su parte, no tiene ningún título en su carrera y proviene de la fase clasificatoria del Grand Slam neoyorquino, aunque ya había eliminado a dos integrantes del top-20 de la ATP.\r\n\"No tengo palabras para esto. Antes del torneo nadie esperaba que fuera a clasificar. Seguramente están sorprendidos y espero que estén orgullosos\", expresó el neerlandés, el primero de su país en clasificar a los cuartos de final de un Grand Slam desde 2004 y del US Open desde 2003... ¿Su rival en la próxima instancia? El ruso Daniil Medvedev (2°), uno de los favoritos al título.\"',5,5,0),(6,'Simone Biles habló por primera vez de la crisis: “Mi cuerpo y mi mente dijeron no”','2021-09-07 04:59:29','La estadounidense de 24 años sorprendió a todos el mes pasado tras retirarse de la final por equipos y posteriormente del all-around individual en la cita olímpica. Considerada por muchos como la mejor gimnasta de todos los tiempos y favorita a ganar varias medallas de oro en Tokio, señaló que se retiró para priorizar su salud mental. En una conversación en video con su madre publicada el lunes por la marca Athleta, uno de sus patrocinadores, Biles reveló que sus problemas se habían acrecentado con el tiempo: “Ni siquiera diría que comenzó en Tokio. Siento que probablemente fue un poco más arraigado que eso”. En este sentido, profundizó: “Creo que fue solo el factor de estrés. Se acumuló con el tiempo, y mi cuerpo y mi mente simplemente dijeron que no. Pero ni siquiera yo sabía que estaba pasando por eso hasta que simplemente sucedió”. \"',6,6,0),(7,'Gonzalo Carou y Sebastián Simonet se despidieron de la Selección tras una carrera exitosa','2021-09-07 04:59:54','El 1 de agosto de 2021 no será un día más para la historia del handball argentino, Gonzalo Carou y Sebastián Simonet le dijeron adiós a la Selección luego de 21 y 16 años, respectivamente, de formar parte del plantel de Los Gladiadores. Se despidieron jugando su 3° Juego Olímpico y principalmente dejando un legado muy importante para las futuras generaciones. Por el lado de Sebastián Simonet, que debutó en la Selección en el 2005, disputó además de los tres Juegos Olímpicos siete Mundiales de forma consecutiva desde su bautismo en este tipo de competencias en Croacia 2009. Con la albiceleste jugó 195 partidos que lo tienen como el 6° jugador con más presencias, y cerró su recorrido marcando 412 goles que lo hacen el 4° máximo goleador histórico.',7,7,0),(8,'ALBERTARIO, CANDIDATA A MEJOR JUGADORA DEL AÑO','2021-09-07 05:00:25','\"El 2020 no tuvo elección de Hockey Stars debido al impacto de la pandemia mundial COVID-19 en el calendario internacional. Es por eso que la Federación Internacional de Hockey anunció esta mañana que los premios de este año cubren el período desde enero de 2020 hasta la conclusión de los Juegos Olímpicos de Tokio 2020, lo que significa que se tuvo en cuenta la edición 2020-21 de la FIH Hockey Pro League.\r\n\r\nOtro cambio significativo se produjo tras anunciar que las nominaciones y votaciones de los premios Hockey Stars Awards ahora se llevarán a cabo alrededor de agosto y septiembre de cada año calendario, alejándose de su período tradicional de lanzamiento de diciembre a enero.\r\n\r\nArgentina quedó representada por Agustina Gorzelany y Agustina Albertarrio, ambas para mejor jugadora del mundo, Belén Succi, para mejor arquera y la juvenil Valentina Raposo para promesa del año.\"',8,8,0),(9,'La nadadora argentina Delfina Pignatiello se aleja de las redes sociales para cuidar su salud mental','2021-09-07 05:00:46','Al anunciar su abandono de algunas pruebas de los Juegos Olímpicos de Tokio, la gimnasta estadounidense Simone Biles puso la salud mental en la agenda mundial del deporte. Delfina Pignatiello, una de las grandes promesas de la natación argentina, ha llevado el debate a este país sudamericano. El jueves pasado, Pignatiello quedó última en la tercera serie de clasificación de los 800 metros libres disputados en la capital japonesa. Había quedado en la misma posición en la prueba de los 1.500 metros libres. La nadadora hizo autocrítica ante las cámaras de televisión, pero no logró hacer frente a los numerosos ataques verbales recibidos desde las redes sociales, donde era muy activa. “La gente es muy cruel y por más que ignore quiero cuidar mi salud mental por sobre todas las cosas”, escribió Pignatiello el fin de semana antes de borrar algunas de sus cuentas digitales —como Twitter, Youtube y Twitch— y eliminar contenido de otras. La nadadora de 21 años obtuvo tres medallas de oro en los Juegos Panamericanos de 2019. Sin embargo no pudo mantener su rutina de entrenamiento de cara a Tokio: el cierre de las piscinas durante la extensa cuarentena decretada por la covid-19 la obligó a entrenar en el jardín de su casa, en San Isidro, en la periferia norte de Buenos Aires. Durante esos meses recibió numerosos comentarios agresivos. Al principio los dejó pasar o usó el humor como respuesta, pero ante la insistencia se cansó y amenazó con abandonar las redes sociales. “Bancarse los chistes y el hate (odio) en las redes es una cosa, pero a la sexualización hay que ponerle freno. Hay un límite”, escribió en mayo de 2020. “Recibí una gran cantidad de comentarios ofensivos en el vivo de hoy. También hubo comentarios en vivo sexualizándome y no me lo merezco. (No pude bloquearlos en el momento porque estaba entrenando). Una vergüenza y me siento decepcionada. No sé si seguiré haciendo vivos y menos entrenando. Gracias a todos los que me bancan y apoyan siempre”, agregó.',9,9,0),(10,'El recuerdo de Braian Toledo se multiplicó con dolor en las redes','2021-09-07 05:01:08','\"Llegó el día tan esperado para los deportistas argentinos de todas las disciplinas: los Juegos Olímpicos de Tokio 2020 y la delegación nacional fueron los protagonistas de la inauguración oficial del evento. Las redes sociales se inundaron de mensajes para festejar la presencia del equipo que representará al país entre el 23 de julio y 8 de agosto, pero también abundaron las palabras de dolor por el recuerdo del lanzador de jabalina, Braian Toledo, quien murió en febrero de 2020.\nCecilia Carranza, la abanderada argentina, le dedicó unas emotivas palabras a Toledo en medio de las lágrimas. Todo transcurrió en pleno estadio olímpico mientras desfilaba con la bandera argentina. “En este momento debería estar Braian Toledo acá. Me estuve acordando mucho de él y me emocioné. Todo es muy especial y estoy muy feliz de poder estar con todos estos grandes compañeros, de los cuales siento mucha admiración”, dijo la regatista y agregó: “Esto nos tiene que dar un shock de energía para dejarlo todo en la cancha y en cada deporte, como bien sabemos hacer los argentinos, como bien luchadores que somos”.\nLuego de ver el dolor de la abanderada, los usuarios de las redes sociales y periodistas, entre los que está Juan Pablo Varsky, también se sumaron a la emoción por el recuerdo del deportista que murió el 27 de febrero de 2020 cuando perdió el control de su moto, mientras manejaba por la Ruta 40 de Marcos Paz. Toledo tenía 26 años y una historia llena de sacrificios y el sueño latente de triunfar en estos Juegos Olímpicos de Tokio. La trágica noticia sorprendió y dejó un vacío en el deporte nacional.\"',10,10,0);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `e-mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Lionel Messi','lionelmessi1@gmail.com'),(2,'Facundo Conte','facuconte@gmail.com'),(3,'Luis Scola','scolaluis@gmail.com'),(4,'Tomás Lezana','tomaslezana@gmail.com'),(5,'Diego Schwartzman','diegosch@gmail.com'),(6,'Simone Biles','simoneb@gmail.com'),(7,'Sebastián Simonet','sebasimonet@gmail.com'),(8,'Agustina Albertario','agusal@gmail.com'),(9,'Delfina Pignatiello','delfinapignatiello@gmail.com'),(10,'Braian Toledo','briantoledo@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'evaluacion'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-07  2:11:50
