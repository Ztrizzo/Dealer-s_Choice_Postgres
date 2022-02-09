DROP TABLE IF EXISTS Ratings;
DROP TABLE IF EXISTS Beers;
DROP TABLE IF EXISTS Brands;


CREATE TABLE Brands(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100)
);

CREATE TABLE Beers (
    id INTEGER PRIMARY KEY , 
    name VARCHAR(50), 
    type VARCHAR(50), 
    brand_id INTEGER REFERENCES Brands(id),
    abv FLOAT(3),
    flavor_notes VARCHAR(300),
    img VARCHAR(100)
);

CREATE TABLE Ratings(
    id INTEGER PRIMARY KEY,
    beer_id INTEGER REFERENCES Beers(id),
    rating INTEGER,
    timestamp VARCHAR(100)
);

INSERT INTO Brands VALUES(1, 'New Glarus Brewing Company', 'New Glarus, WI United States');
INSERT INTO Brands VALUES(2, 'Untitled Art', 'Waunakee, WI United States');
INSERT INTO Brands VALUES(3, 'Potosi Brewery', 'Potosi, WI United States');
INSERT INTO Brands VALUES(4, 'Lake Louie Brewing', 'Arena, WI United States');

INSERT INTO Beers VALUES(1, 'Spotted Cow', 'Farmhouse Ale', 1, 4.8, 'Fun, Fruity and Satisfying', 'spottedCow.png');
INSERT INTO Beers VALUES(2, 'Wisconsin Belgian Red', 'Wisconsin Cherry Ale', 1, 4.0, 'Highly carbonated and intense with cherry flavor and bouquet', 'BelgianRed.png');
INSERT INTO Beers VALUES(3, 'Oat Cream IPA', 'American IPA', 2, 7.0, 'To balance the creaminess with some bittering bite, we made a hop combo of citra, mosaic, wai-iti and Galaxy.', 'beer-3975059_d6747_sm.jpeg' );
INSERT INTO Beers VALUES(4, 'Cave Ale', 'Amber Ale', 3, 5.5, ' Caves carved in the hills of Potosi were once used to age and store beer. Named in that tradition, our smooth English Style Amber Ale boasts the complex flavors of roasted caramel malts perfectly balanced with Golding Hops.', 'cave_ale_correct.jpeg');
INSERT INTO Beers VALUES(5, 'Snake Hollow', 'IPA', 3, 6.5, 'Once teeming with rattlesnakes, the Potosi valley was known as Snake Hollow. The name lives on in our Midwest IPA. Medium bodied and generously dry-hopped, this beer boasts a bold citrus hop character, notes of grapefruit and a clean bitter finish.', 'snake_hollow_correct.jpeg');
INSERT INTO Beers VALUES(6, 'Tommy''s Porter', 'Porter', 4, 6.4, 'Smooth, full-bodied, nuts & berries porter with a coffee-like finish', 'tommy.png');
INSERT INTO Beers VALUES(7, 'Warped Speed Scotch Ale', 'Scotch Ale', 4, 6.9, ' Full of body, sweetness & flavor, with a smooth, lightly hopped finish', 'thumb_lake-louie-warped-speed-scotch-ale.png');


INSERT INTO ratings VALUES(0, 3, 1, 'Fri Jan 22 2021 19:12:01 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(1, 2, 3, 'Fri Sep 03 2021 00:38:44 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(2, 3, 2, 'Wed Mar 10 2021 06:30:44 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(3, 6, 1, 'Sat Dec 11 2021 02:43:20 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(4, 2, 1, 'Sat Sep 18 2021 23:11:36 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(5, 3, 2, 'Tue Jun 08 2021 05:20:58 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(6, 2, 2, 'Sat Jan 08 2022 11:09:06 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(7, 4, 3, 'Fri Jan 21 2022 00:59:53 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(8, 5, 3, 'Sat Jul 18 2020 04:48:36 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(9, 5, 3, 'Sun Aug 09 2020 03:02:58 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(10, 1, 1, 'Mon Dec 06 2021 05:39:20 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(11, 5, 2, 'Sat Jun 05 2021 22:40:00 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(12, 5, 3, 'Mon Aug 31 2020 20:09:29 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(13, 6, 4, 'Wed Feb 17 2021 13:42:02 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(14, 1, 3, 'Sun Dec 26 2021 10:04:36 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(15, 5, 4, 'Thu Sep 16 2021 06:39:08 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(16, 6, 3, 'Sat Aug 28 2021 03:57:46 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(17, 3, 3, 'Thu Feb 04 2021 17:51:30 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(18, 3, 2, 'Sat May 29 2021 14:48:06 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(19, 4, 1, 'Wed Jul 14 2021 05:22:46 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(20, 6, 2, 'Mon Sep 21 2020 09:31:13 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(21, 4, 2, 'Tue Mar 30 2021 20:58:37 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(22, 6, 2, 'Sat Apr 17 2021 04:24:59 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(23, 4, 3, 'Sat Jun 06 2020 22:01:02 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(24, 6, 3, 'Tue Mar 30 2021 11:22:02 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(25, 6, 2, 'Wed Jun 09 2021 04:55:58 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(26, 5, 3, 'Fri Feb 12 2021 01:24:35 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(27, 4, 4, 'Mon Feb 07 2022 00:22:42 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(28, 2, 2, 'Mon Aug 16 2021 03:25:08 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(29, 6, 3, 'Thu Jul 29 2021 09:30:53 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(30, 5, 4, 'Thu Sep 24 2020 08:32:58 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(31, 1, 4, 'Sun Feb 23 2020 23:51:13 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(32, 2, 2, 'Sun Aug 02 2020 03:17:19 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(33, 3, 3, 'Tue Sep 01 2020 12:13:01 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(34, 4, 3, 'Sun Jan 23 2022 06:50:00 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(35, 1, 1, 'Sat Feb 29 2020 22:05:58 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(36, 5, 4, 'Fri Feb 21 2020 06:40:38 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(37, 1, 3, 'Tue Mar 24 2020 23:42:56 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(38, 5, 1, 'Tue Nov 09 2021 16:37:55 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(39, 6, 2, 'Tue Oct 12 2021 11:29:38 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(40, 6, 2, 'Sat Oct 31 2020 12:24:31 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(41, 1, 4, 'Wed Jul 08 2020 04:28:04 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(42, 2, 1, 'Tue Aug 24 2021 02:32:55 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(43, 1, 4, 'Sun Nov 22 2020 08:19:25 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(44, 3, 4, 'Sun Jul 19 2020 04:03:26 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(45, 5, 4, 'Sun Feb 09 2020 01:29:09 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(46, 6, 1, 'Sat Jan 04 2020 05:55:21 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(47, 5, 4, 'Sat Feb 29 2020 02:18:03 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(48, 2, 2, 'Fri Jan 22 2021 21:22:56 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(49, 2, 2, 'Sun Jan 02 2022 12:56:53 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(50, 1, 3, 'Sat May 16 2020 20:55:50 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(51, 6, 3, 'Fri Feb 12 2021 03:51:15 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(52, 3, 1, 'Fri Nov 19 2021 07:15:18 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(53, 5, 4, 'Sun Feb 28 2021 06:33:13 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(54, 4, 4, 'Sun Sep 26 2021 20:13:37 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(55, 6, 3, 'Mon Sep 13 2021 15:37:53 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(56, 4, 1, 'Fri Apr 24 2020 10:19:49 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(57, 4, 1, 'Wed Jan 06 2021 07:00:51 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(58, 2, 2, 'Mon Jun 14 2021 23:24:20 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(59, 6, 4, 'Sat Mar 21 2020 02:08:02 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(60, 4, 1, 'Sun Mar 08 2020 15:15:21 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(61, 2, 4, 'Mon Dec 07 2020 22:21:36 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(62, 2, 4, 'Tue Jul 28 2020 09:39:47 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(63, 3, 4, 'Wed Dec 01 2021 06:09:28 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(64, 5, 3, 'Tue May 04 2021 07:46:15 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(65, 1, 1, 'Mon Apr 27 2020 00:55:44 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(66, 2, 4, 'Thu Sep 02 2021 22:48:33 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(67, 2, 4, 'Mon Mar 30 2020 01:16:48 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(68, 4, 3, 'Fri Nov 13 2020 13:00:35 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(69, 1, 2, 'Thu Mar 12 2020 10:12:21 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(70, 4, 4, 'Wed Jun 24 2020 04:03:06 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(71, 2, 3, 'Mon Dec 07 2020 11:07:20 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(72, 1, 4, 'Fri Jan 29 2021 14:14:32 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(73, 2, 1, 'Fri Jan 24 2020 07:12:56 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(74, 6, 3, 'Thu Jun 11 2020 07:15:29 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(75, 5, 1, 'Sun Apr 18 2021 01:44:27 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(76, 1, 3, 'Fri Jun 26 2020 13:12:31 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(77, 5, 3, 'Thu Feb 27 2020 14:36:06 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(78, 4, 3, 'Sat Jun 05 2021 19:54:41 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(79, 6, 2, 'Mon Sep 14 2020 02:04:14 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(80, 3, 1, 'Fri Jul 23 2021 07:12:48 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(81, 6, 1, 'Tue May 25 2021 05:38:18 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(82, 4, 4, 'Tue Sep 15 2020 14:07:33 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(83, 1, 3, 'Sun Mar 28 2021 18:06:49 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(84, 3, 4, 'Thu Feb 13 2020 14:12:37 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(85, 1, 1, 'Wed Jan 13 2021 21:18:32 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(86, 2, 3, 'Sat Nov 13 2021 17:35:19 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(87, 1, 3, 'Fri Jul 23 2021 21:59:48 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(88, 2, 2, 'Sun Jun 13 2021 12:26:20 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(89, 2, 3, 'Tue Jan 11 2022 13:01:53 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(90, 3, 3, 'Tue May 11 2021 19:08:23 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(91, 5, 1, 'Sun Oct 24 2021 15:56:04 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(92, 5, 3, 'Sun Jan 19 2020 18:32:57 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(93, 2, 2, 'Sun Apr 04 2021 23:17:24 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(94, 2, 2, 'Fri Jan 10 2020 04:50:31 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(95, 4, 3, 'Thu Jul 16 2020 21:24:41 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(96, 3, 3, 'Mon Jan 31 2022 09:25:31 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(97, 2, 3, 'Sun Sep 26 2021 17:39:17 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(98, 6, 2, 'Wed Dec 30 2020 15:58:20 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(99, 5, 4, 'Fri Dec 18 2020 08:19:36 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(100, 4, 1, 'Wed Aug 11 2021 19:40:09 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(101, 4, 1, 'Sat Jun 13 2020 09:45:49 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(102, 6, 2, 'Wed Aug 25 2021 00:46:06 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(103, 2, 1, 'Wed Dec 01 2021 06:26:18 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(104, 2, 2, 'Wed Sep 29 2021 20:07:12 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(105, 6, 1, 'Sat Jul 18 2020 14:40:31 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(106, 4, 1, 'Fri Sep 10 2021 13:42:59 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(107, 4, 4, 'Wed Jan 19 2022 10:38:31 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(108, 3, 1, 'Thu Dec 16 2021 16:11:51 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(109, 6, 1, 'Sun Mar 08 2020 15:48:21 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(110, 1, 4, 'Mon May 10 2021 00:13:12 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(111, 6, 2, 'Tue May 12 2020 06:03:59 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(112, 4, 1, 'Thu Sep 09 2021 21:18:11 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(113, 2, 3, 'Wed Jul 28 2021 20:57:25 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(114, 1, 4, 'Thu Sep 17 2020 15:12:01 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(115, 5, 3, 'Mon Jan 18 2021 13:01:43 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(116, 2, 1, 'Thu Mar 26 2020 17:56:39 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(117, 6, 3, 'Thu Jan 16 2020 05:01:30 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(118, 1, 1, 'Sat Nov 21 2020 15:00:26 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(119, 3, 2, 'Thu Oct 29 2020 17:18:27 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(120, 5, 3, 'Sat Oct 17 2020 05:28:56 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(121, 4, 2, 'Mon May 03 2021 08:42:35 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(122, 5, 4, 'Thu Aug 12 2021 13:40:30 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(123, 1, 3, 'Tue Feb 23 2021 15:12:30 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(124, 6, 1, 'Mon Sep 21 2020 14:27:43 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(125, 5, 4, 'Thu Mar 04 2021 02:32:17 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(126, 5, 4, 'Thu Apr 22 2021 21:49:54 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(127, 6, 3, 'Sun Jan 31 2021 07:07:42 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(128, 6, 2, 'Wed Aug 25 2021 04:56:11 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(129, 5, 2, 'Wed Jun 09 2021 00:49:05 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(130, 1, 1, 'Thu Jan 20 2022 02:18:24 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(131, 5, 1, 'Sun Aug 16 2020 13:15:00 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(132, 6, 1, 'Sat Jul 11 2020 14:41:48 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(133, 5, 1, 'Thu Dec 10 2020 00:09:46 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(134, 5, 4, 'Wed Oct 13 2021 17:42:03 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(135, 5, 1, 'Wed Apr 22 2020 18:48:02 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(136, 6, 2, 'Tue Mar 02 2021 19:48:53 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(137, 5, 1, 'Sat May 23 2020 06:58:18 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(138, 4, 1, 'Sun Nov 29 2020 03:30:20 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(139, 5, 4, 'Sat Jun 06 2020 06:56:04 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(140, 5, 4, 'Thu Jan 02 2020 16:24:14 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(141, 4, 3, 'Mon Feb 03 2020 19:51:23 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(142, 6, 2, 'Thu Aug 26 2021 14:09:30 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(143, 6, 3, 'Tue Jan 28 2020 23:37:43 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(144, 2, 4, 'Fri Jan 15 2021 02:45:40 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(145, 4, 4, 'Fri Aug 14 2020 06:21:28 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(146, 5, 3, 'Sun Jan 19 2020 02:58:21 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(147, 6, 1, 'Mon Jan 11 2021 21:24:33 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(148, 4, 3, 'Wed Jun 24 2020 16:31:51 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(149, 1, 1, 'Sat Jan 22 2022 21:43:46 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(150, 3, 1, 'Fri Aug 14 2020 01:35:14 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(151, 4, 2, 'Wed Jun 24 2020 20:10:54 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(152, 1, 2, 'Wed Oct 21 2020 02:02:34 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(153, 2, 4, 'Thu Mar 19 2020 07:15:35 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(154, 4, 2, 'Thu Jul 23 2020 21:16:25 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(155, 5, 1, 'Sun Jan 19 2020 20:39:44 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(156, 3, 3, 'Sat Nov 20 2021 22:38:43 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(157, 2, 4, 'Fri Dec 10 2021 08:56:41 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(158, 5, 2, 'Fri Jul 17 2020 13:58:43 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(159, 1, 3, 'Sun Jan 12 2020 07:43:43 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(160, 3, 3, 'Sun Jan 05 2020 20:59:28 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(161, 1, 2, 'Sun Oct 24 2021 04:29:17 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(162, 6, 2, 'Sun Aug 16 2020 13:14:38 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(163, 3, 2, 'Tue Nov 30 2021 20:34:02 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(164, 1, 4, 'Wed Sep 22 2021 01:43:52 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(165, 3, 2, 'Sat Oct 30 2021 11:18:49 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(166, 3, 1, 'Thu Jan 02 2020 21:30:55 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(167, 4, 4, 'Sat Nov 07 2020 19:42:36 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(168, 6, 4, 'Thu Jan 21 2021 10:23:43 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(169, 5, 4, 'Fri Mar 12 2021 09:28:08 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(170, 3, 1, 'Fri Oct 30 2020 06:40:13 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(171, 3, 4, 'Sun Jan 16 2022 23:27:00 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(172, 5, 4, 'Wed Nov 11 2020 14:09:59 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(173, 4, 3, 'Fri May 21 2021 03:13:41 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(174, 3, 3, 'Sun Apr 18 2021 12:49:10 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(175, 1, 4, 'Thu Jul 15 2021 09:39:29 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(176, 6, 1, 'Thu Jun 04 2020 08:57:46 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(177, 3, 1, 'Tue Aug 31 2021 15:39:09 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(178, 1, 2, 'Sun Aug 09 2020 18:59:19 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(179, 3, 4, 'Wed May 19 2021 13:44:08 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(180, 1, 2, 'Fri Jul 03 2020 01:33:55 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(181, 1, 1, 'Mon Sep 21 2020 01:38:34 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(182, 4, 4, 'Sun Nov 01 2020 15:20:29 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(183, 5, 4, 'Thu Jan 09 2020 23:00:03 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(184, 5, 2, 'Wed Mar 10 2021 05:58:52 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(185, 6, 4, 'Sun Sep 26 2021 01:56:37 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(186, 1, 3, 'Tue May 05 2020 15:23:13 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(187, 5, 4, 'Wed Jan 26 2022 21:18:27 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(188, 6, 3, 'Mon Aug 09 2021 12:51:28 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(189, 6, 3, 'Sat Jan 29 2022 21:46:18 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(190, 2, 4, 'Tue Apr 13 2021 00:59:00 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(191, 2, 2, 'Sat Feb 22 2020 11:06:57 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(192, 4, 2, 'Sun Feb 02 2020 11:09:26 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(193, 3, 1, 'Thu May 27 2021 16:56:40 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(194, 6, 2, 'Sun May 30 2021 17:58:52 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(195, 1, 4, 'Fri Aug 14 2020 15:09:31 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(196, 2, 2, 'Mon Dec 28 2020 00:58:54 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(197, 6, 2, 'Mon Oct 04 2021 19:51:52 GMT-0500 (Central Daylight Time)');
INSERT INTO ratings VALUES(198, 2, 4, 'Thu Dec 30 2021 02:57:10 GMT-0600 (Central Standard Time)');
INSERT INTO ratings VALUES(199, 3, 4, 'Mon Sep 13 2021 11:13:39 GMT-0500 (Central Daylight Time)');