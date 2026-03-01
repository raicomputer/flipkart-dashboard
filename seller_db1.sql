-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 02:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seller_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_returns`
--

CREATE TABLE `customer_returns` (
  `sr_no` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `gross_price` decimal(10,2) NOT NULL,
  `item_picture` varchar(255) DEFAULT NULL,
  `customer_name` varchar(100) NOT NULL,
  `party_location` varchar(255) NOT NULL,
  `returned_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivered_orders`
--

CREATE TABLE `delivered_orders` (
  `sr_no` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_type` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `gross_price` decimal(10,2) DEFAULT NULL,
  `item_picture` varchar(255) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `party_location` varchar(255) DEFAULT NULL,
  `delivered_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivered_orders`
--

INSERT INTO `delivered_orders` (`sr_no`, `order_id`, `order_date`, `order_type`, `product_name`, `quantity`, `gross_price`, `item_picture`, `customer_name`, `party_location`, `delivered_date`) VALUES
(202602011, 'OD336792185077520100', '2026-02-17', 'COD', 'Mini audio', 1, 190.00, 'uploads/miniaudio.png', 'Amit', 'Surat', '2026-02-19 17:43:13'),
(202602013, 'OD436818482105788100', '2026-02-19', 'COD', 'i3fan', 1, 135.00, 'uploads/i3cpufan.png', 'Mohan', 'Mulanur', '2026-02-23 13:23:44'),
(202602014, 'OD336844756711364100', '2026-02-21', 'COD', 'DDr2 2 gb', 1, 260.00, 'uploads/ddr22gb.png', 'Dharmendra', 'Surat', '2026-02-23 13:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `sr_no` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `gross_price` decimal(10,2) NOT NULL,
  `item_picture` varchar(255) DEFAULT NULL,
  `customer_name` varchar(100) NOT NULL,
  `party_location` varchar(255) NOT NULL,
  `dispatch_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`sr_no`, `order_id`, `order_date`, `order_type`, `product_name`, `quantity`, `gross_price`, `item_picture`, `customer_name`, `party_location`, `dispatch_date`) VALUES
(202602015, 'OD436846655944830100', '2026-02-23', 'COD', 'MOUSE', 1, 70.00, 'uploads/mouse.png', 'Ravi Rawat,', 'Ghaziabad', '2026-02-23 14:53:30'),
(202602016, 'OD336868437884568100', '2026-02-24', 'COD', 'i3fan', 1, 135.00, 'uploads/i3cpufan.png', 'Salim Yusuf ', 'Bharuch', '2026-02-24 14:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `inward_to_shop`
--

CREATE TABLE `inward_to_shop` (
  `sr_no` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `gross_price` decimal(10,2) NOT NULL,
  `item_picture` varchar(255) DEFAULT NULL,
  `customer_name` varchar(100) NOT NULL,
  `party_location` varchar(255) NOT NULL,
  `inward_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inward_to_shop`
--

INSERT INTO `inward_to_shop` (`sr_no`, `order_id`, `order_date`, `order_type`, `product_name`, `quantity`, `gross_price`, `item_picture`, `customer_name`, `party_location`, `inward_date`) VALUES
(202512001, 'OD336237748971909100', '2025-12-12', 'PREPAID', 'DDR2-2GB(PMM)', 1, 0.00, 'uploads/i3.png', 'Milan', 'Burdwan', '2026-01-02 14:36:49'),
(202512002, 'OD336238519564175100', '2025-12-12', 'COD', 'PC3L-8GB-L/T(PMM)', 1, 0.00, 'uploads/hddc.png', 'Mobile', 'Kamrup', '2026-01-06 14:14:09'),
(202512003, 'OD436241217359417100', '2025-12-13', 'COD', 'HTVGA(PMM)', 1, 12.00, 'uploads/hdd.png', 'Md Asif,', 'kolkatta', '2026-01-12 15:27:42'),
(202512004, 'OD436247182906818100', '2025-12-14', 'COD', '2PIN CABLE', 1, 0.00, 'uploads/2pin.png', 'Uttam', 'TRIPURA', '2026-01-08 14:25:46'),
(202512005, 'OD336247638119678100', '2025-12-14', 'Prepaid', 'PC34GB(PMM)', 1, 445.00, 'uploads/hddc.png', 'Chaitanya', 'Bhandup', '2025-12-26 13:56:45'),
(202512006, 'OD436253210346680100', '2025-12-14', 'COD', 'PC34GB(PMM)', 1, 445.00, 'uploads/hdd.png', 'Jibhalheswar', 'Aurangabad', '2025-12-26 14:24:42'),
(202512007, 'OD336232011193520100', '2025-12-15', 'COD', 'ZEBH61M2(PMM)', 1, 1410.00, 'uploads/hdd.png', 'Bappi', 'Harirampur', '2025-12-26 14:41:34'),
(202512008, 'OD436263223460322100', '2025-12-15', 'COD', '2PIN CABLE', 1, 46.00, 'uploads/2pin.png', 'Reyaz', 'Vasai', '2025-12-29 14:49:13'),
(202512009, 'OD436262806544512100', '2025-12-15', 'COD', '2PIN CABLE', 1, 46.00, 'uploads/2pin.png', 'Maulik', 'Rajkot', '2025-12-29 14:49:20'),
(202512010, 'OD336258384818939100', '2025-12-15', 'COD', '2PIN CABLE', 1, 0.00, 'uploads/2pin.png', 'Aditya', 'HOSHANGABAD', '2025-12-27 14:22:53'),
(202512011, 'OD436263516535516100', '2025-12-15', 'PREPAID', 'DDR2(PMM)', 1, 423.00, 'uploads/hdd.png', 'Nilesh', 'Pune', '2025-12-29 14:49:30'),
(202512012, 'OD336249012545816100', '2025-12-15', 'COD', 'DDR2(PMM)', 1, 0.00, 'uploads/hddc.png', 'Bazrulhuq', 'TN', '2025-12-27 14:04:28'),
(202512013, 'OD336248891419413100', '2025-12-15', 'COD', 'DDR2(PMM)', 1, 423.00, 'uploads/hdd.png', 'Debendra', 'Barrackpore', '2025-12-29 14:49:26'),
(202512014, 'OD336250175426596100', '2025-12-15', 'COD', 'DDR2(PMM)', 1, 0.00, 'uploads/hdd.png', 'Daniel', 'Puruliya', '2025-12-30 14:45:46'),
(202512015, 'OD436265736357128100', '2025-12-17', 'COD', '2PIN CABLE', 1, 0.00, 'uploads/2pin.png', 'Sambhu', 'Kachchh', '2026-01-03 14:48:16'),
(202512016, 'OD436280153151464100', '2025-12-18', 'COD', 'SMPS(PMM)', 1, 325.00, 'uploads/ssd.png', 'Sushil Dilwariya,', 'New DelhI', '2026-01-10 17:53:48'),
(202512017, 'OD436282278595195100', '2025-12-18', 'COD', 'I3FAN(PMM)', 1, 161.00, 'uploads/ssd.png', 'SAGIR', 'Surat', '2025-12-29 14:49:35'),
(202512018, 'OD436282866079002100', '2025-12-19', 'COD', 'I3FAN(PMM)', 1, 208.00, 'uploads/hdd.png', 'Khajamoinuddin', 'Parbhani', '2025-12-30 14:56:21'),
(202512019, 'OD336282066748857100', '2025-12-19', 'COD', 'CONSITH61(PMM)', 1, 0.00, 'uploads/hdd.png', 'Narendra', 'Secunderabad', '2025-12-31 14:11:42'),
(202512020, 'OD436297436103753100', '2025-12-20', 'Prepaid', 'HTVGA(PMM)', 1, 0.00, 'uploads/hdd.png', 'Sujit', 'Talegaon', '2026-01-07 15:49:10'),
(202512021, 'OD436297797271384100', '2025-12-20', 'COD', 'PCCABLE(PMM)', 1, 32.00, 'uploads/hdd.png', 'Mantu', 'Pachkhanda', '2025-12-29 14:49:47'),
(202512022, 'OD336308868727494100', '2025-12-22', 'Prepaid', 'HDMI(PMM)', 1, 79.00, 'uploads/hdd.png', 'Marthaben Patel,', 'Ankleshwar', '2026-01-02 14:43:22'),
(202512023, 'OD336308852399602100', '2025-12-22', 'COD', 'WIFI(PMM)', 1, 0.00, 'uploads/ssd.png', 'Champak', 'Bongaigaon', '2026-01-13 14:38:47'),
(202512024, 'OD336313965571687100', '2025-12-23', 'COD', 'SMPS(PMM)', 1, 0.00, 'uploads/ssd.png', 'Arjun Sahani,', 'Jalandhar', '2026-01-10 14:12:35'),
(202512025, 'OD436319661455804100', '2025-12-23', 'Prepaid', 'HDDCASE(PMM)', 1, 5.00, 'uploads/ssd.png', 'Sv concret', 'Ahmedabad', '2026-01-12 15:27:47'),
(202512026, 'OD336331525237781100', '2025-12-23', 'COD', 'HDMI(PMM)', 1, 79.00, 'uploads/ssd.png', 'Suresh', 'Ankleshwar', '2026-01-07 15:46:28'),
(202512027, 'OD436325759192266100', '2025-12-24', 'COD', 'HDMI(PMM)', 1, 79.00, 'uploads/hdd.png', 'Prince Wadiwa,', 'Betul', '2026-01-09 14:45:59'),
(202512028, 'OD436326381864039100', '2025-12-24', 'COD', 'HDDCASE(PMM)', 1, 181.00, 'uploads/hdd.png', 'Bhavesh', 'BHAVNAGAR', '2026-01-09 16:30:47'),
(202512029, 'OD336325981688719100', '2025-12-24', 'COD', 'SMPS(PMM)', 1, 409.00, 'uploads/ssd.png', 'Shankar', 'Valsad', '2026-01-02 18:27:03'),
(202512030, 'OD436350630012770100', '2025-12-27', 'COD', 'DIGI.MTR.', 1, 120.00, 'uploads/digimtr.png', 'Prathamesh', 'Ratnagiri', '2026-01-07 15:58:46'),
(202512031, 'OD336350379327244100', '2025-12-27', 'COD', 'USB-WIFI', 1, 144.00, 'uploads/wifi.png', 'Avinash', 'Chandrapur', '2026-01-07 15:28:24'),
(202512032, 'OD436379765604565100', '2025-12-30', 'Prepaid', 'PC34GB DT', 1, 500.00, 'uploads/pc34gbdt.png', 'Piyush', 'Bhopal', '2026-01-09 14:33:49'),
(202512033, 'OD336379136325001100', '2025-12-30', 'COD', 'DDr2 2 gb', 1, 490.00, 'uploads/ddr22gb.png', 'YUSUF', 'Vasai', '2026-01-09 14:38:57'),
(202512034, 'OD436370253422570100', '2025-12-30', 'COD', 'Zeb SMPS', 1, 0.00, 'uploads/zebsmps.png', 'Yogesh', 'Damoh', '2026-01-12 17:00:37'),
(202512035, 'OD436385843016955100', '2025-12-30', 'COD', 'Hddcase 3.0 Black', 1, 0.00, 'uploads/hddc.png', 'SABIR SAYYED', 'Jalgaon', '2026-01-13 18:48:53'),
(202512036, 'OD336392198569121100', '2025-12-31', 'COD', 'i3fan', 1, 216.00, 'uploads/i3cpufan.png', 'Kamson', 'aSSAM', '2026-01-09 18:36:34'),
(202601001, 'OD336411059004506100', '2026-01-01', 'Prepaid', '2pin', 1, 120.00, 'uploads/2pin.png', 'Samarth', 'Thane', '2026-01-23 17:01:41'),
(202601002, 'OD436409560225761100', '2026-01-01', 'COD', 'DDr2 2 gb', 1, 490.00, 'uploads/ddr22gb.png', 'Abhishek', 'Arwal', '2026-01-14 14:15:59'),
(202601003, 'OD336427380658068100', '2026-01-05', 'COD', 'Zeb SMPS', 1, 550.00, 'uploads/zebsmps.png', 'Ishan', 'Gariaband', '2026-01-16 15:33:01'),
(202601004, 'OD436444087905835100', '2026-01-05', 'COD', '2pin', 1, 120.00, 'uploads/2pin.png', 'Anjali', 'Pune', '2026-01-16 15:33:05'),
(202601005, 'OD436445933591916100', '2026-01-06', 'COD', 'HDMIM2M 1.5M', 1, 0.00, 'uploads/hdmim2m1.5.png', 'Palat', 'Himmatnagar', '2026-01-20 15:38:01'),
(202601006, 'OD336430993306470100', '2026-01-06', 'COD', 'VGAM2M 1.5M', 1, 72.00, 'uploads/vgam2m1.5.png', 'Chittaurgarh', 'Vipin Goud', '2026-01-19 12:49:51'),
(202601007, 'OD336456237872844100', '2026-01-08', 'Prepaid', 'Hddcase 3.0 Black', 1, 0.00, 'uploads/hddc.png', 'Khush', 'Vadodara', '2026-01-20 16:16:09'),
(202601008, 'OD436457101667585100', '2026-01-08', 'COD', '8GBPC3LLT', 1, 775.00, 'uploads/8gbpc3l.png', 'Near Jaitkha', 'Raipur', '2026-01-21 12:42:21'),
(202601009, 'OD436466842507473100', '2026-01-10', 'COD', 'CONSTH81', 1, 2030.00, 'uploads/consth81.png', 'Kishan', 'Kachchh', '2026-01-21 12:43:03'),
(202601010, 'OD436489725435460100', '2026-01-12', 'COD', '2pin', 1, 131.00, 'uploads/2pin.png', 'Samrat', 'Karmala', '2026-01-23 17:01:56'),
(202601011, 'OD336504943637855100', '2026-01-12', 'COD', '3FAN12VCD', 1, 205.00, 'uploads/3fan.png', 'Jyotsna', 'Chandrapur', '2026-01-23 17:01:46'),
(202601012, 'OD336507448278543100', '2026-01-13', 'Prepaid', 'i3fan', 1, 208.00, 'uploads/i3cpufan.png', 'Bhavesh', 'Mira Bhayandar', '2026-01-23 17:01:50'),
(202601013, 'OD336515152420008100', '2026-01-16', 'COD', 'Mini audio', 1, 0.00, 'uploads/miniaudio.png', 'Ramashish', 'Aurangabad', '2026-02-03 17:30:55'),
(202601014, 'OD336514219474717100', '2026-01-16', 'COD', 'LANC3M', 1, 87.00, 'uploads/lanc3m.png', 'Pramodkumar', 'Surat', '2026-01-28 16:50:20'),
(202601015, 'OD336525902306558100', '2026-01-16', 'COD', 'PCCABLE', 1, 0.00, 'uploads/pccable.png', 'Ramesh', 'Valsad', '2026-01-24 14:20:29'),
(202601016, 'OD336525294880049100', '2026-01-17', 'Prepaid', 'Hddcase 3.0 Black', 1, 15.00, 'uploads/hddc.png', 'Sarang', 'Rourkela', '2026-02-04 15:19:40'),
(202601017, 'OD336526152262491100', '2026-01-17', 'COD', 'i3fan', 1, 219.00, 'uploads/i3cpufan.png', 'Nayan', 'Jabalpur', '2026-01-28 16:51:15'),
(202601018, 'OD336551130159126100', '2026-01-20', 'COD', 'i3fan', 1, 216.00, 'uploads/i3cpufan.png', 'Ishwar', 'Nashik', '2026-02-03 17:51:41'),
(202601019, 'OD436550115969965100', '2026-01-20', 'COD', 'Hddcase 3.0 Black', 2, 361.00, 'uploads/hddc.png', 'Rasid', 'Rajkot', '2026-02-03 17:51:47'),
(202601020, 'OD336565022357618100', '2026-01-20', 'COD', 'Hddcase 3.0 Black', 1, 0.00, 'uploads/hddc.png', 'Nilesh', 'Kalyan', '2026-01-31 18:26:01'),
(202601021, 'OD436553859011903100', '2026-01-20', 'COD', 'ZEBH61', 1, 1500.00, 'uploads/zebh61.png', 'Aditya', 'Samastipur', '2026-02-03 17:51:53'),
(202601022, 'OD336575645981254100', '2026-01-21', 'Prepaid', 'Hddcase 3.0 Black', 1, 23.00, 'uploads/hddc.png', 'Mohamadarif', 'Valsad', '2026-02-05 14:52:21'),
(202601023, 'OD336601966749658100', '2026-01-27', 'COD', '3CFAN', 1, 36.00, 'uploads/3cfan.png', 'Kuldip Pandey,', 'Bahraich', '2026-02-14 13:52:03'),
(202601024, 'OD336625288253792100', '2026-01-29', 'Prepaid', 'DDr2 2 gb', 2, 999.00, 'uploads/ddr22gb.png', 'Vipin', 'Suar', '2026-02-11 14:36:07'),
(202601025, 'OD436630408564726100', '2026-01-29', 'COD', 'Mini audio', 1, 204.00, 'uploads/miniaudio.png', 'Mohammad', 'Bengaluru', '2026-02-11 14:36:13'),
(202601026, 'OD436626241021031100', '2026-01-29', 'COD', 'ZEBH61', 1, 1500.00, 'uploads/zebh61.png', 'Sanjay', 'Dharampur', '2026-02-11 14:36:20'),
(202601027, 'OD436656129627067400', '2026-01-31', 'COD', 'Hddcase 3.0 Black', 1, 200.00, 'uploads/hddc.png', 'NAYAN', 'Ahmedabad', '2026-02-11 14:36:25'),
(202602001, 'OD436688278045449100', '2026-02-04', 'COD', 'DDr2 2 gb', 1, 500.00, 'uploads/ddr22gb.png', 'Penchalaiah', 'Kothakota', '2026-02-16 14:12:51'),
(202602002, 'OD436720606501187100', '2026-02-06', 'COD', '2pin', 1, 0.00, 'uploads/2pin.png', 'Murshid', 'Jhalawar', '2026-02-19 17:59:18'),
(202602003, 'OD336698269460213100', '2026-02-05', 'COD', 'DDr2 2 gb', 1, 0.00, 'uploads/ddr22gb.png', 'ULAGANATHAN', 'Chennai', '2026-02-20 16:06:31'),
(202602004, 'OD336707484183009100', '2026-02-05', 'COD', 'Zeb SMPS', 1, 0.00, 'uploads/zebsmps.png', 'Noida', 'Simar', '2026-02-21 14:44:53'),
(202602005, 'OD336737934268204100', '2026-02-10', 'COD', '2pin', 1, 77.00, 'uploads/2pin.png', 'Nagaraj', 'Koppal', '2026-02-25 16:01:10'),
(202602006, 'OD436750571860329100', '2026-02-10', 'Prepaid', '2pin', 1, 77.00, 'uploads/2pin.png', 'RAJESHKUMAR', 'Halol - 389350', '2026-02-25 16:01:15'),
(202602007, 'OD336732436024862100', '2026-02-12', 'Prepaid', 'DDr2 2 gb', 1, 500.00, 'uploads/ddr22gb.png', 'Rajendra', 'LUCKNOW', '2026-02-25 16:01:19'),
(202602008, 'OD336734053535147100', '2026-02-12', 'Prepaid', 'DDr2 2 gb', 1, 500.00, 'uploads/ddr22gb.png', 'Rajeev', 'Kanpur', '2026-02-25 16:01:24'),
(202602010, 'OD336780893674808100', '2026-02-14', 'COD', 'i3fan', 1, 221.00, 'uploads/i3cpufan.png', 'Sanjay', 'Navsari', '2026-02-25 16:01:29');

--
-- Triggers `inward_to_shop`
--
DELIMITER $$
CREATE TRIGGER `trg_inward_to_shop_update_gross_price` AFTER INSERT ON `inward_to_shop` FOR EACH ROW BEGIN

    -- Only for return cases (not payment received)
    IF NEW.gross_price <= 0 THEN

        UPDATE orders
        SET gross_price = 10
        WHERE order_id = NEW.order_id;

    END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `sr_no` int(20) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_type` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `gross_price` decimal(10,2) DEFAULT NULL,
  `item_picture` varchar(255) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `party_location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`sr_no`, `order_id`, `order_date`, `order_type`, `product_name`, `quantity`, `gross_price`, `item_picture`, `customer_name`, `party_location`) VALUES
(202512001, 'OD336237748971909100', '2025-12-12', 'PREPAID', 'DDr2 2 gb', 1, 10.00, 'uploads/ddr22gb.png', 'Milan', 'Burdwan'),
(202512002, 'OD336238519564175100', '2025-12-12', 'COD', '8GBPC3LLT', 1, 10.00, 'uploads/8gbpc3l.png', 'Mobile', 'Kamrup'),
(202512003, 'OD436241217359417100', '2025-12-13', 'COD', 'VGAM2M 1.5M', 1, 10.00, 'uploads/vgam2m1.5.png', 'Md Asif,', 'kolkatta'),
(202512004, 'OD436247182906818100', '2025-12-14', 'COD', '2pin', 1, 10.00, 'uploads/2pin.png', 'Uttam', 'TRIPURA'),
(202512005, 'OD336247638119678100', '2025-12-14', 'Prepaid', 'PC34GB(PMM)', 1, 260.00, 'uploads/hddc.png', 'Chaitanya', 'Bhandup'),
(202512006, 'OD436253210346680100', '2025-12-14', 'COD', 'PC34GB(PMM)', 1, 260.00, 'uploads/hdd.png', 'Jibhalheswar', 'Aurangabad'),
(202512007, 'OD336232011193520100', '2025-12-15', 'COD', 'ZEBH61M2(PMM)', 1, 1220.00, 'uploads/hdd.png', 'Bappi', 'Harirampur'),
(202512008, 'OD436263223460322100', '2025-12-15', 'COD', '2PIN CABLE', 1, 50.00, 'uploads/2pin.png', 'Reyaz', 'Vasai'),
(202512009, 'OD436262806544512100', '2025-12-15', 'COD', '2PIN CABLE', 1, 50.00, 'uploads/2pin.png', 'Maulik', 'Rajkot'),
(202512010, 'OD336258384818939100', '2025-12-15', 'COD', '2pin', 1, 10.00, 'uploads/2pin.png', 'Aditya', 'HOSHANGABAD'),
(202512011, 'OD436263516535516100', '2025-12-15', 'PREPAID', 'DDR2(PMM)', 1, 260.00, 'uploads/hdd.png', 'Nilesh', 'Pune'),
(202512012, 'OD336249012545816100', '2025-12-15', 'COD', 'DDr2 2 gb', 1, 10.00, 'uploads/ddr22gb.png', 'Bazrulhuq', 'TN'),
(202512013, 'OD336248891419413100', '2025-12-15', 'COD', 'DDR2(PMM)', 1, 260.00, 'uploads/hdd.png', 'Debendra', 'Barrackpore'),
(202512014, 'OD336250175426596100', '2025-12-15', 'COD', 'DDr2 2 gb', 1, 10.00, 'uploads/ddr22gb.png', 'Daniel', 'Puruliya'),
(202512015, 'OD436265736357128100', '2025-12-17', 'COD', '2pin', 1, 10.00, 'uploads/2pin.png', 'Sambhu', 'Kachchh'),
(202512016, 'OD436280153151464100', '2025-12-18', 'COD', 'Zeb SMPS', 1, 20.00, 'uploads/zebsmps.png', 'Sushil Dilwariya,', 'New DelhI'),
(202512017, 'OD436282278595195100', '2025-12-18', 'COD', 'I3FAN(PMM)', 1, 130.00, 'uploads/ssd.png', 'SAGIR', 'Surat'),
(202512018, 'OD436282866079002100', '2025-12-19', 'COD', 'I3FAN(PMM)', 1, 130.00, 'uploads/hdd.png', 'Khajamoinuddin', 'Parbhani'),
(202512019, 'OD336282066748857100', '2025-12-19', 'COD', 'Consti. h61', 1, 20.00, 'uploads/consh61.png', 'Narendra', 'Secunderabad'),
(202512020, 'OD436297436103753100', '2025-12-20', 'Prepaid', 'VGAM2M 1.5M', 1, 10.00, 'uploads/vgam2m1.5.png', 'Sujit', 'Talegaon'),
(202512021, 'OD436297797271384100', '2025-12-20', 'COD', 'VGAM2M 1.5M', 1, 50.00, 'uploads/vgam2m1.5.png', 'Mantu', 'Pachkhanda'),
(202512022, 'OD336308868727494100', '2025-12-22', 'Prepaid', 'Cmos Batt.', 1, 60.00, 'uploads/cmos.png', 'Marthaben Patel,', 'Ankleshwar'),
(202512023, 'OD336308852399602100', '2025-12-22', 'COD', 'USB-WIFI', 1, 10.00, 'uploads/wifi.png', 'Champak', 'Bongaigaon'),
(202512024, 'OD336313965571687100', '2025-12-23', 'COD', 'Zeb SMPS', 1, 20.00, 'uploads/zebsmps.png', 'Arjun Sahani,', 'Jalandhar'),
(202512025, 'OD436319661455804100', '2025-12-23', 'Prepaid', 'Hddcase 3.0 Black', 1, 10.00, 'uploads/hddc.png', 'Sv concret', 'Ahmedabad'),
(202512026, 'OD336331525237781100', '2025-12-23', 'COD', 'HDMI(PMM)', 1, 60.00, 'uploads/ssd.png', 'Suresh', 'Ankleshwar'),
(202512027, 'OD436325759192266100', '2025-12-24', 'COD', 'HDMI(PMM)', 1, 60.00, 'uploads/hdd.png', 'Prince Wadiwa,', 'Betul'),
(202512028, 'OD436326381864039100', '2025-12-24', 'COD', 'HDDCASE(PMM)', 1, 110.00, 'uploads/hdd.png', 'Bhavesh', 'BHAVNAGAR'),
(202512029, 'OD336325981688719100', '2025-12-24', 'COD', 'Zeb SMPS', 1, 20.00, 'uploads/zebsmps.png', 'Shankar', 'Valsad'),
(202512030, 'OD436350630012770100', '2025-12-27', 'COD', 'DIGI.MTR.', 1, 120.00, 'uploads/digimtr.png', 'Prathamesh', 'Ratnagiri'),
(202512031, 'OD336350379327244100', '2025-12-27', 'COD', 'USB-WIFI', 1, 100.00, 'uploads/wifi.png', 'Avinash', 'Chandrapur'),
(202512032, 'OD436379765604565100', '2025-12-30', 'Prepaid', 'PC34GB DT', 1, 260.00, 'uploads/pc34gbdt.png', 'Piyush', 'Bhopal'),
(202512033, 'OD336379136325001100', '2025-12-30', 'COD', 'DDr2 2 gb', 1, 260.00, 'uploads/ddr22gb.png', 'YUSUF', 'Vasai'),
(202512034, 'OD436370253422570100', '2025-12-30', 'COD', 'Zeb SMPS', 1, 220.00, 'uploads/zebsmps.png', 'Yogesh', 'Damoh'),
(202512035, 'OD436385843016955100', '2025-12-30', 'COD', 'Hddcase 3.0 Black', 1, 10.00, 'uploads/hddc.png', 'SABIR SAYYED', 'Jalgaon'),
(202512036, 'OD336392198569121100', '2025-12-31', 'COD', 'i3fan', 1, 130.00, 'uploads/i3cpufan.png', 'Kamson', 'aSSAM'),
(202601001, 'OD336411059004506100', '2026-01-01', 'Prepaid', '2pin', 1, 50.00, 'uploads/2pin.png', 'Samarth', 'Thane'),
(202601002, 'OD436409560225761100', '2026-01-01', 'COD', 'DDr2 2 gb', 1, 260.00, 'uploads/ddr22gb.png', 'Abhishek', 'Arwal'),
(202601003, 'OD336427380658068100', '2026-01-05', 'COD', 'Zeb SMPS', 1, 420.00, 'uploads/zebsmps.png', 'Ishan', 'Gariaband'),
(202601004, 'OD436444087905835100', '2026-01-05', 'COD', '2pin', 1, 50.00, 'uploads/2pin.png', 'Anjali', 'Pune'),
(202601005, 'OD436445933591916100', '2026-01-06', 'COD', 'HDMIM2M 1.5M', 1, 10.00, 'uploads/hdmim2m1.5.png', 'Palat', 'Himmatnagar'),
(202601006, 'OD336430993306470100', '2026-01-06', 'COD', 'VGAM2M 1.5M', 1, 100.00, 'uploads/vgam2m1.5.png', 'Chittaurgarh', 'Vipin Goud'),
(202601007, 'OD336456237872844100', '2026-01-08', 'Prepaid', 'Hddcase 3.0 Black', 1, 10.00, 'uploads/hddc.png', 'Khush', 'Vadodara'),
(202601008, 'OD436457101667585100', '2026-01-08', 'COD', '8GBPC3LLT', 1, 460.00, 'uploads/8gbpc3l.png', 'Near Jaitkha', 'Raipur'),
(202601009, 'OD436466842507473100', '2026-01-10', 'COD', 'CONSTH81', 1, 1220.00, 'uploads/consth81.png', 'Kishan', 'Kachchh'),
(202601010, 'OD436489725435460100', '2026-01-12', 'COD', '2pin', 1, 50.00, 'uploads/2pin.png', 'Samrat', 'Karmala'),
(202601011, 'OD336504943637855100', '2026-01-12', 'COD', '3FAN12VCD', 1, 110.00, 'uploads/3fan.png', 'Jyotsna', 'Chandrapur'),
(202601012, 'OD336507448278543100', '2026-01-13', 'Prepaid', 'i3fan', 1, 130.00, 'uploads/i3cpufan.png', 'Bhavesh', 'Mira Bhayandar'),
(202601013, 'OD336515152420008100', '2026-01-16', 'COD', 'Mini audio', 1, 10.00, 'uploads/miniaudio.png', 'Ramashish', 'Aurangabad'),
(202601014, 'OD336514219474717100', '2026-01-16', 'COD', 'LANC3M', 1, 90.00, 'uploads/lanc3m.png', 'Pramodkumar', 'Surat'),
(202601015, 'OD336525902306558100', '2026-01-16', 'COD', 'PCCABLE', 1, 10.00, 'uploads/pccable.png', 'Ramesh', 'Valsad'),
(202601016, 'OD336525294880049100', '2026-01-17', 'Prepaid', 'Hddcase 3.0 Black', 1, 10.00, 'uploads/hddc.png', 'Sarang', 'Rourkela'),
(202601017, 'OD336526152262491100', '2026-01-17', 'COD', 'i3fan', 1, 130.00, 'uploads/i3cpufan.png', 'Nayan', 'Jabalpur'),
(202601018, 'OD336551130159126100', '2026-01-20', 'COD', 'i3fan', 1, 130.00, 'uploads/i3cpufan.png', 'Ishwar', 'Nashik'),
(202601019, 'OD436550115969965100', '2026-01-20', 'COD', 'Hddcase 3.0 Black', 2, 250.00, 'uploads/hddc.png', 'Rasid', 'Rajkot'),
(202601020, 'OD336565022357618100', '2026-01-20', 'COD', 'Hddcase 3.0 Black', 1, 10.00, 'uploads/hddc.png', 'Nilesh', 'Kalyan'),
(202601021, 'OD436553859011903100', '2026-01-20', 'COD', 'ZEBH61', 1, 1195.00, 'uploads/zebh61.png', 'Aditya', 'Samastipur'),
(202601022, 'OD336575645981254100', '2026-01-21', 'Prepaid', 'Hddcase 3.0 Black', 1, 10.00, 'uploads/hddc.png', 'Mohamadarif', 'Valsad'),
(202601023, 'OD336601966749658100', '2026-01-27', 'COD', '3CFAN', 1, 10.00, 'uploads/3cfan.png', 'Kuldip Pandey,', 'Bahraich'),
(202601024, 'OD336625288253792100', '2026-01-29', 'Prepaid', 'DDr2 2 gb', 2, 510.00, 'uploads/ddr22gb.png', 'Vipin', 'Suar'),
(202601025, 'OD436630408564726100', '2026-01-29', 'COD', 'Mini audio', 1, 210.00, 'uploads/miniaudio.png', 'Mohammad', 'Bengaluru'),
(202601026, 'OD436626241021031100', '2026-01-29', 'COD', 'ZEBH61', 1, 1170.00, 'uploads/zebh61.png', 'Sanjay', 'Dharampur'),
(202601027, 'OD436656129627067400', '2026-01-31', 'COD', 'Hddcase 3.0 Black', 1, 110.00, 'uploads/hddc.png', 'NAYAN', 'Ahmedabad'),
(202602001, 'OD436688278045449100', '2026-02-04', 'COD', 'DDr2 2 gb', 1, 260.00, 'uploads/ddr22gb.png', 'Penchalaiah', 'Kothakota'),
(202602002, 'OD436720606501187100', '2026-02-06', 'COD', '2pin', 1, 10.00, 'uploads/2pin.png', 'Murshid', 'Jhalawar'),
(202602003, 'OD336698269460213100', '2026-02-05', 'COD', 'DDr2 2 gb', 1, 10.00, 'uploads/ddr22gb.png', 'ULAGANATHAN', 'Chennai'),
(202602004, 'OD336707484183009100', '2026-02-05', 'COD', 'Zeb SMPS', 1, 400.00, 'uploads/zebsmps.png', 'Noida', 'Simar'),
(202602005, 'OD336737934268204100', '2026-02-10', 'COD', '2pin', 1, 50.00, 'uploads/2pin.png', 'Nagaraj', 'Koppal'),
(202602006, 'OD436750571860329100', '2026-02-10', 'Prepaid', '2pin', 1, 50.00, 'uploads/2pin.png', 'RAJESHKUMAR', 'Halol - 389350'),
(202602007, 'OD336732436024862100', '2026-02-12', 'Prepaid', 'DDr2 2 gb', 1, 260.00, 'uploads/ddr22gb.png', 'Rajendra', 'LUCKNOW'),
(202602008, 'OD336734053535147100', '2026-02-12', 'Prepaid', 'DDr2 2 gb', 1, 260.00, 'uploads/ddr22gb.png', 'Rajeev', 'Kanpur'),
(202602009, 'OD436740676918891100', '2026-02-12', 'COD', 'DDr2 2 gb', 1, 260.00, 'uploads/ddr22gb.png', 'Mahaveer', 'NAGAUR'),
(202602010, 'OD336780893674808100', '2026-02-14', 'COD', 'i3fan', 1, 135.00, 'uploads/i3cpufan.png', 'Sanjay', 'Navsari'),
(202602011, 'OD336792185077520100', '2026-02-17', 'COD', 'Mini audio', 1, 190.00, 'uploads/miniaudio.png', 'Amit', 'Surat'),
(202602012, 'OD436794024243973100', '2026-02-17', 'COD', '2pin', 1, 310.00, 'uploads/I33240.png', 'Satish', 'Varangaon'),
(202602013, 'OD436818482105788100', '2026-02-19', 'COD', 'i3fan', 1, 135.00, 'uploads/i3cpufan.png', 'Mohan', 'Mulanur'),
(202602014, 'OD336844756711364100', '2026-02-21', 'COD', 'DDr2 2 gb', 1, 260.00, 'uploads/ddr22gb.png', 'Dharmendra', 'Surat'),
(202602015, 'OD436846655944830100', '2026-02-23', 'COD', 'MOUSE', 1, 70.00, 'uploads/mouse.png', 'Ravi Rawat,', 'Ghaziabad'),
(202602016, 'OD336868437884568100', '2026-02-24', 'COD', 'i3fan', 1, 135.00, 'uploads/i3cpufan.png', 'Salim Yusuf ', 'Bharuch');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `sr_no` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `gross_price` decimal(10,2) NOT NULL,
  `item_picture` text DEFAULT NULL,
  `customer_name` varchar(100) NOT NULL,
  `party_location` varchar(255) NOT NULL,
  `payments_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `received_payments`
--

CREATE TABLE `received_payments` (
  `id` int(11) NOT NULL,
  `sr_no` varchar(30) NOT NULL,
  `received_date` date NOT NULL,
  `received_amount` decimal(10,2) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `received_payments`
--

INSERT INTO `received_payments` (`id`, `sr_no`, `received_date`, `received_amount`, `remarks`, `created_at`) VALUES
(117, '202512001', '2025-12-25', 764.00, 'Previous Month Over Credit', '2025-12-25 16:05:04'),
(118, '202512002', '2025-12-26', 252.00, 'AMT REC. VIA UTR PREPAID ORDER NO.  1 & 5', '2025-12-26 08:48:21'),
(119, '202512003', '2025-12-26', 899.00, 'AMT REC. VIA UTR COD ORDER NO 3 , 6 & 7', '2025-12-26 09:08:00'),
(121, '202512004', '2025-12-29', 567.00, 'AMT. REC. VIA UTR PREPAID ORDER NO.11,17,19 & 21', '2025-12-29 08:11:33'),
(122, '202512005', '2025-12-29', 498.00, 'AMT REC. VIA UTR COD ORDER NO 4,8,9,10,12,13,14,15,16 & 18 ', '2025-12-29 08:41:41'),
(126, '202512006', '2025-12-31', 177.00, 'AMT REC.(2 JAN-26) VIA UTR COD ORDER NO 22 & 23', '2026-01-02 08:09:12'),
(129, '202512007', '2025-12-31', 308.00, 'AMT.REC. SPF VIA UTR (2 JAN) ORDER NO 23,24,27,28 & 29(5 JAN))', '2026-01-02 13:01:06'),
(133, '202512008', '2025-12-31', 127.00, 'AMT REC. VIA UTR COD ORDER NO 31,25,26,22,20 & 30(7 jan)', '2026-01-07 10:24:24'),
(136, '202512009', '2025-12-31', 990.00, 'AMT REC. VIA UTR COD ORDER NO 32 & 33(9 jan) ', '2026-01-09 08:59:30'),
(137, '202512010', '2025-12-31', 349.00, 'AMT. REC. VIA UTR  & SPF ORDR NO 34 35 & 36(12 JAN)', '2026-01-09 10:27:17'),
(143, '202601001', '2026-01-14', 490.00, 'AMT. REC. VIA UTR ORDER NO 2', '2026-01-14 08:48:04'),
(144, '202601002', '2026-01-16', 670.00, 'AMT. REC. VIA UTR ORDER NO 3 & 4', '2026-01-16 09:56:50'),
(145, '202601003', '2026-01-19', 72.00, 'AMT. REC. VIA UTR ORDER NO 6', '2026-01-19 07:22:38'),
(146, '202601004', '2026-01-21', 2805.00, 'AMT. REC. VIA UTR ORDER NO 8 & 9', '2026-01-21 07:15:12'),
(147, '202601005', '2026-01-23', 367.00, 'AMT. REC. VIA UTR ORDER NO 1,7,10,11,12 & DEC25-35', '2026-01-23 11:02:55'),
(148, '202601006', '2026-01-01', 150.00, 'Previous Month Over Credit ORDER NO 35(23-JAN)', '2026-01-23 11:37:06'),
(150, '202601014', '2026-01-28', 307.00, 'AMT. REC. VIA UTR ORDER NO 13,14,15,17', '2026-01-28 11:09:50'),
(151, '202601021', '2026-02-02', 2077.00, 'AMT. REC. VIA UTR ORDER NO 18,19 & 21', '2026-02-03 12:08:56'),
(152, '202601016', '2026-02-11', 38.00, 'AMT REC. VIA UTR SPF', '2026-02-11 09:00:01'),
(153, '202601026', '2026-02-11', 2368.00, 'AMT. REC. VIA UTR ORDER NO 16, 18, 22 TO 27', '2026-02-11 09:02:05'),
(154, '202601023', '2026-02-16', 36.00, 'AMT REC. VIA UTR SPF ORDER 23', '2026-02-14 08:25:12'),
(155, '202602001', '2026-02-16', 500.00, 'AMT REC. VIA UTR  ORDER 1', '2026-02-16 08:46:32'),
(156, '202602003', '2026-02-25', 945.00, 'AMT REC. VIA UTR ORDER NO 2 TO 10', '2026-02-25 09:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `returned_orders`
--

CREATE TABLE `returned_orders` (
  `sr_no` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `gross_price` decimal(10,2) NOT NULL,
  `item_picture` varchar(255) DEFAULT NULL,
  `customer_name` varchar(100) NOT NULL,
  `party_location` varchar(255) NOT NULL,
  `returned_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returned_orders`
--

INSERT INTO `returned_orders` (`sr_no`, `order_id`, `order_date`, `order_type`, `product_name`, `quantity`, `gross_price`, `item_picture`, `customer_name`, `party_location`, `returned_date`) VALUES
(202602009, 'OD436740676918891100', '2026-02-12', 'COD', 'DDr2 2 gb', 1, 260.00, 'uploads/ddr22gb.png', 'Mahaveer', 'NAGAUR', '2026-02-21 14:39:22'),
(202602012, 'OD436794024243973100', '2026-02-17', 'COD', '2pin', 1, 310.00, 'uploads/I33240.png', 'Satish', 'Varangaon', '2026-02-19 17:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `return_reasons`
--

CREATE TABLE `return_reasons` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `return_type` enum('customer','courier') NOT NULL,
  `reason_code` varchar(50) NOT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_reasons`
--

INSERT INTO `return_reasons` (`id`, `order_id`, `return_type`, `reason_code`, `remark`, `created_at`) VALUES
(151, 'OD436241217359417100', 'customer', 'Any Other', 'ASSC.DEFC. 140-192-10=-62', '2025-12-25 15:50:21'),
(152, 'OD336237748971909100', 'customer', 'MISSHIPMENT', 'REV.W.PRO.260-192-10=58', '2025-12-25 15:51:50'),
(153, 'OD336282066748857100', 'courier', 'ORC_validated with customer', '', '2025-12-25 15:52:20'),
(154, 'OD436265736357128100', 'courier', 'ORC_validated with customer', '', '2025-12-25 15:52:57'),
(155, 'OD336258384818939100', 'courier', 'Any Other', 'change_contact_number', '2025-12-25 15:53:29'),
(156, 'OD336250175426596100', 'courier', 'ORC_validated with customer', '', '2025-12-25 15:54:34'),
(157, 'OD336249012545816100', 'courier', 'ORC_validated with customer', '', '2025-12-25 15:55:21'),
(158, 'OD336238519564175100', 'courier', 'Any Other', 'expensive_now', '2025-12-25 15:56:05'),
(159, 'OD436247182906818100', 'courier', 'ORC_validated with customer', '', '2025-12-25 15:56:40'),
(162, 'OD436297436103753100', 'customer', 'Any Other', 'ACCESSORY_DEFECTIVE, CUS:140-18-10=112', '2025-12-26 05:38:27'),
(163, 'OD436280153151464100', 'customer', 'Any Other', 'SOFT WARE ISSUE 420-257-20=143', '2025-12-26 05:40:23'),
(168, 'OD336325981688719100', 'courier', 'Damaged Shipment', 'DAMAGED_SHIPMENT_OBD', '2025-12-26 09:26:14'),
(171, 'OD336308852399602100', 'customer', 'Any Other', 'DEFECTIVE_PRODUCT', '2025-12-29 09:52:59'),
(172, 'OD436319661455804100', 'customer', 'Any Other', 'ACCESSORY_DEFECTIVE', '2025-12-29 09:53:43'),
(173, 'OD436282866079002100', 'customer', 'Any Other', 'DEF. PROD. RTN. AFTER PAYMENT', '2025-12-29 09:54:37'),
(174, 'OD336313965571687100', 'courier', 'Any Other', 'change_contact_number', '2025-12-29 09:55:49'),
(176, 'OD436370253422570100', 'customer', 'MISSHIPMENT', 'MISSING_ACCESSORY', '2026-01-05 11:32:51'),
(177, 'OD436385843016955100', 'customer', 'Any Other', 'DEFACTIVE PRODUCT', '2026-01-06 07:11:02'),
(178, 'OD436282866079002100', 'courier', 'Any_Other_IS.', 'FALSE REMARK', '2026-01-07 11:31:00'),
(179, 'OD436241217359417100', 'courier', 'Any_Other_IS.', 'MATERIAL REC. AS RS 130', '2026-01-10 09:06:45'),
(180, 'OD436319661455804100', 'courier', 'Any_Other_IS.', 'MATERIAL REC AS RS 90', '2026-01-10 09:07:57'),
(181, 'OD436370253422570100', 'courier', 'MISSHIPMENT.', 'REC AS 250', '2026-01-10 09:10:28'),
(182, 'OD436280153151464100', 'courier', 'Any_Other_IS.', 'REC AS 100', '2026-01-10 09:11:08'),
(187, 'OD336456237872844100', 'customer', 'Damg.SHIP.OBD', 'DEAD, CUSTOMER', '2026-01-20 10:10:28'),
(188, 'OD336525902306558100', 'courier', 'ORC_val_cust.', 'COURIER', '2026-01-20 10:11:22'),
(189, 'OD336525294880049100', 'customer', 'ACCE._DEFEC.', 'CUSTOMER', '2026-01-23 11:33:04'),
(190, 'OD336515152420008100', 'courier', 'Attem_Exhaus.', 'COURUER', '2026-01-23 11:43:35'),
(191, 'OD336565022357618100', 'courier', 'Attem_Exhaus.', 'COURIER', '2026-01-27 09:05:16'),
(192, 'OD336575645981254100', 'customer', 'DEFEC._PROD.', 'COSTOMER', '2026-01-28 11:37:04'),
(193, 'OD336601966749658100', 'customer', 'Damg.SHIP.OBD', 'CUS. DAMAGE PRODUCT', '2026-02-03 11:44:56'),
(194, 'OD336707484183009100', 'customer', 'Damg.SHIP.OBD', 'customer', '2026-02-10 09:27:12'),
(195, 'OD436720606501187100', 'customer', 'Damg.SHIP.OBD', 'CUSTOMER', '2026-02-11 11:38:09'),
(196, 'OD336698269460213100', 'courier', 'ORC_val_cust.', 'courier', '2026-02-13 10:03:52'),
(197, 'OD436794024243973100', 'courier', 'Mind Changed', '', '2026-02-19 12:27:56'),
(198, 'OD436740676918891100', 'courier', 'Mind Changed', '', '2026-02-23 07:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `spf_claims`
--

CREATE TABLE `spf_claims` (
  `sr_no` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `gross_price` decimal(10,2) NOT NULL,
  `item_picture` varchar(255) DEFAULT NULL,
  `customer_name` varchar(100) NOT NULL,
  `party_location` varchar(255) NOT NULL,
  `claim_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_returns`
--
ALTER TABLE `customer_returns`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `delivered_orders`
--
ALTER TABLE `delivered_orders`
  ADD PRIMARY KEY (`sr_no`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `inward_to_shop`
--
ALTER TABLE `inward_to_shop`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `received_payments`
--
ALTER TABLE `received_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returned_orders`
--
ALTER TABLE `returned_orders`
  ADD PRIMARY KEY (`sr_no`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `return_reasons`
--
ALTER TABLE `return_reasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_order_reason` (`order_id`,`return_type`);

--
-- Indexes for table `spf_claims`
--
ALTER TABLE `spf_claims`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `received_payments`
--
ALTER TABLE `received_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `return_reasons`
--
ALTER TABLE `return_reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
