-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 16, 2024 at 12:45 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoranid`
--

-- --------------------------------------------------------

--
-- Table structure for table `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(11) NOT NULL,
  `nimi` varchar(50) DEFAULT NULL,
  `kommentaar` text,
  `hinnang` decimal(3,1) DEFAULT NULL,
  `restorani_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `kommentaar`, `hinnang`, `restorani_id`) VALUES
(1, 'Tadeas', 'a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur', '7.6', 1),
(3, 'Madelaine', 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', '5.5', 3),
(4, 'Brendon', 'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', '2.3', 4),
(5, 'Malorie', 'mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla', '7.9', 5),
(6, 'Marigold', 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam', '5.5', 6),
(7, 'Catherin', 'placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit', '5.6', 7),
(8, 'Raffaello', 'nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', '9.7', 8),
(9, 'Willyt', 'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient', '3.2', 9),
(10, 'Sinclare', 'metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', '7.2', 10),
(11, 'Ber', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', '9.5', 11),
(12, 'Barnie', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum', '8.3', 12),
(13, 'Mechelle', 'sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet', '8.2', 13),
(14, 'Basilius', 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo', '5.2', 14),
(15, 'Clayborn', 'faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', '2.3', 15),
(16, 'Palm', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', '4.7', 16),
(17, 'Ario', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi', '3.8', 17),
(18, 'Edouard', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio', '3.2', 18),
(19, 'Rivkah', 'in felis donec semper sapien a libero nam dui proin', '9.7', 19),
(20, 'Evangelina', 'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', '9.6', 20),
(21, 'Codie', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', '3.7', 21),
(22, 'Fredric', 'convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', '9.6', 22),
(23, 'Natividad', 'porta volutpat quam pede lobortis ligula sit', '8.1', 23),
(24, 'Floris', 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue', '9.5', 24),
(25, 'Hertha', 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', '8.1', 25),
(26, 'Meghann', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', '9.1', 26),
(27, 'Avril', 'tellus in sagittis dui vel nisl duis ac nibh fusce lacus', '8.8', 27),
(28, 'Beniamino', 'in quis justo maecenas rhoncus aliquam lacus morbi', '2.8', 28),
(29, 'Isidore', 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue', '9.0', 29),
(30, 'Domeniga', 'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', '6.7', 30),
(31, 'Tiebold', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', '8.2', 31),
(32, 'Tiffany', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', '3.2', 32),
(33, 'Cass', 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat', '5.0', 33),
(34, 'Gianina', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit', '8.1', 34),
(35, 'Peirce', 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim', '2.5', 35),
(36, 'Jena', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', '4.7', 36),
(37, 'Brannon', 'tempor turpis nec euismod scelerisque quam turpis', '8.4', 37),
(39, 'Leland', 'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices', '6.1', 39),
(40, 'Georgena', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa', '2.6', 40),
(41, 'Izzy', 'suspendisse accumsan tortor quis turpis sed', '1.6', 41),
(42, 'Igor', 'pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', '8.7', 42),
(43, 'Kellie', 'at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum', '5.3', 43),
(44, 'Ros', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', '3.0', 44),
(45, 'Blithe', 'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue', '9.3', 45),
(46, 'Magnum', 'sed nisl nunc rhoncus dui vel', '7.5', 46),
(47, 'Zoe', 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit', '1.3', 47),
(48, 'Killian', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', '7.6', 48),
(49, 'Vasilis', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse', '9.3', 49),
(50, 'Luther', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', '1.5', 50),
(52, 'Tallie', 'lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum', '8.7', 52),
(53, 'Yuma', 'porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', '5.5', 53),
(54, 'Boris', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam', '8.0', 54),
(55, 'Dale', 'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', '6.1', 55),
(56, 'Neil', 'nulla suscipit ligula in lacus curabitur at ipsum ac tellus', '2.5', 56),
(57, 'Delphinia', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante', '1.6', 57),
(58, 'Nevil', 'erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at', '1.4', 58),
(59, 'Gottfried', 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', '6.6', 59),
(60, 'Kissie', 'non sodales sed tincidunt eu felis fusce posuere felis', '9.7', 60),
(61, 'Ryun', 'metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', '7.3', 61),
(62, 'Mathew', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', '2.3', 62),
(63, 'Ilise', 'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', '1.0', 63),
(64, 'Korrie', 'varius integer ac leo pellentesque ultrices', '3.1', 64),
(65, 'Adah', 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar', '6.2', 65),
(66, 'Alford', 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', '2.0', 66),
(67, 'Jannel', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', '3.3', 67),
(68, 'Bridget', 'sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a', '2.7', 68),
(69, 'Dallas', 'nulla ut erat id mauris', '7.8', 69),
(70, 'Candy', 'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem', '3.2', 70),
(71, 'Hortensia', 'nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', '9.8', 71),
(72, 'Cindie', 'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam', '6.3', 72),
(73, 'Dwight', 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', '5.6', 73),
(74, 'Conant', 'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere', '1.7', 74),
(75, 'Kimberly', 'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero', '7.6', 75),
(76, 'Heloise', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus', '1.3', 76),
(77, 'Anders', 'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', '3.7', 77),
(78, 'Tab', 'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '7.0', 78),
(79, 'Jule', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', '8.4', 79),
(80, 'Babb', 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et', '6.0', 80),
(81, 'Eal', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', '9.9', 81),
(82, 'Monte', 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', '5.0', 82),
(83, 'Shanna', 'duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu', '1.4', 83),
(84, 'Etheline', 'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque', '7.5', 84),
(85, 'Carine', 'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', '8.2', 85),
(86, 'Inesita', 'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', '8.2', 86),
(87, 'Bradney', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa', '1.8', 87),
(88, 'Butch', 'justo sollicitudin ut suscipit a', '6.6', 88),
(89, 'Fayette', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', '2.5', 89),
(90, 'Eward', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', '5.0', 90),
(91, 'Mandel', 'platea dictumst aliquam augue quam sollicitudin vitae consectetuer', '2.1', 91),
(92, 'Ede', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', '2.9', 92),
(93, 'Gael', 'nibh in hac habitasse platea dictumst aliquam augue', '7.3', 93),
(94, 'Devin', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', '2.0', 94),
(95, 'Boniface', 'sed lacus morbi sem mauris', '9.0', 95),
(96, 'Hobey', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem', '8.4', 96),
(97, 'Dorolice', 'congue etiam justo etiam pretium iaculis justo in', '1.3', 97),
(98, 'Jesse', 'eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo', '5.7', 98),
(99, 'Costa', 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque', '2.7', 99),
(100, 'Alissa', 'nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at', '2.4', 100),
(109, 'bn', 'bn', '7.0', 41),
(110, 'kadri', 'dfgd', '3.0', 41),
(112, 'df', 'df', '5.0', 41),
(213, 'hg', 'hgf', '8.0', 51),
(225, 'dg', 'dfg', '10.0', NULL),
(226, 'x', 'xf', '7.0', NULL),
(227, 'cv', 'cv', '9.0', 0),
(228, 'cv', 'cv', '7.0', 0),
(229, 'b', 'b', '7.0', 0),
(234, 'vbn', 'gb', '10.0', 38),
(235, ' v', 'v', '4.0', 38),
(236, 'reg', 'grg', '8.0', 2),
(237, 'drgrg', 'gbdg', '4.0', 2),
(238, ' v vc ', 'v vb v', '8.0', 21);

-- --------------------------------------------------------

--
-- Table structure for table `restoranid`
--

CREATE TABLE `restoranid` (
  `id` int(11) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `keskmine_hinne` decimal(2,1) DEFAULT '0.0',
  `hinnangute_arv` int(11) DEFAULT '0',
  `tyyp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restoranid`
--

INSERT INTO `restoranid` (`id`, `nimi`, `asukoht`, `keskmine_hinne`, `hinnangute_arv`, `tyyp`) VALUES
(1, 'Murazik, Mante and Hammes', '34935 Forest Dale Point', '8.9', 73, NULL),
(2, 'Bernhard LLC', '868 Kropf Center', '6.0', 2, NULL),
(3, 'Crist-Roberts', '7 Meadow Ridge Point', '4.2', 12, NULL),
(4, 'Koelpin-Jones', '904 Express Alley', '1.2', 60, NULL),
(5, 'Labadie-Crooks', '2 Holy Cross Place', '4.5', 61, NULL),
(6, 'Hoppe-Lind', '43755 Park Meadow Terrace', '2.1', 38, NULL),
(7, 'Trantow and Sons', '5691 Clemons Road', '1.6', 12, NULL),
(8, 'Ward-Auer', '0579 Carberry Trail', '3.7', 27, NULL),
(9, 'Jakubowski, Friesen and Gislason', '1 Killdeer Place', '7.5', 66, NULL),
(10, 'Russel, Klein and Morissette', '7 Sommers Road', '5.8', 86, NULL),
(11, 'Frami LLC', '253 Clove Lane', '5.5', 46, NULL),
(12, 'Kirlin, Luettgen and Mraz', '41179 Sugar Court', '3.6', 29, NULL),
(13, 'Kulas-Howell', '03088 Northport Drive', '8.0', 95, NULL),
(14, 'Johns-Goodwin', '87572 Granby Hill', '8.3', 98, NULL),
(15, 'Predovic-Harris', '553 Thackeray Street', '1.8', 66, NULL),
(16, 'Ledner, Farrell and Lubowitz', '59004 Vera Court', '1.4', 67, NULL),
(17, 'Zulauf LLC', '2669 Morningstar Avenue', '5.8', 50, NULL),
(18, 'Mante, Bins and Legros', '23 Coolidge Junction', '1.8', 26, NULL),
(19, 'Torp Group', '304 South Road', '7.9', 67, NULL),
(20, 'Prohaska Inc', '8 Southridge Parkway', '5.4', 63, NULL),
(21, 'Blanda, Howe and Kerluke', '6904 Donald Way', '5.9', 2, NULL),
(22, 'Tremblay-Anderson', '702 Orin Drive', '2.8', 86, NULL),
(23, 'Wunsch-Maggio', '5 Loftsgordon Court', '5.3', 28, NULL),
(24, 'Lesch Group', '5 Gale Place', '2.0', 16, NULL),
(25, 'Herzog-Gorczany', '6474 La Follette Court', '2.8', 5, NULL),
(26, 'Cole Inc', '5901 Northview Court', '1.0', 32, NULL),
(28, 'Glover, Heidenreich and Metz', '18119 Browning Park', '9.2', 65, NULL),
(29, 'Wisoky, Rau and Kessler', '03 Kinsman Avenue', '7.2', 49, NULL),
(30, 'Bruen, Gleason and Waters', '6759 Hansons Junction', '6.4', 27, NULL),
(31, 'Legros-Collins', '76896 Caliangt Road', '9.7', 22, NULL),
(32, 'Nikolaus-Altenwerth', '92 Kedzie Alley', '5.1', 61, NULL),
(33, 'Rice, Langworth and Funk', '4 Di Loreto Pass', '1.2', 27, NULL),
(34, 'Dickens LLC', '30231 Sutteridge Junction', '8.1', 62, NULL),
(35, 'Reinger-Dibbert', '03053 Glacier Hill Plaza', '6.1', 3, NULL),
(36, 'Windler Inc', '155 Melvin Parkway', '3.7', 88, NULL),
(37, 'Koelpin-Ullrich', '4227 Loeprich Avenue', '6.4', 70, NULL),
(38, 'Batz', '74281 Continental Street', '7.0', 2, 'pizzeria'),
(39, 'Runolfsdottir, Schneider and Murphy', '9 Dapin Street', '3.5', 60, NULL),
(40, 'Rutherford and Sons', '090 Westerfield Junction', '4.4', 71, NULL),
(41, 'Blanda-Goyette', '3366 Canary Crossing', '4.2', 4, NULL),
(42, 'Kris-Ryan', '33 Roxbury Pass', '3.5', 38, NULL),
(43, 'Kutch-Schultz', '813 2nd Trail', '3.4', 55, NULL),
(44, 'Goldner-Simonis', '2 Victoria Terrace', '3.4', 40, NULL),
(45, 'Purdy, Dicki and Luettgen', '93 Browning Park', '1.0', 66, NULL),
(46, 'Herzog, Rippin and Goldner', '2411 David Road', '2.5', 98, NULL),
(47, 'Blick, Lemke and Kozey', '45 Mcguire Court', '8.2', 25, NULL),
(48, 'Jaskolski, Volkman and Braun', '6898 Ryan Trail', '7.3', 92, NULL),
(49, 'Collins, Nader and MacGyver', '781 Melvin Parkway', '3.3', 8, NULL),
(50, 'Ferry-Glover', '0 Bay Parkway', '5.1', 88, NULL),
(51, 'mcdonalds', 'Haapsalu', '8.0', 1, 'kiirtoidukoht');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restoranid`
--
ALTER TABLE `restoranid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `restoranid`
--
ALTER TABLE `restoranid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
