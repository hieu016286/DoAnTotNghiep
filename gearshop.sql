-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 22, 2023 lúc 03:23 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gearshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `avatar`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'vippr1239@gmail.com', '$2y$10$xAR.fvGt9PTaln5E94qQSOCmca3nl8FojdjzlR.bE/275aaCyQDmi', '0368136948', NULL, 'D13CNPM4', 'TP.HN', 1, '2022-11-21__a.png', NULL, NULL),
(4, 'Staff', 'staff@gmail.com', '$2y$10$izYMhD2N5zgpOUYyu//Bt.NgB7SlVDQe9CCdg4CWRjXtfJYiTH/eu', '0333333333', NULL, 'D13CNPM4', 'TP.HN', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(8, 'Xenoblade Chronicles 3: Mọi thứ chúng ta cần biết trước khi mua và chơi game', 'xenoblade-chronicles-3-moi-thu-chung-ta-can-biet-truoc-khi-mua-va-choi-game', 0, 1, 7, 0, 'Xenoblade Chronicles 3', '2022-11-21__pexels-photo-11591876.jpeg', '<h2 dir=\"ltr\"><strong>Th&ocirc;ng tin ng&agrave;y ph&aacute;t h&agrave;nh game</strong></h2>\r\n\r\n<p dir=\"ltr\">Xenoblade Chronicles 3 được thiết lập để c&ocirc;ng bố độc quyền cho&nbsp;<a href=\"https://34gameshop.vn/nintendo-switch/\" title=\"nintendo switch\">Nintendo Switch</a>&nbsp;v&agrave;o ng&agrave;y 29 th&aacute;ng 7 năm 2022. Điều th&uacute; vị l&agrave; ng&agrave;y ph&aacute;t h&agrave;nh n&agrave;y thực sự sẽ sớm hơn hai th&aacute;ng so với th&ocirc;ng b&aacute;o ban đầu của Nintendo, một kỳ t&iacute;ch rất hiếm trong ng&agrave;nh c&ocirc;ng nghiệp tr&ograve; chơi.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"574\" src=\"https://www.youtube.com/embed/nmLXU2Yzqfo?feature=oembed\" title=\"Xenoblade Chronicles 3 - Overview Trailer - Nintendo Switch\" width=\"1020\"></iframe></p>\r\n\r\n<h2 dir=\"ltr\"><strong>C&acirc;u chuyện v&agrave; nội dung của game</strong></h2>\r\n\r\n<p><img alt=\"Xenoblade Chronicles 3 leaks, playable on Steam Deck before Switch release | Eurogamer.net\" src=\"https://assets.reedpopcdn.com/NSwitch_XenobladeChronicles3_14.jpg/BROK/resize/1200x1200%3E/format/jpg/quality/70/NSwitch_XenobladeChronicles3_14.jpg\" /></p>\r\n\r\n<p dir=\"ltr\">Lấy bối cảnh một x&atilde; hội tương lai bị ph&acirc;n chia bởi chiến tranh, thật an to&agrave;n khi gọi Xenoblade Chronicles 3 l&agrave; t&aacute;c phẩm lỗi thời nhất trong loạt phim Xenoblade. Tr&ograve; chơi chủ yếu kiểm tra hai phe &ndash; Keves v&agrave; Agnus &ndash; những người lu&ocirc;n chiến đấu quyết liệt với nhau. Những trận chiến đ&oacute; được chiến đấu bởi những người l&iacute;nh trẻ, những người được tạo ra một c&aacute;ch nh&acirc;n tạo v&agrave; c&oacute; 10 năm &ndash; được gọi l&agrave; &ldquo;điều khoản&rdquo; trong tr&ograve; chơi &ndash; để sống. Tuy nhi&ecirc;n, lối sống bạo lực như vậy c&oacute; nghĩa l&agrave; hầu như kh&ocirc;ng một ai trong số họ thậm ch&iacute; sống l&acirc;u như vậy.</p>\r\n\r\n<p dir=\"ltr\">Tr&ecirc;n cả Keves v&agrave; Agnus đều tồn tại những đơn vị rất đặc biệt được gọi l&agrave; Off-Seers c&oacute; nhiệm vụ đưa linh hồn của những người l&iacute;nh đ&atilde; ng&atilde; xuống v&ugrave;ng đất vĩ đại th&ocirc;ng qua việc chơi một b&agrave;i h&aacute;t đặc biệt. Đoạn giới thiệu đầu ti&ecirc;n giới thiệu ch&uacute;ng ta đến với Noah, một Off-Seer thổi s&aacute;o phục vụ quốc gia Keves, trước khi giới thiệu Mio, một Off-Seer Agnian hiện đang ở tuổi thứ mười của c&ocirc; ấy.</p>\r\n\r\n<p dir=\"ltr\">Ngay sau khi tr&ograve; chơi được bắt đầu, Noah v&agrave; hai đồng minh của anh, Eunie v&agrave; Lanz, thấy m&igrave;nh bị cuốn v&agrave;o một trận chiến c&ograve;n lớn hơn trận chiến giữa Keves v&agrave; Agnus. Cuối c&ugrave;ng, bộ ba buộc phải hợp t&aacute;c với những kẻ th&ugrave; cũ của họ để c&oacute; thể đối mặt với một mối đe dọa lớn hơn, mặc d&ugrave; mối đe dọa đ&oacute; c&oacute; thể l&agrave; g&igrave; vẫn chưa r&otilde; r&agrave;ng.</p>', '2022-11-21 04:08:31', 0, 0, '2022-11-21 04:08:55'),
(9, 'Những phụ kiện cho PS5 không thể thiếu khi mua máy PS5 mà bạn nên dùng.', 'nhung-phu-kien-cho-ps5-khong-the-thieu-khi-mua-may-ps5-ma-ban-nen-dung', 0, 1, 6, 0, 'ay cầm DUALSENSE PS5', '2022-11-21__dualsense-wireless-controller-1-b45b4a1541534832be69a93c50f14ac7-1024x1024.webp', '<p>DualSense sở hữu ngoại h&igrave;nh kh&aacute; bắt mắt với những đường n&eacute;t mềm mại v&agrave; sang trọng. Chiếc tay cầm mới giờ đ&acirc;y đ&atilde; &ldquo;mập&rdquo; hơn, sở hữu 2 tone m&agrave;u chứ kh&ocirc;ng chỉ c&oacute; 1 như Dualshock 4. Light bar tr&ecirc;n&nbsp;DualSense&nbsp;sẽ chạy dọc theo viền hai b&ecirc;n của TouchPad nh&igrave;n rất đẹp. Vị tr&iacute; của cụm n&uacute;t tr&ecirc;n DualSense tr&ocirc;ng vẫn quen thuộc kh&ocirc;ng kh&aacute;c nhiều DualShock 4, ch&uacute;ng ta vẫn c&oacute; cụm n&uacute;t Dpad b&ecirc;n tr&aacute;i c&ugrave;ng cụm 4 n&uacute;t chức năng b&ecirc;n phải, v&agrave; hai cần analog thẳng h&agrave;ng với nhau. Sony n&oacute;i đ&oacute; vẫn sẽ l&agrave; những chi tiết được game thủ y&ecirc;u mến nhất ở DualShock 4, ch&uacute;ng ta kh&ocirc;ng cần phải tập l&agrave;m quen từ đầu với chiếc tay cầm mới. Nhưng kh&ocirc;ng chỉ c&oacute; thế,&nbsp;DualSense&nbsp;sẽ được trang bị rất nhiều c&ocirc;ng nghệ mới gi&uacute;p cho trải nghiệm game tr&ecirc;n&nbsp;PS5 trở n&ecirc;n ch&acirc;n thực hơn. Ngo&agrave;i ra tay cầm DUALSENSE PS5 c&ograve;n c&oacute; nhiều m&agrave;u kh&aacute;c để cho bạn lựa chọn cũng như thuận tiện cho việc trang tr&iacute; cho ng&ocirc;i nh&agrave; của bạn.</p>\r\n\r\n<p><img alt=\"Hình ảnh tay cầm DualSense Wireless Controller White\" src=\"https://file.hstatic.net/1000154920/file/dualsense_wireless_controller_1_b45b4a1541534832be69a93c50f14ac7_1024x1024.jpg\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"574\" src=\"https://www.youtube.com/embed/SebzB8W3bVU?feature=oembed\" title=\"DualSense Wireless Controller Video | PS5\" width=\"1020\"></iframe></p>\r\n\r\n<h2><strong>DUALSENSE CHARGING STATION&nbsp;</strong></h2>\r\n\r\n<p>Điều n&agrave;y mang lại cho bạn sự tiện lợi, tiết kiệm thời gian cũng như giảm bớt c&ocirc;ng suất cho&nbsp;<a href=\"https://34gameshop.vn/playstation-5-ps5/\" rel=\"noopener\" target=\"_blank\" title=\"Playstation 5\">Playstation 5</a>&nbsp;vốn dĩ sẽ chia 1 phần c&ocirc;ng suất nguồn để sạc cho tay cầm của bạn.</p>\r\n\r\n<p><img alt=\"Công năng của Dock Sạc tay cầm PS5\" src=\"https://file.hstatic.net/200000118207/file/k_sac_tay_cam_ps5_dualsense_charging_station_gia_re_gamestation_vn-002_9e165bb8cf7b4cdf8f47aecf1825b3f1_grande.jpg\" /></p>\r\n\r\n<p>Tiếp năng lượng ngay cho&nbsp;<a href=\"https://34gameshop.vn/playstation-5-ps5/may-game-ps5/phu-kien-ps5/\" title=\"Phụ kiện PS5\">tay cầm PS5</a>&nbsp;của bạn bằng Dock Sạc&nbsp;<a href=\"https://34gameshop.vn/playstation-5-ps5/may-game-ps5/phu-kien-ps5/\" title=\"Phụ kiện PS5\">tay cầm PS5</a>&nbsp;đang b&aacute;n tại&nbsp;<strong><a href=\"https://34gameshop.vn/\" title=\"Cửa hàng 34gameshop\">34gameshop</a>.</strong>&nbsp;Với thiết kế tinh tế, phụ kiện n&agrave;y sẽ gi&uacute;p g&oacute;c chơi game của bạn th&ecirc;m gọn g&agrave;ng v&agrave; đẹp mắt hơn hẳn. Sự tiện lợi n&oacute; mang lại cũng kh&ocirc;ng thể b&agrave;n c&atilde;i khi sạc được c&ugrave;ng l&uacute;c 2 tay PS5, kết nối v&ocirc; c&ugrave;ng dễ. Sản phẩm do ch&iacute;nh Sony sản xuất n&ecirc;n bạn cũng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về chất lượng.&nbsp;</p>', '2022-11-21 04:11:24', 1, 0, NULL),
(10, 'Bên trong SHOWROOM Bàn phím cơ Gearshop có gì?', 'ben-trong-showroom-ban-phim-co-gearshop-co-gi', 1, 1, 5, 0, 'Bên trong SHOWROOM Bàn phím cơ Gearshop có gì?', '2023-01-07__showroom-ban-phim-co-gearshop-11-2048x1365.jpg', '<div id=\"primary\" class=\"content-area\">\r\n		<main id=\"content\" class=\"site-content\" role=\"main\">\r\n			\r\n			<div id=\"content\" class=\"single\">\r\n\r\n				\r\n					<article id=\"post-2147\" class=\"post-2147 post type-post status-publish format-standard has-post-thumbnail hentry category-cam-nang-gaming-gear category-review-danh-gia tag-phong-phim-co tag-showroom-phim-co tag-top entry\" itemscope=\"itemscope\" itemtype=\"http://schema.org/BlogPosting\" itemprop=\"blogPost\">\r\n	\r\n	<h1 class=\"entry-title\" itemprop=\"headline\">Bên trong SHOWROOM Bàn phím cơ Gearshop có gì?</h1>\r\n			<div class=\"entry-meta clearfix\">\r\n\r\n			\r\n			\r\n			\r\n							<span class=\"entry-date\">\r\n					<time class=\"published\" datetime=\"2022-12-05T17:10:36+07:00\" itemprop=\"datePublished\">\r\n						Tháng Mười Hai 5, 2022 5:10 chiều					</time>\r\n				</span>\r\n			\r\n			\r\n		</div>\r\n	\r\n	\r\n	<div class=\"entry-content\" itemprop=\"articleBody\">\r\n		<p><span style=\"font-weight: 400;\">Mua đồ công nghệ nói chung hay mua bàn phím cơ nói riêng không thể chỉ thông qua các thông tin review trên Youtube hay Facebook. Người dùng thường sẽ có xu hướng trải nghiệm trực tiếp để có thể chọn được sản phẩm mà mình ưng ý và xứng đáng với mức tiền mà mình bỏ ra nhất.</span></p>\r\n<p><span style=\"font-weight: 400;\">Hiểu được những vấn đề trên, Gearshop đã khai trương SHOWROOM Bàn phím cơ </span><b>với hơn 100 mẫu bàn phím cơ </b><span style=\"font-weight: 400;\">đến từ nhiều thương hiệu nổi bật tại thị trường phím cơ Việt Nam như: AKKO, IQUNIX, Leopold, Vortex, Newmen, E-DRA, Ducky,…</span></p>\r\n<p><span style=\"font-weight: 400;\">Vậy bên </span><b>bên trong SHOWROOM Bàn phím cơ Gearshop có gì? </b><span style=\"font-weight: 400;\">Cùng Gearshop dạo qua một vòng nhé!</span></p>\r\n<p><img decoding=\"async\" class=\"alignnone size-full wp-image-2148\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-11-scaled.jpg\" alt=\"\" width=\"2560\" height=\"1707\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-11-scaled.jpg 2560w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-11-768x512.jpg 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-11-1536x1024.jpg 1536w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-11-2048x1365.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\"></p>\r\n<div id=\"toc_container\" class=\"toc_light_blue no_bullets\"><p class=\"toc_title\">Mục Lục <span class=\"toc_toggle\">[<a href=\"#\">hide</a>]</span></p><ul class=\"toc_list\"><li><a href=\"#Vi_tri_cua_SHOWROOM_Ban_phim_co\"><span class=\"toc_number toc_depth_1\">1</span> Vị trí của SHOWROOM Bàn phím cơ</a></li><li><a href=\"#Tai_sao_ban_nen_trai_nghiem_SHOWROOM_Ban_phim_co_Gearshop\"><span class=\"toc_number toc_depth_1\">2</span> Tại sao bạn nên trải nghiệm SHOWROOM Bàn phím cơ Gearshop?</a><ul><li><a href=\"#Hon_100_san_pham_ban_phim\"><span class=\"toc_number toc_depth_2\">2.1</span> Hơn 100 sản phẩm bàn phím</a></li><li><a href=\"#Hon_10_thuong_hieu_ban_phim_co\"><span class=\"toc_number toc_depth_2\">2.2</span> Hơn 10 thương hiệu bàn phím cơ</a></li><li><a href=\"#Trai_nghiem_Custom_phim_co\"><span class=\"toc_number toc_depth_2\">2.3</span> Trải nghiệm Custom phím cơ</a></li><li><a href=\"#Nhan_vien_co_chuyen_mon\"><span class=\"toc_number toc_depth_2\">2.4</span> Nhân viên có chuyên môn</a></li><li><a href=\"#Hoan_toan_mien_phi\"><span class=\"toc_number toc_depth_2\">2.5</span> Hoàn toàn miễn phí</a></li></ul></li><li><a href=\"#Tong_ket\"><span class=\"toc_number toc_depth_1\">3</span> Tổng kết</a></li></ul></div>\r\n<h2><span id=\"Vi_tri_cua_SHOWROOM_Ban_phim_co\"><b>Vị trí của SHOWROOM Bàn phím cơ</b></span></h2>\r\n<p><img decoding=\"async\" loading=\"lazy\" class=\"alignnone size-full wp-image-2151\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-2.png\" alt=\"\" width=\"1072\" height=\"1791\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-2.png 1072w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-2-768x1283.png 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-2-919x1536.png 919w\" sizes=\"(max-width: 1072px) 100vw, 1072px\"></p>\r\n<p><span style=\"font-weight: 400;\">Hiện tại </span><b>SHOWROOM Bàn phím cơ </b><span style=\"font-weight: 400;\">nằm ở lầu 2, tại cửa hàng Gearshop ở địa chỉ</span><b> 52 Trần Minh Quyền, phường 11, quận 10, TP HCM. </b><span style=\"font-weight: 400;\">Khi bạn đến trực tiếp tại Gearshop, bạn có thể liên hệ với nhân viên tư vấn để được hỗ trợ đưa lên </span><b>Phòng phím cơ ở lầu 2.</b></p>\r\n<h2><span id=\"Tai_sao_ban_nen_trai_nghiem_SHOWROOM_Ban_phim_co_Gearshop\"><b>Tại sao bạn nên trải nghiệm SHOWROOM Bàn phím cơ Gearshop?</b></span></h2>\r\n<p><img decoding=\"async\" loading=\"lazy\" class=\"alignnone size-full wp-image-2149\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-1.jpg\" alt=\"\" width=\"2048\" height=\"1365\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-1.jpg 2048w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-1-768x512.jpg 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-1-1536x1024.jpg 1536w\" sizes=\"(max-width: 2048px) 100vw, 2048px\"></p>\r\n<p><span style=\"font-weight: 400;\">Điều quan trọng mà người dùng thường quan tâm là họ sẽ nhận được những gì khi phải bỏ thời gian ra để làm một việc gì đó. Ví dụ như việc nghiên cứu về một chiếc bàn phím bạn đang nhắm đến chẳng hạn, liệu nó có ngon như các reviewer đã review, hay còn những sản phẩm nào ngon hơn trong tầm giá mà bạn chưa biết đến? Đó là lý do tại bạn nên </span><b>trải nghiệm SHOWROOM Bàn phím cơ Gearshop?</b></p>\r\n<h3><span id=\"Hon_100_san_pham_ban_phim\"><b>Hơn 100 sản phẩm bàn phím</b></span></h3>\r\n<p><img decoding=\"async\" loading=\"lazy\" class=\"alignnone size-full wp-image-2150\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-2.jpg\" alt=\"\" width=\"2048\" height=\"1365\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-2.jpg 2048w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-2-768x512.jpg 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-2-1536x1024.jpg 1536w\" sizes=\"(max-width: 2048px) 100vw, 2048px\"></p>\r\n<p><span style=\"font-weight: 400;\">Tại </span><b>SHOWROOM Bàn phím cơ Gearshop </b><span style=\"font-weight: 400;\">bạn sẽ được trải nghiệm trực tiếp hơn 100 sản phẩm bàn phím cơ với các Model mới nhất đến từ nhiều brand phím cơ khác nhau.</span></p>\r\n<p><span style=\"font-weight: 400;\">Tại đây, bạn có thể </span><b>trải nghiệm trực tiếp </b><span style=\"font-weight: 400;\">cảm giác gõ của nhiều loại switch khác nhau mà không seller nào có thể tư vấn được cho bạn cả, bởi vì việc trải nghiệm trực tiếp sẽ đem đến cảm giác chân thực hơn là việc nghe tư vấn.</span></p>\r\n<p><span style=\"font-weight: 400;\">Có những mẫu bàn phím nào đang được trưng bày? Bạn sẽ được trải nghiệm từ từng chiếc </span><a href=\"https://gearshop.vn/ban-phim\"><b>bàn phím cơ</b></a><span style=\"font-weight: 400;\">, </span><a href=\"https://gearshop.vn/kit-phim-co\"><b>kit bàn phím cơ</b></a><span style=\"font-weight: 400;\">, </span><a href=\"https://gearshop.vn/switch\"><b>switch phím cơ</b></a><span style=\"font-weight: 400;\">, </span><a href=\"https://gearshop.vn/keycap-610\"><b>keycap phím cơ</b></a><span style=\"font-weight: 400;\">…<br>\r\n</span><span style=\"font-weight: 400;\">Những mẫu bàn phím nổi bật bạn nên trải nghiệm tại Gearshop là:</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">AKKO PC75B Year Of Tiger</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">AKKO ACR Pro Alice Plus&nbsp;</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Vortex 8700 Dolch</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">IQUNIX F97 Typing Lab</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">IQUNIX OG80 Formula</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">IQUNIX ZX75 Gravity Wave</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">FL-Esport FL680SAM White Yellow</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3><span id=\"Hon_10_thuong_hieu_ban_phim_co\"><b>Hơn 10 thương hiệu bàn phím cơ</b></span></h3>\r\n<p><img decoding=\"async\" loading=\"lazy\" class=\"alignnone size-full wp-image-2152\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-3.jpg\" alt=\"\" width=\"2048\" height=\"2048\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-3.jpg 2048w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-3-100x100.jpg 100w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-3-768x768.jpg 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-3-1536x1536.jpg 1536w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-3-160x160.jpg 160w\" sizes=\"(max-width: 2048px) 100vw, 2048px\"></p>\r\n<p><b>SHOWROOM Bàn phím cơ Gearshop </b><span style=\"font-weight: 400;\">hiện đang trưng bày hơn 100 bàn phím cơ đến từ hơn 10 thương hiệu bàn phím cơ nổi bật nhất tại thị trường bàn phím cơ Việt Nam.</span></p>\r\n<p><span style=\"font-weight: 400;\">Các thương hiệu bàn phím sẽ được trải từ Trung cấp đến Cao cấp nhất, và các thương hiệu bàn phím sẽ được trưng bày theo từng khu vực để khách hàng có thể dễ dàng nhận biết.<br>\r\n</span><span style=\"font-weight: 400;\">Các thương hiệu bàn phím cơ nổi bật đang được trưng bày tại Gearshop như:</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">IQUNIX</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Vortex</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Mistel</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Ducky</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">IKBC</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">AKKO</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">FL-Esports</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">E-DRA</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Newmen</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3><span id=\"Trai_nghiem_Custom_phim_co\"><b>Trải nghiệm Custom phím cơ</b></span></h3>\r\n<p><img decoding=\"async\" loading=\"lazy\" class=\"alignnone size-full wp-image-2153\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-4-scaled.jpg\" alt=\"\" width=\"2560\" height=\"1707\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-4-scaled.jpg 2560w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-4-768x512.jpg 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-4-1536x1024.jpg 1536w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-4-2048x1365.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\"></p>\r\n<p><a href=\"https://news.gearshop.vn/kit-custom-ban-phim-co-la-gi/\"><b>Custom bàn phím cơ</b></a> <span style=\"font-weight: 400;\">có lẽ là khái niệm không còn quá xa lạ với người chơi bàn phím cơ hiện nay. Những vật dụng </span><b>hỗ trợ cho custom, </b><span style=\"font-weight: 400;\">cũng như những sản phẩm để </span><b>custom phím cơ </b><span style=\"font-weight: 400;\">đều được trưng bày tại </span><b>SHOWROOM Bàn phím cơ Gearshop – </b><span style=\"font-weight: 400;\">những sản phẩm này sẽ được trưng bày thành một khu vực riêng biệt, có bàn, ghế để khách hàng có thể ngồi trải nghiệm trực tiếp.</span></p>\r\n<ul>\r\n<li aria-level=\"1\"><b>Sản phẩm Custom phím cơ:</b></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">Là những sản phẩm như: Kit phím cơ, Switch phím cơ, Keycap phím cơ, Foam lót phím cơ… Khi đến khu vực này, bạn có thể trải nghiệm trực tiếp quá trình hoàn thiện một chiếc bàn phím cơ như thế nào, từ lót foam cho đến gắn switch và keycap vào phím. Đương nhiên là bạn có thể trải nghiệm để chọn ra được sản phẩm mà bạn mong muốn, sau đó mới hoàn thiện bàn phím.</span></p>\r\n<p><img decoding=\"async\" loading=\"lazy\" class=\"alignnone size-full wp-image-2155\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-6-scaled.jpg\" alt=\"\" width=\"2560\" height=\"1707\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-6-scaled.jpg 2560w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-6-768x512.jpg 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-6-1536x1024.jpg 1536w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-6-2048x1365.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\"></p>\r\n<ul>\r\n<li aria-level=\"1\"><b>Vật dụng hỗ trợ cho custom phím cơ</b></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">Việc custom phím cơ không dừng lại ở việc chỉ gắn foam, switch, keycap vào phím… mà nó còn có nhiều khái niệm hơn nữa như: Lube switch, lube stab, lube lò xo, cân wire, lót foam…&nbsp; Tại đây, bạn sẽ được trải nghiệm trực tiếp việc lube switch, lube stab, lót foam… với đầy đủ dụng cụ như thế nào từ các bạn nhân viên tư vấn tại Gearshop</span></p>\r\n<p><img decoding=\"async\" loading=\"lazy\" class=\"alignnone size-full wp-image-2156\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-7-scaled.jpg\" alt=\"\" width=\"2560\" height=\"1707\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-7-scaled.jpg 2560w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-7-768x512.jpg 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-7-1536x1024.jpg 1536w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-7-2048x1365.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\"></p>\r\n<p><span style=\"font-weight: 400;\">Mọi quá trình bạn đều có thể ngồi trên ghế Sofa êm ái với chiếc bàn trắng trước mặt.</span></p>\r\n<h3><span id=\"Nhan_vien_co_chuyen_mon\"><b>Nhân viên có chuyên môn</b></span></h3>\r\n<p><span style=\"font-weight: 400;\">Nếu bạn vẫn còn là một “gà mờ”, thì đừng lo, với đội ngũ có kinh nghiệm chuyên nghiệp về bàn phím cơ, khi đến </span><b>SHOWROOM Bàn phím cơ Gearshop </b><span style=\"font-weight: 400;\">bạn chỉ cần nói ra nhu cầu của mình và mức giá bạn mong muốn, bạn có thể có được những gợi ý về các sản phẩm phù hợp, cũng như trải nghiệm trực tiếp các sản phẩm đó.</span></p>\r\n<p><img decoding=\"async\" loading=\"lazy\" class=\"alignnone size-full wp-image-2159\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-10-scaled.jpg\" alt=\"\" width=\"2560\" height=\"1707\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-10-scaled.jpg 2560w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-10-768x512.jpg 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-10-1536x1024.jpg 1536w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-10-2048x1365.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\"></p>\r\n<p><span style=\"font-weight: 400;\">Ngoài ra, nếu bạn muốn “gia nhập bộ môn custom” bạn hoàn toàn có thể đến Gearshop để được hỗ trợ, hướng dẫn tận tình cùng những vật dụng đã được trang bị sẵn ở Showroom, đảm bảo bạn sẽ “pro” hơn sau khóa học đó.</span></p>\r\n<h3><span id=\"Hoan_toan_mien_phi\"><b>Hoàn toàn miễn phí</b></span></h3>\r\n<p><img decoding=\"async\" loading=\"lazy\" class=\"alignnone size-full wp-image-2158\" src=\"http://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-9-scaled.jpg\" alt=\"\" width=\"2560\" height=\"1707\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-9-scaled.jpg 2560w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-9-768x512.jpg 768w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-9-1536x1024.jpg 1536w, https://news.gearshop.vn/wp-content/uploads/2022/12/SHOWROOM-Ban-phim-co-Gearshop-9-2048x1365.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\"></p>\r\n<p><span style=\"font-weight: 400;\">Với mong muốn đem đến cho anh em một sân chơi, nơi giao lưu, học hỏi về những sản phẩm bàn phím cơ. Khi trải nghiệm tại </span><b>SHOWROOM Bàn phím cơ Gearshop </b><span style=\"font-weight: 400;\">bạn sẽ không bị mất một chi phí nào ngoài việc bạn quyết định xuống tay mua phím.</span></p>\r\n<p>Ngoài ra, khi bạn mua kit phím cơ và cần được hỗ trợ build Switch và Keycap, Gearshop cũng sẽ hỗ trợ bạn lắp switch và keycap <strong>hoàn toàn miễn phí</strong></p>\r\n<h2><span id=\"Tong_ket\"><b>Tổng kết</b></span></h2>\r\n<p><span style=\"font-weight: 400;\">Nếu bạn đang phân vân về những chiếc bàn phím đang nằm trong dự định của bạn. Đừng ngần ngại mà lên xe đi đến </span><b>SHOWROOM Bàn phím cơ Gearshop. </b><span style=\"font-weight: 400;\">Không còn điều gì tuyệt vời hơn việc trải nghiệm trực tiếp cả.</span></p>\r\n<p><span style=\"font-weight: 400;\">Đến ngay Showroom Gearshop nha:</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Địa chỉ: 52 Trần Minh Quyền, P11, Q.10, TP.HCM</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Hotline: 0.888.000.112 – 0.889.575.775</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Thời gian mở cửa: 10h00 – 19h00</span></li>\r\n</ul>\r\n<p><div class=\"fluid-width-video-wrapper\" style=\"padding-top: 56.3235%;\"><iframe loading=\"lazy\" title=\"CÙNG GEARSHOP TRẢI NGHIỆM SHOWROOM PHÍM CƠ LỚN THỨ 2 TẠI VIỆT NAM !!!\" src=\"https://www.youtube.com/embed/MIr5sLAFfLI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" name=\"fitvid0\"></iframe></div></p>\r\n			</div><!-- .entry-content -->\r\n\r\n	\r\n	\r\n		<div class=\"related-posts\">\r\n			<h3 class=\"block-title\">Related Posts</h3>\r\n			<ul class=\"clearfix\">\r\n									<li>\r\n													<a href=\"https://news.gearshop.vn/asrock-ra-mat-vga-radeon-rx-7900-khai-pha-dinh-cao-suc-manh/\"><img width=\"350\" height=\"210\" src=\"https://news.gearshop.vn/wp-content/uploads/2022/12/ASrock-ra-mat-VGA-Radeon-RX-7900-1-350x210.jpg\" class=\"entry-thumbnail wp-post-image\" alt=\"ASrock ra mắt VGA Radeon RX 7900 – Khai phá đỉnh cao sức mạnh\" decoding=\"async\" loading=\"lazy\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/12/ASrock-ra-mat-VGA-Radeon-RX-7900-1-350x210.jpg 350w, https://news.gearshop.vn/wp-content/uploads/2022/12/ASrock-ra-mat-VGA-Radeon-RX-7900-1-140x85.jpg 140w\" sizes=\"(max-width: 350px) 100vw, 350px\" itemprop=\"image\"></a>\r\n												<h2 class=\"entry-title\"><a href=\"https://news.gearshop.vn/asrock-ra-mat-vga-radeon-rx-7900-khai-pha-dinh-cao-suc-manh/\" rel=\"bookmark\">ASrock ra mắt VGA Radeon RX 7900 – Khai phá đỉnh cao sức mạnh</a></h2>													<div class=\"entry-summary\">\r\n								Mục Lục1 Dòng Card đồ họa mở…							</div>\r\n											</li>\r\n									<li>\r\n													<a href=\"https://news.gearshop.vn/so-sanh-vortex-bt66-vs-leopold-fc660m/\"><img width=\"350\" height=\"210\" src=\"https://news.gearshop.vn/wp-content/uploads/2022/10/review-vortex-bt66-va-leopold-fc660m-bt-31-350x210.jpg\" class=\"entry-thumbnail wp-post-image\" alt=\"So sánh Vortex BT66 vs Leopold FC660M – Leopold nay đã có đối thủ\" decoding=\"async\" loading=\"lazy\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/10/review-vortex-bt66-va-leopold-fc660m-bt-31-350x210.jpg 350w, https://news.gearshop.vn/wp-content/uploads/2022/10/review-vortex-bt66-va-leopold-fc660m-bt-31-140x85.jpg 140w\" sizes=\"(max-width: 350px) 100vw, 350px\" itemprop=\"image\"></a>\r\n												<h2 class=\"entry-title\"><a href=\"https://news.gearshop.vn/so-sanh-vortex-bt66-vs-leopold-fc660m/\" rel=\"bookmark\">So sánh Vortex BT66 vs Leopold FC660M – Leopold nay đã có đối thủ</a></h2>													<div class=\"entry-summary\">\r\n								Leopold luôn tự hào là một thương…							</div>\r\n											</li>\r\n									<li>\r\n													<a href=\"https://news.gearshop.vn/review-fl-esports-q75-transparent/\"><img width=\"350\" height=\"210\" src=\"https://news.gearshop.vn/wp-content/uploads/2022/10/Review-FL-Esports-Q75-Transparent-5-350x210.jpg\" class=\"entry-thumbnail wp-post-image\" alt=\"Review FL-Esports Q75 Transparent – Siêu khó hiểu đến từ vị trí FL-Esport\" decoding=\"async\" loading=\"lazy\" srcset=\"https://news.gearshop.vn/wp-content/uploads/2022/10/Review-FL-Esports-Q75-Transparent-5-350x210.jpg 350w, https://news.gearshop.vn/wp-content/uploads/2022/10/Review-FL-Esports-Q75-Transparent-5-140x85.jpg 140w\" sizes=\"(max-width: 350px) 100vw, 350px\" itemprop=\"image\"></a>\r\n												<h2 class=\"entry-title\"><a href=\"https://news.gearshop.vn/review-fl-esports-q75-transparent/\" rel=\"bookmark\">Review FL-Esports Q75 Transparent – Siêu khó hiểu đến từ vị trí FL-Esport</a></h2>													<div class=\"entry-summary\">\r\n								Vừa qua, cộng đồng bàn phím cơ…							</div>\r\n											</li>\r\n							</ul>\r\n		</div>\r\n\r\n		\r\n</article><!-- #post-## -->\r\n\r\n					\r\n<div id=\"comments\" class=\"comments-area post-comment\">\r\n\r\n	\r\n	\r\n	\r\n		<div id=\"respond\" class=\"comment-respond\">\r\n		<h3 id=\"reply-title\" class=\"comment-reply-title\">Leave a Reply <small><a rel=\"nofollow\" id=\"cancel-comment-reply-link\" href=\"/ben-trong-showroom-ban-phim-co-gearshop-co-gi/#respond\" style=\"display:none;\">Hủy</a></small></h3><form action=\"https://news.gearshop.vn/wp-comments-post.php\" method=\"post\" id=\"commentform\" class=\"comment-form\" novalidate=\"\"><p class=\"comment-form-comment\"><label for=\"comment\">Bình luận <span class=\"required\">*</span></label> <textarea id=\"comment\" name=\"comment\" cols=\"45\" rows=\"8\" maxlength=\"65525\" required=\"\"></textarea></p><p class=\"comment-form-author\"><input class=\"txt\" id=\"author\" name=\"author\" type=\"text\" value=\"\" size=\"30\" placeholder=\"Name *\" aria-required=\"true\"></p>\r\n<p class=\"comment-form-email\"><input class=\"txt\" id=\"email\" name=\"email\" type=\"email\" value=\"\" size=\"30\" placeholder=\"Email *\" aria-required=\"true\"></p>\r\n<p class=\"comment-form-url\"><input class=\"txt\" id=\"url\" name=\"url\" type=\"url\" value=\"\" size=\"30\" placeholder=\"Website\"></p>\r\n<p class=\"comment-form-cookies-consent\"><input id=\"wp-comment-cookies-consent\" name=\"wp-comment-cookies-consent\" type=\"checkbox\" value=\"yes\"> <label for=\"wp-comment-cookies-consent\">Lưu tên của tôi, email, và trang web trong trình duyệt này cho lần bình luận kế tiếp của tôi.</label></p>\r\n<p class=\"form-submit\"><input name=\"submit\" type=\"submit\" id=\"submit\" class=\"submit\" value=\"Phản hồi\"> <input type=\"hidden\" name=\"comment_post_ID\" value=\"2147\" id=\"comment_post_ID\">\r\n<input type=\"hidden\" name=\"comment_parent\" id=\"comment_parent\" value=\"0\">\r\n</p><p class=\"comment-form-desc\">Your email address will not be published. Required fields are marked *</p><p class=\"form-submit-clone\"><button class=\"btn\" name=\"submit\" type=\"submit\" id=\"submit\">Post Comment</button></p></form>	</div><!-- #respond -->\r\n	\r\n</div><!-- #comments -->\r\n					\r\n	<div class=\"post-nav clearfix\">\r\n		<span class=\"nav-previous\">← <a href=\"https://news.gearshop.vn/asrock-ra-mat-bo-mach-chu-z790-pg-sonic/\" rel=\"prev\">ASRock ra mắt Bo mạch chủ Z790 PG SONIC</a></span>		<span class=\"nav-next\"><a href=\"https://news.gearshop.vn/asrock-ra-mat-vga-radeon-rx-7900-khai-pha-dinh-cao-suc-manh/\" rel=\"next\">ASrock ra mắt VGA Radeon RX 7900 – Khai phá đỉnh cao sức mạnh</a> →</span>	</div><!-- .post-nav -->\r\n\r\n\r\n				\r\n			</div>\r\n\r\n		</main><!-- #main -->\r\n	</div>', '2023-01-07 10:17:35', 0, 1, '2023-01-07 10:17:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(8, 'Linh kiện PC', 'linh-kien-pc', 1, 17, '2022-11-21 04:13:06', '2023-01-07 12:17:46'),
(9, 'Phụ Kiện Pc', 'phu-kien-pc', 2, 24, '2022-11-21 04:13:42', '2023-01-07 12:18:09'),
(10, 'Ghế Gaming', 'ghe-gaming', 3, 22, '2022-11-21 04:13:59', '2023-01-07 12:17:34'),
(11, 'Tay cầm', 'tay-cam', 2, 30, '2022-11-21 04:14:36', '2023-01-07 12:17:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(17, 'Linh kiện PC', 'linh-kien', '2022-11-21__ban-phim.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:25:44', '2022-11-21 02:27:41'),
(18, 'Bàn Phím', 'ban-phim', '2022-11-21__ban-phim.png', NULL, NULL, 16, 0, 1, '2022-11-21 02:25:44', '2022-11-21 02:27:41'),
(19, 'Chuột', 'chuot', '2022-11-21__chuot.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:28:08', NULL),
(20, 'Tai Nghe', 'tai-nghe', '2022-11-21__tai-nghe.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:28:34', NULL),
(21, 'Màn Hình', 'man-hinh', '2022-11-21__man-hinh.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:28:48', NULL),
(22, 'Ghế Gaming', 'ghe-gaming', '2022-11-21__ghe-gaming.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:32:54', '2022-11-21 02:34:51'),
(23, 'Bàn Gaming', 'ban-gaming', '2022-11-21__ban-gaming.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:36:00', NULL),
(24, 'VGA', 'vga', '2022-11-21__vga.png', NULL, NULL, 17, 0, 1, '2022-11-21 02:36:34', NULL),
(25, 'Mainboard', 'mainboard', '2022-11-21__mainboard.png', NULL, NULL, 17, 0, 1, '2022-11-21 02:36:52', NULL),
(26, 'Lót chuột', 'lot-chuot', '2022-11-21__lot-chuot.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:37:51', '2022-11-21 02:38:36'),
(27, 'Ổ SSD', 'o-ssd', '2022-11-21__o-ssd.png', NULL, NULL, 17, 0, 1, '2022-11-21 02:40:07', NULL),
(28, 'Ổ HHD', 'o-hhd', '2022-11-21__o-hhd.png', NULL, NULL, 17, 0, 1, '2022-11-21 02:40:26', NULL),
(29, 'Vỏ Case', 'vo-case', '2022-11-21__vo-case.png', NULL, NULL, 17, 0, 1, '2022-11-21 02:40:37', NULL),
(30, 'Tay Cầm', 'tay-cam', '2022-11-21__tay-cam.jpg', NULL, NULL, 0, 0, 1, '2022-11-21 02:41:46', '2022-11-21 02:44:02'),
(31, 'RAM', 'ram', '2022-11-21__ram.png', NULL, NULL, 17, 0, 1, '2022-11-21 02:44:25', NULL),
(32, 'CPU', 'cpu', '2022-11-21__cpu.png', NULL, NULL, 17, 0, 1, '2022-11-21 02:44:40', NULL),
(33, 'Quạt Tản Nhiệt', 'quat-tan-nhiet', '2022-11-21__quat-tan-nhiet.png', NULL, NULL, 17, 0, 1, '2022-11-21 02:45:03', NULL),
(34, 'Màn hình Asus', 'man-hinh-asus', '2022-11-21__quat-tan-nhiet.png', NULL, NULL, 21, 0, 1, '2022-11-21 02:45:03', NULL),
(35, 'Màn hình Dell', 'man-hinh-dell', '2022-11-21__quat-tan-nhiet.png', NULL, NULL, 21, 0, 1, '2022-11-21 02:45:03', NULL),
(36, 'Ghế Corsair', 'ghe-corsair', '2022-11-21__quat-tan-nhiet.png', NULL, NULL, 22, 0, 1, '2022-11-21 02:45:03', NULL),
(37, 'Ghế Razer', 'ghe-razer', '2022-11-21__quat-tan-nhiet.png', NULL, NULL, 22, 0, 1, '2022-11-21 02:45:03', NULL),
(38, 'Bàn E-Dra', 'ban-edra', '2022-11-21__quat-tan-nhiet.png', NULL, NULL, 23, 0, 1, '2022-11-21 02:45:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(9, NULL, NULL, 'phiên bản game hay', 0, 2, 0, 23, 0, 0, '2022-11-23 14:22:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_5` tinyint(4) DEFAULT 0,
  `e_position_6` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_position_5`, `e_position_6`, `created_at`, `updated_at`) VALUES
(1, 'event1', '2022-11-21__1.jpg', 'https://www.google.com/', 1, 0, 0, 0, 0, 0, '2022-11-21 03:05:11', '2022-11-21 03:05:11'),
(2, 'event2', '2022-11-21__av-banner-new-1200x1200-crop-center.webp', '/', 0, 0, 0, 0, 0, 0, '2022-11-21 04:26:06', '2022-11-21 04:26:06'),
(3, 'event3', '2022-11-21__pexels-photo-11591876.jpeg', '/', 0, 0, 1, 0, 0, 0, '2022-11-21 04:27:27', '2022-11-21 04:27:27'),
(4, 'event4', '2022-11-21__237b8e8540e411086d3a9cc634a64321.png', '/', 0, 0, 0, 1, 0, 0, '2022-11-21 04:27:07', '2022-11-21 04:27:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_histories`
--

CREATE TABLE `import_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `thanhtoan` bigint(20) DEFAULT 0,
  `id_invoice` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `import_histories`
--

INSERT INTO `import_histories` (`id`, `thanhtoan`, `id_invoice`, `created_at`, `updated_at`) VALUES
(1, 12500000, 1, '2020-07-17 07:49:47', '2020-07-17 07:49:47'),
(2, 5000000, 2, '2020-07-17 12:24:30', '2020-07-17 12:24:30'),
(3, 0, 3, '2020-07-17 12:24:30', '2020-07-17 12:24:30'),
(4, 5250000, 4, '2020-07-17 12:24:30', '2020-07-17 12:24:30'),
(5, NULL, 3, '2020-07-17 12:26:29', '2020-07-17 12:26:29'),
(6, 0, 5, '2020-07-17 12:27:22', '2020-07-17 12:27:22'),
(7, 1500000, 5, '2020-07-17 12:27:40', '2020-07-17 12:27:40'),
(8, 0, 6, '2020-07-17 12:28:37', '2020-07-17 12:28:37'),
(9, 4000000, 6, '2020-07-17 12:28:48', '2020-07-17 12:28:48'),
(10, 1000000, 7, '2020-07-17 18:13:51', '2020-07-17 18:13:51'),
(11, 500000, 7, '2020-07-17 18:14:22', '2020-07-17 18:14:22'),
(12, 900000, 8, '2020-07-20 08:31:12', '2020-07-20 08:31:12'),
(13, 0, 9, '2020-07-22 10:36:30', '2020-07-22 10:36:30'),
(14, 0, 10, '2020-07-22 10:36:30', '2020-07-22 10:36:30'),
(15, 50000, 21, '2021-01-11 18:19:05', '2021-01-11 18:19:05'),
(30, 20000, 13, '2021-01-11 18:39:24', '2021-01-11 18:39:24'),
(31, 0, 22, '2021-01-12 08:05:54', '2021-01-12 08:05:54'),
(32, 40000, 22, '2021-01-12 09:50:00', '2021-01-12 09:50:00'),
(33, 0, 22, '2021-01-12 10:16:26', '2021-01-12 10:16:26'),
(34, 0, 23, '2021-01-12 10:16:58', '2021-01-12 10:16:58'),
(35, 0, 22, '2021-01-12 10:20:52', '2021-01-12 10:20:52'),
(36, 0, 23, '2021-01-12 10:21:11', '2021-01-12 10:21:11'),
(37, 0, 24, '2021-01-12 10:21:20', '2021-01-12 10:21:20'),
(38, 0, 25, '2021-01-12 10:24:20', '2021-01-12 10:24:20'),
(39, 0, 26, '2021-01-12 10:25:23', '2021-01-12 10:25:23'),
(40, 0, 28, '2021-01-12 10:47:31', '2021-01-12 10:47:31'),
(41, 0, 29, '2021-01-12 10:48:06', '2021-01-12 10:48:06'),
(42, 0, 30, '2021-01-12 11:26:29', '2021-01-12 11:26:29'),
(43, 0, 31, '2021-01-13 18:21:55', '2021-01-13 18:21:55'),
(44, 0, 32, '2021-01-13 18:55:58', '2021-01-13 18:55:58'),
(45, 0, 33, '2021-01-13 19:01:05', '2021-01-13 19:01:05'),
(46, 0, 34, '2021-01-14 08:40:58', '2021-01-14 08:40:58'),
(47, 40000, 35, '2021-01-14 11:57:42', '2021-01-14 11:57:42'),
(48, 90000, 36, '2021-01-23 18:52:29', '2021-01-23 18:52:29'),
(49, -320000, 37, '2021-01-23 18:53:58', '2021-01-23 18:53:58'),
(50, 0, 38, '2021-01-23 18:54:10', '2021-01-23 18:54:10'),
(51, 0, 39, '2021-01-23 18:54:21', '2021-01-23 18:54:21'),
(52, 0, 40, '2021-01-23 18:54:58', '2021-01-23 18:54:58'),
(53, 500000, 41, '2021-11-26 07:56:44', '2021-11-26 07:56:44'),
(54, 200000, 41, '2021-11-26 08:01:57', '2021-11-26 08:01:57'),
(55, 40000, 40, '2021-11-27 12:38:20', '2021-11-27 12:38:20'),
(56, 800000, 42, '2021-11-27 12:53:40', '2021-11-27 12:53:40'),
(57, 1000000, 43, '2022-11-23 14:27:34', '2022-11-23 14:27:34'),
(58, 700000, 44, '2022-11-23 14:42:25', '2022-11-23 14:42:25'),
(59, 2640000, 45, '2023-01-07 12:53:14', '2023-01-07 12:53:14'),
(60, 440000000, 46, '2023-01-07 12:55:55', '2023-01-07 12:55:55'),
(61, 100000000, 47, '2023-01-07 13:06:51', '2023-01-07 13:06:51'),
(62, 10000000, 48, '2023-01-07 13:30:01', '2023-01-07 13:30:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_entered`
--

CREATE TABLE `invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NgaySX` datetime DEFAULT current_timestamp(),
  `Hansudung` datetime DEFAULT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT 0,
  `ie_status` tinyint(4) NOT NULL DEFAULT 0,
  `ie_total_money` int(11) NOT NULL DEFAULT 0,
  `ie_product_id` int(11) NOT NULL DEFAULT 0,
  `ie_number` int(11) NOT NULL DEFAULT 0,
  `ie_number_sold` int(11) NOT NULL DEFAULT 0,
  `ie_money` int(11) NOT NULL DEFAULT 0,
  `ie_the_advance` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_entered`
--

INSERT INTO `invoice_entered` (`id`, `NgaySX`, `Hansudung`, `ie_suppliere`, `ie_status`, `ie_total_money`, `ie_product_id`, `ie_number`, `ie_number_sold`, `ie_money`, `ie_the_advance`, `created_at`, `updated_at`) VALUES
(1, '2020-07-18 00:00:00', NULL, 3, 0, 12500000, 1, 50, 2, 250000, 12500000, '2020-07-17 14:49:47', '2021-01-06 12:30:51'),
(2, '2020-07-18 00:00:00', NULL, 3, 0, 5000000, 4, 100, 5, 50000, 5000000, '2020-07-17 19:24:29', '2021-01-09 17:31:48'),
(5, '2020-07-18 00:00:00', NULL, 3, 0, 3000000, 3, 60, 8, 50000, 1500000, '2020-07-17 19:27:22', '2021-11-27 12:45:20'),
(6, NULL, NULL, 4, 0, 6250000, 2, 250, 9, 25000, 4000000, '2020-07-17 19:28:37', '2022-11-23 14:33:44'),
(7, NULL, NULL, 3, 0, 1800000, 6, 60, 0, 30000, 1500000, '2020-07-18 01:13:50', '2020-07-18 01:14:22'),
(8, '2020-07-22 00:00:00', '2021-04-17 00:00:00', 3, 0, 900000, 7, 10, 0, 90000, 900000, '2020-07-20 15:31:12', '2020-07-20 15:31:12'),
(9, '2020-07-24 00:00:00', '2020-07-24 00:00:00', 3, 0, 500000, 3, 10, 0, 50000, 0, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(10, NULL, NULL, 3, 0, 150000, 3, 15, 0, 10000, 0, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(11, '2021-01-03 00:00:00', '2021-01-03 00:00:00', 3, 0, 300000, 8, 6, 0, 50000, 50000, '2021-01-03 12:48:11', '2021-01-03 12:48:11'),
(12, '2021-01-03 00:00:00', '2021-01-28 00:00:00', 3, 0, 750000, 11, 15, 0, 50000, 750000, '2021-01-09 06:20:16', '2021-01-09 06:20:16'),
(13, '2021-01-09 00:00:00', '2021-01-31 00:00:00', 3, 0, 420000, 10, 21, 0, 20000, 270000, '2021-01-09 06:20:16', '2021-01-11 18:39:24'),
(14, '2021-01-20 00:00:00', '2021-01-31 00:00:00', 3, 0, 513000, 9, 27, 0, 19000, 0, '2021-01-09 06:20:16', '2021-01-09 06:20:16'),
(15, '2021-01-19 00:00:00', '2021-01-20 00:00:00', 4, 0, 1275000, 10, 17, 0, 75000, 1275000, '2021-01-09 06:24:54', '2021-01-09 06:24:54'),
(16, '2021-01-15 00:00:00', '2021-01-27 00:00:00', 4, 0, 770000, 9, 14, 0, 55000, 790000, '2021-01-09 06:24:55', '2021-01-09 06:47:55'),
(17, '2021-01-12 00:00:00', '2021-03-23 00:00:00', 3, 0, 450000, 12, 10, 0, 45000, 450000, '2021-01-09 06:40:09', '2021-01-09 06:40:09'),
(18, '2021-01-12 00:00:00', '2021-06-16 00:00:00', 3, 0, 500000, 12, 10, 0, 50000, 500000, '2021-01-09 06:42:54', '2021-01-09 06:42:54'),
(19, '2021-01-12 00:00:00', '2021-03-23 00:00:00', 3, 0, 300000, 9, 6, 0, 50000, 300000, '2021-01-09 06:48:52', '2021-01-09 06:48:52'),
(20, '2021-01-12 00:00:00', '2021-03-23 00:00:00', 3, 0, 75000, 13, 5, 0, 15000, 75000, '2021-01-09 07:17:55', '2021-01-09 07:17:56'),
(21, '2021-01-12 00:00:00', '2021-01-28 00:00:00', 3, 0, 250000, 3, 5, 0, 50000, 250000, '2021-01-10 18:48:24', '2021-01-11 18:19:05'),
(22, '2021-01-03 00:00:00', '2021-02-18 00:00:00', 3, 0, 50000, 9, 1, 0, 50000, 0, '2021-01-12 10:20:52', '2021-01-12 10:20:52'),
(23, '2021-01-12 00:00:00', '2021-05-20 00:00:00', 3, 0, 0, 9, 1, 0, 0, 0, '2021-01-12 10:21:11', '2021-01-12 10:21:11'),
(24, '2021-01-12 00:00:00', '2021-05-20 00:00:00', 3, 0, 50000, 9, 1, 0, 50000, 0, '2021-01-12 10:21:20', '2021-01-12 10:21:20'),
(25, '2021-01-12 00:00:00', '2021-05-12 00:00:00', 3, 0, 40000, 9, 1, 0, 40000, 0, '2021-01-12 10:24:20', '2021-01-12 10:24:20'),
(28, '2021-01-12 00:00:00', '2021-03-12 00:00:00', 3, 0, 50000, 9, 1, 0, 50000, 0, '2021-01-12 10:47:31', '2021-01-12 10:47:31'),
(29, '2021-01-03 00:00:00', '2021-02-28 00:00:00', 3, 0, 50000, 7, 1, 0, 50000, 0, '2021-01-12 10:48:06', '2021-01-12 10:48:06'),
(30, '2021-01-12 00:00:00', '2021-04-13 00:00:00', 3, 0, 150000, 2, 1, 0, 150000, 0, '2021-01-12 11:26:29', '2021-01-12 11:26:29'),
(31, '2021-01-03 00:00:00', '2021-01-31 00:00:00', 3, 0, 15000, 14, 1, 3, 15000, 0, '2021-01-13 18:21:55', '2022-11-23 03:50:11'),
(32, '2021-01-19 00:00:00', '2021-11-23 00:00:00', 3, 0, 180000, 14, 9, 0, 20000, 0, '2021-01-13 18:55:58', '2021-01-13 18:55:58'),
(33, '2021-01-03 00:00:00', '2021-02-16 00:00:00', 3, 0, 60000, 15, 2, 0, 30000, 0, '2021-01-13 19:01:05', '2021-01-13 19:01:05'),
(34, '2021-01-12 00:00:00', '2021-07-15 00:00:00', 3, 0, 1000000, 15, 25, 0, 40000, 0, '2021-01-14 08:40:58', '2021-01-14 08:40:58'),
(35, '2021-01-12 00:00:00', '2021-01-30 00:00:00', 3, 0, 40000, 15, 1, 0, 40000, 40000, '2021-01-14 11:57:42', '2021-01-14 11:57:42'),
(36, '2021-01-12 00:00:00', '2021-03-16 00:00:00', 3, 0, 90000, 16, 6, 0, 15000, 90000, '2021-01-23 18:52:29', '2021-01-23 18:52:29'),
(37, '2021-01-12 00:00:00', '2022-01-06 00:00:00', 3, 0, -320000, 16, -4, 0, 80000, -320000, '2021-01-23 18:53:58', '2021-01-23 18:53:58'),
(38, '2021-01-12 00:00:00', '2022-01-06 00:00:00', 3, 0, 0, 16, 0, 0, 80000, 0, '2021-01-23 18:54:10', '2021-01-23 18:54:10'),
(39, '2021-01-12 00:00:00', '2022-01-06 00:00:00', 3, 0, 160000, 16, 2, 0, 80000, 0, '2021-01-23 18:54:21', '2021-01-23 18:54:21'),
(40, '2021-01-12 00:00:00', '2022-01-06 00:00:00', 3, 0, 40000, 16, 2, 0, 20000, 40000, '2021-01-23 18:54:58', '2021-11-27 12:38:20'),
(43, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, 1200000, 20, 10, 0, 120000, 1000000, '2022-11-23 14:27:34', '2022-11-23 14:27:34'),
(44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 0, 1000000, 21, 10, 0, 100000, 700000, '2022-11-23 14:42:25', '2022-11-23 14:42:25'),
(45, NULL, NULL, 8, 0, 2640000, 24, 33, 0, 80000, 2640000, '2023-01-07 12:53:14', '2023-01-07 12:53:14'),
(46, NULL, NULL, 8, 0, 440000000, 25, 55, 0, 8000000, 440000000, '2023-01-07 12:55:55', '2023-01-07 12:55:55'),
(47, NULL, NULL, 8, 0, 100000000, 27, 100, 0, 1000000, 100000000, '2023-01-07 13:06:51', '2023-01-07 13:06:51'),
(48, NULL, NULL, 8, 0, 10000000, 26, 10, 0, 1000000, 10000000, '2023-01-07 13:30:01', '2023-01-07 13:30:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(5, 'Tin tức Hot trong ngày', 'tin-tuc-hot-trong-ngay', NULL, NULL, NULL, 0, 1, '2022-11-21 03:46:34', NULL),
(6, 'Tin tức mới về công nghệ', 'tin-tuc-moi-ve-cong-nghe', NULL, NULL, NULL, 0, 1, '2022-11-21 04:02:43', NULL),
(7, 'Tin tức Khuyến mãi', 'tin-tuc-khuyen-mai', NULL, NULL, NULL, 0, 1, '2022-11-21 04:03:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(23, 24, 2, 5, 1, 237500, '2022-11-23 03:47:10', NULL),
(26, 27, 20, 5, 1, 142500, '2022-11-23 14:31:55', NULL),
(27, 28, 2, 5, 1, 237500, '2022-11-23 14:32:40', NULL),
(28, 29, 24, 5, 1, 10440500, '2023-01-07 13:31:27', NULL),
(29, 30, 24, 5, 2, 10440500, '2023-01-07 14:09:51', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_import_goods` int(11) NOT NULL DEFAULT 0,
  `pro_number_import` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preview` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_import_goods`, `pro_number_import`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `preview`) VALUES
(23, 'Corsair T3 RUSH Gray - Charcoal', 'corsair-t3-rush-gray-charcoal', 6490000, 0, 36, 0, 0, 10, '2023-01-07__resizer.jpg', 1, 0, 1, 0, 'Chiều cao chỗ ngồi tối đa 54cm\r\n\r\nChiều cao chỗ ngồi tối thiểu 44cm\r\n\r\nChiều cao cánh tay tối đa 36,5cm\r\n\r\nChiều cao cánh tay tối thiểu 28,5cm\r\n\r\nChiều cao tựa lưng 85cm\r\n\r\nTựa lưng vai chiều rộng 54cm\r\n\r\nTổng trọng lượng 25.5kg\r\n\r\nTrọng lượng công suất 120kgs\r\n\r\nLoại bọt ghế Bọt polyurethane (bọt lạnh)\r\n\r\nMật độ bọt ghế 55kg/m³\r\n\r\nLoại tựa tay 4D (Lên/Xuống, Trái/Phải, Trước/Sau, Xoay)', '<p><strong>GHẾ CHƠI GAME CORSAIR T3 RUSH</strong></p>\r\n\r\n<p><strong>H&Iacute;T THỞ DỄ D&Agrave;NG HƠN</strong></p>\r\n\r\n<p>Ngoại thất vải mềm tho&aacute;ng m&aacute;t của T3 RUSH vẫn giữ được nhiệt độ tối thiểu, cho ph&eacute;p bạn giữ m&aacute;t mẻ trong c&aacute;c buổi tr&ograve; chơi d&agrave;i.</p>\r\n\r\n<p><strong>NGỒI XUỐNG V&Agrave; THƯ GI&Atilde;N</strong></p>\r\n\r\n<p>Nhờ c&oacute; đệm cổ đệm v&agrave; hỗ trợ thắt lưng bằng m&uacute;t nhớ, T3 RUSH hỗ trợ v&ocirc; c&ugrave;ng cho cổ v&agrave; lưng của bạn. V&igrave; vậy, căng ra, h&iacute;t một hơi thật s&acirc;u, v&agrave; chờ đợi cho rằng respawn thoải m&aacute;i.</p>\r\n\r\n<p><strong>LƯỚT QUA CHIẾN TRƯỜNG</strong></p>\r\n\r\n<p>N&oacute; kh&ocirc;ng ho&agrave;n to&agrave;n địa h&igrave;nh, nhưng n&oacute; gần. T3 RUSH lướt dễ d&agrave;ng tr&ecirc;n hầu hết c&aacute;c bề mặt s&agrave;n với b&aacute;nh xe k&eacute;p 65mm hạng nặng.</p>\r\n\r\n<p><strong>T&Igrave;M ĐIỂM NGỌT NG&Agrave;O CỦA BẠN</strong></p>\r\n\r\n<p>Dễ d&agrave;ng t&ugrave;y chỉnh vị tr&iacute; ngồi của bạn với chiều cao chỗ ngồi c&oacute; thể điều chỉnh v&agrave; tay vịn c&ugrave;ng với tựa lưng ngả.</p>\r\n\r\n<p><strong>LẮP R&Aacute;P CHO TRẬN CHIẾN</strong></p>\r\n\r\n<p>T3 RUSH l&agrave; nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng để lắp r&aacute;p, v&igrave; vậy bạn c&oacute; thể c&oacute; được ngồi v&agrave; bắt đầu thống trị c&aacute;c đối thủ cạnh tranh nhanh ch&oacute;ng.</p>\r\n\r\n<p><strong>Chiều cao chỗ ngồi tối đa</strong>&nbsp;54cm</p>\r\n\r\n<p><strong>Chiều cao chỗ ngồi tối thiểu</strong>&nbsp;44cm</p>\r\n\r\n<p><strong>Chiều cao c&aacute;nh tay tối đa</strong>&nbsp;36,5cm</p>\r\n\r\n<p><strong>Chiều cao c&aacute;nh tay tối thiểu</strong>&nbsp;28,5cm</p>\r\n\r\n<p><strong>Chiều cao tựa lưng</strong>&nbsp;85cm</p>\r\n\r\n<p><strong>Tựa lưng vai chiều rộng</strong>&nbsp;54cm</p>\r\n\r\n<p><strong>Tổng trọng lượng</strong>&nbsp;25.5kg</p>\r\n\r\n<p><strong>Trọng lượng c&ocirc;ng suất</strong>&nbsp;120kgs</p>\r\n\r\n<p><strong>Loại bọt ghế</strong>&nbsp;Bọt polyurethane (bọt lạnh)</p>\r\n\r\n<p><strong>Mật độ bọt ghế</strong>&nbsp;55kg/m&sup3;</p>\r\n\r\n<p><strong>Loại tựa tay 4D</strong>&nbsp;(L&ecirc;n/Xuống, Tr&aacute;i/Phải, Trước/Sau, Xoay)</p>', 0, 0, 0, '2023-01-07 11:51:39', 0, 0, 0, NULL, NULL, 0, '2023-01-07 12:19:23', '<p><strong>GHẾ CHƠI GAME CORSAIR T3 RUSH</strong></p>\r\n\r\n<p><strong>H&Iacute;T THỞ DỄ D&Agrave;NG HƠN</strong></p>\r\n\r\n<p>Ngoại thất vải mềm tho&aacute;ng m&aacute;t của T3 RUSH vẫn giữ được nhiệt độ tối thiểu, cho ph&eacute;p bạn giữ m&aacute;t mẻ trong c&aacute;c buổi tr&ograve; chơi d&agrave;i.</p>\r\n\r\n<p><strong>NGỒI XUỐNG V&Agrave; THƯ GI&Atilde;N</strong></p>\r\n\r\n<p>Nhờ c&oacute; đệm cổ đệm v&agrave; hỗ trợ thắt lưng bằng m&uacute;t nhớ, T3 RUSH hỗ trợ v&ocirc; c&ugrave;ng cho cổ v&agrave; lưng của bạn. V&igrave; vậy, căng ra, h&iacute;t một hơi thật s&acirc;u, v&agrave; chờ đợi cho rằng respawn thoải m&aacute;i.</p>\r\n\r\n<p><strong>LƯỚT QUA CHIẾN TRƯỜNG</strong></p>\r\n\r\n<p>N&oacute; kh&ocirc;ng ho&agrave;n to&agrave;n địa h&igrave;nh, nhưng n&oacute; gần. T3 RUSH lướt dễ d&agrave;ng tr&ecirc;n hầu hết c&aacute;c bề mặt s&agrave;n với b&aacute;nh xe k&eacute;p 65mm hạng nặng.</p>\r\n\r\n<p><strong>T&Igrave;M ĐIỂM NGỌT NG&Agrave;O CỦA BẠN</strong></p>\r\n\r\n<p>Dễ d&agrave;ng t&ugrave;y chỉnh vị tr&iacute; ngồi của bạn với chiều cao chỗ ngồi c&oacute; thể điều chỉnh v&agrave; tay vịn c&ugrave;ng với tựa lưng ngả.</p>\r\n\r\n<p><strong>LẮP R&Aacute;P CHO TRẬN CHIẾN</strong></p>\r\n\r\n<p>T3 RUSH l&agrave; nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng để lắp r&aacute;p, v&igrave; vậy bạn c&oacute; thể c&oacute; được ngồi v&agrave; bắt đầu thống trị c&aacute;c đối thủ cạnh tranh nhanh ch&oacute;ng.</p>\r\n\r\n<p>&nbsp;</p>'),
(24, 'Màn hình Asus VP32UQ | 32Inch - 4K - IPS - Loa', 'man-hinh-asus-vp32uq-32inch-4k-ips-loa', 10990000, 0, 34, 0, 0, 5, '2023-01-07__vp32uq-2.jpg', 2, 1, 1, 2, 'Tên sản phẩm: Màn hình Asus VP32AQ \r\nKích thước: 31.5Inch \r\nĐộ phân giải: 4K (3840x2160)\r\nTỷ lệ màn hình: 21:9\r\nTấm nền: IPS\r\nĐộ sáng: 350 nits\r\nMàu hiển thị: 16.7 triệu màu\r\nTần số quét: 60Hz\r\nThời gian đáp ứng: 4ms \r\nContrast: 100000000:1', '<ul>\r\n	<li>M&agrave;n h&igrave;nh 31,5 inch, độ ph&acirc;n giải 4K UHD (3840 x 2160) với IPS g&oacute;c nh&igrave;n rộng 178&deg; cho h&igrave;nh ảnh sắc n&eacute;t v&agrave; đắm ch&igrave;m</li>\r\n	<li>Hỗ trợ HDR-10 để tăng cường v&ugrave;ng s&aacute;ng v&agrave; v&ugrave;ng tối, mang lại trải nghiệm xem sống động như thật</li>\r\n	<li>Kết nối mở rộng bao gồm DisplayPort, HDMI, loa &acirc;m thanh nổi 2W x 2 t&iacute;ch hợp</li>\r\n	<li>C&ocirc;ng nghệ Adaptive-Sync cho nội dung hoạt h&igrave;nh với h&agrave;nh động nhanh v&agrave; loại bỏ hiện tượng r&aacute;ch m&agrave;n h&igrave;nh</li>\r\n	<li>M&agrave;n h&igrave;nh ASUS Eye Care trang bị c&ocirc;ng nghệ Flicker-Free v&agrave; Low Blue Light được T&Uuml;V Rheinland chứng nhận để đảm bảo trải nghiệm xem thoải m&aacute;i</li>\r\n	<li>Hỗ trợ cả Adaptive-Sync với card đồ họa NVIDIA GeForce* v&agrave; FreeSync với card đồ họa AMD Radeon *Tương th&iacute;ch với NVIDIA GeForce GTX 10 series, GTX 16 series, RTX 20 series v&agrave; c&aacute;c card đồ họa mới hơn</li>\r\n</ul>', 0, 0, 0, '2023-01-07 11:53:57', 33, 0, 33, NULL, NULL, 0, '2023-01-07 12:54:06', '<ul>\r\n	<li>M&agrave;n h&igrave;nh 31,5 inch, độ ph&acirc;n giải 4K UHD (3840 x 2160) với IPS g&oacute;c nh&igrave;n rộng 178&deg; cho h&igrave;nh ảnh sắc n&eacute;t v&agrave; đắm ch&igrave;m</li>\r\n	<li>Hỗ trợ HDR-10 để tăng cường v&ugrave;ng s&aacute;ng v&agrave; v&ugrave;ng tối, mang lại trải nghiệm xem sống động như thật</li>\r\n	<li>Kết nối mở rộng bao gồm DisplayPort, HDMI, loa &acirc;m thanh nổi 2W x 2 t&iacute;ch hợp</li>\r\n	<li>C&ocirc;ng nghệ Adaptive-Sync cho nội dung hoạt h&igrave;nh với h&agrave;nh động nhanh v&agrave; loại bỏ hiện tượng r&aacute;ch m&agrave;n h&igrave;nh</li>\r\n	<li>M&agrave;n h&igrave;nh ASUS Eye Care trang bị c&ocirc;ng nghệ Flicker-Free v&agrave; Low Blue Light được T&Uuml;V Rheinland chứng nhận để đảm bảo trải nghiệm xem thoải m&aacute;i</li>\r\n	<li>Hỗ trợ cả Adaptive-Sync với card đồ họa NVIDIA GeForce* v&agrave; FreeSync với card đồ họa AMD Radeon *Tương th&iacute;ch với NVIDIA GeForce GTX 10 series, GTX 16 series, RTX 20 series v&agrave; c&aacute;c card đồ họa mới hơn</li>\r\n</ul>'),
(25, 'VGA MSI Radeon RX 6650 XT MECH 2X 8G OC | GDDR', 'vga-msi-radeon-rx-6650-xt-mech-2x-8g-oc-gddr', 9590000, 0, 24, 0, 0, 5, '2023-01-07__msi-radeon-rx-6650-xt-mech-2x-8g-oc-2.jpg', 0, 0, 1, 0, 'Tên sản phẩm: VGA MSI Radeon RX 6650 XT MECH 2X 8G OC\r\nCard xử lý đồ họa: AMD RX 6650 XT\r\nDung lượng bộ nhớ: 8GB\r\nLoại bộ nhớ: GDDR6\r\nNguồn cấp: 500W\r\nNhân xử lý tính toán: 2048\r\nHỗ trợ xuất hình: 1xHDMI / 3xDP\r\nKích thước Card:  235 x 125 x 47 mm\r\nGiao diện kết nối: PCI Express 4.0 x 8\r\nPhần mềm:', '<ul>\r\n	<li><strong>T&ecirc;n sản phẩm:&nbsp;</strong>VGA MSI Radeon RX 6650 XT MECH 2X 8G OC</li>\r\n	<li><strong>Card xử l&yacute; đồ họa:&nbsp;</strong>AMD RX 6650 XT</li>\r\n	<li><strong>Dung lượng bộ nhớ:</strong>&nbsp;8GB</li>\r\n	<li><strong>Loại bộ nhớ:&nbsp;</strong>GDDR6</li>\r\n	<li><strong>Nguồn cấp:&nbsp;</strong>500W</li>\r\n	<li><strong>Nh&acirc;n xử l&yacute; t&iacute;nh to&aacute;n:&nbsp;</strong>2048</li>\r\n	<li><strong>Hỗ trợ xuất h&igrave;nh:</strong>&nbsp;1xHDMI / 3xDP</li>\r\n	<li><strong>K&iacute;ch thước Card:&nbsp;</strong>&nbsp;235 x 125 x 47 mm</li>\r\n	<li><strong>Giao diện kết nối:</strong>&nbsp;PCI Express 4.0 x 8</li>\r\n	<li><strong>Phần mềm:&nbsp;</strong></li>\r\n</ul>', 0, 0, 0, '2023-01-07 12:55:20', 55, 0, 55, NULL, NULL, 0, '2023-01-07 12:55:55', '<ul>\r\n	<li><strong>T&ecirc;n sản phẩm:&nbsp;</strong>VGA MSI Radeon RX 6650 XT MECH 2X 8G OC</li>\r\n	<li><strong>Card xử l&yacute; đồ họa:&nbsp;</strong>AMD RX 6650 XT</li>\r\n	<li><strong>Dung lượng bộ nhớ:</strong>&nbsp;8GB</li>\r\n	<li><strong>Loại bộ nhớ:&nbsp;</strong>GDDR6</li>\r\n	<li><strong>Nguồn cấp:&nbsp;</strong>500W</li>\r\n	<li><strong>Nh&acirc;n xử l&yacute; t&iacute;nh to&aacute;n:&nbsp;</strong>2048</li>\r\n	<li><strong>Hỗ trợ xuất h&igrave;nh:</strong>&nbsp;1xHDMI / 3xDP</li>\r\n	<li><strong>K&iacute;ch thước Card:&nbsp;</strong>&nbsp;235 x 125 x 47 mm</li>\r\n	<li><strong>Giao diện kết nối:</strong>&nbsp;PCI Express 4.0 x 8</li>\r\n	<li><strong>Phần mềm:&nbsp;</strong></li>\r\n</ul>'),
(26, 'Bàn E-DRA ELT1675 Gaming Master - Bàn điện nâng hạ', 'ban-e-dra-elt1675-gaming-master-ban-dien-nang-ha', 5599000, 0, 38, 0, 0, 0, '2023-01-07__e-dra-elt1675-gaming-master.jpg', 0, 0, 1, 0, 'Tên sản phẩm: Bàn E-DRA ELT1675 Gaming Master - Bàn điện nâng hạ\r\nKích thước: 160x60x75cm.\r\nMàu sắc: Đen\r\nKiểu chân: chữ T | Dạng bàn: chữ nhật\r\nTrọng lượng: 29 Kg\r\nMặt bàn được phủ vân carbon cao cấp | sẵn Pad chuột 80 * 30 * 0,2cm | sẵn hộc để cốc\r\nCó thể điều chỉnh độ cao: bằng điện 75 -119cm\r\nChân bàn hợp kim nhôm\r\nCó bộ nhớ độ cao thông minh | Tự dừng lại trong trường hợp bị cản', '<ul>\r\n	<li><strong>T&ecirc;n sản phẩm:&nbsp;</strong>B&agrave;n E-DRA ELT1675 Gaming Master - B&agrave;n điện n&acirc;ng hạ</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>160x60x75cm.</li>\r\n	<li><strong>M&agrave;u sắc:</strong>&nbsp;Đen</li>\r\n	<li><strong>Kiểu ch&acirc;n:</strong>&nbsp;chữ T |&nbsp;<strong>Dạng b&agrave;n:</strong>&nbsp;chữ nhật</li>\r\n	<li><strong>Trọng lượng:</strong>&nbsp;29 Kg</li>\r\n	<li>Mặt&nbsp;b&agrave;n được phủ v&acirc;n carbon cao cấp |&nbsp;sẵn Pad chuột&nbsp;80 * 30 * 0,2cm |&nbsp;sẵn hộc để cốc</li>\r\n	<li><strong>C&oacute; thể điều chỉnh độ cao:</strong>&nbsp;bằng điện 75 -119cm</li>\r\n	<li><strong>Ch&acirc;n b&agrave;n hợp kim nh&ocirc;m</strong></li>\r\n	<li><strong>C&oacute; bộ nhớ độ cao&nbsp;</strong>th&ocirc;ng minh |&nbsp;<strong>Tự dừng lại&nbsp;</strong>trong trường hợp bị cản</li>\r\n</ul>', 0, 0, 0, '2023-01-07 12:59:22', 10, 0, 10, NULL, NULL, 0, '2023-01-07 13:30:01', '<ul>\r\n	<li><strong>T&ecirc;n sản phẩm:&nbsp;</strong>B&agrave;n E-DRA ELT1675 Gaming Master - B&agrave;n điện n&acirc;ng hạ</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>160x60x75cm.</li>\r\n	<li><strong>M&agrave;u sắc:</strong>&nbsp;Đen</li>\r\n	<li><strong>Kiểu ch&acirc;n:</strong>&nbsp;chữ T |&nbsp;<strong>Dạng b&agrave;n:</strong>&nbsp;chữ nhật</li>\r\n	<li><strong>Trọng lượng:</strong>&nbsp;29 Kg</li>\r\n	<li>Mặt&nbsp;b&agrave;n được phủ v&acirc;n carbon cao cấp |&nbsp;sẵn Pad chuột&nbsp;80 * 30 * 0,2cm |&nbsp;sẵn hộc để cốc</li>\r\n	<li><strong>C&oacute; thể điều chỉnh độ cao:</strong>&nbsp;bằng điện 75 -119cm</li>\r\n	<li><strong>Ch&acirc;n b&agrave;n hợp kim nh&ocirc;m</strong></li>\r\n	<li><strong>C&oacute; bộ nhớ độ cao&nbsp;</strong>th&ocirc;ng minh |&nbsp;<strong>Tự dừng lại&nbsp;</strong>trong trường hợp bị cản</li>\r\n</ul>'),
(27, 'Ram Corsair Vengeance LPX 16GB | DDR4| 3200MHz', 'ram-corsair-vengeance-lpx-16gb-ddr4-3200mhz', 1450000, 0, 31, 0, 0, 5, '2023-01-07__corsair-vengeance-lpx-black-16gb.png', 0, 0, 1, 0, 'Tên sản phẩm: RAM Corsair Vengeance LPX 16GB (1x16GB)\r\nDung lượng: 16GB (1x16GB)\r\nLoại Ram: PC\r\nTần số: 3200MHz\r\nCas: CL16\r\nChuẩn Ram: DDR4', '<ul>\r\n	<li><strong>T&ecirc;n sản phẩm:&nbsp;</strong>RAM Corsair Vengeance LPX 16GB (1x16GB)</li>\r\n	<li><strong>Dung lượng:&nbsp;</strong>16GB (1x16GB)</li>\r\n	<li><strong>Loại Ram:&nbsp;</strong>PC</li>\r\n	<li><strong>Tần số:&nbsp;</strong>3200MHz</li>\r\n	<li><strong>Cas:&nbsp;</strong>CL16</li>\r\n	<li><strong>Chuẩn Ram:&nbsp;</strong>DDR4</li>\r\n</ul>', 0, 0, 0, '2023-01-07 13:05:48', 100, 0, 100, NULL, NULL, 0, '2023-01-07 13:07:31', '<ul>\r\n	<li><strong>T&ecirc;n sản phẩm:&nbsp;</strong>RAM Corsair Vengeance LPX 16GB (1x16GB)</li>\r\n	<li><strong>Dung lượng:&nbsp;</strong>16GB (1x16GB)</li>\r\n	<li><strong>Loại Ram:&nbsp;</strong>PC</li>\r\n	<li><strong>Tần số:&nbsp;</strong>3200MHz</li>\r\n	<li><strong>Cas:&nbsp;</strong>CL16</li>\r\n	<li><strong>Chuẩn Ram:&nbsp;</strong>DDR4</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(1, 1, 3),
(16, 8, 1),
(17, 8, 3),
(19, 10, 3),
(21, 12, 2),
(45, 17, 1),
(46, 18, 1),
(47, 18, 2),
(53, 19, 2),
(66, 2, 13),
(68, 16, 8),
(69, 15, 10),
(70, 14, 10),
(71, 9, 10),
(72, 7, 10),
(73, 6, 9),
(74, 5, 9),
(75, 4, 11),
(76, 3, 13),
(77, 20, 11),
(78, 21, 8),
(81, 22, 10),
(87, 24, 9),
(88, 23, 10),
(89, 25, 8),
(90, 26, 10),
(92, 27, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(14, 23, 2, 4, 0, 'tuyệt vời', '2022-11-23 14:21:39', '2022-11-23 14:21:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'banner website 1', 'https://www.google.com/', '2023-01-07__1.png', 1, 1, 2, '2023-01-07 10:12:18', '2023-01-07 10:12:18'),
(2, 'banner website 2', 'https://www.asus.com/vn/motherboards-components/graphics-cards/dual/arez-dual-rx580-o4g/', '2023-01-07__p-setting-xxx-0-90-end-692.png', 2, 1, 1, '2023-01-07 10:14:21', '2023-01-07 10:14:21'),
(3, 'banner website 2', 'https://www.dienmayxanh.com/man-hinh-may-tinh/asus-lcd-tuf-gaming-27-inch-fullhd-165hz-1ms-vg279q1a', '2023-01-07__53917-xg279q-7.png', 1, 1, 3, '2023-01-07 10:15:47', '2023-01-07 10:15:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(2, 'Hướng dẫn Và dịch vụ', NULL, 1, NULL, '<p><strong>B1: C&aacute;c bạn d&ugrave;ng m&aacute;y t&iacute;nh, search trang web: https://darksoftware.xyz/PS4/FWlist.</strong></p>\r\n\r\n<p><img alt=\"PS4 HACK Official Firmwares List\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-2.png\" style=\"height:938px; width:1902px\" title=\"PS4 HACK Official Firmwares List\" /></p>\r\n\r\n<p>PS4 HACK Official Firmwares List</p>\r\n\r\n<p><strong>B2: Bạn cần t&igrave;m đến Version 9.00 v&agrave; download n&oacute; về m&aacute;y t&iacute;nh của bạn nh&eacute;. Bạn cần đăng nhập để tải Version 9.00 về nh&eacute;. Nếu bạn chưa c&oacute; t&agrave;i khoản, h&atilde;y đăng k&yacute; 1 t&agrave;i khoản rồi đăng nhập để tải về nh&eacute;.</strong></p>\r\n\r\n<p><img alt=\"Untitled1 4\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-4.png\" style=\"height:932px; width:1902px\" title=\"Untitled1 4\" /></p>\r\n\r\n<p><strong>B3: Sau khi tải xong th&igrave; bạn đưa v&agrave;o USB để v&agrave;o thư</strong></p>\r\n\r\n<p><img alt=\"Untitled1 5\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-5.png\" style=\"height:233px; width:1646px\" title=\"Untitled1 5\" /></p>\r\n\r\n<p><strong>B4: Sau khi đ&atilde; c&oacute; USB để update Firmware th&igrave; bạn bật m&aacute;y PS4 l&ecirc;n. Lưu &yacute; giữ n&uacute;t nguồn cho đến khi n&oacute; k&ecirc;u tiếng pip thứ 2 th&igrave; bạn bỏ tay ra nh&eacute;.</strong></p>\r\n\r\n<p><strong>B5: M&agrave;n h&igrave;nh bạn sẽ hiện ra như thế n&agrave;y v&agrave; bạn chọn Update System Software. Sau đ&oacute; ae l&agrave;m đ&uacute;ng như c&aacute;c bước trong h&igrave;nh rồi đợi n&oacute; tự update ae nh&eacute;.</strong></p>\r\n\r\n<p><img alt=\"Untitled1 7\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-7.png\" style=\"height:859px; width:1327px\" title=\"Untitled1 7\" /></p>\r\n\r\n<p><img alt=\"Untitled1 6\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-6.png\" style=\"height:563px; width:1069px\" title=\"Untitled1 6\" /></p>\r\n\r\n<p><img alt=\"Untitled1 8\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-8.png\" style=\"height:857px; width:1742px\" title=\"Untitled1 8\" /></p>\r\n\r\n<p><img alt=\"Untitled1 9\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-9.png\" style=\"height:573px; width:1098px\" title=\"Untitled1 9\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Untitled1 10\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-10.png\" style=\"height:555px; width:1092px\" title=\"Untitled1 10\" /></p>\r\n\r\n<p><strong>Cuối c&ugrave;ng m&aacute;y sẽ tự động update l&ecirc;n 9.00. Ae c&oacute; thể xem ở trong phần c&agrave;i đặt v&agrave; v&agrave;o hệ thống để kiểm tra nh&eacute;.</strong></p>', '2022-11-21 03:18:10', '2022-11-21 03:18:10'),
(3, 'Chính sách đổi trả', NULL, 2, NULL, '<h3>I. L&Yacute; DO CHẤP NHẬN ĐỔI TRẢ</h3>\r\n\r\n<p><strong>1. Điều kiện h&agrave;ng h&oacute;a đạt y&ecirc;u cầu đổi trả</strong></p>\r\n\r\n<p>- Sản phẩm hỏng về kỹ thuật, thiết kế, chức năng, c&aacute;c kh&aacute;c biệt so với ti&ecirc;u chuẩn chất lượng đ&atilde; được nh&agrave; sản xuất c&ocirc;ng bố.</p>\r\n\r\n<p>- Sản phẩm bị lỗi trong qu&aacute; tr&igrave;nh vận chuyển như biến dạng, nứt vỡ, trầy xước,&hellip;</p>\r\n\r\n<p>- Sản phẩm mất ni&ecirc;m phong, giao sai số lượng v&agrave; mẫu m&atilde; so với đơn đặt h&agrave;ng đ&atilde; được chấp nhận.</p>\r\n\r\n<p>- Hạn sử dụng sản phẩm hết trước hoặc v&agrave;o ng&agrave;y được giao cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h4>II. Y&Ecirc;U CẦU CHO ĐỔI TRẢ SẢN PHẨM</h4>\r\n\r\n<p><strong>1. Điều kiện đổi trả</strong></p>\r\n\r\n<p>- Sản phẩm kh&ocirc;ng thuộc danh s&aacute;ch hạn chế đổi trả đ&atilde; được cửa h&agrave;ng th&ocirc;ng b&aacute;o.</p>\r\n\r\n<p>- Sản phẩm c&ograve;n nguy&ecirc;n vẹn, đầy đủ nh&atilde;n m&aacute;c, nguy&ecirc;n đai kiện, ni&ecirc;m phong theo quy c&aacute;ch ban đầu (trừ trường hợp sản phẩm bị lỗi hoặc bị hư hại trong qu&aacute; tr&igrave;nh vận chuyển). Đầy đủ phụ kiện v&agrave; tặng phẩm đi k&egrave;m (nếu c&oacute;).</p>\r\n\r\n<p>- Sản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng cửa h&agrave;ng c&oacute; thể thu mua lại hoặc n&acirc;ng cấp l&ecirc;n từ Haloshop.</p>\r\n\r\n<p>- C&aacute;c x&aacute;c nhận việc mua h&agrave;ng tại cửa h&agrave;ng&nbsp;như h&oacute;a đơn, bi&ecirc;n nhận, sao k&ecirc; t&agrave;i khoản ng&acirc;n h&agrave;ng,&hellip;</p>\r\n\r\n<p>- Phiểu đổi trả đ&uacute;ng v&agrave; đầy đủ th&ocirc;ng tin theo form mẫu của HaloShop .</p>\r\n\r\n<p><strong>2. Thời gian &aacute;p dụng đổi trả</strong></p>\r\n\r\n<p>- 03 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng để gửi y&ecirc;u cầu đổi trả.</p>\r\n\r\n<p>- Thời điểm y&ecirc;u cầu đổi trả sẽ được HaloShop căn cứ theo: (1) đường bưu điện hoặc chuyển ph&aacute;t: thời điểm t&iacute;nh theo dấu bi&ecirc;n nhận của bưu điện hay đơn vị chuyển ph&aacute;t. (2) tự mang/gửi h&agrave;ng tới trung t&acirc;m đổi trả: thời điểm t&iacute;nh khi nh&acirc;n vi&ecirc;nHaloShop tiếp nhận sản phẩm đổi trả từ kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><strong>3. Chi ph&iacute; đổi trả</strong></p>\r\n\r\n<p>- Đối với c&aacute;c sản phẩm đổi trả do lỗi nh&agrave; sản xuất hoặc do qu&aacute; tr&igrave;nh vận chuyển, kh&aacute;ch h&agrave;ng sẽ được miễn ph&iacute; đổi trả v&agrave; được giao h&agrave;ng miễn ph&iacute; tới địa điểm ghi tr&ecirc;n phiếu y&ecirc;u cầu.</p>\r\n\r\n<h3>III. QUY ĐỊNH HO&Agrave;N TIỀN</h3>\r\n\r\n<p><strong>1. Nguy&ecirc;n tắc ho&agrave;n tiền</strong></p>\r\n\r\n<p>- Căn cứ theo phương thức thanh to&aacute;n của kh&aacute;ch h&agrave;ng khi mua h&agrave;ng.</p>\r\n\r\n<p>- Trong trường hợp kh&aacute;ch h&agrave;ng c&oacute; sử dụng Giftcode hoặc c&aacute;c ưu đ&atilde;i từ c&aacute;c chương tr&igrave;nh khuyến mại,&hellip; HaloShop kh&ocirc;ng ho&agrave;n lại khoản gi&aacute; trị đ&oacute; m&agrave; chỉ ho&agrave;n lại khoản tiền thực tế kh&aacute;ch h&agrave;ng đ&atilde; bỏ ra thanh to&aacute;n khi mua h&agrave;ng.</p>\r\n\r\n<p><strong>2. Phương thức ho&agrave;n tiền</strong></p>\r\n\r\n<p>- Ho&agrave;n tiền th&ocirc;ng qua hệ thống cổng thanh to&aacute;n</p>\r\n\r\n<p>- Ho&agrave;n tiền qua chuyển khoản ng&acirc;n h&agrave;ng</p>\r\n\r\n<p>- Ho&agrave;n tiền qua ng&acirc;n h&agrave;ng chấp nhận thẻ</p>\r\n\r\n<p>- Ho&agrave;n tiền mặt tại cửa h&agrave;ng&nbsp;đổi trả của HaloShop.</p>', '2022-11-21 03:21:15', '2022-11-21 03:21:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(8, 'ShopGear chi nhánh 1', '0123456789', 'chinhanhhanoi@GMAIL.COM', 'Xuân Đỉnh - Hà Nội', '2022-11-23 14:26:27', '2023-01-07 10:05:18'),
(9, 'ShopGear chi nhánh 2', '0123456798', 'chinhanhhochiminh@GMAIL.COM', 'Quận 1 - Hồ Chí Minh', '2022-11-23 14:41:03', '2023-01-07 10:05:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toán thường, 2 thanh toán online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(27, 23, 1, 142500, 'Test Giao Dịch 1', 'testgiaodich1@gmail.com', '0111111111', 'Hà Nội', 'NO', 2, 1, '2022-11-23 14:31:55', '2022-11-23 14:32:10'),
(28, 23, 1, 237500, 'Test Giao Dịch 2', 'testgiaodich2@gmail.com', '0222222222', 'Hồ Chí Minh', 'NO', 3, 2, '2022-11-23 14:32:40', '2022-11-23 14:33:44'),
(29, 26, 0, 10440500, 'Quang Ha Nguyen', 'vippr1239@gmail.com', '2134234234', 'sadfsdf', NULL, 1, 2, '2023-01-07 13:31:27', '2023-01-07 13:31:27'),
(30, 26, 0, 20881000, 'Quang Ha Nguyen', 'vippr1239@gmail.com', '2134234234', 'sadfsdf', NULL, 1, 2, '2023-01-07 14:09:51', '2023-01-07 14:09:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`, `google_id`) VALUES
(26, 'Quang Ha Nguyen', 'vippr1239@gmail.com', '2021-05-19 14:38:54', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-01-07 13:30:30', '2023-01-07 13:30:30', '101777264469981599492');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(0, 15, 8);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `import_histories`
--
ALTER TABLE `import_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `import_histories`
--
ALTER TABLE `import_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
