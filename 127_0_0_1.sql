-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2019 at 10:45 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bg`
--
CREATE DATABASE IF NOT EXISTS `bg` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bg`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL DEFAULT 'NULL',
  `email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `username`, `email`, `Password`, `Phone`, `Address`) VALUES
(1, 'AFIF', 'shaikhafif48@gmail.com', '123', 9769320992, ''),
(2, 'tauseef', 'tauseef@faj.com', '1234', 8362537189, ''),
(3, 'Sahil ', 'lukha@mahim.com', 'party_de_re', 9871019181, ''),
(4, 'Aashish', 'Respected@person.com', 'stevejobs', 9781028211, ''),
(5, 'Danish', 'dekhte@hai.com', '2381', 8573920475, ''),
(6, 'okjarvisa', 'tryagain@avg.com', '73127', 8573929283, ''),
(7, 'Afif Space', 'asdjias@ds.com', '8219', 8328393939, ''),
(8, 'Danish Ki video', 'sdja@dsd.com', '213', 6847389021, 'Ghatkopar se andheri'),
(9, 'sad', 'dsdh@djs.com', '273', 7839238293, 'shdu hiu'),
(10, 'Prabodh', 'praba@djd.com', '1234', 9827461904, 'KURLA DBIT'),
(11, 'pra', 'pra@gmail.com', 'pra123', 1234567890, 'kurla'),
(12, 'ariana', 'ariana@gmail.com', 'ariana', 1234567890, 'Not known'),
(13, 'a', 'a@gmail.com', 'a', 1452369870, 'Not known'),
(14, 'ab', 'ab@gmail.com', 'ab', 1452369870, 'Not known'),
(16, 'abc', 'abc@gmail.com', 'abc', 1452369874, 'Not known'),
(18, 'abcd', 'abcd@gmail.com', 'abcd', 1452369878, 'Not known'),
(21, 'abcde', 'abcde@gmail.com', 'abcde', 1452369879, 'Not known'),
(22, 'abcdef', 'abcdef@gmail.com', 'abcdef', 1236547893, 'Not known'),
(23, 'xyz', 'xyz@gmail.com', 'xyz', 5423698701, 'Not known'),
(24, 'saurabh', 'aurvir@gmail.com', 'survir', 5656565656, 'CSMT'),
(25, 'saurabhY', 'survir@gmail.com', 'surviry', 5656565656, 'CSMT');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pname` varchar(30) NOT NULL,
  `pcatagory` varchar(30) NOT NULL,
  `pprice` float NOT NULL,
  `vid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pname`, `pcatagory`, `pprice`, `vid`) VALUES
('mango pickel', 'food', 50.01, '#11096101999');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vname` varchar(30) NOT NULL,
  `vid` varchar(20) NOT NULL,
  `vphone` varchar(10) NOT NULL,
  `vemail` varchar(50) NOT NULL,
  `vpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vname`, `vid`, `vphone`, `vemail`, `vpassword`) VALUES
('Prabodh', '#11096101999', '8236554123', 'prabodh@gmail.com', 'prabodh'),
('Afif', '#123456', '1234567890', 'afif@gmail.com', 'afif'),
('Ganesh', '#231254', '3216549870', 'ganesh@gmail.com', 'ganesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`vid`) REFERENCES `vendor` (`vid`);
--
-- Database: `employee-form`
--
CREATE DATABASE IF NOT EXISTS `employee-form` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employee-form`;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `Eid` int(11) NOT NULL,
  `Ename` varchar(20) NOT NULL,
  `Dept` varchar(10) NOT NULL,
  `Gender` varchar(5) NOT NULL,
  `profile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`Eid`, `Ename`, `Dept`, `Gender`, `profile`) VALUES
(101, 'Prabodh', 'IT', 'M', 'Insta'),
(102, 'Piyush', 'IT', 'M', 'Facebook');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`Eid`);
--
-- Database: `info`
--
CREATE DATABASE IF NOT EXISTS `info` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `info`;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `Name` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`Name`, `lastname`, `username`, `pass`) VALUES
('Delson', 'Dsouza', 'Del', '12345'),
('prabodh', 'shewalkar', 'plm', 'prabodh_'),
('prasad', 'mascharane', 'pras', 'sarvari'),
('Saurabh', 'yadav', 'saurabh', 'saurabh12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD UNIQUE KEY `username` (`username`);
--
-- Database: `leader`
--
CREATE DATABASE IF NOT EXISTS `leader` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `leader`;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `education` text NOT NULL,
  `profession` text NOT NULL,
  `assests` text NOT NULL,
  `crime` text NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`name`, `age`, `education`, `profession`, `assests`, `crime`, `bio`) VALUES
('Narendra Modi', 68, 'M.A FROM GUJRAT UNIVERSITY AHMEDABAD', 'Service/govt/ngo', 'Rs 1,51,57,582', '0', 'Into his fourth year as the Prime Minister, Narendra Modi hasn’t shied away from taking stern decisions. PM Narendra Modi had a mixed year in terms of domestic and international events. The Prime Minister has swiftly worked on bettering the brokered ties between India and China. Even though both countries came eye-to-eye over Doklam issue; however, Narendra Modi’s persistence over the issue paid off.\r\nPrime Minister Narendra Modi launched several schemes and policies such as Sahaj Bijli Har Ghar Yojana – Saubhagya Scheme launched in Jammu and Kashmir, Sankalp Se Siddhi – New India Movement from 2017 – 2022, and many such schemes to ensure that India moves on a steady path of becoming an economic superpower.  Apart from domestic policies, the Prime Minister has signed several important bilateral and international agreements to boost the fastest growing economy in the world.\r\n'),
('Rahul Gandhi', 48, 'M.Phil (Development Studies) from Trinity College', 'Politician', 'Rs 9,40,06,549', '0', 'The young Turk of the grand-old Congress party has been looking after the functioning of the party ever since Congress supremo Sonia Gandhi has been battling through sever illness. Rahul Gandhi has had a tough start to his leadership, as the party suffered defeats in the several state assembly elections. However, the result in Punjab where the party won the elections comprehensively defeating the Akali-BJP alliance has been a silver lining in the cloud for Rahul Gandhi. The interim chief was handed over the mantle of the Congress party by his mother Sonia Gandhi at the end of the year, although party suffered defeats in Gujarat and Himachal Pradesh as soon as Rahul took over the reigns of the Congress. But, the results in Gujarat considered a BJP bastion came as a morale victory for the party, while the Congress registered victory in several Lok Sabha and state assembly bye-elections. He would be looking to take this positives from 2017 to ensure that party is able to become the force it once was before BJP wave dismantled it.'),
('Poonam Mahajan', 38, 'Level 5 BTEC Professional Diploma in Leadership from Brighton School of Business & Management in Feb 2012, Pilot License complete 300 hrs of flying from Aer Mistral Flying School, Fort Worth Texas, Cambridge University', 'Business', 'Rs 1,08,08,67,626', '0', 'Ms. Poonam Mahajan is a Member of Parliament, Lok Sabha from Bharatiya Janata Party (BJP) representing Mumbai North-Central Constituency. She is also the National President of Bharatiya Janata Yuva Morcha (BJYM), the youth wing of the BJP. She has been described by many as dynamic, astute, passionate and hardworking.'),
('Sushma Swaraj', 67, 'Graduate Professional', 'Politician', 'Rs 17,55,16,422', '0', 'Sushma Swaraj has set an example of how every minister or politician should be respectful towards their duty without being presumptuous about the influence of power and money. The External Affairs Minister has won millions of hearts with her compassion and commitment towards her work. From helping out stranded student in Tanzania to her speech at the United Nation General Assembly, the External Affairs minister has never shied away from fulfilling her duty.  She has asked people looking for any sort of help regarding visas or passports to get in touch with her through social media platform Twitter and the most compelling thing about Sushma Swaraj is that regardless of the nationality she has always come forward to help those in need.  A similar situation arose when a Pakistani wife wanted to bring her husband to India to ensure that he receives proper healthcare. After being denied the visa, she tweeted the MEA minister.  Sushma was prompt and asked the Indian Embassy in Pakistan to look into the matter and ensure that she is able to bring her husband to India for better treatment.'),
('Mamata Banerjee', 64, 'M.A. from Calcutta University in 1977 (Examination held in the year 1979),LLB from Jogesh Chandra Choudhury College of Law, Calcutta University in 1982, B.Ed from Sri Sikshyatan, Calcutta University, Trained in Work Education in 1980, B.A. from Jogamaya', 'Service/govt/ngo', 'Rs 30,45,013', '0', 'Mamata Banerjee is the ninth Chief Minister of West Bengal, India. She is the first lady to hold the Chief Minister’s office in the state. On 19 May 2016, she became the only women CM to win two consecutive terms. The thumping victory came on the heels of several corruption charges during the end of her tenure as the eighth chief minister. In 1997, Banerjee had dissociated herself from the Indian National Congress and founded the All India Trinamool Congress, also known as TMC or AITMC.Popularly referred to as Didi (elder sister) in Bengal, she created history in the state with a sweeping victory in the 2011 Legislative Assembly elections of West Bengal that uprooted the 34-year-long Left Front government led by the Communist Party of India (Marxist).'),
('Arvind Kejriwal', 50, 'B.Tech Mechanical Engineering IIT Kharagpur in 1989', 'Service/govt/ngo', 'Rs 2,13,66,668', '7', 'The Delhi Chief Minister had a mixed year. He found it difficult to function and bring in policy measures without the consent of Governor, as the tussle between Centre and Delhi government continued. Even with obstacles, the AAP Chief has worked substantially towards the development of Delhi, with special impetus towards the affordable healthcare for citizens through Mohalla clinics. Arvind Kejriwal has ensured that the public and government schools are not lagging behind in terms of development, the infrastructure among majority of government schools have been overhauled. Apart from the state-of the-art infrastructure, the performance of these schools have also improved significantly with the students from public and government schools matching toe-to-toe with the students from private schools. Although, AAP party suffered embarrassing defeats across several state assembly elections, but was able to secure close to 20 seats in the Punjab Assembly elections.');
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;
--
-- Database: `mla`
--
CREATE DATABASE IF NOT EXISTS `mla` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mla`;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `Const.No.` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`Const.No.`, `Name`, `district`) VALUES
(1, 'Akkalkuwa\n', 'Nandurbar\n'),
(2, 'Shahada\n', 'Nandurbar\n'),
(3, 'Nandurbar\n', 'Nandurbar\n'),
(4, 'Navapur\n', 'Nandurbar\n'),
(5, 'Sakri\n', 'Dhule\n'),
(6, 'Dhule Rural\n', 'Dhule\n'),
(7, 'Dhule City\n', 'Dhule\n'),
(8, 'Sindkheda\n', 'Dhule\n'),
(9, 'Shirpur\n', 'Dhule\n'),
(10, 'Chopda\n', 'Jalgaon\n'),
(11, 'Raver\n', 'Jalgaon\n'),
(12, 'Bhusawal\n', 'Jalgaon\n'),
(13, 'Jalgaon City\n', 'Jalgaon\n'),
(14, 'Jalgaon Rural\n', 'Jalgaon\n'),
(15, 'Amalner\n', 'Jalgaon\n'),
(16, 'Erandol\n', 'Jalgaon\n'),
(17, 'Chalisgaon\n', 'Jalgaon\n'),
(18, 'Pachora\n', 'Jalgaon\n'),
(19, 'Jamner\n', 'Jalgaon\n'),
(20, 'Muktainagar\n', 'Jalgaon\n'),
(21, 'Malkapur\n', 'Buldhana\n'),
(22, 'Buldhana\n', 'Buldhana\n'),
(23, 'Chikhali\n', 'Buldhana\n'),
(24, 'Sindkhed Raja\n', 'Buldhana\n'),
(25, 'Mehkar\n', 'Buldhana\n'),
(26, 'Khamgaon\n', 'Buldhana\n'),
(27, 'Jalgaon (Jamod)\n', 'Buldhana\n'),
(28, 'Akot\n', 'Akola\n'),
(29, 'Balapur\n', 'Akola\n'),
(30, 'Akola West\n', 'Akola\n'),
(31, 'Akola East\n', 'Akola\n'),
(32, 'Murtizapur\n', 'Akola\n'),
(33, 'Risod\n', 'Washim\n'),
(34, 'Washim\n', 'Washim\n'),
(35, 'Karanja\n', 'Washim\n'),
(36, 'Dhamangaon Railway\n', 'Amravati\n'),
(37, 'Badnera\n', 'Amravati\n'),
(38, 'Amravati\n', 'Amravati\n'),
(39, 'Teosa\n', 'Amravati\n'),
(40, 'Daryapur\n', 'Amravati\n'),
(41, 'Melghat\n', 'Amravati\n'),
(42, 'Achalpur\n', 'Amravati\n'),
(43, 'Morshi\n', 'Amravati\n'),
(44, 'Arvi\n', 'Wardha\n'),
(45, 'Deoli\n', 'Wardha\n'),
(46, 'Hinganghat\n', 'Wardha\n'),
(47, 'Wardha\n', 'Wardha\n'),
(48, 'Katol\n', 'Nagpur\n'),
(49, 'Savner\n', 'Nagpur\n'),
(50, 'Hingna\n', 'Nagpur\n'),
(51, 'Umred\n', 'Nagpur\n'),
(52, 'Nagpur South West\n', 'Nagpur\n'),
(53, 'Nagpur South\n', 'Nagpur\n'),
(54, 'Nagpur East\n', 'Nagpur\n'),
(55, 'Nagpur Central\n', 'Nagpur\n'),
(56, 'Nagpur West\n', 'Nagpur\n'),
(57, 'Nagpur North\n', 'Nagpur\n'),
(58, 'Kamthi\n', 'Nagpur\n'),
(59, 'Ramtek\n', 'Nagpur\n'),
(60, 'Tumsar\n', 'Bhandara\n'),
(61, 'Bhandara\n', 'Bhandara\n'),
(62, 'Sakoli\n', 'Bhandara\n'),
(63, 'Arjuni Morgaon\n', 'Gondiya\n'),
(64, 'Tirora\n', 'Gondiya\n'),
(65, 'Gondiya\n', 'Gondiya\n'),
(66, 'Amgaon\n', 'Gondiya\n'),
(67, 'Armori\n', 'Gadchiroli\n'),
(68, 'Gadchiroli\n', 'Gadchiroli\n'),
(69, 'Aheri\n', 'Gadchiroli\n'),
(70, 'Rajura\n', 'Chandrapur\n'),
(71, 'Chandrapur\n', 'Chandrapur\n'),
(72, 'Ballarpur\n', 'Chandrapur\n'),
(73, 'Brahmapuri\n', 'Chandrapur\n'),
(74, 'Chimur\n', 'Chandrapur\n'),
(75, 'Warora\n', 'Chandrapur\n'),
(76, 'Wani\n', 'Yavatmal\n'),
(77, 'Ralegaon\n', 'Yavatmal\n'),
(78, 'Yavatmal\n', 'Yavatmal\n'),
(79, 'Digras\n', 'Yavatmal\n'),
(80, 'Arni\n', 'Yavatmal\n'),
(81, 'Pusad\n', 'Yavatmal\n'),
(82, 'Umarkhed\n', 'Yavatmal\n'),
(83, 'Kinwat\n', 'Nanded\n'),
(84, 'Hadgaon\n', 'Nanded\n'),
(85, 'Bhokar\n', 'Nanded\n'),
(86, 'Nanded North\n', 'Nanded\n'),
(87, 'Nanded South\n', 'Nanded\n'),
(88, 'Loha\n', 'Nanded\n'),
(89, 'Naigaon\n', 'Nanded\n'),
(90, 'Deglur\n', 'Nanded\n'),
(91, 'Mukhed\n', 'Nanded\n'),
(92, 'Basmath\n', 'Hingoli\n'),
(93, 'Kalamnuri\n', 'Hingoli\n'),
(94, 'Hingoli\n', 'Hingoli\n'),
(95, 'Jintur\n', 'Parbhani\n'),
(96, 'Parbhani\n', 'Parbhani\n'),
(97, 'Gangakhed\n', 'Parbhani\n'),
(98, 'Pathri\n', 'Parbhani\n'),
(99, 'Partur\n', 'Jalna\n'),
(100, 'Ghansawangi\n', 'Jalna\n'),
(101, 'Jalna\n', 'Jalna\n'),
(102, 'Badnapur\n', 'Jalna\n'),
(103, 'Bhokardan\n', 'Jalna\n'),
(104, 'Sillod\n', 'Aurangabad\n'),
(105, 'Kannad\n', 'Aurangabad\n'),
(106, 'Phulambri\n', 'Aurangabad\n'),
(107, 'Aurangabad Central\n', 'Aurangabad\n'),
(108, 'Aurangabad West\n', 'Aurangabad\n'),
(109, 'Aurangabad East\n', 'Aurangabad\n'),
(110, 'Paithan\n', 'Aurangabad\n'),
(111, 'Gangapur\n', 'Aurangabad\n'),
(112, 'Vaijapur\n', 'Aurangabad\n'),
(113, 'Nandgaon\n', 'Nashik\n'),
(114, 'Malegaon Central\n', 'Nashik\n'),
(115, 'Malegaon Outer\n', 'Nashik\n'),
(116, 'Baglan\n', 'Nashik\n'),
(117, 'Kalvan\n', 'Nashik\n'),
(118, 'Chandvad\n', 'Nashik\n'),
(119, 'Yewla\n', 'Nashik\n'),
(120, 'Sinnar\n', 'Nashik\n'),
(121, 'Niphad\n', 'Nashik\n'),
(122, 'Dindori\n', 'Nashik\n'),
(123, 'Nashik East\n', 'Nashik\n'),
(124, 'Nashik Central\n', 'Nashik\n'),
(125, 'Nashik West\n', 'Nashik\n'),
(126, 'Deolali\n', 'Nashik\n'),
(127, 'Igatpuri\n', 'Nashik\n'),
(128, 'Dahanu\n', 'Palghar\n'),
(129, 'Vikramgad\n', 'Palghar\n'),
(130, 'Palghar\n', 'Palghar\n'),
(131, 'Boisar\n', 'Palghar\n'),
(132, 'Nalasopara\n', 'Palghar\n'),
(133, 'Vasai\n', 'Palghar\n'),
(134, 'Bhiwandi Rural\n', 'Thane\n'),
(135, 'Shahapur\n', 'Thane\n'),
(136, 'Bhiwandi West\n', 'Thane\n'),
(137, 'Bhiwandi East\n', 'Thane\n'),
(138, 'Kalyan West\n', 'Thane\n'),
(139, 'Murbad\n', 'Thane\n'),
(140, 'Ambernath\n', 'Thane\n'),
(141, 'Ulhasnagar\n', 'Thane\n'),
(142, 'Kalyan East\n', 'Thane\n'),
(143, 'Dombivali\n', 'Thane\n'),
(144, 'Kalyan Rural\n', 'Thane\n'),
(145, 'Mira Bhayandar\n', 'Thane\n'),
(146, 'Ovala-Majiwada\n', 'Thane\n'),
(147, 'Kopri-Pachpakhadi\n', 'Thane\n'),
(148, 'Thane\n', 'Thane\n'),
(149, 'Mumbra-Kalwa\n', 'Thane\n'),
(150, 'Airoli\n', 'Thane\n'),
(151, 'Belapur\n', 'Thane\n'),
(152, 'Borivali\n', 'Mumbai Suburban\n'),
(153, 'Dahisar\n', 'Mumbai Suburban\n'),
(154, 'Magathane\n', 'Mumbai Suburban\n'),
(155, 'Mulund\n', 'Mumbai Suburban\n'),
(156, 'Vikhroli\n', 'Mumbai Suburban\n'),
(157, 'Bhandup West\n', 'Mumbai Suburban\n'),
(158, 'Jogeshwari East\n', 'Mumbai Suburban\n'),
(159, 'Dindoshi\n', 'Mumbai Suburban\n'),
(160, 'Kandivali East\n', 'Mumbai Suburban\n'),
(161, 'Charkop\n', 'Mumbai Suburban\n'),
(162, 'Malad West\n', 'Mumbai Suburban\n'),
(163, 'Goregaon\n', 'Mumbai Suburban\n'),
(164, 'Versova\n', 'Mumbai Suburban\n'),
(165, 'Andheri West\n', 'Mumbai Suburban\n'),
(166, 'Andheri East\n', 'Mumbai Suburban\n'),
(167, 'Vile Parle\n', 'Mumbai Suburban\n'),
(168, 'Chandivali\n', 'Mumbai Suburban\n'),
(169, 'Ghatkopar West\n', 'Mumbai Suburban\n'),
(170, 'Ghatkopar East\n', 'Mumbai Suburban\n'),
(171, 'Mankhurd Shivaji Nag', 'Mumbai Suburban\n'),
(172, 'Anushakti Nagar\n', 'Mumbai Suburban\n'),
(173, 'Chembur\n', 'Mumbai Suburban\n'),
(174, 'Kurla\n', 'Mumbai Suburban\n'),
(175, 'Kalina\n', 'Mumbai Suburban\n'),
(176, 'Vandre East\n', 'Mumbai Suburban\n'),
(177, 'Vandre West\n', 'Mumbai Suburban\n'),
(178, 'Dharavi\n', 'Mumbai City\n'),
(179, 'Sion Koliwada\n', 'Mumbai City\n'),
(180, 'Wadala\n', 'Mumbai City\n'),
(181, 'Mahim\n', 'Mumbai City\n'),
(182, 'Worli\n', 'Mumbai City\n'),
(183, 'Shivadi\n', 'Mumbai City\n'),
(184, 'Byculla\n', 'Mumbai City\n'),
(185, 'Malabar Hill\n', 'Mumbai City\n'),
(186, 'Mumbadevi\n', 'Mumbai City\n'),
(187, 'Colaba\n', 'Mumbai City\n'),
(188, 'Panvel\n', 'Raigad\n'),
(189, 'Karjat\n', 'Raigad\n'),
(190, 'Uran\n', 'Raigad\n'),
(191, 'Pen\n', 'Raigad\n'),
(192, 'Alibag\n', 'Raigad\n'),
(193, 'Shrivardhan\n', 'Raigad\n'),
(194, 'Mahad\n', 'Raigad\n'),
(195, 'Junnar\n', 'Pune\n'),
(196, 'Ambegaon\n', 'Pune\n'),
(197, 'Khed Alandi\n', 'Pune\n'),
(198, 'Shirur\n', 'Pune\n'),
(199, 'Daund\n', 'Pune\n'),
(200, 'Indapur\n', 'Pune\n'),
(201, 'Baramati\n', 'Pune\n'),
(202, 'Purandar\n', 'Pune\n'),
(203, 'Bhor\n', 'Pune\n'),
(204, 'Maval\n', 'Pune\n'),
(205, 'Chinchwad\n', 'Pune\n'),
(206, 'Pimpri\n', 'Pune\n'),
(207, 'Bhosari\n', 'Pune\n'),
(208, 'Vadgaon Sheri\n', 'Pune\n'),
(209, 'Shivajinagar\n', 'Pune\n'),
(210, 'Kothrud\n', 'Pune\n'),
(211, 'Khadakwasala\n', 'Pune\n'),
(212, 'Parvati\n', 'Pune\n'),
(213, 'Hadapsar\n', 'Pune\n'),
(214, 'Pune Cantonment\n', 'Pune\n'),
(215, 'Kasba Peth\n', 'Pune\n'),
(216, 'Akole\n', 'Ahmednagar\n'),
(217, 'Sangamner\n', 'Ahmednagar\n'),
(218, 'Shirdi\n', 'Ahmednagar\n'),
(219, 'Kopargaon\n', 'Ahmednagar\n'),
(220, 'Shrirampur\n', 'Ahmednagar\n'),
(221, 'Nevasa\n', 'Ahmednagar\n'),
(222, 'Shevgaon\n', 'Ahmednagar\n'),
(223, 'Rahuri\n', 'Ahmednagar\n'),
(224, 'Parner\n', 'Ahmednagar\n'),
(225, 'Ahmednagar City\n', 'Ahmednagar\n'),
(226, 'Shrigonda\n', 'Ahmednagar\n'),
(227, 'Karjat Jamkhed\n', 'Ahmednagar\n'),
(228, 'Georai\n', 'Beed\n'),
(229, 'Majalgaon\n', 'Beed\n'),
(230, 'Beed\n', 'Beed\n'),
(231, 'Ashti\n', 'Beed\n'),
(232, 'Kaij\n', 'Beed\n'),
(233, 'Parli\n', 'Beed\n'),
(234, 'Latur Rural\n', 'Latur\n'),
(235, 'Latur City\n', 'Latur\n'),
(236, 'Ahmadpur\n', 'Latur\n'),
(237, 'Udgir\n', 'Latur\n'),
(238, 'Nilanga\n', 'Latur\n'),
(239, 'Ausa\n', 'Latur\n'),
(240, 'Umarga\n', 'Osmanabad\n'),
(241, 'Tuljapur\n', 'Osmanabad\n'),
(242, 'Osmanabad\n', 'Osmanabad\n'),
(243, 'Paranda\n', 'Osmanabad\n'),
(244, 'Karmala\n', 'Solapur\n'),
(245, 'Madha\n', 'Solapur\n'),
(246, 'Barshi\n', 'Solapur\n'),
(247, 'Mohol\n', 'Solapur\n'),
(248, 'Solapur City North\n', 'Solapur\n'),
(249, 'Solapur City Central', 'Solapur\n'),
(250, 'Akkalkot\n', 'Solapur\n'),
(251, 'Solapur South\n', 'Solapur\n'),
(252, 'Pandharpur\n', 'Solapur\n'),
(253, 'Sangole\n', 'Solapur\n'),
(254, 'Malshiras\n', 'Solapur\n'),
(255, 'Phaltan\n', 'Satara\n'),
(256, 'Wai\n', 'Satara\n'),
(257, 'Koregaon\n', 'Satara\n'),
(258, 'Man\n', 'Satara\n'),
(259, 'Karad North\n', 'Satara\n'),
(260, 'Karad South\n', 'Satara\n'),
(261, 'Patan\n', 'Satara\n'),
(262, 'Satara\n', 'Satara\n'),
(263, 'Dapoli\n', 'Ratnagiri\n'),
(264, 'Guhagar\n', 'Ratnagiri\n'),
(265, 'Chiplun\n', 'Ratnagiri\n'),
(266, 'Ratnagiri\n', 'Ratnagiri\n'),
(267, 'Rajapur\n', 'Ratnagiri\n'),
(268, 'Kankavli\n', 'Sindhudurg\n'),
(269, 'Kudal\n', 'Sindhudurg\n'),
(270, 'Sawantwadi\n', 'Sindhudurg\n'),
(271, 'Chandgad\n', 'Kolhapur\n'),
(272, 'Radhanagari\n', 'Kolhapur\n'),
(273, 'Kagal\n', 'Kolhapur\n'),
(274, 'Kolhapur South\n', 'Kolhapur\n'),
(275, 'Karvir\n', 'Kolhapur\n'),
(276, 'Kolhapur North\n', 'Kolhapur\n'),
(277, 'Shahuwadi\n', 'Kolhapur\n'),
(278, 'Hatkanangle\n', 'Kolhapur\n'),
(279, 'Ichalkaranji\n', 'Kolhapur\n'),
(280, 'Shirol\n', 'Kolhapur\n'),
(281, 'Miraj\n', 'Sangli\n'),
(282, 'Sangli\n', 'Sangli\n'),
(283, 'Islampur\n', 'Sangli district\n'),
(284, 'Shirala\n', 'Sangli district\n'),
(285, 'Palus-Kadegaon\n', 'Sangli district\n'),
(286, 'Khanapur\n', 'Sangli district\n'),
(287, 'Tasgaon-Kavathe Maha', 'Sangli district\n'),
(288, 'Jat\n', 'Sangli district\n');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Const.No.` int(11) NOT NULL,
  `Constituency` varchar(40) NOT NULL,
  `Type_of_A.C.` varchar(10) NOT NULL,
  `Candidate_Name` varchar(50) NOT NULL,
  `Party` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Const.No.`, `Constituency`, `Type_of_A.C.`, `Candidate_Name`, `Party`) VALUES
(1, 'Akkalkuwa (ST)', '(ST)', 'Padavi Adv. K.C.', 'INC'),
(2, 'Shahada (ST)', '(ST)', 'Padvi Udesing Kocharu', 'BJP'),
(3, 'Nandurbar (ST)', '(ST)', 'Gavit Vijaykumar Krushnarao', 'BJP'),
(4, 'Nawapur (ST)', '(ST)', 'Naik Surupsing Hirya', 'INC'),
(5, 'Sakri (ST)', '(ST)', 'Ahire Dhanaji Sitaram Or D.S.Ahire', 'INC'),
(6, 'Dhule Rural ', 'GEN', 'Kunal (Baba) Rohidas Patil', 'INC'),
(7, 'Dhule City ', 'GEN', 'Anil Anna Gote', 'BJP'),
(8, 'Sindkheda ', 'GEN', 'Jaykumar Jitendrasinh Rawal', 'BJP'),
(9, 'Shirpur (ST)', '(ST)', 'Kashiram Vechan Pawara', 'INC'),
(10, 'Chopda (ST)', '(ST)', 'Sonawane Chandrakant Baliram', 'SHS'),
(11, 'Raver ', 'GEN', 'Haribhau Madhav Jawale', 'BJP'),
(12, 'Bhusawal ', 'GEN', 'Sawakare Sanjay Waman', 'BJP'),
(13, 'Jalgaon City ', 'GEN', 'Suresh Damu Bhole (Rajumama)', 'BJP'),
(14, 'Jalgaon Rural ', 'GEN', 'Patil Gulab Raghunath', 'SHS'),
(15, 'Amalner ', 'GEN', 'Shirishdada Hiralal Chaudhari', 'IND'),
(16, 'Erandol ', 'GEN', 'Annasaheb Dr. Satish Bhaskarrao Patil', 'NCP'),
(17, 'Chalisgaon ', 'GEN', 'Unmesh Bhaiyyasaheb Patil', 'BJP'),
(18, 'Pachora ', 'GEN', 'Kishor Appa Patil', 'SHS'),
(19, 'Jamner ', 'GEN', 'Girish Dattatray Mahajan', 'BJP'),
(20, 'Muktainagar ', 'GEN', 'Khadse Eknathrao Ganpatrao', 'BJP'),
(21, 'Malkapur ', 'GEN', 'Chainsukh Madanlal Sancheti', 'BJP'),
(22, 'Buldhana ', 'GEN', 'Harshwardhan Vasantrao Sapkal', 'INC'),
(23, 'Chikhli ', 'GEN', 'Rahul Siddhavinayak Bondre', 'INC'),
(24, 'Sindkhed Raja ', 'GEN', 'Dr. Khedekar Shashikant Narsingrao', 'SHS'),
(25, 'Mehkar (SC)', '(SC)', 'Sanjay Bhashkar Raimulkar', 'SHS'),
(26, 'Khamgaon ', 'GEN', 'Akash Pandurang Fundkar', 'BJP'),
(27, 'Jalgaon Jamod ', 'GEN', 'Kute Dr. Sanjay Shriram', 'BJP'),
(28, 'Akot ', 'GEN', 'Bharsakle Prakash Gunvantrao', 'BJP'),
(29, 'Balapur ', 'GEN', 'Baliram Bhagwan Sirskar', 'BBM'),
(30, 'Akola West ', 'GEN', 'Govardhan Mangilal Sharma', 'BJP'),
(31, 'Akola East ', 'GEN', 'Savarkar Randhir Pralhadrao', 'BJP'),
(32, 'Murtijapur (SC)', '(SC)', 'Harish Marotiappa Pimple', 'BJP'),
(33, 'Risod ', 'GEN', 'Ameet Subhashrao Zanak', 'INC'),
(34, 'Washim (SC)', '(SC)', 'Malik Lakhan Sahadev', 'BJP'),
(35, 'Karanja ', 'GEN', 'Patni Rajendra Sukhanand', 'BJP'),
(36, 'Dhamangaon Railway ', 'GEN', 'Jagtap Virendra Walmik', 'INC'),
(37, 'Badnera ', 'GEN', 'Ravi Rana', 'IND'),
(38, 'Amravati ', 'GEN', 'Dr. Deshmukh Sunil Panjabrao', 'BJP'),
(39, 'Teosa ', 'GEN', 'Adv. Yashomati Thakur (Sonawane)', 'INC'),
(40, 'Daryapur (SC)', '(SC)', 'Ramesh Ganpatrao Bundile', 'BJP'),
(41, 'Melghat (ST)', '(ST)', 'Bhilawekar Prabhdas Babulal', 'BJP'),
(42, 'Achalpur ', 'GEN', 'Bacchu Alias Omprakash Babarao Kadu', 'IND'),
(43, 'Morshi ', 'GEN', 'Dr. Anil Sukhdevrao Bonde', 'BJP'),
(44, 'Arvi ', 'GEN', 'Amar Sharadrao Kale', 'INC'),
(45, 'Deoli ', 'GEN', 'Kamble Ranjit Prataprao', 'INC'),
(46, 'Hinganghat ', 'GEN', 'Kunawar Samir Trambakrao', 'BJP'),
(47, 'Wardha ', 'GEN', 'Dr.Pankaj Rajesh Bhoyar', 'BJP'),
(48, 'Katol ', 'GEN', 'Dr Ashish Deshmukh', 'BJP'),
(49, 'Savner ', 'GEN', 'Kedar Sunil Chhatrapal', 'INC'),
(50, 'Hingna ', 'GEN', 'Meghe Sameer Dattatraya', 'BJP'),
(51, 'Umred (SC)', '(SC)', 'Parwe Sudhir Laxman', 'BJP'),
(52, 'Nagpur South West ', 'GEN', 'Devendra Gangadhar Fadnavis', 'BJP'),
(53, 'Nagpur South ', 'GEN', 'Kohale Sudhakar Vitthalrao', 'BJP'),
(54, 'Nagpur East ', 'GEN', 'Khopde Krishna Pancham', 'BJP'),
(55, 'Nagpur Central ', 'GEN', 'Kumbhare Vikas Shankarrao', 'BJP'),
(56, 'Nagpur West ', 'GEN', 'Deshmukh Sudhakar Shamrao', 'BJP'),
(57, 'Nagpur North (SC)', '(SC)', 'Dr. Milind Mane', 'BJP'),
(58, 'Kamthi ', 'GEN', 'Chandrashekhar Krushnrao Bawankule', 'BJP'),
(59, 'Ramtek ', 'GEN', 'Reddy Dwaram Mallikarjun Ramreddy', 'BJP'),
(60, 'Tumsar ', 'GEN', 'Waghamare Charan Sovinda', 'BJP'),
(61, 'Bhandara (SC)', '(SC)', 'Avsare Ramchandra Punaji', 'BJP'),
(62, 'Sakoli ', 'GEN', 'Kashiwar Rajesh Lahanu', 'BJP'),
(63, 'Arjuni Morgaon (SC)', '(SC)', 'Badole Rajkumar Sudamji', 'BJP'),
(64, 'Tirora ', 'GEN', 'Rahangdale Vijay Bharatlal', 'BJP'),
(65, 'Gondia ', 'GEN', 'Agrawal Gopaldas Shankarlal', 'INC'),
(66, 'Amgaon (ST)', '(ST)', 'Puram Sanjay Hanwantrao', 'BJP'),
(67, 'Armori (ST)', '(ST)', 'Krushna Damaji Gajbe', 'BJP'),
(68, 'Gadchiroli (ST)', '(ST)', 'Dr. Deorao Madguji Holi', 'BJP'),
(69, 'Aheri (ST)', '(ST)', 'Ambrishrao Raje Satyavanrao Atram', 'BJP'),
(70, 'Rajura ', 'GEN', 'Sanjay Yadaorao Dhote', 'BJP'),
(71, 'Chandrapur (SC)', '(SC)', 'Shamkule Nanaji Sitaram', 'BJP'),
(72, 'Ballarpur ', 'GEN', 'Mungantiwar Sudhir Sachhidanand', 'BJP'),
(73, 'Brahmapuri ', 'GEN', 'Wadettiwar Vijay Namdevrao', 'INC'),
(74, 'Chimur ', 'GEN', 'Banti Bhangdiya', 'BJP'),
(75, 'Warora ', 'GEN', 'Suresh Alias Balubhau Narayan Dhanorkar', 'SHS'),
(76, 'Wani ', 'GEN', 'Bodkurwar Sanjivreddi Bapurao', 'BJP'),
(77, 'Ralegaon (ST)', '(ST)', 'Pro. Dr. Ashok Ramaji Wooike', 'BJP'),
(78, 'Yavatmal ', 'GEN', 'Madan Madhukarrao Yerawar', 'BJP'),
(79, 'Digras ', 'GEN', 'Rathod Sanjay Dulichand', 'SHS'),
(80, 'Arni (ST)', '(ST)', 'Raju Narayan Todsam', 'BJP'),
(81, 'Pusad ', 'GEN', 'Naik Manohar Rajusing', 'NCP'),
(82, 'Umarkhed (SC)', '(SC)', 'Rajendra Waman Najardhane', 'BJP'),
(83, 'Kinwat ', 'GEN', 'Jadhav Pradeep Naik', 'NCP'),
(84, 'Hadgaon ', 'GEN', 'Ashtikar Patil Nagesh Bapurao', 'SHS'),
(85, 'Bhokar ', 'GEN', 'Ameeta Ashokrao Chavan', 'INC'),
(86, 'Nanded North ', 'GEN', 'D.P.Sawant', 'INC'),
(87, 'Nanded South ', 'GEN', 'Hemant Sriram Patil', 'SHS'),
(88, 'Loha ', 'GEN', 'Chikhalikar Prataprao Govindrao', 'SHS'),
(89, 'Naigaon ', 'GEN', 'Chavan Vasantrao Balwantrao', 'INC'),
(90, 'Deglur (SC)', '(SC)', 'Sabne Subhash Piraji', 'SHS'),
(91, 'Mukhed ', 'GEN', 'Govind Mukkaji Rathod', 'BJP'),
(92, 'Basmath ', 'GEN', 'Mundada Jaiprakash Shankarlal', 'SHS'),
(93, 'Kalamnuri ', 'GEN', 'Tarfe Santosh Kautika', 'INC'),
(94, 'Hingoli ', 'GEN', 'Mutkule Tanhaji Sakharamji', 'BJP'),
(95, 'Jintur ', 'GEN', 'Bhamale Vijay Manikrao', 'NCP'),
(96, 'Parbhani ', 'GEN', 'Dr.Rahul Vedprakash Patil', 'SHS'),
(97, 'Gangakhed ', 'GEN', 'Madhusudan Manikrao Kendre', 'NCP'),
(98, 'Pathri ', 'GEN', 'Fad Mohan Madhavrao', 'IND'),
(99, 'Partur ', 'GEN', 'Babanrao Dattatray Yadav Lonikar', 'BJP'),
(100, 'Ghansawangi ', 'GEN', 'Rajeshbhaiyya Tope', 'NCP'),
(101, 'Jalna ', 'GEN', 'Arjun Panditrao Khotkar', 'SHS'),
(102, 'Badnapur (SC)', '(SC)', 'Kuche Narayan Tilakchand', 'BJP'),
(103, 'Bhokardan ', 'GEN', 'Danave Santosh Raosaheb', 'BJP'),
(104, 'Sillod ', 'GEN', 'Abdul Sattar Abdul Nabi', 'INC'),
(105, 'Kannad ', 'GEN', 'Jadhav Harshvardhan Raibhan', 'SHS'),
(106, 'Phulambri ', 'GEN', 'Bagde Haribhau Kisanrao', 'BJP'),
(107, 'Aurangabad Central ', 'GEN', 'Sayed Imtiaz Jalil', 'AIMIM'),
(108, 'Aurangabad West (SC)', '(SC)', 'Sanjay Shirsat', 'SHS'),
(109, 'Aurangabad East ', 'GEN', 'Atul Moreshwar Save', 'BJP'),
(110, 'Paithan ', 'GEN', 'Bhumre Sandipanrao Aasaram', 'SHS'),
(111, 'Gangapur ', 'GEN', 'Bamb Prashant Bansilal', 'BJP'),
(112, 'Vaijapur ', 'GEN', 'Bhausaheb Patil Chikatgaonkar', 'NCP'),
(113, 'Nandgaon ', 'GEN', 'Pankaj Chhagan Bhujbal', 'NCP'),
(114, 'Malegaon Central ', 'GEN', 'Shaikh Aasif Shaikh Rashid', 'INC'),
(115, 'Malegaon Outer ', 'GEN', 'Bhuse Dadaji Dagdu', 'SHS'),
(116, 'Baglan (ST)', '(ST)', 'Chavan Dipika Sanjay', 'NCP'),
(117, 'Kalwan (ST)', '(ST)', 'Gavit Jiva Pandu', 'CPM'),
(118, 'Chandwad ', 'GEN', 'Dr. Aher Rahul Daultrao', 'BJP'),
(119, 'Yevla ', 'GEN', 'Chhagan Bhujbal', 'NCP'),
(120, 'Sinnar ', 'GEN', 'Rajabhau (Parag) Prakash Waje', 'SHS'),
(121, 'Niphad ', 'GEN', 'Anil Sahebrao Kadam', 'SHS'),
(122, 'Dindori (ST)', '(ST)', 'Zirwal Narhari Sitaram', 'NCP'),
(123, 'Nashik East ', 'GEN', 'Balasaheb Mahadu Sanap', 'BJP'),
(124, 'Nashik Central ', 'GEN', 'Farande Devayani Suhas', 'BJP'),
(125, 'Nashik West ', 'GEN', 'Hiray Seema Mahesh (Seematai)', 'BJP'),
(126, 'Deolali (SC)', '(SC)', 'Gholap Yogesh(Bapu) Babanrao', 'SHS'),
(127, 'Igatpuri (ST)', '(ST)', 'Gaveet Nirmala Ramesh', 'INC'),
(128, 'Dahanu (ST)', '(ST)', 'Dhanare Paskal Janya', 'BJP'),
(129, 'Vikramgad (ST)', '(ST)', 'Savara Vishnu Rama', 'BJP'),
(130, 'Palghar (ST)', '(ST)', 'Ghoda Krushna Arjun', 'SHS'),
(131, 'Boisar (ST)', '(ST)', 'Tare Vilas Sukur', 'BVA'),
(132, 'Nalasopara ', 'GEN', 'Kshitij Hitendra Thakur', 'BVA'),
(133, 'Vasai ', 'GEN', 'Hitendra Vishnu Thakur', 'BVA'),
(134, 'Bhiwandi Rural (ST)', '(ST)', 'Shantaram Tukaram More', 'SHS'),
(135, 'Shahapur (ST)', '(ST)', 'Barora Pandurang Mahadu', 'NCP'),
(136, 'Bhiwandi West ', 'GEN', 'Choughule Mahesh Prabhakar', 'BJP'),
(137, 'Bhiwandi East ', 'GEN', 'Rupesh Laxman Mhatre', 'SHS'),
(138, 'Kalyan West ', 'GEN', 'Narendra Baburao Pawar', 'BJP'),
(139, 'Murbad ', 'GEN', 'Kisan Shankar Kathore', 'BJP'),
(140, 'Ambernath (SC)', '(SC)', 'Dr. Balaji Kinikar', 'SHS'),
(141, 'Ulhasnagar ', 'GEN', 'Jyoti Pappu Kalani', 'NCP'),
(142, 'Kalyan East ', 'GEN', 'Ganpat Kalu Gaikwad', 'IND'),
(143, 'Dombivali ', 'GEN', 'Chavhan Ravindra Dattatray', 'BJP'),
(144, 'Kalyan Rural ', 'GEN', 'Bhoir Subhash Ganu', 'SHS'),
(145, 'Mira Bhayandar ', 'GEN', 'Narendra Mehta', 'BJP'),
(146, 'Ovala - Majiwada ', 'GEN', 'Pratap Baburao Sarnaik', 'SHS'),
(147, 'Kopri Pachpakhadi ', 'GEN', 'Eknath Sambhaji Shinde', 'SHS'),
(148, 'Thane ', 'GEN', 'Kelkar Sanjay Mukund', 'BJP'),
(149, 'Mumbra Kalwa', 'GEN', 'Awhad Jitendra Satish', 'NCP'),
(150, 'Airoli', 'GEN', 'Sandeep Ganesh Naik', 'NCP'),
(151, 'Belapur ', 'GEN', 'Manda Vijay Mhatre', 'BJP'),
(152, 'Borivali ', 'GEN', 'Vinod Tawde', 'BJP'),
(153, 'Dahisar ', 'GEN', 'Chaudhary Manisha Ashok', 'BJP'),
(154, 'Magathane ', 'GEN', 'Prakash Surve', 'SHS'),
(155, 'Mulund ', 'GEN', 'Sardar Tara Singh', 'BJP'),
(156, 'Vikhroli ', 'GEN', 'Sunil Rajaram Raut', 'SHS'),
(157, 'Bhandup West ', 'GEN', 'Ashok Patil', 'SHS'),
(158, 'Jogeshwari East ', 'GEN', 'Ravindra Dattaram Waikar', 'SHS'),
(159, 'Dindoshi ', 'GEN', 'Sunil Prabhu', 'SHS'),
(160, 'Kandivali East ', 'GEN', 'Atul Bhatkhalkar', 'BJP'),
(161, 'Charkop ', 'GEN', 'Yogesh Sagar', 'BJP'),
(162, 'Malad West ', 'GEN', 'Aslam Shaikh', 'INC'),
(163, 'Goregaon ', 'GEN', 'Vidya Thakur', 'BJP'),
(164, 'Versova ', 'GEN', 'Dr. Bharati Hemant Lavekar', 'BJP'),
(165, 'Andheri West ', 'GEN', 'Ameet Bhaskar Satam', 'BJP'),
(166, 'Andheri East ', 'GEN', 'Ramesh Latke', 'SHS'),
(167, 'Vile Parle ', 'GEN', 'Parag Alavani', 'BJP'),
(168, 'Chandivali ', 'GEN', 'Khan Mohd. Arif (Naseem)', 'INC'),
(169, 'Ghatkopar West ', 'GEN', 'Ram Kadam', 'BJP'),
(170, 'Ghatkopar East ', 'GEN', 'Mehta Prakash Manchhubhai', 'BJP'),
(171, 'Mankhurd Shivaji Nagar ', 'GEN', 'Abu Asim Azmi', 'SP'),
(172, 'Anushakti Nagar ', 'GEN', 'Tukaram Ramkrishna Kate', 'SHS'),
(173, 'Chembur ', 'GEN', 'Prakash Vaikunth Phaterpekar', 'SHS'),
(174, 'Kurla (SC)', '(SC)', 'Mangesh Kudalkar', 'SHS'),
(175, 'Kalina ', 'GEN', 'Sanjay Govind Potnis', 'SHS'),
(176, 'Vandre East ', 'GEN', 'Prakash (Bala) Sawant', 'SHS'),
(177, 'Vandre West', 'GEN', 'Av. Ashish Shelar', 'BJP'),
(178, 'Dharavi (SC)', '(SC)', 'Gaikwad Varsha Eknath', 'INC'),
(179, 'Sion Koliwada ', 'GEN', 'Captain R. Tamil Selvan,', 'BJP'),
(180, 'Wadala ', 'GEN', 'Kalidas Nilkanth Kolambkar', 'INC'),
(181, 'Mahim ', 'GEN', 'Sada Sarvankar', 'SHS'),
(182, 'Worli ', 'GEN', 'Sunil Govind Shinde', 'SHS'),
(183, 'Shivadi ', 'GEN', 'Ajay Choudhari', 'SHS'),
(184, 'Byculla ', 'GEN', 'Advocate Waris Yusuf Pathan', 'AIMIM'),
(185, 'Malabar Hill ', 'GEN', 'Mangal Prabhat Lodha', 'BJP'),
(186, 'Mumbadevi ', 'GEN', 'Amin Patel', 'INC'),
(187, 'Colaba ', 'GEN', 'Raj K.Purohit', 'BJP'),
(188, 'Panvel ', 'GEN', 'Prashant Ramsheth Thakur', 'BJP'),
(189, 'Karjat ', 'GEN', 'Sureshbhau Narayan Lad', 'NCP'),
(190, 'Uran ', 'GEN', 'Manohar Gajanan Bhoir', 'SHS'),
(191, 'Pen ', 'GEN', 'Dhairyasheel Mohan Patil', 'PWPI'),
(192, 'Alibag ', 'GEN', 'Subhash Alias Panditshet Patil', 'PWPI'),
(193, 'Shrivardhan ', 'GEN', 'Avdhoot Anil Tatkare', 'NCP'),
(194, 'Mahad ', 'GEN', 'Gogawale Bharat Maruti', 'SHS'),
(195, 'Junnar ', 'GEN', 'Sharaddada Bhimaji Sonavane', 'MNS'),
(196, 'Ambegaon ', 'GEN', 'Dilip Dattatray Walse Patil', 'NCP'),
(197, 'Khed Alandi ', 'GEN', 'Gore Suresh Namdeo', 'SHS'),
(198, 'Shirur ', 'GEN', 'Pacharne Baburao Kashinath', 'BJP'),
(199, 'Daund ', 'GEN', 'Kul Rahul Subhashrao', 'RSP'),
(200, 'Indapur ', 'GEN', 'Dattatray Vithoba Bharne', 'NCP'),
(201, 'Baramati ', 'GEN', 'Ajit Anantrao Pawar', 'NCP'),
(202, 'Purandar ', 'GEN', 'Vijaybapu Shivtare', 'SHS'),
(203, 'Bhor ', 'GEN', 'Sangram Anantrao Thopate', 'INC'),
(204, 'Maval ', 'GEN', 'Bhegade Sanjay (Bala) Vishwanath', 'BJP'),
(205, 'Chinchwad ', 'GEN', 'Jagtap Laxman Pandurang', 'BJP'),
(206, 'Pimpri (SC)', '(SC)', 'Adv. Chabukswar Gautam Sukhdeo', 'SHS'),
(207, 'Bhosari ', 'GEN', 'Mahesh (Dada) Kisan Landge', 'IND'),
(208, 'Vadgaon Sheri ', 'GEN', 'Jagdish Tukaram Muluk', 'BJP'),
(209, 'Shivajinagar ', 'GEN', 'Vijay Kale', 'BJP'),
(210, 'Kothrud ', 'GEN', 'Kulkarni Medha Vishram', 'BJP'),
(211, 'Khadakwasla ', 'GEN', 'Tapkir Bhimrao Dhondiba', 'BJP'),
(212, 'Parvati ', 'GEN', 'Misal Madhuri Satish', 'BJP'),
(213, 'Hadapsar ', 'GEN', 'Tilekar Yogesh Kundalik', 'BJP'),
(214, 'Pune Cantonment ', 'GEN', 'Dilip Kamble', 'BJP'),
(215, 'Kasba Peth ', 'GEN', 'Bapat Girish Bhalchandra', 'BJP'),
(216, 'Akole (ST)', '(ST)', 'Pichad Vaibhav Madhukar', 'NCP'),
(217, 'Sangamner ', 'GEN', 'Vijay Alias Balasaheb Bhausaheb Thorat', 'INC'),
(218, 'Shirdi ', 'GEN', 'Radhakrishna Eknathrao Vikhe Patil', 'INC'),
(219, 'Kopargaon ', 'GEN', 'Kolhe Snehalata Bipindada', 'BJP'),
(220, 'Shrirampur (SC)', '(SC)', 'Bhausaheb Malhari Kamble', 'INC'),
(221, 'Nevasa ', 'GEN', 'Balasaheb Alias Dadasaheb Damodhar Murkute', 'BJP'),
(222, 'Shevgaon ', 'GEN', 'Monika Rajiv Rajale', 'BJP'),
(223, 'Rahuri ', 'GEN', 'Kardile Shivaji Bhanudas', 'BJP'),
(224, 'Parner ', 'GEN', 'Auti Vijayrao Bhaskarrao', 'SHS'),
(225, 'Ahmednagar City ', 'GEN', 'Sangram Arunkaka Jagtap', 'NCP'),
(226, 'Shrigonda ', 'GEN', 'Jagtap Rahul Kundlikrao', 'NCP'),
(227, 'Karjat Jamkhed ', 'GEN', 'Pro. Ram Shankar Shinde', 'BJP'),
(228, 'Georai ', 'GEN', 'Pawar Laxman Madhavro', 'BJP'),
(229, 'Majalgaon ', 'GEN', 'R.T.Deshmukh (Jija)', 'BJP'),
(230, 'Beed ', 'GEN', 'Kshirsager Jaydattji Sonajirao', 'NCP'),
(231, 'Ashti ', 'GEN', 'Dhonde Bhimrao Anandrao', 'BJP'),
(232, 'Kaij (SC)', '(SC)', 'Thombre Sangeeta Vijayprakash', 'BJP'),
(233, 'Parli ', 'GEN', 'Munde Pankaja Gopinathrao', 'BJP'),
(234, 'Latur Rural ', 'GEN', 'Bhise Trimbakrao Shrirangrao', 'INC'),
(235, 'Latur City ', 'GEN', 'Amit Vilasrao Deshmukh', 'INC'),
(236, 'Ahmadpur ', 'GEN', 'Jadhav Patil Vinayakrao Kishanrao', 'IND'),
(237, 'Udgir (SC)', '(SC)', 'Sudhakar Sangram Bhalerao', 'BJP'),
(238, 'Nilanga ', 'GEN', 'Nilangekar Sambhaji Deeliprao Patil', 'BJP'),
(239, 'Ausa ', 'GEN', 'Basavraj Madhavrao Patil', 'INC'),
(240, 'Umarga (SC)', '(SC)', 'Chougule Dnyanraj Dhondiram', 'SHS'),
(241, 'Tuljapur ', 'GEN', 'Chavan Madhukarrao Deorao', 'INC'),
(242, 'Osmanabad ', 'GEN', 'Rana Jagjit Sinha Padma Sinha Patil', 'NCP'),
(243, 'Paranda ', 'GEN', 'Mote Rahul Maharudra', 'NCP'),
(244, 'Karmala ', 'GEN', 'Patil Narayan Govindrao', 'SHS'),
(245, 'Madha ', 'GEN', 'Shinde Babanrao Vitthalrao', 'NCP'),
(246, 'Barshi ', 'GEN', 'Dilip Gangadhar Sopal', 'NCP'),
(247, 'Mohol (SC)', '(SC)', 'Ramesh Nagnath Kadam', 'NCP'),
(248, 'Solapur City North ', 'GEN', 'Vijay Sidramappa Deshmukh', 'BJP'),
(249, 'Solapur City Central ', 'GEN', 'Shinde Praniti Sushilkumar', 'INC'),
(250, 'Akkalkot ', 'GEN', 'Siddharam Satlingappa Mhetre', 'INC'),
(251, 'Solapur South ', 'GEN', 'Deshmukh Subhash Sureshchandra', 'BJP'),
(252, 'Pandharpur ', 'GEN', 'Bhalake Bharat Tukaram', 'INC'),
(253, 'Sangole ', 'GEN', 'Deshmukh Ganpatrao Annasaheb', 'PWPI'),
(254, 'Malshiras (SC)', '(SC)', 'Dolas Hanumant Jagannath', 'NCP'),
(255, 'Phaltan (SC)', '(SC)', 'Chavan Dipak Pralhad', 'NCP'),
(256, 'Wai ', 'GEN', 'Jadhav (Patil) Makrand Laxmanrao', 'NCP'),
(257, 'Koregaon ', 'GEN', 'Shinde Shashikant Jaywantrao', 'NCP'),
(258, 'Man ', 'GEN', 'Jaykumar Bhagwanrao Gore', 'INC'),
(259, 'Karad North ', 'GEN', 'Patil Shamrao Alias Balaso Pandurang', 'NCP'),
(260, 'Karad South ', 'GEN', 'Chavan Prithviraj Dajisaheb', 'INC'),
(261, 'Patan ', 'GEN', 'Desai Shambhuraj Shivajirao', 'SHS'),
(262, 'Satara ', 'GEN', 'Bhonsle Shivendrasinh Abhaysinh', 'NCP'),
(263, 'Dapoli ', 'GEN', 'Kadam Sanjay Vasant', 'NCP'),
(264, 'Guhagar ', 'GEN', 'Jadhav Bhaskar Bhaurao', 'NCP'),
(265, 'Chiplun ', 'GEN', 'Chavan Sadanand Narayan', 'SHS'),
(266, 'Ratnagiri ', 'GEN', 'Uday Ravindra Samant', 'SHS'),
(267, 'Rajapur ', 'GEN', 'Salvi Rajan Prabhakar', 'SHS'),
(268, 'Kankavli ', 'GEN', 'Nitesh Narayan Rane', 'INC'),
(269, 'Kudal ', 'GEN', 'Naik Vaibhav Vijay', 'SHS'),
(270, 'Sawantwadi ', 'GEN', 'Deepak Vasant Kesarkar', 'SHS'),
(271, 'Chandgad ', 'GEN', 'Desai-Kupakar Sandhyadevi Krushnarao', 'NCP'),
(272, 'Radhanagari ', 'GEN', 'Aabitakar Prakash Anandarao', 'SHS'),
(273, 'Kagal ', 'GEN', 'Mushrif Hasan Miyalal', 'NCP'),
(274, 'Kolhapur South', 'GEN', 'Amal Mahadik', 'BJP'),
(275, 'Karvir ', 'GEN', 'Narke Chandradip Shashikant', 'SHS'),
(276, 'Kolhapur North ', 'GEN', 'Rajesh Vinayakrao Kshirsagar', 'SHS'),
(277, 'Shahuwadi ', 'GEN', 'Satyajeet Babasaheb Patil (Aba) Sarudkar', 'SHS'),
(278, 'Hatkanangle (SC)', '(SC)', 'Dr. Minchekar Sujit Vasantrao', 'SHS'),
(279, 'Ichalkaranji ', 'GEN', 'Suresh Ganpati Halvankar', 'BJP'),
(280, 'Shirol ', 'GEN', 'Patil Ulhas Sambhaji', 'SHS'),
(281, 'Miraj (SC)', '(SC)', 'Khade Suresh(Bhau) Dagadu', 'BJP'),
(282, 'Sangli ', 'GEN', 'Dhananjay Alias Sudhir Dada Hari Gadgil', 'BJP'),
(283, 'Islampur ', 'GEN', 'Jayant Rajaram Patil', 'NCP'),
(284, 'Shirala ', 'GEN', 'Naik Shivajirao Yashwantrao', 'BJP'),
(285, 'Palus-Kadegaon ', 'GEN', 'Dr. Kadam Patangrao Shripatrao', 'INC'),
(286, 'Khanapur ', 'GEN', 'Anilbhau Babar', 'SHS'),
(287, 'Tasgaon - Kavathe Mahankal ', 'GEN', 'Adv.R.R. (Aaba) Alias Ravsaheb Ramrao Patil', 'NCP'),
(288, 'Jat ', 'GEN', 'Jagtap Vilasrav Narayan', 'BJP');
--
-- Database: `mp`
--
CREATE DATABASE IF NOT EXISTS `mp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mp`;

-- --------------------------------------------------------

--
-- Table structure for table `mpresult`
--

CREATE TABLE `mpresult` (
  `Constituency` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `party` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mpresult`
--

INSERT INTO `mpresult` (`Constituency`, `name`, `party`) VALUES
('Ahmadnagar', 'Dr. Sujay Radhakrishna Vikhepatil', 'Bharatiya Janata Party'),
('Akola', 'Dhotre Sanjay Shamrao', 'Bharatiya Janata Party'),
('Amravati', 'Navnit Ravi Rana', 'Independent'),
('Aurangabad', 'Imtiaz Jaleel Syed', 'All India Majlis-E-Ittehadul Muslimeen'),
('Baramati', 'Supriya Sule', 'Nationalist Congress Party'),
('Beed', 'Pritam Gopinathrao Munde', 'Bharatiya Janata Party'),
('Bhandara - gondiya', 'Sunil Baburao Mendhe', 'Bharatiya Janata Party'),
('Bhiwandi', 'Kapil Moreshwar Patil', 'Bharatiya Janata Party'),
('Buldhana', 'Jadhav Prataprao Ganpatrao', 'Shivsena'),
('Chandrapur', 'Balubhau Alias Suresh Narayan Dhanorkar', 'Indian National Congress'),
('Dhule', 'Bhamre Subhash Ramrao', 'Bharatiya Janata Party'),
('Dindori', 'Dr. Bharati Pravin Pawar', 'Bharatiya Janata Party'),
('Gadchiroli-Chimur', 'Ashok Mahadeorao Nete', 'Bharatiya Janata Party'),
('Hatkanangle', 'Dhairyasheel Sambhajirao Mane', 'Shivsena'),
('Hingoli', 'Hemant Patil', 'Shivsena'),
('Jalgaon', 'Unmesh Bhaiyyasaheb Patil', 'Bharatiya Janata Party'),
('Jalna', 'Danve Raosaheb Dadarao', 'Bharatiya Janata Party'),
('Kalyan', 'Dr. Shrikant Eknath Shinde', 'Shivsena'),
('Kolhapur', 'Sanjay Sadashivrao Mandlik', 'Shivsena'),
('Latur', 'Sudhakar Tukaram Shrangare', 'Bharatiya Janata Party'),
('Madha', 'Ranjeetsinha Hindurao Naik- Nimbalkar', 'Bharatiya Janata Party'),
('Maval', 'Shrirang Appa Chandu Barne', 'Shivsena'),
('Mumbai North', 'Gopal Shetty', 'Bharatiya Janata Party'),
('Mumbai North Central', 'Poonam Mahajan', 'Bharatiya Janata Party'),
('Mumbai North East', 'Manoj Kotak', 'Bharatiya Janata Party'),
('Mumbai North West', 'Gajanan Kirtikar', 'Shivsena'),
('Mumbai South', 'Arvind Ganpat Sawant', 'Shivsena'),
('Mumbai South Central', 'Rahul Ramesh Shewale', 'Shivsena'),
('Nagpur', 'Nitin Jairam Gadkari', 'Bharatiya Janata Party'),
('Nanded', 'Prataprao Patil Chikhalikar', 'Bharatiya Janata Party'),
('Nandurbar', 'Dr. Heena Vijaykumar Gavit', 'Bharatiya Janata Party'),
('Nashik', 'Godse Hemant Tukaram', 'Shivsena'),
('Osmanabad', 'Omprakash Bhupalsinh Alias Pawan Rajenimbalkar', 'Shivsena'),
('Palghar', 'Rajendra Dhedya Gavit', 'Shivsena'),
('Parbhani', 'Jadhav Sanjay (Bandu) Haribhau', 'Shivsena'),
('Pune', 'Girish Bhalchandra Bapat', 'Bharatiya Janata Party'),
('Raigad', 'Tatkare Sunil Dattatray', 'Nationalist Congress Party'),
('Ramtek', 'Krupal Balaji Tumane', 'Shivsena'),
('Ratnagiri - sindhudurg', 'Vinayak Raut', 'Shivsena'),
('Raver', 'Khadse Raksha Nikhil', 'Bharatiya Janata Party'),
('Sangli', 'Sanjaykaka Patil', 'Bharatiya Janata Party'),
('Satara', 'Shrimant Chh. Udayanraje Pratapsinhmaharaj Bhonsle', 'Nationalist Congress Party'),
('Shirdi', 'Sadashiv Kisan Lokhande', 'Shivsena'),
('Shirur', 'Dr. Amol Ramsing Kolhe', 'Nationalist Congress Party'),
('Solapur', 'Shri. Sha. Bra. Dr. Jai Sidheshwar Shivachary Maha', 'Bharatiya Janata Party'),
('Thane', 'Rajan Baburao Vichare', 'Shivsena'),
('Wardha', 'Ramdas Chandrabhanji Tadas', 'Bharatiya Janata Party'),
('Yavatmal-Washim', 'Bhavana Pundlikrao Gawali', 'Shivsena');
--
-- Database: `news`
--
CREATE DATABASE IF NOT EXISTS `news` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `news`;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `head` text NOT NULL,
  `n` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`head`, `n`) VALUES
('Poll Body Sends Notice To Railways Again Over BJP Slogan On Tea Cups', 'The poll body said in response to the March 29 notice, the railways had asked for more time.'),
('Congress Manifesto Bundle Of Lies: Yogi Adityanath', 'On the Congress manifesto released earlier in the day, he said, \"It is a bundle of lies and the party has expressed its failure over 55 years in its 55-page manifesto.\"'),
('\"Congress Couldn\'t Finish Work In 70 Years, How Can I In 5?\": PM In Bihar', 'Prime Minister Narendra Modi today told a gathering in Bihar that he needs another term to fulfil his promises. He was campaigning in Jamui for the national election starting April 11, along with ally Nitish Kumar, the Chief Minister of Bihar, and other partners in the National Democratic Alliance (NDA) like Chirag Paswan, the ruling coalition\'s ca...'),
('Congress Promises Law Against Mob Attacks, Punish Officials For Lapses', 'The Congress on Tuesday said it will pass a new law in the first session of the next Lok Sabha to prevent and punish hate crimes such as \"mob-engineered\" lynching, stripping and burning if voted to power.'),
('Mizoram Civil Society Groups Call Poll Boycott Over Bru Refugees\' Voting Location', 'An umbrella body of civil society groups in Mizoram said it will boycott the Lok Sabha elections if Bru refugees living in neighbouring Tripura are allowed to vote from designated booths along the state border, instead of letting them visit Mizoram to vote at regular camps.'),
('Kerala Left Leader\'s Remark On Dalit Woman Candidate Triggers Row', 'An alleged objectionable remark by LDF convener A Vijayaraghavan against a Dalit woman candidate of the opposition UDF has landed the left ruling front in a fix in Kerala, as the April 23 Lok Sabha polls are round the corner.'),
('\"We Have Delivered, We Will Deliver\": Sam Pitroda On Congress Manifesto', 'Sam Pitroda gave credit to the Congress governments in the past for India\'s strides in food, agriculture and space sectors.'),
('Some \"Congress Friends\" Conspired Against Removal Of AFSPA: Omar Abdullah', 'Under AFSPA, the armed forces are given special powers to arrest, use force and even open fire on anyone who violates the law. But over the years, civilians have levelled allegations of Army excesses in the insurgency-hit areas.'),
('Election Commission Yet To Give Permission To Babul Supriyo\'s Poll Song', 'The Bengal Chief Electoral Officer (CEO) is yet to give the nod to the Bharatiya Janata Party\'s (BJP) campaign song composed by Union Minister Babul Supriyo.'),
('\"PM Modi Trying To Make India \'Hindu Rashtra\'\": HD Deve Gowda', 'Prime Minister Narendra Modi wants to make the country a Hindu Rashtra (nation), Janata Dal Secular chief HD Dewe Gowda alleged today.'),
('Priyanka Gandhi Rates Congress Manifesto, And Tweets An Appeal', 'Congress leader Priyanka Gandhi Vadra, who took the plunge into full-time politics this year, had a word of advice for young people on a day when her party released its manifesto for the national electionthat begins next week.'),
('Agreed To BJP Alliance After Amit Shah Visited Me Twice: Uddhav Thackeray', 'Shiv Sena chief Uddhav Thackeray on Tuesday said his party and the BJP are bound by Hindutva and the two decided to enter into a pre-poll alliance after overcoming differences that soured their ties in the past.'),
('1,700 Jan Dhan Accounts In UP Under Scanner For Suspicious Deposits Ahead Of Polls', 'About 1,700 Jan Dhan bank accounts in Uttar Pradesh\'s Moradabad district have come under the scanner of the Election Commission-deployed surveillance teams for receiving suspicious deposits during the poll season, officials said.'),
('Mulayam Singh Yadav Owes Over Rs 2 Crore To Son Akhilesh, Says Affidavit', 'Mulayam Singh Yadav owes more than Rs 2.13 crore to his son and Samajwadi Party (SP) president Akhilesh Yadav and the value of his assets has declined by Rs 3 crore in the last five years, an affidavit filed by the party patriarch revealed.'),
('Manohar Parrikar\'s Inputs Added In BJP\'s Goa Poll Campaign: Union Minister', 'Union minister Shripad Naik, who is contesting from North Goa Lok Sabha seat, on Tuesday said the BJP has incorporated inputs given by late chief minister Manohar Parrikar for its poll campaign in the coastal state.');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bg\",\"table\":\"admin\"},{\"db\":\"bg\",\"table\":\"product\"},{\"db\":\"bg\",\"table\":\"vendor\"},{\"db\":\"bg\",\"table\":\"images\"},{\"db\":\"bg\",\"table\":\"Product\"},{\"db\":\"bg\",\"table\":\"Vendor\"},{\"db\":\"mla\",\"table\":\"district\"},{\"db\":\"mla\",\"table\":\"result\"},{\"db\":\"mp\",\"table\":\"mpresult\"},{\"db\":\"MLA\",\"table\":\"result\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'info', 'info', '{\"CREATE_TIME\":\"2019-03-08 22:01:33\"}', '2019-03-08 16:56:25'),
('root', 'scraping', 'vote', '{\"sorted_col\":\"`vote`.`name` ASC\"}', '2019-03-16 09:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-09-22 08:45:05', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `scraping`
--
CREATE DATABASE IF NOT EXISTS `scraping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `scraping`;

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `state` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `voter` varchar(20) NOT NULL,
  `per` float NOT NULL,
  `stateper` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`state`, `name`, `voter`, `per`, `stateper`) VALUES
('Maharastra', ' Kalyan', '824,196', 42.88, 74.47),
('Maharastra', ' Thane', '1,054,189', 50.84, 74.47),
('Maharastra', ' Mumbai North', '946,562', 53.06, 74.47),
('Maharastra', ' Mumbai North West', '895,517', 50.44, 74.47),
('Maharastra', ' Mumbai North East', '861,761', 51.65, 74.47),
('Maharastra', ' Mumbai North central', '845,292', 48.61, 74.47),
('Maharastra', ' Mumbai South central', '769,060', 53.12, 74.47),
('Maharastra', ' MumbaiSouth', '780,715', 52.54, 74.47),
('Maharastra', ' Raigad', '987,766', 64.44, 74.47),
('Maharastra', ' Maval', '1,174,335', 60.11, 74.47),
('Maharastra', ' Pune', '993,274', 54.1, 74.47),
('Maharastra', ' Baramati', '1,066,556', 58.81, 74.47),
('Andhra Pradesh', 'Nizamabad', '1,033,924', 69.1, 60.36),
('Andhra Pradesh', 'Zahirabad', '1,094,806', 75.75, 60.36),
('Andhra Pradesh', 'Medak', '1,191,096', 77.51, 60.36),
('Andhra Pradesh', 'Malkajgiri', '1,620,397', 50.9, 60.36),
('Andhra Pradesh', 'Secundrabad', '1,003,769', 53.01, 60.36),
('Andhra Pradesh', 'Hyderabad', '971,421', 53.27, 60.36),
('Andhra Pradesh', ' CHELVELLA', '1,315,862', 60.22, 60.36),
('Andhra Pradesh', ' Mahbubnagar', '1,014,800', 71.53, 60.36),
('Andhra Pradesh', ' Nagarkurnool', '1,108,968', 75.07, 60.36),
('Andhra Pradesh', ' Nalgonda', '1,189,399', 79.53, 60.36),
('Andhra Pradesh', ' Bhongir', '1,211,943', 81.22, 60.36),
('Andhra Pradesh', ' Warangal', '1,174,631', 76.38, 60.36),
('Gujarat', 'Patan', '955,799', 58.69, 63.6),
('Gujarat', 'Mahesana', '1,004,258', 67.03, 63.6),
('Gujarat', 'Sabarkantha', '1,094,002', 67.7, 63.6),
('Gujarat', 'Gandhinagar', '1,135,495', 65.49, 63.6),
('Gujarat', 'Ahmedabad East', '985,525', 61.52, 63.6),
('Gujarat', 'Ahmedabad West', '964,609', 62.87, 63.6),
('Gujarat', 'Surendranagar', '944,677', 57.02, 63.6),
('Gujarat', ' Rajkot', '1,057,069', 63.84, 63.6),
('Gujarat', ' Porbandar', '809,433', 52.59, 63.6),
('Gujarat', ' Jamnagar', '852,643', 57.97, 63.6),
('Gujarat', ' Junagadh', '941,378', 63.37, 63.6),
('Gujarat', ' Amreli', '808,816', 54.42, 63.6),
('', 'Dhule', '983,083', 58.71, 0),
('', 'Jalgaon', '990,332', 57.98, 0),
('', 'Raver', '1,009,213', 63.34, 0),
('', 'Buldhana', '978,626', 61.31, 0),
('', 'Akola', '978,491', 59.43, 0),
('', 'Amravati', '1,004,061', 62.31, 0),
('', 'Wardha', '1,013,445', 64.78, 0),
('', 'Ramtek', '1,050,316', 62.62, 0);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
