-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2018 at 05:49 PM
-- Server version: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seagull_radio`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`id`, `name`, `website`, `location`, `logo`, `link`) VALUES
(36, 'Hotel Radio Paris', 'http://hotelradioparis.com/', 'Paris', 'Hotel-Radio-Paris.jpg', 'http://91.121.162.224:9111/stream'),
(37, 'Worldwide FM', 'https://worldwidefm.net/', 'London and beyond', 'Worldwide-FM.png', 'http://worldwidefm.out.airtime.pro:8000/worldwidefm_a'),
(38, 'PBB Radio', 'http://www.laurentgarnier.com/PBB.html', 'Laurent Garniers Basement', 'PBB-Radio.png', 'http://pbb.laurentgarnier.com:8000/pbb128'),
(39, 'Berlin Community Radio', 'http://www.berlincommunityradio.com/', 'Berlin', 'Berlin-Community-Radio.jpg', 'http://berlincommunityradio.out.airtime.pro:8000/berlincommunityradio_b'),
(40, 'Know Wave', 'http://know-wave.com/', 'Los Angeles and beyond', 'Know-Wave.jpeg', 'http://streaming.shoutcast.com/KnowWave?lang=en-us'),
(41, 'The Lot Radio', 'http://www.thelotradio.com/', 'New York ', 'The-Lot-Radio.jpg', 'http://thelot.out.airtime.pro:8000/thelot_a'),
(42, 'Rinse France', 'http://www.rinse.fr/', 'Paris', 'rinse.png', 'http://91.121.165.88:8408/;*.nsv'),
(43, 'Boxout ', 'http://boxout.fm/', 'Dehli', 'Boxout-FM.jpg', 'http://boxoutfm.out.airtime.pro:8000/boxoutfm_a?_ga=1.160255221.974905403.1490015810'),
(44, 'NTS', 'https://www.nts.live/ ', 'London and beyond', 'NTS.jpg', 'https://stream-relay-geo.ntslive.net/stream?t=1522919981208 '),
(45, 'NTS2', 'https://www.nts.live/ ', 'London and beyond', 'NTS2.png', 'https://stream-relay-geo.ntslive.net/stream2?t=1522920748627 '),
(46, 'Radio Quantica ', 'https://www.radioquantica.com/', 'Lisbon via London', 'Radio-Quantica.png', 'http://stream2.radioquantica.com:8000/stream '),
(47, 'London Fields Radio', 'http://www.londonfieldsradio.org/', 'London Fields', 'London-Fields-Radio.png', 'https://stream.radio.co/s23a62e0d3/listen '),
(48, 'Dublab', 'http://dublab.com/ ', 'Los Angeles', 'Dublab.png', 'http://dublab.out.airtime.pro:8000/dublab_b'),
(49, 'Seoul Community Radio', 'http://www.seoulcommunityradio.com/', 'Seoul', 'Seoul-Community-Radio.jpg', 'http://seoulcommunityradio.out.airtime.pro:8000/seoulcommunityradio_a?1466567397161.mp3'),
(50, 'N10.AS', 'http://www.n10.as/ ', 'Montreal', 'N10.jpg', 'http://n10as.out.airtime.pro:8000/n10as_a'),
(51, 'Dublab de ', 'https://dublab.de/radio/', 'Cologne', 'Dublab-de.png', 'http://dublabde.out.airtime.pro:8000/dublabde_a'),
(52, 'Lyl ', 'http://lyl.live/ ', 'Lyon', 'Lyl-Live.jpg', 'http://icecast.lyl.live/live'),
(53, 'Radio80k', 'http://www.radio80k.de/', 'Cologne', 'Radio-80k.png', 'http://radio80k.out.airtime.pro:8000/radio80k_a'),
(54, 'Ness Radio', 'http://nessradio.com/', 'Marrakesh', 'Ness-Radio.png', 'http://radio.nessradio.net:8000/nessradio.mp3'),
(55, 'Balamii ', 'http://player.balamii.com/#', 'South East London', 'Balamii.jpg', 'http://balamii.out.airtime.pro:8000/balamii_a '),
(56, 'Netil Radio ', 'http://www.netilradio.com/', 'East London', 'Netil-Radio.jpg', 'http://edge.mixlr.com/channel/otuyv'),
(57, 'Cashmere Radio ', 'https://cashmereradio.com/listen/', 'Berlin', 'Cashmere-Radio.jpg', 'http://cashmereradio.out.airtime.pro:8000/cashmereradio_b'),
(58, 'Skylab', 'http://skylab-radio.com/', 'Melbourne', 'Skylab.png', 'http://stream.skylab-radio.com:8000/live'),
(59, 'Red Light Radio ', 'http://redlightradio.net/', 'Amsterdam', 'Red-Light-Radio.png', 'http://www.michielgardner.nl:8000/redlightradio'),
(60, 'Dublin Digital Radio', 'http://listen.dublindigitalradio.com/', 'Dublin', 'Dublin-Digital-Radio.png', 'http://dublindigitalradio.out.airtime.pro:8000/dublindigitalradio_a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

