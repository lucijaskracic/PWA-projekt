-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 11:12 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vjesti`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_croatian_ci NOT NULL,
  `surname` varchar(64) COLLATE utf8mb4_croatian_ci NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_croatian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_croatian_ci NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `name`, `surname`, `username`, `password`, `level`) VALUES
(1, 'Lucija', 'Skračić', 'Nom', '$2y$10$WLkUwG.p5znCVvEYLVLKzekqdS4x/6BxF.rijUnL11YMvL4QR7/Li', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vjest`
--

CREATE TABLE `vjest` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_croatian_ci NOT NULL,
  `imageSrc` varchar(255) COLLATE utf8mb4_croatian_ci NOT NULL,
  `archive` tinyint(1) NOT NULL,
  `shortCont` text COLLATE utf8mb4_croatian_ci NOT NULL,
  `cont` text COLLATE utf8mb4_croatian_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `vjest`
--

INSERT INTO `vjest` (`id`, `title`, `imageSrc`, `archive`, `shortCont`, `cont`, `category`) VALUES
(1, 'Patch 14.11 Notes', 'lolscreen.jpg', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper. Vestibulum ac ullamcorper ex. Nulla aliquet turpis vel orci varius, et mollis neque condimentum. Phasellus tincidunt turpis et malesuada dapibus. Suspendisse ut porta mi. In sodales nibh ac finibus feugiat. Aenean vehicula elit id consequat bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed congue, mi id eleifend dictum, velit urna consectetur arcu, vitae consectetur velit dolor sed nulla. Nunc elementum tellus tellus. Quisque ut varius diam, id porttitor leo. Phasellus sit amet magna eget leo consequat molestie. Duis diam ex, eleifend sit amet porttitor nec, faucibus et mi. In eget mauris ullamcorper ligula facilisis vehicula in sed ex.\r\n\r\nMorbi laoreet vestibulum nisi, quis condimentum nibh rhoncus in. Nam lacinia ante ut metus venenatis, non iaculis sapien blandit. Mauris mattis magna at tortor suscipit lacinia sit amet id justo. Donec venenatis, tortor varius suscipit mollis, ex justo posuere ante, at laoreet erat diam ut purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut nec sollicitudin orci. Duis diam mi, ultricies non fringilla eget, euismod non dolor. Maecenas consequat dolor eu felis sollicitudin, vel facilisis nisl elementum. Donec eget pellentesque massa, a facilisis ante. Fusce in blandit eros.\r\n\r\nInteger et elit pharetra, hendrerit eros at, commodo neque. In sit amet lorem venenatis, sodales felis sed, vehicula tortor. Mauris pellentesque mi sed augue auctor, non bibendum nunc euismod. Aliquam posuere porta velit, sit amet gravida justo ornare vitae. Maecenas sit amet nisi scelerisque, maximus nunc at, semper ante. Pellentesque sed erat molestie augue varius placerat aliquet et urna. Etiam quis hendrerit eros, quis pellentesque erat. Vivamus eu nisl in ipsum blandit gravida. Aliquam diam ex, ornare at lectus in, dapibus gravida augue. Fusce et nulla ligula.\r\n\r\nAliquam semper sollicitudin accumsan. Donec blandit feugiat tempus. Cras at dictum orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris nisl tellus, commodo quis lacus at, congue cursus arcu. Suspendisse interdum lectus porttitor, ornare nunc imperdiet, tincidunt odio. In a magna in metus laoreet ullamcorper. Sed luctus elementum lectus, eget convallis enim lobortis vel. Pellentesque vel urna bibendum, tempus turpis sit amet, hendrerit neque. Vestibulum ac arcu et magna tristique rhoncus.\r\n\r\nSuspendisse massa mi, vehicula eget augue at, pulvinar elementum dui. Aenean pulvinar mollis est sed efficitur. Proin in justo dignissim, porta sem quis, vestibulum neque. Nulla bibendum auctor nisi, a scelerisque augue sagittis id. Sed a quam a purus vulputate faucibus. Aenean pharetra nibh nec libero dictum, sit amet gravida odio finibus. Aliquam vitae diam a mi blandit scelerisque vitae vel felis. Duis vulputate nulla non leo faucibus, et euismod dui sodales. Phasellus a arcu scelerisque, aliquam neque nec, imperdiet mi. Vivamus interdum lectus at ex sollicitudin, eget suscipit quam rutrum. Vivamus id ornare massa, et accumsan arcu. Ut semper, diam ac semper sodales, mauris lorem porttitor enim, ut tincidunt purus urna ac libero.', 'LeagueOfLegends'),
(2, 'Patch 14.12 Notes', 'lolscreen.jpg', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper. Vestibulum ac ullamcorper ex. Nulla aliquet turpis vel orci varius, et mollis neque condimentum. Phasellus tincidunt turpis et malesuada dapibus. Suspendisse ut porta mi. In sodales nibh ac finibus feugiat. Aenean vehicula elit id consequat bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed congue, mi id eleifend dictum, velit urna consectetur arcu, vitae consectetur velit dolor sed nulla. Nunc elementum tellus tellus. Quisque ut varius diam, id porttitor leo. Phasellus sit amet magna eget leo consequat molestie. Duis diam ex, eleifend sit amet porttitor nec, faucibus et mi. In eget mauris ullamcorper ligula facilisis vehicula in sed ex.\r\n\r\nMorbi laoreet vestibulum nisi, quis condimentum nibh rhoncus in. Nam lacinia ante ut metus venenatis, non iaculis sapien blandit. Mauris mattis magna at tortor suscipit lacinia sit amet id justo. Donec venenatis, tortor varius suscipit mollis, ex justo posuere ante, at laoreet erat diam ut purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut nec sollicitudin orci. Duis diam mi, ultricies non fringilla eget, euismod non dolor. Maecenas consequat dolor eu felis sollicitudin, vel facilisis nisl elementum. Donec eget pellentesque massa, a facilisis ante. Fusce in blandit eros.\r\n\r\nInteger et elit pharetra, hendrerit eros at, commodo neque. In sit amet lorem venenatis, sodales felis sed, vehicula tortor. Mauris pellentesque mi sed augue auctor, non bibendum nunc euismod. Aliquam posuere porta velit, sit amet gravida justo ornare vitae. Maecenas sit amet nisi scelerisque, maximus nunc at, semper ante. Pellentesque sed erat molestie augue varius placerat aliquet et urna. Etiam quis hendrerit eros, quis pellentesque erat. Vivamus eu nisl in ipsum blandit gravida. Aliquam diam ex, ornare at lectus in, dapibus gravida augue. Fusce et nulla ligula.\r\n\r\nAliquam semper sollicitudin accumsan. Donec blandit feugiat tempus. Cras at dictum orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris nisl tellus, commodo quis lacus at, congue cursus arcu. Suspendisse interdum lectus porttitor, ornare nunc imperdiet, tincidunt odio. In a magna in metus laoreet ullamcorper. Sed luctus elementum lectus, eget convallis enim lobortis vel. Pellentesque vel urna bibendum, tempus turpis sit amet, hendrerit neque. Vestibulum ac arcu et magna tristique rhoncus.\r\n\r\nSuspendisse massa mi, vehicula eget augue at, pulvinar elementum dui. Aenean pulvinar mollis est sed efficitur. Proin in justo dignissim, porta sem quis, vestibulum neque. Nulla bibendum auctor nisi, a scelerisque augue sagittis id. Sed a quam a purus vulputate faucibus. Aenean pharetra nibh nec libero dictum, sit amet gravida odio finibus. Aliquam vitae diam a mi blandit scelerisque vitae vel felis. Duis vulputate nulla non leo faucibus, et euismod dui sodales. Phasellus a arcu scelerisque, aliquam neque nec, imperdiet mi. Vivamus interdum lectus at ex sollicitudin, eget suscipit quam rutrum. Vivamus id ornare massa, et accumsan arcu. Ut semper, diam ac semper sodales, mauris lorem porttitor enim, ut tincidunt purus urna ac libero.', 'LeagueOfLegends'),
(3, 'Arcane Season 2', 'arcane.webp', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper. Vestibulum ac ullamcorper ex. Nulla aliquet turpis vel orci varius, et mollis neque condimentum. Phasellus tincidunt turpis et malesuada dapibus. Suspendisse ut porta mi. In sodales nibh ac finibus feugiat. Aenean vehicula elit id consequat bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed congue, mi id eleifend dictum, velit urna consectetur arcu, vitae consectetur velit dolor sed nulla. Nunc elementum tellus tellus. Quisque ut varius diam, id porttitor leo. Phasellus sit amet magna eget leo consequat molestie. Duis diam ex, eleifend sit amet porttitor nec, faucibus et mi. In eget mauris ullamcorper ligula facilisis vehicula in sed ex.\r\n\r\nMorbi laoreet vestibulum nisi, quis condimentum nibh rhoncus in. Nam lacinia ante ut metus venenatis, non iaculis sapien blandit. Mauris mattis magna at tortor suscipit lacinia sit amet id justo. Donec venenatis, tortor varius suscipit mollis, ex justo posuere ante, at laoreet erat diam ut purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut nec sollicitudin orci. Duis diam mi, ultricies non fringilla eget, euismod non dolor. Maecenas consequat dolor eu felis sollicitudin, vel facilisis nisl elementum. Donec eget pellentesque massa, a facilisis ante. Fusce in blandit eros.\r\n\r\nInteger et elit pharetra, hendrerit eros at, commodo neque. In sit amet lorem venenatis, sodales felis sed, vehicula tortor. Mauris pellentesque mi sed augue auctor, non bibendum nunc euismod. Aliquam posuere porta velit, sit amet gravida justo ornare vitae. Maecenas sit amet nisi scelerisque, maximus nunc at, semper ante. Pellentesque sed erat molestie augue varius placerat aliquet et urna. Etiam quis hendrerit eros, quis pellentesque erat. Vivamus eu nisl in ipsum blandit gravida. Aliquam diam ex, ornare at lectus in, dapibus gravida augue. Fusce et nulla ligula.\r\n\r\nAliquam semper sollicitudin accumsan. Donec blandit feugiat tempus. Cras at dictum orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris nisl tellus, commodo quis lacus at, congue cursus arcu. Suspendisse interdum lectus porttitor, ornare nunc imperdiet, tincidunt odio. In a magna in metus laoreet ullamcorper. Sed luctus elementum lectus, eget convallis enim lobortis vel. Pellentesque vel urna bibendum, tempus turpis sit amet, hendrerit neque. Vestibulum ac arcu et magna tristique rhoncus.\r\n\r\nSuspendisse massa mi, vehicula eget augue at, pulvinar elementum dui. Aenean pulvinar mollis est sed efficitur. Proin in justo dignissim, porta sem quis, vestibulum neque. Nulla bibendum auctor nisi, a scelerisque augue sagittis id. Sed a quam a purus vulputate faucibus. Aenean pharetra nibh nec libero dictum, sit amet gravida odio finibus. Aliquam vitae diam a mi blandit scelerisque vitae vel felis. Duis vulputate nulla non leo faucibus, et euismod dui sodales. Phasellus a arcu scelerisque, aliquam neque nec, imperdiet mi. Vivamus interdum lectus at ex sollicitudin, eget suscipit quam rutrum. Vivamus id ornare massa, et accumsan arcu. Ut semper, diam ac semper sodales, mauris lorem porttitor enim, ut tincidunt purus urna ac libero.', 'LeagueOfLegends'),
(4, 'TFT 5-Year Bash', 'tft.webp', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper. Vestibulum ac ullamcorper ex. Nulla aliquet turpis vel orci varius, et mollis neque condimentum. Phasellus tincidunt turpis et malesuada dapibus. Suspendisse ut porta mi. In sodales nibh ac finibus feugiat. Aenean vehicula elit id consequat bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed congue, mi id eleifend dictum, velit urna consectetur arcu, vitae consectetur velit dolor sed nulla. Nunc elementum tellus tellus. Quisque ut varius diam, id porttitor leo. Phasellus sit amet magna eget leo consequat molestie. Duis diam ex, eleifend sit amet porttitor nec, faucibus et mi. In eget mauris ullamcorper ligula facilisis vehicula in sed ex.\r\n\r\nMorbi laoreet vestibulum nisi, quis condimentum nibh rhoncus in. Nam lacinia ante ut metus venenatis, non iaculis sapien blandit. Mauris mattis magna at tortor suscipit lacinia sit amet id justo. Donec venenatis, tortor varius suscipit mollis, ex justo posuere ante, at laoreet erat diam ut purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut nec sollicitudin orci. Duis diam mi, ultricies non fringilla eget, euismod non dolor. Maecenas consequat dolor eu felis sollicitudin, vel facilisis nisl elementum. Donec eget pellentesque massa, a facilisis ante. Fusce in blandit eros.\r\n\r\nInteger et elit pharetra, hendrerit eros at, commodo neque. In sit amet lorem venenatis, sodales felis sed, vehicula tortor. Mauris pellentesque mi sed augue auctor, non bibendum nunc euismod. Aliquam posuere porta velit, sit amet gravida justo ornare vitae. Maecenas sit amet nisi scelerisque, maximus nunc at, semper ante. Pellentesque sed erat molestie augue varius placerat aliquet et urna. Etiam quis hendrerit eros, quis pellentesque erat. Vivamus eu nisl in ipsum blandit gravida. Aliquam diam ex, ornare at lectus in, dapibus gravida augue. Fusce et nulla ligula.\r\n\r\nAliquam semper sollicitudin accumsan. Donec blandit feugiat tempus. Cras at dictum orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris nisl tellus, commodo quis lacus at, congue cursus arcu. Suspendisse interdum lectus porttitor, ornare nunc imperdiet, tincidunt odio. In a magna in metus laoreet ullamcorper. Sed luctus elementum lectus, eget convallis enim lobortis vel. Pellentesque vel urna bibendum, tempus turpis sit amet, hendrerit neque. Vestibulum ac arcu et magna tristique rhoncus.\r\n\r\nSuspendisse massa mi, vehicula eget augue at, pulvinar elementum dui. Aenean pulvinar mollis est sed efficitur. Proin in justo dignissim, porta sem quis, vestibulum neque. Nulla bibendum auctor nisi, a scelerisque augue sagittis id. Sed a quam a purus vulputate faucibus. Aenean pharetra nibh nec libero dictum, sit amet gravida odio finibus. Aliquam vitae diam a mi blandit scelerisque vitae vel felis. Duis vulputate nulla non leo faucibus, et euismod dui sodales. Phasellus a arcu scelerisque, aliquam neque nec, imperdiet mi. Vivamus interdum lectus at ex sollicitudin, eget suscipit quam rutrum. Vivamus id ornare massa, et accumsan arcu. Ut semper, diam ac semper sodales, mauris lorem porttitor enim, ut tincidunt purus urna ac libero.', 'LeagueOfLegends'),
(5, 'Baldurs Gate 3', 'bg3.jpg', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper. Vestibulum ac ullamcorper ex. Nulla aliquet turpis vel orci varius, et mollis neque condimentum. Phasellus tincidunt turpis et malesuada dapibus. Suspendisse ut porta mi. In sodales nibh ac finibus feugiat. Aenean vehicula elit id consequat bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed congue, mi id eleifend dictum, velit urna consectetur arcu, vitae consectetur velit dolor sed nulla. Nunc elementum tellus tellus. Quisque ut varius diam, id porttitor leo. Phasellus sit amet magna eget leo consequat molestie. Duis diam ex, eleifend sit amet porttitor nec, faucibus et mi. In eget mauris ullamcorper ligula facilisis vehicula in sed ex.\r\n\r\nMorbi laoreet vestibulum nisi, quis condimentum nibh rhoncus in. Nam lacinia ante ut metus venenatis, non iaculis sapien blandit. Mauris mattis magna at tortor suscipit lacinia sit amet id justo. Donec venenatis, tortor varius suscipit mollis, ex justo posuere ante, at laoreet erat diam ut purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut nec sollicitudin orci. Duis diam mi, ultricies non fringilla eget, euismod non dolor. Maecenas consequat dolor eu felis sollicitudin, vel facilisis nisl elementum. Donec eget pellentesque massa, a facilisis ante. Fusce in blandit eros.\r\n\r\nInteger et elit pharetra, hendrerit eros at, commodo neque. In sit amet lorem venenatis, sodales felis sed, vehicula tortor. Mauris pellentesque mi sed augue auctor, non bibendum nunc euismod. Aliquam posuere porta velit, sit amet gravida justo ornare vitae. Maecenas sit amet nisi scelerisque, maximus nunc at, semper ante. Pellentesque sed erat molestie augue varius placerat aliquet et urna. Etiam quis hendrerit eros, quis pellentesque erat. Vivamus eu nisl in ipsum blandit gravida. Aliquam diam ex, ornare at lectus in, dapibus gravida augue. Fusce et nulla ligula.\r\n\r\nAliquam semper sollicitudin accumsan. Donec blandit feugiat tempus. Cras at dictum orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris nisl tellus, commodo quis lacus at, congue cursus arcu. Suspendisse interdum lectus porttitor, ornare nunc imperdiet, tincidunt odio. In a magna in metus laoreet ullamcorper. Sed luctus elementum lectus, eget convallis enim lobortis vel. Pellentesque vel urna bibendum, tempus turpis sit amet, hendrerit neque. Vestibulum ac arcu et magna tristique rhoncus.\r\n\r\nSuspendisse massa mi, vehicula eget augue at, pulvinar elementum dui. Aenean pulvinar mollis est sed efficitur. Proin in justo dignissim, porta sem quis, vestibulum neque. Nulla bibendum auctor nisi, a scelerisque augue sagittis id. Sed a quam a purus vulputate faucibus. Aenean pharetra nibh nec libero dictum, sit amet gravida odio finibus. Aliquam vitae diam a mi blandit scelerisque vitae vel felis. Duis vulputate nulla non leo faucibus, et euismod dui sodales. Phasellus a arcu scelerisque, aliquam neque nec, imperdiet mi. Vivamus interdum lectus at ex sollicitudin, eget suscipit quam rutrum. Vivamus id ornare massa, et accumsan arcu. Ut semper, diam ac semper sodales, mauris lorem porttitor enim, ut tincidunt purus urna ac libero.', 'Other'),
(6, 'Assassins Creed', 'assassinsscreed.webp', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper. Vestibulum ac ullamcorper ex. Nulla aliquet turpis vel orci varius, et mollis neque condimentum. Phasellus tincidunt turpis et malesuada dapibus. Suspendisse ut porta mi. In sodales nibh ac finibus feugiat. Aenean vehicula elit id consequat bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed congue, mi id eleifend dictum, velit urna consectetur arcu, vitae consectetur velit dolor sed nulla. Nunc elementum tellus tellus. Quisque ut varius diam, id porttitor leo. Phasellus sit amet magna eget leo consequat molestie. Duis diam ex, eleifend sit amet porttitor nec, faucibus et mi. In eget mauris ullamcorper ligula facilisis vehicula in sed ex.\r\n\r\nMorbi laoreet vestibulum nisi, quis condimentum nibh rhoncus in. Nam lacinia ante ut metus venenatis, non iaculis sapien blandit. Mauris mattis magna at tortor suscipit lacinia sit amet id justo. Donec venenatis, tortor varius suscipit mollis, ex justo posuere ante, at laoreet erat diam ut purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut nec sollicitudin orci. Duis diam mi, ultricies non fringilla eget, euismod non dolor. Maecenas consequat dolor eu felis sollicitudin, vel facilisis nisl elementum. Donec eget pellentesque massa, a facilisis ante. Fusce in blandit eros.\r\n\r\nInteger et elit pharetra, hendrerit eros at, commodo neque. In sit amet lorem venenatis, sodales felis sed, vehicula tortor. Mauris pellentesque mi sed augue auctor, non bibendum nunc euismod. Aliquam posuere porta velit, sit amet gravida justo ornare vitae. Maecenas sit amet nisi scelerisque, maximus nunc at, semper ante. Pellentesque sed erat molestie augue varius placerat aliquet et urna. Etiam quis hendrerit eros, quis pellentesque erat. Vivamus eu nisl in ipsum blandit gravida. Aliquam diam ex, ornare at lectus in, dapibus gravida augue. Fusce et nulla ligula.\r\n\r\nAliquam semper sollicitudin accumsan. Donec blandit feugiat tempus. Cras at dictum orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris nisl tellus, commodo quis lacus at, congue cursus arcu. Suspendisse interdum lectus porttitor, ornare nunc imperdiet, tincidunt odio. In a magna in metus laoreet ullamcorper. Sed luctus elementum lectus, eget convallis enim lobortis vel. Pellentesque vel urna bibendum, tempus turpis sit amet, hendrerit neque. Vestibulum ac arcu et magna tristique rhoncus.\r\n\r\nSuspendisse massa mi, vehicula eget augue at, pulvinar elementum dui. Aenean pulvinar mollis est sed efficitur. Proin in justo dignissim, porta sem quis, vestibulum neque. Nulla bibendum auctor nisi, a scelerisque augue sagittis id. Sed a quam a purus vulputate faucibus. Aenean pharetra nibh nec libero dictum, sit amet gravida odio finibus. Aliquam vitae diam a mi blandit scelerisque vitae vel felis. Duis vulputate nulla non leo faucibus, et euismod dui sodales. Phasellus a arcu scelerisque, aliquam neque nec, imperdiet mi. Vivamus interdum lectus at ex sollicitudin, eget suscipit quam rutrum. Vivamus id ornare massa, et accumsan arcu. Ut semper, diam ac semper sodales, mauris lorem porttitor enim, ut tincidunt purus urna ac libero.', 'Other'),
(7, 'Genshin Impact', 'genshinimp.webp', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat facilisis dolor facilisis efficitur. Integer varius ultricies sollicitudin. Nullam consectetur leo nec lectus posuere, quis viverra lorem semper. Vestibulum ac ullamcorper ex. Nulla aliquet turpis vel orci varius, et mollis neque condimentum. Phasellus tincidunt turpis et malesuada dapibus. Suspendisse ut porta mi. In sodales nibh ac finibus feugiat. Aenean vehicula elit id consequat bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed congue, mi id eleifend dictum, velit urna consectetur arcu, vitae consectetur velit dolor sed nulla. Nunc elementum tellus tellus. Quisque ut varius diam, id porttitor leo. Phasellus sit amet magna eget leo consequat molestie. Duis diam ex, eleifend sit amet porttitor nec, faucibus et mi. In eget mauris ullamcorper ligula facilisis vehicula in sed ex.\r\n\r\nMorbi laoreet vestibulum nisi, quis condimentum nibh rhoncus in. Nam lacinia ante ut metus venenatis, non iaculis sapien blandit. Mauris mattis magna at tortor suscipit lacinia sit amet id justo. Donec venenatis, tortor varius suscipit mollis, ex justo posuere ante, at laoreet erat diam ut purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut nec sollicitudin orci. Duis diam mi, ultricies non fringilla eget, euismod non dolor. Maecenas consequat dolor eu felis sollicitudin, vel facilisis nisl elementum. Donec eget pellentesque massa, a facilisis ante. Fusce in blandit eros.\r\n\r\nInteger et elit pharetra, hendrerit eros at, commodo neque. In sit amet lorem venenatis, sodales felis sed, vehicula tortor. Mauris pellentesque mi sed augue auctor, non bibendum nunc euismod. Aliquam posuere porta velit, sit amet gravida justo ornare vitae. Maecenas sit amet nisi scelerisque, maximus nunc at, semper ante. Pellentesque sed erat molestie augue varius placerat aliquet et urna. Etiam quis hendrerit eros, quis pellentesque erat. Vivamus eu nisl in ipsum blandit gravida. Aliquam diam ex, ornare at lectus in, dapibus gravida augue. Fusce et nulla ligula.\r\n\r\nAliquam semper sollicitudin accumsan. Donec blandit feugiat tempus. Cras at dictum orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris nisl tellus, commodo quis lacus at, congue cursus arcu. Suspendisse interdum lectus porttitor, ornare nunc imperdiet, tincidunt odio. In a magna in metus laoreet ullamcorper. Sed luctus elementum lectus, eget convallis enim lobortis vel. Pellentesque vel urna bibendum, tempus turpis sit amet, hendrerit neque. Vestibulum ac arcu et magna tristique rhoncus.\r\n\r\nSuspendisse massa mi, vehicula eget augue at, pulvinar elementum dui. Aenean pulvinar mollis est sed efficitur. Proin in justo dignissim, porta sem quis, vestibulum neque. Nulla bibendum auctor nisi, a scelerisque augue sagittis id. Sed a quam a purus vulputate faucibus. Aenean pharetra nibh nec libero dictum, sit amet gravida odio finibus. Aliquam vitae diam a mi blandit scelerisque vitae vel felis. Duis vulputate nulla non leo faucibus, et euismod dui sodales. Phasellus a arcu scelerisque, aliquam neque nec, imperdiet mi. Vivamus interdum lectus at ex sollicitudin, eget suscipit quam rutrum. Vivamus id ornare massa, et accumsan arcu. Ut semper, diam ac semper sodales, mauris lorem porttitor enim, ut tincidunt purus urna ac libero.', 'Other');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vjest`
--
ALTER TABLE `vjest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vjest`
--
ALTER TABLE `vjest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;