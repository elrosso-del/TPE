-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2021 at 01:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tpe`
--

-- --------------------------------------------------------

--
-- Table structure for table `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `nacionalidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`, `nacionalidad`) VALUES
(1, 'Nike', 'E.E.U.U'),
(2, 'Adidas', 'Alemana'),
(3, 'Under Armour', 'E.E.U.U'),
(4, 'Fila', 'Italia'),
(5, 'Puma', 'Alemana');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zapatillas`
--

CREATE TABLE `zapatillas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `imagen` varchar(200) NOT NULL,
  `deporte` varchar(50) DEFAULT NULL,
  `precio` float NOT NULL,
  `genero` varchar(20) NOT NULL,
  `marca_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zapatillas`
--

INSERT INTO `zapatillas` (`id`, `nombre`, `descripcion`, `imagen`, `deporte`, `precio`, `genero`, `marca_id`) VALUES
(1, 'Air Max Excee', 'Para corredoras que valoran cada minuto y la velocidad es primordial, las nuevas Zapatillas Nike Air Max Excee son perfectas porque combinan una estética minimalista clásica, el estilo urbano de la marca junto con su tecnología Air max que te brinda mejores y amortiguadas pisadas que te darán estabilidad y confianza a la hora de correr en cualquier lugar donde vayas.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw91dc78d6/products/NI_CD5432-103/NI_CD5432-103-1.JPG', 'Running', 17.099, 'Mujer', 1),
(2, 'Zoom Gravity', 'Las Zapatillas Nike Air Zoom Gravity con una capellada completamente transpirable tienen un diseño elegante y estilizado para que luzcas a la moda mientras tus pisadas amortiguadas te dan velocidad y estabilidad mientras corres, entrenas o estas en tus actividades diarias.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dwf7c05f8c/products/NI_BQ3203-100/NI_BQ3203-100-1.JPG', 'Running', 16.999, 'Mujer', 1),
(3, 'Air Max Oketo', 'Las zapatillas Nike Air Max Oketo están confeccionadas con el logotipo de Swoosh propio de la marca en uno de sus laterales y tienen una plantila ligeramente acolchada, una unidad Max Air para mayor comodidad y una suela exterior con diseño de gofres. Su suela de goma te proporciona la tracción necesaria para usarla todo el día.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw0c664ef8/products/NI_AQ2231-002/NI_AQ2231-002-1.JPG', NULL, 12.999, 'Mujer', 1),
(4, 'Flex Trainer 9', 'Querés velocidad y pasos firmes y amortiguados? Las nuevas Zapatillas Nike Flex TR 9, están confeccionadas con una correa en el talón que añade soporte y contención. Además, cuentan con una suela de caucho, para mayor resistencia al desgaste.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dwb0cc2fd1/products/NI_AQ7491-004/NI_AQ7491-004-1.JPG', NULL, 10.499, 'Mujer', 1),
(5, 'Air Max Oketo', 'Para corredoras que valoran cada minuto y la velocidad es primordial, las nuevas Zapatillas Nike Air Max Oketo son perfectas porque combinan una estética minimalista clásica, el estilo urbano de la marca junto con su tecnología Air max que te brinda mejores y amortiguadas pisadas que te darán estabilidad y confianza a la hora de correr en cualquier lugar donde vayas.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw1829c9ca/products/NI_AQ2231-104/NI_AQ2231-104-1.JPG', 'Running', 12.999, 'Mujer', 1),
(6, 'React Infinity Run Flyknit', 'Con las Zapatillas Nike Epic Pro React Flyknit la amortiguación y flexibilidad que buscás, la tendrás gracias a los materiales livianos y respirables que Nike te brinda en estas zapatillas, adicionalmente tendrás todas las miradas gracias a su diseño moderno y vanguardista.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw78f331af/products/NI_CD4371-002/NI_CD4371-002-1.JPG', '', 30.999, 'Hombre', 1),
(7, 'Superfly 7 Academy MG', 'Los botines Nike Superfly 7 Academy nacieron para que te conviertas en el mejor dentro de la cancha. Un diseño exclusivo, audaz y cómodo te permitirán sentir el control y la precisión que necesitas, además de contar con un calzado liviano para cambiar tu ritmo de juego cuando lo necesites.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw18b84ac1/products/NI_BQ5427-401/NI_BQ5427-401-1.JPG', 'Fútbol', 13.999, 'Hombre', 1),
(8, 'Court Vision Low', 'Un clásico modelo inspirado en el tenis y en las canchas llega para vos que tenés un look urbano y casual, las Zapatillas Nike Court Vision Low construidas en lona con costuras tradicionales te da el aspecto vintage que te gusta. Los detalles de corcho en los laterales y en la cinta de la parte posterior del talón te dan un estilo único y característico de la marca.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw8b76d560/products/NI_DJ1970-200/NI_DJ1970-200-1.JPG', NULL, 12.499, 'Hombre', 1),
(9, 'Court Vision Lo Be', 'Adecuado para Todo el día', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw38eebd4d/products/NI_DH2987-001/NI_DH2987-001-1.JPG', NULL, 12.499, 'Hombre', 1),
(10, 'Renew Lucent', 'Conéctate a tu lado aventurero con un calzado versátil que utiliza capas innovadoras para crear un look impactante y deconstruido. Hecho a mano con materiales ligeros y transpirables, ofrece una comodidad excepcional que podrás llevar durante todo el día. Los elementos de gamuza alrededor de los ojales y la puntera le dan a este calzado una sensación sportswear premium.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw64007ec2/products/NI_BQ4235-006/NI_BQ4235-006_1.JPG', NULL, 11.499, 'Hombre', 1),
(11, 'Predator Freak.4 TF', 'Los botines Adidas Predator Freak.4 TF están confeccionados en tejido revestido y materiales sintéticos. Diseñados de corte medio con elementos Demoscale impresos en 3D para un estilo que genere puro miedo en la cancha. Hechos para césped sintético.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dwa55e0e90/products/AD_FW7525/AD_FW7525-1.JPG', 'Fútbol', 8.999, 'Hombre', 2),
(12, 'Run Falcon 2.0', 'Tus rutinas de entrenamiento son tan importantes como tu outfit deportivo, por eso las Zapatillas adidas Run Falcon 2.0 son las perfectas para vos, están confeccionadas en malla transpirable para que tus pies se sientan más frescos, mientras que la suela tipo cupsole de caucho ofrece estabilidad para que corras y uses durante todo el día sin sentir desgaste en las plantas de tus pies.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw4a159cbc/products/AD_FY8741/AD_FY8741-1.JPG', 'Running', 8.999, 'Hombre', 2),
(13, 'X9000L1', 'Adecuado para correr.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw81a93f01/products/AD_H68081/AD_H68081-1.JPG', 'Running', 11.999, 'Hombre', 2),
(14, 'Copa Sense 4 Fxg', 'Adecuado para competir.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw2124232f/products/AD_FW6536/AD_FW6536-1.JPG', '', 7.999, 'Hombre', 2),
(15, 'Grand Court Se', 'Adecuado para todo el día.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dwe3446606/products/AD_FY8169/AD_FY8169-1.JPG', NULL, 11.499, 'Hombre', 2),
(16, 'Breaknet', 'Adecuado para todo el día.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw2601d9d6/products/AD_FX8724/AD_FX8724-1.JPG', NULL, 8.499, 'Mujer', 2),
(17, 'Eq19 Run', 'Las Zapatillas adidas Eq19 Run son ideales para recorrer largas distancias con comodidad extrema. Sea cual fuere el terreno, este calzado de running amortiguan cada paso gracias a la mediasuela Cloudfoam y su suela de caucho. Cuentan con excelente transpirabilidad para mantenerte fresco mientras te esfuerzas al máximo.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw8179a6a2/products/AD_H02045/AD_H02045-1.JPG', 'Running', 10.999, 'Mujer', 2),
(18, 'Grand Court Base', 'Adecuado para todo el día.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dwfe334b94/products/AD_FW6691/AD_FW6691-1.JPG', NULL, 11.499, 'Mujer', 2),
(19, 'Grand Court Base', 'Las zapatillas adidas Grand Court Base están inspiradas en aquellos partidos gloriosos de tenis de décadas pasadas como los años 70. Su diseño presenta un exterior de cuero texturizado con revestimientos de gamuza suave. Están compuestas con la plantilla Cloudfoam Comfort y forro interno textil para una sensación de amortiguación similar a pisar el verde césped de Wimbledon.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw9c31bd52/products/AD_FY8673/AD_FY8673-1.JPG', NULL, 11.499, 'Mujer', 2),
(20, 'Supernova', 'Perfectas para tus días de running las Zapatillas adidas Supernova ideales para vos que tenés la exigencia de un profesional, su construcción en malla liviana le brindan a tus pies la comodidad y frescura en los momentos de mayor esfuerzo.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw4c69179e/products/AD_FZ0831/AD_FZ0831-1.JPG', NULL, 15.999, 'Mujer', 2),
(21, 'Charged Pursuit 2', 'Para tus días de running son perfectas las Zapatillas Under Armour Charged Pursuit 2 por su diseño te harán rendir mejor en entrenamiento y carrera, mientras amortigua tus pisadas gracias a su media suela en espuma que te da estabilidad y firmeza a la hora de correr.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw31f7927c/products/UA_3022604-601/UA_3022604-601-1.JPG', 'Running', 11.999, 'Mujer', 3),
(22, 'Surge 2', 'Adecuado para correr.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw4cf5d6e3/products/UA_3022605-001/UA_3022605-001-1.JPG', 'Running', 10.499, 'Mujer', 3),
(23, 'HOVR Machina', 'Las zapatillas Under Armour HOVR Machina están confeccionadas con materiales sintéticos, un sistema de ajuste con cordones y una suela de goma para mayor durabilidad y tracción sobre la superficie. La tecnología UA HOVR amortigua los impactos y retorna la energia a tus pies para la siguiente pisada, mientras que la malla de compresión Energy Web mejora el ajuste y confort. Hechas para entrenar, pensadas para exigentes.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dwa22d3c5c/products/UA_3021956-001/UA_3021956-001-1.JPG', NULL, 21.999, 'Mujer', 3),
(24, 'HOVR Sonic 3', 'Las zapatillas Under Armour HOVR Sonic 3 están confeccionadas con materiales sintéticos, un sistema de ajuste con cordones y una suela de goma para mayor durabilidad y tracción sobre la superficie. La tecnología UA HOVR amortigua los impactos y retorna la energia a tus pies para la siguiente pisada, mientras que la malla de compresión Energy Web mejora el ajuste y confort. Podes conectarlas con la app UA MAPMYRUN que recopila y analiza la información de tu carrera para ofrecerte entrenamientos p', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dwe190621d/products/UA_3022586-402/UA_3022586-402-1.JPG', NULL, 16.999, 'Hombre', 3),
(25, 'Gs Assert 8', 'Adecuado para entrenar.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw1b757b55/products/UA_3022697-100/UA_3022697-100-1.JPG', NULL, 7.999, 'Unisex', 3),
(26, 'Forge RC', 'Adecuado para entrenar.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw3378a063/products/UA_3022947-501/UA_3022947-501-1.JPG', NULL, 17.999, 'Unisex', 3),
(27, 'Flow Velociti Wind', 'Las zapatillas Under Armour Flow Velociti Wind nacieron para que alcances nuevos desafíos mientras corres. Confeccionadas con estructuras fuertes que se flexionan al momento de aplicar presión para un soporte más reactivo, generan una ligereza ideal para maratones medias y largas. La tecnología Flow bajo los pies no es más que una espuma suave que ofrece el máximo agarre en cualquier superficie. Su parte superior incluye UA Warp, una base flexible tejida con cintas de soporte inspiradas en los c', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw0e679721/products/UA_3023545-301/UA_3023545-301-1.JPG', '', 21.999, 'Hombre', 3),
(28, 'Infinity 3 AL', 'Adecuado para entrenar.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw9d89644d/products/UA_3023405-001/UA_3023405-001-1.JPG', NULL, 8.499, 'Niña', 3),
(29, 'Charged Trvrs Lam', 'Adecuado para correr.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dwd9501251/products/UA_3024683-002/UA_3024683-002-1.JPG', 'Running', 14.999, 'Hombre', 3),
(30, 'HOVR Summit', 'La tecnología HOVR™ proporciona una increíble sensación de gravedad cero para preservar el retorno de energía y eliminar el impacto durante la carrera.', 'https://www.dexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw4db83915/products/UA_3022579-002/UA_3022579-002-1.JPG', 'Running', 19.999, 'Hombre', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indexes for table `zapatillas`
--
ALTER TABLE `zapatillas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_marca_id` (`marca_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zapatillas`
--
ALTER TABLE `zapatillas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `zapatillas`
--
ALTER TABLE `zapatillas`
  ADD CONSTRAINT `zapatillas_ibfk_1` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
