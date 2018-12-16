-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2018 at 03:42 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hakaton-tekama`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE `komentari` (
  `sadrzaj` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum` datetime NOT NULL,
  `idProfesor` int(11) NOT NULL,
  `idObjava` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moze_citati`
--

CREATE TABLE `moze_citati` (
  `godina` int(11) NOT NULL,
  `idObjava` varchar(20) NOT NULL,
  `idOdeljenje` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `moze_citati`
--

INSERT INTO `moze_citati` (`godina`, `idObjava`, `idOdeljenje`) VALUES
(2, '5c15f7fc079783.97876', '');

-- --------------------------------------------------------

--
-- Table structure for table `objava`
--

CREATE TABLE `objava` (
  `idObjava` varchar(20) NOT NULL,
  `html` longtext NOT NULL,
  `datum` datetime NOT NULL,
  `kategorija` varchar(45) NOT NULL,
  `predmet` varchar(45) NOT NULL,
  `idProfesor` int(11) NOT NULL,
  `naslov` varchar(80) NOT NULL,
  `opis` mediumtext NOT NULL,
  `podnaslov` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objava`
--

INSERT INTO `objava` (`idObjava`, `html`, `datum`, `kategorija`, `predmet`, `idProfesor`, `naslov`, `opis`, `podnaslov`) VALUES
('5c15feb417bc95.29024', '\n								<header>\n									<div class=\"title\">\n										<h2 contenteditable=\"true\" class=\"editableElement\" id=\"onlinenaslov\" onfocusout=\"Naslov()\"> Magna sed adipiscing </h2>\n										<p contenteditable=\"true\" class=\"editableElement\" id=\"onlinepodnaslov\" onfocusout=\"Podnaslov()\">Lorem ipsum dolor amet nullam consequat etiam feugiat</p>\n									</div>\n									<div class=\"meta\">\n										<time class=\"published\" datetime=\"2015-11-01\">November 1, 2015</time>\n										<a href=\"#\" class=\"author\"><span class=\"name\">Jane Doe</span> </a>\n									</div>\n								</header>\n								 <p contenteditable=\"true\" class=\"editableElement\">Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n								<p contenteditable=\"true\" class=\"editableElement\">Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra. </p>\n									<pre><code contenteditable=\"true\" class=\"editableElement\">\n									\n									i = 0;\n\n									while (!deck.isInOrder()) {\n									print  Iteration   + i;\n									deck.shuffle();\n									i++;\n										}	\n\n									print  It took   + i +   iterations to sort the deck. ;\n									</code></pre>\n\n', '2018-12-16 08:28:52', 'lekcija', 'srpski', 1, ' Magna sed adipiscing ', ' Magna sed adipiscing ', NULL),
('5c15fec1dffa71.62600', '\n								<header>\n									<div class=\"title\">\n										<h2 contenteditable=\"true\" class=\"editableElement\" id=\"onlinenaslov\" onfocusout=\"Naslov()\"> Magna sed adipiscing </h2>\n										<p contenteditable=\"true\" class=\"editableElement\" id=\"onlinepodnaslov\" onfocusout=\"Podnaslov()\">Lorem ipsum dolor amet nullam consequat etiam feugiat</p>\n									</div>\n									<div class=\"meta\">\n										<time class=\"published\" datetime=\"2015-11-01\">November 1, 2015</time>\n										<a href=\"#\" class=\"author\"><span class=\"name\">Jane Doe</span> </a>\n									</div>\n								</header>\n								 <p contenteditable=\"true\" class=\"editableElement\">Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n								<p contenteditable=\"true\" class=\"editableElement\">Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra. </p>\n									<pre><code contenteditable=\"true\" class=\"editableElement\">\n									\n									i = 0;\n\n									while (!deck.isInOrder()) {\n									print  Iteration   + i;\n									deck.shuffle();\n									i++;\n										}	\n\n									print  It took   + i +   iterations to sort the deck. ;\n									</code></pre>\n\n', '2018-12-16 08:29:05', 'lekcija', 'srpski', 1, ' Magna sed adipiscing ', ' Magna sed adipiscing ', NULL),
('5c15ff3dc05155.75720', '\n								<header>\n									<div class=\"title\">\n										<h2 contenteditable=\"true\" class=\"editableElement\" id=\"onlinenaslov\" onfocusout=\"Naslov()\"> Magna sed adipiscing </h2>\n										<p contenteditable=\"true\" class=\"editableElement\" id=\"onlinepodnaslov\" onfocusout=\"Podnaslov()\">Lorem ipsum dolor amet nullam consequat etiam feugiat</p>\n									</div>\n									<div class=\"meta\">\n										<time class=\"published\" datetime=\"2015-11-01\">November 1, 2015</time>\n										<a href=\"#\" class=\"author\"><span class=\"name\">Jane Doe</span> </a>\n									</div>\n								</header>\n								 <p contenteditable=\"true\" class=\"editableElement\">Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n								<p contenteditable=\"true\" class=\"editableElement\">Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra. </p>\n									<pre><code contenteditable=\"true\" class=\"editableElement\">\n									\n									i = 0;\n\n									while (!deck.isInOrder()) {\n									print  Iteration   + i;\n									deck.shuffle();\n									i++;\n										}	\n\n									print  It took   + i +   iterations to sort the deck. ;\n									</code></pre>\n\n', '2018-12-16 08:31:09', 'lekcija', 'srpski', 1, ' Magna sed adipiscing ', 'atretefads', 'Lorem ipsum dolor amet nullam consequat etiam feugiat'),
('5c16026cee5919.46376', '\n								<header>\n									<div class=\"title\">\n										<h2 contenteditable=\"true\" class=\"editableElement\" id=\"onlinenaslov\" onfocusout=\"Naslov()\"> Magna sed adipiscing </h2>\n										<p contenteditable=\"true\" class=\"editableElement\" id=\"onlinepodnaslov\" onfocusout=\"Podnaslov()\">Lorem ipsum dolor amet nullam consequat etiam feugiat</p>\n									</div>\n									<div class=\"meta\">\n										<time class=\"published\" datetime=\"2015-11-01\">November 1, 2015</time>\n										<a href=\"#\" class=\"author\"><span class=\"name\">Jane Doe</span> </a>\n									</div>\n								</header>\n								 <p contenteditable=\"true\" class=\"editableElement\">Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n								<p contenteditable=\"true\" class=\"editableElement\">Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra. </p>\n									<pre><code contenteditable=\"true\" class=\"editableElement\">\n									\n									i = 0;\n\n									while (!deck.isInOrder()) {\n									print  Iteration   + i;\n									deck.shuffle();\n									i++;\n										}	\n\n									print  It took   + i +   iterations to sort the deck. ;\n									</code></pre>\n\n', '2018-12-16 08:44:44', 'lekcija', 'matematika', 1, ' Magna sed adipiscing ', 'asfd', 'Lorem ipsum dolor amet nullam consequat etiam feugiat'),
('5c1602cd93ea65.59711', '\n								<header>\n									<div class=\"title\">\n										<h2 contenteditable=\"true\" class=\"editableElement\" id=\"onlinenaslov\" onfocusout=\"Naslov()\"> Magna sed adipiscing </h2>\n										<p contenteditable=\"true\" class=\"editableElement\" id=\"onlinepodnaslov\" onfocusout=\"Podnaslov()\">Lorem ipsum dolor amet nullam consequat etiam feugiat</p>\n									</div>\n									<div class=\"meta\">\n										<time class=\"published\" datetime=\"2015-11-01\">November 1, 2015</time>\n										<a href=\"#\" class=\"author\"><span class=\"name\">Jane Doe</span> </a>\n									</div>\n								</header>\n								 <p contenteditable=\"true\" class=\"editableElement\">Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n								<p contenteditable=\"true\" class=\"editableElement\">Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra. </p>\n									<pre><code contenteditable=\"true\" class=\"editableElement\">\n									\n									i = 0;\n\n									while (!deck.isInOrder()) {\n									print  Iteration   + i;\n									deck.shuffle();\n									i++;\n										}	\n\n									print  It took   + i +   iterations to sort the deck. ;\n									</code></pre>\n\n', '2018-12-16 08:46:21', 'lekcija', 'matematika', 1, ' Magna sed adipiscing ', 'awfsafs', 'Lorem ipsum dolor amet nullam consequat etiam feugiat'),
('5c160354dcd1e6.91910', '\n								<header>\n									<div class=\"title\">\n										<h2 contenteditable=\"true\" class=\"editableElement\" id=\"onlinenaslov\" onfocusout=\"Naslov()\"> Magna sed adipiscing </h2>\n										<p contenteditable=\"true\" class=\"editableElement\" id=\"onlinepodnaslov\" onfocusout=\"Podnaslov()\">Lorem ipsum dolor amet nullam consequat etiam feugiat</p>\n									</div>\n									<div class=\"meta\">\n										<time class=\"published\" datetime=\"2015-11-01\">November 1, 2015</time>\n										<a href=\"#\" class=\"author\"><span class=\"name\">Jane Doe</span> </a>\n									</div>\n								</header>\n								 <p contenteditable=\"true\" class=\"editableElement\">Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n								<p contenteditable=\"true\" class=\"editableElement\">Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra. </p>\n									<pre><code contenteditable=\"true\" class=\"editableElement\">\n									\n									i = 0;\n\n									while (!deck.isInOrder()) {\n									print  Iteration   + i;\n									deck.shuffle();\n									i++;\n										}	\n\n									print  It took   + i +   iterations to sort the deck. ;\n									</code></pre>\n\n', '2018-12-16 08:48:36', 'lekcija', 'matematika', 1, ' Magna sed adipiscing ', 'awfsafs', 'Lorem ipsum dolor amet nullam consequat etiam feugiat'),
('5c161a32a57d63.16285', '\n								<header>\n									<div class=\"title\">\n										<h2 contenteditable=\"true\" class=\"editableElement\" id=\"onlinenaslov\" onfocusout=\"Naslov()\"> Magna sed adipiscingasafafafsafs</h2>\n										<p contenteditable=\"true\" class=\"editableElement\" id=\"onlinepodnaslov\" onfocusout=\"Podnaslov()\">Lorem ipsum dolor amet nullam consequat etiam feugiatasf</p>\n									</div>\n									<div class=\"meta\">\n										<time class=\"published\" datetime=\"2015-11-01\">November 1, 2015</time>\n										<a href=\"#\" class=\"author\"><span class=\"name\">Jane Doe</span> </a>\n									</div>\n								</header>\n								 <p contenteditable=\"true\" class=\"editableElement\">Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n								<p contenteditable=\"true\" class=\"editableElement\">Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam. Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet. Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula. Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet tortor pellentesque, non placerat neque viverra. </p>\n									<pre><code contenteditable=\"true\" class=\"editableElement\">\n									\n									i = 0;\n\n						afaf			while (!deck.isInOrder()) {\n									print  Iteration   + i;\n									deck.shuffle();\n									i++;\n										}	\n\n									print  It took   + i +   iterations to sort the deck. ;\n									</code></pre>\n\n<h2 class=\"editableElement\" contenteditable=\"true\">Veliki naslov </h2><pre class=\"editableElement\"><code contenteditable=\"true\">Ovo je specijalno tekstualno polje.</code></pre>', '2018-12-16 10:26:10', 'lekcija', 'matematika', 1, ' Magna sed adipiscingasafafafsafs', 'afasfaf kurac', 'Lorem ipsum dolor amet nullam consequat etiam feugiatasf');

-- --------------------------------------------------------

--
-- Table structure for table `odeljenje`
--

CREATE TABLE `odeljenje` (
  `idOdeljenje` int(11) NOT NULL,
  `naziv` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--

CREATE TABLE `profesor` (
  `idProfesor` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `brObjava` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profesor`
--

INSERT INTO `profesor` (`idProfesor`, `username`, `password`, `ime`, `prezime`, `brObjava`) VALUES
(1, 'MarijaM', 'marija123', 'Marija', 'Mitrovic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ucenik`
--

CREATE TABLE `ucenik` (
  `idUcenik` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `sifra` varchar(45) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `idOdeljenje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentari`
--
ALTER TABLE `komentari`
  ADD PRIMARY KEY (`idProfesor`,`idObjava`,`datum`),
  ADD KEY `fk_Komentari_Objava1_idx` (`idObjava`);

--
-- Indexes for table `moze_citati`
--
ALTER TABLE `moze_citati`
  ADD PRIMARY KEY (`godina`,`idObjava`,`idOdeljenje`),
  ADD KEY `fk_Moze_citati_Objava1_idx` (`idObjava`),
  ADD KEY `fk_Moze_citati_Odeljenje1_idx` (`idOdeljenje`);

--
-- Indexes for table `objava`
--
ALTER TABLE `objava`
  ADD PRIMARY KEY (`idObjava`),
  ADD KEY `fk_Objava_Profesor_idx` (`idProfesor`);

--
-- Indexes for table `odeljenje`
--
ALTER TABLE `odeljenje`
  ADD PRIMARY KEY (`idOdeljenje`);

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`idProfesor`);

--
-- Indexes for table `ucenik`
--
ALTER TABLE `ucenik`
  ADD PRIMARY KEY (`idUcenik`),
  ADD KEY `fk_Ucenik_Odeljenje1_idx` (`idOdeljenje`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `odeljenje`
--
ALTER TABLE `odeljenje`
  MODIFY `idOdeljenje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profesor`
--
ALTER TABLE `profesor`
  MODIFY `idProfesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ucenik`
--
ALTER TABLE `ucenik`
  MODIFY `idUcenik` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `objava`
--
ALTER TABLE `objava`
  ADD CONSTRAINT `fk_Objava_Profesor` FOREIGN KEY (`idProfesor`) REFERENCES `profesor` (`idProfesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ucenik`
--
ALTER TABLE `ucenik`
  ADD CONSTRAINT `fk_Ucenik_Odeljenje1` FOREIGN KEY (`idOdeljenje`) REFERENCES `odeljenje` (`idOdeljenje`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
