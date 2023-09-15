-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 05:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internetbanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `ib_acc_types`
--

CREATE TABLE `ib_acc_types` (
  `acctype_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_acc_types`
--

INSERT INTO `ib_acc_types` (`acctype_id`, `name`, `description`, `rate`, `code`) VALUES
(1, 'Savings', '<p>Savings accounts&nbsp;are typically the first official bank account anybody opens. Children may open an account with a parent to begin a pattern of saving. Teenagers open accounts to stash cash earned&nbsp;from a first job&nbsp;or household chores.</p><p>Savings accounts are an excellent place to park&nbsp;emergency cash. Opening a savings account also marks the beginning of your relationship with a financial institution. For example, when joining a credit union, your &ldquo;share&rdquo; or savings account establishes your membership.</p>', '20', 'ACC-CAT-4EZFO'),
(2, ' Retirement', '<p>Retirement accounts&nbsp;offer&nbsp;tax advantages. In very general terms, you get to&nbsp;avoid paying income tax on interest&nbsp;you earn from a savings account or CD each year. But you may have to pay taxes on those earnings at a later date. Still, keeping your money sheltered from taxes may help you over the long term. Most banks offer IRAs (both&nbsp;Traditional IRAs&nbsp;and&nbsp;Roth IRAs), and they may also provide&nbsp;retirement accounts for small businesses</p>', '10', 'ACC-CAT-1QYDV'),
(4, 'Recurring deposit', '<p><strong>Recurring deposit account or RD account</strong> is opened by those who want to save certain amount of money regularly for a certain period of time and earn a higher interest rate.&nbsp;In RD&nbsp;account a&nbsp;fixed amount is deposited&nbsp;every month for a specified period and the total amount is repaid with interest at the end of the particular fixed period.&nbsp;</p><p>The period of deposit is minimum six months and maximum ten years.&nbsp;The interest rates vary&nbsp;for different plans based on the amount one saves and the period of time and also on banks. No withdrawals are allowed from the RD account. However, the bank may allow to close the account before the maturity period.</p><p>These accounts can be opened in single or joint names. Banks are also providing the Nomination facility to the RD account holders.&nbsp;</p>', '15', 'ACC-CAT-VBQLE'),
(5, 'Fixed Deposit Account', '<p>In <strong>Fixed Deposit Account</strong> (also known as <strong>FD Account</strong>), a particular sum of money is deposited in a bank for specific&nbsp;period of time. It&rsquo;s one time deposit and one time take away (withdraw) account.&nbsp;The money deposited in this account can not be withdrawn before the expiry of period.&nbsp;</p><p>However, in case of need,&nbsp; the depositor can ask for closing the fixed deposit prematurely by paying a penalty. The penalty amount varies with banks.</p><p>A high interest rate is paid on fixed deposits. The rate of interest paid for fixed deposit vary according to amount, period and also from bank to bank.</p>', '40', 'ACC-CAT-A86GO'),
(7, 'Current account', '<p><strong>Current account</strong> is mainly for business persons, firms, companies, public enterprises etc and are never used for the purpose of investment or savings.These deposits are the most liquid deposits and there are no limits for number of transactions or the amount of transactions in a day. While, there is no interest paid on amount held in the account, banks charges certain &nbsp;service charges, on such accounts. The current accounts do not have any fixed maturity as these are on continuous basis accounts.</p>', '20', 'ACC-CAT-4O8QW');

-- --------------------------------------------------------

--
-- Table structure for table `ib_admin`
--

CREATE TABLE `ib_admin` (
  `admin_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_admin`
--

INSERT INTO `ib_admin` (`admin_id`, `name`, `email`, `number`, `password`, `profile_pic`) VALUES
(2, 'Siti Hajar - (Admin)', 'admin@mail.com', 'iBank-ADM-0516', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', 'admin-icn.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_bankaccounts`
--

CREATE TABLE `ib_bankaccounts` (
  `account_id` int(20) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_rates` varchar(200) NOT NULL,
  `acc_status` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  `client_email` varchar(200) NOT NULL,
  `client_adr` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_bankaccounts`
--

INSERT INTO `ib_bankaccounts` (`account_id`, `acc_name`, `account_number`, `acc_type`, `acc_rates`, `acc_status`, `acc_amount`, `client_id`, `client_name`, `client_national_id`, `client_phone`, `client_number`, `client_email`, `client_adr`, `created_at`) VALUES
(19, 'Akaun Cikthi', '165347208', 'Savings ', '20', 'Active', '0', '11', 'NUR ATHIRAH BINTI SUHAIRI ', 'athirahsuhairi1@gmail.com', '+60 18-2170-162', 'iBank-CLIENT-3984', 'athirahsuhairi1@gmail.com', 'kampung banting', '2023-09-11 03:25:50.225299'),
(20, 'Duit Kawen', '620589734', 'Savings ', '20', 'Active', '0', '14', 'ALLYSSA BINTI ABDULLAH', '030524102525', '0 19-644 827', 'iBank-CLIENT-6423', 'allyssa33@gmail.com', 'kampung sawah', '2023-09-11 03:26:51.061938'),
(21, 'Saraan Tua', '506927431', ' Retirement ', '10', 'Active', '0', '12', 'AINA ATIKAH BINTI MOHD AZHAR', '030612141060', '016270 0612', 'iBank-CLIENT-0253', 'atikahazhar612@gmail.com', 'kampung bangsa', '2023-09-11 03:29:29.364749'),
(22, 'Duit Simpanan', '059341728', 'Current account ', '20', 'Active', '0', '13', 'NURUL NAJWA BINTI BOHARANNORDIN', '030808101224', '0 11-5155 9408', 'iBank-CLIENT-6532', 'nurulnajwa@gmail.com', 'banting baru', '2023-09-11 03:32:42.886097');

-- --------------------------------------------------------

--
-- Table structure for table `ib_clients`
--

CREATE TABLE `ib_clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `national_id` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_clients`
--

INSERT INTO `ib_clients` (`client_id`, `name`, `national_id`, `phone`, `address`, `email`, `password`, `profile_pic`, `client_number`) VALUES
(11, 'NUR ATHIRAH BINTI SUHAIRI ', 'athirahsuhairi1@gmail.com', '+60 18-2170-162', 'kampung banting', 'athirahsuhairi1@gmail.com', 'e5a31b5669e7bdef2c19dd455bb6a8cf1830abf7', '', 'iBank-CLIENT-3984'),
(12, 'AINA ATIKAH BINTI MOHD AZHAR', '030612141060', '016270 0612', 'kampung bangsa', 'atikahazhar612@gmail.com', 'd19ed23e47671fdec9fd7056679ea87fcbabe4ad', 'image-client.jpeg', 'iBank-CLIENT-0253'),
(13, 'NURUL NAJWA BINTI BOHARANNORDIN', '030808101224', '0 11-5155 9408', 'banting baru', 'nurulnajwa@gmail.com', 'a02548060fdc77caed4456000665303ed7ed5ee4', '', 'iBank-CLIENT-6532'),
(14, 'ALLYSSA BINTI ABDULLAH', '030524102525', '0 19-644 827', 'kampung sawah', 'allyssa33@gmail.com', 'e5a31b5669e7bdef2c19dd455bb6a8cf1830abf7', '', 'iBank-CLIENT-6423');

-- --------------------------------------------------------

--
-- Table structure for table `ib_notifications`
--

CREATE TABLE `ib_notifications` (
  `notification_id` int(20) NOT NULL,
  `notification_details` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_notifications`
--

INSERT INTO `ib_notifications` (`notification_id`, `notification_details`, `created_at`) VALUES
(47, 'NUR ATHIRAH BINTI SUHAIRI  Has Deposited $ 250 To Bank Account 165347208', '2023-09-12 01:33:33.984404'),
(48, 'NUR ATHIRAH BINTI SUHAIRI  Has Transfered $ 300 From Bank Account 165347208 To Bank Account 059341728', '2023-09-12 01:34:41.003363'),
(49, 'NURUL NAJWA BINTI BOHARANNORDIN Has Deposited $ 580 To Bank Account 059341728', '2023-09-12 01:35:37.008671'),
(50, 'ALLYSSA BINTI ABDULLAH Has Transfered $ 2000 From Bank Account 620589734 To Bank Account 506927431', '2023-09-12 03:18:43.592719');

-- --------------------------------------------------------

--
-- Table structure for table `ib_staff`
--

CREATE TABLE `ib_staff` (
  `staff_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_staff`
--

INSERT INTO `ib_staff` (`staff_id`, `name`, `staff_number`, `phone`, `email`, `password`, `sex`, `profile_pic`) VALUES
(3, 'Hanis Zulaikha - (Staff)', 'iBank-STAFF-6785', '0704975742', 'staff@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', 'Male', 'images-staff.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `ib_systemsettings`
--

CREATE TABLE `ib_systemsettings` (
  `id` int(20) NOT NULL,
  `sys_name` longtext NOT NULL,
  `sys_tagline` longtext NOT NULL,
  `sys_logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_systemsettings`
--

INSERT INTO `ib_systemsettings` (`id`, `sys_name`, `sys_tagline`, `sys_logo`) VALUES
(1, 'OCBC', 'Financial success at every service we offer.', 'images.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_transactions`
--

CREATE TABLE `ib_transactions` (
  `tr_id` int(20) NOT NULL,
  `tr_code` varchar(200) NOT NULL,
  `account_id` varchar(200) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `tr_type` varchar(200) NOT NULL,
  `tr_status` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `transaction_amt` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `receiving_acc_no` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `receiving_acc_name` varchar(200) NOT NULL,
  `receiving_acc_holder` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ib_transactions`
--

INSERT INTO `ib_transactions` (`tr_id`, `tr_code`, `account_id`, `acc_name`, `account_number`, `acc_type`, `acc_amount`, `tr_type`, `tr_status`, `client_id`, `client_name`, `client_national_id`, `transaction_amt`, `client_phone`, `receiving_acc_no`, `created_at`, `receiving_acc_name`, `receiving_acc_holder`) VALUES
(52, 'nlSVUvcgxzKXEuos2Jp7', '19', 'Akaun Cikthi', '165347208', 'Savings ', '', 'Deposit', 'Success ', '11', 'NUR ATHIRAH BINTI SUHAIRI ', 'athirahsuhairi1@gmail.com', '5000', '+60 18-2170-162', '', '2023-09-11 03:26:04.966669', '', ''),
(53, 'leHgUXFV9RIMtbcfo20q', '20', 'Duit Kawen', '620589734', 'Savings ', '', 'Deposit', 'Success ', '14', 'ALLYSSA BINTI ABDULLAH', '030524102525', '30000', '0 19-644 827', '', '2023-09-11 03:27:01.271199', '', ''),
(54, 'SRP7xXnM1couNgt86kUb', '21', 'Saraan Tua', '506927431', ' Retirement ', '', 'Deposit', 'Success ', '12', 'AINA ATIKAH BINTI MOHD AZHAR', '030612141060', '1500', '016270 0612', '', '2023-09-11 03:29:58.699681', '', ''),
(55, 'fbF3Esy6pUcgdDOiZIYw', '22', 'Duit Simpanan', '059341728', 'Current account ', '', 'Deposit', 'Success ', '13', 'NURUL NAJWA BINTI BOHARANNORDIN', '030808101224', '500', '0 11-5155 9408', '', '2023-09-11 03:32:56.487390', '', ''),
(56, '7h60CmgR3IufNQ8DtKsS', '19', 'Akaun Cikthi', '165347208', 'Savings ', '', 'Deposit', 'Success ', '11', 'NUR ATHIRAH BINTI SUHAIRI ', 'athirahsuhairi1@gmail.com', '150', '+60 18-2170-162', '', '2023-09-11 03:40:09.834903', '', ''),
(57, 'n8FOdQPHivGYBkWIKZo4', '22', 'Duit Simpanan', '059341728', 'Current account ', '', 'Withdrawal', 'Success ', '13', 'NURUL NAJWA BINTI BOHARANNORDIN', '030808101224', '100', '0 11-5155 9408', '', '2023-09-11 03:41:24.484331', '', ''),
(58, '7bOvfFKyX62czdMaVtQC', '19', 'Akaun Cikthi', '165347208', 'Savings ', '', 'Withdrawal', 'Success ', '11', 'NUR ATHIRAH BINTI SUHAIRI ', 'athirahsuhairi1@gmail.com', '250', '+60 18-2170-162', '', '2023-09-11 04:02:16.966606', '', ''),
(59, 'FzDV7gMGsCE5nc3tUBqa', '20', 'Duit Kawen', '620589734', 'Savings ', '', 'Transfer', 'Success ', '14', 'ALLYSSA BINTI ABDULLAH', '030524102525', '5000', '0 19-644 827', 'Select Receiving Account', '2023-09-11 04:05:27.465486', 'kedai baju kawen', '251102251-22-6522'),
(60, 'UDm4ZCJhaBTS7p8Hcywj', '20', 'Duit Kawen', '620589734', 'Savings ', '', 'Withdrawal', 'Success ', '14', 'ALLYSSA BINTI ABDULLAH', '030524102525', '650', '0 19-644 827', '', '2023-09-11 04:09:02.854323', '', ''),
(61, 'WkPvHgXoaTKtDnIi0yZG', '19', 'Akaun Cikthi', '165347208', 'Savings ', '', 'Transfer', 'Success ', '11', 'NUR ATHIRAH BINTI SUHAIRI ', 'athirahsuhairi1@gmail.com', '800', '+60 18-2170-162', 'Select Receiving Account', '2023-09-11 04:10:23.289458', 'untuk si manja', '555524441-95-2224'),
(62, 'EJ7ZsLFIOuhn9zKN2WQd', '22', 'Duit Simpanan', '059341728', 'Current account ', '', 'Transfer', 'Success ', '13', 'NURUL NAJWA BINTI BOHARANNORDIN', '030808101224', '250', '0 11-5155 9408', 'Select Receiving Account', '2023-09-11 04:50:33.701186', 'cikthi', '162059125689002'),
(63, '2SWvJYqinL8COb3mUDf6', '22', 'Duit Simpanan', '059341728', 'Current account ', '', 'Withdrawal', 'Success ', '13', 'NURUL NAJWA BINTI BOHARANNORDIN', '030808101224', '230', '0 11-5155 9408', '', '2023-09-11 04:53:29.874810', '', ''),
(64, '7n0H64D3dPwWcEp1kFRM', '21', 'Saraan Tua', '506927431', ' Retirement ', '', 'Deposit', 'Success ', '12', 'AINA ATIKAH BINTI MOHD AZHAR', '030612141060', '620', '016270 0612', '', '2023-09-11 06:03:24.967398', '', ''),
(65, 'N4YafxcnbrQWAuVMiv1j', '21', 'Saraan Tua', '506927431', ' Retirement ', '', 'Transfer', 'Success ', '12', 'AINA ATIKAH BINTI MOHD AZHAR', '030612141060', '800', '016270 0612', 'Select Receiving Account', '2023-09-11 06:04:28.745525', 'makanan si manja', '10300-5542-9985-4477'),
(66, 'RuP6XJ9rW3pGhTADmZOt', '21', 'Saraan Tua', '506927431', ' Retirement ', '', 'Withdrawal', 'Success ', '12', 'AINA ATIKAH BINTI MOHD AZHAR', '030612141060', '2020', '016270 0612', '', '2023-09-11 06:12:38.873369', '', ''),
(67, 'fBAic3dg2pjbxONsHakM', '21', 'Saraan Tua', '506927431', ' Retirement ', '', 'Deposit', 'Success ', '12', 'AINA ATIKAH BINTI MOHD AZHAR', '030612141060', '200', '016270 0612', '', '2023-09-11 07:01:16.745347', '', ''),
(68, 'RUz2bM4OrnwHgl0qX9jV', '21', 'Saraan Tua', '506927431', ' Retirement ', '', 'Deposit', 'Success ', '12', 'AINA ATIKAH BINTI MOHD AZHAR', '030612141060', '580', '016270 0612', '', '2023-09-11 07:03:49.352630', '', ''),
(69, 'aQlLCS3uD8KEqpv4hHYc', '21', 'Saraan Tua', '506927431', ' Retirement ', '', 'Transfer', 'Success ', '12', 'AINA ATIKAH BINTI MOHD AZHAR', '030612141060', '50', '016270 0612', '165347208', '2023-09-11 07:41:55.074249', 'Akaun Cikthi', 'NUR ATHIRAH BINTI SUHAIRI '),
(70, 'H1W9Fzvm7h8MIAleqUKn', '19', 'Akaun Cikthi', '165347208', 'Savings ', '', 'Deposit', 'Success ', '11', 'NUR ATHIRAH BINTI SUHAIRI ', 'athirahsuhairi1@gmail.com', '250', '+60 18-2170-162', '', '2023-09-12 01:33:33.977964', '', ''),
(71, 'muRsPbxIegYiDO4HSGNp', '19', 'Akaun Cikthi', '165347208', 'Savings ', '', 'Transfer', 'Success ', '11', 'NUR ATHIRAH BINTI SUHAIRI ', 'athirahsuhairi1@gmail.com', '300', '+60 18-2170-162', '059341728', '2023-09-12 01:34:40.999900', 'Duit Simpanan', 'NURUL NAJWA BINTI BOHARANNORDIN'),
(72, 'rd075zunXgRJD6aAeQKF', '22', 'Duit Simpanan', '059341728', 'Current account ', '', 'Deposit', 'Success ', '13', 'NURUL NAJWA BINTI BOHARANNORDIN', '030808101224', '580', '0 11-5155 9408', '', '2023-09-12 01:35:37.006504', '', ''),
(73, 'xUeYD9tsXlnbmMCyujQL', '20', 'Duit Kawen', '620589734', 'Savings ', '', 'Transfer', 'Success ', '14', 'ALLYSSA BINTI ABDULLAH', '030524102525', '2000', '0 19-644 827', '506927431', '2023-09-12 03:18:43.589369', 'Saraan Tua', 'AINA ATIKAH BINTI MOHD AZHAR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  ADD PRIMARY KEY (`acctype_id`);

--
-- Indexes for table `ib_admin`
--
ALTER TABLE `ib_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `ib_clients`
--
ALTER TABLE `ib_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `ib_staff`
--
ALTER TABLE `ib_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  ADD PRIMARY KEY (`tr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  MODIFY `acctype_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ib_admin`
--
ALTER TABLE `ib_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  MODIFY `account_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ib_clients`
--
ALTER TABLE `ib_clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  MODIFY `notification_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ib_staff`
--
ALTER TABLE `ib_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  MODIFY `tr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
