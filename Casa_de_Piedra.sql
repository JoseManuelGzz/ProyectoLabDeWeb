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
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- Indexes for table `Favorites`
--
ALTER TABLE `Favorites`
  ADD PRIMARY KEY (`user_email`, `product_id`),
  ADD FOREIGN KEY(`user_email`) REFERENCES `Users`(`email`),
  ADD FOREIGN KEY(`product_id`) REFERENCES `Products`(`id`);

  /*INSERTS PARA PRODUCTOS DE CATEGORIA ZAPATOS*/
  INSERT INTO `Products` VALUES (1, 1350.00, "Zapatos", "http://exposure.mx/images/productos/30-0-Drifter.JPG", "Drifter");
  INSERT INTO `Products` VALUES (2, 1850.00, "Zapatos", "http://exposure.mx/images/productos/29-2-M5.JPG", "M5");
  INSERT INTO `Products` VALUES (3, 2298.00, "Zapatos", "http://exposure.mx/images/productos/481-0-RedLine.JPG", "RedLine");
  INSERT INTO `Products` VALUES (4, 1950.00, "Zapatos", "http://exposure.mx/images/productos/18-0-prod-1.JPG", "Shark 2.0");
  INSERT INTO `Products` VALUES (5, 1950.00, "Zapatos", "http://exposure.mx/images/productos/378-0-Lotus.JPG", "Lotus");
  INSERT INTO `Products` VALUES (6, 1850.00, "Zapatos", "http://exposure.mx/images/productos/379-0-Lyra.JPG", "Lyra");
  INSERT INTO `Products` VALUES (7, 980.00, "Zapatos", "http://exposure.mx/images/productos/203-0-Mad-Monkey-2-0.JPG", "Mad Monkey Kids");
  INSERT INTO `Products` VALUES (8, 1598.00, "Zapatos", "http://exposure.mx/images/productos/28-0-Flash-2.0.JPG", "Flash 2.0");
  INSERT INTO `Products` VALUES (9, 1598.00, "Zapatos", "http://exposure.mx/images/productos/480-0-Flash-2-0-amarillo.JPG", "Flash Yellow");
  INSERT INTO `Products` VALUES (10, 1698.00, "Zapatos", "http://exposure.mx/images/productos/578-0-Pulse-Positive.JPG", "Pulse Positive");
  INSERT INTO `Products` VALUES (11, 1698.00, "Zapatos", "http://exposure.mx/images/productos/577-0-Pulse-Negative.JPG", "Pulse Negative");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA MAGNESIERAS*/
  INSERT INTO `Products` VALUES (12, 265.00, "Magnesieras", "http://exposure.mx/images/productos/75-0-Mojo-Chalkbag.JPG", "Mojo Chalk Bag");
  INSERT INTO `Products` VALUES (13, 198.00, "Magnesieras", "http://exposure.mx/images/productos/208-0-Koala.JPG", "Koala Chalk Bag");
  INSERT INTO `Products` VALUES (14, 298.00, "Magnesieras", "http://exposure.mx/images/productos/77-0-Mojo-Repo-Chalkbag.JPG", "Mojo Repo Chalk Bag");
  INSERT INTO `Products` VALUES (15, 320.00, "Magnesieras", "http://exposure.mx/images/productos/76-0-Mojo-Zip-Chalkbag.JPG", "Mojo Zip Chalk Bag");
  INSERT INTO `Products` VALUES (16, 180.00, "Magnesieras", "http://exposure.mx/images/productos/210-0-Kids-Chalk-Bag.JPG", "Kids Chalk Bag");
  INSERT INTO `Products` VALUES (17, 198.00, "Magnesieras", "http://exposure.mx/images/productos/209-0-Kangaroo.JPG", "Kangaroo Zip Chalk Bag");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA MAGNESIA*/
  INSERT INTO `Products` VALUES (18, 80.00, "Magnesia", "http://nebula.wsimg.com/f33d0ced084732a2629a4e9c2387063f?AccessKeyId=8656AC0D7DFA467C9BC4&disposition=0&alloworigin=1", "150g Monkey Hands Chalk");
  INSERT INTO `Products` VALUES (19, 45.00, "Magnesia", "http://exposure.mx/images/productos/227-0-White-Gold-Chalk-Block.JPG", "56g Chalk Block");
  INSERT INTO `Products` VALUES (20, 40.00, "Magnesia", "http://exposure.mx/images/productos/228-0-12-Ball-Jar.JPG", "Chalk Sock Jar");
  INSERT INTO `Products` VALUES (21, 165.00, "Magnesia", "http://exposure.mx/images/productos/225-0-White-Gold-100200300-gr-.JPG", "200g Loose Chalk");
  INSERT INTO `Products` VALUES (22, 98.00, "Magnesia", "http://exposure.mx/images/productos/225-0-White-Gold-100200300-gr-.JPG", "100g Loose Chalk");
  INSERT INTO `Products` VALUES (23, 227.00, "Magnesia", "http://exposure.mx/images/productos/225-0-White-Gold-100200300-gr-.JPG", "300g Loose Chalk");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA TAPES*/
  INSERT INTO `Products` VALUES (24, 60.00, "Tapes", "http://images.internetstores.de/products/2501[1470x849].jpg?forceSize=true&forceAspectRatio=true", "Cinta Blanca Grande");
  INSERT INTO `Products` VALUES (25, 35.00, "Tapes", "http://images.internetstores.de/products/371471[1470x849].jpg?forceSize=true&forceAspectRatio=true", "Cinta Blanca Chica");
  INSERT INTO `Products` VALUES (26, 80.00, "Tapes", "http://exposure.mx/images/productos/572-0-1.JPG", "Cinta de Color");
  INSERT INTO `Products` VALUES (27, 170.00, "Tapes", "https://www.optomo.com.au/uploaded/thumbnails/STKIN-SpiderTech-Kinesiology-Tape-5cmx5m-1_2079_800x800.jpg", "Kinesio Tape Spidertech");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA ARNESES*/
  INSERT INTO `Products` VALUES (28, 890.00, "Arneses", "http://exposure.mx/images/productos/247-0-Mars.JPG", "Arnes Mars");
  INSERT INTO `Products` VALUES (29, 890.00, "Arneses", "http://exposure.mx/images/productos/248-0-Venus.JPG", "Arnes Venus");
  INSERT INTO `Products` VALUES (30, 2598.00, "Arneses", "http://exposure.mx/images/productos/146-0-Big-Gun.JPG", "Big Gun Harness");
  INSERT INTO `Products` VALUES (31, 1250.00, "Arneses", "http://exposure.mx/images/productos/451-0-Primrose.JPG", "Primerose Harness");
  INSERT INTO `Products` VALUES (32, 2190.00, "Arneses", "http://exposure.mx/images/productos/471-0-Paquete-Primrose.JPG", "Primerose Harness Package");
  INSERT INTO `Products` VALUES (33, 1550.00, "Arneses", "http://exposure.mx/images/productos/152-0-Momentum-DS.JPG", "Momentum Ds Harness");
  INSERT INTO `Products` VALUES (34, 2190.00, "Arneses", "http://exposure.mx/images/productos/470-0-Paquete-Momentum.JPG", "Momentum Harness Package");
  INSERT INTO `Products` VALUES (35, 998.00, "Arneses", "http://exposure.mx/images/productos/161-0-Wiz-Kid.JPG", "WIZ KID Harness");
  INSERT INTO `Products` VALUES (36, 1998.00, "Arneses", "http://exposure.mx/images/productos/145-0-Ozone.JPG", "Ozone");
  INSERT INTO `Products` VALUES (37, 2198.00, "Arneses", "http://exposure.mx/images/productos/144-0-Chaos.JPG", "Chaos");
  INSERT INTO `Products` VALUES (38, 1598.00, "Arneses", "http://www.vertimania.com/images/P/flight_cglv_440.jpg", "Flight");
  INSERT INTO `Products` VALUES (39, 1598.00, "Arneses", "http://www.deporteslaser.es/2334-thickbox_default/black-diamond-arnes-siren-mujer.jpg", "Siren");


  /*INSERTS PARA PRODUCTOS DE CATEGORIA CASCOS*/
  INSERT INTO `Products` VALUES (40, 1298.00, "Cascos", "http://exposure.mx/images/productos/172-3-Half-Dome.JPG", "Casco Half Dome - Azul");
  INSERT INTO `Products` VALUES (41, 1298.00, "Cascos", "http://exposure.mx/images/productos/172-0-Half-Dome.JPG", "Casco Half Dome - Naranja");
  INSERT INTO `Products` VALUES (42, 1298.00, "Cascos", "http://exposure.mx/images/productos/172-1-Half-Dome.JPG", "Casco Half Dome - Negro");
  INSERT INTO `Products` VALUES (43, 1298.00, "Cascos", "http://fisura.org/media/catalog/product/cache/1/image/700x700/9df78eab33525d08d6e5fb8d27136e95/c/a/casco_half_dome_rojo_de_black_diamond.jpg", "Casco Half Dome / Rojo");
  INSERT INTO `Products` VALUES (44, 1798.00, "Cascos", "http://exposure.mx/images/productos/170-0-Vector.JPG", "Casco Vector - Negro");
  INSERT INTO `Products` VALUES (45, 1798.00, "Cascos", "http://exposure.mx/images/productos/170-3-Vector.JPG", "Casco Vector - Gris c/azul");
  INSERT INTO `Products` VALUES (46, 1798.00, "Cascos", "http://exposure.mx/images/productos/170-2-Vector.JPG", "Casco Vector - Gris c/naranja");
  INSERT INTO `Products` VALUES (47, 2598.00, "Cascos", "http://exposure.mx/images/productos/169-0-Vapor.JPG", "Casco VAPOR - Rojo");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA ASEGURADORES Y DESCENSORES*/
  INSERT INTO `Products` VALUES (48, 1749.00, "Aseguradores y Descensores", "https://www.forumsport.com/img/productos/1000x1000/PETZL%20ASEGURADOR-RAPELADOR%20GRIGRI%202-393008_00.jpg", "Gri Gri");
  INSERT INTO `Products` VALUES (49, 349.00, "Aseguradores y Descensores", "http://exposure.mx/images/productos/100-0-ATC.JPG", "Atc");
  INSERT INTO `Products` VALUES (50, 585.00, "Aseguradores y Descensores", "http://exposure.mx/images/productos/97-2-ATC-Guide.JPG", "Atc Guide");
  INSERT INTO `Products` VALUES (51, 625.00, "Aseguradores y Descensores", "http://exposure.mx/images/productos/102-0-Big-Air-Package.JPG", "Big Air Package");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA ANILLAS Y PAQUETES*/
  INSERT INTO `Products` VALUES (52, 1980.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/58-0-PosiWire-Quickpack.JPG", "Posiwire Quickpack 12cm");
  INSERT INTO `Products` VALUES (53, 399.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/55-0-Positron-Quickdraw.JPG", "Positron Quickdraw 18cm");
  INSERT INTO `Products` VALUES (54, 345.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/57-0-PosiWire-Quickdraw.JPG", "Posiwire Quickdraw 18cm");
  INSERT INTO `Products` VALUES (55, 298.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/60-0-FreeWire-Quickdraw.JPG", "Freewire Quickdraw 12cm");
  INSERT INTO `Products` VALUES (56, 2298.00, "Anillas y Paquetes", "http://exposure.mx/images/productos/56-0-Positron-Quickpack.JPG", "Positron Quickpack 12cm");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA RUNNERS*/
  INSERT INTO `Products` VALUES (57, 210.00, "Runners", "http://www.vertimania.com/images/P/dynex%20runners%20440-01.jpg", "10mm Dynex 60cm");
  INSERT INTO `Products` VALUES (58, 360.00, "Runners", "http://www.vertimania.com/images/P/dynex%20runners%20440-01.jpg", "10mm Dynex 120cm");
  INSERT INTO `Products` VALUES (59, 98.00, "Runners", "http://www.vertimania.com/images/P/nylon_runners%20440.jpg", "18mm Nylon 60cm");
  INSERT INTO `Products` VALUES (60, 170.00, "Runners", "http://www.vertimania.com/images/P/daisychain_140-440.jpg", "18mm Nylon 120cm");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA CEPILLOS*/
  INSERT INTO `Products` VALUES (61, 150.00, "Cepillos", "http://www.vertimania.com/images/P/super-8-440.jpg", "FlexEx Bandas Dedos");
  INSERT INTO `Products` VALUES (62, 250.00, "Cepillos", "http://www.vertimania.com/images/P/super-8-440.jpg", "Cepillos");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA GUANTES*/
  INSERT INTO `Products` VALUES (63, 485.00, "Guantes", "http://exposure.mx/images/productos/154-0-Crag-glove.JPG", "Crag Glove");
  INSERT INTO `Products` VALUES (64, 670.00, "Guantes", "http://exposure.mx/images/productos/455-0-Stone.JPG", "Stone Glove");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA CUERDAS*/
  INSERT INTO `Products` VALUES (65, 4998.00, "Cuerdas", "http://exposure.mx/images/productos/342-0-Marathon-Pro-10-1mm-70m.JPG", "Marathon Pro x70m");
  INSERT INTO `Products` VALUES (66, 4998.00, "Cuerdas", "http://exposure.mx/images/productos/570-0-Evolution-Velocity-Sharma-70-m.JPG", "Evolution Velocity x70m");
  INSERT INTO `Products` VALUES (67, 5998.00, "Cuerdas", "http://exposure.mx/images/productos/333-0-Canyon-Tech-9-5mm-61m.JPG", "Canyontech x61m");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA MOCHILAS*/
  INSERT INTO `Products` VALUES (68, 4698.00, "Mochilas", "http://exposure.mx/images/productos/112-0-Onyx-65.JPG", "ONYX 65 Backpack");
  INSERT INTO `Products` VALUES (69, 4898.00, "Mochilas", "http://exposure.mx/images/productos/106-0-Mercury-55.JPG", "Mercury 55 Backpack");
  INSERT INTO `Products` VALUES (70, 970.00, "Mochilas", "https://blackdiamondequipment.com/on/demandware.static/-/Sites-bdel/default/dwd1ed655f/products/climbing_essentials/359998_CURR_Super_Chute_Rope_Bag_clsd_web.jpg", "Superchute Rope Bag - Amarillo");
  INSERT INTO `Products` VALUES (71, 970.00, "Mochilas", "http://exposure.mx/images/productos/125-0-Super-Chute.JPG", "Superchute Rope Bag - Verde");
  INSERT INTO `Products` VALUES (72, 970.00, "Mochilas", "http://exposure.mx/images/productos/125-2-Super-Chute.JPG", "Superchute Rope Bag - Rojo");
  INSERT INTO `Products` VALUES (73, 1598.00, "Mochilas", "http://exposure.mx/images/productos/454-0-Stone-42-Duffel.JPG", "Stone 42 Duffel");
  INSERT INTO `Products` VALUES (74, 1498.00, "Mochilas", "http://exposure.mx/images/productos/114-0-Magnum-20.JPG", "Magnum 20 Backpack");
  INSERT INTO `Products` VALUES (75, 1098.00, "Mochilas", "http://exposure.mx/images/productos/123-4-Bullet.JPG", "Bullet 16 Backpack");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA MOSQUETONES*/
  INSERT INTO `Products` VALUES (76, 498.00, "Mosquetones", "http://exposure.mx/images/productos/31-0-Magnetron-RockLock.JPG", "Magnetron RockLock Carabiner");
  INSERT INTO `Products` VALUES (77, 498.00, "Mosquetones", "http://exposure.mx/images/productos/32-0-Magnetron-VaporLock.JPG", "Magnetron GridLock Carabiner");
  INSERT INTO `Products` VALUES (78, 498.00, "Mosquetones", "http://exposure.mx/images/productos/33-0-Magnetron-GridLock.JPG", "Magnetron VaporLock Carabiner");
  INSERT INTO `Products` VALUES (79, 398.00, "Mosquetones", "http://exposure.mx/images/productos/36-0-GridLock-Screwgate.JPG", "Gridlock c/seguro manual");
  INSERT INTO `Products` VALUES (80, 248.00, "Mosquetones", "http://exposure.mx/images/productos/34-0-RockLock-Screwgate.JPG", "Rocklock c/seguro manual");
  INSERT INTO `Products` VALUES (81, 290.00, "Mosquetones", "http://exposure.mx/images/productos/37-0-VaporLock-Screwgate.JPG", "Vaporlock c/seguro manual");
  INSERT INTO `Products` VALUES (82, 260.00, "Mosquetones", "http://exposure.mx/images/productos/38-0-Mini-Pearabiner-Screwgate.JPG", "Mini pearabiner c/seguro manual");
  INSERT INTO `Products` VALUES (83, 280.00, "Mosquetones", "http://exposure.mx/images/productos/39-0-Nitron-Screwgate.JPG", "Nitron c/seguro manual");
  INSERT INTO `Products` VALUES (84, 180.00, "Mosquetones", "http://exposure.mx/images/productos/178-0-Ultra-Tech-HMS-Screw.JPG", "Ultra Tech HMS c/seguro manual");
  INSERT INTO `Products` VALUES (85, 198.00, "Mosquetones", "http://exposure.mx/images/productos/528-0-HULK-HMS-SCREW-black.JPG", "Hulk HMS c/seguro manual");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA RECIPIENTES*/
  INSERT INTO `Products` VALUES (86, 150.00, "Recipientes", "http://exposure.mx/images/productos/313-0-50-oz-Java-Press.JPG", "Taza");
  INSERT INTO `Products` VALUES (87, 698.00, "Recipientes", "http://exposure.mx/images/productos/277-0-1-L-Glacier-Stainless-Dukjug.JPG", "Glacier SS - Vacuum Bottle");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA GORROS Y GORRAS*/
  INSERT INTO `Products` VALUES (88, 455.00, "Gorros", "http://exposure.mx/images/productos/445-0-Tom-Beanie.JPG", "Tom Pon Beanie");
  INSERT INTO `Products` VALUES (89, 398.00, "Gorros", "http://exposure.mx/images/productos/243-0-BD-Hat.JPG", "BD Hat - Café");
  INSERT INTO `Products` VALUES (90, 398.00, "Gorros", "http://exposure.mx/images/productos/243-2-BD-Hat.JPG", "BD Hat - Negro");
  INSERT INTO `Products` VALUES (91, 450.00, "Gorros", "http://exposure.mx/images/productos/244-1-Pro-Hat.JPG", "Pro Hat - Negro");
  INSERT INTO `Products` VALUES (92, 450.00, "Gorros", "http://exposure.mx/images/productos/244-0-Pro-Hat.JPG", "Pro Hat - Azul");
  INSERT INTO `Products` VALUES (93, 398.00, "Gorros", "http://exposure.mx/images/productos/242-0-Trucker-BD-hat.JPG", "BD Trucker Hat");
  INSERT INTO `Products` VALUES (94, 598.00, "Gorros", "http://exposure.mx/images/productos/555-2-Walter-Beanie.JPG", "Walter Beanie");
  INSERT INTO `Products` VALUES (95, 598.00, "Gorros", "http://exposure.mx/images/productos/554-0-Torre-Wool.JPG", "Torre Wool Beanie Update");
  INSERT INTO `Products` VALUES (96, 669.00, "Gorros", "http://exposure.mx/images/productos/553-2-Coefficient-Balaclava.JPG", "Coefficient Balaclava");
  INSERT INTO `Products` VALUES (97, 455.00, "Gorros", "http://exposure.mx/images/productos/508-0-Balaclava.JPG", "BD Balaclava");
  INSERT INTO `Products` VALUES (98, 698.00, "Gorros", "http://exposure.mx/images/productos/549-0-Tara-Wool.JPG", "Tara Wool Beanie");
  INSERT INTO `Products` VALUES (99, 455.00, "Gorros", "http://exposure.mx/images/productos/505-1-BOB-Beanie.JPG", "Bob Beanie");
  INSERT INTO `Products` VALUES (100, 450.00, "Gorros", "http://exposure.mx/images/productos/552-0-Dome-Windstopper-Hybrid.JPG", "Dome Windstopper Beanie");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA FISURA Y GRAN PARED*/
  INSERT INTO `Products` VALUES (101, 1390.00, "Fisura y Gran Pared", "http://exposure.mx/images/productos/519-3-Index-Ascender.JPG", "Index - Left");
  INSERT INTO `Products` VALUES (102, 1390.00, "Fisura y Gran Pared", "http://exposure.mx/images/productos/519-2-Index-Ascender.JPG", "Index - Right");
  INSERT INTO `Products` VALUES (103, 598.00, "Fisura y Gran Pared", "http://exposure.mx/images/productos/124-0-Dynex-Daisy-Chain.JPG", "12mm Dynex Daisy Chain 115cm");
  INSERT INTO `Products` VALUES (104, 698.00, "Fisura y Gran Pared", "http://exposure.mx/images/productos/124-0-Dynex-Daisy-Chain.JPG", "12mm Dynex Daisy Chain 140cm");
  INSERT INTO `Products` VALUES (105, 288.00, "Fisura y Gran Pared", "http://exposure.mx/images/productos/121-0-Nylon-Daisy-Chain.JPG", "18mm Nylon Daisy Chain 140cm");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA BOULDER Y FERRATA*/
  INSERT INTO `Products` VALUES (106, 145.00, "Boulder y Ferrata", "http://exposure.mx/images/productos/81-0-Forearm-Trainer.JPG", "Forearm Trainer");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA LAMPARAS*/
  INSERT INTO `Products` VALUES (107, 1098.00, "Lamparas", "http://exposure.mx/images/productos/61-0-Storm.JPG", "Storm Headlamp");
  INSERT INTO `Products` VALUES (108, 1298.00, "Lamparas", "http://exposure.mx/images/productos/63-0-ReVolt.JPG", "Revolt Headlamp");
  INSERT INTO `Products` VALUES (109, 698.00, "Lamparas", "http://exposure.mx/images/productos/64-0-Cosmo.JPG", "Cosmo Headlamp");
  INSERT INTO `Products` VALUES (110, 898.00, "Lamparas", "http://exposure.mx/images/productos/62-0-Spot.JPG", "Spot Headlamp");
  INSERT INTO `Products` VALUES (111, 998.00, "Lamparas", "http://exposure.mx/images/productos/467-0-Ember-Power-Light.JPG", "Ember Power Light");
  INSERT INTO `Products` VALUES (112, 898.00, "Lamparas", "http://exposure.mx/images/productos/69-0-Voyager.JPG", "Voyager Lantern Azul");

  /*INSERTS PARA PRODUCTOS DE CATEGORIA SEWN SLINGS*/
  INSERT INTO `Products` VALUES (113, 798.00, "Sewn Slings", "http://mediacdn.shopatron.com/media/mfg/735/option_image/thm/t440_x1_da5e16ad2996634db9eadc245bb9fc12_903447_161605.jpg?1419290594", "Chain Reactor Long Neon Green");
  INSERT INTO `Products` VALUES (114, 598.00, "Sewn Slings", "http://mediacdn.shopatron.com/media/mfg/735/product_image/thm/t322_73471777492437d8f845a92437fee2dc.jpg?1419290587", "Chain Reactor Pro Neon Green");
