-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 12, 2024 lúc 03:13 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `advanx_health`
--
CREATE DATABASE IF NOT EXISTS `advanx_health` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `advanx_health`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cases`
--

INSERT INTO `cases` (`id`, `name`, `number`) VALUES
(1, 'Selangor', 20),
(2, 'Kedah', 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Cơ sở dữ liệu: `cart`
--
CREATE DATABASE IF NOT EXISTS `cart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cart`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `idcard` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idHH` int(11) NOT NULL,
  `TenHH` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Gia` int(9) NOT NULL,
  `Anh1` longtext CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`idcard`, `idUser`, `idHH`, `TenHH`, `SoLuong`, `Gia`, `Anh1`) VALUES
(61, 27, 35, 'coffee rang', 29, 5000, 'b2.jpg'),
(62, 27, 38, 'b', 1, 0, 'pd02.png'),
(63, 27, 37, 'coffee hòa', 1, 300, '04.png'),
(64, 27, 36, 'coffee hòa tan', 12, 700, 'JULY-about0.jpg'),
(65, 27, 41, 'a aaaaa aaaa', 6, 5555, 'pd03.png'),
(66, 51, 43, 'CZ Love Sea Silver Couple Ring JULY_483846', 1, 350, 'nhan7_1.jpg'),
(69, 52, 74, 'Women\'s Silver Earrings with CZ Starlight Rabbit Halo JULY_100601', 1, 210, 'tai6_1.jpg'),
(70, 52, 103, 'Women\'s Silver Necklace with CZ Stone with 5-Pointed Star Maci JULY_105099', 1, 300, 'vco12_1.jpg'),
(71, 52, 45, 'Platinum Plated Silver Couple Ring with CZ Eirlys JULY_659937', 1, 350, 'nhan9_1.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcard`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `idcard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- Cơ sở dữ liệu: `hanghoa`
--
CREATE DATABASE IF NOT EXISTS `hanghoa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hanghoa`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `idHH` int(11) NOT NULL,
  `TenHH` varchar(255) NOT NULL,
  `Gia` int(11) NOT NULL DEFAULT 0,
  `SoLuong` int(11) NOT NULL DEFAULT 0,
  `NoiDung` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT 1,
  `LoaiHH` tinyint(11) NOT NULL DEFAULT 1,
  `Anh1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Anh2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Anh3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Anh4` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DeXuat` tinyint(2) NOT NULL DEFAULT 0,
  `ChatLieu` tinyint(2) NOT NULL DEFAULT 0,
  `DonDoi` tinyint(2) NOT NULL DEFAULT 0,
  `average_rating` float NOT NULL DEFAULT 0,
  `total_review` int(11) NOT NULL DEFAULT 0,
  `total_purchases` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`idHH`, `TenHH`, `Gia`, `SoLuong`, `NoiDung`, `AnHien`, `LoaiHH`, `Anh1`, `Anh2`, `Anh3`, `Anh4`, `DeXuat`, `ChatLieu`, `DonDoi`, `average_rating`, `total_review`, `total_purchases`) VALUES
(35, 'Aidan Moissanite Diamond Women\'s Silver Ring JULY_335168', 100, 200, 'The product is made from platinum-plated S925 silver, studded with 1 carat Moissanite diamonds with a unique design that is a bit gentle, bringing beauty that is both gentle and dynamic. Regardless of whether you combine the ring No matter what outfit you wear, this is a truly great mark for you! Note: Free Size products can be adjusted to size as desired.', 1, 1, 'nhan1_1.jpg', 'nhan1_2.jpg', 'nhan1_3.jpg', 'nhan1_4.jpg', 1, 0, 0, 0, 0, 6),
(36, 'Free Size Silver Couple Ring with CZ Stone Knight and Princess JULY_819229', 100, 350, 'Surely that person and you will both be very happy and happy to own this beautiful and meaningful love memento, especially when it can accompany you through time. The CZ-studded knight and princess silver couple ring JULY_819229 is made from high-quality S925 silver, highlighted by a luxurious Cubic Zirconia stone and meticulously crafted by skilled artisans. Wishing the couple always be happy and walk side by side with this souvenir!!', 1, 1, 'nhan3_1.jpg', 'nhan3_2.jpg', 'nhan3_3.jpg', 'nhan3_4.jpg', 1, 0, 1, 4.6667, 3, 5),
(37, 'All Of Love CZ Silver Couple Ring JULY_614281', 150, 300, 'Surely that person and you will both be very happy and happy to own this beautiful and meaningful love memento, especially when it can accompany you through time. All Of Love silver double ring is made from high-quality S925 silver, highlighted by luxurious Cubic Zirconia stone and meticulously crafted by skilled artisans. Wishing the couple always be happy and walk side by side with this souvenir!!', 1, 1, 'nhan2_1.jpg', 'nhan2_2.jpg', 'nhan2_3.jpg', 'nhan2_4.jpg', 0, 0, 1, 3.5, 2, 5),
(38, 'Women\'s Silver Ring with CZ Stone in Peach Blossom Shape JULY_289467', 150, 400, 'The S925 silver ring studded with Cubic Zirconia stone with a unified peach blossom design shows off the feminine and radiant beauty of the wearer, so it is often used by men as a surprise and extremely meaningful gift for women as said. Convey and convey your sincere thoughts and feelings for her.', 1, 1, 'nhan4_1.jpg', 'nhan4_2.jpg', 'nhan4_3.jpg', 'nhan4_4.jpg', 1, 0, 0, 0, 0, 13),
(41, 'Women\'s Silver Ring with CZ Stone Asteroid Planet JULY_545662', 200, 555, 'The S925 silver ring is decorated and accented with many extremely luxurious Cubic Zirconia stones. Whether you use it to go to parties, go out or go to work, you will always exude beauty, grace and elegance. Surely this will be one of the most worthy items in your jewelry cabinet!', 1, 1, 'nhan5_1.jpg', 'nhan5_2.jpg', 'nhan5_3.jpg', 'nhan5_4.jpg', 1, 0, 0, 0, 0, 2),
(42, 'Women\'s Gold Plated Silver Ring with Olive Tree CZ Stone JULY_114577', 555, 300, 'If you are looking for a product that is both beautiful, aesthetically sophisticated, and has the meaning of bringing luck, especially in terms of money, then the JULY_114577 ring design is for you. It is made from 92.5% pure silver, plated with high-quality gold, meticulously crafted by artisans. This silver jewelry will make you more lovely and attractive. Let\'s shine with her!!', 1, 1, 'nhan6_1.jpg', 'nhan6_2.jpg', 'nhan6_3.jpg', 'nhan6_4.jpg', 1, 1, 0, 5, 1, 0),
(43, 'CZ Love Sea Silver Couple Ring JULY_483846', 350, 400, 'The pair of rings is made from S925 silver with the highlight of Cubic Zirconia stones in the center with the meaning of bringing luck and happiness to its owner. Imagine how charming and attractive you and your partner will be when you wear them to work, on a date or out with friends. Let\'s go out and shine with her!!', 1, 1, 'nhan7_1.jpg', 'nhan7_2.jpg', 'nhan7_3.jpg', 'nhan7_4.jpg', 1, 0, 1, 0, 0, 1),
(44, 'Women\'s Small Piece Silver Ring with CZ Stone in the Shape of a 5-Pointed Star JULY_715467', 220, 500, 'S925 silver ring studded with Cubic Zirconia stone with a design that will bring you youthfulness and generosity. No matter the situation: going to work, going to a party or going out with friends, your hands will stand out!', 1, 1, 'nhan8_1.jpg', 'nhan8_2.jpg', 'nhan8_3.jpg', 'nhan8_4.jpg', 1, 0, 0, 4.6667, 3, 1),
(45, 'Platinum Plated Silver Couple Ring with CZ Eirlys JULY_659937', 350, 300, 'The product is made from platinum-plated 925 silver with the highlight being high-quality Cubic Zirconia stones in the center. The delicately engraved stones falling on your and your partner\'s fingers are an extremely seductive attraction. The difference compared to other products is that the language of the stone is exploited more delicately with skillful placement. A lovely ring will certainly bring beauty and attraction to its owner.', 1, 1, 'nhan9_1.jpg', 'nhan9_2.jpg', 'nhan9_3.jpg', 'nhan9_4.jpg', 1, 0, 1, 5, 1, 1),
(46, 'Women\'s Silver Ring with Aurora Crystal Lovely Fish JULY_132741', 250, 500, 'The ring is made from S925 silver and is studded with a lovely fish-shaped Aurora crystal. A design style that symbolizes femininity and elegance. Surely you, like any girl, want to be the owner. The cause of this special ring!', 1, 1, 'nhan10_1.jpg', 'nhan10_2.jpg', 'nhan10_3.jpg', 'nhan10_4.jpg', 0, 0, 0, 0, 0, 0),
(47, 'Silver Couple Ring with CZ Stone Love Meteor Shower JULY_683215', 350, 500, 'Surely that person and you will both be very happy and happy to own this beautiful and meaningful love memento, especially when it can accompany you through time. The meteor shower symbolizes successful wishes, hoping that your love wishes will come true. JULY_683215 love meteor shower silver couple ring is made from high-quality 925 silver, highlighted by luxurious Cubic Zirconia stone and meticulously crafted by skilled artisans. The ring is free size so you can adjust the size to your liking. Wishing the couple always be happy and walk side by side with this souvenir!!', 1, 1, 'nhan11_1.jpg', 'nhan11_2.jpg', 'nhan11_3.jpg', 'nha11_4.jpg', 0, 0, 1, 0, 0, 0),
(48, 'Blaire Butterfly Shape CZ Stone Women\'s Silver Ring JULY_104699', 300, 450, 'The ring is made of S925 silver and is studded with Cubic Zirconia stones with a butterfly-shaped design, bringing a unique and personal look for you on occasions like going out or going to work. No matter what outfit you combine this lovely ring with, this is a truly great mark for you!', 1, 1, 'nhan12_1.jpg', 'nhan12_2.jpg', 'nhan12_3.jpg', 'nhan12_4.jpg', 0, 0, 0, 4.5, 2, 0),
(49, 'Women\'s Silver Bracelet with CZ Stone Antlers 5-Pointed Star Brooke JULY_103278', 280, 600, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with an antler-shaped design combined with a 5-pointed star, giving you luxury and nobility. No matter the situation: going to work, going to a party or going out with friends, your hands will stand out!', 1, 2, 'vtay1_1.jpg', 'vtay1_2.jpg', 'vtay1_3.jpg', 'vtay1_4.jpg', 1, 0, 0, 4, 2, 0),
(50, 'Love Sunshine Love Couple Solid Gold Bracelet JULY_349995', 300, 600, 'The product is made from solid S990 silver with a design that brings simple beauty but not monotonous, mature but very young, bringing a fresh breeze to girls and boys who love simplicity. Jewelry not only helps you look elegant and charming, but also serves as a signal of love and happiness!', 1, 2, 'vtay2_1.jpg', 'vtay2_2.jpg', 'vtay2_3.jpg', 'vtay2_4.jpg', 1, 1, 1, 0, 0, 0),
(51, 'Women\'s Silver Bracelet S999 Special Shape of Lotus Bud and Lotus Pedestal Catalina JULY_063269', 160, 300, 'The bracelet is made from high-quality S999 solid silver with a twisted stirrup design combined with a unique lotus bud image that further increases the attraction. The lotus stem details sway with each rhythm, creating a full style. noble and feminine. Surely this will be the perfect gift for girls who love classy and sophisticated accessories.', 1, 2, 'vtay3_1.jpg', 'vtay3_2.jpg', 'vtay3_3.jpg', 'vtay3_4.jpg', 1, 0, 0, 0, 0, 0),
(52, 'Easton Knight and Swan Double CZ Silver Bracelet JULY_103847', 200, 600, 'A pair of bracelets made of S925 silver studded with Cubic Zirconia stones with designs of knights and swans, bringing charm and elegance to you and your partner. Surely it will be one of the most worthy items in your jewelry cabinet!', 1, 2, 'vtay4_1.jpg', 'vtay4_2.jpg', 'vtay4_3.jpg', 'vtay4_4.jpg', 1, 0, 1, 0, 0, 0),
(53, 'Women\'s 18K Gold Bracelet with Natural Diamonds in Four-Leaf Clover Shape Keelin JULY_053328', 400, 400, 'The bracelet is made from 18K rose gold studded with natural diamonds, possessing a beauty that is both noble and modern, is an indispensable accessory for every girl, representing each different style to help her feel confident. go out on the street, meet friends or attend a party. Don\'t be surprised when many eyes turn to you because of this sophistication!!', 1, 2, 'vtay5_1.jpg', 'vtay5_2.jpg', 'vtay5_3.jpg', 'vtay5_4.jpg', 0, 1, 0, 4, 1, 0),
(54, 'Women\'s Silver Bracelet with CZ Stone in the Shape of a Young Deer Branch JULY_247931', 280, 600, 'The bracelet is made from S925 sterling silver and studded with Cubic Zirconia stones, giving you a perfect beauty and a great highlight every time you appear. Besides, with this jewelry, you can also be creative, mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 2, 'vtay6_1.jpg', 'vtay6_2.jpg', 'vtay6_3.jpg', 'vtay6_4.jpg', 0, 0, 0, 0, 0, 0),
(55, 'Sun And Moon Love Couple Solid Silver Bracelet JULY_836993', 800, 600, 'The product is made from S925 silver with a design language that brings beauty that is simple but not monotonous, mature but very young, bringing a fresh breeze to girls and boys who love simplicity. Jewelry not only helps you look elegant and graceful, but also serves as a signal of love and happiness. With this bracelet, you can completely combine it with many other accessories to complete your style at parties or outings with friends.', 1, 2, 'vtay7_1.jpg', 'vtay7_2.jpg', 'vtay7_3.jpg', 'vtay7_4.jpg', 0, 0, 1, 0, 0, 0),
(56, 'Women\'s Silver Bracelet with Moissanite Diamonds with Stylized Heart JULY_048101', 1500, 400, 'The bracelet is made from S925 silver studded with high-quality 3.5 Carat Moissanite diamonds in a stylized heart shape. The stones are designed to move and sway according to the rhythm of footsteps, exuding charm and attraction for women. The bracelet is suitable for girls when going out, going down the street and even going to work. Combine it with your favorite outfit and stride confidently.', 1, 2, 'vtay8_1.jpg', 'vtay8_2.jpg', 'vtay8_3.jpg', 'vtay8_4.jpg', 0, 0, 0, 0, 0, 0),
(57, 'Women\'s Silver Necklace with Moissanite Diamonds in Deer Antlers JULY_055097', 400, 600, 'A luxurious design from LiLi jewelry, imagine this lovely necklace design on your neck, when going to work, going out or going on a date, it would be wonderful, wouldn\'t it? This silver jewelry will make you more lovely and attractive. It is made from pure S925 silver with high-quality 1 carat Moissanite diamond. Let\'s go out and shine with her!!', 1, 3, 'vco1_1.jpg', 'vco1_2.jpg', 'vco1_3.jpg', 'vco1_4.jpg', 1, 0, 0, 4.5, 2, 0),
(58, 'Beautiful and unique 2-layer silver necklace for women with double butterflies Hot Trend JULY_361718', 350, 600, 'The product is made of S925 silver with Cubic Zirconia stones and has a unique, impressive design with 2 floors and a lovely butterfly pattern. This design helps the necklace become more feminine, very suitable for office ladies to wear on a daily basis. You will become much more attractive when wearing it!', 1, 3, 'vco2_1.jpg', 'vco2_2.jpg', 'vco2_3.jpg', 'vco2_4.jpg', 1, 0, 0, 0, 0, 0),
(59, 'Cyrus Starlight Couple Silver Necklace JULY_106226', 400, 500, 'The pair of necklaces made of S925 silver with a star-shaped design gives you and your partner a perfect beauty and is a great highlight every time you appear. With the meticulousness in each design line, the two of you will become more perfect when wearing it!', 1, 3, 'vco3_1.jpg', 'vco3_2.jpg', 'vco3_3.jpg', 'vco3_4.jpg', 1, 0, 1, 4.5, 2, 0),
(60, '18k Gold Necklace with Natural Diamonds Four Leaf Clover Heart JULY_482417', 3600, 300, 'Are you looking for a sophisticated and luxurious piece of jewelry? JULY_482417 18k gold four-leaf clover necklace with diamonds is designed to satisfy that requirement. Imagine wearing it out, going out, going to work or going on a date, guaranteed to make you more beautiful and attractive. The product is made from 18k gold, highlighted by sparkling high-quality 0.2 Carat natural diamonds, meticulously crafted by skilled artisans. It won\'t be surprising that your cuteness and loveliness attracts everyone around you!!', 1, 3, 'vco4_1.jpg', 'vco4_2.jpg', 'vco4_3.jpg', 'vco4_4.jpg', 1, 1, 0, 0, 0, 0),
(61, 'The Night Moissanite Gold Necklace JULY_496739', 6000, 300, 'Are you looking for a sophisticated and luxurious piece of jewelry? Moissanite diamond gold necklace JULY_496739 is designed to satisfy that requirement. Imagine wearing it out, going out, going to work or going on a date, guaranteed to make you more beautiful and attractive. The product is made from 18k white gold, highlighted by high-quality and sparkling Moissanite diamonds, meticulously and elaborately crafted by skilled artisans. It won\'t be surprising that your cuteness and loveliness attracts everyone around you!!', 1, 3, 'vco5_1.jpg', 'vco5_2.jpg', 'vco5_3.jpg', 'vco5_4.jpg', 0, 0, 0, 0, 0, 0),
(62, 'Double Silver Rose Cross Skull Necklace JULY_711946', 500, 600, 'Your couple will have more personality and stand out with this JULY_711946 rose skull cross silver double necklace. Products not only help you express your faith but also show your aesthetic taste and style. The pendant is made from high-quality silver, meticulously crafted by skilled artisans. May the pendant bring luck and blessings to you and your partner!!', 1, 3, 'VCO6+1.jpg', 'VCO6_2.jpg', 'VCO6_3.jpg', 'VCO6_4.jpg', 0, 0, 1, 0, 0, 0),
(63, 'Double Silver Necklace with CZ Stone Pair of Shanley Rings JULY_489425', 500, 300, 'If you are looking for a beautiful, sophisticated piece of jewelry for a couple, the Shanley silver necklace and ring pair completely satisfy that. The necklace is made from silver and studded with high-quality Cubic Zirconia stones, divided into two halves of the hearts of a couple bound together, with the hope that the couple\'s love will always be beautiful, forever strong, going together until the end of the road. Wish you all happiness!!', 1, 3, 'vco7_1.jpg', 'vco7_2.jpg', 'vco7_3.jpg', 'vco7_4.jpg', 0, 0, 1, 0, 0, 0),
(64, 'Women\'s Silver Necklace with CZ Whale Shaped Whale JULY_589819', 290, 600, 'The necklace is made from S925 silver studded with high-quality Cubic Zirconia stones with a lovely whale design. A design style that symbolizes femininity and elegance. Surely you, like any girl, want to become the owner of this stylish and luxurious branded bracelet to raise your class and make many people admire you.', 1, 3, 'vco8_1.jpg', 'vco8_2.jpg', 'vco8_3.jpg', 'vco8_4.jpg', 0, 0, 0, 0, 0, 0),
(65, 'Silver Shark Hairpin with Heart-Shaped Zircon Stone', 20, 1000, 'Silver hair clips have a simple but luxurious design, making them the perfect accessory to highlight your hairstyle. High quality silver material keeps the product durable and beautiful and does not irritate the scalp. Flexibility in clamping and holding hair helps you easily create many different hairstyles while still ensuring stability and comfort all day long.', 1, 4, 'toc1_1.jfif', 'toc1_2.jfif', 'toc1_3.jfif', 'toc1_4.jfif', 1, 0, 0, 4, 1, 0),
(66, 'Classic Korean Fashion Butterfly Large Crab Hair Clips for Women', 10, 2000, 'Butterfly hair clips are a cute and adorable fashion accessory for every girl. With its slim design and lovely butterfly shape, the product not only beautifies your hairstyle but also highlights your personal style. High quality silver material ensures the durability and shine of the product, along with the ability to hold hair firmly without causing headaches. Butterfly hair clips are the perfect choice for every occasion, from everyday to special events.', 1, 4, 'toc2_1.jfif', 'toc2_2.jfif', 'toc2_3.jfif', 'toc2_4.jfif', 1, 0, 0, 0, 0, 0),
(67, 'Fish Black Metal Star/Heart Ponytail Clip', 20, 1500, 'Star and heart shaped hairpins are symbols of romance and shine. Unique design with star and heart shapes creates a special highlight for your hairstyle. High quality silver material helps the product stay shiny and durable over time. The ability to hold your hair firmly and comfortably helps you confidently wear your hairstyle anytime, anywhere. Star and heart shaped hair clips are the perfect choice to enhance your beauty and charm.', 1, 4, 'toc3_1.jfif', 'toc3_2.jfif', 'toc3_3.jfif', 'toc3_4.jfif', 1, 0, 0, 5, 1, 0),
(68, 'Metal Butterfly Hairpin with Chinese Style Tassel', 15, 2000, 'The Metal Butterfly Hairpin with Chinese Style Tassel combines elegance with cultural flair. The intricate design of the butterfly, crafted from metal, adds a touch of grace to any hairstyle. The Chinese-style tassel dangling from the hairpin enhances its beauty and authenticity. Made with high-quality materials, this hairpin is not only stylish but also durable. It effortlessly adds a hint of traditional charm to your look, making it perfect for both everyday wear and special occasions.', 1, 4, 'toc4_1.jfif', 'toc4_2.jfif', 'toc4_3.jfif', 'toc4_4.jfif', 1, 0, 0, 0, 0, 0),
(69, 'Women\'s Silver Earrings with CZ Stone in the Shape of Lapis Lazuli Flowers JULY_148289', 300, 600, 'You will not only look more pretty and elegant when wearing these drop-shaped forget-me-not earrings, but also show off your very own aesthetic taste. The 5-petal forget-me-not flower symbolizes romance, fidelity and durability. Imagine how charming and attractive you will be when you wear this earring to work, on a date or out with friends.  Women\'s silver earrings with CZ stones shaped like Lapis lazuli flowers JULY_148289 are made from specialized 925 silver, highlighted by high-quality, sparkling Cubic Zirconia stones and meticulously crafted by skilled artisans.  The long strap is detachable, allowing you to change the style if you want. Let\'s go out and shine with her!!', 1, 6, 'tai1_1.jpg', 'tai1_2.jpg', 'tai1_3.jpg', 'tai1_4.jpg', 1, 0, 0, 3, 2, 0),
(70, 'C-shaped Silver Earrings for Women with CZ Stone in Four-Leaf Clover Shape Vera JULY_256684', 250, 1000, 'The product is made from S925 silver with a C-shaped design studded with Cubic Zirconia in the shape of a four-leaf clover, extremely suitable for wearing to school or the office without causing inconvenience but still helps you show off your personality. . With meticulousness in each design line, you will become more perfect when wearing it!', 1, 6, 'tai2_1.jpg', 'tai2_2.jpg', 'tai2_3.jpg', 'tai2_4.jpg', 1, 0, 0, 4.3333, 3, 0),
(71, 'Women\'s Silver Earrings with Aurora Crystal Moon and Stars Alma JULY_146747', 230, 600, 'You will not only look more pretty and elegant when wearing these Aurora moon and star crystal earrings, but also express your femininity and unique aesthetic taste. Imagine how charming and attractive you will be when you wear this earring to work, on a date or out with friends. It is made from specialized S925 silver, highlighted by high-quality Aurora crystal and meticulously crafted by skilled artisans. Let\'s go out and shine with her!!', 1, 6, 'tai3_1.jpg', 'tai3_2.jpg', 'tai3_3.jpg', 'tai3_4.jpg', 1, 0, 0, 4.6667, 3, 0),
(72, 'Women\'s Silver Earrings with Lovely Seashell CZ Stone JULY_856229', 230, 600, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a lovely seashell design symbolizing femininity and elegance. Surely you, like any girl, want to become the owner of this stylish and luxurious branded earring to raise your class and make many people admire you.', 1, 6, 'tai4_1.jpg', 'tai4_2.jpg', 'tai4_3.jpg', 'tai4_4.jpg', 1, 0, 0, 4.6667, 3, 0),
(73, 'Women\'s Silver Earrings with CZ Lucky Star Santana JULY_101399', 220, 1000, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a lucky star design, bringing charm and elegance to you. It will definitely be one of the most worthy items in your jewelry cabinet!', 1, 6, 'tai5_1.jpg', 'tai5_2.jpg', 'tai5_3.jpg', 'tai5_4.jpg', 1, 0, 0, 0, 0, 0),
(74, 'Women\'s Silver Earrings with CZ Starlight Rabbit Halo JULY_100601', 210, 1000, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a starlight rabbit design, bringing charm and elegance to you. It will definitely be one of the most worthy items in your jewelry cabinet!', 1, 6, 'tai6_1.jpg', 'tai6_2.jpg', 'tai6_3.jpg', 'tai6_4.jpg', 1, 0, 0, 0, 0, 1),
(75, 'Women\'s Silver Earrings with CZ Stone in the Shape of a 5-Pointed Star Ashlyn JULY_106577', 290, 800, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a 5-pointed star design, giving you a perfect beauty and a great highlight every time you appear. Besides, you can also be creative and mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 6, 'tai7_1.jpg', 'tai7_2.jpg', 'tai7_3.jpg', 'tai7_4.jpg', 1, 0, 0, 0, 0, 0),
(76, 'Stormi Star Shape CZ Stone Earrings for Women JULY_106780', 300, 1000, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a star-shaped design, giving you a perfect beauty and a great highlight every time you appear. Besides, you can also be creative and mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 6, 'tai8_1.jpg', 'tai8_2.jpg', 'tai8_3.jpg', 'tai8_4.jpg', 1, 0, 0, 0, 0, 0),
(77, 'Luminous Silver Couple Ring with CZ Meteor Stone Alison JULY_104259', 400, 500, 'The pair of rings is made of S925 silver and studded with luminous Cubic Zirconia stones with a shooting star design, giving you and your partner a perfect beauty and a great highlight every time you appear. With the meticulousness in each design line, the two of you will become more perfect when wearing it!', 1, 1, 'nhan13_1.jpg', 'nhan13_2.jpg', 'nhan13_3.jpg', 'nhan13_4.jpg', 0, 0, 1, 4.3333, 3, 0),
(78, 'Women\'s Silver Ring Gold Plated Stackable Garnet Stone, CZ Crown Beautiful Niche JULY_714325', 400, 600, 'The ring is made from S925 silver with a stacked design, studded with a high-quality crown-shaped Garnet and Cubic Zirconia stone. Garnet is a symbol of beauty, love and eternity, so no matter what outfit you combine this lovely ring with, this will be a truly wonderful mark for you!', 1, 1, 'nha14_1.jpg', 'nhan14_2.jpg', 'nhan14_3.jpg', 'nhan14_4.jpg', 0, 1, 0, 0, 0, 0),
(79, 'Women\'s Gold Ring with CZ Stone Lennox Princess Crown JULY_104932', 280, 1000, 'The ring is made of S925 silver studded with Cubic Zirconia with a princess crown design, bringing charm and elegance to you. It will definitely be one of the most worthy items in your jewelry cabinet!', 1, 1, 'nhan15_1.jpg', 'nhan15_2.jpg', 'nhan15_3.jpg', 'nhan15_4.jpg', 0, 1, 0, 0, 0, 0),
(80, 'Starry Starry Silver Ring for Women JULY_094080', 280, 1000, 'The ring is made of S925 silver with a star-shaped design, bringing a unique and personal look to you on occasions like going out or going to work. No matter what outfit you combine this lovely ring with, this is a truly great mark for you!', 1, 1, 'nhan16_1.jpg', 'nhan16_2.jpg', 'nhan16_3.jpg', 'nhan16_4.jpg', 0, 0, 0, 0, 0, 0),
(81, 'Luminous Silver Couple Ring with CZ Mountain and Sea Navy JULY_104333', 380, 600, 'The pair of rings is made of S925 silver and studded with luminous Cubic Zirconia stones with mountain and sea designs, giving you and your partner a perfect beauty and a great highlight every time you appear. With the meticulousness in each design line, the two of you will become more perfect when wearing it!', 1, 1, 'nhan17_1.jpg', 'nhan17_2.jpg', 'nhan17_3.jpg', 'nhan17_4.jpg', 0, 0, 1, 3.3333, 3, 0),
(82, 'Women\'s Fashionable Silver Ring with Heart Beat Shape Cute JULY_691668', 220, 1000, 'The product is made from 925 silver with a heart-beating design. The ring with lovely floral motifs has outstanding advantages of durability, shine, and brightness, suitable for modern jewelry design. Therefore, a ring is a gift that not only you but also any girl wants to own', 1, 1, 'nhan18_1.jpg', 'nhan18_2.jpg', 'nhan18_3.jpg', 'nhan18_4.jpg', 0, 0, 0, 4, 3, 0),
(83, 'Women\'s Silver Ring Simple Smooth C Twisted Shape Stephen JULY_572251', 200, 1000, 'The ring is made from S925 silver with an extremely fashionable and stylish design, which will be the perfect choice for individual, youthful, and liberal girls. This high-end ring combined with your personality will definitely make you extremely special!', 1, 1, 'nhan19_1.jpg', 'nhan19_2.jpg', 'nhan19_3.jpg', 'nhan19_4.jpg', 0, 0, 0, 4.6667, 3, 0),
(84, 'Women\'s Silver Ring with Heart-shaped CZ Stone JULY_921998', 200, 1000, 'The ring is made of S925 silver with a design style that symbolizes femininity and elegance. Surely you, like any girl, want to become the owner of this stylish and luxurious branded ring to raise your class and make many people admire you.', 1, 1, 'nhan20_1.jpg', 'nhan20_2.jpg', 'nhan20_3.jpg', 'nhan20_4.jpg', 0, 0, 0, 4, 2, 0),
(85, 'Women\'s Silver Bracelet with CZ Stone in Siena Butterfly Shape JULY_096730', 270, 500, 'The bracelet is made of S925 silver and studded with Cubic Zirconia stones with a butterfly-shaped design, giving you a perfect beauty and a great highlight every time you appear. Besides, you can also be creative and mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 2, 'vtay9_1.jpg', 'vtay9_2.jpg', 'vtay9_3.jpg', 'vtay9_4.jpg', 1, 0, 0, 4.3333, 3, 0),
(86, 'Silver Bracelet for Women Pearl Chain with CZ Stone Cross Crucifix JULY_622362', 350, 600, 'The bracelet is made from high-quality 925 silver in chain form and is adorned with a cross studded with Cubic Zirconia stones, considered a symbol of \"God\'s Love and Mercy\" and \"God\'s Redemption of Humanity\". Jesus\". The bracelet brings charm and elegance to you. Surely this bracelet will be one of the most worthy items in your jewelry cabinet.', 1, 2, 'vtay10_1.jpg', 'vtay10_2.jpg', 'vtay10_3.jpg', 'vtay10_4.jpg', 1, 0, 0, 4.3333, 3, 0),
(87, 'Theodore Love Heart Couple Silver Bracelet JULY_162581', 520, 600, 'The pair of bracelets is made from 92.5% pure silver, with a stylized heart-shaped design, representing luck and durability in love. This is a great gift for couples. You guys will look so happy and shining!!', 1, 2, 'vtay11_1.jpg', 'vtay11_2.jpg', 'vtay11_3.jpg', 'vtay11_4.jpg', 1, 0, 1, 0, 0, 0),
(90, 'Silver Couple Bracelets Samuel Rose Branch Rings JULY_429372', 550, 900, 'The pair of bracelets is made from 92.5% pure silver, with a design of a couple rings in the shape of a rose branch in the center with the hope that love and friendship between the couple will always be beautiful, forever strong, and go together until the end of the road. . In addition, it is also often used as a surprise and extremely meaningful gift for that person as a message, conveying your sincere thoughts and feelings!', 1, 2, 'vtay12_1.jpg', 'vtay12_2.jpg', 'vtay12_3.jpg', 'vtay12_4.jpg', 1, 0, 1, 4.3333, 3, 0),
(91, 'Women\'s Silver Bracelet with CZ Starlight Rabbit Nellie JULY_096462', 300, 600, 'The bracelet is made of S925 silver studded with Cubic Zirconia with a starlight rabbit design, bringing charm and elegance to you. Surely this bracelet will be one of the most worthy items in your jewelry cabinet!', 1, 2, 'vtay13_1.jpg', 'vtay13_2.jpg', 'vtay13_3.jpg', 'vtay13_4.jpg', 0, 0, 0, 0, 0, 0),
(92, 'Women\'s Silver Bracelet with CZ Stone Paired Heart Sasha JULY_096310', 350, 900, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a paired heart-shaped design, giving you luxury and nobility. No matter the situation: going to work, going to a party or going out with friends, your hands will stand out!', 1, 2, 'vtay14_1.jpg', 'vtay14_2.jpg', 'vtay14_3.jpg', 'vtay14_4.jpg', 0, 0, 0, 0, 0, 0),
(94, 'Silver Bracelet Couple Love Friendship Bff Best Friend Gac Nai JULY_631555', 400, 600, 'The pair bracelet is made from S925 silver, wearing a prominent antler design in the center symbolizing eternal love. This is also a meaningful gift that men can give to women as a way to show care, respect, and protection for the woman they love.', 1, 2, 'vtay15_1.jpg', 'vtay15_2.jpg', 'vtay15_3.jpg', 'vtay15_4.jpg', 0, 0, 1, 0, 0, 0),
(95, 'Women\'s 2-layer Silver Heart-shaped Beaded Bracelet JULY_562964', 360, 900, 'Bracelets crafted in a chain link style combined with linked hearts bring unique beauty, helping you stand out with different outfits and coordinate with many other types of jewelry and accessories studded with stones. At the same time, the product is also made from high-quality S925 silver material with the most advanced technology to help the product always have a longer lasting shine and is safe for your skin. Don\'t be surprised when many eyes turn to you because of this sophistication!!', 1, 2, 'vtay16_1.jpg', 'vtay16_2.jpg', 'vtay16_3.jpg', 'vtay16_4.jpg', 0, 0, 0, 0, 0, 0),
(96, 'Winifred Couple Ring Shaped Silver Bracelet for Women JULY_911143', 500, 600, 'The bracelet is made from platinum-plated S925 silver with a pair of rings engraved with a mantra that can move and sway according to the rhythm of footsteps, exuding charm and appeal to women. The bracelet is suitable for girls when going out, going down the street and even going to work. Combine it with your favorite outfit and stride confidently. In particular, choosing gifts with these jewelry items will make your loved one really enjoy and feel cared for.', 1, 2, 'vtay17_1.jpg', 'vtay17_2.jpg', 'vtay17_3.jpg', 'vtay17_4.jpg', 0, 0, 0, 3.5, 2, 0),
(97, 'Women\'s Solid Silver Bracelet with Lovely Cat Shape Sarah JULY_192123', 330, 1000, 'The bracelet is made from high-quality S925 silver with a cute, fashionable and stylish cat-shaped design that will be the perfect choice for individual, youthful, and liberal girls. When combined with your personality, it will definitely make you very special!', 1, 2, 'vtay18_1.jpg', 'vtay18_2.jpg', 'vtay18_3.jpg', 'vtay18_4.jpg', 0, 0, 0, 4.6667, 3, 0),
(98, 'Silver Bracelet Couple Love Rivers And Mountains JULY_569371', 480, 600, 'The pair bracelet is made from S925 silver, wearing a prominent river and mountain design in the center symbolizing eternal love. This is also a meaningful gift that men can give to women as a way to show care, respect and protection for the woman they love.', 1, 2, 'vtay19_1.jpg', 'vtay19_2.jpg', 'vtay19_3.jpg', 'vtay19_4.jpg', 0, 0, 1, 0, 0, 0),
(99, 'Women\'s Silver Bracelet with CZ Stone The Beauty JULY_421447', 400, 900, 'JULY_421447 bracelet is made from 92.5% pure silver, with a design inspired by floating water drops, studded with luxurious Cubic Zirconia gemstones, giving you not only simplicity and elegance but also exudes sophistication. refined and pure. The jewelry is very easy to coordinate with women\'s outfits because it is beautiful in every moment!!', 1, 2, 'vtay20_1.jpg', 'vtay20_2.jpg', 'vtay20_3.jpg', 'vtay20_4.jpg', 0, 0, 0, 5, 2, 0),
(100, 'Women\'s Silver Necklace with CZ Stone with Phalaenopsis Ramona JULY_098242', 310, 700, 'The necklace is made of S925 silver studded with Cubic Zirconia stones with a butterfly-shaped design, giving you a perfect beauty and a great highlight every time you appear. With meticulousness in each design line, you will become more perfect when wearing it!', 1, 3, 'vco9_1.jpg', 'vco9_2.jpg', 'vco9_3.jpg', 'vco9_4.jpg', 1, 0, 0, 4.5, 2, 0),
(101, 'Women\'s Silver Necklace with Gold Plated 5-Pointed Star Shape Star JULY_891538', 280, 1000, 'Imagine this lovely little two-star silver necklace design on your neck, when going to work, going out or going on a date, it would be wonderful, wouldn\'t it? This silver jewelry will make you more elegant, lovely and attractive. It is made from 92.5% pure silver, with options of high-quality white or gold plating, and is also accented with luxurious Cubic Zirconia stones attached. Let\'s go out and shine with her!!', 1, 3, 'vco10_1.jpg', 'vco10_2.jpg', 'vco10_3.jpg', 'vco10_4.jpg', 1, 0, 0, 0, 0, 0),
(102, 'Cute Men\'s and Women\'s Silver Couple Necklace JULY_099523', 500, 900, 'The pair of necklaces is made of S925 silver with a design that gives you and your partner a perfect beauty and is a great highlight every time you appear. With the meticulousness in each design line, the two of you will become more perfect when wearing it!', 1, 3, 'vco11_1.jpg', 'vco11_2.jpg', 'vco11_3.jpg', 'vco11_4.jpg', 0, 0, 1, 5, 2, 0),
(103, 'Women\'s Silver Necklace with CZ Stone with 5-Pointed Star Maci JULY_105099', 300, 500, 'The necklace is made of S925 silver studded with Cubic Zirconia stones with a 5-pointed star design that shows off the feminine and radiant beauty of the wearer, so it is often used by men as a surprising and extremely meaningful gift for their loved ones. her as a message, conveying sincere thoughts and feelings for her.', 1, 3, 'vco12_1.jpg', 'vco12_2.jpg', 'vco12_3.jpg', 'vco12_4.jpg', 1, 0, 0, 0, 0, 1),
(104, '18k Gold Necklace with Four Leaf Clover Moissanite Stone JULY_155877', 3290, 500, 'Are you looking for a sophisticated and luxurious piece of jewelry? Moissanite JULY_155877 four-leaf clover 18k gold necklace is designed to satisfy that requirement. Imagine wearing it out, going out, going to work or going on a date, guaranteed to make you more beautiful and attractive. The product is made from 18k white gold, highlighted by high-quality and sparkling Moissanite diamonds, meticulously and meticulously crafted by skilled artisans. It won\'t be surprising that your cuteness and cuteness attracts everyone around you!!', 1, 3, 'vco13_1.jpg', 'vco13_2.jpg', 'vco13_3.jpg', 'vco13_4.jpg', 1, 1, 0, 0, 0, 0),
(105, 'Women\'s Silver Necklace with CZ Clouds and Stars Kathryn JULY_105249', 290, 600, 'The necklace is made of S925 silver studded with Cubic Zirconia stones with a cloud and star design that shows off the feminine and radiant beauty of the wearer, so it is often used by men as a surprising and extremely meaningful gift for her. as a message, conveying sincere thoughts and feelings for her.', 1, 3, 'vco14_1.jpg', 'vco14_2.jpg', 'vco14_3.jpg', 'vco14_4.jpg', 0, 0, 0, 4, 2, 0),
(106, 'Double Silver Necklace Rose Branch Ring Pair JULY_919994', 490, 900, 'This pair of necklaces will not only show your own style and taste, but also have the meaning of expressing the love between him and her. It is made from 92.5% pure silver and meticulously crafted by skilled artisans. Wishing your couple forever joy and happiness!!', 1, 3, 'vco15_1.jpg', 'vco15_2.jpg', 'vco15_3.jpg', 'vco15_4.jpg', 0, 0, 1, 0, 0, 0),
(107, 'Women\'s Silver Necklace with CZ Cross Shape JULY_694369', 300, 900, 'You will have more personality and taste with this JULY_694369 women\'s silver cross necklace. Products not only help you express your faith but also express your aesthetic taste and personality. The pendant is made from silver and studded with high-quality Cubic Zirconia stones, meticulously crafted by skilled artisans. May this necklace bring luck and blessings to you and your loved ones!!', 1, 3, 'vco16_1.jpg', 'vco16_2.jpg', 'vco16_3.jpg', 'vco16_4.jpg', 0, 0, 0, 4, 2, 0),
(108, 'Women\'s Square Wavy Silver Choker Necklace JULY_993695', 280, 900, 'You will not only look more pretty and elegant when wearing this square wavy necklace, but also express your very own aesthetic taste. Imagine how charming and attractive you will be when you wear this necklace to work, on a date or out with friends. JULY_993695 women\'s square wavy silver choker necklace is made from specialized 925 silver, adorned with high-quality Cubic Zirconia stones and meticulously crafted by skilled artisans. Let\'s go out and shine with her!!', 1, 3, 'vco17_1.jpg', 'vco17_2.jpg', 'vco17_3.jpg', 'vco17_4.jpg', 0, 0, 0, 5, 3, 0),
(109, 'Double Silver Necklace with CZ Star Phalaenopsis Tatum JULY_106219', 520, 900, 'A pair of necklaces made of S925 silver studded with Cubic Zirconia stones with a star-shaped design brings elegance and elegance to you and your partner. Are you two ready to shine and attract all eyes with her!!', 1, 3, 'vco18_1.jpg', 'vco18_2.jpg', 'vco18_3.jpg', 'vco18_4.jpg', 0, 0, 1, 4, 1, 0),
(110, 'Women\'s Silver Necklace with CZ Stone Dream Promise Stars JULY_097857', 290, 1000, 'The necklace is made from S925 silver studded with Cubic Zirconia stones with a starry dream design that exudes charm and attraction for women, very suitable for you when going out, going down the street and even going to work. Pair it with your favorite outfit and strut your stuff with confidence!', 1, 3, 'vco19_1.jpg', 'vco19_2.jpg', 'vco19_3.jpg', 'vco19_4.jpg', 0, 0, 0, 3.5, 2, 0),
(111, 'Unique Round CZ Stone Women\'s Silver Necklace Xavia JULY_284416', 250, 1000, 'The necklace is made from S925 silver studded with high-quality Cubic Zirconia stones with a lovely stylized round design. A design style that symbolizes femininity and elegance. Surely you, like any girl, want to become the owner of this stylish and luxurious branded bracelet to raise your class and make many people admire you.', 1, 3, 'vco20_1.jpg', 'vco20_2.jpg', 'vco20_3.jpg', 'vco20_4.jpg', 0, 0, 0, 4, 3, 0),
(112, 'Women\'s Silver Anklet with CZ Stone Four Leaf Clover Mildred JULY_763298', 320, 1000, 'The bracelet is made from S925 silver and studded with high-quality Cubic Zirconia in the shape of a four-leaf clover, giving you sophistication and elegance every time you go out. What\'s better than going to cafes, walking around town, going to work with her? Surely many guys will pay attention!!', 1, 5, 'chan1_1.jpg', 'chan1_2.jpg', 'chan1_3.jpg', 'chan1_4.jpg', 1, 0, 0, 5, 1, 0),
(113, 'Annabella Women\'s 2-Layer Silver Anklet With Round Sand Ball Annabella JULY_375138', 350, 700, 'The bracelet is made from 2-layer S925 silver with sparkling beads, giving you sophistication and elegance every time you go out. What\'s better than going to cafes, walking around town, going to work with her? Surely many guys will pay attention!!', 1, 5, 'chan2_1.jpg', 'chan2_2.jpg', 'chan2_3.jpg', 'chan2_4.jpg', 1, 0, 0, 4.6667, 3, 0),
(114, 'LCLF102 Jewelry 14k Gold Anklet', 1380, 500, 'Jewelry\'s 14k Gold anklet code LCLF102 is a symbol of luxury and elegance. With high-quality 14k gold material, the product is not only beautiful but also ensures sustainability and long-term value. Simple yet sophisticated design, this anklet will be the perfect highlight for any outfit. Whether you wear it to a big party or out on the town, this 14k Gold anklet will make your legs gorgeous and attract all eyes.', 1, 5, 'chan3_1.jfif', 'chan3_2.jfif', 'chan3_3.jfif', 'chan3_4.jfif', 1, 1, 0, 0, 0, 0),
(115, 'Women\'s Fashionable Silver Anklet with CZ Moon and Star Godfrey JULY_828446', 330, 900, 'A very cute, simple but no less sophisticated design from the designers of JULY jewelry. It is made from pure 92.5% silver and studded with high-quality Cubic Zirconia stones. You will look not only elegant and feminine but also very attractive. It\'s also very easy to coordinate outfits, suitable whether going to work, going to a cafe or hanging out with friends, isn\'t that great!!', 1, 5, 'chan4_1.jpg', 'chan4_2.jpg', 'chan4_3.jpg', 'chan4_4.jpg', 1, 0, 0, 0, 0, 0),
(116, 'Women\'s Silver Anklet with CZ Stone Beatrice Mermaid JULY_104643', 290, 1000, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a mermaid design, giving you elegance and sophistication. Are you ready to shine and attract all eyes with her!!', 1, 5, 'chan5_1.jpg', 'chan5_2.jpg', 'cham5_3.jpg', 'chan5_4.jpg', 1, 0, 0, 5, 2, 0),
(117, 'Beautiful Women\'s Silver Anklet Mariam JULY_095949', 250, 500, 'The bracelet is made of S925 silver with a design that brings you luxury and elegance. No matter the situation: going to work, going to a party or hanging out with friends, your legs will stand out!', 1, 5, 'chan6_1.jpg', 'chan6_2.jpg', 'chan6_3.jpg', 'chan6_4.jpg', 1, 0, 0, 4, 3, 0),
(118, 'Women\'s Silver Anklet Round Beads with Stylized Heart JULY_996397', 300, 900, 'The heart symbol has long been used by silver makers in jewelry design and to this day, silver bracelets bearing this symbol are still loved and chosen by women. Because the heart shape has an extremely beautiful meaning. It represents love, tolerance and the pulse of life. It will help you become more cute and adorable!!', 1, 5, 'chan7_1.jpg', 'chan7_2.jpg', 'chan7_3.jpg', 'chan7_4.jpg', 1, 0, 0, 0, 0, 0),
(119, 'Women\'s Silver Anklet with Small CZ Stone Alessandra JULY_095878', 233, 1000, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a design that brings you elegance and sophistication. Are you ready to shine and attract all eyes with her!!', 1, 5, 'chan8_1.jpg', 'chan8_2.jpg', 'chan8_3.jpg', 'chan8_4.jpg', 1, 0, 0, 0, 0, 0),
(120, 'LCLF106 Jewelry 14k Gold Anklet', 1200, 500, 'Jewelry\'s 14k Gold anklet code LCLF106 is a symbol of elegance and luxury. With high quality 14k gold material, the product is not only a fashion accessory but also a valuable piece of jewelry. Uniquely designed with exquisite details, this anklet enhances the beauty of your feet and shows off your personal style. Whether you wear it on a special occasion or every day, this 14k Gold anklet will make you shine and stand out from the crowd.', 1, 5, 'chan9_1.jfif', 'chan9_2.jfif', 'chan9_3.jfif', 'chan9_4.jfif', 0, 1, 0, 0, 0, 0),
(121, 'Women\'s Silver Anklet with CZ Stone with Shooting Star Isabela JULY_095977', 320, 900, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a shooting star design, giving you luxury and nobility. No matter the situation: going to work, going to a party or hanging out with friends, your legs will stand out!', 1, 5, 'chan10_1.jpg', 'chan10_2.jpg', 'chan10_3.jpg', 'chan10_4.jpg', 0, 0, 0, 0, 0, 0),
(122, 'Verity Square Chain Silver Women\'s Anklet JULY_189367', 280, 1000, 'The bracelet is made from S925 silver, decorated with lovely butterflies around it, giving you a perfect beauty and a great highlight every time you appear. Besides, with this jewelry, you can also be creative, mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 5, 'chan11_1.jpg', 'chan11_2.jpg', 'chan11_4.jpg', 'chan11_5.jpg', 0, 0, 0, 0, 0, 0),
(123, 'Women\'s Silver Anklet with CZ Stone in Lovely Bow Shape Serena JULY_095890', 340, 800, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a lovely bow-shaped design, giving you elegance and sophistication. Are you ready to shine and attract all eyes with her!!', 1, 5, 'chan12_1.jpg', 'chan12_2.jpg', 'chan12_3.jpg', 'chan12_4.jpg', 0, 0, 0, 0, 0, 0),
(124, 'Women\'s Silver Anklet in Heart-shaped Square Box Chain Verity JULY_759438', 340, 800, 'The bracelet is made from S925 silver, adorned with a lovely heart shape in the center, giving you a perfect beauty and a great highlight every time you appear. Besides, with this jewelry, you can also be creative, mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 5, 'chan13_1.jpg', 'chan13_2.jpg', 'chan13_3.jpg', 'chan13_4.jpg', 0, 0, 0, 0, 0, 0),
(125, '19 Women\'s Silver Anklet with CZ Stone Lucky Four Leaf Clover Rosalia JULY_095997', 290, 800, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a four-leaf clover design, giving you luxury and nobility. No matter the situation: going to work, going to a party or hanging out with friends, your legs will stand out!', 1, 5, 'chan15_1.jpg', 'chan15_2.jpg', 'chan15_3.jpg', 'chan15_4.jpg', 0, 0, 0, 0, 0, 0),
(126, 'Women\'s Silver Anklet with Heart-Shaped CZ Stone Clementine JULY_104669', 360, 700, 'The bracelet is made of S925 silver studded with Cubic Zirconia with a heart-shaped design, giving you elegance and sophistication. Are you ready to shine and attract all eyes with her!!', 1, 5, 'chan16_1.jpg', 'chan16_2.jpg', 'chan16_3.jpg', 'chan16_4.jpg', 0, 0, 0, 5, 1, 0),
(127, 'Women\'s Silver Anklet with CZ Starlight Stone Leighton JULY_095845', 240, 1000, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a sparkling star design, giving you elegance and sophistication. Are you ready to shine and attract all eyes with her!!', 1, 5, 'chan14_1.jpg', 'chan14_2.jpg', 'chan14_3.jpg', 'chan14_4.jpg', 0, 0, 0, 5, 1, 0),
(128, 'Women\'s Silver Anklet with CZ Stone Amora Daisy Flower JULY_095839', 270, 1000, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a daisy-shaped design, giving you elegance and sophistication. Are you ready to shine and attract all eyes with her!!', 1, 5, 'chan17_1.jpg', 'chan17_2.jpg', 'chan17_3.jpg', 'chan17_4.jpg', 0, 0, 0, 4, 3, 0),
(129, 'Women\'s Silver Anklet with CZ Stone with Butterfly Shape Francesca JULY_095899', 333, 700, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a butterfly-shaped design, giving you elegance and sophistication. Are you ready to shine and attract all eyes with her!!', 1, 5, 'chan18_1.jpg', 'chan18_2.jpg', 'chan18_3.jpg', 'chan18_4.jpg', 0, 0, 0, 4, 3, 0),
(130, 'Women\'s Silver Anklet with Heart-Shaped CZ Stone Michaela JULY_095983', 290, 1000, 'The bracelet is made of S925 silver studded with Cubic Zirconia stones with a stylized heart-shaped design, giving you luxury and nobility. No matter the situation: going to work, going to a party or hanging out with friends, your legs will stand out!', 1, 5, 'chan19_1.jpg', 'chan19_2.jpg', 'chan19_3.jpg', 'chan19_4.jpg', 0, 0, 0, 0, 0, 0),
(131, 'Guinevere Leaf Shaped Women\'s Silver Noodle Anklet JULY_566747', 300, 800, 'The bracelet is made from S925 silver, embellished with lovely leaf shapes around it, giving you a perfect beauty and a great highlight every time you appear. Besides, with this jewelry, you can also be creative, mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 5, 'chan20_1.jpg', 'chan20_2.jpg', 'chan20_3.jpg', 'chan20_4.jpg', 0, 0, 0, 0, 0, 0),
(132, 'Women\'s Silver Earrings with CZ Stone Long Chain Four-Leaf Clover Tori JULY_100834', 300, 800, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a long chain design in the shape of a four-leaf clover, bringing out the charm and elegance of you. It will definitely be one of the most worthy items in your jewelry cabinet!', 1, 6, 'tai9_1.jpg', 'tai9_2.jpg', 'tai9_3.jpg', 'tai9_4.jpg', 0, 0, 0, 0, 0, 0),
(133, 'Women\'s Silver Earrings with CZ Stone in Elina 4-Leaf Clover JULY_106893', 270, 1000, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a four-leaf clover design, giving you a perfect beauty and a great highlight every time you appear. Besides, you can also be creative and mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 6, 'tai10_1.jpg', 'tai10_2.jpg', 'tai10_3.jpg', 'tai10_4.jpg', 0, 0, 0, 0, 0, 0),
(134, 'Women\'s Silver Earrings with CZ Stone with Phalaenopsis Royal JULY_106974', 300, 700, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a butterfly-shaped design, giving you a perfect beauty and a great highlight every time you appear. Besides, you can also be creative and mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 6, 'tai11_1.jpg', 'tai11_2.jpg', 'tai11_3.jpg', 'tai11_4.jpg', 0, 0, 0, 0, 0, 0),
(135, 'Women\'s Silver Earrings with CZ Stone with 5-Pointed Star Joelle JULY_106350', 250, 1000, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a 5-pointed star design, bringing out the charm and elegance of you. It will definitely be one of the most worthy items in your jewelry cabinet!', 1, 6, 'tai12_1.jpg', 'tai12_2.jpg', 'tai12_3.jpg', 'tai12_4.jpg', 0, 0, 0, 5, 1, 0),
(136, 'Women\'s Silver Earrings with CZ Stone 5-Pointed Star Nyla JULY_099971', 210, 1000, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a love talisman design, bringing you elegance and nobility. No matter the situation: going to work, going to a party or going out with friends, your ears will stand out!', 1, 6, 'tai13_1.jpg', 'tai13_2.jpg', 'tai13_3.jpg', 'tai13_4.jpg', 0, 0, 0, 4.5, 2, 0),
(137, 'Women\'s Gold Earrings with CZ Gold Stars Kori JULY_100452', 3100, 1000, 'The earring is made of gold studded with Cubic Zirconia stones with a 5-pointed gold star design, bringing charm and elegance to you. It will definitely be one of the most worthy items in the collection. That\'s your jewelry cabinet!', 1, 6, 'tai14_1.jpg', 'tai14_2.jpg', 'tai14_3.jpg', 'tai14_4.jpg', 0, 1, 0, 0, 0, 0),
(138, 'Maeve Apricot Flower Shaped Silver Earrings for Women JULY_102638', 260, 1000, 'The earrings are crafted from S999 silver with an apricot flower design, bringing an attractive elegance to you. With meticulousness in each design line, you will become more perfect when wearing it!', 1, 6, 'tai15_1.jpg', 'tai15_2.jpg', 'tai15_3.jpg', 'tai15_4.jpg', 0, 0, 0, 4.5, 2, 0),
(139, 'Natalia JULY_102348 Women\'s/Men\'s Silver Earrings Without Stones', 210, 1000, 'The earrings are crafted from S925 silver with a design that brings an attractive elegance to you. With meticulousness in each design line, you will become more perfect when wearing it!', 1, 6, 'tai16_1.jpg', 'tai16_2.jpg', 'tai16_3.jpg', 'tai16_4.jpg', 0, 0, 0, 0, 0, 0);
INSERT INTO `hanghoa` (`idHH`, `TenHH`, `Gia`, `SoLuong`, `NoiDung`, `AnHien`, `LoaiHH`, `Anh1`, `Anh2`, `Anh3`, `Anh4`, `DeXuat`, `ChatLieu`, `DonDoi`, `average_rating`, `total_review`, `total_purchases`) VALUES
(142, 'Women\'s Mini Small Gold Earrings with Beautiful Butterflies JULY_448353', 180, 1000, 'The earrings are made of high-quality gold, with designs of beautiful butterflies, each line of the product shows the meticulous care of the hands of skilled craftsmen, both soft and sturdy. It will definitely bring a unique and personal look to you on occasions like going out or going to work. No matter what outfit you combine this lovely earring with, this will be a truly great mark for you!', 1, 6, 'tai18_1.jpg', 'tai18_2.jpg', 'tai18_3.jpg', 'tai18_4.jpg', 0, 1, 0, 0, 0, 0),
(144, 'Women\'s Mini Small Silver Earrings with Starlight CZ Stone JULY_682792', 190, 1000, 'The earrings are made of S925 silver and studded with high-quality Cubic Zirconia stones, inspired by the design of sparkling stars in the sky. Each line of the product shows meticulous care from the hands of skilled craftsmen. craft, both soft and sturdy. It will definitely bring a unique and personal look to you on occasions like going out or going to work. No matter what outfit you combine this lovely earring with, this will be a truly great mark for you!', 1, 6, 'tai17_1.jpg', 'tai17_2.jpg', 'tai17_3.jpg', 'tai17_4.jpg', 0, 0, 0, 3, 3, 0),
(145, 'Women\'s Silver Earrings with CZ Stone in Fox Shape Novalee JULY_106757', 330, 900, 'The earrings are made of S925 silver and studded with Cubic Zirconia stones with a fox-shaped design, giving you a perfect beauty and a great highlight every time you appear. Besides, you can also be creative and mix-match with different jewelry to create your own style, helping you be confident and shine.', 1, 6, 'tai19_1.jpg', 'tai19_2.jpg', 'tai19_3.jpg', 'tai19_4.jpg', 0, 0, 0, 0, 0, 0),
(146, 'Lorraine JULY_102802 Silver Four-Leaf Clover Earrings for Women', 200, 1000, 'The earrings are made from S925 silver with a four-leaf clover design, bringing an attractive elegance to you. With meticulousness in each design line, you will become more perfect when wearing it!', 1, 6, 'tai20_1.jpg', 'tai20_2.jpg', 'tai20_3.jpg', 'tai20_4.jpg', 0, 0, 0, 5, 2, 0),
(147, 'Exquisite Fashion Korean Style Tassel Butterfly Hair Clip for Women', 15, 1000, 'The butterfly hair clip with tassel is a sophisticated and stylish fashion accessory, inspired by Korean fashion trends. With a cute butterfly design combined with tassel details, the product brings a unique and attractive beauty to your style. High-quality materials and meticulous processing ensure the durability and shine of the hairpin, while also providing a comfortable feeling when used. The combination of the sweet image of butterflies and the youthfulness of tassels makes the product the perfect highlight for every outfit, from everyday to special occasions, helping you feel confident and charming every time. appear', 1, 4, 'toc5_1.jfif', 'toc5_2.jfif', 'toc5_3.jfif', 'toc5_4.jfif', 1, 0, 0, 4.3333, 3, 0),
(148, 'Silver Hair Clip with Cute Flower Shape', 18, 2000, 'Flower shaped silver hair clip is a cute and creative accessory for your hairstyle. With the unique design of the flower, the product brings delicate and feminine beauty. High quality silver material helps the hairpin stay shiny and durable over time. The flexibility in clamping and holding hair makes it easy to create many different hairstyles while still ensuring stability and comfort. Flower hair clips not only make your hairstyle stand out but are also the perfect highlight for your personal style.', 1, 4, 'toc6_1.jfif', 'toc6_2.jfif', 'toc6_3.jfif', 'toc6_4.jfif', 1, 0, 0, 0, 0, 0),
(149, 'Silver Professional Makeup Hair Clip', 26, 1000, 'Silver professional makeup hair clip is an indispensable tool in your beauty accessories collection. With high quality silver material, the product ensures durability and natural shine. The simple but sturdy design helps the hairpin firmly grasp every strand of hair without causing peeling or headaches. The versatility of the clip allows you to create a variety of hairstyles, from small hair sections to large and elaborate hair ties. With this quality silver hair clip, you can be confident every time you apply makeup or style your hair, ensuring every detail on your head is perfect.', 1, 4, 'toc7_1.jfif', 'toc7_2.jfif', 'toc7_3.jfif', 'toc7_4.jfif', 1, 0, 0, 4.5, 2, 0),
(150, 'Korean fashion silver butterfly hair clip', 30, 1000, 'Silver butterfly hair clip with Korean fashion style is a great choice to refresh your hairstyle. With a lovely and delicate butterfly design, the product creates a unique and attractive highlight for any outfit. High quality silver material keeps the hairpin always beautiful and shiny. The product\'s versatility makes it easy to create a variety of hairstyles, from gentle front parting to a formal ponytail. With this Korean fashion silver butterfly hair clip, you will confidently express your personal style and charm every time you appear.', 1, 4, 'toc8_1.jfif', 'toc8_2.jfif', 'toc8_3.jfif', 'toc8_4.jfif', 1, 0, 0, 0, 0, 0),
(151, 'Silver Hair Clip with Shark Shape, Large Design, High Quality Fashion for Women', 17, 1000, 'Large silver shark hair clip is a unique and stylish highlight in your accessories collection. This unique and fun shark design is not only a fashion accessory but also a personal symbol of uniqueness and confidence. With its large size, the product makes a strong and personal statement for your hairstyle. High quality silver material ensures durability and shine, helping the hairpin stay gorgeous and beautiful over time. Whether you\'re out on the town or attending a special event, this silver shark hair clip will be the perfect highlight of your personal style and excellence.', 1, 4, 'toc9_1.jfif', 'toc9_2.jfif', 'toc9_3.jfif', 'toc9_4.jfif', 0, 0, 0, 4, 2, 0),
(153, 'Like a Goddess Gold Hammered Hairpin', 30, 1000, 'Gold hairpins like those of a goddess are a symbol of power and class. This design is not only a fashion accessory but also a symbol of beauty and authority. With high-quality gold material, The product is shining and luxurious, creating a splendid highlight for your hairstyle. Simple but sophisticated design, combined with noble materials, makes this hairpin a symbol of class and style. goddess every time you use it', 1, 4, 'toc10_2.jpg', 'toc10_1.jpg', 'toc10_2.jpg', 'toc10_1.jpg', 0, 1, 0, 0, 0, 0),
(154, 'Medusa Gold and Green Snake Hair Clips', 40, 1000, 'The Medusa yellow and green snake hairpin is a symbol of mystery and uniqueness. The design is inspired by the image of the goddess Medusa in Greek mythology, the product combines seductive beauty and incredible strength. Surprisingly, two snakes are realistically reproduced on the product, one in yellow and one in blue, creating a unique and attractive combination. With high-quality materials and meticulous workmanship, this hairpin not only a fashion accessory but also a symbol of strength and personal style', 1, 4, 'toc11_1.webp', 'toc11_2.webp', 'toc11_1.webp', 'toc11_2.webp', 0, 1, 0, 5, 1, 0),
(155, 'Lovely Star-Shaped Silver Hair Clip for Women', 20, 1000, 'Star-shaped silver hair clips are a lovely and sparkly choice for women. The star\'s simple yet sophisticated design adds a cute highlight to your hairstyle. High quality silver material helps the hairpin stay shiny and durable over time. The compactness of the product makes it easy to carry with you and use anytime, anywhere. Whether you want to add a little color to your ordinary day or want to shine on special occasions, star-shaped silver hair clips will make you radiate radiance and charm.', 1, 4, 'toc12_1.jfif', 'toc12_2.jfif', 'toc12_3.jfif', 'toc12_4.jfif', 0, 0, 0, 5, 1, 0),
(156, 'Elegant Vintage Style White Barley Earring Brooch with Silver Tassel', 15, 1000, 'The hair brooch with white barley ears and silver tassels is a symbol of elegance and classicism. With sophisticated design and meticulous details, the product brings a charming and attractive beauty. White barley attached to the brooch creates a look of purity and elegance, while silver tassels add elegance and exclusivity. High quality silver material keeps the brooch always beautiful and shiny. The combination of classic and luxurious style creates a unique product, the perfect highlight for all your outfits and occasions.', 1, 4, 'toc13_1.jfif', 'toc13_2.jfif', 'toc13_3.jfif', 'toc13_4.jfif', 0, 0, 0, 0, 0, 0),
(157, 'Classic Chinese Style Cat\'s Eye Pearl Flower-Shaped Silver Hair Brooch', 20, 1000, 'The silver flower-shaped hair brooch with opal and classic Chinese style is a symbol of sophistication and nobility. Unique design with delicate flower shape combined with opal, creating an impressive and attractive beauty. High quality silver material combined with meticulousness in every detail keeps the brooch always beautiful and sparkling. Its classic Chinese style highlights charm and tradition, making you shining and charming in every occasion.', 1, 4, 'toc14_1.jfif', 'toc14_2.jfif', 'toc14_3.jfif', 'toc14_4.jfif', 0, 0, 0, 3, 3, 0),
(158, 'Fashionable Silver Shark / Butterfly Hair Clip', 15, 1000, 'Silver shark or butterfly shaped hair clips are a delicate combination of natural beauty and fashion style. The unique design of shark or butterfly shape makes the product special and attractive. High quality silver material keeps the hairpin always shiny and durable over time. The versatility of the product allows you to easily combine it with many different hairstyles, from gentle morning hairstyles to gorgeous party hairstyles. Silver shark or butterfly hair clips are perfect for expressing your personal style and uniqueness.', 1, 4, 'toc15_1.jfif', 'toc15_2.jfif', 'toc15_3.jfif', 'toc15_4.jfif', 0, 0, 0, 5, 1, 0),
(159, 'Fashionable Silver Double Layer Butterfly Hairband with Rhinestones', 30, 1000, 'The double-layer silver butterfly-shaped hairband with rhinestones is a unique and charming fashion accessory. The two-layer design adds richness and style to your hairstyle, while the butterfly shape with sparkling rhinestones highlights the natural beauty and femininity. High quality silver material keeps the headband always shiny and durable. The combination of fashionable designs and luxurious rhinestones creates a unique product, making you shine and charm on every occasion.', 1, 4, 'toc16_1.jfif', 'toc16_2.jfif', 'toc16_3.jfif', 'toc16_4.jfif', 0, 0, 0, 0, 0, 0),
(160, 'Fashionable Silver Butterfly Hair Pin with Stone and Tassel', 130, 700, 'The silver butterfly hair pin with stones and tassels is a gorgeous and unique fashion accessory. Designed with delicate butterfly shapes and meticulous details, combined with the use of sparkling gemstones, creating a product full of luxury and elegance. High quality silver material keeps the hairpin always shiny and durable over time. Delicately coordinated tassels highlight the feminine and gentle beauty of the hairstyle. Using silver butterfly hairpins with stones and tassels, you will shine and attract all eyes on every occasion.', 1, 4, 'toc17_1.jfif', 'toc17_2.jfif', 'toc17_3.jfif', 'toc17_4.jfif', 0, 0, 0, 5, 3, 0),
(161, 'Qrhyk Y2K Irregular Loose Silver Hair Clip Zircon Butterfly', 20, 1000, 'The irregular loose silver hair clip with zircon butterfly is a fashion accessory inspired by the 2000s (Y2K). The irregular design and patchwork create a personal and unique style. The zircon butterfly shape adds sparkle and elegance to the product. With high quality silver material, this hairpin will make you stand out and shine on every occasion.', 1, 4, 'toc18_1.jfif', 'toc18_2.jfif', 'toc18_3.jfif', 'toc18_4.jfif', 0, 0, 0, 4, 3, 0),
(162, 'Silver hairpin Vastji Vintage Fashion Diamond Snake Shape Border', 35, 1000, 'Vastji Vintage silver hairpin with snake design and border decorated with diamonds is a symbol of luxury and originality in the fashion world. The unique design of the snake shape combined with meticulously crafted edges creates a classy and attractive product. Sparkling diamonds are used to highlight details and add value to the product. The Vastji Vintage silver hair clip is not only a fashion accessory but also a symbol of individuality and sophisticated style.', 1, 4, 'toc19_1.jfif', 'toc19_2.jfif', 'toc19_3.jfif', 'toc19_4.jfif', 0, 0, 0, 3.6667, 3, 0),
(163, 'Fashionable Silver Butterfly Hairpin with Stone', 15, 1000, 'Silver butterfly hairpin with rhinestones is a sparkling and lovely fashion accessory. The delicate butterfly design and details decorated with precious stones create a unique and attractive beauty. High quality silver material keeps the hairpin always shiny and durable over time. The combination of fashion style and sparkling rhinestones creates an attractive product, making you shine and stand out in every occasion.', 1, 4, 'toc20_1.jfif', 'toc20_2.jfif', 'toc20_3.jfif', 'toc20_4.jfif', 0, 0, 0, 4.5, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productoder`
--

CREATE TABLE `productoder` (
  `idOder` int(11) NOT NULL,
  `idHH` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TotalPrice` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `TinhTrangGiaoHang` int(11) NOT NULL DEFAULT 0,
  `idUser` int(11) NOT NULL DEFAULT 0,
  `soluong` text NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `productoder`
--

INSERT INTO `productoder` (`idOder`, `idHH`, `TotalPrice`, `Name`, `Address`, `Email`, `PhoneNumber`, `TinhTrangGiaoHang`, `idUser`, `soluong`, `Date`) VALUES
(225, '35 36 37 38', 11000, '123', '1', 'a@gmail.com', 1, 2, 27, '2 1 1 1', '2024-05-09'),
(226, '35 36 37 38', 11000, '2', '2', 'a@gmail.com', 2, 0, 27, '2 1 1 1', '2024-05-09'),
(227, '35', 5000, '3', '8', 'a@gmail.com', 3, 0, 27, '1', '2024-05-09'),
(228, '41', 5555, 'a', 'a', 'a@gmail.com', 2147483647, 2, 0, '1', '2024-05-09'),
(229, '35 36 37 38', 11000, '1', '1', 'a@gmail.com', 1, 1, 27, '2 1 1 1', '2024-05-09'),
(230, '35 36 37 38', 151000, 'a', 'a', 'a@gmail.com', 1, 0, 27, '30 1 1 1', '2024-05-09'),
(231, '35 36 37 38 41', 187030, 'C', 'C', 'C@gmail.com', 346019375, 0, 27, '29 12 1 1 6', '2024-05-09'),
(232, '43 44', 570, 'fdsvs', 'hcm vietnam', 'C@gmail.com', 354565000, 0, 51, '1 1', '2024-05-12'),
(233, '45 74 103', 860, 'hillary', 'vung tau vietnam', 'A@vydvbdn.gmail.com', 365019685, 0, 52, '1 1 1', '2024-05-12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `user_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datetime` int(11) NOT NULL,
  `idHH` int(11) NOT NULL DEFAULT 0,
  `idUser` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `review_table`
--

INSERT INTO `review_table` (`review_id`, `user_name`, `user_rating`, `user_review`, `datetime`, `idHH`, `idUser`) VALUES
(14, 'aaaaa', 4, '4', 1714232258, 36, 36),
(15, 'b', 4, 'l', 1714280517, 37, 27),
(16, 'b', 1, '15\n\n', 1715020971, 69, 27),
(17, 'hahaha', 5, 'so beautiful', 1715385744, 82, 51),
(18, 'hahaha', 4, 'nice', 1715385776, 81, 51),
(19, 'hahaha', 5, 'Beautiful product, good quality', 1715385815, 83, 51),
(20, 'hahaha', 4, 'very beautiful', 1715385852, 77, 51),
(21, 'hahaha', 4, 'It\'s very nice to wear', 1715385908, 48, 51),
(22, 'hahaha', 5, 'so beautiful', 1715386049, 44, 51),
(23, 'hahaha', 5, 'I love it', 1715386075, 85, 51),
(24, 'hahaha', 3, 'quality', 1715386102, 86, 51),
(25, 'hahaha', 5, 'should buy it', 1715386127, 90, 51),
(26, 'hahaha', 5, 'so cute', 1715386143, 97, 51),
(27, 'hahaha', 4, 'so luxurious', 1715386187, 53, 51),
(28, 'hahaha', 3, 'beautiful but doesn\'t suit me very much', 1715431112, 111, 51),
(29, 'hahaha', 4, 'verry good\n', 1715431173, 110, 51),
(30, 'hahaha', 5, 'ohhh nice\n', 1715434244, 108, 51),
(31, 'hahaha', 4, 'It\'s beautiful and will support you for a long time', 1715451987, 147, 51),
(32, 'hahaha', 5, 'so cute', 1715452009, 163, 51),
(33, 'hahaha', 5, 'oh so cool', 1715452035, 162, 51),
(34, 'hahaha', 4, 'Are there any other similar models?', 1715452069, 161, 51),
(35, 'hahaha', 5, 'gentle and feminine', 1715452092, 160, 51),
(36, 'hahaha', 5, 'It\'s so beautiful, you should buy it', 1715452116, 157, 51),
(37, 'hahaha', 3, 'Nice neat hair clip', 1715452147, 151, 51),
(38, 'hahaha', 5, 'It\'s so pretty, everyone asks where I bought it', 1715452184, 129, 51),
(39, 'hahaha', 5, 'so cute hihihii', 1715452225, 128, 51),
(40, 'hahaha', 5, 'IN GENERAL IT IS BEAUTIFUL', 1715479601, 117, 51),
(41, 'hahaha', 4, 'i like it', 1715479635, 113, 51),
(42, 'hahaha', 5, 'i love it', 1715479660, 116, 51),
(43, 'hahaha', 4, 'It\'s so beautiful, you should buy it', 1715479688, 71, 51),
(44, 'hahaha', 5, 'i like it', 1715481279, 72, 51),
(45, 'hahaha', 4, 'Great quality', 1715481311, 70, 51),
(46, 'hahaha', 5, 'i love it,You should buy it, everyone', 1715481355, 146, 51),
(47, 'hahaha', 3, 'so cute', 1715481374, 144, 51),
(48, 'Hillary', 5, 'so good', 1715481500, 42, 52),
(49, 'Hillary', 4, 'i like it', 1715481522, 82, 52),
(50, 'Hillary', 5, 'so cute', 1715481546, 84, 52),
(51, 'Hillary', 4, 'Beautiful, good quality, everyone should buy it', 1715481579, 83, 52),
(52, 'Hillary', 2, 'The shop gave me the wrong size', 1715481653, 81, 52),
(53, 'Hillary', 5, 'i love it', 1715481671, 77, 52),
(54, 'Hillary', 5, 'Quality, enthusiastic and thoughtful shop', 1715481714, 85, 52),
(55, 'Hillary', 3, 'so cute', 1715481729, 49, 52),
(56, 'Hillary', 5, 'It\'s so beautiful, you should buy it', 1715481753, 86, 52),
(57, 'Hillary', 5, 'very cute I like it very much', 1715481808, 97, 52),
(58, 'Hillary', 3, 'Pretty', 1715481831, 96, 52),
(59, 'Hillary', 5, 'i like it', 1715481858, 99, 52),
(60, 'Hillary', 4, 'i love it, quality', 1715481932, 90, 52),
(61, 'Hillary', 4, 'my boyfriend loves it', 1715482001, 59, 52),
(62, 'Hillary', 4, 'Beautiful product just like in the photo', 1715482029, 57, 52),
(63, 'Hillary', 5, 'looks very luxurious', 1715482053, 100, 52),
(64, 'Hillary', 4, 'i like it,should buy it', 1715482106, 111, 52),
(65, 'Hillary', 3, 'so cute', 1715482127, 110, 52),
(66, 'Hillary', 4, 'Hope the shop sells well', 1715482158, 109, 52),
(67, 'Hillary', 5, 'more then awesome', 1715482179, 108, 52),
(68, 'Hillary', 4, 'Very beautiful cross pendant', 1715482217, 107, 52),
(69, 'Hillary', 3, 'i like it', 1715482238, 105, 52),
(70, 'Hillary', 5, 'so cute', 1715482250, 102, 52),
(71, 'Hillary', 5, 'Great quality and beautiful', 1715482285, 147, 52),
(72, 'Hillary', 5, 'I bought it for my sister and she complimented it so much', 1715482308, 149, 52),
(73, 'Hillary', 2, 'But my hair is too short to use it', 1715482343, 162, 52),
(74, 'Hillary', 5, 'so cute', 1715482365, 161, 52),
(75, 'Hillary', 5, 'goddess always', 1715482388, 160, 52),
(76, 'Hillary', 3, 'Is there any instructions for use?', 1715482425, 157, 52),
(77, 'Hillary', 5, 'so cute, i like it', 1715482451, 155, 52),
(78, 'Hillary', 4, 'Any more discounts, shop?', 1715482477, 117, 52),
(79, 'Hillary', 5, 'Mom, it\'s ok to go to the beach', 1715482505, 113, 52),
(80, 'Hillary', 2, 'I bought the meal but it sold out so early =((', 1715482540, 129, 52),
(81, 'Hillary', 4, 'i like it', 1715482559, 128, 52),
(82, 'Hillary', 5, 'beautiful', 1715482581, 127, 52),
(83, 'Hillary', 5, 'Reply my email, shop', 1715482615, 126, 52),
(84, 'Hillary', 5, 'hihi i love it', 1715482658, 71, 52),
(85, 'Hillary', 5, 'There is one set that I bought all of them', 1715482684, 72, 52),
(86, 'Hillary', 5, 'What more can I say, it\'s so beautiful', 1715482712, 70, 52),
(87, 'Hillary', 2, 'It was too long so it stabbed into my shoulder=((', 1715482753, 144, 52),
(88, 'Hillary', 5, 'nice', 1715482768, 138, 52),
(89, 'Hillary', 5, 'You should buy it, everyone', 1715482791, 136, 52),
(90, 'Junia', 5, 'oh wow', 1715483080, 36, 53),
(91, 'Junia', 4, 'i like it', 1715483099, 44, 53),
(92, 'Junia', 3, 'Are there any other similar models?', 1715483128, 84, 53),
(93, 'Junia', 5, 'wow i really like it', 1715483218, 83, 53),
(94, 'Junia', 3, 'You gave me the wrong model huhuhu', 1715483264, 82, 53),
(95, 'Junia', 4, 'fine', 1715483294, 81, 53),
(96, 'Junia', 4, 'Beautiful and quality products', 1715483345, 77, 53),
(97, 'Junia', 5, 'cute', 1715485827, 48, 53),
(98, 'Junia', 3, 'hihi oke', 1715485855, 37, 53),
(99, 'Junia', 3, 'nice', 1715485904, 85, 53),
(100, 'Junia', 5, 'very beautiful', 1715485926, 49, 53),
(101, 'Junia', 5, 'i like it', 1715485958, 86, 53),
(102, 'Junia', 4, 'nice', 1715485986, 90, 53),
(103, 'Junia', 5, 'It\'s so beautiful, you should buy it', 1715486068, 99, 53),
(104, 'Junia', 4, 'cute', 1715486094, 97, 53),
(105, 'Junia', 4, 'i like it', 1715486111, 96, 53),
(106, 'Junia', 5, 'nice', 1715486152, 59, 53),
(107, 'Junia', 4, 'so beautiful', 1715486174, 100, 53),
(108, 'Junia', 5, 'i love it', 1715486190, 57, 53),
(109, 'Junia', 5, 'so beautiful i love it', 1715486216, 111, 53),
(110, 'Junia', 5, 'so beautiful', 1715486239, 108, 53),
(111, 'Junia', 4, 'nice', 1715486263, 107, 53),
(112, 'Junia', 5, 'so beautiful so cute i like it', 1715486286, 105, 53),
(113, 'Junia', 5, 'we love it', 1715486304, 102, 53),
(114, 'Junia', 4, 'neat', 1715486333, 65, 53),
(115, 'Junia', 4, 'Support the shop for a long time', 1715486364, 147, 53),
(116, 'Junia', 4, 'cute cute cute', 1715486394, 163, 53),
(117, 'Junia', 4, 'I\'m afraid of snakes but this clip is very beautiful, I like it', 1715486429, 162, 53),
(118, 'Junia', 3, 'i like it', 1715486453, 161, 53),
(119, 'Junia', 5, 'nice', 1715486568, 160, 53),
(120, 'Junia', 5, 'wow', 1715486586, 158, 53),
(121, 'Junia', 1, 'broken', 1715486620, 157, 53),
(122, 'Junia', 5, 'wow', 1715487359, 154, 53),
(123, 'Junia', 5, 'beautiful', 1715487377, 151, 53),
(124, 'Junia', 4, 'i love it', 1715487391, 149, 53),
(125, 'Junia', 5, 'very smooth', 1715487419, 67, 53),
(126, 'Junia', 5, 'nice\n', 1715487644, 69, 53),
(127, 'Junia', 5, 'mesmerizingly beautiful', 1715487674, 71, 53),
(128, 'Junia', 4, 'so cute', 1715487696, 72, 53),
(129, 'Junia', 4, 'mesmerizingly beautiful', 1715487760, 70, 53),
(130, 'Junia', 5, 'beautiful and good quality', 1715487793, 146, 53),
(131, 'Junia', 4, 'i like it', 1715487807, 144, 53),
(132, 'Junia', 4, 'cute', 1715487821, 138, 53),
(133, 'Junia', 4, 'beautiful and good quality', 1715487835, 136, 53),
(134, 'Junia', 5, 'so cute', 1715487849, 135, 53),
(135, 'NaNaa', 5, 'so cute', 1715487998, 45, 54),
(136, 'NaNaa', 5, 'beautiful', 1715488026, 36, 54),
(137, 'NaNaa', 5, 'cute', 1715488042, 44, 54),
(138, 'Junia', 3, 'nice', 1715519143, 117, 53),
(139, 'Junia', 5, 'i love it', 1715519164, 113, 53),
(140, 'Junia', 5, 'i love it\n', 1715519178, 112, 53),
(141, 'Junia', 5, 'very beautiful I like it very much', 1715519213, 116, 53),
(142, 'Junia', 5, 'so cute', 1715519238, 129, 53),
(143, 'Junia', 3, 'i love it', 1715519262, 128, 53);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`idHH`);

--
-- Chỉ mục cho bảng `productoder`
--
ALTER TABLE `productoder`
  ADD PRIMARY KEY (`idOder`);

--
-- Chỉ mục cho bảng `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `idHH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT cho bảng `productoder`
--
ALTER TABLE `productoder`
  MODIFY `idOder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT cho bảng `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--

-- --------------------------------------------------------

--
--
CREATE DATABASE IF NOT EXISTS `product_review_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `product_review_db`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review_table`
--

CREATE TABLE `review_table` (
  `id_review` int(11) NOT NULL,
  `user_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_review` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datetime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `review_table`
--

INSERT INTO `review_table` (`id_review`, `user_name`, `email`, `user_review`, `datetime`) VALUES
(1, 'John', 'john@gmail.com', 'Please help me fix my order', '2024-05-12');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`id_review`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `review_table`
--
ALTER TABLE `review_table`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Cơ sở dữ liệu: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `ngay` date NOT NULL,
  `idgroup` tinyint(4) NOT NULL DEFAULT 1,
  `SoDIenTHoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`idUser`, `username`, `pass`, `email`, `ngay`, `idgroup`, `SoDIenTHoai`) VALUES
(27, 'b', 'b', 'kiriyagasan@gmail.com', '2023-12-18', 0, 1234567892),
(36, 'aaaaa', 'a', 'bit15224@gmail.com', '2024-04-09', 1, 825144923),
(39, 'a', 'a', 'bit1524@gmail.com', '2024-05-01', 0, 825144923),
(40, 'c', 'c', 'bit15224@gmail.com', '2024-05-01', 0, 825144823),
(41, 'd', 'd', 'v@gmail.com', '2024-05-02', 0, 825144923),
(42, '2251120453', 'lllllllll', 'bit152l24@gmail.com', '2024-05-02', 1, 825144923),
(43, 'bit15224@', 'aaaaaaaaa', 'vyy@gmail.com', '2024-05-03', 1, 825144923),
(44, '12345', '12345', '12345@gmail.com', '2024-05-03', 1, 825144923),
(46, '123456', '12345', 'bit152243@gmail.com', '2024-05-03', 1, 1234578940),
(47, '1234567', 'p', 'v21@gmail.com', '2024-05-03', 1, 825144823),
(48, '12345678', 'qqqqqqq', 'bit15224qqqq@gmail.com', '2024-05-03', 1, 825144923),
(49, '123456789', '1Qq!123', 'bit1125224@gmail.com', '2024-05-03', 1, 825144823),
(50, 'signUpForm@', 'signUpForm123@', 'bit154224@gmail.com', '2024-05-03', 1, 825144923),
(51, 'hahaha', 'Ngoc@0302', '2251120431@ut.edu.vn', '2024-05-07', 1, 346019375),
(52, 'Hillary', 'Junia@0302', 'nguyenngoc2004aa@gmail.com', '2024-05-12', 1, 345016385),
(53, 'Junia', 'Aa@1234', 'A@gmail.com', '2024-05-12', 1, 2147483647),
(54, 'NaNaa', 'Na@0000', 'Na@0000.gmal.com', '2024-05-12', 1, 998434580);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
