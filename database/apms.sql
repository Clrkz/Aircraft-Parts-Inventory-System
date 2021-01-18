-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2019 at 09:18 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apms`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `date_borrow` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `borrowcode` bigint(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_assigned` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `time_limit` datetime NOT NULL,
  `date_return` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `date_borrow`, `borrowcode`, `member_id`, `item_id`, `stock_id`, `user_id`, `room_assigned`, `status`, `time_limit`, `date_return`) VALUES
(26, '2019-02-12 17:43:23', 21220191743238, 17, 33, 38, 8, 0, 2, '0000-00-00 00:00:00', NULL),
(27, '2019-02-12 17:47:12', 21220191747128, 18, 28, 33, 8, 0, 2, '0000-00-00 00:00:00', '2019-03-10 16:12:37'),
(28, '2019-02-12 18:00:36', 21220191800368, 19, 32, 37, 8, 0, 2, '0000-00-00 00:00:00', NULL),
(29, '2019-03-10 08:12:21', 31020190912218, 20, 28, 33, 8, 0, 2, '2019-03-10 04:12:00', '2019-03-10 16:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `history_logs`
--

CREATE TABLE `history_logs` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `status_name` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_logs`
--

INSERT INTO `history_logs` (`id`, `description`, `table_name`, `status_name`, `user_id`, `user_type`, `date_created`) VALUES
(81, 'add userStorekeeper', 'user', '', 8, 1, '2019-01-30 19:34:06'),
(82, 'add new equipmentMDL12345 , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-05 20:43:51'),
(83, 'add new room room 101', 'room', '', 8, 1, '2019-02-05 20:51:50'),
(84, 'deactivate client', 'client', '', 8, 1, '2019-02-05 21:01:57'),
(85, 'activate client', 'client', '', 8, 1, '2019-02-05 21:02:10'),
(86, 'deactivate user', 'user', '', 8, 1, '2019-02-05 21:05:58'),
(87, 'activate user', 'user', '', 8, 1, '2019-02-05 21:06:01'),
(88, 'add userChristian Moneda', 'user', '', 8, 1, '2019-02-05 21:14:51'),
(89, 'edit client', 'client', '', 8, 1, '2019-02-05 21:23:56'),
(90, 'change user password', 'user', '', 8, 1, '2019-02-10 14:17:43'),
(91, 'add new equipmentewe , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 17:52:12'),
(92, 'edit client', 'client', '', 8, 1, '2019-02-10 22:05:09'),
(93, 'edit client', 'client', '', 8, 1, '2019-02-10 22:50:47'),
(94, 'edit client', 'client', '', 8, 1, '2019-02-10 22:52:34'),
(95, 'edit client', 'client', '', 8, 1, '2019-02-10 22:58:07'),
(96, 'add new equipmenthgh , JETSTREAM PARTS', 'equipment', '', 8, 1, '2019-02-10 23:22:29'),
(97, 'add new equipmenth , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 23:24:22'),
(98, 'add new equipmenth , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 23:24:36'),
(99, 'add new equipmenth , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 23:24:36'),
(100, 'add new equipmentghgj , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 23:26:30'),
(101, 'add new equipmentkghk , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 23:29:55'),
(102, 'add new equipmenthgjh , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 23:33:04'),
(103, 'add new equipmentggj , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 23:34:39'),
(104, 'add new equipmentjjh , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 23:35:48'),
(105, 'add new equipmentfdhgjhk , JETSTREAM PARTS', 'equipment', '', 8, 1, '2019-02-10 23:36:38'),
(106, 'add new equipmentfdhgjhk , JETSTREAM PARTS', 'equipment', '', 8, 1, '2019-02-10 23:36:42'),
(107, 'add new equipmentvjjvjh , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-10 23:38:53'),
(108, 'add new equipmentSHELF , DORNIER PARTS', 'equipment', '', 8, 1, '2019-02-10 23:54:04'),
(109, 'add new equipmentSHELF , DORNIER PARTS', 'equipment', '', 8, 1, '2019-02-11 00:14:26'),
(110, 'add new equipmentA4 , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-11 00:33:46'),
(111, 'add 1items toSHELF MODELquantity', 'equipment', '', 8, 1, '2019-02-11 00:40:46'),
(112, 'add new equipmentA4 , DORNIER PARTS', 'equipment', '', 8, 1, '2019-02-11 01:15:26'),
(113, 'add new equipmentA5 , SHERPA PARTS', 'equipment', '', 8, 1, '2019-02-11 02:11:54'),
(114, 'add 5items toA5quantity', 'equipment', '', 8, 1, '2019-02-11 02:12:15'),
(115, 'add new equipmentSHELFNO 4 , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-11 20:18:44'),
(116, 'add new equipmentSHELFNO 3 , SHERPA PARTS', 'equipment', '', 8, 1, '2019-02-11 20:23:14'),
(117, 'add new equipmentSHELFNO 5 , JETSTREAM PARTS', 'equipment', '', 8, 1, '2019-02-11 20:27:03'),
(118, 'add new equipmentshle , DORNIER PARTS', 'equipment', '', 8, 1, '2019-02-11 20:42:17'),
(119, 'add new equipmenta2 , DORNIER PARTS', 'equipment', '', 8, 1, '2019-02-11 20:42:57'),
(120, 'add new equipmentvggvgv , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-12 16:16:52'),
(121, 'add new equipmentA4 , DORNIER PARTS', 'equipment', '', 8, 1, '2019-02-12 16:50:02'),
(122, 'add new equipments2 , JETSTREAM PARTS', 'equipment', '', 8, 1, '2019-02-12 17:22:04'),
(123, 'edit client', 'client', '', 8, 1, '2019-02-12 18:59:16'),
(124, 'add 2items toA4quantity', 'equipment', '', 8, 1, '2019-02-12 19:00:03'),
(125, 'add 2items toSHELFNO 3quantity', 'equipment', '', 8, 1, '2019-02-12 19:06:37'),
(126, 'add 1items toA4quantity', 'equipment', '', 8, 1, '2019-02-12 19:07:08'),
(127, 'add 1items toA4quantity', 'equipment', '', 8, 1, '2019-02-12 19:08:03'),
(128, 'add 1items tovggvgvquantity', 'equipment', '', 8, 1, '2019-02-12 19:08:30'),
(129, 'edit client', 'client', '', 10, 2, '2019-02-12 15:14:54'),
(130, 'edit client', 'client', '', 10, 2, '2019-02-12 15:15:11'),
(131, 'edit client', 'client', '', 10, 2, '2019-02-12 15:15:22'),
(132, 'add new equipmente1 , AGUSTA PARTS', 'equipment', '', 8, 1, '2019-02-12 15:17:26'),
(133, 'add new equipmente2 , DORNIER PARTS', 'equipment', '', 8, 1, '2019-02-12 15:19:37'),
(134, 'edit client', 'client', '', 8, 1, '2019-02-12 15:48:58'),
(135, 'add new equipmentE3 , JETSTREAM PARTS', 'equipment', '', 8, 1, '2019-02-12 15:50:39'),
(136, 'add new equipmentE4 , SHERPA PARTS', 'equipment', '', 8, 1, '2019-02-12 16:49:42'),
(137, 'add new equipmentE5 , DORNIER PARTS', 'equipment', '', 8, 1, '2019-02-12 17:10:59'),
(138, 'add new equipment3A , JETSTREAM PARTS', 'equipment', '', 8, 1, '2019-02-12 17:12:12'),
(139, 'add new equipment3B , JETSTREAM PARTS', 'equipment', '', 8, 1, '2019-02-12 17:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(5) NOT NULL,
  `i_partNO` varchar(50) NOT NULL,
  `i_shelfNO` varchar(50) NOT NULL,
  `i_category` varchar(50) NOT NULL,
  `i_remarks` varchar(50) NOT NULL,
  `i_description` text NOT NULL,
  `i_type` varchar(50) NOT NULL,
  `item_rawstock` int(11) NOT NULL,
  `i_status` int(11) NOT NULL DEFAULT '1',
  `i_dateAdded` varchar(50) NOT NULL,
  `i_price` decimal(10,2) NOT NULL,
  `i_photo` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `i_partNO`, `i_shelfNO`, `i_category`, `i_remarks`, `i_description`, `i_type`, `item_rawstock`, `i_status`, `i_dateAdded`, `i_price`, `i_photo`, `date`) VALUES
(28, 'PRT0001', 'E1', 'AGUSTA PARTS', 'PRT0001 Remarks', 'PRT0001 description', 'Non-consumable', 2, 1, '2019-02-12', '0.00', '', '2019-03-10 08:17:27'),
(29, 'PRT0201', 'E1', 'DORNIER PARTS', 'PRT0201 REMARKS', 'PRT0201 Description', 'Non-consumable', 5, 1, '2019-02-12', '0.00', '', '2019-03-10 08:17:27'),
(30, 'PRT1424', 'E3', 'JETSTREAM PARTS', 'PRT1424 Remar', 'PRT1424 Description', 'Non-consumable', 3, 1, '2019-02-12', '0.00', '', '2019-03-10 08:17:27'),
(31, 'PRT01942', 'E4', 'SHERPA PARTS', 'PRT01942 Remarks', 'PRT01942 Description', 'Non-consumable', 3, 1, '2019-02-12', '0.00', '', '2019-03-10 08:17:27'),
(32, 'PRT2514', 'E5', 'DORNIER PARTS', 'PRT2514 Remarks', 'PRT2514 Description', 'Consumable', 10, 1, '2019-02-12', '0.00', '', '2019-03-10 08:17:27'),
(33, 'PRT6723', '3A', 'JETSTREAM PARTS', 'PRT6723 Remarks', 'PRT6723 Description', 'Consumable', 3, 1, '2019-02-12', '0.00', '', '2019-03-10 08:17:27'),
(34, 'PRT56332', '3B', 'JETSTREAM PARTS', 'PRT56332 Remarks', 'PRT56332 Description', 'Consumable', 4, 1, '2019-02-12', '0.00', '', '2019-03-10 08:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `item_inventory`
--

CREATE TABLE `item_inventory` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `inventory_itemstock` int(11) NOT NULL,
  `inventory_status` int(11) NOT NULL,
  `item_remarks` text NOT NULL,
  `date_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `items_stock` int(11) NOT NULL,
  `item_status` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_stock`
--

INSERT INTO `item_stock` (`id`, `item_id`, `room_id`, `items_stock`, `item_status`, `status`) VALUES
(33, 28, 8, 2, 1, 1),
(34, 29, 8, 5, 1, 1),
(35, 30, 8, 3, 1, 1),
(36, 31, 8, 3, 1, 1),
(37, 32, 8, 9, 1, 1),
(38, 33, 8, 2, 1, 1),
(39, 34, 8, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `rm_name` varchar(50) NOT NULL,
  `rm_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rm_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `rm_name`, `rm_date_added`, `rm_status`) VALUES
(7, 'Default', '2019-01-28 23:28:41', 1),
(8, 'Stock Room', '2019-01-30 17:10:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `m_id_number` int(11) NOT NULL,
  `m_fname` varchar(50) NOT NULL,
  `m_lname` varchar(50) NOT NULL,
  `m_gender` varchar(10) NOT NULL,
  `m_contact` varchar(15) NOT NULL,
  `m_status` int(11) NOT NULL DEFAULT '1',
  `m_department` varchar(100) NOT NULL,
  `m_type` varchar(99) NOT NULL,
  `m_added_date` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `m_id_number`, `m_fname`, `m_lname`, `m_gender`, `m_contact`, `m_status`, `m_department`, `m_type`, `m_added_date`) VALUES
(15, 10001, 'Juan', 'dela cruz', 'Male', '09123456789', 1, 'COMMUNICATION DEPT.', 'Member', '-undefined'),
(16, 10002, 'Maria', 'De la paz', 'Female', '09123456789', 1, 'COMMUNICATION DEPT.', 'Member', '-undefined'),
(17, 10003, 'Clarence', 'andaya', 'Male', '09123456789', 1, 'COMMUNICATION DEPT.', 'Member', '-undefined'),
(18, 10004, 'Pedro', 'Penduko', 'Male', '09123456789', 1, 'COMMUNICATION DEPT.', 'Member', '-undefined'),
(19, 10086, 'Manny', 'Pacman', 'Male', '09123456', 1, 'N/A', 'Member', ''),
(20, 54321, 'Loy', 'Tian', 'Male', '09123456789', 1, 'N/A', 'Member', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=admin, 2=stafff',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=active, 2=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `type`, `status`) VALUES
(8, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1, 1),
(10, 'Storekeeper', 'staff', '1253208465b1efa876f982d8a9e73eef', 2, 1),
(11, 'Christian Moneda', 'kamote', '9d8f06fa59c5050be3d7462a783689a7', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `equipment_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `history_logs`
--
ALTER TABLE `history_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_inventory`
--
ALTER TABLE `item_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `history_logs`
--
ALTER TABLE `history_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `item_inventory`
--
ALTER TABLE `item_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
