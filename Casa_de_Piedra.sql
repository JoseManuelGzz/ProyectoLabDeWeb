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
INSERT INTO `Products` VALUES (8, 1350.00, "Gatas", "https://www.dropbox.com/s/lshrecrz01a0m6f/30-0-Drifter.JPG?dl=0", "Drifter");
INSERT INTO `Products` VALUES (9, 1700.00, "Gatas", "https://www.dropbox.com/s/gtkgap9wu6g08sq/29-2-M5.JPG?dl=0", "M5");
INSERT INTO `Products` VALUES (10, 2298.00, "Gatas", "https://www.dropbox.com/s/61vxq3o18cz2m0u/481-0-RedLine.JPG?dl=0", "RedLine");
INSERT INTO `Products` VALUES (11, 1950.00, "Gatas", "https://www.dropbox.com/s/z4324wd99htl29t/18-0-prod-1.JPG?dl=0", "Shark 2.0");
INSERT INTO `Products` VALUES (12, 1950.00, "Gatas", "https://www.dropbox.com/s/iffmenf54z9c5np/378-0-Lotus.JPG?dl=0", "Lotus");
INSERT INTO `Products` VALUES (13, 1850.00, "Gatas", "https://www.dropbox.com/s/yxhcsbida5gnx85/379-0-Lyra.JPG?dl=0", "Lyra");
INSERT INTO `Products` VALUES (14, 950.00, "Gatas", "https://www.dropbox.com/s/gsizw37moc04l2u/203-0-Mad-Monkey-2-0.JPG?dl=0", "Mad Monkey");
INSERT INTO `Products` VALUES (15, 1598.00, "Gatas", "https://www.dropbox.com/s/3eq2ftmw28z8f2f/28-0-Flash-2.0.JPG?dl=0", "Flash 2.0");
INSERT INTO `Products` VALUES (16, 1598.00, "Gatas", "https://www.dropbox.com/s/gy6v85zu6gljb66/480-0-Flash-2-0-amarillo.JPG?dl=0", "Flash Yellow");
INSERT INTO `Products` VALUES (17, 1698.00, "Gatas", "https://www.dropbox.com/s/5d6txmoo6fmxxnx/578-0-Pulse-Positive.JPG?dl=0", "Pulse Positive");
INSERT INTO `Products` VALUES (18, 1698.00, "Gatas", "https://www.dropbox.com/s/iwb6m29kdx3f6nf/577-0-Pulse-Negative.JPG?dl=0", "Pulse Negative");

/*INSERTS PARA PRODUCTOS DE CATEGORIA MAGNESIERAS*/
INSERT INTO `Products` VALUES (19, 265.00, "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Magnesiera Mojo Chalk Bag");
INSERT INTO `Products` VALUES (20, 178.00, "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Koala");
INSERT INTO `Products` VALUES (21, 298.00, "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Mojo Repo Chalk Bag");
INSERT INTO `Products` VALUES (22, 320.00, "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Mojo Zip Chalk Bag");
INSERT INTO `Products` VALUES (23, 168.00, "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Kids Chalk Bag");
INSERT INTO `Products` VALUES (24, 198.00, "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Kangaroo Zip Chalk");

/*INSERTS PARA PRODUCTOS DE CATEGORIA MAGNESIA*/
INSERT INTO `Products` VALUES (25, 40.00, "Magnesia", "http://www.vertimania.com/images/P/super-8-440.jpg", "Bolas de Magnesia");
INSERT INTO `Products` VALUES (26, 86.00, "Magnesia", "http://www.vertimania.com/images/P/super-8-440.jpg", "Monkey Hands");
INSERT INTO `Products` VALUES (27, 45.00, "Magnesia", "http://www.vertimania.com/images/P/super-8-440.jpg", "Cuadro de Magnesia");
INSERT INTO `Products` VALUES (28, 60.00, "Magnesia", "http://www.vertimania.com/images/P/super-8-440.jpg", "Frasco Grande");
INSERT INTO `Products` VALUES (29, 40.00, "Magnesia", "http://www.vertimania.com/images/P/super-8-440.jpg", "Frasco Chico");
INSERT INTO `Products` VALUES (30, 145.00, "Magnesia", "http://www.vertimania.com/images/P/super-8-440.jpg", "Magnesia en Bolsa 200g");
INSERT INTO `Products` VALUES (31, 85.00, "Magnesia", "http://www.vertimania.com/images/P/super-8-440.jpg", "Magnesia en Bolsa 100g");
INSERT INTO `Products` VALUES (32, 215.00, "Magnesia", "http://www.vertimania.com/images/P/super-8-440.jpg", "Magnesia en Bolsa 300g");

/*INSERTS PARA PRODUCTOS DE CATEGORIA CINTAS*/
INSERT INTO `Products` VALUES (33, 60.00, "Cintas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Cinta Blanca Grande");
INSERT INTO `Products` VALUES (34, 35.00, "Cintas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Cinta Blanca Chica");
INSERT INTO `Products` VALUES (35, 80.00, "Cintas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Cinta de Color");

/*INSERTS PARA PRODUCTOS DE CATEGORIA ARNESES*/
INSERT INTO `Products` VALUES (36, 890.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Arnes Mars");
INSERT INTO `Products` VALUES (37, 890.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Arnes Venus");
INSERT INTO `Products` VALUES (38, 2450.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Big Gun");
INSERT INTO `Products` VALUES (39, 1050.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Primerose");
INSERT INTO `Products` VALUES (40, 1998.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Primerose Paquete");
INSERT INTO `Products` VALUES (41, 1050.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Momentum Ds");
INSERT INTO `Products` VALUES (42, 1998.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Momentum Paquete");
INSERT INTO `Products` VALUES (43, 950.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "WIZ KID");
INSERT INTO `Products` VALUES (44, 890.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Ozone");
INSERT INTO `Products` VALUES (45, 980.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Chaos");
INSERT INTO `Products` VALUES (46, 950.00, "Arneses", "http://www.vertimania.com/images/P/super-8-440.jpg", "Flight");

/*INSERTS PARA PRODUCTOS DE CATEGORIA CASCOS*/
INSERT INTO `Products` VALUES (47, 1298.00, "Cascos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Casco Half Dome / Azul");
INSERT INTO `Products` VALUES (48, 1298.00, "Cascos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Casco Half Dome / Naranja");
INSERT INTO `Products` VALUES (49, 1298.00, "Cascos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Casco Half Dome / Rojo");
INSERT INTO `Products` VALUES (50, 1798.00, "Cascos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Casco Vector / Negro");
INSERT INTO `Products` VALUES (51, 1798.00, "Cascos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Casco Vector / Gris");
INSERT INTO `Products` VALUES (52, 2598.00, "Cascos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Casco VAPOR / Rojo");
INSERT INTO `Products` VALUES (53, 2598.00, "Cascos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Casco VAPOR / Gris");

/*INSERTS PARA PRODUCTOS DE CATEGORIA SEGUROS*/
INSERT INTO `Products` VALUES (54, 1749.00, "Seguros", "http://www.vertimania.com/images/P/super-8-440.jpg", "Gri Gri");
INSERT INTO `Products` VALUES (55, 349.00, "Seguros", "http://www.vertimania.com/images/P/super-8-440.jpg", "Atc");
INSERT INTO `Products` VALUES (56, 560.00, "Seguros", "http://www.vertimania.com/images/P/super-8-440.jpg", "Atc con Mosqueton");
INSERT INTO `Products` VALUES (57, 999.00, "Seguros", "http://www.vertimania.com/images/P/super-8-440.jpg", "Big Air Atc-Mosqueton");

/*INSERTS PARA PRODUCTOS DE CATEGORIA BANDAS*/
INSERT INTO `Products` VALUES (58, 1998.00, "Bandas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Posiwire Paquete de 6");
INSERT INTO `Products` VALUES (59, 999.00, "Bandas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Positron Quickdraw 18cm");
INSERT INTO `Products` VALUES (60, 999.00, "Bandas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Posiwire Quickdraw 18cm");
INSERT INTO `Products` VALUES (61, 999.00, "Bandas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Freewire Quickdraw 12cm");
INSERT INTO `Products` VALUES (62, 999.00, "Bandas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Positron Paquete de 6");

/*INSERTS PARA PRODUCTOS DE CATEGORIA RUNNERS*/
INSERT INTO `Products` VALUES (63, 999.00, "Runners", "http://www.vertimania.com/images/P/super-8-440.jpg", "Nylon Runner Azul 18mm - 120cm");
INSERT INTO `Products` VALUES (64, 999.00, "Runners", "http://www.vertimania.com/images/P/super-8-440.jpg", "10mm Dynex 60cm");
INSERT INTO `Products` VALUES (65, 999.00, "Runners", "http://www.vertimania.com/images/P/super-8-440.jpg", "10mm Dynex 120cm");
INSERT INTO `Products` VALUES (66, 999.00, "Runners", "http://www.vertimania.com/images/P/super-8-440.jpg", "18mm Nylon 60cm");
INSERT INTO `Products` VALUES (67, 999.00, "Runners", "http://www.vertimania.com/images/P/super-8-440.jpg", "DAISY");
INSERT INTO `Products` VALUES (68, 999.00, "Runners", "http://www.vertimania.com/images/P/super-8-440.jpg", "12mm Dynex 115cm");
INSERT INTO `Products` VALUES (69, 999.00, "Runners", "http://www.vertimania.com/images/P/super-8-440.jpg", "12mm Dynex 140cm");
INSERT INTO `Products` VALUES (70, 288.00, "Runners", "http://www.vertimania.com/images/P/super-8-440.jpg", "18mm Nylon 140cm");

/*INSERTS PARA PRODUCTOS DE CATEGORIA CEPILLOS*/
INSERT INTO `Products` VALUES (71, 150.00, "Cepillos", "http://www.vertimania.com/images/P/super-8-440.jpg", "FlexEx Bandas Dedos");
INSERT INTO `Products` VALUES (72, 250.00, "Cepillos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Cepillos");

/*INSERTS PARA PRODUCTOS DE CATEGORIA GUANTES*/
INSERT INTO `Products` VALUES (73, 485.00, "Guantes", "http://www.vertimania.com/images/P/super-8-440.jpg", "Guantes Crag Slove");
INSERT INTO `Products` VALUES (74, 999.00, "Guantes", "http://www.vertimania.com/images/P/super-8-440.jpg", "Stone");

/*INSERTS PARA PRODUCTOS DE CATEGORIA CUERDAS*/
INSERT INTO `Products` VALUES (75, 999.00, "Cuerdas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Marathon Pro x70m");
INSERT INTO `Products` VALUES (76, 999.00, "Cuerdas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Ev Velocity x70m");
INSERT INTO `Products` VALUES (77, 999.00, "Cuerdas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Canyontech x61m");

/*INSERTS PARA PRODUCTOS DE CATEGORIA MOCHILAS*/
INSERT INTO `Products` VALUES (78, 999.00, "Mochilas", "http://www.vertimania.com/images/P/super-8-440.jpg", "ONYX 65");
INSERT INTO `Products` VALUES (79, 999.00, "Mochilas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Mercury 55");
INSERT INTO `Products` VALUES (80, 970.00, "Mochilas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Superchute");
INSERT INTO `Products` VALUES (81, 1598.00, "Mochilas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Stone 42 Duffel");

/*INSERTS PARA PRODUCTOS DE CATEGORIA MOSQUETONES*/
INSERT INTO `Products` VALUES (82, 498.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Magnetron RockLock");
INSERT INTO `Products` VALUES (83, 498.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Magnetron GridLock");
INSERT INTO `Products` VALUES (84, 498.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Magnetron VaporLock");
INSERT INTO `Products` VALUES (85, 1598.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Gridlock c/seguro manual");
INSERT INTO `Products` VALUES (86, 1598.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Rocklock c/seguro manual");
INSERT INTO `Products` VALUES (87, 1598.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Vaporlock c/seguro manual");
INSERT INTO `Products` VALUES (88, 1598.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Mini pearabiner c/seguro manual");
INSERT INTO `Products` VALUES (89, 1598.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Nitron c/seguro manual");
INSERT INTO `Products` VALUES (90, 180.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Ultra Tech HMS c/seguro manual");
INSERT INTO `Products` VALUES (91, 198.00, "Mosquetones", "http://www.vertimania.com/images/P/super-8-440.jpg", "Hulk HMS c/seguro manual");

/*INSERTS PARA PRODUCTOS DE CATEGORIA RECIPIENTES*/
INSERT INTO `Products` VALUES (92, 150.00, "Recipientes", "http://www.vertimania.com/images/P/super-8-440.jpg", "Taza");
INSERT INTO `Products` VALUES (93, 698.00, "Recipientes", "http://www.vertimania.com/images/P/super-8-440.jpg", "Glacier SS - Vacuum Bottle");

/*INSERTS PARA PRODUCTOS DE CATEGORIA GORROS Y GORRAS*/
INSERT INTO `Products` VALUES (94, 455.00, "Gorros", "http://www.vertimania.com/images/P/super-8-440.jpg", "Tom Pon Beanie");
INSERT INTO `Products` VALUES (95, 150.00, "Gorros", "http://www.vertimania.com/images/P/super-8-440.jpg", "BD Hat");
INSERT INTO `Products` VALUES (96, 150.00, "Gorros", "http://www.vertimania.com/images/P/super-8-440.jpg", "Pro Hat");
INSERT INTO `Products` VALUES (97, 150.00, "Gorros", "http://www.vertimania.com/images/P/super-8-440.jpg", "BD Trucker Hat");
INSERT INTO `Products` VALUES (98, 150.00, "Gorros", "http://www.vertimania.com/images/P/super-8-440.jpg", "Walter Beanie");
INSERT INTO `Products` VALUES (99, 150.00, "Gorros", "http://www.vertimania.com/images/P/super-8-440.jpg", "Torrelwood Beanie Update");
INSERT INTO `Products` VALUES (100, 150.00, "Gorros", "http://www.vertimania.com/images/P/super-8-440.jpg", "BD Balaclava");
INSERT INTO `Products` VALUES (101, 150.00, "Gorros", "http://www.vertimania.com/images/P/super-8-440.jpg", "Tara Wool Beanie");
