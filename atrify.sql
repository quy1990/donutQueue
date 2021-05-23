-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: database
-- Thời gian đã tạo: Th5 23, 2021 lúc 02:14 PM
-- Phiên bản máy phục vụ: 8.0.25
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `atrify`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `client_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `quantity`, `created_date`) VALUES
(0, 0, 1, '2021-05-20 20:37:03'),
(1, 1, 1, '2021-05-16 10:35:56'),
(2, 2, 1, '2021-05-16 10:36:04'),
(3, 3, 1, '2021-05-16 10:37:50'),
(4, 4, 1, '2021-05-16 10:43:06'),
(5, 5, 1, '2021-05-16 11:19:56'),
(6, 6, 1, '2021-05-16 11:21:58'),
(7, 7, 1, '2021-05-16 12:19:55'),
(8, 8, 1, '2021-05-16 12:20:00'),
(9, 9, 1, '2021-05-16 12:21:15'),
(10, 10, 1, '2021-05-22 21:42:57'),
(11, 11, 1, '2021-05-23 13:44:47'),

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `image_url`, `name`) VALUES
(145, 'https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/23420/image/1462221519/600.jpg', 'CREMEFRAICHE'),
(146, 'https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/213942/image/1560262700/600.jpg', 'PEPSI MAX'),
(147, 'https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/201003/image/1553075410/600.jpg', 'CARLSBERG'),
(148, 'https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/400176/image/1569941273/600.jpg', 'HK. OKSEKÃ˜D 15-18'),
(149, 'https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/212652/image/1549284118/600.jpg', 'COCA COLA'),
(150, 'https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/61250/image/1534406146/600.jpg', 'BURGERBOLLER');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD UNIQUE KEY `client_id` (`id`),
  ADD UNIQUE KEY `client_id_2` (`client_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
