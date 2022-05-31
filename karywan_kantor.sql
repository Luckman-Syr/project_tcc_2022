-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 05:34 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karywan_kantor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`) VALUES
('Ahmad', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Ahmad Safrizal', 'Ahmad@gmail.com', '089089089089'),
('Busroni', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Busroni Ahmad Safrizal', 'busroni10@gmail.com', '0895366557609');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `kode_id` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_tlp` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `gaji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`kode_id`, `nama`, `no_tlp`, `email`, `tgl_lahir`, `alamat`, `status`, `gaji`) VALUES
('BUS', 'd463411fd1bae7e6Wnc2b2p4MW10NlpIcEZNaDVJbktOUWpBNUdmbng3Vk5EbmdWaG1HRy9lND0=', 'a20773e8b6c9194fSnpWNjltWVFNMkVyTndWM3dSLzFJdz09', 'd4c6081c68fd5ee1NDdkRE9FK0c2Q3VqNWdDanZnNXo4YXBiYXF5K3JIa3RrS1hiL3E2aTM3dz0=', '54fd812eb3feaecfOW5DY1hRLzkwZ3pCSStVdkZSWUpyZz09', '82d5acfc59c894cdWkppbXUwSkNwVCtZcVNMeG9vN3J1QT09', 'e0c372065ef0b673M3dNdHM1cTZPbkZORlNrS1Q4ZE1ZQT09', '7c7078e92195575dS29GYk53eE96UDZLeGd5bE9UOWxQZz09'),
('JOK', '7a9efa400d6a1081Nk9hRlpFVVBlYTJWM1k5UWp2ZnZIQT09', 'e8cbdf8f7396bae8cmdPNXRHZ25sMFVSOGd5azVPdkFLUT09', '4779f86abf75163fQzIyNGNwdU5iR3llSHdmbkYwRVNrQT09', '8e2ea97058321c68Zll2NVAxVlhRNG5MMFc3SlJTVUk2dz09', '65717187e849c2edeUw3ejFzbE9MQ2NXM0VjVkcvQitkbGZub3BDQnpmV0t6OXhiWFVLSTh3UT0=', '8f3d7b0dc3bc656cK3FFNTRFWkhrM2EvTVFLSFFnQVA0dz09', '8c0ca8db891cdda2OVBmc1dveCtYRDBzMXNjSEovdEtJUT09'),
('LUK', '4cd59278ba0e6911WnlLeVl2Zmh6b0ticVRBdml0N29rUT09', '6f82fe4d6261849aTjFHZDQ0Z3pRa2g4U0lqWW8rVDVRQT09', 'd1339ba43edc19c3allFN2F2R0ZWNnVzSW1iVXB2b2JDeEZZQTJ0ekhyUHhLQ0dPNjhtQjFPaz0=', 'f244d87eabcf5942VGhHRHN4M3pJNkNybzNockFWbEE5Zz09', '32ea4dad8ca99f18RWJYbU1ldzdsNW9tbWtyVzhXVGV4Zz09', '8819e267b363f018UVFQUEFTNlh2NVRLS09vVEpDekNjQT09', 'a06f83090a885e66N3lRTVdTcGVnNjI5MkRyZGRLOTlPZz09'),
('RIF', '537be60d63dedb83dUdaS0VrWndTTHJiMG52d2J6U3k0dz09', '8242f3870f0c4301SzJuV1Rqa3AzSzdQQmZSKzlpeG5aZz09', '461889556872168fcGNZQm95UHllNDhHMm1oSWR2bkVUbFM1UU1ESTdBK1NkTFFHZ1ZpcTlCMD0=', '11f0f8ecfc0628c0cXRMaTdzV1lvOHJHL1JCOEhiYS8yQT09', '86beb4c96d493d53eGFaZmN2Um5SZ21UQkFTOE1KNE1jbzd3WUR6ZmY3a0daYnJYZEhHTWJjOD0=', '485f6c5d6e1f1655Tkx5WXE1cDJtcnNMVDVZRnpHTlBPUT09', 'ed3ce2d5b046995fZUNBUXF0YVdEUmNxeUJ4bERBRm55Zz09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`kode_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
