-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2019 lúc 11:33 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `muahang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang`
--

CREATE TABLE `hang` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hang`
--

INSERT INTO `hang` (`id`, `ten`, `gia`) VALUES
(1, 'banh', 500),
(2, 'keo', 200);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tien`
--

CREATE TABLE `tien` (
  `id` int(11) NOT NULL,
  `tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tien`
--

INSERT INTO `tien` (`id`, `tien`) VALUES
(1, 320000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tui`
--

CREATE TABLE `tui` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tui`
--

INSERT INTO `tui` (`id`, `ten`, `sl`) VALUES
(1, 'banh', 152),
(2, 'keo', 32);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hang`
--
ALTER TABLE `hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tien`
--
ALTER TABLE `tien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tui`
--
ALTER TABLE `tui`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hang`
--
ALTER TABLE `hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tien`
--
ALTER TABLE `tien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tui`
--
ALTER TABLE `tui`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
