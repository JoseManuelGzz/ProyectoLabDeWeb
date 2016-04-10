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
  `description` text NOT NULL,
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
INSERT INTO `Products` VALUES (1, 800.00, "SC Bandit ofrece la versatilidad de la Bandit con la conveniencia de un sistema de cierre de velcro. La doble capa superior sintética proporciona una gran comodidad y rendimiento.", "Gatas", "http://www.vertimania.com/images/P/BANDIT%20SC%20440.jpg", "Onsight");
INSERT INTO `Products` VALUES (2, 800.00, "El último diseño de Chris Sharma, el Luchador es un modelo ideal para escaladores de un nivel alto e intermedio que les guste todo tipo de escalada el Luchador SC esta inspirado por el luchador interior de todos nosotros que luchan en medio de la roca; se amoldan perfecto a tu pie gracias al nuevo diseño de lengüeta que se acopla fácilmente a tu morfología. Recomendado para todo tipo de rutas deportivas (All Around) por ser una zapatilla técnica pero muy cómoda, con un perfil puntera semi-asimétrica que permite un gran control en los bordes pequeños, así como grietas finas.", "Gatas", "http://www.vertimania.com/images/P/luchadorsc400.jpg", "Banshee");
INSERT INTO `Products` VALUES (3, 800.00, "Con una talla única para todos, diseño simple, el Vario Speed es una gran opción para las escuelas de guía, gimnasios y programas de rock al aire libre.", "Gatas", "http://www.vertimania.com/images/P/Vario%20speed%20440%20.jpg", "Mugen Tech");
INSERT INTO `Products` VALUES (4, 800.00, "Para los que prefieren un arnés completo para protegerse de las caídas.  diseñado para cualquier tipo de actividadnvertical, se suele utilizar para alpinismo. ", "Gatas", "http://www.vertimania.com/images/P/C05-N%20440.jpg", "Conflict");
INSERT INTO `Products` VALUES (5, 800.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Demon");
INSERT INTO `Products` VALUES (6, 800.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Frenzy Velcro");
INSERT INTO `Products` VALUES (7, 800.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Mugen Tech Lance");
INSERT INTO `Products` VALUES (8, 1350.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Drifter");
INSERT INTO `Products` VALUES (9, 1700.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "M5");
INSERT INTO `Products` VALUES (10, 2298.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Red Line");
INSERT INTO `Products` VALUES (11, 1950.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Shark 2.0");
INSERT INTO `Products` VALUES (12, 1950.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Lotus");
INSERT INTO `Products` VALUES (13, 1850.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Lyra");
INSERT INTO `Products` VALUES (14, 950.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Mad Monkey");
INSERT INTO `Products` VALUES (15, 1598.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Flash");
INSERT INTO `Products` VALUES (16, 1598.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Flash Yellow");
INSERT INTO `Products` VALUES (17, 1698.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Pulse Positive");
INSERT INTO `Products` VALUES (18, 1698.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Gatas", "http://www.vertimania.com/images/P/super-8-440.jpg", "Pulse Negative");

/*INSERTS PARA PRODUCTOS DE CATEGORIA MAGNESIERAS*/
INSERT INTO `Products` VALUES (19, 265.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Magnesiera Mojo Chalk Bag");
INSERT INTO `Products` VALUES (20, 178.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Koala");
INSERT INTO `Products` VALUES (21, 298.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Mojo Repo Chalk Bag");
INSERT INTO `Products` VALUES (22, 320.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Mojo Zip Chalk Bag");
INSERT INTO `Products` VALUES (23, 168.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Kids Chalk Bag");
INSERT INTO `Products` VALUES (24, 198.00, "Hecho para ser increíblemente fuerte, ligero y combinar la función de descensor con asegurador dependiendo si utilizas el orificio ancho o angosto.", "Magnesieras", "http://www.vertimania.com/images/P/super-8-440.jpg", "Kangaroo Zip Chalk");
