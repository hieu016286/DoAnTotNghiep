-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 04:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haloshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
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
-- Dumping data for table `admins`
--



-- --------------------------------------------------------

--
-- Table structure for table `articles`
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
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Vòng quanh thế giới game tuần qua cùng haloshop', 'vong-quanh-the-gioi-game-tuan-qua-cung-haloshop', 1, 1, 5, 0, 'Hãy cùng haloshop khám phá vòng quanh thế giới game tuần qua có gì đặc biệt và thú vị nhé.', '2022-11-21__god-of-war-ragnarok-tung-doan-trailer-an-dinh-ngay-phat-hanh-trong-nam-2022-165-6528994-1.jpg', '<p><strong><a href=\"https://34gameshop.vn/god-of-war-ragnarok-collectors-edition/\" target=\"_bank\">God of war</a></strong>&nbsp;Ragnarok đ&atilde; ch&iacute;nh thức đến với game thủ to&agrave;n cầu v&agrave;o ng&agrave;y 9/11, tuy nhi&ecirc;n từ tuần trước c&aacute;c đ&aacute;nh gi&aacute; của bom tấn n&agrave;y đ&atilde; được c&aacute;c đơn vị chuy&ecirc;n m&ocirc;n đưa ra. R&otilde; r&agrave;ng l&agrave; chất lượng cực cao th&igrave; việc God of War Ragnarok nhận được điểm số tuyệt vời l&agrave; r&otilde; r&agrave;ng. Với con số 94, điểm đ&aacute;nh gi&aacute; của God of War Ragnarok l&agrave; cao thứ nh&igrave; đối với 1 tr&ograve; chơi mới trong năm nay, chỉ sau kẻ m&agrave; ai cũng biết,&nbsp;<strong><a href=\"https://34gameshop.vn/elden-ring-dia-game-ps5/\" target=\"_bank\">Elden Ring</a></strong>&nbsp;với đ&aacute;nh gi&aacute; 96.</p>\r\n\r\n<p><img alt=\"Untitled 2\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled-2.png\" style=\"height:626px; width:1005px\" title=\"Untitled 2\" /></p>\r\n\r\n<p>Untitled 2</p>\r\n\r\n<p><img alt=\"Untitled\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled.png\" style=\"height:641px; width:1000px\" title=\"Untitled\" /></p>\r\n\r\n<p>Mặc d&ugrave; một số c&aacute;i t&ecirc;n kh&aacute;c như Portal Companion Collection hay Persona 5 Royal c&oacute; điểm cao hơn, sau đ&acirc;y đều l&agrave; c&aacute;c bản mod của c&aacute;c tr&ograve; chơi cũ m&agrave; th&ocirc;i. God of War Ragnarok cũng l&agrave; tr&ograve; chơi&nbsp;<a href=\"https://34gameshop.vn/playstation-5-ps5/may-game-ps5/may-ps5/\" rel=\"noopener\" target=\"_blank\" title=\"Máy PS5\">PS5</a>&nbsp;của Sony c&oacute; đ&aacute;nh gi&aacute; cao nhất, vượt qua Demon Souls với mức 92 điểm.</p>\r\n\r\n<p>Vốn dĩ được ra mắt từ năm ngo&aacute;i song kh&oacute; khăn trong qu&aacute; tr&igrave;nh ph&aacute;t triển buộc Santamonica rời lịch ph&aacute;t h&agrave;nh của God of War Ragnarok sang năm nay. V&agrave; r&otilde; r&agrave;ng điều m&agrave; ai cũng quan t&acirc;m ở hiện tại l&agrave; giữa n&oacute; v&agrave; Elden Ring, c&aacute;i t&ecirc;n n&agrave;o sẽ chiến thắng giải Game of the Year năm nay.</p>\r\n\r\n<h2><strong>Call of Duty Modern Warframe II</strong></h2>\r\n\r\n<p><img alt=\"Does Call of Duty: Modern Warfare 2 Beta have 120hz graphics? - Gamepur\" src=\"https://assets.gamepur.com/wp-content/uploads/2022/09/16151452/Call-of-Duty-Modern-Warfare-2-covering-tactics-1.jpg\" /></p>\r\n\r\n<p>Call of Duty Modern Warfare II c&oacute; m&agrave;n ra mắt v&ocirc; c&ugrave;ng đỉnh cao khi kiếm về tới 800 triệu đ&ocirc; la Mỹ chỉ sau 3 ng&agrave;y ph&aacute;t h&agrave;nh t&iacute;nh từ ng&agrave;y 28/10. Th&agrave;nh t&iacute;ch n&agrave;y gi&uacute;p cho Modern Warfare II trở th&agrave;nh tr&ograve; chơi b&aacute;n chạy nhất trong tuần mở b&aacute;n của thương hiệu Call of Duty, vượt qua Modern Warfare 3 năm 2011.</p>\r\n\r\n<p>Tuy nhi&ecirc;n d&ugrave; con số 800 triệu đ&ocirc; la Mỹ của Modern Warfare II l&agrave; kinh khủng th&igrave; n&oacute; vẫn chưa thể vượt qua được Grand Therf Auto 5 của Rockstar v&agrave;o năm 2013 với doanh thu 1 tỷ đ&ocirc; la Mỹ chỉ sau 3 ng&agrave;y.</p>\r\n\r\n<h2><strong>Alan Wake 2</strong></h2>\r\n\r\n<p><img alt=\"Alan Wake 2 đã sẵn sàng để ra mắt cho năm 2023, đây có lẽ là tin vui cho  người hâm mộ\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/10/29142457/alan-wake-2-1-1667028297-24.jpg\" style=\"height:561px; width:997px\" /></p>\r\n\r\n<p>Remedy Entertainment cho biết họ đang trong qu&aacute; tr&igrave;nh ph&aacute;t triển Alan Wake 2 c&ugrave;ng nhiều tựa game kh&aacute;c trong vũ trụ Control với tiến độ thực hiện đang chạy trơn tru. Cụ thể hiện tại Alan Wake 2 đang trong qu&aacute; tr&igrave;nh sản xuất to&agrave;n phần v&agrave; tiến h&agrave;nh test thử với một số người d&ugrave;ng. Tr&ograve; chơi dự kiến sẽ l&agrave; c&aacute;i t&ecirc;n bom tấn của Remedy trong năm sau.</p>', '2022-11-21 03:46:55', 1, 1, '2022-11-21 04:06:06'),
(7, 'Mọi Màu Nintendo Switch Joy-con được sản xuất mà bạn chưa biết???', 'moi-mau-nintendo-switch-joy-con-duoc-san-xuat-ma-ban-chua-biet', 0, 1, 7, 0, 'Màu Nintendo Switch Joy-con', '2022-11-21__3957521-3952064-untitled-1-0001-switchcontrollers3.jpg', '<p>Đ&acirc;y chắc chắn ch&iacute;nh l&agrave; một chiếc Joy-con m&agrave;u đen m&agrave; bất k&igrave; ai mua&nbsp;<a href=\"https://34gameshop.vn/nintendo-switch/\" title=\"nintendo switch\">Nintendo Switch</a>&nbsp;đều phải c&oacute;. Mặc d&ugrave; đ&acirc;y&nbsp;l&agrave; m&agrave;u sắc trung thực, phổ th&ocirc;ng nhưng cũng ch&iacute;nh l&agrave; m&agrave;u sắc được nhiều người chơi lựa chọn nhất.</p>\r\n\r\n<p>Ngo&agrave;i ra, chiếc&nbsp;Joy-Con m&agrave;u x&aacute;m cũng kh&ocirc;ng hề k&eacute;m cạnh n&oacute; vẫn mang đến&nbsp;một m&agrave;u sắc&nbsp;tinh tế v&agrave; chất lượng đối tốt nhất.&nbsp;M&agrave;u Nintendo Switch Joy-con v&ocirc; c&ugrave;ng&nbsp;sang trọng,chắc hẳn m&agrave;u x&aacute;m sẽ l&agrave; m&agrave;u tốt nhất m&agrave; Nintendo c&oacute; thể đ&atilde; chọn khi Switch lần đầu ti&ecirc;n được tung ra thị trường v&agrave; 5 năm sau, ch&uacute;ng vẫn l&agrave; một cặp đẹp v&agrave; tinh tế.</p>\r\n\r\n<h2><strong>Original Neon Red and Blue Joy-Con &ndash; Sự kết hợp giữa xanh v&agrave; đỏ</strong></h2>\r\n\r\n<p><img alt=\"Hình ảnh Original Neon Red và Blue Joy-Con\" src=\"https://www.gamespot.com/a/uploads/scale_super/1601/16018044/3957518-3952128-switch-neon.jpg\" style=\"height:720px; width:1280px\" title=\"Hình ảnh Original Neon Red và Blue Joy-Con\" /></p>\r\n\r\n<p>H&igrave;nh ảnh Original Neon Red v&agrave; Blue Joy-Con</p>\r\n\r\n<p>Vẫn l&agrave; một chiếc Joy-con phổ biến với d&acirc;n game thủ khi mua&nbsp;<strong><a href=\"https://34gameshop.vn/may-nintendo-switch-oled-model-neon-red-and-neon-blue-joy-con/\" target=\"_bank\">Nintendo Switch Oled</a></strong>&nbsp;với hai m&agrave;u chủ đạo l&agrave; xanh v&agrave; đỏ. So với c&aacute;ch phối m&agrave;u đen b&oacute;ng v&agrave; đen mờ được Sony v&agrave; Microsoft lựa chọn cho bộ điều khiển của họ, th&igrave; những&nbsp;chiếc Joy-Con được phối m&agrave;u xanh đỏ chắc hẳn sẽ&nbsp;nổi bật hơn hẳn khi pha trộn giữa thiết kế độc đ&aacute;o với m&agrave;u sắc bắt mắt.</p>\r\n\r\n<h2><strong>Một chiếc si&ecirc;u phẩm Super Smash Bros. Ultimate Grey Joy-Con</strong></h2>\r\n\r\n<p><img alt=\"Hình ảnhSuper Smash Bros. Ultimate Grey Joy-Con\" src=\"https://www.gamespot.com/a/uploads/scale_super/1601/16018044/3957519-3952141-smash-cons.jpg\" style=\"height:720px; width:1280px\" title=\"Hình ảnhSuper Smash Bros. Ultimate Grey Joy-Con\" /></p>\r\n\r\n<p>H&igrave;nh ảnhSuper Smash Bros. Ultimate Grey Joy-Con</p>\r\n\r\n<p>Một chiếc Joy-Con m&agrave;u x&aacute;m với một ch&uacute;t tinh tế nhưng kh&ocirc;ng hề&nbsp;sặc sỡ, kết hợp đ&oacute; l&agrave; một bộ điều khiển Super Smash Bros. Ultimate n&agrave;y sẽ đ&aacute;p ứng những nhu cầu rất cụ thể đ&oacute;! Được thiết kế bởi một loạt c&aacute;c đường m&agrave;u x&aacute;m 90 v&agrave; 180 độ gắn liền với tr&ograve; chơi, m&agrave;u x&aacute;m thẩm mỹ giống như Joy-Con ban đầu v&agrave; một lời nhắc nhở rằng buồn tẻ c&oacute; thể th&uacute; vị l&agrave; những dấu hiệu nổi bật của thiết kế n&agrave;y.</p>\r\n\r\n<h2><strong>Phi&ecirc;n bản của Pikachu v&agrave; Eevee Pokemon Let&rsquo;s Go! Joy-Con</strong></h2>\r\n\r\n<p><img alt=\"Hình ảnh Pikachu và Eevee Pokemon Let\'s Go! Joy-Con\" src=\"https://www.gamespot.com/a/uploads/scale_super/1601/16018044/3957520-3952066-untitled-1_0003_switchcontrollers%282%29.jpg\" style=\"height:720px; width:1280px\" title=\"Hình ảnh Pikachu và Eevee Pokemon Let\'s Go! Joy-Con\" /></p>\r\n\r\n<p>H&igrave;nh ảnh Pikachu v&agrave; Eevee Pokemon Let&rsquo;s Go! Joy-Con</p>\r\n\r\n<p>Phi&ecirc;n bản đặc biệt Joy-Con d&agrave;nh cho t&iacute;n đồ m&ecirc; Pokemon nhưng vẫn kh&ocirc;ng qu&ecirc;n chơi game đ&oacute; ch&iacute;nh l&agrave;&nbsp;Pokemon Let&rsquo;s Go Eevee v&agrave; Pikachu &hellip; hơi kỳ lạ. Được sử dụng với thiết kể pikachu thu nhỏ bản Joy-con&nbsp;tr&ocirc;ng giống như một thanh caramel ở tay tr&aacute;i v&agrave; một l&aacute;t b&aacute;nh sữa trứng ở tay phải của bạn.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, m&agrave;u sắc tr&ocirc;ng tuyệt vời v&agrave; kh&aacute;c thường, v&igrave; vậy ch&uacute;ng c&oacute; một số n&eacute;t quyến rũ. T&iacute;n đồ m&ecirc; m&agrave;u v&agrave;ng hay l&agrave; fan của pikachu chắc hẳn kh&ocirc;ng thể bỏ lỡ được phi&ecirc;n bản n&agrave;y rồi.</p>', '2022-11-21 04:04:24', 0, 1, '2022-11-21 04:07:22'),
(8, 'Xenoblade Chronicles 3: Mọi thứ chúng ta cần biết trước khi mua và chơi game', 'xenoblade-chronicles-3-moi-thu-chung-ta-can-biet-truoc-khi-mua-va-choi-game', 0, 1, 7, 0, 'Xenoblade Chronicles 3', '2022-11-21__pexels-photo-11591876.jpeg', '<h2 dir=\"ltr\"><strong>Th&ocirc;ng tin ng&agrave;y ph&aacute;t h&agrave;nh game</strong></h2>\r\n\r\n<p dir=\"ltr\">Xenoblade Chronicles 3 được thiết lập để c&ocirc;ng bố độc quyền cho&nbsp;<a href=\"https://34gameshop.vn/nintendo-switch/\" title=\"nintendo switch\">Nintendo Switch</a>&nbsp;v&agrave;o ng&agrave;y 29 th&aacute;ng 7 năm 2022. Điều th&uacute; vị l&agrave; ng&agrave;y ph&aacute;t h&agrave;nh n&agrave;y thực sự sẽ sớm hơn hai th&aacute;ng so với th&ocirc;ng b&aacute;o ban đầu của Nintendo, một kỳ t&iacute;ch rất hiếm trong ng&agrave;nh c&ocirc;ng nghiệp tr&ograve; chơi.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"574\" src=\"https://www.youtube.com/embed/nmLXU2Yzqfo?feature=oembed\" title=\"Xenoblade Chronicles 3 - Overview Trailer - Nintendo Switch\" width=\"1020\"></iframe></p>\r\n\r\n<h2 dir=\"ltr\"><strong>C&acirc;u chuyện v&agrave; nội dung của game</strong></h2>\r\n\r\n<p><img alt=\"Xenoblade Chronicles 3 leaks, playable on Steam Deck before Switch release | Eurogamer.net\" src=\"https://assets.reedpopcdn.com/NSwitch_XenobladeChronicles3_14.jpg/BROK/resize/1200x1200%3E/format/jpg/quality/70/NSwitch_XenobladeChronicles3_14.jpg\" /></p>\r\n\r\n<p dir=\"ltr\">Lấy bối cảnh một x&atilde; hội tương lai bị ph&acirc;n chia bởi chiến tranh, thật an to&agrave;n khi gọi Xenoblade Chronicles 3 l&agrave; t&aacute;c phẩm lỗi thời nhất trong loạt phim Xenoblade. Tr&ograve; chơi chủ yếu kiểm tra hai phe &ndash; Keves v&agrave; Agnus &ndash; những người lu&ocirc;n chiến đấu quyết liệt với nhau. Những trận chiến đ&oacute; được chiến đấu bởi những người l&iacute;nh trẻ, những người được tạo ra một c&aacute;ch nh&acirc;n tạo v&agrave; c&oacute; 10 năm &ndash; được gọi l&agrave; &ldquo;điều khoản&rdquo; trong tr&ograve; chơi &ndash; để sống. Tuy nhi&ecirc;n, lối sống bạo lực như vậy c&oacute; nghĩa l&agrave; hầu như kh&ocirc;ng một ai trong số họ thậm ch&iacute; sống l&acirc;u như vậy.</p>\r\n\r\n<p dir=\"ltr\">Tr&ecirc;n cả Keves v&agrave; Agnus đều tồn tại những đơn vị rất đặc biệt được gọi l&agrave; Off-Seers c&oacute; nhiệm vụ đưa linh hồn của những người l&iacute;nh đ&atilde; ng&atilde; xuống v&ugrave;ng đất vĩ đại th&ocirc;ng qua việc chơi một b&agrave;i h&aacute;t đặc biệt. Đoạn giới thiệu đầu ti&ecirc;n giới thiệu ch&uacute;ng ta đến với Noah, một Off-Seer thổi s&aacute;o phục vụ quốc gia Keves, trước khi giới thiệu Mio, một Off-Seer Agnian hiện đang ở tuổi thứ mười của c&ocirc; ấy.</p>\r\n\r\n<p dir=\"ltr\">Ngay sau khi tr&ograve; chơi được bắt đầu, Noah v&agrave; hai đồng minh của anh, Eunie v&agrave; Lanz, thấy m&igrave;nh bị cuốn v&agrave;o một trận chiến c&ograve;n lớn hơn trận chiến giữa Keves v&agrave; Agnus. Cuối c&ugrave;ng, bộ ba buộc phải hợp t&aacute;c với những kẻ th&ugrave; cũ của họ để c&oacute; thể đối mặt với một mối đe dọa lớn hơn, mặc d&ugrave; mối đe dọa đ&oacute; c&oacute; thể l&agrave; g&igrave; vẫn chưa r&otilde; r&agrave;ng.</p>', '2022-11-21 04:08:31', 0, 0, '2022-11-21 04:08:55'),
(9, 'Những phụ kiện cho PS5 không thể thiếu khi mua máy PS5 mà bạn nên dùng.', 'nhung-phu-kien-cho-ps5-khong-the-thieu-khi-mua-may-ps5-ma-ban-nen-dung', 0, 1, 6, 0, 'ay cầm DUALSENSE PS5', '2022-11-21__dualsense-wireless-controller-1-b45b4a1541534832be69a93c50f14ac7-1024x1024.webp', '<p>DualSense sở hữu ngoại h&igrave;nh kh&aacute; bắt mắt với những đường n&eacute;t mềm mại v&agrave; sang trọng. Chiếc tay cầm mới giờ đ&acirc;y đ&atilde; &ldquo;mập&rdquo; hơn, sở hữu 2 tone m&agrave;u chứ kh&ocirc;ng chỉ c&oacute; 1 như Dualshock 4. Light bar tr&ecirc;n&nbsp;DualSense&nbsp;sẽ chạy dọc theo viền hai b&ecirc;n của TouchPad nh&igrave;n rất đẹp. Vị tr&iacute; của cụm n&uacute;t tr&ecirc;n DualSense tr&ocirc;ng vẫn quen thuộc kh&ocirc;ng kh&aacute;c nhiều DualShock 4, ch&uacute;ng ta vẫn c&oacute; cụm n&uacute;t Dpad b&ecirc;n tr&aacute;i c&ugrave;ng cụm 4 n&uacute;t chức năng b&ecirc;n phải, v&agrave; hai cần analog thẳng h&agrave;ng với nhau. Sony n&oacute;i đ&oacute; vẫn sẽ l&agrave; những chi tiết được game thủ y&ecirc;u mến nhất ở DualShock 4, ch&uacute;ng ta kh&ocirc;ng cần phải tập l&agrave;m quen từ đầu với chiếc tay cầm mới. Nhưng kh&ocirc;ng chỉ c&oacute; thế,&nbsp;DualSense&nbsp;sẽ được trang bị rất nhiều c&ocirc;ng nghệ mới gi&uacute;p cho trải nghiệm game tr&ecirc;n&nbsp;PS5 trở n&ecirc;n ch&acirc;n thực hơn. Ngo&agrave;i ra tay cầm DUALSENSE PS5 c&ograve;n c&oacute; nhiều m&agrave;u kh&aacute;c để cho bạn lựa chọn cũng như thuận tiện cho việc trang tr&iacute; cho ng&ocirc;i nh&agrave; của bạn.</p>\r\n\r\n<p><img alt=\"Hình ảnh tay cầm DualSense Wireless Controller White\" src=\"https://file.hstatic.net/1000154920/file/dualsense_wireless_controller_1_b45b4a1541534832be69a93c50f14ac7_1024x1024.jpg\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"574\" src=\"https://www.youtube.com/embed/SebzB8W3bVU?feature=oembed\" title=\"DualSense Wireless Controller Video | PS5\" width=\"1020\"></iframe></p>\r\n\r\n<h2><strong>DUALSENSE CHARGING STATION&nbsp;</strong></h2>\r\n\r\n<p>Điều n&agrave;y mang lại cho bạn sự tiện lợi, tiết kiệm thời gian cũng như giảm bớt c&ocirc;ng suất cho&nbsp;<a href=\"https://34gameshop.vn/playstation-5-ps5/\" rel=\"noopener\" target=\"_blank\" title=\"Playstation 5\">Playstation 5</a>&nbsp;vốn dĩ sẽ chia 1 phần c&ocirc;ng suất nguồn để sạc cho tay cầm của bạn.</p>\r\n\r\n<p><img alt=\"Công năng của Dock Sạc tay cầm PS5\" src=\"https://file.hstatic.net/200000118207/file/k_sac_tay_cam_ps5_dualsense_charging_station_gia_re_gamestation_vn-002_9e165bb8cf7b4cdf8f47aecf1825b3f1_grande.jpg\" /></p>\r\n\r\n<p>Tiếp năng lượng ngay cho&nbsp;<a href=\"https://34gameshop.vn/playstation-5-ps5/may-game-ps5/phu-kien-ps5/\" title=\"Phụ kiện PS5\">tay cầm PS5</a>&nbsp;của bạn bằng Dock Sạc&nbsp;<a href=\"https://34gameshop.vn/playstation-5-ps5/may-game-ps5/phu-kien-ps5/\" title=\"Phụ kiện PS5\">tay cầm PS5</a>&nbsp;đang b&aacute;n tại&nbsp;<strong><a href=\"https://34gameshop.vn/\" title=\"Cửa hàng 34gameshop\">34gameshop</a>.</strong>&nbsp;Với thiết kế tinh tế, phụ kiện n&agrave;y sẽ gi&uacute;p g&oacute;c chơi game của bạn th&ecirc;m gọn g&agrave;ng v&agrave; đẹp mắt hơn hẳn. Sự tiện lợi n&oacute; mang lại cũng kh&ocirc;ng thể b&agrave;n c&atilde;i khi sạc được c&ugrave;ng l&uacute;c 2 tay PS5, kết nối v&ocirc; c&ugrave;ng dễ. Sản phẩm do ch&iacute;nh Sony sản xuất n&ecirc;n bạn cũng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về chất lượng.&nbsp;</p>', '2022-11-21 04:11:24', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
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
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(8, 'Playstation', 'playstation', 4, 18, '2022-11-21 04:13:06', NULL),
(9, 'Nintendo Switch', 'nintendo-switch', 5, 22, '2022-11-21 04:13:42', NULL),
(10, 'Đĩa Game', 'dia-game', 5, 20, '2022-11-21 04:13:59', NULL),
(11, 'Tay cầm Game', 'tay-cam-game', 4, 30, '2022-11-21 04:14:36', NULL),
(13, 'Thẻ game', 'the-game', 3, 34, '2022-11-21 04:23:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
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
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(18, 'Playstation 5', 'playstation-5', '2022-11-21__playstation-icon.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:25:44', '2022-11-21 02:27:41'),
(19, 'Máy PS5', 'may-ps5', NULL, NULL, NULL, 18, 0, 1, '2022-11-21 02:28:08', NULL),
(20, 'Đĩa game PS5', 'dia-game-ps5', NULL, NULL, NULL, 18, 0, 1, '2022-11-21 02:28:34', NULL),
(21, 'Phụ kiện PS5', 'phu-kien-ps5', NULL, NULL, NULL, 18, 0, 1, '2022-11-21 02:28:48', NULL),
(22, 'Nintendo Switch', 'nintendo-switch', '2022-11-21__nintendo-switch.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:32:54', '2022-11-21 02:34:51'),
(23, 'Game Nintendo Switch', 'game-nintendo-switch', NULL, NULL, NULL, 22, 0, 1, '2022-11-21 02:36:00', NULL),
(24, 'Máy Nintendo Switch', 'may-nintendo-switch', NULL, NULL, NULL, 22, 0, 1, '2022-11-21 02:36:34', NULL),
(25, 'Phụ Kiện Nintendo Switch', 'phu-kien-nintendo-switch', NULL, NULL, NULL, 22, 0, 1, '2022-11-21 02:36:52', NULL),
(26, 'Mcrosoft Xbox', 'mcrosoft-xbox', '2022-11-21__mcrosoft-xbox.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:37:51', '2022-11-21 02:38:36'),
(27, 'Máy Xbox 360', 'may-xbox-360', NULL, NULL, NULL, 26, 0, 1, '2022-11-21 02:40:07', NULL),
(28, 'Game Xbox 360', 'game-xbox-360', NULL, NULL, NULL, 26, 0, 1, '2022-11-21 02:40:26', NULL),
(29, 'Phụ Kiện Xbox 360', 'phu-kien-xbox-360', NULL, NULL, NULL, 26, 0, 1, '2022-11-21 02:40:37', NULL),
(30, 'Tay cầm Game', 'tay-cam-game', '2022-11-21__tay-cam-game.jpg', NULL, NULL, 0, 0, 1, '2022-11-21 02:41:46', '2022-11-21 02:44:02'),
(31, 'Tay cầm PS5', 'tay-cam-ps5', NULL, NULL, NULL, 30, 0, 1, '2022-11-21 02:44:25', NULL),
(32, 'Tay cầm PS4', 'tay-cam-ps4', NULL, NULL, NULL, 30, 0, 1, '2022-11-21 02:44:40', NULL),
(33, 'Tay cầm XBox360', 'tay-cam-xbox360', NULL, NULL, NULL, 30, 0, 1, '2022-11-21 02:45:03', NULL),
(34, 'Thẻ Game', 'the-game', '2022-11-21__qrcode-scan-icon-136286.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:47:13', '2022-11-21 02:49:45'),
(35, 'Thẻ PSN CARD', 'the-psn-card', NULL, NULL, NULL, 34, 0, 1, '2022-11-21 02:50:30', NULL),
(36, 'Thẻ PSN US', 'the-psn-us', NULL, NULL, NULL, 34, 0, 1, '2022-11-21 02:50:42', NULL),
(37, 'Xbox One', 'xbox-one', '2022-11-21__x.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:52:55', NULL),
(38, 'Máy Xbox One', 'may-xbox-one', NULL, NULL, NULL, 37, 0, 1, '2022-11-21 02:54:00', NULL),
(39, 'Game Xbox One', 'game-xbox-one', NULL, NULL, NULL, 37, 0, 1, '2022-11-21 02:54:17', NULL),
(40, 'Phụ kiện Xbox One', 'phu-kien-xbox-one', NULL, NULL, NULL, 37, 0, 1, '2022-11-21 02:54:31', NULL),
(41, 'Playstation 4', 'playstation-4', '2022-11-21__ps2.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:56:08', NULL),
(42, 'Playstation 2', 'playstation-2', '2022-11-21__ps4.png', NULL, NULL, 0, 0, 1, '2022-11-21 02:56:25', '2022-11-21 02:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
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
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(9, NULL, NULL, 'phiên bản game hay', 0, 2, 0, 23, 0, 0, '2022-11-23 14:22:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
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
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_position_5`, `e_position_6`, `created_at`, `updated_at`) VALUES
(1, 'event1', '2022-11-21__1.jpg', 'https://www.google.com/', 1, 0, 0, 0, 0, 0, '2022-11-21 03:05:11', '2022-11-21 03:05:11'),
(2, 'event2', '2022-11-21__av-banner-new-1200x1200-crop-center.webp', '/', 0, 0, 0, 0, 0, 0, '2022-11-21 04:26:06', '2022-11-21 04:26:06'),
(3, 'event3', '2022-11-21__pexels-photo-11591876.jpeg', '/', 0, 0, 1, 0, 0, 0, '2022-11-21 04:27:27', '2022-11-21 04:27:27'),
(4, 'event4', '2022-11-21__237b8e8540e411086d3a9cc634a64321.png', '/', 0, 0, 0, 1, 0, 0, '2022-11-21 04:27:07', '2022-11-21 04:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `import_histories`
--

CREATE TABLE `import_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `thanhtoan` bigint(20) DEFAULT 0,
  `id_invoice` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_histories`
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
(58, 700000, 44, '2022-11-23 14:42:25', '2022-11-23 14:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_entered`
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
-- Dumping data for table `invoice_entered`
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
(44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 0, 1000000, 21, 10, 0, 100000, 700000, '2022-11-23 14:42:25', '2022-11-23 14:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
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
-- Table structure for table `menus`
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
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(5, 'Tin tức Hot trong ngày', 'tin-tuc-hot-trong-ngay', NULL, NULL, NULL, 0, 1, '2022-11-21 03:46:34', NULL),
(6, 'Tin tức mới về công nghệ', 'tin-tuc-moi-ve-cong-nghe', NULL, NULL, NULL, 0, 1, '2022-11-21 04:02:43', NULL),
(7, 'Tin tức Khuyến mãi', 'tin-tuc-khuyen-mai', NULL, NULL, NULL, 0, 1, '2022-11-21 04:03:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
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
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(23, 24, 2, 5, 1, 237500, '2022-11-23 03:47:10', NULL),
(26, 27, 20, 5, 1, 142500, '2022-11-23 14:31:55', NULL),
(27, 28, 2, 5, 1, 237500, '2022-11-23 14:32:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
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
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_import_goods`, `pro_number_import`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `preview`) VALUES
(2, 'Nintendo eShop Code 10$', 'nintendo-eshop-code-10', 250000, 0, 36, 0, 0, 5, '2022-11-23__516b1cdc81304e6e1721-300x300.jpg', 21, 1, 1, 9, 'BẢO ĐẢM 100% CHÍNH HÃNG\r\n34GameShop chỉ làm việc trực tiếp với các thương hiệu và nhà phân phối chính thức\r\n34GameShop kiểm soát chặt chẽ quy trình hàng hóa được hợp pháp giao dịch, nhập khẩu và khai thuế\r\nHỗ trợ mua máy trả góp lãi xuất 0% qua thẻ tín dụng, nhanh hơn, tiết kiệm hơn', '<p>Nintendo eShop Code l&agrave; một dịch vụ ph&acirc;n phối kỹ thuật số được cung cấp bởi Nintendo Network cho d&ograve;ng m&aacute;y của h&atilde;ng. Những thứ m&agrave; người d&ugrave;ng c&oacute; thể truy cập v&agrave; sử dụng eShop bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Mua game &ndash; Tải game (Game miễn ph&iacute; lẫn game c&oacute; ph&iacute;).</li>\r\n	<li>Game Demo (Phi&ecirc;n bản chơi thử của game).</li>\r\n	<li>Download Content (Viết tắt DLC, l&agrave; nội dung mở rộng th&ecirc;m của game. DLC bao gồm c&oacute; DLC miễn ph&iacute; v&agrave; DLC t&iacute;nh ph&iacute; t&ugrave;y thuộc v&agrave;o nh&agrave; ph&aacute;t triển game quy định).</li>\r\n	<li>Update game (C&aacute;c bản sửa lỗi, thay đổi v&agrave; cập nhật của game cũ đ&atilde; mua).</li>\r\n	<li>Th&ocirc;ng tin về c&aacute;c tựa game sắp ra, video trailer game v&agrave; th&ocirc;ng tin đ&aacute;nh gi&aacute; c&aacute;c tựa game đ&atilde; ra mắt của người d&ugrave;ng kh&aacute;c.</li>\r\n</ul>', 1, 4, 4, '2020-07-17 14:55:02', 242, 0, 251, NULL, NULL, 0, '2022-11-23 14:21:39', '<p>&nbsp;</p>\r\n\r\n<p><strong>HƯỚNG DẪN NẠP NINTENDO ESHOP CODE ĐỂ MUA GAME</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; loại thẻ trả trước được ph&aacute;t h&agrave;nh bởi Nintendo. Khi nạp thẻ Nintendo eShop, tiền sẽ chạy v&agrave;o t&agrave;i khoản Nintendo của c&aacute;c bạn d&ugrave;ng để thanh to&aacute;n khi mua game tr&ecirc;n eshop. Nintendo eShop card c&oacute; thể sử dụng cho c&aacute;c loại m&aacute;y kh&aacute;c nhau của Nintendo. Phổ biến v&agrave; dễ sử dụng nhất l&agrave; thẻ Nintendo eShop gift card c&oacute; c&aacute;c mệnh gi&aacute;: 10$, 20$, 35$, 50$. Bạn c&oacute; thể mua thẻ Nintendo eShop nhanh v&agrave; rẻ tại&nbsp;<a href=\"https://34gameshop.vn/\" title=\"Cửa hàng 34gameshop\">34GameShop</a>.</p>'),
(3, 'PSN Code 100$ US', 'psn-code-100-us', 2400000, 0, 34, 0, 0, 10, '2022-11-23__thiet-ke-chua-co-ten-300x300.png', 19, 1, 1, 4, 'BẢO ĐẢM 100% CHÍNH HÃNG\r\n34GameShop chỉ làm việc trực tiếp với các thương hiệu và nhà phân phối chính thức\r\n34GameShop kiểm soát chặt chẽ quy trình hàng hóa được hợp pháp giao dịch, nhập khẩu và khai thuế\r\nHỗ trợ mua máy trả góp lãi xuất 0% qua thẻ tín dụng, nhanh hơn, tiết kiệm hơn', '<ul>\r\n	<li>PSN Code l&agrave; thẻ nạp v&agrave;o t&agrave;i khoản PSN để c&oacute; số dư t&agrave;i khoản, bạn d&ugrave;ng để mua games, DLC, addon, nhạc, film tr&ecirc;n hệ thống của PSN.</li>\r\n	<li>Trước khi mua thẻ PSN c&aacute;c bạn cần kiểm tra hệ [REGION] của t&agrave;i khoản PSN để mua thẻ PSN PLUS, PSN WALLET cho ch&iacute;nh x&aacute;c.:</li>\r\n	<li>Đăng nhập t&agrave;i khoản PSN của bạn</li>\r\n	<li>Sau khi đăng nhập t&agrave;i khoản PSN c&aacute;c bạn v&agrave;o phần Account -&gt; V&agrave;o phần Account details</li>\r\n	<li>C&aacute;c bạn kiểm tra phần Country / Region ở ph&iacute;a dưới xem thuộc quốc gia n&agrave;o th&igrave; t&agrave;i khoản PSN của bạn thuộc quốc gia đ&oacute;</li>\r\n</ul>', 0, 0, 4, '2020-07-17 19:20:46', 63, 0, 75, NULL, NULL, 0, '2022-11-23 03:22:13', '<h4>HƯỚNG DẪN NẠP THẺ PSN CODE ĐỂ MUA GAME</h4>\r\n\r\n<p>Nếu bạn muốn mua những tựa game đang sale ở PlayStation Store US th&igrave; thay v&igrave; cố gắng d&ugrave;ng thẻ/Paypal Việt Nam add v&agrave;o t&agrave;i khoản PSN US một c&aacute;ch v&ocirc; &iacute;ch th&igrave; n&ecirc;n d&ugrave;ng thẻ ng&acirc;n h&agrave;ng đ&oacute; mua thẻ nạp PSN Card US ở&nbsp;<a href=\"https://34gameshop.vn/\" title=\"Cửa hàng 34gameshop\">34Gameshop</a>&nbsp;sẽ nhanh v&agrave; dễ d&agrave;ng hơn.</p>\r\n\r\n<p>Hiện tại&nbsp;<strong><a href=\"https://34gameshop.vn/\" target=\"_bank\">34Gameshop</a></strong>&nbsp;đang c&oacute; rất nhiều thẻ PSN Gift Card c&aacute;c hệ kh&aacute;c nhau với c&aacute;c mức gi&aacute; kh&aacute;c nhau ph&ugrave; hợp cho nhu cầu sử dụng của từng người d&ugrave;ng.</p>\r\n\r\n<p>Lưu &yacute; mua thẻ nạp PSN Gift Card theo hệ t&agrave;i khoản chứ kh&ocirc;ng theo hệ m&aacute;y cho n&ecirc;n t&agrave;i khoản hệ n&agrave;o th&igrave; phải mua thẻ PSN hệ tương ứng.</p>'),
(4, 'Tay Cầm PS5 – PlayStation 5', 'tay-cam-ps5-playstation-5', 1550000, 0, 26, 0, 0, 10, '2022-11-23__tay-cam-ps5-playstation-5-dualsense-wireless-controller-starlight-blue-mau-xanh-3-300x300.png', 9, 1, 1, 2, 'BẢO ĐẢM 100% CHÍNH HÃNG\r\n34GameShop chỉ làm việc trực tiếp với các thương hiệu và nhà phân phối chính thức\r\n34GameShop kiểm soát chặt chẽ quy trình hàng hóa được hợp pháp giao dịch, nhập khẩu và khai thuế\r\nHỗ trợ mua máy trả góp lãi xuất 0% qua thẻ tín dụng, nhanh hơn, tiết kiệm hơn', '<h3>C&oacute; thể mua sản phẩm trực tiếp tr&ecirc;n Shopee&nbsp;<a href=\"https://shopee.vn/Analog-thay-th%E1%BA%BF-cho-tay-c%E1%BA%A7m-XBOX360-i.50829582.1299267237\">tại đ&acirc;y</a>.</h3>', 0, 0, 4, '2020-07-17 19:22:41', 95, 0, 100, NULL, NULL, 0, '2022-11-23 03:21:46', NULL),
(5, 'NINTENDO SWITCH™ SPORTS', 'nintendo-switch-sports', 1250000, 0, 23, 0, 0, 10, '2022-11-23__nintendo-300x300.jpg', 2, 1, 1, 0, 'BẢO ĐẢM 100% CHÍNH HÃNG\r\n34GameShop chỉ làm việc trực tiếp với các thương hiệu và nhà phân phối chính thức\r\n34GameShop kiểm soát chặt chẽ quy trình hàng hóa được hợp pháp giao dịch, nhập khẩu và khai thuế\r\nHỗ trợ mua máy trả góp lãi xuất 0% qua thẻ tín dụng, nhanh hơn, tiết kiệm hơn', '<p>Di chuyển với B&oacute;ng đ&aacute;, B&oacute;ng chuyền, Bowling, Quần vợt, Cầu l&ocirc;ng v&agrave; Chambara (Đấu kiếm) bằng bộ điều khiển Joy-Con! C&aacute;c điều khiển trực quan, v&igrave; vậy bạn c&oacute; thể đ&aacute;nh v&agrave;o s&acirc;n (hoặc l&agrave;n đường, s&acirc;n hoặc đấu trường) v&agrave; bắt đầu.&nbsp;Với c&aacute;c chuyển động được kiểm so&aacute;t, bạn c&oacute; thể l&agrave;m cong tr&aacute;i b&oacute;ng bowling của m&igrave;nh, th&ecirc;m độ xo&aacute;y v&agrave;o một c&uacute; đ&aacute;nh quần vợt hoặc thậm ch&iacute; sử dụng Joy-Con với phụ kiện D&acirc;y đeo ch&acirc;n để đ&aacute; b&oacute;ng trong Trận đ&aacute; lu&acirc;n lưu.&nbsp;Gia đ&igrave;nh v&agrave; bạn b&egrave; c&oacute; thể tham gia vui chơi tr&ecirc;n c&ugrave;ng một hệ thống hoặc trực tuyến. Th&ecirc;m v&agrave;o đ&oacute;, một m&ocirc;n thể thao thứ bảy được l&ecirc;n kế hoạch bổ sung th&ocirc;ng qua bản cập nhật miễn ph&iacute; v&agrave;o m&ugrave;a thu n&agrave;y, sẵn s&agrave;ng tham gia chơi Golf!</p>', 0, 0, 0, '2020-07-17 19:31:23', 0, 0, 0, NULL, NULL, 0, '2022-11-23 03:20:21', '<p>Hơn mười năm trước, game thủ tr&ecirc;n to&agrave;n thế giới sẽ rất vui mừng với sự ra mắt của Wii Sports, được ph&aacute;t h&agrave;nh c&ugrave;ng với Wii của Nintendo v&agrave;o năm 2006. Mọi con mắt đều đổ dồn v&agrave;o phong c&aacute;ch chơi mới sử dụng chuyển động của người chơi Thay v&igrave; nhấn c&aacute;c n&uacute;t bằng cần điều khiển, Wii Mote đ&atilde; khiến n&oacute; trở n&ecirc;n phổ biến ngay cả tại lễ trao giải Oscar đến nỗi n&oacute; đ&atilde; được đưa l&ecirc;n tr&igrave;nh chiếu.</p>'),
(6, 'Ring Fit Adventure – Game Nintendo Switch', 'ring-fit-adventure-game-nintendo-switch', 1599000, 0, 22, 0, 0, 20, '2022-11-23__h.jpg', 8, 1, 1, 0, 'BẢO ĐẢM 100% CHÍNH HÃNG\r\n34GameShop chỉ làm việc trực tiếp với các thương hiệu và nhà phân phối chính thức\r\n34GameShop kiểm soát chặt chẽ quy trình hàng hóa được hợp pháp giao dịch, nhập khẩu và khai thuế\r\nHỗ trợ mua máy trả góp lãi xuất 0% qua thẻ tín dụng, nhanh hơn, tiết kiệm hơn', '<p>Ring Fit Adventure l&agrave; một game nhập vai h&agrave;nh động tập thể dục được ph&aacute;t triển v&agrave; ph&aacute;t h&agrave;nh bởi Nintendo cho Nintendo Switch.<br />\r\nNg&agrave;y ph&aacute;t h&agrave;nh ban đầu: 18 th&aacute;ng 10, 2019<br />\r\nNh&agrave; soạn nhạc: Shinji Ushiroda; Maasa Miyoshi; Shiho Fujii; Asuka Ota<br />\r\nĐạo diễn: Hiroshi Matsunaga<br />\r\nNh&agrave; sản xuất: Kouichi Kawamoto<br />\r\nChế độ: Tr&ograve; chơi điện tử một người chơi<br />\r\nC&aacute;c thể loại: Exergaming, Game thể thao, Tr&ograve; chơi h&agrave;nh động phi&ecirc;u lưu, Tr&ograve; chơi điện tử nhập vai</p>', 0, 0, 5, '2020-07-17 19:34:57', 60, 0, 60, NULL, NULL, 0, '2022-11-23 03:19:55', NULL),
(7, 'CALL OF DUTY | MODERN WARFARE II', 'call-of-duty-modern-warfare-ii', 1600000, 0, 20, 0, 0, 5, '2022-11-23__f.png', 5, 1, 1, 1, 'BẢO ĐẢM 100% CHÍNH HÃNG\r\n34GameShop chỉ làm việc trực tiếp với các thương hiệu và nhà phân phối chính thức\r\n34GameShop kiểm soát chặt chẽ quy trình hàng hóa được hợp pháp giao dịch, nhập khẩu và khai thuế\r\nHỗ trợ mua máy trả góp lãi xuất 0% qua thẻ tín dụng, nhanh hơn, tiết kiệm hơn', '<h2><strong>Call of Duty&reg;| Modern Warfare II &ndash; CH&Agrave;O MỪNG BẠN ĐẾN VỚI KỶ NGUY&Ecirc;N MỚI CỦA CALL OF&nbsp; DUTY</strong></h2>\r\n\r\n<p>Cải tiến lối chơi mới. Xử l&yacute; s&uacute;ng ho&agrave;n to&agrave;n mới. AI n&acirc;ng cao. Modern Warfare&reg; II mang đến cho bạn một chiến dịch to&agrave;n cầu, chiến đấu nhiều người chơi nhập vai v&agrave; hoạt động đặc biệt theo hướng tường thuật.</p>\r\n\r\n<h2><strong>MODERN WARFARE II</strong></h2>', 0, 0, 0, '2020-07-20 15:29:34', 11, 0, 11, NULL, NULL, 0, '2022-11-23 03:18:53', '<p>No</p>'),
(9, 'ĐĨA GAME PS5 RETURNAL', 'dia-game-ps5-returnal', 1650000, 0, 20, 0, 0, 0, '2022-11-23__e.jpg', 10, 0, 1, 3, 'Danh mục: Đĩa Game PS5', '<h3>BẢO ĐẢM 100% CH&Iacute;NH H&Atilde;NG</h3>\r\n\r\n<ul>\r\n	<li>34GameShop chỉ l&agrave;m việc trực tiếp với c&aacute;c thương hiệu v&agrave; nh&agrave; ph&acirc;n phối ch&iacute;nh thức</li>\r\n	<li>34GameShop kiểm so&aacute;t chặt chẽ quy tr&igrave;nh h&agrave;ng h&oacute;a được hợp ph&aacute;p giao dịch, nhập khẩu v&agrave; khai thuế</li>\r\n	<li>Hỗ trợ mua m&aacute;y trả g&oacute;p l&atilde;i xuất 0% qua thẻ t&iacute;n dụng, nhanh hơn, tiết kiệm hơn</li>\r\n</ul>', 0, 0, 0, '2021-01-09 06:12:08', 13, 0, 16, NULL, NULL, 0, '2022-11-23 03:18:33', NULL),
(14, 'GRAN TURISMO 7 – ĐĨA GAME PS5', 'gran-turismo-7-dia-game-ps5', 1650000, 0, 20, 0, 0, 0, '2022-11-23__d.jpg', 9, 0, 1, 2, 'Ngày phát hành ban đầu: 4 tháng 3, 2022\r\nNhà phát triển: Polyphony Digital\r\nLoạt trò chơi: Gran Turismo\r\nChế độ: Trò chơi điện tử nhiều người chơi\r\nNhà xuất bản: Sony Interactive Entertainment\r\nThể loại: Sim racing, Game thể thao, Trò chơi mô phỏng phương tiện, Game Đua Xe\r\nCác nền tảng: PlayStation 4, PlayStation 5', '<p>C&ugrave;ng&nbsp;<a href=\"https://34gameshop.vn/\" title=\"Cửa hàng 34gameshop\">34gameshop</a>&nbsp;v&ograve;ng tuần n&agrave;y của Gran Turismo 7. Cuộc đua h&agrave;ng ng&agrave;y c&oacute; một cảm gi&aacute;c hơi kh&aacute;c. Thứ nhất, Race A bất thường c&oacute; t&iacute;nh năng của những chiếc xe thể thao Gr.3 mạnh mẽ, trong khi ch&uacute;ng ta cũng thấy lần đầu ti&ecirc;n triển khai hệ thống C&acirc;n bằng Hiệu suất (BoP) mới của GT7 &ndash; như được giới thiệu trong bản cập nhật v1.19 th&aacute;ng 7 v&agrave;o tuần trước .</p>\r\n\r\n<p>BoP hiện được chia th&agrave;nh ba loại: Tốc độ cao (H), Tốc độ trung b&igrave;nh (M) v&agrave; Tốc độ thấp (L).&nbsp;Tại sao lại thay đổi?&nbsp;Ch&agrave;, đ&atilde; qu&aacute; l&acirc;u rồi những chiếc xe bốn b&aacute;nh đ&atilde; thống trị c&aacute;c cuộc đua phổ biến Gr.3 v&agrave; Gr.4.</p>\r\n\r\n<p>Trong một nỗ lực để tăng cường lợi thế của họ, Polyphony Digital đ&atilde; thực hiện c&aacute;c biện ph&aacute;p quyết liệt để đảm bảo nhiều loại xe lớn hơn c&oacute; cơ hội như nhau trong việc thiết lập thời gian v&ograve;ng đua tương tự.&nbsp;Đ&oacute; l&agrave; một điều tốt.</p>', 0, 0, 4, '2021-01-13 18:21:09', 7, 0, 10, NULL, NULL, 0, '2022-11-23 03:18:14', NULL),
(15, 'God Of War Ragnarok PS5 – Đĩa Game PS5', 'god-of-war-ragnarok-ps5-dia-game-ps5', 1750000, 0, 20, 0, 0, 5, '2022-11-23__c.jpg', 7, 0, 1, 3, 'Từ Santa Monica Studio, phần tiếp theo của God of War (2018)', '<p>Từ Santa Monica Studio, phần tiếp theo của God of War (2018) được giới ph&ecirc; b&igrave;nh đ&aacute;nh gi&aacute; cao. Kratos v&agrave; Atreus phải h&agrave;nh tr&igrave;nh đến từng Cửu giới để t&igrave;m kiếm c&acirc;u trả lời khi họ chuẩn bị cho trận chiến được ti&ecirc;n tri sẽ kết th&uacute;c thế giới.&nbsp;C&ugrave;ng nhau, Kratos v&agrave; Atreus phi&ecirc;u lưu s&acirc;u v&agrave;o Cửu giới để t&igrave;m kiếm c&acirc;u trả lời khi lực lượng Asgardian chuẩn bị cho chiến tranh.&nbsp;Tr&ecirc;n đường đi, họ sẽ kh&aacute;m ph&aacute; những cảnh quan tuyệt đẹp, thần thoại, tập hợp đồng minh từ khắp c&aacute;c vương quốc v&agrave; đối mặt với những kẻ th&ugrave; đ&aacute;ng sợ dưới h&igrave;nh dạng c&aacute;c vị thần v&agrave; qu&aacute;i vật Bắc &Acirc;u.Khi mối đe dọa của Ragnar&ouml;k ng&agrave;y c&agrave;ng đến gần, Kratos v&agrave; Atreus thấy m&igrave;nh phải lựa chọn giữa sự an to&agrave;n của gia đ&igrave;nh họ v&agrave; sự an to&agrave;n của c&aacute;c vương quốc &hellip;</p>', 0, 0, 0, '2021-01-13 19:00:28', 28, 0, 28, NULL, NULL, 0, '2022-11-23 03:17:52', '<h2>God of War Ragnarok PS5 l&agrave; đau thương v&agrave; th&ugrave; hận?</h2>\r\n\r\n<p><strong><a href=\"https://34gameshop.vn/god-of-war-ragnarok-collectors-edition/\" target=\"_bank\">God of War</a></strong>&nbsp;Ragnarok&nbsp;<a href=\"https://34gameshop.vn/playstation-5-ps5/may-game-ps5/may-ps5/\" rel=\"noopener\" target=\"_blank\" title=\"Máy PS5\">PS5</a>&nbsp;&ndash; Trong trailer mới chưa n&oacute;i l&ecirc;n nhiều về c&aacute;c nh&acirc;n vật phản diện trong God of War Ragnarok PS5 nhưng th&ocirc;ng qua tiết lộ của&nbsp;<strong>Grace Orlady</strong>, quản l&yacute; cấp cao về mảng cộng đồng tại Santa Monica, người ta sẽ c&oacute; c&aacute;i nh&igrave;n trực quan hơn về Freya v&agrave; Thor, hai nh&acirc;n vật phản diện ch&iacute;nh m&agrave; game thủ phải đối mặt trong tr&ograve; chơi. Vốn l&agrave; người gi&uacute;p đỡ cha con Kratos trong cuộc h&agrave;nh tr&igrave;nh trước đ&oacute; thế nhưng sau c&aacute;i chết của Baldur, Freya thề sẽ trả th&ugrave; cho con m&igrave;nh. Về cơ bản b&agrave; ta kh&ocirc;ng chỉ sử dụng c&aacute;c ph&eacute;p thuật Vanir mạnh mẽ m&agrave; c&ograve;n l&agrave; một chiến binh đ&aacute;ng gờm theo đ&uacute;ng nghĩa đen thế n&ecirc;n h&agrave;nh tr&igrave;nh sắp tới của g&atilde; trọc chắn chắn sẽ ẩn chứa nhiều biến cố.</p>'),
(16, 'Máy PS5 / Playstation 5 Standard Edition CFI-1118A', 'may-ps5-playstation-5-standard-edition-cfi-1118a', 17540000, 0, 18, 0, 0, 10, '2022-11-23__a.jpg', 3, 1, 1, 0, 'MÁY PS5 / PLAYSTATION 5 STANDARD EDITION CFI-1118A PHIÊN BẢN Ổ ĐĨA – CHÍNH HÃNG SONY VN (BỘ 2 TAY CẦM)', '<ul>\r\n	<li>B&aacute;n M&aacute;y PS5 ch&iacute;nh H&atilde;ng tại H&agrave; Nội</li>\r\n	<li>Ship COD to&agrave;n quốc</li>\r\n	<li>Trả g&oacute;p l&atilde;i xuất 0% qua thẻ t&iacute;n dụng</li>\r\n	<li>Bảo h&agrave;nh: 12 th&aacute;ng</li>\r\n	<li>CPU: AMD Zen 2 8 nh&acirc;n với xung nhịp trong khoảng 3.5 Ghz.</li>\r\n	<li>GPU: 10.28 TFLOPs, 36 đơn vị t&iacute;nh to&aacute;n (CU) ở tốc độ 2.23GHz</li>\r\n	<li>RAM/Giao diện: 16GB GDDR6/256-bit</li>\r\n	<li>Băng th&ocirc;ng bộ nhớ: 448GB/s</li>\r\n	<li>Bộ nhớ trong: SSD 825GB</li>\r\n	<li>Lưu trữ mở rộng: SSD NVMe</li>\r\n	<li>Bộ nhớ ngo&agrave;i: Hỗ trợ USB HDD</li>\r\n	<li>Ổ đĩa quang: Ổ đĩa Blu-ray 4K UHD</li>\r\n	<li>Miễn ph&iacute; ship h&agrave;ng tại H&agrave; Nội</li>\r\n</ul>\r\n\r\n<h3>BẢO ĐẢM 100% CH&Iacute;NH H&Atilde;NG</h3>\r\n\r\n<ul>\r\n	<li>34GameShop chỉ l&agrave;m việc trực tiếp với c&aacute;c thương hiệu v&agrave; nh&agrave; ph&acirc;n phối ch&iacute;nh thức</li>\r\n	<li>34GameShop kiểm so&aacute;t chặt chẽ quy tr&igrave;nh h&agrave;ng h&oacute;a được hợp ph&aacute;p giao dịch, nhập khẩu v&agrave; khai thuế</li>\r\n	<li>Hỗ trợ mua m&aacute;y trả g&oacute;p l&atilde;i xuất 0% qua thẻ t&iacute;n dụng, nhanh hơn, tiết kiệm hơn</li>\r\n</ul>\r\n\r\n<p>Danh mục:&nbsp;<a href=\"https://34gameshop.vn/sony-playstation/\" rel=\"tag\">Sony PlayStation</a>,&nbsp;<a href=\"https://34gameshop.vn/playstation-5-ps5/may-game-ps5/may-ps5/\" rel=\"tag\">M&aacute;y Ps5</a></p>', 0, 0, 0, '2021-01-14 12:00:42', 6, 0, 6, NULL, NULL, 0, '2022-11-23 03:14:09', '<h1>CH&Iacute;NH H&Atilde;NG SONY VN (BỘ 2 TAY CẦM)</h1>'),
(20, 'Tay Game PC Gamepad Paradise', 'tay-game-pc-gamepad-paradise', 150000, 0, 30, 0, 0, 5, '2022-11-23__analog-598x598-300x300.jpg', 2, 0, 1, 1, 'Tay Cầm PC, PS4 Chính Hãng và hàng trăm mẫu tay cầm giá rẻ khác. Dành cho máy game Console,PC đang được bán tại 34gameshop. Mang lại 1 cảm giác chơi hoàn toàn thoải mái. Thiết kế tiện dụng nhỏ gọn, vỏ ngoài chắc chắn, các nút bấm mềm mượt. Bạn hoàn toàn có thể trải nghiệm những tựa GAME trên PC như FIFA 17 18, Fifa Online 3, Fifa Online 4….', '<h3>BẢO ĐẢM 100% CH&Iacute;NH H&Atilde;NG</h3>\r\n\r\n<ul>\r\n	<li>34GameShop chỉ l&agrave;m việc trực tiếp với c&aacute;c thương hiệu v&agrave; nh&agrave; ph&acirc;n phối ch&iacute;nh thức</li>\r\n	<li>34GameShop kiểm so&aacute;t chặt chẽ quy tr&igrave;nh h&agrave;ng h&oacute;a được hợp ph&aacute;p giao dịch, nhập khẩu v&agrave; khai thuế</li>\r\n	<li>Hỗ trợ mua m&aacute;y trả g&oacute;p l&atilde;i xuất 0% qua thẻ t&iacute;n dụng, nhanh hơn, tiết kiệm hơn</li>\r\n</ul>', 0, 0, 0, '2022-11-23 03:25:47', 10, 0, 10, NULL, NULL, 0, '2022-11-23 14:27:34', NULL),
(21, 'TEST', 'test', 200000, 0, 41, 0, 0, 10, '2022-11-23__a.jpg', 1, 0, 1, 0, 'no', '<p>no</p>', 0, 0, 0, '2022-11-23 14:39:25', 10, 0, 10, NULL, NULL, 0, '2022-11-23 14:42:25', '<p>no</p>');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
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
(78, 21, 8);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
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
-- Table structure for table `ratings`
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
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(14, 23, 2, 4, 0, 'tuyệt vời', '2022-11-23 14:21:39', '2022-11-23 14:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
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
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'banner website 1', 'https://www.google.com/', '2022-11-21__god-of-war-ragnarok-tung-doan-trailer-an-dinh-ngay-phat-hanh-trong-nam-2022-165-6528994-1.jpg', 1, 1, 2, '2022-11-21 03:01:41', '2022-11-21 03:01:41'),
(2, 'banner website 2', 'https://blog.dammaynho.com/marketing/7-chinh-sach-khuyen-mai-chieu-ban-hang-cao-tay-bung-no-doanh-so.html', '2022-11-21__1-1.jpg', 2, 1, 1, '2022-11-21 03:03:08', '2022-11-21 03:03:08'),
(3, 'banner website 2', 'https://blog.dammaynho.com/marketing/7-chinh-sach-khuyen-mai-chieu-ban-hang-cao-tay-bung-no-doanh-so.html', '2022-11-21__2.jpg', 1, 1, 3, '2022-11-21 03:03:33', '2022-11-21 03:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `statics`
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
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(2, 'Hướng dẫn Và dịch vụ', NULL, 1, NULL, '<p><strong>B1: C&aacute;c bạn d&ugrave;ng m&aacute;y t&iacute;nh, search trang web: https://darksoftware.xyz/PS4/FWlist.</strong></p>\r\n\r\n<p><img alt=\"PS4 HACK Official Firmwares List\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-2.png\" style=\"height:938px; width:1902px\" title=\"PS4 HACK Official Firmwares List\" /></p>\r\n\r\n<p>PS4 HACK Official Firmwares List</p>\r\n\r\n<p><strong>B2: Bạn cần t&igrave;m đến Version 9.00 v&agrave; download n&oacute; về m&aacute;y t&iacute;nh của bạn nh&eacute;. Bạn cần đăng nhập để tải Version 9.00 về nh&eacute;. Nếu bạn chưa c&oacute; t&agrave;i khoản, h&atilde;y đăng k&yacute; 1 t&agrave;i khoản rồi đăng nhập để tải về nh&eacute;.</strong></p>\r\n\r\n<p><img alt=\"Untitled1 4\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-4.png\" style=\"height:932px; width:1902px\" title=\"Untitled1 4\" /></p>\r\n\r\n<p><strong>B3: Sau khi tải xong th&igrave; bạn đưa v&agrave;o USB để v&agrave;o thư</strong></p>\r\n\r\n<p><img alt=\"Untitled1 5\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-5.png\" style=\"height:233px; width:1646px\" title=\"Untitled1 5\" /></p>\r\n\r\n<p><strong>B4: Sau khi đ&atilde; c&oacute; USB để update Firmware th&igrave; bạn bật m&aacute;y PS4 l&ecirc;n. Lưu &yacute; giữ n&uacute;t nguồn cho đến khi n&oacute; k&ecirc;u tiếng pip thứ 2 th&igrave; bạn bỏ tay ra nh&eacute;.</strong></p>\r\n\r\n<p><strong>B5: M&agrave;n h&igrave;nh bạn sẽ hiện ra như thế n&agrave;y v&agrave; bạn chọn Update System Software. Sau đ&oacute; ae l&agrave;m đ&uacute;ng như c&aacute;c bước trong h&igrave;nh rồi đợi n&oacute; tự update ae nh&eacute;.</strong></p>\r\n\r\n<p><img alt=\"Untitled1 7\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-7.png\" style=\"height:859px; width:1327px\" title=\"Untitled1 7\" /></p>\r\n\r\n<p><img alt=\"Untitled1 6\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-6.png\" style=\"height:563px; width:1069px\" title=\"Untitled1 6\" /></p>\r\n\r\n<p><img alt=\"Untitled1 8\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-8.png\" style=\"height:857px; width:1742px\" title=\"Untitled1 8\" /></p>\r\n\r\n<p><img alt=\"Untitled1 9\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-9.png\" style=\"height:573px; width:1098px\" title=\"Untitled1 9\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Untitled1 10\" src=\"https://34gameshop.vn/wp-content/uploads/2022/11/Untitled1-10.png\" style=\"height:555px; width:1092px\" title=\"Untitled1 10\" /></p>\r\n\r\n<p><strong>Cuối c&ugrave;ng m&aacute;y sẽ tự động update l&ecirc;n 9.00. Ae c&oacute; thể xem ở trong phần c&agrave;i đặt v&agrave; v&agrave;o hệ thống để kiểm tra nh&eacute;.</strong></p>', '2022-11-21 03:18:10', '2022-11-21 03:18:10'),
(3, 'Chính sách đổi trả', NULL, 2, NULL, '<h3>I. L&Yacute; DO CHẤP NHẬN ĐỔI TRẢ</h3>\r\n\r\n<p><strong>1. Điều kiện h&agrave;ng h&oacute;a đạt y&ecirc;u cầu đổi trả</strong></p>\r\n\r\n<p>- Sản phẩm hỏng về kỹ thuật, thiết kế, chức năng, c&aacute;c kh&aacute;c biệt so với ti&ecirc;u chuẩn chất lượng đ&atilde; được nh&agrave; sản xuất c&ocirc;ng bố.</p>\r\n\r\n<p>- Sản phẩm bị lỗi trong qu&aacute; tr&igrave;nh vận chuyển như biến dạng, nứt vỡ, trầy xước,&hellip;</p>\r\n\r\n<p>- Sản phẩm mất ni&ecirc;m phong, giao sai số lượng v&agrave; mẫu m&atilde; so với đơn đặt h&agrave;ng đ&atilde; được chấp nhận.</p>\r\n\r\n<p>- Hạn sử dụng sản phẩm hết trước hoặc v&agrave;o ng&agrave;y được giao cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h4>II. Y&Ecirc;U CẦU CHO ĐỔI TRẢ SẢN PHẨM</h4>\r\n\r\n<p><strong>1. Điều kiện đổi trả</strong></p>\r\n\r\n<p>- Sản phẩm kh&ocirc;ng thuộc danh s&aacute;ch hạn chế đổi trả đ&atilde; được cửa h&agrave;ng th&ocirc;ng b&aacute;o.</p>\r\n\r\n<p>- Sản phẩm c&ograve;n nguy&ecirc;n vẹn, đầy đủ nh&atilde;n m&aacute;c, nguy&ecirc;n đai kiện, ni&ecirc;m phong theo quy c&aacute;ch ban đầu (trừ trường hợp sản phẩm bị lỗi hoặc bị hư hại trong qu&aacute; tr&igrave;nh vận chuyển). Đầy đủ phụ kiện v&agrave; tặng phẩm đi k&egrave;m (nếu c&oacute;).</p>\r\n\r\n<p>- Sản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng cửa h&agrave;ng c&oacute; thể thu mua lại hoặc n&acirc;ng cấp l&ecirc;n từ Haloshop.</p>\r\n\r\n<p>- C&aacute;c x&aacute;c nhận việc mua h&agrave;ng tại cửa h&agrave;ng&nbsp;như h&oacute;a đơn, bi&ecirc;n nhận, sao k&ecirc; t&agrave;i khoản ng&acirc;n h&agrave;ng,&hellip;</p>\r\n\r\n<p>- Phiểu đổi trả đ&uacute;ng v&agrave; đầy đủ th&ocirc;ng tin theo form mẫu của HaloShop .</p>\r\n\r\n<p><strong>2. Thời gian &aacute;p dụng đổi trả</strong></p>\r\n\r\n<p>- 03 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng để gửi y&ecirc;u cầu đổi trả.</p>\r\n\r\n<p>- Thời điểm y&ecirc;u cầu đổi trả sẽ được HaloShop căn cứ theo: (1) đường bưu điện hoặc chuyển ph&aacute;t: thời điểm t&iacute;nh theo dấu bi&ecirc;n nhận của bưu điện hay đơn vị chuyển ph&aacute;t. (2) tự mang/gửi h&agrave;ng tới trung t&acirc;m đổi trả: thời điểm t&iacute;nh khi nh&acirc;n vi&ecirc;nHaloShop tiếp nhận sản phẩm đổi trả từ kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><strong>3. Chi ph&iacute; đổi trả</strong></p>\r\n\r\n<p>- Đối với c&aacute;c sản phẩm đổi trả do lỗi nh&agrave; sản xuất hoặc do qu&aacute; tr&igrave;nh vận chuyển, kh&aacute;ch h&agrave;ng sẽ được miễn ph&iacute; đổi trả v&agrave; được giao h&agrave;ng miễn ph&iacute; tới địa điểm ghi tr&ecirc;n phiếu y&ecirc;u cầu.</p>\r\n\r\n<h3>III. QUY ĐỊNH HO&Agrave;N TIỀN</h3>\r\n\r\n<p><strong>1. Nguy&ecirc;n tắc ho&agrave;n tiền</strong></p>\r\n\r\n<p>- Căn cứ theo phương thức thanh to&aacute;n của kh&aacute;ch h&agrave;ng khi mua h&agrave;ng.</p>\r\n\r\n<p>- Trong trường hợp kh&aacute;ch h&agrave;ng c&oacute; sử dụng Giftcode hoặc c&aacute;c ưu đ&atilde;i từ c&aacute;c chương tr&igrave;nh khuyến mại,&hellip; HaloShop kh&ocirc;ng ho&agrave;n lại khoản gi&aacute; trị đ&oacute; m&agrave; chỉ ho&agrave;n lại khoản tiền thực tế kh&aacute;ch h&agrave;ng đ&atilde; bỏ ra thanh to&aacute;n khi mua h&agrave;ng.</p>\r\n\r\n<p><strong>2. Phương thức ho&agrave;n tiền</strong></p>\r\n\r\n<p>- Ho&agrave;n tiền th&ocirc;ng qua hệ thống cổng thanh to&aacute;n</p>\r\n\r\n<p>- Ho&agrave;n tiền qua chuyển khoản ng&acirc;n h&agrave;ng</p>\r\n\r\n<p>- Ho&agrave;n tiền qua ng&acirc;n h&agrave;ng chấp nhận thẻ</p>\r\n\r\n<p>- Ho&agrave;n tiền mặt tại cửa h&agrave;ng&nbsp;đổi trả của HaloShop.</p>', '2022-11-21 03:21:15', '2022-11-21 03:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
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
-- Dumping data for table `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(8, 'HALO chi nhánh 1', '0123456789', 'chinhanhhanoi@GMAIL.COM', 'Xuân Đỉnh - Hà Nội', '2022-11-23 14:26:27', NULL),
(9, 'HALO chi nhánh 2', '0123456798', 'chinhanhhochiminh@GMAIL.COM', 'Quận 1 - Hồ Chí Minh', '2022-11-23 14:41:03', '2022-11-23 14:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
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
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(27, 23, 1, 142500, 'Test Giao Dịch 1', 'testgiaodich1@gmail.com', '0111111111', 'Hà Nội', 'NO', 2, 1, '2022-11-23 14:31:55', '2022-11-23 14:32:10'),
(28, 23, 1, 237500, 'Test Giao Dịch 2', 'testgiaodich2@gmail.com', '0222222222', 'Hồ Chí Minh', 'NO', 3, 2, '2022-11-23 14:32:40', '2022-11-23 14:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--



--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_histories`
--
ALTER TABLE `import_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`),
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `import_histories`
--
ALTER TABLE `import_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
