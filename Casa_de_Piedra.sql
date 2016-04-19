-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2016 at 03:53 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10
CREATE DATABASE Casa_de_Piedra;
USE Casa_De_Piedra;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Casa_de_Piedra`
--

-- --------------------------------------------------------

--
-- Table structure for table `Favorites`
--

CREATE TABLE `Favorites` (
  `id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `category` text NOT NULL,
  `image_url` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Favorites`
--
ALTER TABLE `Favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Favorites`
--
ALTER TABLE `Favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*INSERTS PARA PRODUCTOS DE CATEGORIA GATAS*/
INSERT INTO `Products` VALUES (1, 800.00, "Gatas", "http://www.vertimania.com/images/P/BANDIT%20SC%20440.jpg", "Onsight");
INSERT INTO `Products` VALUES (2, 800.00, "Gatas", "http://www.vertimania.com/images/P/luchadorsc400.jpg", "Banshee");
INSERT INTO `Products` VALUES (3, 800.00, "Gatas", "http://www.vertimania.com/images/P/Vario%20speed%20440%20.jpg", "Mugen Tech");
INSERT INTO `Products` VALUES (4, 800.00, "Gatas", "http://www.vertimania.com/images/P/C05-N%20440.jpg", "Conflict");
INSERT INTO `Products` VALUES (5, 800.00, "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Demon");
INSERT INTO `Products` VALUES (6, 800.00, "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Frenzy Velcro");
INSERT INTO `Products` VALUES (7, 800.00, "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Mugen Tech Lance");
INSERT INTO `Products` VALUES (8, 1350.00, "Gatas", "http://exposure.mx/images/productos/30-0-Drifter.JPG", "Drifter");
INSERT INTO `Products` VALUES (9, 1700.00, "Gatas", "http://exposure.mx/images/productos/29-2-M5.JPG", "M5");
INSERT INTO `Products` VALUES (10, 2298.00, "Gatas", "http://exposure.mx/images/productos/481-0-RedLine.JPG", "RedLine");
INSERT INTO `Products` VALUES (11, 1950.00, "Gatas", "http://exposure.mx/images/productos/18-0-prod-1.JPG", "Shark 2.0");
INSERT INTO `Products` VALUES (12, 1950.00, "Gatas", "http://exposure.mx/images/productos/378-0-Lotus.JPG", "Lotus");
INSERT INTO `Products` VALUES (13, 1850.00, "Gatas", "http://exposure.mx/images/productos/379-0-Lyra.JPG", "Lyra");
INSERT INTO `Products` VALUES (14, 950.00, "Gatas", "http://exposure.mx/images/productos/203-0-Mad-Monkey-2-0.JPG", "Mad Monkey");
INSERT INTO `Products` VALUES (15, 1598.00, "Gatas", "http://exposure.mx/images/productos/28-0-Flash-2.0.JPG", "Flash 2.0");
INSERT INTO `Products` VALUES (16, 1598.00, "Gatas", "http://exposure.mx/images/productos/480-0-Flash-2-0-amarillo.JPG", "Flash Yellow");
INSERT INTO `Products` VALUES (17, 1698.00, "Gatas", "http://exposure.mx/images/productos/578-0-Pulse-Positive.JPG", "Pulse Positive");
INSERT INTO `Products` VALUES (18, 1698.00, "Gatas", "http://exposure.mx/images/productos/577-0-Pulse-Negative.JPG", "Pulse Negative");

/*INSERTS PARA PRODUCTOS DE CATEGORIA MAGNESIERAS*/
INSERT INTO `Products` VALUES (19, 265.00, "Magnesieras", "http://exposure.mx/images/productos/75-0-Mojo-Chalkbag.JPG", "Mojo Chalk Bag");
INSERT INTO `Products` VALUES (20, 198.00, "Magnesieras", "http://exposure.mx/images/productos/208-0-Koala.JPG", "Koala Chalk Bag");
INSERT INTO `Products` VALUES (21, 298.00, "Magnesieras", "http://exposure.mx/images/productos/77-0-Mojo-Repo-Chalkbag.JPG", "Mojo Repo Chalk Bag");
INSERT INTO `Products` VALUES (22, 320.00, "Magnesieras", "http://exposure.mx/images/productos/76-0-Mojo-Zip-Chalkbag.JPG", "Mojo Zip Chalk Bag");
INSERT INTO `Products` VALUES (23, 180.00, "Magnesieras", "http://exposure.mx/images/productos/210-0-Kids-Chalk-Bag.JPG", "Kids Chalk Bag");
INSERT INTO `Products` VALUES (24, 198.00, "Magnesieras", "http://exposure.mx/images/productos/209-0-Kangaroo.JPG", "Kangaroo Zip Chalk Bag");

/*INSERTS PARA PRODUCTOS DE CATEGORIA MAGNESIA*/
INSERT INTO `Products` VALUES (25, 40.00, "Magnesia", "http://exposure.mx/images/productos/545-0-Chalk-Shot.JPG", "Bolas de Magnesia");
INSERT INTO `Products` VALUES (26, 86.00, "Magnesia", "http://www.vertimania.com/images/P/super-8-440.jpg", "Monkey Hands");
INSERT INTO `Products` VALUES (27, 45.00, "Magnesia", "http://exposure.mx/images/productos/227-0-White-Gold-Chalk-Block.JPG", "Cuadro de Magnesia");
INSERT INTO `Products` VALUES (28, 60.00, "Magnesia", "http://exposure.mx/images/productos/228-0-12-Ball-Jar.JPG", "Frasco Grande");
INSERT INTO `Products` VALUES (29, 40.00, "Magnesia", "http://exposure.mx/images/productos/228-0-12-Ball-Jar.JPG", "Frasco Chico");
INSERT INTO `Products` VALUES (30, 145.00, "Magnesia", "http://exposure.mx/images/productos/225-0-White-Gold-100200300-gr-.JPG", "Magnesia en Bolsa 200g");
INSERT INTO `Products` VALUES (31, 85.00, "Magnesia", "http://exposure.mx/images/productos/225-0-White-Gold-100200300-gr-.JPG", "Magnesia en Bolsa 100g");
INSERT INTO `Products` VALUES (32, 215.00, "Magnesia", "http://exposure.mx/images/productos/225-0-White-Gold-100200300-gr-.JPG", "Magnesia en Bolsa 300g");

/*INSERTS PARA PRODUCTOS DE CATEGORIA CINTAS*/
INSERT INTO `Products` VALUES (33, 60.00, "Cintas", "http://images.internetstores.de/products/2501[1470x849].jpg?forceSize=true&forceAspectRatio=true", "Cinta Blanca Grande");
INSERT INTO `Products` VALUES (34, 35.00, "Cintas", "http://images.internetstores.de/products/371471[1470x849].jpg?forceSize=true&forceAspectRatio=true", "Cinta Blanca Chica");
INSERT INTO `Products` VALUES (35, 80.00, "Cintas", "http://exposure.mx/images/productos/572-0-1.JPG", "Cinta de Color");

/*INSERTS PARA PRODUCTOS DE CATEGORIA ARNESES*/
INSERT INTO `Products` VALUES (36, 890.00, "Arneses", "http://exposure.mx/images/productos/247-0-Mars.JPG", "Arnes Mars");
INSERT INTO `Products` VALUES (37, 890.00, "Arneses", "http://exposure.mx/images/productos/248-0-Venus.JPG", "Arnes Venus");
INSERT INTO `Products` VALUES (38, 2598.00, "Arneses", "http://exposure.mx/images/productos/146-0-Big-Gun.JPG", "Big Gun Harness");
INSERT INTO `Products` VALUES (39, 1250.00, "Arneses", "http://exposure.mx/images/productos/451-0-Primrose.JPG", "Primerose Harness");
INSERT INTO `Products` VALUES (40, 2190.00, "Arneses", "http://exposure.mx/images/productos/471-0-Paquete-Primrose.JPG", "Primerose Harness Package");
INSERT INTO `Products` VALUES (41, 1550.00, "Arneses", "http://exposure.mx/images/productos/152-0-Momentum-DS.JPG", "Momentum Ds Harness");
INSERT INTO `Products` VALUES (42, 2190.00, "Arneses", "http://exposure.mx/images/productos/470-0-Paquete-Momentum.JPG", "Momentum Harness Package");
INSERT INTO `Products` VALUES (43, 998.00, "Arneses", "http://exposure.mx/images/productos/161-0-Wiz-Kid.JPG", "WIZ KID Harness");
INSERT INTO `Products` VALUES (44, 1998.00, "Arneses", "http://exposure.mx/images/productos/145-0-Ozone.JPG", "Ozone");
INSERT INTO `Products` VALUES (45, 2198.00, "Arneses", "http://exposure.mx/images/productos/144-0-Chaos.JPG", "Chaos");
INSERT INTO `Products` VALUES (46, 1598.00, "Arneses", "http://www.vertimania.com/images/P/flight_cglv_440.jpg", "Flight");
INSERT INTO `Products` VALUES (103, 1598.00, "Arneses", "http://www.deporteslaser.es/2334-thickbox_default/black-diamond-arnes-siren-mujer.jpg", "Siren");


/*INSERTS PARA PRODUCTOS DE CATEGORIA CASCOS*/
INSERT INTO `Products` VALUES (47, 1298.00, "Cascos", "http://exposure.mx/images/productos/172-3-Half-Dome.JPG", "Casco Half Dome - Azul");
INSERT INTO `Products` VALUES (48, 1298.00, "Cascos", "http://exposure.mx/images/productos/172-0-Half-Dome.JPG", "Casco Half Dome - Naranja");
INSERT INTO `Products` VALUES (49, 1298.00, "Cascos", "http://exposure.mx/images/productos/172-1-Half-Dome.JPG", "Casco Half Dome - Negro");
INSERT INTO `Products` VALUES (50, 1298.00, "Cascos", "http://fisura.org/media/catalog/product/cache/1/image/700x700/9df78eab33525d08d6e5fb8d27136e95/c/a/casco_half_dome_rojo_de_black_diamond.jpg", "Casco Half Dome / Rojo");
INSERT INTO `Products` VALUES (51, 1798.00, "Cascos", "http://exposure.mx/images/productos/170-0-Vector.JPG", "Casco Vector - Negro");
INSERT INTO `Products` VALUES (52, 1798.00, "Cascos", "http://exposure.mx/images/productos/170-3-Vector.JPG", "Casco Vector - Gris c/azul");
INSERT INTO `Products` VALUES (53, 1798.00, "Cascos", "http://exposure.mx/images/productos/170-2-Vector.JPG", "Casco Vector - Gris c/naranja");
INSERT INTO `Products` VALUES (54, 2598.00, "Cascos", "http://exposure.mx/images/productos/169-0-Vapor.JPG", "Casco VAPOR - Rojo");

/*INSERTS PARA PRODUCTOS DE CATEGORIA SEGUROS*/
INSERT INTO `Products` VALUES (55, 1749.00, "Seguros", "https://www.forumsport.com/img/productos/1000x1000/PETZL%20ASEGURADOR-RAPELADOR%20GRIGRI%202-393008_00.jpg", "Gri Gri");
INSERT INTO `Products` VALUES (56, 349.00, "Seguros", "http://exposure.mx/images/productos/100-0-ATC.JPG", "Atc");
INSERT INTO `Products` VALUES (57, 560.00, "Seguros", "http://exposure.mx/images/productos/99-0-ATC-XP.JPG", "Atc con Mosqueton");
INSERT INTO `Products` VALUES (58, 999.00, "Seguros", "http://exposure.mx/images/productos/103-0-Big-Air-XP-Package.JPG", "Big Air Atc-Mosqueton");

/*INSERTS PARA PRODUCTOS DE CATEGORIA ANILLAS Y PAQUETES*/
INSERT INTO `Products` VALUES (59, 1980.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/58-0-PosiWire-Quickpack.JPG", "Posiwire Quickpack 12cm");
INSERT INTO `Products` VALUES (60, 399.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/55-0-Positron-Quickdraw.JPG", "Positron Quickdraw 18cm");
INSERT INTO `Products` VALUES (61, 345.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/57-0-PosiWire-Quickdraw.JPG", "Posiwire Quickdraw 18cm");
INSERT INTO `Products` VALUES (62, 298.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/60-0-FreeWire-Quickdraw.JPG", "Freewire Quickdraw 12cm");
INSERT INTO `Products` VALUES (63, 2298.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/56-0-Positron-Quickpack.JPG", "Positron Quickpack 12cm");

/*INSERTS PARA PRODUCTOS DE CATEGORIA RUNNERS*/
INSERT INTO `Products` VALUES (64, 999.00, "Runners", "http://es3.vmstatic.com/cuerdas-y-cintas-black-diamond-18-mm-nylon-runner-120-cm-95846265-0-150-02.jpg", "Nylon Runner Azul 18mm - 120cm");
INSERT INTO `Products` VALUES (65, 999.00, "Runners", "http://www.vertimania.com/images/P/dynex%20runners%20440-01.jpg", "10mm Dynex 60cm");
INSERT INTO `Products` VALUES (66, 999.00, "Runners", "http://www.vertimania.com/images/P/dynex%20runners%20440-01.jpg", "10mm Dynex 120cm");
INSERT INTO `Products` VALUES (67, 999.00, "Runners", "http://www.vertimania.com/images/P/nylon_runners%20440.jpg", "18mm Nylon 60cm");
INSERT INTO `Products` VALUES (68, 999.00, "Runners", "http://www.vertimania.com/images/P/daisychain_115cm_gry-440.jpg", "Daisy 18mm Nylon 115cm");
INSERT INTO `Products` VALUES (69, 999.00, "Runners", "http://www.vertimania.com/images/P/dynex_dc-440.jpg", "12mm Dynex 115cm");
INSERT INTO `Products` VALUES (70, 999.00, "Runners", "http://www.vertimania.com/images/P/dynex_dc-440.jpg", "12mm Dynex 140cm");
INSERT INTO `Products` VALUES (71, 288.00, "Runners", "http://www.vertimania.com/images/P/daisychain_140-440.jpg", "18mm Nylon 140cm");

/*INSERTS PARA PRODUCTOS DE CATEGORIA CEPILLOS*/
INSERT INTO `Products` VALUES (72, 150.00, "Cepillos", "http://www.vertimania.com/images/P/super-8-440.jpg", "FlexEx Bandas Dedos");
INSERT INTO `Products` VALUES (73, 250.00, "Cepillos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Cepillos");

/*INSERTS PARA PRODUCTOS DE CATEGORIA GUANTES*/
INSERT INTO `Products` VALUES (74, 485.00, "Guantes", "http://exposure.mx/images/productos/154-0-Crag-glove.JPG", "Guantes Crag Slove");
INSERT INTO `Products` VALUES (75, 999.00, "Guantes", "http://exposure.mx/images/productos/455-0-Stone.JPG", "Stone");

/*INSERTS PARA PRODUCTOS DE CATEGORIA CUERDAS*/
INSERT INTO `Products` VALUES (76, 999.00, "Cuerdas", "http://exposure.mx/images/productos/342-0-Marathon-Pro-10-1mm-70m.JPG", "Marathon Pro x70m");
INSERT INTO `Products` VALUES (77, 999.00, "Cuerdas", "http://exposure.mx/images/productos/570-0-Evolution-Velocity-Sharma-70-m.JPG", "Evolution Velocity x70m");
INSERT INTO `Products` VALUES (78, 999.00, "Cuerdas", "http://exposure.mx/images/productos/333-0-Canyon-Tech-9-5mm-61m.JPG", "Canyontech x61m");

/*INSERTS PARA PRODUCTOS DE CATEGORIA MOCHILAS*/
INSERT INTO `Products` VALUES (79, 999.00, "Mochilas", "http://exposure.mx/images/productos/112-0-Onyx-65.JPG", "ONYX 65");
INSERT INTO `Products` VALUES (80, 999.00, "Mochilas", "http://exposure.mx/images/productos/106-0-Mercury-55.JPG", "Mercury 55");
INSERT INTO `Products` VALUES (81, 970.00, "Mochilas", "http://exposure.mx/images/productos/125-0-Super-Chute.JPG", "Superchute");
INSERT INTO `Products` VALUES (82, 1598.00, "Mochilas", "http://exposure.mx/images/productos/454-0-Stone-42-Duffel.JPG", "Stone 42 Duffel");

/*INSERTS PARA PRODUCTOS DE CATEGORIA MOSQUETONES*/
INSERT INTO `Products` VALUES (83, 498.00, "Mosquetones", "http://exposure.mx/images/productos/31-0-Magnetron-RockLock.JPG", "Magnetron RockLock");
INSERT INTO `Products` VALUES (84, 498.00, "Mosquetones", "http://exposure.mx/images/productos/32-0-Magnetron-VaporLock.JPG", "Magnetron GridLock");
INSERT INTO `Products` VALUES (85, 498.00, "Mosquetones", "http://exposure.mx/images/productos/33-0-Magnetron-GridLock.JPG", "Magnetron VaporLock");
INSERT INTO `Products` VALUES (86, 1598.00, "Mosquetones", "http://exposure.mx/images/productos/36-0-GridLock-Screwgate.JPG", "Gridlock c/seguro manual");
INSERT INTO `Products` VALUES (87, 1598.00, "Mosquetones", "http://exposure.mx/images/productos/34-0-RockLock-Screwgate.JPG", "Rocklock c/seguro manual");
INSERT INTO `Products` VALUES (88, 1598.00, "Mosquetones", "http://exposure.mx/images/productos/37-0-VaporLock-Screwgate.JPG", "Vaporlock c/seguro manual");
INSERT INTO `Products` VALUES (89, 1598.00, "Mosquetones", "http://exposure.mx/images/productos/38-0-Mini-Pearabiner-Screwgate.JPG", "Mini pearabiner c/seguro manual");
INSERT INTO `Products` VALUES (90, 1598.00, "Mosquetones", "http://exposure.mx/images/productos/39-0-Nitron-Screwgate.JPG", "Nitron c/seguro manual");
INSERT INTO `Products` VALUES (91, 180.00, "Mosquetones", "http://exposure.mx/images/productos/178-0-Ultra-Tech-HMS-Screw.JPG", "Ultra Tech HMS c/seguro manual");
INSERT INTO `Products` VALUES (92, 198.00, "Mosquetones", "http://exposure.mx/images/productos/528-0-HULK-HMS-SCREW-black.JPG", "Hulk HMS c/seguro manual");

/*INSERTS PARA PRODUCTOS DE CATEGORIA RECIPIENTES*/
INSERT INTO `Products` VALUES (93, 150.00, "Recipientes", "http://exposure.mx/images/productos/313-0-50-oz-Java-Press.JPG", "Taza");
INSERT INTO `Products` VALUES (94, 698.00, "Recipientes", "http://exposure.mx/images/productos/277-0-1-L-Glacier-Stainless-Dukjug.JPG", "Glacier SS - Vacuum Bottle");

/*INSERTS PARA PRODUCTOS DE CATEGORIA GORROS Y GORRAS*/
INSERT INTO `Products` VALUES (95, 455.00, "Gorros", "http://exposure.mx/images/productos/445-0-Tom-Beanie.JPG", "Tom Pon Beanie");
INSERT INTO `Products` VALUES (96, 150.00, "Gorros", "http://exposure.mx/images/productos/243-0-BD-Hat.JPG", "BD Hat");
INSERT INTO `Products` VALUES (97, 150.00, "Gorros", "http://exposure.mx/images/productos/244-0-Pro-Hat.JPG", "Pro Hat");
INSERT INTO `Products` VALUES (98, 150.00, "Gorros", "http://exposure.mx/images/productos/242-0-Trucker-BD-hat.JPG", "BD Trucker Hat");
INSERT INTO `Products` VALUES (99, 150.00, "Gorros", "http://exposure.mx/images/productos/555-0-Walter-Beanie.JPG", "Walter Beanie");
INSERT INTO `Products` VALUES (100, 150.00, "Gorros", "http://exposure.mx/images/productos/554-0-Torre-Wool.JPG", "Torrelwood Beanie Update");
INSERT INTO `Products` VALUES (101, 150.00, "Gorros", "http://exposure.mx/images/productos/508-0-Balaclava.JPG", "BD Balaclava");
INSERT INTO `Products` VALUES (102, 150.00, "Gorros", "http://exposure.mx/images/productos/549-0-Tara-Wool.JPG", "Tara Wool Beanie");
