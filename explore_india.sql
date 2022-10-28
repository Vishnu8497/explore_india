-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 09:58 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `explore_india`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `admin_id` int(10) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'vishnupillai804@gmail.com', 'vishnu8497');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_contact` varchar(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`user_id`, `user_name`, `user_contact`, `user_email`, `user_message`) VALUES
(1, 'Vishnu', '9167090290', 'vishnupillai804@gmal.com', 'Nice website'),
(2, 'Chinmay', '8687951276', 'chinmay@gmail.com', 'Hello'),
(3, 'Swapnil', '8744158931', 'swapnil@gmail.com', 'Good morning'),
(4, 'Rakshita', '9534871227', 'rakshita@gmail.com', 'Hii');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(10) NOT NULL,
  `place_id` int(11) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `lat` double(10,4) NOT NULL,
  `lng` double(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `place_id`, `place_name`, `lat`, `lng`) VALUES
(1, 1, 'Agra, Uttar Pradesh', 27.1767, 78.0081),
(2, 2, 'Mumbai, Maharashtra', 19.0760, 72.8777),
(3, 3, 'Hampi, Karnataka', 15.3350, 76.4600),
(4, 4, 'Alleppey, Kerala', 9.4981, 76.3388);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `place_desc` varchar(1000) NOT NULL,
  `img_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`place_id`, `place_name`, `place_desc`, `img_path`) VALUES
(1, 'Agra, Uttar Pradesh', 'Home to one of the 7 wonders of the world, Taj Mahal, Agra is a sneak peek into the architectural history with other structures such as Agra Fort and Fatehpur Sikri and hence makes for a must visit for anyone living in or visiting India.', 'images/agra.jpeg'),
(2, 'Mumbai, Maharashtra', 'Labeled with multiple titles such as \'Financial capital of India\', \'The Maximum City\', \'Land of Bollywood\', \'The dream City\' and much more, Mumbai is Maharashtra\'s capital and India\'s most populous city.', 'images/mumbai.jpg'),
(3, 'Hampi, Karnataka', 'Hampi, the city of ruins is a UNESCO World Heritage Site, owing to the ancient temples, forts, palaces and other monuments here.', 'images/hampi.jpg'),
(4, 'Alleppey, Kerala', 'Famous backwaters of God\'s own country, Kerela, the city of Alleppey is known for its beaches, temples, boat races and Ayurvedic spa and wellness centers.', 'images/alleppey.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `places_info`
--

CREATE TABLE `places_info` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slider` text NOT NULL,
  `info` text NOT NULL,
  `more_info` text NOT NULL,
  `photos` text NOT NULL,
  `video1` varchar(255) NOT NULL,
  `video2` varchar(255) NOT NULL,
  `video3` varchar(255) NOT NULL,
  `top_places` text NOT NULL,
  `places_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places_info`
--

INSERT INTO `places_info` (`id`, `place_id`, `name`, `slider`, `info`, `more_info`, `photos`, `video1`, `video2`, `video3`, `top_places`, `places_name`) VALUES
(1, 1, 'Agra, Uttar Pradesh', 'agra_slider1.jpg*agra_slider2.jpg*agra_slider3.jpg*', 'Home to one of the 7 wonders of the world, the Taj Mahal, Agra is a sneak peek into the architectural history with other structures such as Agra Fort and Fatehpur Sikri and hence makes for a must visit for anyone living in or visiting India.', 'When you talk about Agra, one thing has to stand out - yes, the Taj Mahal. Agra is host to the only one of the Seven Wonders of the World in India, Taj Mahal, which makes the whole country proud. But that\'s not the only thing Agra has to boast of. Agra has three UNESCO World Heritage sites and Taj Mahal features in the 50 most popular tourist destinations in the world.\r\nHistory, architecture, romance all together create the magic of Agra which is almost the lifeline of Indian tourism. History fanatics as well as architecture buffs can have a ball here with the sheer expanse of the Mughal art and culture on display. Apart from its monuments, the city also has some exciting stuff for foodies - including the famous Agra ka Petha and amazing chaat and Lassi.', 'agra_image1.jpg*agra_image2.jpg*agra_image3.jpg*agra_image4.jpg*agra_image5.jpg*agra_image6.jpg*', 'https://www.youtube.com/embed/665AHTNpf2o', 'https://www.youtube.com/embed/A3JSEu2U7SU', 'https://www.youtube.com/embed/dxu3P-usLh0', 'agra_place1.jpg*agra_place2.jpg*agra_place3.jpg*agra_place4.jpg*agra_place5.jpg*', 'Fatehpur Sikri,Taj Mahal,Akbar\'s Tomb,Itimad-ud-daula\'s Tomb,Dolphin- The Water World,'),
(2, 2, 'Mumbai, Maharashtra', 'mumbai_slider1.jpg*mumbai_slider2.jpg*mumbai_slider3.jpg*', '\'The City that Never Sleeps\', \'The City of Dreams\' and \'The City of Seven Islands\' are just a few of the epithets used to describe the wonderful city of Mumbai or Bombay, as it was known before. Mumbai, the capital of Maharashtra and the financial capital of India is multi-faceted and provides a lot of exciting experiences.', 'Today, Mumbai is the country\'s financial and cultural centre. It is also home to a thriving film industry. It is seen, to the teeming masses that flock there to live and work, as a place where opportunities abound. Its inhabitants, an amalgam of great wealth and abject poverty, are swept into the endless maelstrom of activity that characterizes this city of dreams. Places to visit in Mumbai include the Victoria Terminus, the Gateway of India, the Hanging Gardens, Mani Bhawan (where the Father of the Nation Mahatma Gandhi resided for several years) and the Prince of Wales museum.', 'mumbai_image1.jpg*mumbai_image2.jpg*mumbai_image3.jpg*mumbai_image4.jpg*mumbai_image5.jpg*mumbai_image6.jpg*', 'https://www.youtube.com/embed/4MDRFrLVTQw', 'https://www.youtube.com/embed/zQE4TU_89jU', 'https://www.youtube.com/embed/2sibLuZxQJo', 'mumbai_place1.jpg*mumbai_place2.jpg*mumbai_place3.jpg*mumbai_place4.jpg*mumbai_place5.jpg*', 'Gateway of India,Haji Ali Dargah,Juhu Beach,Marine Drive,Siddhivinayak Temple,'),
(3, 3, 'Hampi, Karnataka', 'hampi_slider1.jpg*hampi_slider2.jpg*hampi_slider3.jpg*', 'Hampi, the city of ruins, is a UNESCO World Heritage Site. Situated in the shadowed depth of hills and valleys in the state of Karnataka, this place is a historical delight for travellers. Surrounded by 500 ancient monuments, beautiful temples, bustling street markets, bastions, treasury building and captivating remains of Vijayanagar Empire, Hampi is a backpacker\'s delight.', 'Hampi is an open museum with 100+ locations to explore and a favourite way to see the city from the perspective of its history.\r\nHampi was the capital of the Vijayanagar empire around 1500 AD, and by some accounts, the second largest city in the world at that time.\r\nThe terrain around Hampi is as mysterious as the ruins itself - the city is surrounded by boulders of different sizes, and you can climb to the top of them with a little effort to get a stunning view of the entire city and the geography.\r\nIt is located on the banks of the Tungabhadra River.', 'hampi_image1.jpg*hampi_image2.jpg*hampi_image3.jpg*hampi_image4.jpg*hampi_image5.jpg*hampi_image6.jpg*', 'https://www.youtube.com/embed/VxC57E3qgQs', 'https://www.youtube.com/embed/CnKfPcRI22k', 'https://www.youtube.com/embed/UYi7AxAPNDg', 'hampi_place1.jpg*hampi_place2.jpg*hampi_place3.jpg*hampi_place4.jpg*hampi_place5.jpg*', 'Virupaksha Temple,Vitthala Temple,Hampi Bazaar,Elephant Stables,Queen\'s Bath,'),
(4, 4, 'Alleppey, Kerala', 'alleppey_slider1.jpg*alleppey_slider2.png*alleppey_slider3.jpg*', 'Extremely famous for its beautiful backwaters, the city of Alleppey in Kerala is also known for its beaches, temples and traditional boat races.\r\nThis popular tourist destination also has some very well reputed Ayurvedic spas and wellness centres. Dotting the coastline of the Arabian Sea, Alleppey (also known as Alappuzha) is the oldest planned backwater town of Kerala.', 'This place is famous for its numerous rivers crisscrossing the Sea and is home to many canals, backwaters, beaches and lagoons.\r\nAlleppey is often referred to as the Venice of India. The backwaters coupled with houseboats and the tropical village life makes Alleppey worth a visit.\r\nIt\'s best known for houseboat cruises along the rustic Kerala backwaters, a network of tranquil canals and lagoons. Alappuzha Beach is the site of the 19th-century Alappuzha Lighthouse. The city\'s Mullakkal Temple features a traditional design. Punnamada Lake\'s snake boat races are a well-known annual event.', 'alleppey_image1.jpg*alleppey_image2.jpg*alleppey_image3.jpg*alleppey_image4.jpg*alleppey_image5.jpg*alleppey_image6.jpg*', 'https://www.youtube.com/embed/hxU_bsel_PQ', 'https://www.youtube.com/embed/f5yksSVATM8', 'https://www.youtube.com/embed/Hb2DyGPm9fs', 'alleppey_place1.jpg*alleppey_place2.jpeg*alleppey_place3.jpg*alleppey_place4.jpg*alleppey_place5.jpg*', 'Houseboats,Backwaters,Aalappuzha Beach,Vembanad Lake,Nehru Trohy Boat Race,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `place_id_2` (`place_id`),
  ADD KEY `place_id_3` (`place_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `places_info`
--
ALTER TABLE `places_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `place_id_2` (`place_id`),
  ADD KEY `place_id_3` (`place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `places_info`
--
ALTER TABLE `places_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `places_info`
--
ALTER TABLE `places_info`
  ADD CONSTRAINT `places_info_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`place_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
