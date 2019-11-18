-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2019 at 05:48 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `password` varchar(333) NOT NULL,
  `email` varchar(333) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`password`, `email`) VALUES
('admin', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `Product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(16, 'Appetizers'),
(17, 'Pizza'),
(18, 'Set Menu'),
(19, 'Beverages'),
(20, 'Side Items'),
(21, 'Desserts'),
(23, 'Combo Pack'),
(24, 'Buffet Item'),
(25, 'Salads'),
(27, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `item` text NOT NULL,
  `itemid` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateOrdered` varchar(100) NOT NULL,
  `dateDelivered` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `voter_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `contact`, `address`, `email`, `item`, `itemid`, `amount`, `status`, `dateOrdered`, `dateDelivered`, `userid`, `voter_id`) VALUES
(13, 'Saurav', '01723462163', 'Holding no. 5,Badda, Dhaka', 'badol@gmail.com', '(2) Black Forest Cake, (1) Caremal Coffee, ', 0, '100', 'delivered', '05/22/18 03:34:16 AM', '05/22/18 01:34:54 AM', 0, 0),
(14, 'Rafi', '01521442995', 'Rai Saheb Bazar, Sadar Ghat, Dhaka', 'rony@gmail.com', '(1) Combo Pack 3, ', 0, '100', 'confirmed', '05/22/18 04:09:30 AM', '05/22/18 02:16:00 AM', 0, 0),
(15, 'Jai', '01521442995', 'Rai Saheb Bazar, Sadar Ghat, Dhaka', 'rony@gmail.com', '', 0, '100', 'delivered', '05/22/18 04:09:30 AM', '09/10/18 01:36:12 PM', 0, 0),
(16, 'Abrar Hossain', '01685446868', 'Merul Badda, Dhaka', 'abrar@gmail.com', '(1) Combo Pack 3, (1) Combo Pack 3, ', 0, '100', 'confirmed', '05/22/18 04:12:59 AM', '05/22/18 11:24:18 AM', 0, 0),
(17, 'Sonia Corraya', '111111', 'Dept. of CSE, Jagannath University', 'sonia@csejnu.ac.bd', '(1) Black Forest Cake, (1) Black Forest Cake, (1) Black Forest Cake, (1) Black Forest Cake, (1) Black Forest Cake, ', 0, '100', 'delivered', '05/22/18 04:15:52 AM', '09/10/18 01:36:10 PM', 0, 0),
(18, 'Sakib', '34354', 'erty', 'rony@gmail.com', '(1) Naga Burger, ', 0, '0', 'unconfirmed', '09/24/18 11:45:43 PM', '', 0, 123456),
(19, 'Saif Ahmed', '4354678', 'wertghkj', 'rony@gmail.com', '(2) Hot Coffee, (1) Naga Burger, ', 0, '300', 'unconfirmed', '10/18/18 11:36:21 PM', '', 0, 2134567),
(20, 'sdf sadfasd', '05145456', 'sadfsafasd', 'adsfsafd@gmail.com', '(1) Combo Pack 1, ', 0, '0', 'unconfirmed', '08/27/19 03:32:17 AM', '', 0, 54464656),
(21, 'joy barman', '01714730193', '10,bangshal.com', 'saurav@gmail.com', '(1) Bar-B-Que Brisket, ', 0, '863', 'unconfirmed', '08/27/19 01:46:48 PM', '', 0, 987654),
(22, 'saurav das', '01521434695', '18/C,ROAD-8,BLOCK-D,BANASREE', 'sauravchandradas@gmail.com', '(3) Crostino, ', 0, '0', 'unconfirmed', '11/14/19 01:43:31 PM', '', 0, 199999);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `imgUrl` text NOT NULL,
  `Product` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL,
  `Category` text NOT NULL,
  `TimeOfEntry` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CategoryId` int(11) NOT NULL,
  `priceupdate` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `imgUrl`, `Product`, `Description`, `Price`, `Category`, `TimeOfEntry`, `CategoryId`, `priceupdate`) VALUES
(77, 'lemonIced.jpg', 'Iced Tea', 'Iced tea is a form of cold tea. Though usually served in a glass with ice, it can refer to any tea that has been chilled or cooled. It may be sweetened with sugar, syrup and/or apple slices. Iced tea is also a popular packaged drink.', 90, 'Beverages', '2019-08-24 16:05:22', 19, 0),
(78, 'latte.jpg', 'Latte Drink', 'A latte is a coffee drink made with espresso and steamed milk. The term as used in English is a shortened form of the Italian caffè e latte, caffelatte or caffellatte, which means "milk coffee"', 100, 'Beverages', '2019-08-24 16:03:36', 19, 0),
(79, 'affogato.jpg', 'Affogato Liqueur', 'An affogato is an Italian coffee-based dessert. It usually takes the form of a scoop of vanilla gelato or ice cream topped or "drowned" with a shot of hot espresso. Some variations also include a shot of amaretto, Bicerin, or other liqueur.', 100, 'Beverages', '2019-08-24 15:48:22', 19, 0),
(80, 'Cappuccino.jpg', 'Cappuccino Coffee', 'A cappuccino is an espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk, and flavoring with cinnamon or chocolate powder. ', 100, 'Beverages', '2019-08-24 15:46:32', 19, 0),
(81, 'crabcakes.jpg', 'Crab cake appetizer', 'A crab cake is a variety of fishcake that is popular in the United States. It is composed of crab meat and various other ingredients, such as bread crumbs, mayonnaise, mustard, eggs, and seasonings, particularly the cake is then sautéed, baked, grilled, deep fried, or broiled, and then served', 465, 'Appetizers', '2019-08-24 15:01:00', 16, 0),
(82, 'canape.jpg', 'Canape Appetizer', 'A canapé is a type of hors d’œuvre, a small, prepared and often decorative food, consisting of a small piece of bread, puff pastry, or a cracker topped with some savoury food, held in the fingers and often eaten in one bite.', 500, 'Appetizers', '2019-08-24 14:40:17', 0, 0),
(84, 'bruschetta.jpg', 'Bruschetta Appetizer', 'Bruschetta is an antipasto from Italy consisting of grilled bread rubbed with garlic and topped with olive oil and salt. Variations may include toppings of tomato, vegetables, beans, cured meat, or cheese', 900, 'Appetizers', '2019-08-24 14:08:21', 0, 0),
(85, 'crostino.jpg', 'Crostino', 'Crostini are an Italian appetizer consisting of small slices of grilled or toasted bread and toppings. The toppings may include a variety of different cheeses, meats, and vegetables, or may be presented more simply with a brush of olive oil and herbs or a sauce.', 600, 'Appetizers', '2019-08-24 14:32:50', 0, 0),
(86, 'BlackberryRaspberryTruffleCake.jpg', 'Chocolate Truffle Cake with Raspberries', 'Ingredients\r\n2 (18.25-ounce) packages devil''s food cake mix\r\n6 large eggs\r\n1 cup vegetable oil\r\n1 1/3 cups water\r\n1 1/4 cups light sour ', 1265, 'Buffet Item', '2019-08-25 00:11:39', 24, 0),
(87, 'Sausage_Gumbo.jpg', 'Turkey and Sausage Gumbo', 'Spicy Turkey Sausage Stew', 956, 'Buffet Item', '2019-08-25 00:20:00', 24, 0),
(88, 'rib-brisket-burnt-end-web.jpg', 'Bar-B-Que Brisket', 'Ribs, Brisket & Burnt Ends', 863, 'Buffet Item', '2019-08-25 00:22:25', 24, 0),
(89, 'kerala-food.jpg', 'Combo Pack 1', 'Kerala Cuisine: 20 Dishes To Try On Your Next Trip', 1290, 'Combo Pack', '2019-08-25 00:27:30', 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(34) NOT NULL,
  `site_phone` varchar(43) NOT NULL,
  `site_email` varchar(43) NOT NULL,
  `site_address` varchar(344) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `site_about` varchar(2500) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_phone`, `site_email`, `site_address`, `fax`, `comp_name`, `site_about`, `password`) VALUES
(1, 'Khaidai', '01952492202', 'mail@khaidai.com', 'Sadarghat', '556699', 'Khaidai Inc.', '<p>Welcome to khaidai Restaurant \r\nPassionately personal and genuinely delicious!\r\nLocated in Middlebury, Connecticut, L is an inviting 90  seat restaurant owned and operated by accomplished Chef Linda Sirica. "Like you, I enjoy food that satisfies the soul as well as the palate," says Linda. "Food excites the imagination along with the taste buds. So, I invite you to experience food that holds the promise of a good story!"\r\n\r\nL offers exceptional gourmet American Cuisine with an Italian flair - served in a warm atmosphere where the emphasis is on comfort, taste and above all, relaxation and enjoyment. Grilled NY Strip with Baked Mac n Cheese and Sweet Onion Jam laced Demi-Glace; Angelhair pasta with Shrimp, diced tomatoes, spinach, roasted red peppers & lemon vodka cream sauce; and Grilled Salmon with farro & cranberry salad with mustard sauce are just a few of the special dishes you''ll find on L''s enticing menu. Cap off your main course with a Cappuccino and one of our specialty desserts such as Banana Napoleon or Creme Brulee. Enjoy a glass of fine wine, or indulge in a specialty martini or after-dinner cordial.\r\n\r\nAt L, we turn the ordinary into the extraordinary every day. So, stop in for a romantic dinner, relaxing lunch, or after work gathering at our cozy, sit-down bar...make everyday life a little more special at L Restaurant! </p>\r\n', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'administrator', 'bobby'),
(2, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
