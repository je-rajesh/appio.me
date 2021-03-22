-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2021 at 09:26 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grabliyw_grablordb`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `playlist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `playlist_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `version`, `application_name`, `playlist`, `playlist_video`, `user_id`, `created_at`, `updated_at`) VALUES
(16, '', '', 'Mere dad ki dulhan', '', '', NULL, NULL),
(17, '', '', 'Alpviram | Full Episodes', '', '', NULL, NULL),
(19, '', '', '', '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', '', NULL, NULL),
(20, '', '', '', 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', '', NULL, NULL),
(21, '', '', '', 'Ep 9 - Clash Over Amrita - Alpviram - Full Episode', '', NULL, NULL),
(22, '', '', '', 'Ep 8 - Rohit Comes Home - Alpviram - Full Episode', '', NULL, NULL),
(23, '', '', '', 'Ep 7 - Amrita Goes Missing From The Hospital - Alpviram - Full Episode', '', NULL, NULL),
(24, '', '', '', 'Ep 6 - Amrita Gets Discharged From The Hospital - Alpviram - Full Episode', '', NULL, NULL),
(25, '', '', '', 'Ep 5 - Rohit Is Furious - Alpviram - Full Episode', '', NULL, NULL),
(26, '', '', '', 'Ep 4 - Amu Gets Adamant - Alpviram - Full Episode', '', NULL, NULL),
(27, '', '', '', 'Ep 3 - Amrita Tries To Mend Things - Alpviram - Full Episode', '', NULL, NULL),
(28, '', '', '', 'Ep 2 - Amrita Is In A Critical Condition - Alpviram - Full Episode', '', NULL, NULL),
(29, '', '', '', 'Ep 1 - A Tiff Between Amrita And Rohit - Alpviram - Full Episode', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `createapp`
--

CREATE TABLE `createapp` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apikey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirecturl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdomainurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supportemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacypolicy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `version_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packagename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buildAppContent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adMobId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adMobBanner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adMobInterstitial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adColonyUUID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adColonyZonesZero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adColonyZonesOne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adColonyZonesTwo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeInt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeBanner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listInt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listBanner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listIntAfterX` int(11) DEFAULT NULL,
  `oneSignalKey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loadingVideoText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoErrorText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shareText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showHomeBanner` tinyint(1) DEFAULT NULL,
  `showHomeInterstitial` tinyint(1) DEFAULT NULL,
  `showListInterstitial` tinyint(1) DEFAULT NULL,
  `showVideoPageTop` tinyint(1) DEFAULT NULL,
  `showVideoPageBottom` tinyint(1) DEFAULT NULL,
  `enableOneSignal` tinyint(1) DEFAULT NULL,
  `startappid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` tinyint(1) DEFAULT NULL,
  `admob` tinyint(1) DEFAULT NULL,
  `fbappid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fbbannerid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fbinterid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adappid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adbannerid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adinterid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `createapp`
--

INSERT INTO `createapp` (`id`, `color`, `apikey`, `icon`, `appname`, `redirecturl`, `subdomainurl`, `supportemail`, `privacypolicy`, `created_at`, `updated_at`, `user_id`, `version_no`, `packagename`, `buildAppContent`, `adMobId`, `adMobBanner`, `adMobInterstitial`, `adColonyUUID`, `adColonyZonesZero`, `adColonyZonesOne`, `adColonyZonesTwo`, `homeInt`, `homeBanner`, `listInt`, `listBanner`, `listIntAfterX`, `oneSignalKey`, `loadingVideoText`, `videoErrorText`, `priColor`, `accColor`, `shareText`, `showHomeBanner`, `showHomeInterstitial`, `showListInterstitial`, `showVideoPageTop`, `showVideoPageBottom`, `enableOneSignal`, `startappid`, `facebook`, `admob`, `fbappid`, `fbbannerid`, `fbinterid`, `adappid`, `adbannerid`, `adinterid`) VALUES
(26, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1613476513.png', 'test1', '11', 'http://11iapp-1466c1.appio.me', '1', '3', '2021-02-16 06:25:13', '2021-02-16 06:25:13', 11, '1', 'com.vishal@gmail.com.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1613476597.png', 'test2', '4', 'http://11iapp-51b4b0.appio.me', '1', '2', '2021-02-16 06:26:37', '2021-02-16 06:26:37', 11, '1', 'com.vishal@gmail.com.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '222222222222222', '2', '3', NULL, NULL, NULL),
(28, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1613476992.png', 'tets3', '4', 'http://11iapp-09a840.appio.me', '2', '4', '2021-02-16 06:33:12', '2021-02-16 06:33:12', 11, '1', 'com.vishal@gmail.com.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'qqqqqqqqqq', 'qqqqqqqqqqqq', 'qqqqqqqqqqqqq', 'qqqqqqqqqqqqq', 'qqqqqqqqqqqq', 'qqqqqqqqqqqqqqq'),
(29, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'placeholder512-1_1613495013.jpg', 'app name one', 'http://redirect.url', 'http://7iapp-57f638.appio.me', 'support@email.com', 'http://privacy.policy', '2021-02-16 22:03:33', '2021-02-16 22:03:33', 7, '1', 'com.abcdef.appnameone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'd48alga-49085c28-64dc-4c5b-834f-a014130bddd3_1613551810.png', 'Youtube app one', 'google.com', 'http://6iapp-285213.appio.me', 'jesswinchetnani@gmail.com', 'google.in', '2021-02-17 13:50:10', '2021-02-17 13:50:10', 6, '1', 'com.1000jesse.<Youtube>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '12345678', '11111111', '11111111'),
(31, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1613557538.png', 'vistest1', NULL, 'http://1iapp-2b18aa.appio.me/', '2', '2', '2021-02-17 15:25:38', '2021-02-17 15:25:38', 1, '1', 'com.vishalmaurya.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1613557799.png', 'test2', 's', 'http://1iapp-75f832.appio.me', '1', '3', '2021-02-17 15:29:59', '2021-02-17 15:29:59', 1, '1', 'com.vishalmaurya.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201605808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1613569314.png', 'test1', 's', 'http://1iapp-24a252.appio.me', '2', '6', '2021-02-17 18:41:54', '2021-02-17 18:41:54', 1, '1', 'com.vishalmaurya.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201620872', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1613569590.png', 'test1', NULL, 'http://1iapp-666825.appio.me/', '1', '3', '2021-02-17 18:46:30', '2021-02-17 18:46:30', 1, '1', 'com.vishalmaurya.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201720903', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'images (1)_1613620143.png', 'Uiiio', 'Yuio', 'http://1iapp-f4dc0d.appio.me', 'Yuik', 'Bjkoh', '2021-02-18 08:49:03', '2021-02-18 08:49:03', 1, '1', 'com.vishalmaurya.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201256553', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1613733444.png', 'test1 two', '11', 'http://1iapp-4d3996.appio.me/', '1', '2', '2021-02-19 16:17:24', '2021-02-19 16:17:24', 1, '1', 'com.vishalmaurya.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201833747', 1, NULL, '1', '2', '3', '4', '5', '6'),
(37, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'rani pari (1)_1613841007.jpg', 'App name TWO one', 'Url', 'http://4iapp-f855cd.appio.me/', 'Test', 'Url', '2021-02-20 22:10:07', '2021-02-20 22:10:07', 4, '1', 'com.1000testdeveloepr.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201764903', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614058715.png', 'tets3', 's', 'http://1iapp-b58152.appio.me/', '1', '2', '2021-02-23 10:38:35', '2021-02-23 10:38:35', 1, '1', 'com.vishalmaurya jjkh.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201958167', NULL, NULL, '222222222222222', NULL, NULL, NULL, NULL, NULL),
(39, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614058786.png', 'test2', '4', 'http://1iapp-27822b.appio.me/', '2', 'w', '2021-02-23 10:39:46', '2021-02-23 10:39:46', 1, '1', 'com.vishalmaurya jjkh.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201822529', NULL, NULL, '222222222222222', NULL, NULL, NULL, NULL, NULL),
(40, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614059112.png', 'test1', 's', 'http://1iapp-8c1a01.appio.me/', '1', '6', '2021-02-23 10:45:12', '2021-02-23 10:45:12', 1, '1', 'com.vishalmaurya jjkh.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201728838', NULL, NULL, '222222222222222', NULL, NULL, NULL, NULL, NULL),
(41, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614684387.png', 'test2', '4', 'http://1iapp-31b972.appio.me/', '2', '4', '2021-03-02 16:26:27', '2021-03-02 16:26:27', 1, '1', 'com.vishalmaurya jjkh.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '222222222222222', '2', 'ssssssssssssss', NULL, NULL, NULL),
(42, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614689265.png', 'application1', '11', 'http://1iapp-174083.appio.me/', '2', '2', '2021-03-02 17:47:45', '2021-03-02 17:47:45', 1, '1', 'com.vishalmaurya jjkh.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
(43, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614690260.png', 'application 2 new', '3', 'http://1iapp-401b44.appio.me/', '1', 'w', '2021-03-02 18:04:20', '2021-03-02 18:04:20', 1, '1', 'com.vishalmaurya jjkh.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614690939.png', 'apptest', '11', 'http://1iapp-b14dff.appio.me/', '1', '6', '2021-03-02 18:15:39', '2021-03-02 18:15:39', 1, '1', 'com.vishalmaurya jjkh.<edit Appname here>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '222222222222222', NULL, NULL, NULL, NULL, NULL),
(45, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614692051.png', 'test1', '1', 'http://1iapp-37fa66.appio.me/', '1', '3', '2021-03-02 18:34:11', '2021-03-02 18:34:11', 1, '1', 'com.vishalmauryajjkh.test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
(46, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614693475.png', 'appnew', '2', 'http://1iapp-30ae0f.appio.me/', '1', '2', '2021-03-02 18:57:55', '2021-03-02 18:57:55', 1, '1', 'com.vishalmauryajjkh.appnew', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '222222222222222', NULL, NULL, NULL, NULL, NULL),
(47, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614832083.png', 'test1', 'http://appio.me', 'http://1iapp-3e2454.appio.me/', 'vishal@g.com', 'http://appio.me', '2021-03-04 09:28:03', '2021-03-04 09:28:03', 1, '1', 'com.vishalmauryajjkh.test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '222222222222222', NULL, NULL, NULL, NULL, NULL),
(48, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614832146.png', 'test1', 'http://appio.me', 'http://1iapp-2ef542.appio.me/', 'vishal@g.com', 'http://appio.me', '2021-03-04 09:29:06', '2021-03-04 09:29:06', 1, '1', 'com.vishalmauryajjkh.test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '222222222222222', 'aaaaaaaaaaaaa', NULL, NULL, NULL, NULL),
(49, '#000000', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', 'Lena-image-dimension-512-512-pixels-8-bits-per-sample_1614832293.png', 'test1', 'http://appio.me', 'http://1iapp-5d88f2.appio.me/', 'vishal@g.com', 'http://appio.me', '2021-03-04 09:31:33', '2021-03-04 09:31:33', 1, '1', 'com.vishalmauryajjkh.test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '222222222222222', 'aaaaaaaaaaaaa', NULL, NULL, NULL, NULL),
(50, '#b12828', 'AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ', '512x512-png-images-1_1616148882.png', 'appvalley', 'rajesh-appvalley.appio.com', 'http://9iapp-2dc2cd.appio.me/', 'vishal@g.com', 'http://appio.me', '2021-03-19 14:14:42', '2021-03-19 14:14:42', 9, '1', 'com.1000i.raj3sh.appvalley', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dafsdf', 'ajdkf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formusers`
--

CREATE TABLE `formusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `appname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privatepolicy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versionname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versionid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startappid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formusers`
--

INSERT INTO `formusers` (`id`, `appname`, `icon_image`, `disclaimer`, `privatepolicy`, `versionname`, `versionid`, `startappid`, `created_at`, `updated_at`, `color`) VALUES
(1, 'heelo', '11_1603880499.JPG', 'hhhhh', 'mmmm', 'hello', '12', NULL, '2020-10-28 04:51:39', '2020-10-28 04:51:39', ''),
(2, 'hello', '11_1603881351.JPG', 'kmkmkk', ',,mm,.m.,', '12sd', '2222', NULL, '2020-10-28 05:05:51', '2020-10-28 05:05:51', '#2c2626'),
(3, 'hello', 'covid_1603950581.jpeg', 'lnsanx.lnxs/l', 'lkmaklmlka', 'mello', '123456', NULL, '2020-10-29 00:19:41', '2020-10-29 00:19:41', '#252222');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_28_052346_create_formusers_table', 2),
(5, '2020_10_28_103133_addcolor', 3),
(6, '2020_11_03_095628_createapp', 4),
(7, '2020_11_03_121841_user_id', 5),
(8, '2020_11_15_143326_playlist', 6),
(9, '2020_11_17_085808_user_id_playlist', 7),
(10, '2020_11_18_103153_create_playlistitems_table', 8),
(11, '2020_11_19_063440_playlist_id', 9),
(12, '2020_11_25_053652_application', 10),
(13, '2020_11_25_090029_version_to_playlistdb', 11),
(14, '2020_11_25_090406_version_to_playlistitems', 12),
(15, '2020_11_28_121109_version_no_to_createapp', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jesswinchetnani@gmail.com', '$2y$10$hRKgEeANcTVKvmqNO0qP.ebDDv1pt5s5nrnTDInRU/WmVEqQvv1U6', '2021-02-15 16:10:02'),
('vishalmaurya6195@gmail.com', '$2y$10$1rD.LNJdsqZX5UMltG/G.eewz.Qga1IkF22ZNDhErO53hROq5aqt6', '2021-03-01 18:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `playlistitems`
--

CREATE TABLE `playlistitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishedAt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoLength` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewCount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likeCount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dislikeCount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentCount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `playlistId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlistitems`
--

INSERT INTO `playlistitems` (`id`, `title`, `imgurl`, `publishedAt`, `position`, `videoId`, `videoLength`, `viewCount`, `likeCount`, `dislikeCount`, `commentCount`, `user_id`, `created_at`, `updated_at`, `playlistId`, `version`) VALUES
(1, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63170', '550', '16', '5', '1', '2021-01-09 16:23:45', '2021-01-09 16:23:45', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '1'),
(2, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '347784', '3213', '175', '320', '1', '2021-01-09 16:23:45', '2021-01-09 16:23:45', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '1'),
(3, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36700', '324', '24', '25', '1', '2021-01-09 16:23:46', '2021-01-09 16:23:46', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '1'),
(4, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80922', '737', '27', '13', '1', '2021-01-09 16:23:46', '2021-01-09 16:23:46', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '1'),
(5, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 30 & Ep 31 | RECAP', 'https://i.ytimg.com/vi/Qe9GMiP4bfs/hqdefault.jpg', '2020-12-30T10:45:03Z', '0', 'Qe9GMiP4bfs', 'PT8M31S', '95588', '948', '53', '35', '1', '2021-01-09 16:23:56', '2021-01-09 16:23:56', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '1'),
(6, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 17 & Ep 18 | RECAP', 'https://i.ytimg.com/vi/XFh0qoUlrQg/hqdefault.jpg', '2020-12-11T10:54:43Z', '1', 'XFh0qoUlrQg', 'PT8M28S', '59067', '532', '35', '20', '1', '2021-01-09 16:23:56', '2021-01-09 16:23:56', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '1'),
(7, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 13 & Ep 14 | RECAP', 'https://i.ytimg.com/vi/8NN_PHiwcZk/hqdefault.jpg', '2020-12-05T11:57:33Z', '2', '8NN_PHiwcZk', 'PT8M43S', '225932', '2037', '147', '42', '1', '2021-01-09 16:24:03', '2021-01-09 16:24:03', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '1'),
(8, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 14 & Ep 15 | RECAP', 'https://i.ytimg.com/vi/kFNZ9uy8Tk0/hqdefault.jpg', '2020-12-05T10:42:34Z', '3', 'kFNZ9uy8Tk0', 'PT8M38S', '87044', '834', '34', '24', '1', '2021-01-09 16:24:04', '2021-01-09 16:24:04', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '1'),
(9, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 11 & Ep 12 | RECAP', 'https://i.ytimg.com/vi/EuBVXE9IYLg/hqdefault.jpg', '2020-12-03T10:30:01Z', '4', 'EuBVXE9IYLg', 'PT8M46S', '48696', '549', '35', '30', '1', '2021-01-09 16:24:04', '2021-01-09 16:24:04', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '1'),
(10, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 2 & Ep 3 | RECAP', 'https://i.ytimg.com/vi/zfg-8hwj7D8/hqdefault.jpg', '2020-11-20T10:30:04Z', '5', 'zfg-8hwj7D8', 'PT8M30S', '215844', '2519', '175', '122', '1', '2021-01-09 16:24:04', '2021-01-09 16:24:04', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '1'),
(11, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 1 & Ep 2 | RECAP', 'https://i.ytimg.com/vi/VlgygnKk8xw/hqdefault.jpg', '2020-11-19T10:30:02Z', '6', 'VlgygnKk8xw', 'PT8M45S', '466405', '5295', '428', '232', '1', '2021-01-09 16:24:04', '2021-01-09 16:24:04', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '1'),
(12, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63170', '550', '16', '5', '1', '2021-01-09 17:12:57', '2021-01-09 17:12:57', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '2'),
(13, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '347789', '3213', '175', '320', '1', '2021-01-09 17:12:57', '2021-01-09 17:12:57', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '2'),
(14, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36700', '324', '24', '25', '1', '2021-01-09 17:12:57', '2021-01-09 17:12:57', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '2'),
(15, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80922', '737', '27', '13', '1', '2021-01-09 17:12:57', '2021-01-09 17:12:57', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '2'),
(16, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 30 & Ep 31 | RECAP', 'https://i.ytimg.com/vi/Qe9GMiP4bfs/hqdefault.jpg', '2020-12-30T10:45:03Z', '0', 'Qe9GMiP4bfs', 'PT8M31S', '95735', '949', '53', '35', '1', '2021-01-09 17:13:07', '2021-01-09 17:13:07', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '2'),
(17, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 17 & Ep 18 | RECAP', 'https://i.ytimg.com/vi/XFh0qoUlrQg/hqdefault.jpg', '2020-12-11T10:54:43Z', '1', 'XFh0qoUlrQg', 'PT8M28S', '59093', '532', '35', '20', '1', '2021-01-09 17:13:07', '2021-01-09 17:13:07', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '2'),
(18, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 13 & Ep 14 | RECAP', 'https://i.ytimg.com/vi/8NN_PHiwcZk/hqdefault.jpg', '2020-12-05T11:57:33Z', '2', '8NN_PHiwcZk', 'PT8M43S', '226014', '2037', '147', '42', '1', '2021-01-09 17:13:07', '2021-01-09 17:13:07', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '2'),
(19, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 14 & Ep 15 | RECAP', 'https://i.ytimg.com/vi/kFNZ9uy8Tk0/hqdefault.jpg', '2020-12-05T10:42:34Z', '3', 'kFNZ9uy8Tk0', 'PT8M38S', '87118', '835', '34', '24', '1', '2021-01-09 17:13:07', '2021-01-09 17:13:07', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '2'),
(20, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 11 & Ep 12 | RECAP', 'https://i.ytimg.com/vi/EuBVXE9IYLg/hqdefault.jpg', '2020-12-03T10:30:01Z', '4', 'EuBVXE9IYLg', 'PT8M46S', '48698', '549', '35', '30', '1', '2021-01-09 17:13:07', '2021-01-09 17:13:07', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '2'),
(21, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 2 & Ep 3 | RECAP', 'https://i.ytimg.com/vi/zfg-8hwj7D8/hqdefault.jpg', '2020-11-20T10:30:04Z', '5', 'zfg-8hwj7D8', 'PT8M30S', '215862', '2520', '175', '122', '1', '2021-01-09 17:13:07', '2021-01-09 17:13:07', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '2'),
(22, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 1 & Ep 2 | RECAP', 'https://i.ytimg.com/vi/VlgygnKk8xw/hqdefault.jpg', '2020-11-19T10:30:02Z', '6', 'VlgygnKk8xw', 'PT8M45S', '466470', '5299', '428', '232', '1', '2021-01-09 17:13:08', '2021-01-09 17:13:08', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '2'),
(23, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63377', '558', '16', '5', '1', '2021-01-17 15:51:24', '2021-01-17 15:51:24', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '3'),
(24, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '348507', '3227', '175', '322', '1', '2021-01-17 15:51:24', '2021-01-17 15:51:24', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '3'),
(25, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36783', '322', '24', '25', '1', '2021-01-17 15:51:25', '2021-01-17 15:51:25', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '3'),
(26, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80931', '740', '27', '13', '1', '2021-01-17 15:51:26', '2021-01-17 15:51:26', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '3'),
(27, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63390', '559', '16', '5', '1', '2021-01-18 10:15:15', '2021-01-18 10:15:15', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '4'),
(28, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '348589', '3227', '175', '322', '1', '2021-01-18 10:15:16', '2021-01-18 10:15:16', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '4'),
(29, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36789', '322', '24', '25', '1', '2021-01-18 10:15:17', '2021-01-18 10:15:17', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '4'),
(30, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80931', '740', '27', '13', '1', '2021-01-18 10:15:18', '2021-01-18 10:15:18', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '4'),
(31, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63392', '559', '16', '5', '1', '2021-01-18 10:46:24', '2021-01-18 10:46:24', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '5'),
(32, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '348590', '3227', '175', '322', '1', '2021-01-18 10:46:24', '2021-01-18 10:46:24', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '5'),
(33, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36790', '322', '24', '25', '1', '2021-01-18 10:46:25', '2021-01-18 10:46:25', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '5'),
(34, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80931', '740', '27', '13', '1', '2021-01-18 10:46:26', '2021-01-18 10:46:26', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '5'),
(35, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63445', '560', '16', '5', '1', '2021-01-20 15:31:42', '2021-01-20 15:31:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '6'),
(36, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '348758', '3228', '175', '322', '1', '2021-01-20 15:31:42', '2021-01-20 15:31:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '6'),
(37, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36818', '321', '24', '25', '1', '2021-01-20 15:31:42', '2021-01-20 15:31:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '6'),
(38, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80936', '740', '27', '13', '1', '2021-01-20 15:31:43', '2021-01-20 15:31:43', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '6'),
(39, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63605', '559', '16', '5', '1', '2021-01-27 10:11:12', '2021-01-27 10:11:12', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '7'),
(40, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '349276', '3231', '175', '322', '1', '2021-01-27 10:11:12', '2021-01-27 10:11:12', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '7'),
(41, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36873', '323', '24', '25', '1', '2021-01-27 10:11:13', '2021-01-27 10:11:13', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '7'),
(42, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80944', '742', '27', '13', '1', '2021-01-27 10:11:13', '2021-01-27 10:11:13', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '7'),
(43, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63606', '559', '16', '5', '1', '2021-01-27 10:35:42', '2021-01-27 10:35:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '8'),
(44, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '349277', '3231', '175', '322', '1', '2021-01-27 10:35:42', '2021-01-27 10:35:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '8'),
(45, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36873', '323', '24', '25', '1', '2021-01-27 10:35:42', '2021-01-27 10:35:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '8'),
(46, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80944', '742', '27', '13', '1', '2021-01-27 10:35:42', '2021-01-27 10:35:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '8'),
(47, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63608', '559', '16', '5', '2', '2021-01-27 11:30:22', '2021-01-27 11:30:22', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '9'),
(48, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '349280', '3231', '175', '322', '2', '2021-01-27 11:30:22', '2021-01-27 11:30:22', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '9'),
(49, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36873', '323', '24', '25', '2', '2021-01-27 11:30:23', '2021-01-27 11:30:23', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '9'),
(50, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80944', '742', '27', '13', '2', '2021-01-27 11:30:23', '2021-01-27 11:30:23', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '9'),
(51, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63622', '558', '16', '5', '1', '2021-01-27 17:59:06', '2021-01-27 17:59:06', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '10'),
(52, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '349301', '3231', '175', '322', '1', '2021-01-27 17:59:06', '2021-01-27 17:59:06', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '10'),
(53, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36875', '323', '24', '25', '1', '2021-01-27 17:59:07', '2021-01-27 17:59:07', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '10'),
(54, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80945', '742', '27', '13', '1', '2021-01-27 17:59:07', '2021-01-27 17:59:07', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '10'),
(55, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63801', '565', '16', '8', '1', '2021-02-05 19:06:57', '2021-02-05 19:06:57', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '11'),
(56, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350005', '3236', '176', '322', '1', '2021-02-05 19:06:57', '2021-02-05 19:06:57', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '11'),
(57, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36942', '323', '24', '25', '1', '2021-02-05 19:06:58', '2021-02-05 19:06:58', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '11'),
(58, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80949', '742', '27', '13', '1', '2021-02-05 19:06:58', '2021-02-05 19:06:58', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '11'),
(59, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63802', '565', '16', '8', '1', '2021-02-05 19:45:10', '2021-02-05 19:45:10', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '12'),
(60, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350005', '3236', '177', '322', '1', '2021-02-05 19:45:10', '2021-02-05 19:45:10', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '12'),
(61, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36942', '323', '24', '25', '1', '2021-02-05 19:45:12', '2021-02-05 19:45:12', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '12'),
(62, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80949', '742', '27', '13', '1', '2021-02-05 19:45:12', '2021-02-05 19:45:12', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '12'),
(63, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63808', '564', '16', '8', '1', '2021-02-06 17:50:09', '2021-02-06 17:50:09', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '13'),
(64, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350056', '3236', '177', '322', '1', '2021-02-06 17:50:10', '2021-02-06 17:50:10', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '13'),
(65, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36948', '323', '24', '25', '1', '2021-02-06 17:50:10', '2021-02-06 17:50:10', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '13'),
(66, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80949', '742', '27', '13', '1', '2021-02-06 17:50:11', '2021-02-06 17:50:11', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '13'),
(67, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63810', '564', '16', '8', '1', '2021-02-06 22:26:02', '2021-02-06 22:26:02', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '14'),
(68, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350070', '3236', '177', '322', '1', '2021-02-06 22:26:02', '2021-02-06 22:26:02', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '14'),
(69, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36948', '323', '24', '25', '1', '2021-02-06 22:26:03', '2021-02-06 22:26:03', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '14'),
(70, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80949', '742', '27', '13', '1', '2021-02-06 22:26:03', '2021-02-06 22:26:03', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '14'),
(71, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63842', '566', '16', '8', '4', '2021-02-08 22:42:23', '2021-02-08 22:42:23', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '17'),
(72, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350183', '3236', '177', '322', '4', '2021-02-08 22:42:24', '2021-02-08 22:42:24', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '17'),
(73, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36957', '323', '24', '25', '4', '2021-02-08 22:42:25', '2021-02-08 22:42:25', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '17'),
(74, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80949', '742', '27', '13', '4', '2021-02-08 22:42:26', '2021-02-08 22:42:26', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '17'),
(75, 'RVIVR - Cut The Cord (Live at The Grist Mill)', 'https://i.ytimg.com/vi/pYksOCzyVNw/hqdefault.jpg', '2010-06-02T22:15:58Z', '0', 'pYksOCzyVNw', 'PT3M9S', '52273', '234', '8', '29', '4', '2021-02-08 22:44:55', '2021-02-08 22:44:55', 'FL3r_YmePLdLXgisaYYAiSBw', '17'),
(76, 'Dropkick Murphys - The Dirty Glass - Live on Lansdowne', 'https://i.ytimg.com/vi/HYsGolGGwtU/hqdefault.jpg', '2010-04-13T19:50:22Z', '1', 'HYsGolGGwtU', 'PT3M49S', '5307559', '13615', '424', '524', '4', '2021-02-08 22:44:55', '2021-02-08 22:44:55', 'FL3r_YmePLdLXgisaYYAiSBw', '17'),
(77, 'Chuck Ragan - Nothing Left To Prove - CARDINAL SESSIONS', 'https://i.ytimg.com/vi/Nj_dBdhMNx4/hqdefault.jpg', '2011-10-20T12:12:41Z', '3', 'Nj_dBdhMNx4', 'PT3M34S', '896415', '3212', '98', '89', '4', '2021-02-08 22:44:56', '2021-02-08 22:44:56', 'FL3r_YmePLdLXgisaYYAiSBw', '17'),
(78, 'Red City Radio - \"No One Believes in Moons & Goochers\" (Bathroom Tapes - 2010)', 'https://i.ytimg.com/vi/ajJ_Xz87xE4/hqdefault.jpg', '2011-01-25T20:27:07Z', '4', 'ajJ_Xz87xE4', 'PT3M30S', '43746', '233', '14', '14', '4', '2021-02-08 22:44:57', '2021-02-08 22:44:57', 'FL3r_YmePLdLXgisaYYAiSBw', '17'),
(79, 'Chuck Ragan & Brian Fallon - Meet You In The Middle @ Revival Tour Portsmouth', 'https://i.ytimg.com/vi/5MIYNXDEpoM/hqdefault.jpg', '2011-10-19T17:00:13Z', '5', '5MIYNXDEpoM', 'PT3M34S', '45434', '340', '5', '13', '4', '2021-02-08 22:44:57', '2021-02-08 22:44:57', 'FL3r_YmePLdLXgisaYYAiSBw', '17'),
(80, 'The Horrible Crowes - Behold The Hurricane (Live in LA)', 'https://i.ytimg.com/vi/3ex64GRv_ls/hqdefault.jpg', '2011-10-14T23:29:55Z', '6', '3ex64GRv_ls', 'PT4M4S', '14066', '118', '2', '29', '4', '2021-02-08 22:44:58', '2021-02-08 22:44:58', 'FL3r_YmePLdLXgisaYYAiSBw', '17'),
(81, 'Chuck Ragan \'Open The Roads\' LA Acoustic', 'https://i.ytimg.com/vi/crT5X-W_Kno/hqdefault.jpg', '2011-02-10T06:23:06Z', '7', 'crT5X-W_Kno', 'PT3M43S', '55072', '193', '4', '15', '4', '2021-02-08 22:44:59', '2021-02-08 22:44:59', 'FL3r_YmePLdLXgisaYYAiSBw', '17'),
(82, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63876', '567', '16', '8', '1', '2021-02-10 10:32:54', '2021-02-10 10:32:54', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '18'),
(83, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350297', '3235', '177', '322', '1', '2021-02-10 10:32:55', '2021-02-10 10:32:55', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '18'),
(84, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36966', '323', '24', '25', '1', '2021-02-10 10:32:56', '2021-02-10 10:32:56', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '18'),
(85, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80950', '743', '27', '13', '1', '2021-02-10 10:32:57', '2021-02-10 10:32:57', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '18'),
(86, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63876', '567', '16', '8', '1', '2021-02-10 11:05:39', '2021-02-10 11:05:39', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '19'),
(87, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350299', '3235', '177', '322', '1', '2021-02-10 11:05:40', '2021-02-10 11:05:40', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '19'),
(88, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36966', '323', '24', '25', '1', '2021-02-10 11:05:41', '2021-02-10 11:05:41', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '19'),
(89, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80950', '743', '27', '13', '1', '2021-02-10 11:05:41', '2021-02-10 11:05:41', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '19'),
(90, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '63877', '567', '16', '8', '1', '2021-02-10 15:53:16', '2021-02-10 15:53:16', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '20'),
(91, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350316', '3234', '177', '322', '1', '2021-02-10 15:53:17', '2021-02-10 15:53:17', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '20'),
(92, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '36967', '323', '24', '25', '1', '2021-02-10 15:53:18', '2021-02-10 15:53:18', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '20'),
(93, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80950', '743', '27', '13', '1', '2021-02-10 15:53:18', '2021-02-10 15:53:18', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '20'),
(94, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64023', '581', '16', '8', '7', '2021-02-16 22:04:20', '2021-02-16 22:04:20', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '29'),
(95, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350717', '3237', '177', '322', '7', '2021-02-16 22:04:20', '2021-02-16 22:04:20', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '29'),
(96, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37021', '323', '24', '25', '7', '2021-02-16 22:04:21', '2021-02-16 22:04:21', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '29'),
(97, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '7', '2021-02-16 22:04:22', '2021-02-16 22:04:22', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '29'),
(98, 'FEATURES & INSTALLATION OF PYTHON 3.7.0 - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/fEsHK2OzTd4/hqdefault.jpg', '2018-07-19T02:33:48Z', '0', 'fEsHK2OzTd4', 'PT18M44S', '247094', '4531', '73', '149', '7', '2021-02-16 22:13:23', '2021-02-16 22:13:23', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(99, 'LITERALS ( NUMBERS & STRINGS ) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/n7FOE3etRvY/hqdefault.jpg', '2018-07-22T17:39:44Z', '1', 'n7FOE3etRvY', 'PT31M52S', '107056', '2407', '45', '144', '7', '2021-02-16 22:13:24', '2021-02-16 22:13:24', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(100, 'DATATYPES , VARIABLES & IDENTIFIERS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/1nxGRg01wao/hqdefault.jpg', '2018-07-23T18:00:18Z', '2', '1nxGRg01wao', 'PT23M41S', '80769', '2005', '48', '90', '7', '2021-02-16 22:13:24', '2021-02-16 22:13:24', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(101, 'INPUT & OUTPUT STATEMENTS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/JBc8LLW5KLQ/hqdefault.jpg', '2018-07-23T18:44:41Z', '3', 'JBc8LLW5KLQ', 'PT17M6S', '52935', '1233', '26', '74', '7', '2021-02-16 22:13:25', '2021-02-16 22:13:25', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(102, 'KEYWORDS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/A07ngQu31OY/hqdefault.jpg', '2018-07-28T00:38:37Z', '4', 'A07ngQu31OY', 'PT15M31S', '49310', '925', '30', '44', '7', '2021-02-16 22:13:25', '2021-02-16 22:13:25', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(103, 'OPERATORS PART 1 (ARITHMETIC , RELATIONAL , UNARY , ASSIGNMENT) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/2H5a4YMKrOg/hqdefault.jpg', '2018-07-28T01:13:30Z', '5', '2H5a4YMKrOg', 'PT15M30S', '35922', '661', '15', '39', '7', '2021-02-16 22:13:25', '2021-02-16 22:13:25', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(104, 'OPERATORS PART 2 (BITWISE , LOGICAL , MEMBERSHIP , IDENTITY) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/thekYHN2uI8/hqdefault.jpg', '2018-07-28T02:15:51Z', '6', 'thekYHN2uI8', 'PT24M45S', '30690', '668', '21', '50', '7', '2021-02-16 22:13:26', '2021-02-16 22:13:26', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(105, 'OPERATOR PRECEDENCE & ORDER OF EVALUATION - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/LZrst9KPPbE/hqdefault.jpg', '2018-07-28T02:45:00Z', '7', 'LZrst9KPPbE', 'PT12M14S', '33837', '741', '17', '25', '7', '2021-02-16 22:13:26', '2021-02-16 22:13:26', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(106, 'DECISION CONTROL STATEMENTS - PART 1 (SIMPLE IF, IF ELSE) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/CcfCNrKrto8/hqdefault.jpg', '2018-08-03T18:51:31Z', '8', 'CcfCNrKrto8', 'PT22M22S', '43102', '802', '18', '44', '7', '2021-02-16 22:13:27', '2021-02-16 22:13:27', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(107, 'DECISION CONTROL STATEMENTS - PART 2 (NESTED IF, IF - ELIF - ELSE) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/oNfvBZpL6nI/hqdefault.jpg', '2018-08-04T00:57:09Z', '9', 'oNfvBZpL6nI', 'PT21M5S', '26394', '577', '6', '55', '7', '2021-02-16 22:13:28', '2021-02-16 22:13:28', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(108, 'ITERATIVE CONTROL STATEMENTS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/fD_NVy85Xxw/hqdefault.jpg', '2018-08-06T18:30:51Z', '10', 'fD_NVy85Xxw', 'PT21M42S', '22725', '583', '14', '35', '7', '2021-02-16 22:13:28', '2021-02-16 22:13:28', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(109, 'BREAK AND CONTINUE - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/KZslhV_RB2I/hqdefault.jpg', '2018-08-13T22:00:02Z', '11', 'KZslhV_RB2I', 'PT19M25S', '28347', '690', '9', '51', '7', '2021-02-16 22:13:28', '2021-02-16 22:13:28', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(110, 'INTRODUCTION TO LISTS AND CREATING LISTS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/NMf0UXMapow/hqdefault.jpg', '2018-08-13T23:34:07Z', '12', 'NMf0UXMapow', 'PT12M6S', '31791', '676', '15', '43', '7', '2021-02-16 22:13:29', '2021-02-16 22:13:29', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(111, 'ACCESSING & UPDATING ELEMENTS OF A LISTS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/dflEot-vTX4/hqdefault.jpg', '2018-08-19T10:31:16Z', '13', 'dflEot-vTX4', 'PT17M1S', '20691', '523', '8', '25', '7', '2021-02-16 22:13:32', '2021-02-16 22:13:32', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(112, 'LIST METHODS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/8-RDVWGktuI/hqdefault.jpg', '2018-08-27T18:52:32Z', '14', '8-RDVWGktuI', 'PT22M45S', '27535', '616', '9', '39', '7', '2021-02-16 22:13:32', '2021-02-16 22:13:32', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(113, 'IMPLEMENTATION OF LISTS ( CREATE,ACCESS,UPDATE,DELETE,OPERATIONS,SLICING) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/GKY7wblHJYY/hqdefault.jpg', '2018-09-07T02:12:01Z', '15', 'GKY7wblHJYY', 'PT18M58S', '13430', '288', '1', '14', '7', '2021-02-16 22:13:33', '2021-02-16 22:13:33', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(114, 'LIST COMPREHENSION & LOOPING - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/RcKAEKkiVe8/hqdefault.jpg', '2018-09-10T18:55:37Z', '16', 'RcKAEKkiVe8', 'PT17M51S', '23118', '494', '15', '20', '7', '2021-02-16 22:13:33', '2021-02-16 22:13:33', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(115, 'PRE-DEFINED MATH FUNCTIONS & CONSTANTS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/nhek4az_Sqg/hqdefault.jpg', '2018-08-28T15:28:07Z', '17', 'nhek4az_Sqg', 'PT10M55S', '14159', '383', '2', '13', '7', '2021-02-16 22:13:33', '2021-02-16 22:13:33', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(116, 'GENERATING RANDOM NUMBERS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/8UCIvrs9LZw/hqdefault.jpg', '2018-09-10T18:18:44Z', '18', '8UCIvrs9LZw', 'PT17M55S', '18761', '445', '7', '28', '7', '2021-02-16 22:13:34', '2021-02-16 22:13:34', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(117, 'STRINGS INITIALIZATION,CONCATENATION & REPETITION    PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/cD7H71dN5ho/hqdefault.jpg', '2018-09-10T20:29:25Z', '19', 'cD7H71dN5ho', 'PT23M19S', '19406', '404', '10', '20', '7', '2021-02-16 22:13:34', '2021-02-16 22:13:34', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(118, 'BUILT-IN STRING FUNCTIONS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/9a3CxJyTq00/hqdefault.jpg', '2018-09-16T16:32:38Z', '20', '9a3CxJyTq00', 'PT37M53S', '34590', '669', '30', '40', '7', '2021-02-16 22:13:35', '2021-02-16 22:13:35', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(119, 'PYTHON TUPLES (Creating , Updating , Deleting & Accessing Elements) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/bdS4dHIJGBc/hqdefault.jpg', '2018-09-23T16:38:51Z', '21', 'bdS4dHIJGBc', 'PT18M44S', '29390', '869', '10', '46', '7', '2021-02-16 22:13:35', '2021-02-16 22:13:35', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(120, 'BASIC OPERATIONS ON TUPLES - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/TItKabcTTQ4/hqdefault.jpg', '2018-09-23T16:55:08Z', '22', 'TItKabcTTQ4', 'PT12M25S', '16176', '481', '5', '39', '7', '2021-02-16 22:13:35', '2021-02-16 22:13:35', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(121, 'INTRODUCTION TO FUNCTIONS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/XjfvaFnJ4zk/hqdefault.jpg', '2018-09-28T18:37:02Z', '23', 'XjfvaFnJ4zk', 'PT14M45S', '61254', '1746', '44', '74', '7', '2021-02-16 22:13:36', '2021-02-16 22:13:36', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(122, 'GLOBAL & LOCAL VARIABLE - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/gRTVLZuidG0/hqdefault.jpg', '2018-10-06T16:44:24Z', '24', 'gRTVLZuidG0', 'PT13M19S', '29214', '928', '15', '54', '7', '2021-02-16 22:13:36', '2021-02-16 22:13:36', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(123, 'TYPES OF ARGUMENTS IN FUNCTIONS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/lTQfz-u8f3M/hqdefault.jpg', '2018-10-11T16:25:25Z', '25', 'lTQfz-u8f3M', 'PT20M56S', '34839', '870', '21', '57', '7', '2021-02-16 22:13:37', '2021-02-16 22:13:37', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(124, 'IMPLEMENTATION OF ARGUMENT TYPES IN FUNCTIONS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/j5UxRSS10q8/hqdefault.jpg', '2018-10-12T06:30:01Z', '26', 'j5UxRSS10q8', 'PT13M24S', '8708', '176', '4', '7', '7', '2021-02-16 22:13:38', '2021-02-16 22:13:38', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(125, 'RECURSION - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/F3yi5jmU-s4/hqdefault.jpg', '2018-10-12T14:30:00Z', '27', 'F3yi5jmU-s4', 'PT10M', '40151', '1437', '27', '121', '7', '2021-02-16 22:13:39', '2021-02-16 22:13:39', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(126, 'FACTORIAL USING RECURSION - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/V0vQSuFN6ck/hqdefault.jpg', '2018-10-13T06:30:00Z', '28', 'V0vQSuFN6ck', 'PT3M28S', '9557', '151', '6', '7', '7', '2021-02-16 22:13:39', '2021-02-16 22:13:39', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(127, 'ANONYMOUS FUNCTIONS (LAMBDA) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/CYbMaudWGOM/hqdefault.jpg', '2018-10-13T16:11:18Z', '29', 'CYbMaudWGOM', 'PT7M3S', '18427', '524', '10', '23', '7', '2021-02-16 22:13:40', '2021-02-16 22:13:40', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(128, 'IMPLEMENTATION OF ANONYMOUS FUNCTION (LAMBDA) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/U5bRM9sdFfU/hqdefault.jpg', '2018-10-14T06:30:00Z', '30', 'U5bRM9sdFfU', 'PT3M59S', '6309', '130', '0', '3', '7', '2021-02-16 22:13:40', '2021-02-16 22:13:40', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(129, 'SETS INTRODUCTION - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/NfI-RwYR4bc/hqdefault.jpg', '2018-10-15T03:30:01Z', '31', 'NfI-RwYR4bc', 'PT15M48S', '14809', '365', '6', '39', '7', '2021-02-16 22:13:41', '2021-02-16 22:13:41', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(130, 'SET OPERATIONS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/Co2P0z-W8kY/hqdefault.jpg', '2018-10-16T03:30:01Z', '32', 'Co2P0z-W8kY', 'PT16M9S', '9624', '251', '6', '15', '7', '2021-02-16 22:13:42', '2021-02-16 22:13:42', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(131, 'IMPLEMENTATION OF SETS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/wf6-Kcqd3qU/hqdefault.jpg', '2018-10-17T03:30:00Z', '33', 'wf6-Kcqd3qU', 'PT13M33S', '6924', '139', '1', '8', '7', '2021-02-16 22:13:43', '2021-02-16 22:13:43', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(132, 'FILES (OPEN,CLOSE,ACCESS MODES) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/vuyb7CxZgbU/hqdefault.jpg', '2018-10-18T03:30:01Z', '34', 'vuyb7CxZgbU', 'PT22M59S', '25633', '724', '12', '45', '7', '2021-02-16 22:13:43', '2021-02-16 22:13:43', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(133, 'READING & WRITING DATA INTO FILES - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/FqcjKewJTQ0/hqdefault.jpg', '2018-10-19T03:30:01Z', '35', 'FqcjKewJTQ0', 'PT18M50S', '27238', '657', '15', '47', '7', '2021-02-16 22:13:43', '2021-02-16 22:13:43', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(134, 'IMPLEMENTATION OF FILES - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/94ZqI4oQNc0/hqdefault.jpg', '2018-10-20T03:30:00Z', '36', '94ZqI4oQNc0', 'PT11M38S', '9023', '212', '2', '15', '7', '2021-02-16 22:13:44', '2021-02-16 22:13:44', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(135, 'DICTIONARIES (CREATION AND ACCESSING) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/4Q0pW8XBOkc/hqdefault.jpg', '2019-08-24T05:40:26Z', '37', '4Q0pW8XBOkc', 'PT20M54S', '20440', '488', '9', '26', '7', '2021-02-16 22:13:44', '2021-02-16 22:13:44', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(136, 'DICTIONARIES(ADDITION,MODIFY&DELETE) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/FW7esDscxSA/hqdefault.jpg', '2019-08-28T06:13:11Z', '38', 'FW7esDscxSA', 'PT22M44S', '10667', '236', '3', '15', '7', '2021-02-16 22:13:45', '2021-02-16 22:13:45', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(137, 'METHODS IN DICTIONARY | DICTIONARY METHODS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/oLeNHuORpNY/hqdefault.jpg', '2019-09-08T18:25:59Z', '39', 'oLeNHuORpNY', 'PT37M30S', '14780', '308', '11', '28', '7', '2021-02-16 22:13:45', '2021-02-16 22:13:45', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(138, 'COMMAND LINE ARGUMENTS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/PZN7vVxeh9M/hqdefault.jpg', '2019-09-10T17:35:23Z', '40', 'PZN7vVxeh9M', 'PT20M15S', '16440', '412', '8', '30', '7', '2021-02-16 22:13:46', '2021-02-16 22:13:46', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(139, 'OOPS CONCEPTS | OBJECT ORIENTED PROGRAMMING CONCEPTS IN PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/MeGiAaU4lXw/hqdefault.jpg', '2019-09-18T19:15:05Z', '41', 'MeGiAaU4lXw', 'PT22M24S', '32773', '831', '22', '32', '7', '2021-02-16 22:13:46', '2021-02-16 22:13:46', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(140, 'CLASSES & OBJECTS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/hLC6GL_YBGM/hqdefault.jpg', '2019-09-20T00:10:38Z', '42', 'hLC6GL_YBGM', 'PT25M23S', '36922', '964', '27', '59', '7', '2021-02-16 22:13:46', '2021-02-16 22:13:46', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(141, 'INHERITANCE(SINGLE,MULTI-LEVEL) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/jlvKcnGZdhI/hqdefault.jpg', '2019-10-11T15:13:02Z', '43', 'jlvKcnGZdhI', 'PT23M25S', '16012', '369', '10', '27', '7', '2021-02-16 22:13:47', '2021-02-16 22:13:47', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(142, 'INHERITANCE(HIERACHICAL,MULTIPLE) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/mhftBEKnw64/hqdefault.jpg', '2019-10-12T09:30:02Z', '44', 'mhftBEKnw64', 'PT21M', '11542', '267', '6', '57', '7', '2021-02-16 22:13:48', '2021-02-16 22:13:48', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(143, 'ENCAPSULATION WITH EXAMPLE - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/Xhi_rMVPD5g/hqdefault.jpg', '2020-05-20T11:06:19Z', '45', 'Xhi_rMVPD5g', 'PT13M42S', '7921', '210', '3', '17', '7', '2021-02-16 22:13:48', '2021-02-16 22:13:48', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(144, 'ABSTRACT CLASS AND ABSTRACT METHODS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/4Vkt4vUrr28/hqdefault.jpg', '2020-05-21T08:27:39Z', '46', '4Vkt4vUrr28', 'PT25M4S', '7696', '191', '4', '23', '7', '2021-02-16 22:13:50', '2021-02-16 22:13:50', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(145, 'OVERLOADING (POLYMORPHISM) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/GxjK3uAIMjs/hqdefault.jpg', '2020-05-22T19:11:03Z', '47', 'GxjK3uAIMjs', 'PT16M30S', '7449', '174', '5', '10', '7', '2021-02-16 22:13:50', '2021-02-16 22:13:50', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(146, 'METHOD OVERRIDING (POLYMORPHISM) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/78ELRaVtpRc/hqdefault.jpg', '2020-05-23T14:00:10Z', '48', '78ELRaVtpRc', 'PT13M16S', '5907', '195', '3', '10', '7', '2021-02-16 22:13:50', '2021-02-16 22:13:50', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(147, 'FUNCTIONS IN REGULAR EXPRESSION - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/cdgV4iCDWmw/hqdefault.jpg', '2020-06-03T11:24:17Z', '49', 'cdgV4iCDWmw', 'PT31M16S', '6418', '169', '3', '20', '7', '2021-02-16 22:13:51', '2021-02-16 22:13:51', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(148, 'META CHARACTERS AND SPECIAL SEQUENCES IN REGULAR EXPRESSION - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/LnzFnZfHLS4/hqdefault.jpg', '2020-06-05T09:09:14Z', '50', 'LnzFnZfHLS4', 'PT35M2S', '4593', '130', '1', '11', '7', '2021-02-16 22:13:52', '2021-02-16 22:13:52', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(149, 'DATE AND TIME MODULE  - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/tlmOm35lsps/hqdefault.jpg', '2020-06-08T10:17:53Z', '51', 'tlmOm35lsps', 'PT27M20S', '5679', '135', '5', '18', '7', '2021-02-16 22:13:53', '2021-02-16 22:13:53', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(150, 'TIMEDELTA( ) FUNCTION | timedelata( )  - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/msDgb2qU-EI/hqdefault.jpg', '2020-06-15T07:30:12Z', '52', 'msDgb2qU-EI', 'PT17M29S', '2705', '81', '1', '7', '7', '2021-02-16 22:13:53', '2021-02-16 22:13:53', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(151, 'PYTHON LIBRARIES - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/Dpnf8goamGY/hqdefault.jpg', '2020-06-22T17:31:19Z', '53', 'Dpnf8goamGY', 'PT32M46S', '5972', '197', '4', '11', '7', '2021-02-16 22:13:53', '2021-02-16 22:13:53', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(152, 'HOW TO INSTALL NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/8jBY5ior4W4/hqdefault.jpg', '2020-06-27T02:03:46Z', '54', '8jBY5ior4W4', 'PT15M17S', '3601', '86', '1', '12', '7', '2021-02-16 22:13:54', '2021-02-16 22:13:54', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(153, 'HOW TO INSTALL ANACONDA PYTHON DISTRIBUTION ON WINDOWS 10 - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/tAdeqn0KUdw/hqdefault.jpg', '2020-06-29T17:59:05Z', '55', 'tAdeqn0KUdw', 'PT14M4S', '8935', '164', '8', '14', '7', '2021-02-16 22:13:54', '2021-02-16 22:13:54', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(154, 'BASICS OF NUMPY (Creation of ndarray) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/8vVNq6JzGl8/hqdefault.jpg', '2020-07-04T04:55:25Z', '56', '8vVNq6JzGl8', 'PT24M35S', '5653', '150', '2', '15', '7', '2021-02-16 22:13:55', '2021-02-16 22:13:55', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(155, 'ASARRAY( ) , FROMBUFFER( ) , FROMITER( ) IN NUMPY (ARRAYS WITH EXISTING DATA) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/91OTvnjRLvs/hqdefault.jpg', '2020-07-20T19:24:52Z', '57', '91OTvnjRLvs', 'PT30M12S', '2995', '91', '0', '19', '7', '2021-02-16 22:13:55', '2021-02-16 22:13:55', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(156, 'ARANGE( ), LINSPACE( ), LOGSPACE( ) IN NUMPY (ARRAYS WITH NUMERICAL RANGES) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/ixDSXkuiuR4/hqdefault.jpg', '2020-07-26T16:58:51Z', '58', 'ixDSXkuiuR4', 'PT31M19S', '3370', '100', '0', '15', '7', '2021-02-16 22:13:55', '2021-02-16 22:13:55', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(157, 'INITIALIZING ARRAYS IN NUMPY ( ZEROS( ) ,ONES( ) ,FULL( ) ,EYE( ) FUNCTIONS ) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/qwuCsTYIZKM/hqdefault.jpg', '2020-08-04T07:12:37Z', '59', 'qwuCsTYIZKM', 'PT28M19S', '2084', '74', '0', '13', '7', '2021-02-16 22:13:56', '2021-02-16 22:13:56', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(158, 'ACCESSING ELEMENTS OF NDARRAY IN NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/Sd4rhMAj-Pk/hqdefault.jpg', '2020-07-05T04:00:11Z', '60', 'Sd4rhMAj-Pk', 'PT29M37S', '2014', '67', '2', '1', '7', '2021-02-16 22:13:56', '2021-02-16 22:13:56', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(159, 'SLICING OPERATION ON NDARRAY IN NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/itXk-cJbttE/hqdefault.jpg', '2020-07-06T03:30:13Z', '61', 'itXk-cJbttE', 'PT36M48S', '2480', '88', '4', '10', '7', '2021-02-16 22:13:57', '2021-02-16 22:13:57', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(160, 'DATATYPES - COPY( ) - VIEW( ) IN NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/QMeoiIMP6Ps/hqdefault.jpg', '2020-07-13T18:46:18Z', '62', 'QMeoiIMP6Ps', 'PT30M6S', '2482', '77', '2', '14', '7', '2021-02-16 22:13:57', '2021-02-16 22:13:57', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(161, 'JOINING ARRAYS (CONCATENATE( ),STACK( ),VSTACK( ),HSTACK( ),DSTACK( )) IN NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/GfP5Zuioya0/hqdefault.jpg', '2020-08-10T13:54:07Z', '63', 'GfP5Zuioya0', 'PT12M7S', '1754', '51', '1', '5', '7', '2021-02-16 22:13:57', '2021-02-16 22:13:57', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(162, 'SPLITTING ARRAY (SPLIT( ),ARRAY_SPLIT( ),VSPLIT( ),HSPLIT( )) IN NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/WtqOhaAHNZ0/hqdefault.jpg', '2020-08-11T04:30:12Z', '64', 'WtqOhaAHNZ0', 'PT13M5S', '1590', '46', '0', '7', '7', '2021-02-16 22:13:58', '2021-02-16 22:13:58', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(163, 'SEARCH IN NUMPY (where( ) & searchsorted( )) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/jkXcyKYsPoM/hqdefault.jpg', '2020-08-13T06:47:53Z', '65', 'jkXcyKYsPoM', 'PT19M46S', '1685', '49', '1', '11', '7', '2021-02-16 22:13:58', '2021-02-16 22:13:58', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29');
INSERT INTO `playlistitems` (`id`, `title`, `imgurl`, `publishedAt`, `position`, `videoId`, `videoLength`, `viewCount`, `likeCount`, `dislikeCount`, `commentCount`, `user_id`, `created_at`, `updated_at`, `playlistId`, `version`) VALUES
(164, 'SORT( ) IN NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/okh7TgBhGws/hqdefault.jpg', '2020-08-24T14:55:10Z', '66', 'okh7TgBhGws', 'PT20M34S', '1326', '49', '0', '5', '7', '2021-02-16 22:13:59', '2021-02-16 22:13:59', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(165, 'ARITHMETIC OPERATIONS ON ARRAYS IN NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/ghq0kQvSqNg/hqdefault.jpg', '2020-08-25T19:35:46Z', '67', 'ghq0kQvSqNg', 'PT33M34S', '1890', '56', '1', '12', '7', '2021-02-16 22:14:00', '2021-02-16 22:14:00', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(166, 'UNDERSTANDING OF AXIS ATTRIBUTE IN NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/Qbx4swEQApg/hqdefault.jpg', '2020-09-04T16:08:05Z', '68', 'Qbx4swEQApg', 'PT10M10S', '1381', '50', '0', '10', '7', '2021-02-16 22:14:00', '2021-02-16 22:14:00', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(167, 'STATISTICAL FUNCTIONS (MEAN,MEDIAN,VARIANCE,STANDARD DEVIATION) IN NUMPY - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/nShke-6Yg9s/hqdefault.jpg', '2020-09-14T17:33:06Z', '69', 'nShke-6Yg9s', 'PT36M49S', '1896', '51', '2', '12', '7', '2021-02-16 22:14:01', '2021-02-16 22:14:01', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(168, 'HOW TO INSTALL PANDAS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/Uxhi3j-J_Yo/hqdefault.jpg', '2020-09-28T13:12:57Z', '70', 'Uxhi3j-J_Yo', 'PT6M12S', '3895', '84', '2', '16', '7', '2021-02-16 22:14:01', '2021-02-16 22:14:01', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(169, 'INTRODUCTION TO PANDAS (SERIES,DATAFRAME,PANEL) - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/fAxjxoNqU9o/hqdefault.jpg', '2020-10-05T17:16:03Z', '71', 'fAxjxoNqU9o', 'PT16M20S', '3571', '119', '0', '14', '7', '2021-02-16 22:14:02', '2021-02-16 22:14:02', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(170, 'DIFFERENT WAYS OF CREATING SERIES IN PANDAS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/BqTEQ1XshQc/hqdefault.jpg', '2020-10-10T04:00:14Z', '72', 'BqTEQ1XshQc', 'PT16M15S', '1452', '41', '1', '3', '7', '2021-02-16 22:14:02', '2021-02-16 22:14:02', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(171, 'DIFFERENT WAYS OF CREATING DATAFRAME IN PANDAS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/mimtqJk-C5o/hqdefault.jpg', '2020-10-11T04:00:12Z', '73', 'mimtqJk-C5o', 'PT19M5S', '1855', '61', '0', '8', '7', '2021-02-16 22:14:03', '2021-02-16 22:14:03', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(172, 'ATTRIBUTES OF SERIES IN PANDAS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/En8LbtBvS_8/hqdefault.jpg', '2020-10-16T16:28:08Z', '74', 'En8LbtBvS_8', 'PT15M11S', '1063', '28', '1', '5', '7', '2021-02-16 22:14:03', '2021-02-16 22:14:03', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(173, 'MATHEMATICAL FUNCTIONS ON SERIES IN PANDAS - PYTHON PROGRAMMING', 'https://i.ytimg.com/vi/pXIShFzJ-n4/hqdefault.jpg', '2020-10-17T10:30:11Z', '75', 'pXIShFzJ-n4', 'PT15M12S', '1381', '37', '2', '11', '7', '2021-02-16 22:14:03', '2021-02-16 22:14:03', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(174, 'PYTHON DATABASE CONNECTIVITY || HOW TO CONNECT MYSQL WITH PYTHON || CONNECTING DATABASE WITH PYTHON', 'https://i.ytimg.com/vi/1mxzeiHlTK8/hqdefault.jpg', '2021-01-29T16:31:52Z', '76', '1mxzeiHlTK8', 'PT14M37S', '1051', '58', '0', '9', '7', '2021-02-16 22:14:04', '2021-02-16 22:14:04', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(175, 'PYTHON AND MYSQL - CREATE AND INSERT QUERY || CREATE AND INSERT QUERY IN MYSQL USING PYTHON', 'https://i.ytimg.com/vi/f1jfZXdJpls/hqdefault.jpg', '2021-01-31T15:51:19Z', '77', 'f1jfZXdJpls', 'PT30M5S', '649', '25', '2', '5', '7', '2021-02-16 22:14:04', '2021-02-16 22:14:04', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(176, 'PYTHON AND MYSQL - ALTER AND UPDATE QUERY || ALTER AND UPDATE QUERY IN MYSQL USING PYTHON', 'https://i.ytimg.com/vi/MLhBbRWktsk/hqdefault.jpg', '2021-02-01T16:04:14Z', '78', 'MLhBbRWktsk', 'PT18M28S', '443', '26', '0', '5', '7', '2021-02-16 22:14:05', '2021-02-16 22:14:05', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(177, 'PYTHON AND MYSQL - DELETE AND DROP QUERY || DELETE AND DROP QUERY IN MYSQL USING PYTHON', 'https://i.ytimg.com/vi/I2V_eUmCp5g/hqdefault.jpg', '2021-02-02T14:15:55Z', '79', 'I2V_eUmCp5g', 'PT12M36S', '481', '24', '0', '6', '7', '2021-02-16 22:14:06', '2021-02-16 22:14:06', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(178, 'HOW TO IMPORT EXCEL DATA TO MYSQL DATABASE USING PYTHON || EXCEL TO MYSQL || PYTHON DATABASE', 'https://i.ytimg.com/vi/LyOxspufYk4/hqdefault.jpg', '2021-02-05T05:00:14Z', '81', 'LyOxspufYk4', 'PT14M58S', '474', '31', '0', '4', '7', '2021-02-16 22:14:06', '2021-02-16 22:14:06', 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', '29'),
(179, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64031', '581', '16', '8', '6', '2021-02-17 13:50:15', '2021-02-17 13:50:15', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '30'),
(180, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350752', '3238', '177', '322', '6', '2021-02-17 13:50:16', '2021-02-17 13:50:16', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '30'),
(181, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37031', '323', '24', '25', '6', '2021-02-17 13:50:16', '2021-02-17 13:50:16', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '30'),
(182, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '6', '2021-02-17 13:50:17', '2021-02-17 13:50:17', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '30'),
(183, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64035', '581', '16', '8', '1', '2021-02-17 15:28:40', '2021-02-17 15:28:40', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '31'),
(184, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350756', '3238', '177', '322', '1', '2021-02-17 15:28:41', '2021-02-17 15:28:41', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '31'),
(185, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37032', '323', '24', '25', '1', '2021-02-17 15:28:42', '2021-02-17 15:28:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '31'),
(186, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '1', '2021-02-17 15:28:42', '2021-02-17 15:28:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '31'),
(187, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64035', '581', '16', '8', '1', '2021-02-17 15:30:05', '2021-02-17 15:30:05', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '32'),
(188, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350756', '3238', '177', '322', '1', '2021-02-17 15:30:06', '2021-02-17 15:30:06', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '32'),
(189, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37032', '323', '24', '25', '1', '2021-02-17 15:30:07', '2021-02-17 15:30:07', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '32'),
(190, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '1', '2021-02-17 15:30:07', '2021-02-17 15:30:07', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '32'),
(191, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64038', '581', '16', '8', '1', '2021-02-17 18:42:02', '2021-02-17 18:42:02', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '33'),
(192, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350762', '3238', '177', '322', '1', '2021-02-17 18:42:02', '2021-02-17 18:42:02', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '33'),
(193, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37033', '323', '24', '25', '1', '2021-02-17 18:42:03', '2021-02-17 18:42:03', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '33'),
(194, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '1', '2021-02-17 18:42:04', '2021-02-17 18:42:04', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '33'),
(195, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64038', '581', '16', '8', '1', '2021-02-17 18:46:38', '2021-02-17 18:46:38', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '34'),
(196, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350762', '3238', '177', '322', '1', '2021-02-17 18:46:38', '2021-02-17 18:46:38', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '34'),
(197, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37033', '323', '24', '25', '1', '2021-02-17 18:46:39', '2021-02-17 18:46:39', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '34'),
(198, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '1', '2021-02-17 18:46:40', '2021-02-17 18:46:40', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '34'),
(199, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64073', '581', '16', '8', '1', '2021-02-19 16:18:17', '2021-02-19 16:18:17', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '36'),
(200, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350866', '3240', '177', '322', '1', '2021-02-19 16:18:17', '2021-02-19 16:18:17', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '36'),
(201, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37046', '323', '24', '25', '1', '2021-02-19 16:18:18', '2021-02-19 16:18:18', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '36'),
(202, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '1', '2021-02-19 16:18:19', '2021-02-19 16:18:19', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '36'),
(248, 'Full Song: Mere Sohneya | Kabir Singh | Shahid K, Kiara A, Sandeep V | Sachet - Parampara | Irshad K', 'https://i.ytimg.com/vi/Njq4A5DAqRw/hqdefault.jpg', '2019-07-10T13:09:24Z', '10', 'Njq4A5DAqRw', 'PT3M12S', '99921097', '786944', '25974', '11773', '6', '2021-02-19 22:41:09', '2021-02-19 22:41:09', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(249, 'Aaoge Jab Tum Full Video Song | Jab We Met | Kareena  Kapoor, Shahid Kapoor | Ustad Rashid Khan', 'https://i.ytimg.com/vi/WPwTPhFMm3k/hqdefault.jpg', '2011-05-30T05:39:32Z', '11', 'WPwTPhFMm3k', 'PT4M51S', '64027759', '297090', '15995', '11753', '6', '2021-02-19 22:41:10', '2021-02-19 22:41:10', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(250, 'Pehli Baar Mohabbat | Kaminey | Shahid Kapoor, Priyanka Chopra | Mohit Chauhan | Vishal Bhardwaj', 'https://i.ytimg.com/vi/zhMoztMJPwE/hqdefault.jpg', '2011-05-30T07:41:34Z', '12', 'zhMoztMJPwE', 'PT5M6S', '1184445', '14710', '293', '586', '6', '2021-02-19 22:41:10', '2021-02-19 22:41:10', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(251, 'FULL SONG: Yeh Aaina | Kabir Singh | Shahid Kapoor, Kiara Advani Nikita D| Amaal Mallik Feat.Shreya', 'https://i.ytimg.com/vi/UcOx6Bm3_4k/hqdefault.jpg', '2019-07-02T12:28:20Z', '13', 'UcOx6Bm3_4k', 'PT3M41S', '36615598', '348341', '11801', '4893', '6', '2021-02-19 22:41:11', '2021-02-19 22:41:11', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(252, 'Bekhayali Full Song | Kabir Singh | Shahid K,Kiara A|Sandeep Reddy Vanga | Sachet-Parampara | Irshad', 'https://i.ytimg.com/vi/VOLKJJvfAbg/hqdefault.jpg', '2019-07-01T11:42:23Z', '0', 'VOLKJJvfAbg', 'PT5M54S', '322792971', '2211786', '119024', '58289', '6', '2021-02-19 22:41:11', '2021-02-19 22:41:11', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(253, 'Full Video: Tum Se Hi | Jab We Met | Kareena Kapoor, Shahid Kapoor | Mohit Chauhan | Pritam', 'https://i.ytimg.com/vi/mt9xg0mmt28/hqdefault.jpg', '2011-05-30T05:39:37Z', '14', 'mt9xg0mmt28', 'PT4M19S', '34270837', '249658', '7429', '7117', '6', '2021-02-19 22:41:11', '2021-02-19 22:41:11', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(254, 'Dekhte Dekhte Full Song | Batti Gul Meter Chalu | Atif Aslam | Shahid K Shraddha K | Nusrat Saab', 'https://i.ytimg.com/vi/rkWJyMhIWLo/hqdefault.jpg', '2018-10-04T13:52:28Z', '1', 'rkWJyMhIWLo', 'PT4M21S', '20149954', '150628', '8041', '4726', '6', '2021-02-19 22:41:11', '2021-02-19 22:41:11', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(255, 'Raat Ke Dhai Baje Full Video | Kaminey | Shahid Kapoor, Priyanka Chopra | Vishal Bhardwaj', 'https://i.ytimg.com/vi/Xf1922kJPfU/hqdefault.jpg', '2011-05-30T07:44:05Z', '15', 'Xf1922kJPfU', 'PT4M19S', '7604241', '49205', '1683', '1136', '6', '2021-02-19 22:41:12', '2021-02-19 22:41:12', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(256, 'Full Song: Tujhe Kitna Chahein Aur (Film Version) | Kabir Singh | Shahid K, Kiara A | Mithoon |Jubin', 'https://i.ytimg.com/vi/92J9p0VplTo/hqdefault.jpg', '2019-07-09T12:20:34Z', '2', '92J9p0VplTo', 'PT4M23S', '43323385', '418047', '12500', '9020', '6', '2021-02-19 22:41:12', '2021-02-19 22:41:12', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(257, 'Full Song: Pehla Pyaar | Kabir Singh | Shahid Kapoor, Kiara Advani | Armaan Malik | Vishal Mishra', 'https://i.ytimg.com/vi/B7SkAq_94J8/hqdefault.jpg', '2019-07-06T05:53:47Z', '16', 'B7SkAq_94J8', 'PT4M33S', '29652103', '274755', '8100', '4640', '6', '2021-02-19 22:41:12', '2021-02-19 22:41:12', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(258, 'Urvashi Video | Shahid Kapoor | Kiara Advani | Yo Yo Honey Singh | Bhushan Kumar | DirectorGifty', 'https://i.ytimg.com/vi/0VwgpYJ4q38/hqdefault.jpg', '2018-09-28T05:31:23Z', '3', '0VwgpYJ4q38', 'PT4M26S', '182668944', '1609036', '134475', '90807', '6', '2021-02-19 22:41:12', '2021-02-19 22:41:12', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(259, 'Full Video: Yeh Ishq Hai | Jab We Met | Kareena Kapoor, Shahid Kapoor | Pritam | Shreya Ghoshal', 'https://i.ytimg.com/vi/dXpG0kavjUo/hqdefault.jpg', '2011-05-30T05:39:34Z', '17', 'dXpG0kavjUo', 'PT4M33S', '65155820', '372968', '16854', '11441', '6', '2021-02-19 22:41:13', '2021-02-19 22:41:13', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(260, 'Full Song:Tera Ban Jaunga | Kabir Singh | Shahid K, Kiara A, Sandeep V | Tulsi Kumar, Akhil Sachdeva', 'https://i.ytimg.com/vi/mQiiw7uRngk/hqdefault.jpg', '2019-07-03T11:14:04Z', '4', 'mQiiw7uRngk', 'PT3M57S', '132653813', '1035857', '57048', '15138', '6', '2021-02-19 22:41:13', '2021-02-19 22:41:13', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(261, 'Full Song: Kaise Hua | Kabir Singh | Shahid K, Kiara A, Sandeep V | Vishal Mishra, Manoj Muntashir', 'https://i.ytimg.com/vi/yVuctV4uo3E/hqdefault.jpg', '2019-07-04T11:00:09Z', '18', 'yVuctV4uo3E', 'PT3M58S', '15726912', '123435', '4160', '1988', '6', '2021-02-19 22:41:13', '2021-02-19 22:41:13', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(262, 'Full Video: Ek Dil Ek Jaan | Padmaavat | Deepika Padukone | Shahid Kapoor | Sanjay Leela Bhansali', 'https://i.ytimg.com/vi/OtiyixnhLpA/hqdefault.jpg', '2018-03-16T08:30:01Z', '5', 'OtiyixnhLpA', 'PT2M46S', '4613725', '32793', '1327', '699', '6', '2021-02-19 22:41:13', '2021-02-19 22:41:13', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(263, 'Arijit Singh: Yeh Ishq Hai Full Video Song | Rangoon | Saif Ali Khan, Kangana Ranaut, Shahid Kapoor', 'https://i.ytimg.com/vi/iXehrgJ-RY4/hqdefault.jpg', '2017-03-28T14:30:01Z', '19', 'iXehrgJ-RY4', 'PT3M15S', '9430765', '38428', '4062', '866', '6', '2021-02-19 22:41:14', '2021-02-19 22:41:14', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(264, 'Full Song: Tujhe Kitna Chahne Lage | Kabir Singh | Mithoon Feat. Arijit Singh | Shahid K, Kiara A', 'https://i.ytimg.com/vi/AgX2II9si7w/hqdefault.jpg', '2019-07-04T06:48:51Z', '6', 'AgX2II9si7w', 'PT3M39S', '159047528', '1371758', '60010', '27866', '6', '2021-02-19 22:41:14', '2021-02-19 22:41:14', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(265, 'Rabba Mein Toh Mar Gaya Oye (Full Song) \"Mausam\" Feat. Shahid kapoor ,Sonam Kapoor', 'https://i.ytimg.com/vi/rWC4EC6GQN0/hqdefault.jpg', '2012-01-04T12:06:46Z', '20', 'rWC4EC6GQN0', 'PT3M59S', '10729465', '145194', '4908', '2702', '6', '2021-02-19 22:41:14', '2021-02-19 22:41:14', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(266, 'Full Song:Gold Tamba Video | Batti Gul Meter Chalu | Shahid Kapoor, Shraddha Kapoor', 'https://i.ytimg.com/vi/-FmpUWJx1Ks/hqdefault.jpg', '2018-10-05T10:30:01Z', '7', '-FmpUWJx1Ks', 'PT3M32S', '16699672', '78475', '9318', '2291', '6', '2021-02-19 22:41:14', '2021-02-19 22:41:14', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(267, 'Pump It Up Song | Chance Pe Dance | Shahid Kapoor, Genelia D\'Souza | Vishal Dadlani | Adnan Sami', 'https://i.ytimg.com/vi/n_mdFImEwjY/hqdefault.jpg', '2011-04-25T13:12:37Z', '21', 'n_mdFImEwjY', 'PT4M48S', '3014422', '15198', '742', '502', '6', '2021-02-19 22:41:15', '2021-02-19 22:41:15', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(268, 'Dhan Te Nan Full Video Song | Kaminey | Shahid Kapoor, Priyanka Chopra | Vishal Bharadwaj', 'https://i.ytimg.com/vi/AKF2whlGnr4/hqdefault.jpg', '2012-09-12T12:51:09Z', '8', 'AKF2whlGnr4', 'PT3M44S', '15259356', '139783', '3859', '3544', '6', '2021-02-19 22:41:15', '2021-02-19 22:41:15', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(269, 'Pal Mein Hi Full Video | Chance Pe Dance | Shahid Kapoor,Genelia Dsouza | Adnan Sami', 'https://i.ytimg.com/vi/GfUZiq7t33g/hqdefault.jpg', '2011-04-25T13:08:44Z', '22', 'GfUZiq7t33g', 'PT4M3S', '1837314', '10132', '303', '319', '6', '2021-02-19 22:41:15', '2021-02-19 22:41:15', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(270, 'Full Video: Mauja Hi Mauja | Jab We Met | Shahid kapoor, Kareena Kapoor | Mika Singh |  Pritam', 'https://i.ytimg.com/vi/PaDaoNnOQaM/hqdefault.jpg', '2011-07-27T12:32:57Z', '9', 'PaDaoNnOQaM', 'PT3M48S', '94286763', '300158', '18215', '7750', '6', '2021-02-19 22:41:15', '2021-02-19 22:41:15', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(271, 'Gustakh Dil Tere Liye | Dil Maange More | Shahid Kapoor, Soha Ali Khan | Sonu Nigam, Sunidhi Chauhan', 'https://i.ytimg.com/vi/AMU_v2badYY/hqdefault.jpg', '2011-05-30T13:21:06Z', '23', 'AMU_v2badYY', 'PT4M23S', '4369570', '36741', '1048', '695', '6', '2021-02-19 22:41:16', '2021-02-19 22:41:16', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(272, 'Full Song: Mere Sohneya | Kabir Singh | Shahid K, Kiara A, Sandeep V | Sachet - Parampara | Irshad K', 'https://i.ytimg.com/vi/Njq4A5DAqRw/hqdefault.jpg', '2019-07-10T13:09:24Z', '10', 'Njq4A5DAqRw', 'PT3M12S', '99921097', '786944', '25974', '11773', '6', '2021-02-19 22:41:16', '2021-02-19 22:41:16', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(273, 'Full Video:Aao Milo Chalen|Jab We Met|Shahid Kapoor, Kareena Kapoor|Pritam, Shaan, Ustad Sultan Khan', 'https://i.ytimg.com/vi/Mo5tQDcs__g/hqdefault.jpg', '2011-05-30T05:39:11Z', '24', 'Mo5tQDcs__g', 'PT3M55S', '3902611', '41932', '942', '1161', '6', '2021-02-19 22:41:16', '2021-02-19 22:41:16', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(274, 'Aaoge Jab Tum Full Video Song | Jab We Met | Kareena  Kapoor, Shahid Kapoor | Ustad Rashid Khan', 'https://i.ytimg.com/vi/WPwTPhFMm3k/hqdefault.jpg', '2011-05-30T05:39:32Z', '11', 'WPwTPhFMm3k', 'PT4M51S', '64027759', '297090', '15995', '11753', '6', '2021-02-19 22:41:16', '2021-02-19 22:41:16', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(275, 'Mausam Hai Bada Qatil | Chup Chup Ke | Shahid Kapoor, Kareena Kapoor| Sonu Nigam | Himesh Reshammiya', 'https://i.ytimg.com/vi/l9zYeIqCGHw/hqdefault.jpg', '2011-05-23T13:14:06Z', '25', 'l9zYeIqCGHw', 'PT1M40S', '1730593', '5474', '426', '126', '6', '2021-02-19 22:41:17', '2021-02-19 22:41:17', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(276, 'Pehli Baar Mohabbat | Kaminey | Shahid Kapoor, Priyanka Chopra | Mohit Chauhan | Vishal Bhardwaj', 'https://i.ytimg.com/vi/zhMoztMJPwE/hqdefault.jpg', '2011-05-30T07:41:34Z', '12', 'zhMoztMJPwE', 'PT5M6S', '1184445', '14710', '293', '586', '6', '2021-02-19 22:41:17', '2021-02-19 22:41:17', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(277, 'Alvida Full Video Song | Rangoon | Saif Ali Khan, Kangana Ranaut, Shahid Kapoor | T-Series', 'https://i.ytimg.com/vi/5JqRQ6FGh4w/hqdefault.jpg', '2017-03-27T13:21:18Z', '26', '5JqRQ6FGh4w', 'PT3M3S', '584860', '3480', '223', '121', '6', '2021-02-19 22:41:17', '2021-02-19 22:41:17', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(278, 'FULL SONG: Yeh Aaina | Kabir Singh | Shahid Kapoor, Kiara Advani Nikita D| Amaal Mallik Feat.Shreya', 'https://i.ytimg.com/vi/UcOx6Bm3_4k/hqdefault.jpg', '2019-07-02T12:28:20Z', '13', 'UcOx6Bm3_4k', 'PT3M41S', '36615638', '348341', '11801', '4893', '6', '2021-02-19 22:41:17', '2021-02-19 22:41:17', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(279, '\"Dil Vich Lagya Ve\" Full Song | Chup Chup Ke | Shahid Kapoor, Kareena Kapoor', 'https://i.ytimg.com/vi/FWO9pbfdvD0/hqdefault.jpg', '2011-05-23T13:15:20Z', '27', 'FWO9pbfdvD0', 'PT3M57S', '41034721', '89958', '10464', '2225', '6', '2021-02-19 22:41:18', '2021-02-19 22:41:18', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(280, 'Full Video: Tum Se Hi | Jab We Met | Kareena Kapoor, Shahid Kapoor | Mohit Chauhan | Pritam', 'https://i.ytimg.com/vi/mt9xg0mmt28/hqdefault.jpg', '2011-05-30T05:39:37Z', '14', 'mt9xg0mmt28', 'PT4M19S', '34270837', '249660', '7429', '7117', '6', '2021-02-19 22:41:18', '2021-02-19 22:41:18', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(281, 'Aye Khuda [Full Song] Paathshaala', 'https://i.ytimg.com/vi/T-g39o0rDos/hqdefault.jpg', '2011-04-21T11:08:27Z', '28', 'T-g39o0rDos', 'PT3M50S', '25626906', '240879', '5224', '6932', '6', '2021-02-19 22:41:18', '2021-02-19 22:41:18', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(282, 'Raat Ke Dhai Baje Full Video | Kaminey | Shahid Kapoor, Priyanka Chopra | Vishal Bhardwaj', 'https://i.ytimg.com/vi/Xf1922kJPfU/hqdefault.jpg', '2011-05-30T07:44:05Z', '15', 'Xf1922kJPfU', 'PT4M19S', '7604241', '49205', '1683', '1136', '6', '2021-02-19 22:41:18', '2021-02-19 22:41:18', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(283, 'MAINE CHUN LIYA Full Video | Dil Maange More |  Shahid Kapoor, Ayesha Takia, Soha Ali Khan', 'https://i.ytimg.com/vi/pKGiJ8f0w6Q/hqdefault.jpg', '2011-05-30T13:20:30Z', '29', 'pKGiJ8f0w6Q', 'PT4M10S', '22476939', '82619', '5782', '2281', '6', '2021-02-19 22:41:19', '2021-02-19 22:41:19', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(284, 'Full Song: Pehla Pyaar | Kabir Singh | Shahid Kapoor, Kiara Advani | Armaan Malik | Vishal Mishra', 'https://i.ytimg.com/vi/B7SkAq_94J8/hqdefault.jpg', '2019-07-06T05:53:47Z', '16', 'B7SkAq_94J8', 'PT4M33S', '29652103', '274755', '8100', '4640', '6', '2021-02-19 22:41:19', '2021-02-19 22:41:19', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(285, 'Ghoomar | Chup Chup Ke | Shahid Kapoor, Kareena Kapoor | K K, Sunidhi Chauhan | Himesh Reshammiya', 'https://i.ytimg.com/vi/pz1A_3xBgO4/hqdefault.jpg', '2011-05-23T13:13:13Z', '30', 'pz1A_3xBgO4', 'PT4M19S', '15040825', '46290', '4239', '1189', '6', '2021-02-19 22:41:19', '2021-02-19 22:41:19', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(286, 'Full Video: Yeh Ishq Hai | Jab We Met | Kareena Kapoor, Shahid Kapoor | Pritam | Shreya Ghoshal', 'https://i.ytimg.com/vi/dXpG0kavjUo/hqdefault.jpg', '2011-05-30T05:39:34Z', '17', 'dXpG0kavjUo', 'PT4M33S', '65155820', '372968', '16854', '11441', '6', '2021-02-19 22:41:19', '2021-02-19 22:41:19', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(287, 'Mujhe Teri [Full Song] \"Paathshaala\" | Shahid Kapoor | Tulsi Kumar, Hanif Sheikh', 'https://i.ytimg.com/vi/LoMyDTVZtqw/hqdefault.jpg', '2011-04-21T11:11:52Z', '31', 'LoMyDTVZtqw', 'PT3M38S', '6492425', '40392', '1357', '1164', '6', '2021-02-19 22:41:20', '2021-02-19 22:41:20', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(288, 'Full Song: Kaise Hua | Kabir Singh | Shahid K, Kiara A, Sandeep V | Vishal Mishra, Manoj Muntashir', 'https://i.ytimg.com/vi/yVuctV4uo3E/hqdefault.jpg', '2019-07-04T11:00:09Z', '18', 'yVuctV4uo3E', 'PT3M58S', '15726912', '123435', '4160', '1988', '6', '2021-02-19 22:41:20', '2021-02-19 22:41:20', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(289, 'Full Video : \"Saj Dhaj Ke Tashan Mein Rehna\"  | Mausam  | Shahid Kapoor | Sonam Kapoor', 'https://i.ytimg.com/vi/C87WJjQKLNI/hqdefault.jpg', '2012-01-16T08:32:27Z', '32', 'C87WJjQKLNI', 'PT4M51S', '12949018', '55428', '2716', '1003', '6', '2021-02-19 22:41:20', '2021-02-19 22:41:20', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(290, 'Arijit Singh: Yeh Ishq Hai Full Video Song | Rangoon | Saif Ali Khan, Kangana Ranaut, Shahid Kapoor', 'https://i.ytimg.com/vi/iXehrgJ-RY4/hqdefault.jpg', '2017-03-28T14:30:01Z', '19', 'iXehrgJ-RY4', 'PT3M15S', '9430765', '38428', '4062', '866', '6', '2021-02-19 22:41:20', '2021-02-19 22:41:20', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(291, 'Ishq Ki Galee Full Song | Milenge Milenge | Shahid Kapoor, Kareena Kapoor', 'https://i.ytimg.com/vi/I1gPFJWXH4M/hqdefault.jpg', '2011-05-17T00:22:56Z', '33', 'I1gPFJWXH4M', 'PT3M34S', '10828400', '30253', '3650', '1199', '6', '2021-02-19 22:41:21', '2021-02-19 22:41:21', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(292, 'Rabba Mein Toh Mar Gaya Oye (Full Song) \"Mausam\" Feat. Shahid kapoor ,Sonam Kapoor', 'https://i.ytimg.com/vi/rWC4EC6GQN0/hqdefault.jpg', '2012-01-04T12:06:46Z', '20', 'rWC4EC6GQN0', 'PT3M59S', '10729465', '145194', '4908', '2702', '6', '2021-02-19 22:41:21', '2021-02-19 22:41:21', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(293, '\"Ik Tu Hi Tu Hi\" Full Song | Mausam | Ft. Shahid Kapoor | Sonam Kapoor', 'https://i.ytimg.com/vi/hH6jAQaZ2zc/hqdefault.jpg', '2011-08-27T08:10:47Z', '34', 'hH6jAQaZ2zc', 'PT2M56S', '3907642', '24665', '987', '761', '6', '2021-02-19 22:41:21', '2021-02-19 22:41:21', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(294, 'Pump It Up Song | Chance Pe Dance | Shahid Kapoor, Genelia D\'Souza | Vishal Dadlani | Adnan Sami', 'https://i.ytimg.com/vi/n_mdFImEwjY/hqdefault.jpg', '2011-04-25T13:12:37Z', '21', 'n_mdFImEwjY', 'PT4M48S', '3014422', '15198', '742', '502', '6', '2021-02-19 22:41:21', '2021-02-19 22:41:21', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(295, 'Pal Mein Hi Full Video | Chance Pe Dance | Shahid Kapoor,Genelia Dsouza | Adnan Sami', 'https://i.ytimg.com/vi/GfUZiq7t33g/hqdefault.jpg', '2011-04-25T13:08:44Z', '22', 'GfUZiq7t33g', 'PT4M3S', '1837314', '10132', '303', '319', '6', '2021-02-19 22:41:22', '2021-02-19 22:41:22', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(296, 'Gustakh Dil Tere Liye | Dil Maange More | Shahid Kapoor, Soha Ali Khan | Sonu Nigam, Sunidhi Chauhan', 'https://i.ytimg.com/vi/AMU_v2badYY/hqdefault.jpg', '2011-05-30T13:21:06Z', '23', 'AMU_v2badYY', 'PT4M23S', '4369570', '36741', '1048', '695', '6', '2021-02-19 22:41:22', '2021-02-19 22:41:22', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(297, 'Full Video:Aao Milo Chalen|Jab We Met|Shahid Kapoor, Kareena Kapoor|Pritam, Shaan, Ustad Sultan Khan', 'https://i.ytimg.com/vi/Mo5tQDcs__g/hqdefault.jpg', '2011-05-30T05:39:11Z', '24', 'Mo5tQDcs__g', 'PT3M55S', '3902630', '41932', '942', '1161', '6', '2021-02-19 22:41:23', '2021-02-19 22:41:23', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(298, 'Mausam Hai Bada Qatil | Chup Chup Ke | Shahid Kapoor, Kareena Kapoor| Sonu Nigam | Himesh Reshammiya', 'https://i.ytimg.com/vi/l9zYeIqCGHw/hqdefault.jpg', '2011-05-23T13:14:06Z', '25', 'l9zYeIqCGHw', 'PT1M40S', '1730593', '5474', '426', '126', '6', '2021-02-19 22:41:24', '2021-02-19 22:41:24', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(299, 'Alvida Full Video Song | Rangoon | Saif Ali Khan, Kangana Ranaut, Shahid Kapoor | T-Series', 'https://i.ytimg.com/vi/5JqRQ6FGh4w/hqdefault.jpg', '2017-03-27T13:21:18Z', '26', '5JqRQ6FGh4w', 'PT3M3S', '584860', '3480', '223', '121', '6', '2021-02-19 22:41:24', '2021-02-19 22:41:24', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(300, '\"Dil Vich Lagya Ve\" Full Song | Chup Chup Ke | Shahid Kapoor, Kareena Kapoor', 'https://i.ytimg.com/vi/FWO9pbfdvD0/hqdefault.jpg', '2011-05-23T13:15:20Z', '27', 'FWO9pbfdvD0', 'PT3M57S', '41034721', '89958', '10464', '2225', '6', '2021-02-19 22:41:25', '2021-02-19 22:41:25', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(301, 'Aye Khuda [Full Song] Paathshaala', 'https://i.ytimg.com/vi/T-g39o0rDos/hqdefault.jpg', '2011-04-21T11:08:27Z', '28', 'T-g39o0rDos', 'PT3M50S', '25626906', '240879', '5224', '6932', '6', '2021-02-19 22:41:25', '2021-02-19 22:41:25', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(302, 'MAINE CHUN LIYA Full Video | Dil Maange More |  Shahid Kapoor, Ayesha Takia, Soha Ali Khan', 'https://i.ytimg.com/vi/pKGiJ8f0w6Q/hqdefault.jpg', '2011-05-30T13:20:30Z', '29', 'pKGiJ8f0w6Q', 'PT4M10S', '22476939', '82619', '5782', '2281', '6', '2021-02-19 22:41:26', '2021-02-19 22:41:26', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(303, 'Ghoomar | Chup Chup Ke | Shahid Kapoor, Kareena Kapoor | K K, Sunidhi Chauhan | Himesh Reshammiya', 'https://i.ytimg.com/vi/pz1A_3xBgO4/hqdefault.jpg', '2011-05-23T13:13:13Z', '30', 'pz1A_3xBgO4', 'PT4M19S', '15040825', '46290', '4239', '1189', '6', '2021-02-19 22:41:26', '2021-02-19 22:41:26', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(304, 'Mujhe Teri [Full Song] \"Paathshaala\" | Shahid Kapoor | Tulsi Kumar, Hanif Sheikh', 'https://i.ytimg.com/vi/LoMyDTVZtqw/hqdefault.jpg', '2011-04-21T11:11:52Z', '31', 'LoMyDTVZtqw', 'PT3M38S', '6492425', '40392', '1357', '1164', '6', '2021-02-19 22:41:27', '2021-02-19 22:41:27', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(305, 'Full Video : \"Saj Dhaj Ke Tashan Mein Rehna\"  | Mausam  | Shahid Kapoor | Sonam Kapoor', 'https://i.ytimg.com/vi/C87WJjQKLNI/hqdefault.jpg', '2012-01-16T08:32:27Z', '32', 'C87WJjQKLNI', 'PT4M51S', '12949018', '55428', '2716', '1003', '6', '2021-02-19 22:41:27', '2021-02-19 22:41:27', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(306, 'Ishq Ki Galee Full Song | Milenge Milenge | Shahid Kapoor, Kareena Kapoor', 'https://i.ytimg.com/vi/I1gPFJWXH4M/hqdefault.jpg', '2011-05-17T00:22:56Z', '33', 'I1gPFJWXH4M', 'PT3M34S', '10828400', '30253', '3650', '1199', '6', '2021-02-19 22:41:28', '2021-02-19 22:41:28', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(307, '\"Ik Tu Hi Tu Hi\" Full Song | Mausam | Ft. Shahid Kapoor | Sonam Kapoor', 'https://i.ytimg.com/vi/hH6jAQaZ2zc/hqdefault.jpg', '2011-08-27T08:10:47Z', '34', 'hH6jAQaZ2zc', 'PT2M56S', '3907642', '24665', '987', '761', '6', '2021-02-19 22:41:28', '2021-02-19 22:41:28', 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', '30'),
(308, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64100', '581', '16', '8', '4', '2021-02-20 22:10:36', '2021-02-20 22:10:36', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '37'),
(309, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '350960', '3240', '177', '322', '4', '2021-02-20 22:10:36', '2021-02-20 22:10:36', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '37'),
(310, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37062', '323', '24', '25', '4', '2021-02-20 22:10:38', '2021-02-20 22:10:38', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '37'),
(311, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '4', '2021-02-20 22:10:39', '2021-02-20 22:10:39', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '37'),
(312, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64138', '583', '16', '8', '1', '2021-02-23 10:38:40', '2021-02-23 10:38:40', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '38'),
(313, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351111', '3241', '177', '322', '1', '2021-02-23 10:38:41', '2021-02-23 10:38:41', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '38'),
(314, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37084', '323', '24', '25', '1', '2021-02-23 10:38:42', '2021-02-23 10:38:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '38'),
(315, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '1', '2021-02-23 10:38:42', '2021-02-23 10:38:42', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '38'),
(316, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 69 & Ep 70 | RECAP', 'https://i.ytimg.com/vi/Owa-Ct_tbfs/hqdefault.jpg', '2021-02-21T10:45:02Z', '0', 'Owa-Ct_tbfs', 'PT8M31S', '32225', '516', '16', '34', '1', '2021-02-23 10:38:52', '2021-02-23 10:38:52', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(317, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 68 & Ep 69 | RECAP', 'https://i.ytimg.com/vi/RssZgZiaXH4/hqdefault.jpg', '2021-02-20T10:45:00Z', '1', 'RssZgZiaXH4', 'PT8M31S', '18837', '307', '22', '35', '1', '2021-02-23 10:38:52', '2021-02-23 10:38:52', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(318, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 67 & Ep 68 | RECAP', 'https://i.ytimg.com/vi/WoE0faRmS2Q/hqdefault.jpg', '2021-02-19T10:45:00Z', '2', 'WoE0faRmS2Q', 'PT8M32S', '42764', '632', '28', '33', '1', '2021-02-23 10:38:53', '2021-02-23 10:38:53', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(319, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 66 & Ep 67 | RECAP', 'https://i.ytimg.com/vi/iEuUCmrbdiM/hqdefault.jpg', '2021-02-18T10:45:02Z', '3', 'iEuUCmrbdiM', 'PT8M32S', '30456', '462', '21', '20', '1', '2021-02-23 10:38:53', '2021-02-23 10:38:53', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(320, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 65 & Ep 66 | RECAP', 'https://i.ytimg.com/vi/idrcuz7QuuQ/hqdefault.jpg', '2021-02-17T10:45:01Z', '4', 'idrcuz7QuuQ', 'PT8M34S', '59466', '736', '37', '57', '1', '2021-02-23 10:38:54', '2021-02-23 10:38:54', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(321, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 64 & Ep 65 | RECAP', 'https://i.ytimg.com/vi/nYnVRwWyPuU/hqdefault.jpg', '2021-02-14T10:45:01Z', '5', 'nYnVRwWyPuU', 'PT8M47S', '68951', '909', '63', '84', '1', '2021-02-23 10:38:54', '2021-02-23 10:38:54', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(322, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 63 & Ep 64 | RECAP', 'https://i.ytimg.com/vi/xhYz0Nz26zc/hqdefault.jpg', '2021-02-13T10:45:01Z', '6', 'xhYz0Nz26zc', 'PT8M47S', '65646', '857', '34', '36', '1', '2021-02-23 10:38:55', '2021-02-23 10:38:55', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(323, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 62 & Ep 63 | RECAP', 'https://i.ytimg.com/vi/7tKh0fVdMIs/hqdefault.jpg', '2021-02-12T10:45:00Z', '7', '7tKh0fVdMIs', 'PT8M39S', '81695', '1125', '51', '53', '1', '2021-02-23 10:38:55', '2021-02-23 10:38:55', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(324, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 61 & Ep 62 | RECAP', 'https://i.ytimg.com/vi/thZWZCAjSCA/hqdefault.jpg', '2021-02-11T10:45:03Z', '8', 'thZWZCAjSCA', 'PT8M33S', '79546', '1057', '47', '84', '1', '2021-02-23 10:38:56', '2021-02-23 10:38:56', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(325, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 60 & Ep 61 | RECAP', 'https://i.ytimg.com/vi/gjTKyIWz_CQ/hqdefault.jpg', '2021-02-10T10:45:04Z', '9', 'gjTKyIWz_CQ', 'PT8M26S', '54497', '727', '28', '47', '1', '2021-02-23 10:38:56', '2021-02-23 10:38:56', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(326, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 59 & Ep 60 | RECAP', 'https://i.ytimg.com/vi/IJc_OI_Z3dg/hqdefault.jpg', '2021-02-07T10:45:00Z', '10', 'IJc_OI_Z3dg', 'PT8M18S', '100681', '1236', '55', '31', '1', '2021-02-23 10:38:57', '2021-02-23 10:38:57', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(327, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 58 & Ep 59 | RECAP', 'https://i.ytimg.com/vi/JhOmJP3Qh7M/hqdefault.jpg', '2021-02-06T10:45:00Z', '11', 'JhOmJP3Qh7M', 'PT8M5S', '26385', '327', '14', '29', '1', '2021-02-23 10:38:57', '2021-02-23 10:38:57', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(328, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 57 & Ep 58 | RECAP', 'https://i.ytimg.com/vi/TGwk39jlbf8/hqdefault.jpg', '2021-02-05T10:45:02Z', '12', 'TGwk39jlbf8', 'PT8M18S', '31762', '351', '19', '27', '1', '2021-02-23 10:38:58', '2021-02-23 10:38:58', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(329, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 56 & Ep 57 | RECAP', 'https://i.ytimg.com/vi/eVJVfGZDN00/hqdefault.jpg', '2021-02-04T10:45:04Z', '13', 'eVJVfGZDN00', 'PT8M36S', '48054', '651', '17', '13', '1', '2021-02-23 10:38:58', '2021-02-23 10:38:58', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(330, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 55 & Ep 56 | RECAP', 'https://i.ytimg.com/vi/RNdfALFcbYA/hqdefault.jpg', '2021-02-03T10:45:01Z', '14', 'RNdfALFcbYA', 'PT8M33S', '85344', '1150', '38', '33', '1', '2021-02-23 10:38:59', '2021-02-23 10:38:59', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(331, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 54 & Ep 55 | RECAP', 'https://i.ytimg.com/vi/5zfqS2c6b5M/hqdefault.jpg', '2021-01-31T10:45:01Z', '15', '5zfqS2c6b5M', 'PT8M21S', '178374', '2095', '87', '78', '1', '2021-02-23 10:38:59', '2021-02-23 10:38:59', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(332, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 53 & Ep 54 | RECAP', 'https://i.ytimg.com/vi/DlXDodMZD5E/hqdefault.jpg', '2021-01-30T10:45:01Z', '16', 'DlXDodMZD5E', 'PT8M20S', '53175', '730', '29', '41', '1', '2021-02-23 10:39:00', '2021-02-23 10:39:00', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(333, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 52 & Ep 53 | RECAP', 'https://i.ytimg.com/vi/ux-zcN1KAic/hqdefault.jpg', '2021-01-29T10:45:01Z', '17', 'ux-zcN1KAic', 'PT8M18S', '193625', '2524', '67', '94', '1', '2021-02-23 10:39:00', '2021-02-23 10:39:00', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(334, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 51 & Ep 52 | RECAP', 'https://i.ytimg.com/vi/FVz4e-RJGHw/hqdefault.jpg', '2021-01-28T10:45:00Z', '18', 'FVz4e-RJGHw', 'PT8M30S', '62285', '809', '49', '31', '1', '2021-02-23 10:39:01', '2021-02-23 10:39:01', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(335, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 50 & Ep 51 | RECAP', 'https://i.ytimg.com/vi/tsB0VVqRsRw/hqdefault.jpg', '2021-01-27T10:45:01Z', '19', 'tsB0VVqRsRw', 'PT8M43S', '163795', '2046', '72', '77', '1', '2021-02-23 10:39:01', '2021-02-23 10:39:01', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(336, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 49 & Ep 50 | RECAP', 'https://i.ytimg.com/vi/q-zcjZ_PLUo/hqdefault.jpg', '2021-01-24T10:45:02Z', '20', 'q-zcjZ_PLUo', 'PT8M41S', '320869', '4019', '164', '121', '1', '2021-02-23 10:39:02', '2021-02-23 10:39:02', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(337, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 48 & Ep 49 | RECAP', 'https://i.ytimg.com/vi/jnt_9PKSW4E/hqdefault.jpg', '2021-01-23T10:45:01Z', '21', 'jnt_9PKSW4E', 'PT8M30S', '35708', '412', '29', '9', '1', '2021-02-23 10:39:02', '2021-02-23 10:39:02', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(338, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 47 & Ep 48 | RECAP', 'https://i.ytimg.com/vi/KoKEwNRvqc8/hqdefault.jpg', '2021-01-22T10:45:01Z', '22', 'KoKEwNRvqc8', 'PT8M13S', '54988', '706', '31', '22', '1', '2021-02-23 10:39:03', '2021-02-23 10:39:03', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(339, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 46 & Ep 47 | RECAP', 'https://i.ytimg.com/vi/Q8Y5No3f9EI/hqdefault.jpg', '2021-01-21T10:45:00Z', '23', 'Q8Y5No3f9EI', 'PT8M11S', '140666', '1615', '59', '39', '1', '2021-02-23 10:39:03', '2021-02-23 10:39:03', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(340, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 45 & Ep 46 | RECAP', 'https://i.ytimg.com/vi/ea2nTUq8jW0/hqdefault.jpg', '2021-01-20T10:45:02Z', '24', 'ea2nTUq8jW0', 'PT8M33S', '149559', '1747', '68', '50', '1', '2021-02-23 10:39:04', '2021-02-23 10:39:04', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(341, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 44 & Ep 45 | RECAP', 'https://i.ytimg.com/vi/Zy8_ahYADhU/hqdefault.jpg', '2021-01-17T10:45:00Z', '25', 'Zy8_ahYADhU', 'PT8M35S', '119475', '1470', '80', '55', '1', '2021-02-23 10:39:04', '2021-02-23 10:39:04', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(342, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 43 & Ep 44 | RECAP', 'https://i.ytimg.com/vi/ls0Dcdc5Sug/hqdefault.jpg', '2021-01-16T10:45:04Z', '26', 'ls0Dcdc5Sug', 'PT8M20S', '58661', '700', '27', '14', '1', '2021-02-23 10:39:05', '2021-02-23 10:39:05', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(343, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 42 & Ep 43 | RECAP', 'https://i.ytimg.com/vi/qfpqN6zzrYI/hqdefault.jpg', '2021-01-15T10:45:01Z', '27', 'qfpqN6zzrYI', 'PT8M28S', '212583', '2550', '85', '65', '1', '2021-02-23 10:39:05', '2021-02-23 10:39:05', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(344, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 41 & Ep 42 | RECAP', 'https://i.ytimg.com/vi/QwGRGXXgpfw/hqdefault.jpg', '2021-01-14T10:45:01Z', '28', 'QwGRGXXgpfw', 'PT8M31S', '92644', '1132', '55', '29', '1', '2021-02-23 10:39:06', '2021-02-23 10:39:06', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(345, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 40 & Ep 41 | RECAP', 'https://i.ytimg.com/vi/9WI64sGP6zI/hqdefault.jpg', '2021-01-13T10:45:01Z', '29', '9WI64sGP6zI', 'PT8M17S', '94796', '1244', '54', '39', '1', '2021-02-23 10:39:06', '2021-02-23 10:39:06', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(346, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 39 & Ep 40 | RECAP', 'https://i.ytimg.com/vi/00yw98D1crM/hqdefault.jpg', '2021-01-10T10:45:01Z', '30', '00yw98D1crM', 'PT8M19S', '68872', '902', '47', '70', '1', '2021-02-23 10:39:07', '2021-02-23 10:39:07', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(347, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 38 & Ep 39 | RECAP', 'https://i.ytimg.com/vi/JarulbmwlJA/hqdefault.jpg', '2021-01-09T10:45:00Z', '31', 'JarulbmwlJA', 'PT8M36S', '24269', '327', '15', '12', '1', '2021-02-23 10:39:07', '2021-02-23 10:39:07', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(348, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 37 & Ep 38 | RECAP', 'https://i.ytimg.com/vi/BidTBeoHiu0/hqdefault.jpg', '2021-01-08T10:45:00Z', '32', 'BidTBeoHiu0', 'PT8M37S', '76640', '976', '61', '36', '1', '2021-02-23 10:39:08', '2021-02-23 10:39:08', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(349, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 36 & Ep 37 | RECAP', 'https://i.ytimg.com/vi/Y8wbJeYAIEI/hqdefault.jpg', '2021-01-07T10:45:01Z', '33', 'Y8wbJeYAIEI', 'PT8M44S', '22998', '279', '28', '13', '1', '2021-02-23 10:39:08', '2021-02-23 10:39:08', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(350, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 35 & Ep 36 | RECAP', 'https://i.ytimg.com/vi/RaXuXdPaFCM/hqdefault.jpg', '2021-01-06T11:00:16Z', '34', 'RaXuXdPaFCM', 'PT8M44S', '81175', '1013', '45', '31', '1', '2021-02-23 10:39:09', '2021-02-23 10:39:09', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(351, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 30 & Ep 31 | RECAP', 'https://i.ytimg.com/vi/Qe9GMiP4bfs/hqdefault.jpg', '2020-12-30T10:45:03Z', '35', 'Qe9GMiP4bfs', 'PT8M31S', '124042', '1141', '60', '32', '1', '2021-02-23 10:39:09', '2021-02-23 10:39:09', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(352, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 17 & Ep 18 | RECAP', 'https://i.ytimg.com/vi/XFh0qoUlrQg/hqdefault.jpg', '2020-12-11T10:54:43Z', '36', 'XFh0qoUlrQg', 'PT8M28S', '64161', '570', '38', '19', '1', '2021-02-23 10:39:10', '2021-02-23 10:39:10', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(353, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 13 & Ep 14 | RECAP', 'https://i.ytimg.com/vi/8NN_PHiwcZk/hqdefault.jpg', '2020-12-05T11:57:33Z', '37', '8NN_PHiwcZk', 'PT8M43S', '262486', '2281', '167', '45', '1', '2021-02-23 10:39:11', '2021-02-23 10:39:11', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(354, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 14 & Ep 15 | RECAP', 'https://i.ytimg.com/vi/kFNZ9uy8Tk0/hqdefault.jpg', '2020-12-05T10:42:34Z', '38', 'kFNZ9uy8Tk0', 'PT8M38S', '102623', '921', '38', '25', '1', '2021-02-23 10:39:11', '2021-02-23 10:39:11', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(355, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 11 & Ep 12 | RECAP', 'https://i.ytimg.com/vi/EuBVXE9IYLg/hqdefault.jpg', '2020-12-03T10:30:01Z', '39', 'EuBVXE9IYLg', 'PT8M46S', '51074', '556', '35', '28', '1', '2021-02-23 10:39:12', '2021-02-23 10:39:12', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(356, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 2 & Ep 3 | RECAP', 'https://i.ytimg.com/vi/zfg-8hwj7D8/hqdefault.jpg', '2020-11-20T10:30:04Z', '40', 'zfg-8hwj7D8', 'PT8M30S', '228376', '2634', '178', '124', '1', '2021-02-23 10:39:12', '2021-02-23 10:39:12', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(357, 'Kaatelal & Sons | कातेलाल एंड सन्स | Ep 1 & Ep 2 | RECAP', 'https://i.ytimg.com/vi/VlgygnKk8xw/hqdefault.jpg', '2020-11-19T10:30:02Z', '41', 'VlgygnKk8xw', 'PT8M45S', '515063', '5670', '461', '240', '1', '2021-02-23 10:39:13', '2021-02-23 10:39:13', 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', '38'),
(358, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64138', '583', '16', '8', '1', '2021-02-23 10:39:52', '2021-02-23 10:39:52', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '39'),
(359, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351111', '3241', '177', '322', '1', '2021-02-23 10:39:52', '2021-02-23 10:39:52', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '39'),
(360, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37084', '323', '24', '25', '1', '2021-02-23 10:39:53', '2021-02-23 10:39:53', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '39'),
(361, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '1', '2021-02-23 10:39:54', '2021-02-23 10:39:54', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '39'),
(362, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64138', '583', '16', '8', '1', '2021-02-23 12:01:18', '2021-02-23 12:01:18', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '40'),
(363, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351112', '3241', '177', '322', '1', '2021-02-23 12:01:19', '2021-02-23 12:01:19', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '40'),
(364, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37084', '323', '24', '25', '1', '2021-02-23 12:01:20', '2021-02-23 12:01:20', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '40');
INSERT INTO `playlistitems` (`id`, `title`, `imgurl`, `publishedAt`, `position`, `videoId`, `videoLength`, `viewCount`, `likeCount`, `dislikeCount`, `commentCount`, `user_id`, `created_at`, `updated_at`, `playlistId`, `version`) VALUES
(365, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80952', '744', '27', '13', '1', '2021-02-23 12:01:20', '2021-02-23 12:01:20', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '40'),
(366, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64351', '586', '16', '8', '1', '2021-03-02 16:26:32', '2021-03-02 16:26:32', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '41'),
(367, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351490', '3245', '177', '322', '1', '2021-03-02 16:26:32', '2021-03-02 16:26:32', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '41'),
(368, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37144', '324', '24', '25', '1', '2021-03-02 16:26:33', '2021-03-02 16:26:33', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '41'),
(369, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80956', '744', '27', '13', '1', '2021-03-02 16:26:33', '2021-03-02 16:26:33', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '41'),
(370, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64352', '586', '16', '8', '1', '2021-03-02 17:47:51', '2021-03-02 17:47:51', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '42'),
(371, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351494', '3245', '177', '322', '1', '2021-03-02 17:47:51', '2021-03-02 17:47:51', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '42'),
(372, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37144', '324', '24', '25', '1', '2021-03-02 17:47:53', '2021-03-02 17:47:53', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '42'),
(373, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80956', '744', '27', '13', '1', '2021-03-02 17:47:54', '2021-03-02 17:47:54', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '42'),
(374, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64353', '586', '16', '8', '1', '2021-03-02 18:04:25', '2021-03-02 18:04:25', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '43'),
(375, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351494', '3245', '177', '322', '1', '2021-03-02 18:04:25', '2021-03-02 18:04:25', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '43'),
(376, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37144', '324', '24', '25', '1', '2021-03-02 18:04:26', '2021-03-02 18:04:26', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '43'),
(377, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80956', '744', '27', '13', '1', '2021-03-02 18:04:27', '2021-03-02 18:04:27', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '43'),
(378, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64353', '586', '16', '8', '1', '2021-03-02 18:15:44', '2021-03-02 18:15:44', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '44'),
(379, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351495', '3245', '177', '322', '1', '2021-03-02 18:15:44', '2021-03-02 18:15:44', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '44'),
(380, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37144', '324', '24', '25', '1', '2021-03-02 18:15:45', '2021-03-02 18:15:45', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '44'),
(381, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80956', '744', '27', '13', '1', '2021-03-02 18:15:46', '2021-03-02 18:15:46', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '44'),
(382, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64353', '586', '16', '8', '1', '2021-03-02 18:34:15', '2021-03-02 18:34:15', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '45'),
(383, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351495', '3245', '177', '322', '1', '2021-03-02 18:34:16', '2021-03-02 18:34:16', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '45'),
(384, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37144', '324', '24', '25', '1', '2021-03-02 18:34:16', '2021-03-02 18:34:16', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '45'),
(385, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80957', '744', '27', '13', '1', '2021-03-02 18:34:16', '2021-03-02 18:34:16', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '45'),
(386, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64354', '586', '16', '8', '1', '2021-03-02 18:57:59', '2021-03-02 18:57:59', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '46'),
(387, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351495', '3245', '177', '322', '1', '2021-03-02 18:58:00', '2021-03-02 18:58:00', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '46'),
(388, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37144', '324', '24', '25', '1', '2021-03-02 18:58:00', '2021-03-02 18:58:00', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '46'),
(389, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80957', '744', '27', '13', '1', '2021-03-02 18:58:00', '2021-03-02 18:58:00', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '46'),
(390, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64423', '589', '16', '8', '1', '2021-03-04 09:28:12', '2021-03-04 09:28:12', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '47'),
(391, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351554', '3246', '177', '323', '1', '2021-03-04 09:28:13', '2021-03-04 09:28:13', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '47'),
(392, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37151', '324', '24', '25', '1', '2021-03-04 09:28:14', '2021-03-04 09:28:14', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '47'),
(393, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80957', '744', '27', '13', '1', '2021-03-04 09:28:14', '2021-03-04 09:28:14', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '47'),
(394, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64423', '589', '16', '8', '1', '2021-03-04 09:29:12', '2021-03-04 09:29:12', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '48'),
(395, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351554', '3246', '177', '323', '1', '2021-03-04 09:29:12', '2021-03-04 09:29:12', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '48'),
(396, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37151', '324', '24', '25', '1', '2021-03-04 09:29:13', '2021-03-04 09:29:13', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '48'),
(397, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80957', '744', '27', '13', '1', '2021-03-04 09:29:14', '2021-03-04 09:29:14', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '48'),
(398, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64423', '589', '16', '8', '1', '2021-03-04 09:31:38', '2021-03-04 09:31:38', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '49'),
(399, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '351554', '3246', '177', '323', '1', '2021-03-04 09:31:39', '2021-03-04 09:31:39', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '49'),
(400, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37151', '324', '24', '25', '1', '2021-03-04 09:31:40', '2021-03-04 09:31:40', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '49'),
(401, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '80957', '744', '27', '13', '1', '2021-03-04 09:31:40', '2021-03-04 09:31:40', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '49'),
(406, 'Mere Dad Ki Dulhan Drama with HD+', 'https://i.ytimg.com/vi/S6XGydk0fos/hqdefault.jpg', '2019-09-24T05:39:37Z', '1', 'S6XGydk0fos', 'PT50S', '64937', '603', '16', '8', '9', '2021-03-19 14:17:53', '2021-03-19 14:17:53', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '50'),
(407, '#Mere Dad Ki Dulhan - Varun Badola, Shweta Tiwari, Anjali Tatrari \"Star Cast interview ?', 'https://i.ytimg.com/vi/UPHiSlm2Qhs/hqdefault.jpg', '2020-01-24T04:54:44Z', '2', 'UPHiSlm2Qhs', 'PT9M45S', '352390', '3254', '177', '322', '9', '2021-03-19 14:17:53', '2021-03-19 14:17:53', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '50'),
(408, 'Shweta Tiwari Back On Small Screen With A New Show MERE DAD KI DULHAN | Promo & Full Details', 'https://i.ytimg.com/vi/0dO9JgnFwJc/hqdefault.jpg', '2019-09-23T09:45:01Z', '4', '0dO9JgnFwJc', 'PT5M9S', '37221', '327', '24', '25', '9', '2021-03-19 14:17:54', '2021-03-19 14:17:54', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '50'),
(409, 'Mere Dad Ki Dulhan | Does Amber Need A New Companion? | Monday - Friday At 10 PM | Promo', 'https://i.ytimg.com/vi/bNB--zFilFE/hqdefault.jpg', '2019-12-29T07:46:46Z', '5', 'bNB--zFilFE', 'PT40S', '81013', '744', '27', '15', '9', '2021-03-19 14:17:54', '2021-03-19 14:17:54', 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', '50');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_db`
--

CREATE TABLE `playlist_db` (
  `id` int(10) UNSIGNED NOT NULL,
  `playlistId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `videoCount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlist_db`
--

INSERT INTO `playlist_db` (`id`, `playlistId`, `title`, `imgurl`, `videoCount`, `created_at`, `updated_at`, `user_id`, `version`) VALUES
(1, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-09 16:23:45', '2021-01-09 16:23:45', 1, '1'),
(2, 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', 'Kaatelal And Sons | New Episodes | RECAP', 'https://i.ytimg.com/vi/Qe9GMiP4bfs/hqdefault.jpg', '7', '2021-01-09 16:23:55', '2021-01-09 16:23:55', 1, '1'),
(3, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-09 17:12:56', '2021-01-09 17:12:56', 1, '2'),
(4, 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', 'Kaatelal And Sons | New Episodes | RECAP', 'https://i.ytimg.com/vi/Qe9GMiP4bfs/hqdefault.jpg', '7', '2021-01-09 17:13:06', '2021-01-09 17:13:06', 1, '2'),
(5, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-17 15:51:22', '2021-01-17 15:51:22', 1, '3'),
(6, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-18 10:15:14', '2021-01-18 10:15:14', 1, '4'),
(7, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-18 10:46:22', '2021-01-18 10:46:22', 1, '5'),
(8, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-20 15:31:41', '2021-01-20 15:31:41', 1, '6'),
(9, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-27 10:11:11', '2021-01-27 10:11:11', 1, '7'),
(10, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-27 10:35:41', '2021-01-27 10:35:41', 1, '8'),
(11, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-27 11:30:22', '2021-01-27 11:30:22', 2, '9'),
(12, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-01-27 17:59:06', '2021-01-27 17:59:06', 1, '10'),
(13, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-05 19:06:56', '2021-02-05 19:06:56', 1, '11'),
(14, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-05 19:45:08', '2021-02-05 19:45:08', 1, '12'),
(15, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-06 17:50:08', '2021-02-06 17:50:08', 1, '13'),
(16, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-06 22:26:01', '2021-02-06 22:26:01', 1, '14'),
(17, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-08 22:42:22', '2021-02-08 22:42:22', 4, '17'),
(18, 'FL3r_YmePLdLXgisaYYAiSBw', 'Favorites', 'https://i.ytimg.com/vi/pYksOCzyVNw/hqdefault.jpg', '7', '2021-02-08 22:44:53', '2021-02-08 22:44:53', 4, '17'),
(19, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-10 10:32:53', '2021-02-10 10:32:53', 1, '18'),
(20, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-10 11:05:38', '2021-02-10 11:05:38', 1, '19'),
(21, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-10 15:53:15', '2021-02-10 15:53:15', 1, '20'),
(22, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-16 22:04:18', '2021-02-16 22:04:18', 7, '29'),
(23, 'PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk', 'PYTHON PROGRAMMING FOR BEGINNERS', 'https://i.ytimg.com/vi/fEsHK2OzTd4/hqdefault.jpg', '81', '2021-02-16 22:13:21', '2021-02-16 22:13:21', 7, '29'),
(24, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-17 13:50:15', '2021-02-17 13:50:15', 6, '30'),
(25, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-17 15:28:39', '2021-02-17 15:28:39', 1, '31'),
(26, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-17 15:30:04', '2021-02-17 15:30:04', 1, '32'),
(27, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-17 18:42:00', '2021-02-17 18:42:00', 1, '33'),
(28, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-17 18:46:36', '2021-02-17 18:46:36', 1, '34'),
(29, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-19 16:18:13', '2021-02-19 16:18:13', 1, '36'),
(32, 'PL9bw4S5ePsEEjef2W0J2wUr_4OnCCtbGG', 'Shahid Kapoor: Super-Hit Songs', 'https://i.ytimg.com/vi/VOLKJJvfAbg/hqdefault.jpg', '60', '2021-02-19 22:41:09', '2021-02-19 22:41:09', 6, '30'),
(33, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-20 22:10:34', '2021-02-20 22:10:34', 4, '37'),
(34, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-23 10:38:39', '2021-02-23 10:38:39', 1, '38'),
(35, 'PL6Rtnh6YJK7ZkEmf0jRn_2DHYIEZiVxkg', 'Kaatelal And Sons | New Episodes | RECAP', 'https://i.ytimg.com/vi/Owa-Ct_tbfs/hqdefault.jpg', '42', '2021-02-23 10:38:51', '2021-02-23 10:38:51', 1, '38'),
(36, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-23 10:39:50', '2021-02-23 10:39:50', 1, '39'),
(37, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-02-23 12:01:17', '2021-02-23 12:01:17', 1, '40'),
(38, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-02 16:26:31', '2021-03-02 16:26:31', 1, '41'),
(39, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-02 17:47:49', '2021-03-02 17:47:49', 1, '42'),
(40, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-02 18:04:23', '2021-03-02 18:04:23', 1, '43'),
(41, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-02 18:15:42', '2021-03-02 18:15:42', 1, '44'),
(42, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-02 18:34:14', '2021-03-02 18:34:14', 1, '45'),
(43, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-02 18:57:59', '2021-03-02 18:57:59', 1, '46'),
(44, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-04 09:28:11', '2021-03-04 09:28:11', 1, '47'),
(45, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-04 09:29:10', '2021-03-04 09:29:10', 1, '48'),
(46, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-04 09:31:37', '2021-03-04 09:31:37', 1, '49'),
(48, 'PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn', 'Mere dad ki dulhan', 'https://i.ytimg.com/vi/JHT8bqkA7g8/hqdefault.jpg', '4', '2021-03-19 14:17:52', '2021-03-19 14:17:52', 9, '50');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `developername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packagename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `fullname`, `username`, `developername`, `address`, `city`, `state`, `zip`, `packagename`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Vishal maurya', 'vishalmaurya6195', 'vishalmaurya jjkh', 'aaaaaaaaa', 'aaaa', 'aaaaaaa', '2222', NULL, '1', '2021-01-09 16:22:03', '2021-02-19 16:37:38'),
(2, 'Vishal maurya', 'maharaja', '1000vishamaha', 'aaaaaaaaa', 'aaaa', 'aaaaaaa', '2222', NULL, '2', '2021-01-27 10:37:52', '2021-01-27 10:37:52'),
(3, 'Rajdeep shah', 'rajdeep.raj.712', '1000Rajdeep', 'Roorkee', 'Roorkee', 'Uttarakhand', '247667', NULL, '3', '2021-02-03 18:36:08', '2021-02-03 18:36:08'),
(4, 'Test name', 'info', '1000testdeveloepr', 'address', 'city', 'HM', '400001', NULL, '4', '2021-02-08 22:22:57', '2021-02-08 22:22:57'),
(5, 'Jesswin Chetnani', 'chetnanijesswin', '1000jesse', 'T.R.S 105,WARD 4/A, NEAR SINDHOLOGY SCHOOL', 'Adipur', 'Gujarat', '370205', NULL, '6', '2021-02-15 16:11:58', '2021-02-15 16:11:58'),
(6, 'Jesswin Chetnani', 'chetnanijesswin', '1000jesse', 'T.R.S 105,WARD 4/A, NEAR SINDHOLOGY SCHOOL', 'Adipur', 'Gujarat', '370205', NULL, '6', '2021-02-15 17:26:23', '2021-02-15 17:26:23'),
(7, 'test user', 'abc', 'abcdef', 'address', 'city', 'state', 'jhsjh', NULL, '7', '2021-02-16 21:54:26', '2021-02-16 21:55:16'),
(8, 'rajesh-rxa', 'rajesh.rxca', '1000i.raj3sh', '1234 abc street', 'cde', 'eef', '898989', NULL, '9', '2021-03-19 14:03:48', '2021-03-19 14:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vishal maurya', 'vishalmaurya6195@gmail.com', NULL, '$2y$10$NtrKSLsMTZdswwUEWYBrLuBmxDt6WeI1FxXHICwz7ojPjLlqv8ari', NULL, '2021-01-09 16:21:21', '2021-01-09 16:21:21'),
(2, 'maharaja', 'maharaja@gmail.com', NULL, '$2y$10$Q1ROcDo9HD97mE7hswhamelpmw.mK0RzGM7/VCr5lO3.EcpxvMpWe', NULL, '2021-01-27 10:36:57', '2021-01-27 10:36:57'),
(3, 'Rajdeep', 'rajdeep.raj.712@gmail.com', NULL, '$2y$10$Vls2W8Cie34hYJf6CHrAROMwyw9C4Bfj38CvrYVby1RDh1hngPonq', NULL, '2021-02-03 18:35:25', '2021-02-03 18:35:25'),
(4, 'Test', 'info@grablor.com', NULL, '$2y$10$Rbf9Joc49R/neUzsg/WEaekBcko3H78dj7lhEZlu0rmaCmC.ipHma', 'fXCsCw1pMbLNr9l3uD8pvjS2TnssNuVgHTT6nCGYrou3RSeUVdsMXOrErP3a', '2021-02-08 22:16:28', '2021-02-08 22:16:28'),
(5, 'jesswin', 'jesswinchetnani@gmail.com', NULL, '$2y$10$Pt0YJcsbDLNNuccAmdPaQ.UyXpqE/GhESG2fx9CFY2Gv5TBIQe4Ea', NULL, '2021-02-12 11:46:57', '2021-02-12 11:46:57'),
(6, 'Jesswin', 'chetnanijesswin@gmail.com', NULL, '$2y$10$FBD/2dXOtNdFWoxU/scIeO/eJejY.XIONlw1WDu4Lcock5KLsV5ye', NULL, '2021-02-15 16:11:27', '2021-02-15 16:11:27'),
(7, 'tset2', 'abc@gmail.com', NULL, '$2y$10$QrPmeK1/AkOGzSHTxxlPiuoa7bDRoQNjTYVs6eibHYd8efQjhGGq6', NULL, '2021-02-16 21:51:28', '2021-02-16 21:51:28'),
(8, 'ihliu', 'vishalmauryhhha6195@gmail.com', NULL, '$2y$10$CPn54jn85OCjRVIi8QtFHexfMuk6X6AjBbdQWLzBHRbyOYFa0AEwy', NULL, '2021-02-19 16:41:23', '2021-02-19 16:41:23'),
(9, 'rajesh', 'rajesh.rxca@gmail.com', NULL, '$2y$10$eLqEwycecMuwSFilbDTVQ.u2hLFr/tHM3Dw3zUctwItP9Asf6l0oq', NULL, '2021-03-19 14:00:45', '2021-03-19 14:00:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createapp`
--
ALTER TABLE `createapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `formusers`
--
ALTER TABLE `formusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `playlistitems`
--
ALTER TABLE `playlistitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_db`
--
ALTER TABLE `playlist_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `createapp`
--
ALTER TABLE `createapp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formusers`
--
ALTER TABLE `formusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `playlistitems`
--
ALTER TABLE `playlistitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT for table `playlist_db`
--
ALTER TABLE `playlist_db`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
