-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 08:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(8, 'kavi', 'admin@admin.in', '1234'),
(9, 'admin', 'kavenesh@gmail.com', '2ccf4cea02cc3bc6ee4cf1ce1d7a742f9851f7287fbad9f867a0e7d685eef6cc38d1ceda5c953aaed434bca9a406168142948c3e513ab920275b8b4b7ee76c887bd5f0d3e80faa927d966531b82c6c69312868d9a25270ff0cc16261b9dd2ad8af49e270'),
(10, 'admin', 'admin@admin.in', '0cac309b9626d11dc28fb0dc11dfc0064d0e8c3f72352c83c735cb0b4ccc86795f394298bf6e1f2e7a841cd57e6cf9ec05bda1266451f54df219b348ba2c4161f63a7dbe564902c5c76bbd68cb100a94f6a7345d3f6638b2437f557f286e49ed545955da5b'),
(11, 'admin', 'admin@admin.com', '05865e68ea5ee19cf0ecaa6de7a7cbc3997dcfc9a6ac2039e6a65c1ee9db9395b54c2eb7b251640623ad77b98dd6bf3c01b56364f4aa4a5b3eaef085ec7c5ebecb29db4137dc14eff73d83e1332b705bde60c7265c3d1ef5e17583e5df5dfee95b5e25ed');

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(16) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `roomtype` varchar(255) NOT NULL,
  `guest` int(10) NOT NULL,
  `days` int(30) NOT NULL,
  `checkindate` date NOT NULL,
  `checkoutdate` date NOT NULL,
  `payment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust`
--

INSERT INTO `cust` (`id`, `name`, `mname`, `lname`, `email`, `mobile`, `nationality`, `location`, `category`, `roomtype`, `guest`, `days`, `checkindate`, `checkoutdate`, `payment`) VALUES
(0, 'vv', 'vkkv', 'c', 'admin@admin.com', 2147483647, 'a', 'x', 'Deluxe', 'Premium', 3, 2, '2022-05-22', '2022-05-29', 'Cash'),
(0, 'vvnn', 'vkkv', 'c', 'admin@admin.com', 98765432, 'a', 'x', 'Deluxe', 'Premium', 4, 4, '2022-05-22', '2022-05-29', 'Card'),
(0, 'Dharani', '', 'R', 'dharani0234@gmail.com', 2545, 'Indian', 'Erode', 'Luxury', 'Standard', 1, 1, '2022-05-22', '2022-05-22', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `checkindate` date NOT NULL,
  `checkoutdate` date NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `city`, `state`, `zip`, `email`, `checkindate`, `checkoutdate`, `room`) VALUES
(0, 'kavi', 'ghdggf', 'xcc', 'dsff', 123, 'kavenesh@gmail.com', '2022-05-22', '2022-05-22', 1),
(0, 'dharani', 'abcd', 'erode', 'tamil nadu', 638004, 'dharani0234@gmail.com', '2022-05-22', '2022-05-24', 0),
(0, 'vv vkkv c', 'vvfsvdsf', 'ffaf', '4545', 55, 'admin@admin.com', '2022-05-22', '2022-05-29', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(8, 'kavi', 'kavenesh@gmail.com', '1676e910d4c3edb76177702fdaae42795e441289ea2c44a0522920c057a8555d4005edaa81dc7759e3b63fc917772f71bf9e929042515ade60eee91fc2df9aa7d83fc2fd5d6318371633046258dc263c2ba72f64c7c7c269cf61c6b879d521d32c6d7d3fb5a6', '2022-05-16 05:14:13', '2022-05-16 05:14:13'),
(10, 'kavi', 'kavenesh@gmail.com', 'c80f89162471da421b64f6bf715b8fd423c3323366f40357b036b3976075694fa1324075796ee4674149668103d06c8ed96b6237c80eb0673660949270d7f8d5cccb4669e4c0bb92ea2b972c4ccdb27deabe2956ef55df4f75b01ab7bd3de029e854bf4614', '2022-05-16 16:29:14', '2022-05-16 16:29:14'),
(11, 'kavi', 'kavenesh@gmail.com', '11854548076a493dad5e06d09b346ff3ee4e2558d513afe6b669ad15813e3b2405d9675da7b9420dc17c8eea9c1bf13330f59989614147ba71e99a5141783f601dc81f3ab39bc06bb1cfe182c736ee030f65749f3aeb8a5b250130f7e60f506dc0436348', '2022-05-16 16:30:33', '2022-05-16 16:30:33'),
(12, 'kavi', 'kav@gmail.com', 'a97999ac98dbe27a0bb9595fbfd267650df79104a2f93fa326124aa68e90dbf69ff138380d296433126d269f4e9272d33aa2df232afb329a1b937da9906eb6ee497fd76a326c7bae9968ead0d216b8f6dcafa22799fa8f0cfa293c2e47d9bd6782011277', '2022-05-16 16:31:20', '2022-05-16 16:31:20'),
(13, 'kavi', 'kavenesh@gmail.com', 'e317de09d31258ea122ae651327c47f42e7b46e272cbdd76a27082c6567ea0e8acb960553a7b4309b8b4fb389ae9c90af50cc94e4a75cb0847ad80f24ca523df766ba480792d0effb468ead9ece318f3dde11517d702057cb27082645b7f0d89d05b0023', '2022-05-16 19:04:32', '2022-05-16 19:04:32'),
(14, 'dharani', 'dharani@gmail.com', '929dec747058e74f61390b6c56409975e2301c790da8b4a232ea4495f61bbe8880f1205f09248f485086dac11c23d381deee9f27b17b43dd5f03de9b4aa6ce7580dc03d24d812a5cbe86e57c1ff30fc406866afa58e341939744578ed01e9da4a32d7a38a9da94', '2022-05-16 19:14:53', '2022-05-16 19:14:53'),
(17, 'ak', 'ak@gmail.com', '75ff2ec50d685ebb28f3e193bc58683601234a8e45cb0fe17473224d54ba73e508a5eaf02ac32cd211f4118954d6be8507772573eed96b2895c61b3fca8bca5ebcfa202207073bc33015f0f7ce7650494c1ba528de38c4f253835415b8ffed58b5140fb5', '2022-05-17 15:12:49', '2022-05-17 15:12:49'),
(18, 'dharu', 'dharu@gmail.com', 'f32822597c217ef7e9914a02131029c4a3c627341d3746281b4470db145c6d05fb5cceacb074ca43dd12cb91eebdaad781d914e838419a75b91780f53eb81a71a1c27e8dce6653ff9b0486537d73e8d2d3d690c126baebe8a2ceb0b715f14caff09f4fa8', '2022-05-17 15:17:17', '2022-05-17 15:17:17'),
(19, 'jana', 'jana@gmail.com', '903f1e0f3c813bc75e38f67f9fa985eac7e2ed720d4d0449345c43faeb21c44279284bae90a3ca99138bc09d1bf7ac31709568458ed50cb24a28e2254d194b604efc1e1c29d045d0b208da623cabab813d5412ce1bb43503f229b5bbd974243b1376b958', '2022-05-18 13:23:40', '2022-05-18 13:23:40'),
(20, 'prathap', 'prathap@gmail.com', 'ec5ef9f3787727cd2a58793cd6546a8449bcc5aa739706b7e6184d596f5bc5dd4c99cec63d06279feb31c1a7e441fe855d2df67028b595dd4e88c9ba5be1fdef6163f77a30284a86243c481a5f1bc8506a8325eb7b16522684c95f5ae084a21d356f9a3a', '2022-05-18 18:23:27', '2022-05-18 18:23:27'),
(21, 'vikey', 'v@gmail.com', 'ac548727420cf4d2b939795b7aee5fca31ef15b90cdef7ec15ec8a892ff6c13d24f7b58ec64c29f679ec8d185e2f9101c7f3ae6f08b54cd4c3ecb832d0bd74f5aa2076423b5fca73e6b0dd3e6f57e9d5af4ea55b0632cafdfbf923e4a872394e85406e54', '2022-05-21 15:36:11', '2022-05-21 15:36:11'),
(22, 'kavi', 'kavi@gmail.com', '17db9766ef698aa6bf7e6a21c8a9fec24263278e76b8ed886c2084ef437983a242428ab9fd1f5c1ac044c72c2284bff8c3ec2b8e567f21f1049319600b9d16daf2fcfc9d12f576e0e5aee0c73bb4890016a83a3320f73bc9a9df93e22d7ed48d52a9139f', '2022-05-23 14:06:19', '2022-05-23 14:06:19'),
(23, 'Dharani', 'dharu@gmail.com', '0ba3c926debee0e04093805fc13ee4fa4c29ce1ed3384fd350592f58ce639f47bda2073a5ad1d3fb2932ffcb701077cf9c14875b1914f6870fbf6297ef5ff29efc00081e9a0d508e1add2b9fe7435bbfb9abfd72799de7b20b90bb34594a6c0b7a59d21e', '2022-05-23 14:33:04', '2022-05-23 14:33:04'),
(24, 'Dharani', 'dhara@gmail.com', '23bd732ff1f9658626ddbd40efcea27e995c0fc1e0723ddca024b3f99e95d5982615ec20968b438e2504c1736dc6c2c7a255c83be3b8f3edef91389b9b4914695ef9a786bd0a72e92a08d80dae3b7ced78491756703d3113be0c4481f103c44dc87cfea8', '2022-05-23 14:34:54', '2022-05-23 14:34:54'),
(25, 'Dharani', 'dhara@gmail.com', 'e4c6f38472f66ecdfc8b8dd602c463d58b54fef35a47c69ad0d358aeafbf3c2c6420921fc9bcda88d0957532d69d124bf95b972aaefeebaed49d1572e0c1ca8414dcf75275186c255943de779119f29ed033eb6559b0b0303f750e111504076a6318f8e6', '2022-05-23 14:36:09', '2022-05-23 14:36:09'),
(26, 'Dharani', 'dharani0234@gmail.com', 'c260bfad25825b8fbdc36c6443c5e14ea5e58aada02cf7d12a5c8a90ccb315a18771626b1f53858a0275f3f04e45b4e18da8897cba59f78877dfc9e65aa11b257fc913d59f28ab5392d4e46cb3151d75033c4472217c5d110687ea43ca459839fbd4e440', '2022-05-23 14:38:40', '2022-05-23 14:38:40'),
(27, 'ak', 'ak@gmail.com', '9e0dfc82e64850400d11717387f35a28196007f5be229307362961d143b43985667993fd4e03dd2e25b3a704d563837d663ea4ed9e50053257ca49f69716cb92134c7bbf48540418a3bed2dbe2d552bd522c9844fefc3fe6c780872613d129a01a183899', '2022-05-23 15:00:01', '2022-05-23 15:00:01'),
(28, 'kavi', 'kavenesh@gmail.com', '6c78f20a347fe5b59f2fc2340659b66eede00caf58a71b58105ca09e42480114ad5010307628b3e592ad2e29a27e4d875fe08c28338043a348976d9e06b8b7c5bf4315ec2c56712acb2da1823ef689c6548ae49535d645ee48f04aef8e741218e609d083', '2022-05-24 09:57:20', '2022-05-24 09:57:20'),
(29, 'kavi', 'k@gmail.com', '5b3bd6156f237ea714245c214ff5d300723eb1a3f4c26f673b776c9e051db93307b9e60f3e0c99ef3232c5eb75238d4f110b1b3d77660d12c969e75e4710cf1ee298de2de6d1e4ab5be841eb4c36b5fdc95b1aec597526a7ba3e2f7484b3a07dbed86c9d', '2022-05-24 09:58:07', '2022-05-24 09:58:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
