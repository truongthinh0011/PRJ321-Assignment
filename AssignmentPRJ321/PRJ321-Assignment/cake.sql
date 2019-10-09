-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2019 lúc 05:21 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cake`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accept_comment`
--

CREATE TABLE `accept_comment` (
  `Id_AccCmt` int(50) NOT NULL,
  `Date_AccCmt` datetime NOT NULL,
  `Id_E` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accept_post`
--

CREATE TABLE `accept_post` (
  `Id_AccPost` int(50) NOT NULL,
  `Date_AccPost` datetime NOT NULL,
  `Id_E` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cake`
--

CREATE TABLE `cake` (
  `Id_Cake` int(50) NOT NULL,
  `Name_Cake` varchar(250) NOT NULL,
  `Decription` text NOT NULL,
  `Image_Cake` varchar(250) NOT NULL,
  `Status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `Id_Cmt` int(50) NOT NULL,
  `Content_Cmt` text NOT NULL,
  `Date_Cmt` datetime NOT NULL,
  `Email_Cmt` varchar(250) NOT NULL,
  `Status` int(50) NOT NULL,
  `Id_Post` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `Id_E` int(50) NOT NULL,
  `Username_E` varchar(250) NOT NULL,
  `PasswordEmployee` varchar(255) NOT NULL,
  `FullName_E` varchar(250) NOT NULL,
  `Phone_E` varchar(250) NOT NULL,
  `Address_E` varchar(250) NOT NULL,
  `Email_E` varchar(250) NOT NULL,
  `Status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `Id_Img` int(50) NOT NULL,
  `Link_Img` int(50) NOT NULL,
  `Status` int(50) NOT NULL,
  `Id_Cake` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `Id_Post` int(50) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `Link_Image` varchar(250) NOT NULL,
  `Short_Content` varchar(250) NOT NULL,
  `Content_Post` text NOT NULL,
  `Status` int(250) NOT NULL,
  `Id_E` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accept_comment`
--
ALTER TABLE `accept_comment`
  ADD PRIMARY KEY (`Id_AccCmt`);

--
-- Chỉ mục cho bảng `accept_post`
--
ALTER TABLE `accept_post`
  ADD PRIMARY KEY (`Id_AccPost`);

--
-- Chỉ mục cho bảng `cake`
--
ALTER TABLE `cake`
  ADD PRIMARY KEY (`Id_Cake`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id_Cmt`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id_E`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`Id_Img`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`Id_Post`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accept_comment`
--
ALTER TABLE `accept_comment`
  MODIFY `Id_AccCmt` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `accept_post`
--
ALTER TABLE `accept_post`
  MODIFY `Id_AccPost` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cake`
--
ALTER TABLE `cake`
  MODIFY `Id_Cake` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `Id_Cmt` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `Id_E` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `Id_Img` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `Id_Post` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
