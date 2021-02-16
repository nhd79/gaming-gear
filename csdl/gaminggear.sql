-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 20, 2021 lúc 06:34 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gaminggear`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdonhang`
--

INSERT INTO `ctdonhang` (`order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(11, 5, 1, 1350000, 1350000),
(11, 6, 1, 1390000, 1390000),
(12, 3, 1, 990000, 990000),
(12, 5, 1, 1350000, 1350000),
(12, 6, 1, 1390000, 1390000),
(13, 1, 2, 490000, 980000),
(13, 2, 1, 1090000, 1090000),
(14, 1, 1, 490000, 490000),
(14, 2, 1, 1090000, 1090000),
(15, 19, 1, 350000, 350000),
(16, 10, 1, 430000, 430000),
(17, 28, 4, 4550000, 18200000),
(18, 1, 1, 490000, 490000),
(19, 35, 1, 10990000, 10990000),
(19, 28, 4, 4550000, 18200000),
(19, 20, 1, 690000, 690000),
(20, 2, 4, 1090000, 4360000),
(21, 6, 1, 1390000, 1390000),
(21, 2, 1, 1090000, 1090000),
(22, 3, 1, 990000, 990000),
(23, 3, 1, 990000, 990000),
(23, 1, 1, 490000, 490000),
(24, 36, 3, 18990000, 56970000),
(25, 1, 1, 490000, 490000),
(25, 28, 1, 4550000, 4550000),
(26, 1, 3, 490000, 1470000),
(27, 2, 2, 1090000, 2180000),
(28, 1, 1, 490000, 490000),
(29, 2, 1, 1090000, 1090000),
(30, 1, 1, 490000, 490000),
(30, 36, 2, 18990000, 37980000),
(31, 6, 1, 1390000, 1390000),
(31, 26, 2, 5990000, 11980000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(1, 'Bàn phím'),
(2, 'Chuột'),
(3, 'Tai nghe'),
(4, 'Ghế gaming');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `date_created`, `customer_id`, `full_name`, `address`, `email`, `phone`, `status`) VALUES
(11, '2021-01-09', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(12, '2021-01-09', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(13, '2021-01-09', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(14, '2021-01-09', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(15, '2021-01-09', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(16, '2021-01-09', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(17, '2021-01-09', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(18, '2021-01-09', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(19, '2021-01-10', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(20, '2021-01-12', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(21, '2021-01-13', 8, 'nguyen duy 123', '12231', 'duy@gmail.com', '3123123', 1),
(22, '2021-01-13', 8, 'nguyen duy 123', '12231', 'duy@gmail.com', '3123123', 1),
(23, '2021-01-13', 0, 'Nguyen Duy', 'UIT', 'hoangduy791999@gmail.com', '1203802199', 1),
(24, '2021-01-13', 8, 'nguyen duy 123456', '12231', 'duy@gmail.com', '3123123', 1),
(25, '2021-01-13', 8, 'nguyen duy 123456', '12231', 'duy@gmail.com', '3123123', 1),
(26, '2021-01-13', 0, 'Nguyen Duy', 'UIT', 'hoangduy791999@gmail.com', '1203802199', 1),
(27, '2021-01-16', 15, 'Nguyen Duy', 'UIT', 'hoangduy791999@gmail.com', '1203802199', 1),
(28, '2021-01-16', 11, 'Admin', 'abc', 'admin@gmail.com', '123456789', 1),
(31, '2021-01-16', 11, 'Nguyen Duy', 'UIT', 'hoangduy791999@gmail.com', '1203802199', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `user_name` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `user_name`, `password`, `full_name`, `address`, `gender`, `date_of_birth`, `phone`, `email`, `avatar`) VALUES
(8, 'duy', '123', 'nguyen duy 123456', '12231', NULL, NULL, '3123123', 'duy@gmail.com', 'user.png'),
(9, 'duy1', '123', 'nguyen duy', '33333', NULL, NULL, '55555', 'hoangduy791999@gmail.com', 'user.png'),
(10, 'duy2', '123', 'Nguyen Duy', 'UIT', NULL, NULL, '1203802199', 'hoangduy791999@gmail.com', 'user.png'),
(11, 'admin', '123', 'Admin', 'abc', NULL, NULL, '123456789', 'admin@gmail.com', 'user.png'),
(12, 'nhd', '123', 'Nguyen Duy haha', 'UIT 123', NULL, NULL, '1203802199', 'hoangduy791999@gmail.com', 'user.png'),
(14, 'duy5', '123', 'Nguyen Duy123', 'UIT', NULL, NULL, '1203802199', 'hoangduy791999@gmail.com', 'user.png'),
(15, 'duy6', '123', 'Nguyen Duy', 'UIT', NULL, NULL, '1203802199', 'hoangduy791999@gmail.com', 'user.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `star` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `category_id`, `name`, `price`, `image`, `description`, `description2`, `description3`, `description4`, `description5`, `star`) VALUES
(1, 1, 'Bàn phím Rapoo V500L Rainbow\r\n', 490000, 'Rapoo V500L Rainbow.jpg', 'Nhà Sản Xuất : Rapoo', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 24 tháng', 'Switch : Rapoo Blue/ Red', NULL, '&#9733; &#9733; &#9733; &#9734; &#9734;'),
(2, 1, 'Bàn phím HyperX Alloy Core RGB', 1090000, 'HyperX Alloy Core RGB.png', 'Nhà Sản Xuất : HyperX Kingston', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 24 tháng', '', NULL, '&#9733; &#9733; &#9733; &#9734; &#9734;'),
(3, 1, 'Bàn phím Cougar Attack X3', 990000, 'Cougar Attack X3.jpg', 'Nhà Sản Xuất : Cougar', 'Tình Trạng: Mới 100% - Fullbox', 'Bảo Hành : 24 tháng', 'Switch : Cherry MX Blue ', NULL, '&#9733; &#9733; &#9733; &#9734; &#9734;'),
(4, 1, 'Bàn phím Akko 3087 v2 One Piece – Chopper', 1350000, 'Akko 3087 v2 One Piece – Chopper.jpg', 'Hãng sản xuất: Akko', 'Tình trạng: Mới 100%', 'Bảo hành: 12 Tháng', 'Switch: Akko switch (Blue/Orange/Pink)', NULL, '&#9733; &#9733; &#9733; &#9733; &#9734;'),
(5, 1, 'Bàn phím AKKO 3087 Dragon Ball Z – Goku', 1350000, 'AKKO 3087 Dragon Ball Z – Goku.jpg', 'Hãng sản xuất: Akko', 'Tình trạng: Mới 100%', 'Bảo hành: 12 Tháng', 'Switch: Akko switch (Blue/Orange/Pink)', NULL, '&#9733; &#9733; &#9733; &#9733; &#9734;'),
(6, 1, 'Bàn phím Akko 3108 Honkai Impact 3rd – Seele Vollerei', 1390000, 'Akko 3108 Honkai Impact 3rd – Seele Vollerei.jpg', 'Hãng sản xuất: Akko', 'Tình trạng: Mới 100%', 'Bảo hành: 12 Tháng', 'Switch: Akko switch (Blue/Orange/Pink)', NULL, '&#9733; &#9733; &#9733; &#9733; &#9734;'),
(7, 1, 'Bàn phím Leopold FC660MPD Sweden White Case', 2750000, 'Leopold FC660MPD Sweden White Case.jpg', 'Nhà sản xuất : Leopold', 'Tình trạng : Mới - 100%', 'Bảo hành : 24 tháng', 'Switch : Brown/ Silent Red', NULL, '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(8, 1, 'Bàn phím Leopold FC660M PD White Grey', 2750000, 'Leopold FC660M PD White Grey.jpg', 'Nhà sản xuất : Leopold', 'Tình trạng : Mới - 100%', 'Bảo hành : 24 tháng', 'Cherry MX Red', NULL, '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(9, 1, 'Bàn phím Asus ROG Strix Scope PBT', 2990000, 'Asus ROG Strix Scope PBT.png', 'Nhà sản xuất : Asus ROG', 'Tình trạng : Mới - 100%', 'Bảo hành : 36 tháng', '', NULL, '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(10, 2, 'Chuột gaming Corsair Harpoon Pro RGB', 430000, 'Corsair Harpoon Pro RGB.png', 'Nhà Sản Xuất: Corsair', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành: 24 Tháng', 'Led: RGB', NULL, '&#9733; &#9733; &#9733; &#9734; &#9734;'),
(11, 2, 'Chuột Rapoo VT200', 440000, 'Rapoo VT200.jpg', 'Nhà Sản Xuất: Rapoo', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 24 tháng', 'Led: RGB', NULL, '&#9733; &#9733; &#9733; &#9734; &#9734;'),
(12, 2, 'Chuột gaming Asus TUF M3', 540000, 'Asus TUF M3.jpg', 'Nhà Sản Xuất: ASUS', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành: 24 Tháng', '', NULL, '&#9733; &#9733; &#9733; &#9734; &#9734;'),
(13, 2, 'Chuột game Akko LW325 Blue (Lightweight)', 590000, 'Akko LW325 Blue (Lightweight).jpg', 'Hãng sản xuất: Akko', 'Tình Trạng : Mới 100%', 'Bảo Hành: 12 Tháng', 'Màu Sắc:  Black/Pink/Blue', NULL, '&#9733; &#9733; &#9733; &#9733; &#9734;'),
(14, 2, 'Chuột game Akko LW325 Pink (Lightweight)', 590000, 'Akko LW325 Pink (Lightweight).jpg', 'Hãng sản xuất: Akko', 'Tình Trạng : Mới 100%', 'Bảo Hành: 12 Tháng', 'Màu Sắc:  Black/Pink/Blue', NULL, '&#9733; &#9733; &#9733; &#9733; &#9734;'),
(15, 2, 'Chuột game Akko LW325 Black (Lightweight)', 590000, 'Akko LW325 Black (Lightweight).jpg', 'Hãng sản xuất: Akko', 'Tình Trạng : Mới 100%', 'Bảo Hành: 12 Tháng', 'Màu Sắc:  Black/Pink/Blue', NULL, '&#9733; &#9733; &#9733; &#9733; &#9734;'),
(16, 2, 'Chuột Logitech G502 Hero', 990000, 'Logitech G502 Hero.png', 'Nhà Sản Xuất: Logitech', 'Tình Trạng : Mới 100%', 'Bảo Hành: 24 Tháng', 'Led: RGB', NULL, '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(17, 2, 'Chuột Logitech G604 Hero Lightspeed Wireless', 1700000, 'Logitech G604 Hero Lightspeed Wireless.jpg', 'Nhà Sản Xuất: Logitech', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành: 24 Tháng', '', NULL, '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(18, 2, 'Chuột Steelseries Rival 650', 2590000, 'Steelseries Rival 650.jpg', 'Nhà Sản Xuất: Steelseries', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành: 12 Tháng', 'Led : RGB 16.8 triệu màu', NULL, '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(19, 3, 'Tai nghe DareU EH416 RGB', 350000, 'DareU EH416 RGB.png', 'Nhà Sản Xuất : Dare-U', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 12 tháng', 'Màu sắc: Đen', 'Led: RGB', '&#9733; &#9733; &#9733; &#9734; &#9734;'),
(20, 3, 'Tai nghe Rapoo VH200 RGB', 690000, 'Rapoo VH200 RGB.png', 'Nhà Sản Xuất : Rapoo', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 24 tháng', 'Led: RGB', 'Port: 3.5MM Audio port, Micphone Port,USB Port', '&#9733; &#9733; &#9733; &#9734; &#9734;'),
(21, 3, 'MSI IMMERSE GH70', 2490000, 'MSI IMMERSE GH70.jpg', 'Nhà Sản Xuất : MSI ', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 24 tháng', 'Đèn nền : 16,8 triệu màu', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(22, 3, 'Asus ROG Strix 7.1', 3990000, 'Asus ROG Strix 7.1.jpg', 'Nhà Sản Xuất : Asus', 'Tình Trạng : Mới 100%', 'Bảo Hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(23, 3, 'Razer Nari Ultimate', 4490000, 'Razer Nari Ultimate.png', 'Nhà Sản Xuất : Razer', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(24, 3, 'Razer Nari Ultimate – Overwatch Lucio Edition', 4390000, 'Razer Nari Ultimate – Overwatch Lucio Edition.png', 'Nhà Sản Xuất : Razer ', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(25, 3, 'Tai nghe SteelSeries Arctis 7 Black Edition - 2019 Edition', 3990000, 'SteelSeries Arctis 7 Black Edition - 2019 Edition.jpg', 'Nhà Sản Xuất : Steelseries ', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 12 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(26, 3, 'Tai nghe SteelSeries Arctis Pro + GameDAC White Edition', 5990000, 'SteelSeries Arctis Pro + GameDAC White Edition.jpg', 'Nhà Sản Xuất : Steelseries', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 12 tháng', 'Led: 16.8 triệu màu', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(27, 3, 'Tai nghe SteelSeries Arctis Pro Wireless', 8490000, 'SteelSeries Arctis Pro Wireless.png', 'Nhà Sản Xuất : Steelseries', 'Tình Trạng : Mới 100% - Fullbox', 'Bảo Hành : 12 tháng', 'Led: 16.8 triệu màu', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(28, 4, 'Ghế Cougar Armor K Black', 4550000, 'Cougar Armor K Black.png', 'Nhà sản xuất : Cougar', 'Tình trạng : Mới 100%', 'Bảo hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9734;'),
(29, 4, 'Ghế Anda Seat Assassin V2 Black/White/Blue', 4690000, 'Anda Seat Assassin V2.png', 'Nhà sản xuất : Anda Seat', 'Tình trạng : Mới 100%', 'Bảo hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9734;'),
(30, 4, 'Ghế Gamer AKRacing Octane K702B Black Red', 5990000, 'Gamer AKRacing Octane K702B.jpg', 'Nhà sản xuất : AKRacing', 'Tình trạng : Mới 100%', 'Bảo hành : 24 tháng', 'Màu sắc: Đen/Đen đỏ', '', '&#9733; &#9733; &#9733; &#9733; &#9734;'),
(31, 4, 'Ghế DXRACER - Drifting Series OH/DJ133/NR', 6490000, 'XRACER - Drifting Series.jpg', 'Nhà sản xuất : DXRacer', 'Tình trạng : Mới 100%', 'Bảo hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(32, 4, 'Ghế DXRACER Racing Series RV131 / NR', 6990000, 'DXRACER Racing Series.jpg', 'Nhà sản xuất : DXRacer', 'Tình trạng : Mới 100%', 'Bảo hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(33, 4, 'Ghế Nitro Concepts Radiant White (S300EX-WB)', 6990000, 'Nitro Concepts Radiant White.jpg', 'Nhà sản xuất : Nitro Concepts', 'Tình trạng : Mới 100%', 'Bảo hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(34, 4, 'Ghế Gamer AKRacing Premium Camo', 7450000, 'AKRacing Premium Camo.jpg', 'Nhà sản xuất : AKRacing', 'Tình trạng : Mới 100%', 'Bảo hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(35, 4, 'Ghế Gamer AKRacing Special Series K700T Arctica', 10990000, 'AKRacing Special Series K700T Arctica.jpg', 'Nhà sản xuất : AKRacing', 'Tình trạng : Mới 100%', 'Bảo hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(36, 4, 'Ghế Gaming Noble Chair - Epic Series MERCEDES-AMG Edition', 18990000, 'Noble Chair - Epic Series MERCEDES-AMG Edition.png', 'Nhà sản xuất : Noble Chair', 'Tình trạng : Mới 100%', 'Bảo hành : 24 tháng', '', '', '&#9733; &#9733; &#9733; &#9733; &#9733;'),
(48, 1, 'Chuột Corsair M65 RGB Elite - White', 1490000, 'Ảnh1.jpg', 'Nhà sản xuất : Corsair ', 'Tình trạng : Fullbox - 100%', 'Bảo hành : 24 tháng ', 'Led : RGB', '', '&#9733;&#9733;&#9733;&#9734;&#9734;');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
