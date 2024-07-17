-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 17, 2024 lúc 03:45 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kpis`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_login`
--

CREATE TABLE `admin_login` (
  `id_admin` int(11) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_login`
--

INSERT INTO `admin_login` (`id_admin`, `username_admin`, `password_admin`) VALUES
(2, 'admin2', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` int(11) NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Date_Of_Brith` date NOT NULL,
  `ID_Card` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`Employee_ID`, `Full_Name`, `Gender`, `Date_Of_Brith`, `ID_Card`, `Email`, `Phone`, `Address`) VALUES
(1, 'Huỳnh Hữu Hiếu', 'Nam', '2002-09-02', '084202002086', 'huynhhuuhieu@gmail.com', '0912969120', 'Trà Vinh'),
(2, 'Huỳnh Gia Bảo', 'Nam', '2002-03-26', '084202002087', 'huynhgiabao@gmail.com', '0912969123', 'Bình Dương'),
(7, 'Hà Minh Chiến', 'Nam', '2002-06-10', '084202002085', 'haminhchien@gmail.com', '0912961923', 'Vĩnh Long'),
(8, 'Lê Đức Nhuận', 'Nam', '2002-12-27', '084202002088', 'leducnhuan@gmail.com', '0912969124', 'Trà Vinh'),
(10, 'Đặng Kim Bắc', 'Nam', '2002-04-23', '084202002089', 'dangkimbac@gmail.com', '0912969125', 'Trà Vinh'),
(12, 'Huỳnh Trần Tuấn Anh', 'Nam', '2002-03-12', '084202002000', 'huynhtrantuananh@gmail.com', '0912969127', 'Trà Vinh'),
(13, 'Mạch Khánh Duy', 'Nam', '2002-03-23', '084202002122', 'machkhachduy@gmail.com', '0912969127', 'Trà Vinh'),
(14, 'Trầm Hữu Lợi', 'Nam', '2002-03-12', '08420200333', 'tramhuuloi@gmail.com', '0912961111', 'Trà Vinh'),
(15, 'Huỳnh Ngọc Bảo Như', 'Nữ', '2006-02-03', '084202004444', 'huynhngocbaonhu@gmail.com', '0912969133', 'Trà Vinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluation`
--

CREATE TABLE `evaluation` (
  `evaluation_ID` int(11) NOT NULL,
  `employee_ID` int(11) NOT NULL,
  `KPI_ID` int(11) NOT NULL,
  `Period_ID` int(11) NOT NULL,
  `completed` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `evaluation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `evaluation`
--

INSERT INTO `evaluation` (`evaluation_ID`, `employee_ID`, `KPI_ID`, `Period_ID`, `completed`, `status`, `evaluation_date`) VALUES
(426, 1, 13, 1, '03 hợp đồng', 'Không Đạt', '2024-07-13'),
(427, 2, 13, 1, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-13'),
(428, 7, 13, 1, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-13'),
(430, 10, 13, 1, '05 hợp đồng', 'Đạt', '2024-07-13'),
(436, 1, 15, 1, '10 khách hàng', 'Không Đạt', '2024-07-13'),
(437, 2, 15, 1, '20 khách hàng', 'Đạt', '2024-07-13'),
(438, 7, 15, 1, '25 khách hàng', 'Đạt (Vượt chỉ tiêu)', '2024-07-13'),
(439, 8, 15, 1, '10 khách hàng', 'Không Đạt', '2024-07-13'),
(440, 10, 15, 1, '08 khách hàng', 'Không Đạt', '2024-07-13'),
(441, 1, 16, 1, '10 cuộc gọi', 'Không Đạt', '2024-07-13'),
(442, 2, 16, 1, '20 cuộc gọi', 'Đạt', '2024-07-13'),
(443, 7, 16, 1, '08 cuộc gọi', 'Không Đạt', '2024-07-13'),
(444, 8, 16, 1, '24 cuộc gọi', 'Đạt (Vượt chỉ tiêu)', '2024-07-13'),
(445, 10, 16, 1, '13 cuộc gọi', 'Không Đạt', '2024-07-13'),
(446, 1, 17, 1, '08 lượt', 'Không Đạt', '2024-07-13'),
(447, 2, 17, 1, '15 lượt', 'Đạt (Vượt chỉ tiêu)', '2024-07-13'),
(448, 7, 17, 1, '08 lượt', 'Không Đạt', '2024-07-13'),
(449, 8, 17, 1, '10 lượt', 'Đạt', '2024-07-13'),
(450, 10, 17, 1, '12 lượt', 'Đạt (Vượt chỉ tiêu)', '2024-07-13'),
(451, 1, 13, 2, '03 hợp đồng', 'Không Đạt', '2024-07-13'),
(452, 2, 13, 2, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-13'),
(453, 7, 13, 2, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-13'),
(454, 8, 13, 2, '05 hợp đồng', 'Đạt', '2024-07-13'),
(455, 10, 13, 2, '05 hợp đồng', 'Đạt', '2024-07-13'),
(456, 1, 13, 3, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-13'),
(457, 2, 13, 3, '02 hợp đồng', 'Không Đạt', '2024-07-13'),
(458, 7, 13, 3, '03 hợp đồng', 'Không Đạt', '2024-07-13'),
(459, 8, 13, 3, '05 hợp đồng', 'Đạt', '2024-07-13'),
(460, 10, 13, 3, '05 hợp đồng', 'Đạt', '2024-07-13'),
(461, 12, 13, 1, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-16'),
(463, 13, 13, 1, '10 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-16'),
(464, 14, 13, 1, '04 hợp đồng', 'Không Đạt', '2024-07-16'),
(465, 15, 13, 1, '03 hợp đồng', 'Không Đạt', '2024-07-16'),
(466, 12, 13, 2, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(467, 13, 13, 2, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(468, 14, 13, 2, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(469, 15, 13, 2, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(470, 12, 13, 3, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(471, 13, 13, 3, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(472, 14, 13, 3, '04 hợp đồng', 'Không Đạt', '2024-07-17'),
(473, 15, 13, 3, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(474, 1, 13, 4, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(475, 2, 13, 4, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(476, 7, 13, 4, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(477, 8, 13, 4, '01 hợp đồng', 'Không Đạt', '2024-07-17'),
(478, 10, 13, 4, '05 hợp đồng', 'Đạt', '2024-07-17'),
(479, 12, 13, 4, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(480, 13, 13, 4, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(481, 14, 13, 4, '04 hợp đồng', 'Không Đạt', '2024-07-17'),
(482, 15, 13, 4, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(483, 1, 13, 5, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(484, 2, 13, 5, '05 hợp đồng', 'Đạt', '2024-07-17'),
(485, 7, 13, 5, '09 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(486, 8, 13, 5, '05 hợp đồng', 'Đạt', '2024-07-17'),
(487, 10, 13, 5, '05 hợp đồng', 'Đạt', '2024-07-17'),
(488, 12, 13, 5, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(489, 13, 13, 5, '10 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(490, 14, 13, 5, '12 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(491, 15, 13, 5, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(492, 1, 13, 6, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(493, 2, 13, 6, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(494, 7, 13, 6, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(495, 8, 13, 6, '01 hợp đồng', 'Không Đạt', '2024-07-17'),
(496, 10, 13, 6, '05 hợp đồng', 'Đạt', '2024-07-17'),
(497, 12, 13, 6, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(498, 13, 13, 6, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(499, 14, 13, 6, '04 hợp đồng', 'Không Đạt', '2024-07-17'),
(500, 15, 13, 6, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(501, 1, 13, 7, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(502, 2, 13, 7, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(503, 7, 13, 7, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(504, 8, 13, 7, '05 hợp đồng', 'Đạt', '2024-07-17'),
(505, 10, 13, 7, '05 hợp đồng', 'Đạt', '2024-07-17'),
(506, 12, 13, 7, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(507, 13, 13, 7, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(508, 14, 13, 7, '04 hợp đồng', 'Không Đạt', '2024-07-17'),
(509, 15, 13, 7, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(510, 1, 13, 8, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(511, 2, 13, 8, '02 hợp đồng', 'Không Đạt', '2024-07-17'),
(512, 7, 13, 8, '15 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(513, 8, 13, 8, '05 hợp đồng', 'Đạt', '2024-07-17'),
(514, 10, 13, 8, '13 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(515, 12, 13, 8, '18 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(516, 13, 13, 8, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(517, 14, 13, 8, '05 hợp đồng', 'Đạt', '2024-07-17'),
(518, 15, 13, 8, '05 hợp đồng', 'Đạt', '2024-07-17'),
(519, 1, 13, 9, '12 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(520, 2, 13, 9, '05 hợp đồng', 'Đạt', '2024-07-17'),
(521, 7, 13, 9, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(522, 8, 13, 9, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(523, 10, 13, 9, '05 hợp đồng', 'Đạt', '2024-07-17'),
(524, 12, 13, 9, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(525, 13, 13, 9, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(526, 14, 13, 9, '05 hợp đồng', 'Đạt', '2024-07-17'),
(527, 15, 13, 9, '05 hợp đồng', 'Đạt', '2024-07-17'),
(528, 1, 13, 10, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(529, 2, 13, 10, '02 hợp đồng', 'Không Đạt', '2024-07-17'),
(530, 7, 13, 10, '09 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(531, 8, 13, 10, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(532, 10, 13, 10, '05 hợp đồng', 'Đạt', '2024-07-17'),
(533, 12, 13, 10, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(534, 13, 13, 10, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(535, 14, 13, 10, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(536, 15, 13, 10, '05 hợp đồng', 'Đạt', '2024-07-17'),
(560, 1, 13, 11, '07 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(561, 2, 13, 11, '05 hợp đồng', 'Đạt', '2024-07-17'),
(562, 7, 13, 11, '09 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(563, 8, 13, 11, '05 hợp đồng', 'Đạt', '2024-07-17'),
(564, 10, 13, 11, '05 hợp đồng', 'Đạt', '2024-07-17'),
(565, 12, 13, 11, '08 hợp đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(566, 13, 13, 11, '03 hợp đồng', 'Không Đạt', '2024-07-17'),
(567, 14, 13, 11, '04 hợp đồng', 'Không Đạt', '2024-07-17'),
(568, 15, 13, 11, '05 hợp đồng', 'Đạt', '2024-07-17'),
(569, 1, 14, 1, '20 triệu đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(570, 2, 14, 1, '10 triệu đồng', 'Đạt', '2024-07-17'),
(571, 7, 14, 1, '03 triệu đồng', 'Không Đạt', '2024-07-17'),
(572, 8, 14, 1, '05 triệu đồng', 'Không Đạt', '2024-07-17'),
(573, 10, 14, 1, '12 triệu đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(574, 12, 14, 1, '16 triệu đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(575, 13, 14, 1, '10 triệu đồng', 'Đạt', '2024-07-17'),
(576, 14, 14, 1, '11 triệu đồng', 'Đạt (Vượt chỉ tiêu)', '2024-07-17'),
(577, 15, 14, 1, '09 triệu đồng', 'Không Đạt', '2024-07-17'),
(579, 8, 13, 1, '05 hợp đồng', 'Đạt', '2024-07-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluation_period`
--

CREATE TABLE `evaluation_period` (
  `Period_ID` int(11) NOT NULL,
  `Period_Name` varchar(255) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `evaluation_period`
--

INSERT INTO `evaluation_period` (`Period_ID`, `Period_Name`, `Start_Date`, `End_Date`) VALUES
(1, 'KPI tháng 1', '2024-01-01', '2024-01-31'),
(2, 'KPI tháng 2', '2024-02-01', '2024-02-29'),
(3, 'KPI tháng 3', '2024-03-01', '2024-03-31'),
(4, 'KPI tháng 4', '2024-04-01', '2024-04-30'),
(5, 'KPI tháng 5', '2024-05-01', '2024-05-31'),
(6, 'KPI tháng 6', '2024-06-01', '2024-06-30'),
(7, 'KPI tháng 7', '2024-07-01', '2024-07-31'),
(8, 'KPI tháng 8', '2024-08-01', '2024-08-31'),
(9, 'KPI tháng 9', '2024-09-01', '2024-09-30'),
(10, 'KPI tháng 10', '2024-10-01', '2024-10-31'),
(11, 'KPI tháng 11', '2024-11-01', '2024-11-30'),
(12, 'KPI tháng 12', '2024-12-01', '2024-12-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kpi`
--

CREATE TABLE `kpi` (
  `KPI_ID` int(11) NOT NULL,
  `KPI_Name` varchar(100) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Target` varchar(255) NOT NULL,
  `Measure` varchar(30) NOT NULL,
  `KPI_Achieve` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kpi`
--

INSERT INTO `kpi` (`KPI_ID`, `KPI_Name`, `Description`, `Target`, `Measure`, `KPI_Achieve`) VALUES
(13, 'Số lượng hợp đồng ký kết trong tháng', 'Số hợp đồng được ký kết với khách hàng trong tháng', 'Tăng 15% so với tháng trước', 'Số lượng', '05 hợp đồng'),
(14, 'Doanh số bán hàng trong tháng', 'Tổng giá trị sản phẩm/dịch vụ bán được trong một tháng', 'Tăng trưởng 20% so với tháng trước', 'Giá trị', '10 triệu đồng'),
(15, 'Số lượng khách hàng trung thành', 'Số lượng khách hàng đã mua sản phẩm/dịch vụ của công ty nhiều lần và có ý định tiếp tục mua lại', 'Tăng 10% so với tháng trước', 'Số lượng', '10 khách hàng'),
(16, 'Số lượng cuộc gọi tiềm năng hàng ngày', 'Số lượng cuộc gọi được thực hiện đến các khách hàng tiềm năng mỗi ngày', 'Tăng 10% so với tháng trước', 'Số lượng', '10 cuộc gọi'),
(17, 'Số lượt họp gặp khách hàng trong tháng', 'Số lần gặp trực tiếp hoặc trực tuyến với khách hàng tiềm năng hoặc khách hàng hiện tại trong tháng', 'Tăng 5% so với tháng trước', 'Số lượt', '10 lượt'),
(18, 'Số khách hàng/nhân viên', 'Số lượng khách hàng mà mỗi Sal REP phụ trách', 'Giảm số lượng khách hàng trung bình cho mỗi Sal REP', 'Số lượng', '20'),
(19, 'Doanh số trung bình/nhân viên kinh doanh', 'Doanh số trung bình mà mỗi Sal REP đạt được', 'Tăng số lượng khách hàng trung bình cho mỗi Sal REP', 'Số lượng', '30'),
(20, 'Tăng trưởng doanh số bán hàng', 'Tăng trưởng tổng giá trị sản phẩm/dịch vụ bán được trong tháng\r\n', 'Tăng trưởng 30% so với tháng trước', 'Giá trị', '10 triệu đồng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_login`
--

CREATE TABLE `user_login` (
  `id_user` int(11) NOT NULL,
  `username_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_login`
--

INSERT INTO `user_login` (`id_user`, `username_user`, `password_user`) VALUES
(1, 'user', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Chỉ mục cho bảng `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`evaluation_ID`),
  ADD KEY `employee_ID` (`employee_ID`),
  ADD KEY `KPI_ID` (`KPI_ID`),
  ADD KEY `Period_ID` (`Period_ID`);

--
-- Chỉ mục cho bảng `evaluation_period`
--
ALTER TABLE `evaluation_period`
  ADD PRIMARY KEY (`Period_ID`);

--
-- Chỉ mục cho bảng `kpi`
--
ALTER TABLE `kpi`
  ADD PRIMARY KEY (`KPI_ID`);

--
-- Chỉ mục cho bảng `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `evaluation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT cho bảng `evaluation_period`
--
ALTER TABLE `evaluation_period`
  MODIFY `Period_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `kpi`
--
ALTER TABLE `kpi`
  MODIFY `KPI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`Employee_ID`),
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`KPI_ID`) REFERENCES `kpi` (`KPI_ID`),
  ADD CONSTRAINT `evaluation_ibfk_3` FOREIGN KEY (`Period_ID`) REFERENCES `evaluation_period` (`Period_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
