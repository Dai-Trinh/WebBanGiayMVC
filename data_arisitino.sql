-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 13, 2023 lúc 09:26 AM
-- Phiên bản máy phục vụ: 8.0.17
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `data_arisitino`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bo_suu_tap`
--

CREATE TABLE `bo_suu_tap` (
  `id` int(11) NOT NULL,
  `ten_bo_suu_tap` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noi_dung` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `anh_tieu_de` varchar(45) DEFAULT NULL,
  `anh_noi_dung` varchar(45) DEFAULT NULL,
  `anh_danh_muc` varchar(45) DEFAULT NULL,
  `anh_phan_cuoi` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `bo_suu_tap`
--

INSERT INTO `bo_suu_tap` (`id`, `ten_bo_suu_tap`, `noi_dung`, `anh_tieu_de`, `anh_noi_dung`, `anh_danh_muc`, `anh_phan_cuoi`, `created_by`, `updated_by`, `created_date`, `updated_date`) VALUES
(1, 'MAN IN OFFICITY', 'Một bộ trang phục chỉn chu và lịch lãm không chỉ giúp \"sạc\" đầy cảm hứng làm việc, mà còn là \"bước đệm\" quan trọng để các quý ông ghi lại dấu ấn riêng. Lịch lãm, sang trọng, cuốn hút, BST Man in Offic', 'xuanhe2022.png', 'xuanhe2022_2.png', 'xuanhe2022_3.png', 'xuanhe2022_4.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_hd` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `size` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`id`, `id_sp`, `id_hd`, `so_luong`, `size`, `created_by`, `updated_by`, `created_date`, `updated_date`) VALUES
(1, 3, 1, 1, '38', NULL, NULL, '2023-05-23 17:00:22', NULL),
(2, 3, 2, 2, '39', NULL, NULL, '2023-05-23 17:02:22', NULL),
(3, 1, 3, 1, '41', NULL, NULL, '2023-05-23 18:06:34', NULL),
(4, 5, 4, 1, '38', NULL, NULL, '2023-05-23 18:22:47', NULL),
(5, 22, 5, 1, ' 39', NULL, NULL, '2023-05-28 10:26:08', NULL),
(6, 23, 6, 2, ' 39', NULL, NULL, '2023-05-28 10:53:09', NULL),
(7, 15, 7, 1, 'S', NULL, NULL, '2023-05-28 11:01:33', NULL),
(8, 17, 8, 1, '38', NULL, NULL, '2023-06-08 22:15:59', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cua_hang`
--

CREATE TABLE `cua_hang` (
  `id` int(11) NOT NULL,
  `ten_cua_hang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thoi_gian_hoat_dong` varchar(30) DEFAULT NULL,
  `dien_thoai` varchar(15) DEFAULT NULL,
  `dia_chi_cu_the` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_huyen` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `cua_hang`
--

INSERT INTO `cua_hang` (`id`, `ten_cua_hang`, `thoi_gian_hoat_dong`, `dien_thoai`, `dia_chi_cu_the`, `id_huyen`, `status`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
(3, 'Aristino Time City', NULL, '02439924999', 'D7 -11-13 đường Thời đại, TTTM Times City, 458 Minh Khai, Hai Bà Trưng, HN', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Aristino Vincom Bắc Từ Liêm', NULL, '0946996322', 'Vincom Bắc Từ Liêm 234 Phạm Văn Đồng, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_phu_kien`
--

CREATE TABLE `danh_muc_phu_kien` (
  `id` int(11) NOT NULL,
  `ten_dm` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_phu_kien`
--

INSERT INTO `danh_muc_phu_kien` (`id`, `ten_dm`, `created_by`, `updated_by`, `created_date`, `updated_date`, `status`) VALUES
(1, 'Giày', NULL, NULL, NULL, NULL, 1),
(2, 'Cặp da', NULL, NULL, NULL, NULL, 1),
(3, 'Ví nam', NULL, NULL, NULL, NULL, 1),
(4, 'Thắt lưng', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_san_pham_bac1`
--

CREATE TABLE `danh_muc_san_pham_bac1` (
  `id` int(11) NOT NULL,
  `ten_dm` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_san_pham_bac1`
--

INSERT INTO `danh_muc_san_pham_bac1` (`id`, `ten_dm`, `created_by`, `updated_by`, `created_date`, `updated_date`, `status`) VALUES
(10, 'Áo', NULL, NULL, NULL, NULL, 1),
(11, 'Quần', NULL, NULL, NULL, NULL, 1),
(12, 'Đồ bộ', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_san_pham_bac2`
--

CREATE TABLE `danh_muc_san_pham_bac2` (
  `id` int(11) NOT NULL,
  `ten_dm` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_dm_b1` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_san_pham_bac2`
--

INSERT INTO `danh_muc_san_pham_bac2` (`id`, `ten_dm`, `id_dm_b1`, `created_by`, `updated_by`, `created_date`, `updated_date`, `status`) VALUES
(10, 'Áo sơ mi', 10, NULL, NULL, NULL, NULL, 1),
(11, 'Áo Polo', 10, NULL, NULL, NULL, NULL, 1),
(12, 'Áo T-shirt', 10, NULL, NULL, NULL, NULL, 1),
(13, 'Áo Tank-top', 10, NULL, NULL, NULL, NULL, 1),
(14, 'Áo Blazer', 10, NULL, NULL, NULL, NULL, 1),
(15, 'Áo Khoác', 10, NULL, NULL, NULL, NULL, 1),
(16, 'Áo Nỉ nam', 10, NULL, NULL, NULL, NULL, 1),
(17, 'Áo len', 10, NULL, NULL, NULL, NULL, 1),
(18, 'Áo Thun dài tay', 10, NULL, NULL, NULL, NULL, 1),
(19, 'Quần Âu', 11, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang_yeu_thich`
--

CREATE TABLE `gio_hang_yeu_thich` (
  `id` int(11) NOT NULL,
  `id_khach_hang` int(11) NOT NULL,
  `id_san_pham` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `yeu_thich` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `id_kh` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `tong_so_luong` int(11) DEFAULT NULL,
  `thanh_tien` decimal(13,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `id_kh`, `created_by`, `updated_by`, `created_date`, `updated_date`, `tong_so_luong`, `thanh_tien`) VALUES
(1, 2, NULL, NULL, '2023-05-23 17:00:22', NULL, 1, '850000'),
(2, 3, NULL, NULL, '2023-05-23 17:02:22', NULL, 2, '1700000'),
(3, 4, NULL, NULL, '2023-05-23 18:06:34', NULL, 1, '750000'),
(4, 5, NULL, NULL, '2023-05-23 18:22:47', NULL, 1, '795000'),
(5, 10, NULL, NULL, '2023-05-28 10:26:08', NULL, 1, '1950000'),
(6, 11, NULL, NULL, '2023-05-28 10:53:09', NULL, 2, '5000000'),
(7, 12, NULL, NULL, '2023-05-28 11:01:33', NULL, 1, '595000'),
(8, 13, NULL, NULL, '2023-06-08 22:15:59', NULL, 1, '895000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huyen`
--

CREATE TABLE `huyen` (
  `id` int(11) NOT NULL,
  `ten_huyen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_tinh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `so_dien_thoai` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ten_dang_nhap` varchar(45) DEFAULT NULL,
  `mat_khau` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `dia_chi` varchar(500) DEFAULT NULL,
  `gioi_tinh` varchar(45) DEFAULT NULL,
  `id_tai_khoan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ho_ten`, `ngay_sinh`, `so_dien_thoai`, `email`, `ten_dang_nhap`, `mat_khau`, `status`, `created_date`, `updated_date`, `created_by`, `updated_by`, `dia_chi`, `gioi_tinh`, `id_tai_khoan`) VALUES
(1, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-23 16:57:23', NULL, NULL, NULL, 'Hà Nội', NULL, NULL),
(2, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-23 17:00:22', NULL, NULL, NULL, 'Hà Nội', NULL, NULL),
(3, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-23 17:02:22', NULL, NULL, NULL, 'Hà Nội', NULL, NULL),
(4, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-23 18:06:34', NULL, NULL, NULL, 'Hà Nội', NULL, NULL),
(5, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-23 18:22:47', NULL, NULL, NULL, 'Hà Nội', NULL, NULL),
(6, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-26 23:54:56', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-26 23:56:39', NULL, NULL, NULL, 'Nhà số 3, Ngách 78/132 Nguyên Xá, Minh Khai, Bắc Từ Liêm, Hà Nội', 'Nam', NULL),
(8, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-26 23:57:01', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-27 17:47:26', NULL, NULL, NULL, 'Nhà số 3, Ngách 78/132 Nguyên Xá, Minh Khai, Bắc Từ Liêm, Hà Nội', 'Nam', NULL),
(10, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-28 10:26:08', NULL, NULL, NULL, 'Nhà số 3, Ngách 78/132 Nguyên Xá, Minh Khai, Bắc Từ Liêm, Hà Nội', NULL, 4),
(11, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-28 10:53:09', NULL, NULL, NULL, 'Hải Phòng', NULL, 3),
(12, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-05-28 11:01:33', NULL, NULL, NULL, 'Hải Phòng', NULL, 3),
(13, 'Trịnh Tiến Đại', NULL, '0354167993', 'trinhtiendai2002@gmail.com', NULL, NULL, 1, '2023-06-08 22:15:59', NULL, NULL, NULL, 'Hà Nội', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `mota`, `created_date`, `updated_date`, `created_by`, `updated_by`, `status`) VALUES
(1, 'ADMIN', 'ADMIN', NULL, NULL, NULL, NULL, 1),
(2, 'GUEST', 'GUEST', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten_sp` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `mau_sac` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `gia` decimal(13,0) DEFAULT NULL,
  `form_dang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `thiet_ke` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `chat_lieu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `hinh_anh` varchar(50) DEFAULT NULL,
  `id_dm_sp` int(11) DEFAULT NULL,
  `id_dm_pk` int(11) DEFAULT NULL,
  `id_bo_suu_tap` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten_sp`, `so_luong`, `mau_sac`, `size`, `gia`, `form_dang`, `thiet_ke`, `chat_lieu`, `hinh_anh`, `id_dm_sp`, `id_dm_pk`, `id_bo_suu_tap`, `created_by`, `updated_by`, `created_date`, `updated_date`, `status`) VALUES
(1, 'Áo sơ mi ngắn tay Aristino ASS054S3 màu Trắng', 100, 'Trắng in họa tiết xanh', '38/39/40/41/42/43', '750000', 'Slim Fit', '- Áo sơ mi ngắn tay phom Slim Fit ôm nhẹ vừa vặn mà vẫn thoải mái vận động.\n- Áo thiết kế đơn giản, tà lượn không túi, cùng họa tiết xanh in nổi bật trên nền trắng\ntạo hiệu ứng ấn tượng, mang đến phon', '- 38% Bamboo từ sợi tre thiên nhiên mang đến sự thoáng mát, thấm hút tốt và tạo cảm giác thoải mái.\n- 58% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ.\n- 4% Spandex tạo độ co giãn nhẹ', 'ASS054S3.png', 10, NULL, 1, NULL, NULL, NULL, NULL, 1),
(2, 'Áo sơ mi ngắn tay Aristino ASS052S3 màu Trắng', 100, 'Trắng in họa tiết xanh', '38/39/40/41/42/43', '750000', 'Regular Fit', '- Áo sơ mi ngắn tay phom dáng Regular Fit có độ suông rộng vừa đủ mà vẫn đảm bảo vừa vặn hình thể người mặc.\n- Thiết kế chỉn chu đến từng chi tiết với tà lượn, có túi ngực tiện lợi. Họa tiết xanh in t', '- 38% Bamboo từ sợi tre thiên nhiên mang đến sự thoáng mát, thấm hút tốt và tạo cảm giác thoải mái.\n- 58% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ.\n- 4% Spandex tạo độ co giãn nhẹ', 'ASS052S3.png', 10, NULL, 1, NULL, NULL, NULL, NULL, 1),
(3, 'Áo sơ mi ngắn tay Aristino ASS016S3 màu Xanh kẻ', 100, 'Xanh kẻ slub', '38/39/40/41/42/43', '850000', 'Slim fit', '- Áo sơ mi ngắn tay phom Slim fit ôm vừa vặn cơ thể, tôn dáng người mặc.\n- Áo thiết kế tà lượn, không túi, màu kẻ caro ấn tượng, đem lại vẻ ngoài lịch lãm nổi bật cho các quý ông.', '- 50% Bamboo từ sợi tre thiên nhiên mang đến sự thoáng mát, thấm hút tốt và tạo cảm giác thoải mái.\n- 50% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ.', 'ASS016S3.png', 10, NULL, 1, NULL, NULL, NULL, NULL, 1),
(4, 'Áo sơ mi ngắn tay Aristino ASS007S3 kẻ tím than', 100, 'Xanh tím than kẻ vàng', '38/39/40/41/42/43', '895000', 'Slim fit', '- Áo sơ mi ngắn tay phom Slim Fit ôm nhẹ vừa vặn mà vẫn thoải mái vận động.\n- Áo thiết kế đơn giản, tà lượn không túi, cùng màu xanh tím than kẻ vàng\ntạo hiệu ứng ấn tượng, mang đến phong cách thời th', '- 48% Modal từ sợi sồi thiên nhiên cho bề mặt vải mềm mại, nhẹ và thoáng khí.\n- 48% Polyester giúp áo bền màu, sắc nét, ít nhăn co.\n- 4% Spandex giữ độ co giãn tốt, tạo sự thoải mái', 'ASS007S3.png', 10, NULL, 1, NULL, NULL, NULL, NULL, 1),
(5, 'Áo sơ mi ngắn tay Aristino ASS043S3 màu trắng in', 100, 'Trắng in xanh tím than', '38/39/40/41/42/43', '795000', 'Slim fit', '- Áo sơ mi ngắn tay phom Slim Fit ôm vừa vặn cơ thể, tôn dáng người mặc.\n- Áo thiết kế họa tiết trắng in xanh tím than tạo hiệu ứng nổi bật, mang đến phong cách thời thượng và lịch lãm cho các quý ông', '- 58% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ\n- 38% Bamboo mang đến sự thoáng mát, thấm hút tốt.\n- 4% Spandex tạo độ co giãn nhẹ.', 'ASS043S3.png', 10, NULL, 1, NULL, NULL, NULL, NULL, 1),
(6, 'Áo sơ mi ngắn tay Aristino ASS164S2 màu trắng in họa tiết', 100, 'Trắng in họa tiết', '38/39/40/41/42/43', '750000', 'Perfect fit', '- Áo sơ mi ngắn tay phom Perfect fit suông rộng, tà bằng, độ dài áo vừa phải để mặc thả ngoài trong môi trường công sở.\n- Áo thiết kế họa tiết trắng in họa tiết tinh tế, tạo điểm nhấn trên áo.', '- 50% Bamboo từ sợi tre thiên nhiên mang đến sự thoáng mát, thấm hút tốt và tạo cảm giác thoải mái.\n- 50% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ.', 'ASS164S2.png', 10, NULL, 1, NULL, NULL, NULL, NULL, 1),
(7, 'Áo sơ mi dài tay Aristino ALS06302', 100, 'Đen kẻ chìm', '38/39/40/41/42/43', '995000', '', '<p>- Áo sơ mi dài tay phom Regular fit có độ suông rộng vừa đủ mà vẫn đảm bảo vừa vặn hình thể người mặc.\r\n</p><p>- Thiết kế chỉn chu đến từng chi tiết với tà lượn, túi ngực. Áo họa tiết đen kẻ chìm thời thượng </p>', '<p>- Chất liệu Modal từ sợi sồi thiên nhiên cho bề mặt vải mềm mại, nhẹ và thoáng và thấm hút tuyệt vời.\r\n</p><p>- 50% Polyester mang đến bộ bóng sắc nét, bền màu, khả năng chống bám bụi, chống nhăn và chống thấ</p>', 'ALS06302.png', 10, NULL, 1, NULL, NULL, NULL, NULL, 1),
(8, 'Áo sơ mi kẻ dài tay Aristino ALS12402 màu xanh tím than', 100, 'Xanh tím than kẻ', '38/39/40/41/42/43', '995000', 'Slim Fit', '- Áo sơ mi dài tay phom Slim Fit ôm nhẹ vừa vặn mà vẫn thoải mái vận động.\n- Thiết kế chỉn chu đến từng chi tiết với tà lượn, không có túi ngực. Họa tiết kẻ trên nền xanh tím than tạo hiệu ứng tinh tế', '- 50% Modal sợi sồi thiên nhiên mang đến bề mặt vải mềm mại, mịn màng, sự dễ chịu cho người mặc dù ở mùa nào trong năm.\n- Cùng 50% Polyester, áo mỏng nhẹ, có độ trơn trượt, màu sắc nét và giữ màu tốt ', 'ALS12402.png', 10, NULL, 1, NULL, NULL, NULL, NULL, 1),
(9, 'Áo thun có cổ ngắn tay Aristino APS094S3', 100, 'Xanh biển 20 kẻ Jacquard', 'S/M/L/XL/XXL', '650000', 'Regular Fit', '- Áo Polo phom dáng Regular fit suông nhẹ nhưng vẫn vừa vặn, tôn dáng tối đa khi mặc\n- Thiết kế basic với cổ đứng chỉn chu, màu sắc trung tính kết hợp với họa tiết kẻ caro tạo điểm nhấn tinh tế', '- 87% Nylon cho bề mặt vải độ mịn mượt, mỏng nhẹ\n- 13% Spandex tạo độ co giãn thoải mái khi mặc', 'APS094S3.png', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 'Áo polo nam có cổ ngắn tay Aristino APS148S3', 100, 'Xanh biển 19 in', 'S/M/L/XL/XXL', '595000', 'Slim Fit', '- Áo polo phom dáng Slim Fit ôm nhẹ vừa vặn mà vẫn thoải mái linh hoạt khi vận động.\n- Thiết kế basic với cổ dệt lịch sự với họa tiết thêu chữ ký Aristino tinh tế. Áo in họa tiết kẻ khỏe khoắn mang đế', '- 57% Cotton mềm mịn, thoáng khí, thấm mồ hôi vượt trội và thân thiện với làn da\n- 38% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ.\n- 5% Spandex giúp áo co giãn thoải mái', 'APS148S3.png', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 'Áo polo nam có cổ ngắn tay Aristino APS147S3', 100, 'Vàng 84 thêu', 'S/M/L/XL/XXL', '650000', 'Regular Fit', '- Áo Polo phom dáng Regular Fit suông nhẹ nhưng vẫn vừa vặn, tôn dáng tối đa khi mặc.\n- Thiết kế basic với cổ dệt lịch sự kết hợp họa tiết thêu cách điệu, đem đến diện mạo thời thượng cho người mặc', '- 62% Polyester giúp áo siêu mỏng nhẹ, bề mặt vải trơn bóng, màu sắc sắc nét và bền màu qua quá trình sử dụng\n- 38% Seawool Polyester chống tĩnh điện, thoáng khí, bảo vệ da và khả năng kiểm soát mùi v', 'APS147S3.png', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(12, 'Áo polo nam có cổ ngắn tay Aristino APS115S3', 100, 'Hồng 03 MF', 'S/M/L/XL/XXL', '650000', 'Regular Fit', '- Áo Polo phom dáng Regular Fit suông nhẹ nhưng vẫn vừa vặn, tôn dáng tối đa khi mặc.\n- Thiết kế basic với cổ dệt lịch sự kết hợp họa tiết thêu chữ ký Aristino trước ngực, đem đến diện mạo thời thượng', '- 48% Cotton mềm mịn, thoáng khí, thấm mồ hôi vượt trội và thân thiện với làn da\n- 47% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ\n- 5% Spandex giúp áo co giãn thoải mái', 'APS115S3.png', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(13, 'Áo polo nam có cổ ngắn tay Aristino APS064S3', 100, 'Xanh cổ vịt 21 in', 'S/M/L/XL/XXL', '695000', 'Slim Fit', '- Áo polo phom dáng Slim Fit ôm nhẹ vừa vặn mà vẫn thoải mái linh hoạt khi vận động.\n- Thiết kế áo ấn tượng với họa tiết logo Aristino xếp chồng chỉn chu theo chiều ngang ngực áo mang tới hiệu ứng thị', '- 96,5% cotton giúp áo mềm mại, xốp nhẹ, khả năng thấm hút tốt, thoáng khí dù ở mùa nào trong năm, đồng thời vẫn giữ được độ đứng dáng vừa đủ.\n- 3,5% spandex tăng độ co giãn', 'APS064S3.png', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(14, 'Áo polo nam cổ ngắn tay Aristino APS046S3', 100, 'Xanh biển 16 in', 'S/M/L/XL/XXL', '595000', 'Slim Fit', '- Áo polo phom Slim fit ôm vừa mang lại vẻ ngoài lịch lãm cho quý ông\n- Thiết kế basic với cổ dệt lịch sự kết hợp họa tiết những đường kẻ cách điệu trẻ trung, đem đến diện mạo thời thượng cho người mặ', '- 57% Cotton mềm mịn, thoáng khí, thấm mồ hôi vượt trội và thân thiện với làn da\n- 38% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ\n- 5% Spandex giúp áo co giãn thoải mái', 'APS046S3.png', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(15, 'Áo polo nam có cổ ngắn tay Aristino APS038S3', 100, 'Be 142', 'S/M/L/XL/XXL', '595000', 'Slim Fit', '- Áo polo phom dáng Slim Fit ôm nhẹ vừa vặn mà vẫn thoải mái linh hoạt khi vận động.\n- Thiết kế basic với cổ dệt lịch sự. Phần ngực áo thêu logo Aristino tinh tế. Áo màu xanh tím than trơn khỏe khoắn ', '- 57% cotton giúp áo mềm mại, xốp nhẹ, khả năng thấm hút tốt, thoáng khí dù ở mùa nào trong năm, đồng thời vẫn giữ được độ đứng dáng vừa đủ.\n- 38% mang lại trọng lượng siêu mỏng nhẹ, bề mặt vải trơn b', 'APS038S3.png', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(16, 'Áo thun có cổ ngắn tay nam Aristino APS008S3', 100, 'Đen 9 kẻ jacquard', 'S/M/L/XL/XXL', '750000', 'Regular Fit', '- Áo polo phom dáng Regular fit - ôm dáng, hơi suông giúp tạo cảm giác thoải mái và che khuyết điểm trên cơ thể\n- Thiết kế basic với cổ dệt lịch sự kết hợp cùng hoạt tiết kẻ ngang trên thân áo tạo nên', '- 97% cotton giúp áo mềm mại, xốp nhẹ, khả năng thấm hút tốt, thoáng khí dù ở mùa nào trong năm, đồng thời vẫn giữ được độ đứng dáng vừa đủ.\n- 3% spandex tăng độ co giãn', 'APS008S3.png', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(17, 'Áo sơ mi nam dài tay Aristino ALS11502 màu Xanh kẻ', 100, 'Trắng kẻ sọc chìm 1', '38/39/40/41/42/43', '895000', 'Slim Fit', 'Áo sơ mi nam dài tay Aristino ALS11502 màu Xanh kẻ', 'Áo sơ mi nam dài tay Aristino ALS11502 màu Xanh kẻ', '1.png', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'Áo sơ mi nam dài tay Aristino ALS11502 màu Xanh kẻ', 100, 'Trắng kẻ sọc chìm 1', '38/39/40/41/42/43', '895000', 'Slim Fit', 'Áo sơ mi nam dài tay Aristino ALS11502 màu Xanh kẻ', 'Áo sơ mi nam dài tay Aristino ALS11502 màu Xanh kẻ', '1.png', 10, NULL, NULL, NULL, NULL, '2023-05-09 18:04:27', NULL, 0),
(19, 'Áo sơ mi nam dài tay Aristino ALS11502 màu Xanh kẻ', 100, 'Trắng kẻ sọc chìm 1', '38/39/40/41/42/43', '900000', 'Slim Fit', 'Áo sơ mi nam dài tay Aristino ALS11502 màu Xanh kẻ', 'Áo sơ mi nam dài tay Aristino ALS11502 màu Xanh kẻ', 'a21.png', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 'Áo sơ mi nam dài tay Aristino ALS11502 ', 100, 'Trắng kẻ sọc chìm 1', '38/39/40/41/42/43', '900000', 'Slim Fit', 'Áo sơ mi nam dài tay Aristino ALS11502 ', '<p>Áo sơ mi nam dài tay Aristino ALS11502</p><p>Áo sơ mi</p><p> </p>', 'a31.png', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(22, 'Giày da nam Aristino ASH02002', 100, 'Đen', ' 39/40/41/42', '1950000', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\">- Giày Loafer với hiệu ứng da bóng, thiết kế ôm chân, vừa vặn đem lại cảm giác thoải mái tuyệt đối.</span><br style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\">- Giày thiết kế thanh lịch, mặt da trơn, dễ kết hợp trang phục. Đế giày đúc họa tiết Aristino ma sát tốt, chống trơn trượt.</span><br></p>', '<p><span style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\">- &nbsp;Mặt ngoài làm từ 100% da bò, được xử lý để hạn chế thấm nước, tăng độ bền và dễ dàng vệ sinh.</span><br style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\">- Mặt trong làm từ da thật. Chất da mềm mại, thông thoáng, tạo cảm giác êm ái dù đi trên chân suốt cả ngày dài.</span><br></p>', 'giay1.png', NULL, 1, NULL, NULL, NULL, '2023-05-18 23:03:47', NULL, 1),
(23, 'Giày da Aristino ASHR22 màu đen', 100, 'Đen', ' 39/40/41/42', '2500000', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\">- Giày Loafer thiết kế ôm chân, vừa vặn đem lại cảm giác thoải mái tuyệt đối.</span><br style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\">- Giày thiết kế thanh lịch, vân trơn cao cấp dễ kết hợp trang phục.</span><br style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\">- Đế giày đúc ma sát tốt, chống trơn trượt</span><br></p>', '<p><span style=\"color: rgb(33, 37, 41); font-family: svgGilroy; font-size: 16px;\">- 100% da bò nhập khẩu cao cấp, mềm mại khi sử dụng. Da được xử lý tỉ mỉ, không xảy ra hiện tượng nổ da. Bề mặt da có độ bóng tự nhiên, bền chắc và mềm mại hơn sau thời gian dài sử dụng.</span><br></p>', 'giay2.png', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `stastus` tinyint(1) DEFAULT '1',
  `phone` varchar(10) DEFAULT NULL,
  `id_kh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `username`, `password`, `email`, `created_date`, `updated_date`, `created_by`, `updated_by`, `stastus`, `phone`, `id_kh`) VALUES
(1, 'admin', '$2a$04$ZqWMtvaw.T3f0uz4F5l7YOvnRI2dve/tzKrQKj6tGDIj//i1vsPA2', 'admin@admin.com', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'guest', '$2a$04$vo8Jcl5IvxBwvHw8r0mQF.JsR0rtXdSuPy.qqTGgE60q7ssAo/j/O', 'gest@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 'hoanghieu', '$2a$04$FsNIgOOXCKLyNx4stiO7lusPd894E9e1gb4V2Qm7cksEhDOWRu.d2', 'hoangminhhieu@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, 6),
(4, 'trinhtiendai', '$2a$04$cD2HoIwwmGPXY60KlD7P0.GyNRMGlh05ZZpnwwc6zp5eBHdGFPUA6', 'trinhtiendai2002@gmail.com', '2023-05-26 23:56:39', NULL, NULL, NULL, 1, NULL, 7),
(5, 'trinhtiendai', '$2a$04$demrj5XXBks6Vp7sDMYTJ.SioxKjIkRKCcXS.vgl8EL1MeRJ2ywyS', 'trinhtiendai2002@gmail.com', '2023-05-26 23:57:01', NULL, NULL, NULL, 1, NULL, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan_role`
--

CREATE TABLE `tai_khoan_role` (
  `id_tai_khoan` int(11) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan_role`
--

INSERT INTO `tai_khoan_role` (`id_tai_khoan`, `id_role`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

CREATE TABLE `tinh` (
  `id` int(11) NOT NULL,
  `ten_tinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bo_suu_tap`
--
ALTER TABLE `bo_suu_tap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_san_pham_idx` (`id_sp`),
  ADD KEY `fk_hoa_don_idx` (`id_hd`);

--
-- Chỉ mục cho bảng `cua_hang`
--
ALTER TABLE `cua_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_muc_phu_kien`
--
ALTER TABLE `danh_muc_phu_kien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_muc_san_pham_bac1`
--
ALTER TABLE `danh_muc_san_pham_bac1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_muc_san_pham_bac2`
--
ALTER TABLE `danh_muc_san_pham_bac2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_danh_muc_bac1_idx` (`id_dm_b1`);

--
-- Chỉ mục cho bảng `gio_hang_yeu_thich`
--
ALTER TABLE `gio_hang_yeu_thich`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_san_pham_gh_idx` (`id_san_pham`),
  ADD KEY `fk_khach_hang_idx` (`id_khach_hang`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_khach_hang_idx` (`id_kh`);

--
-- Chỉ mục cho bảng `huyen`
--
ALTER TABLE `huyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tinh_idx` (`id_tinh`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_danh_muc_sp_idx` (`id_dm_sp`),
  ADD KEY `fk_danh_muc_pk_idx` (`id_dm_pk`),
  ADD KEY `fk_danh_muc_bst_idx` (`id_bo_suu_tap`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tai_khoan_role`
--
ALTER TABLE `tai_khoan_role`
  ADD PRIMARY KEY (`id_role`,`id_tai_khoan`),
  ADD KEY `fk_user_idx` (`id_tai_khoan`);

--
-- Chỉ mục cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bo_suu_tap`
--
ALTER TABLE `bo_suu_tap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `cua_hang`
--
ALTER TABLE `cua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `danh_muc_phu_kien`
--
ALTER TABLE `danh_muc_phu_kien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `danh_muc_san_pham_bac1`
--
ALTER TABLE `danh_muc_san_pham_bac1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `danh_muc_san_pham_bac2`
--
ALTER TABLE `danh_muc_san_pham_bac2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `gio_hang_yeu_thich`
--
ALTER TABLE `gio_hang_yeu_thich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `huyen`
--
ALTER TABLE `huyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tinh`
--
ALTER TABLE `tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `fk_hoa_don` FOREIGN KEY (`id_hd`) REFERENCES `hoa_don` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_san_pham` FOREIGN KEY (`id_sp`) REFERENCES `san_pham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danh_muc_san_pham_bac2`
--
ALTER TABLE `danh_muc_san_pham_bac2`
  ADD CONSTRAINT `fk_danh_muc_bac1` FOREIGN KEY (`id_dm_b1`) REFERENCES `danh_muc_san_pham_bac1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gio_hang_yeu_thich`
--
ALTER TABLE `gio_hang_yeu_thich`
  ADD CONSTRAINT `fk_khach_hang_gh` FOREIGN KEY (`id_khach_hang`) REFERENCES `khach_hang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_san_pham_gh` FOREIGN KEY (`id_san_pham`) REFERENCES `san_pham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `fk_khach_hang` FOREIGN KEY (`id_kh`) REFERENCES `khach_hang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `huyen`
--
ALTER TABLE `huyen`
  ADD CONSTRAINT `fk_tinh` FOREIGN KEY (`id_tinh`) REFERENCES `tinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `fk_danh_muc_bst` FOREIGN KEY (`id_bo_suu_tap`) REFERENCES `bo_suu_tap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_danh_muc_pk` FOREIGN KEY (`id_dm_pk`) REFERENCES `danh_muc_phu_kien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_danh_muc_sp` FOREIGN KEY (`id_dm_sp`) REFERENCES `danh_muc_san_pham_bac2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tai_khoan_role`
--
ALTER TABLE `tai_khoan_role`
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_tai_khoan`) REFERENCES `tai_khoan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
