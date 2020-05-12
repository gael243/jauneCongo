-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2020 at 02:54 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jcongo`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `qteDispo` float NOT NULL,
  `prixKilo` float DEFAULT NULL,
  `prixBouquet` float DEFAULT NULL,
  `prixBotte` float DEFAULT NULL,
  `description` varchar(300) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `qteDispo`, `prixKilo`, `prixBouquet`, `prixBotte`, `description`, `image`) VALUES
(1, 'Banane douce', 10, 2.5, NULL, NULL, 'Nos bananes sont cueillies quand elles sont vert « citron » afin qu\'elles ne s\'écrasent pas durant le transport. Les bananes continuent de mûrir après la cueillette. Si vous souhaitez accélérer le mûrissement, vous pouvez les placer dans un sachet en tissu ou papier, toujours à température ambiante.', 'https://i0.wp.com/jaunecongo.com/wp-content/uploads/2019/06/Banane20douce.jpg'),
(2, 'Banane plantain', 19, 2, NULL, NULL, 'Nos makemba se mangent en frites, en chips, en purée ou bouillies et on peut même les consommer crues. Elles sont cueillis avant d\'être jaunes pour mieux supporter le trajet. Elles mûrissent plus rapidement dans un sac en papier ou en tissu.', 'https://i2.wp.com/jaunecongo.com/wp-content/uploads/2019/06/Banane20plantain1.jpg'),
(3, 'Basilic', 3, NULL, 1, NULL, 'Notre basilic est succulent en sauce pour accompagner vos plats de viandes ou vos spaghettis. Petite astuce: le basilic perd de sa saveur sous la chaleur, il vaut mieux l\'ajouter en fin de cuisson. Il est également délicieux pour épicer vos salades.', 'https://i0.wp.com/jaunecongo.com/wp-content/uploads/2019/06/Basilic9.jpg'),
(4, 'Bitekuteku', 5, NULL, NULL, 0.5, 'Bitekuteku ou feuilles d\'amarante en français se cuisinent généralement à l\'huile avec de l\'ail, de l\'oignon et des solos, mais elles peuvent aussi être cuisinés dans l\'eau bouillante.', 'https://i0.wp.com/jaunecongo.com/wp-content/uploads/2019/06/Bitekuteku20Medium.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
