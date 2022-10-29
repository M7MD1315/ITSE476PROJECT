CREATE DATABASE  IF NOT EXISTS `moviedb`;
USE `moviedb`;

DROP TABLE IF EXISTS `movielist`;

CREATE TABLE `movielist` (
  `movieId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Genre` varchar(25) DEFAULT NULL,
  `Director` varchar(255) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imdb` varchar(255) DEFAULT NULL,
  `showTime` varchar(45) DEFAULT NULL,
  `catagory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`movieId`)
);
--
-- Dumping data for table `movielist`
--

LOCK TABLES `movielist` WRITE;

INSERT INTO `movielist` VALUES (1,'Avengers: Endgame\n','Action','Anthony Russo','After half of all life is snapped away by Thanos, the Avengers are left scattered and divided. Now with a way to reverse the damage, the Avengers and their allies must assemble once more and learn to put differences aside in order to work together and set things right. Along the way, the Avengers realize that sacrifices must be made as they prepare for the ultimate final showdown with Thanos, which will result in the heroes fighting the biggest battle they have ever faced.','avengers.png','8.4','08.00 AM','now'),(2,'Spider-Man 2021','Action','Jon Watts','Picking up where Far From Home left off, Peter Parker\'s whole world is turned upside down when his old enemy Mysterio posthumously reveals his identity to the public. Wanting to make his identity a secret, Peter turns to Doctor Strange for help. But when Strange\'s spell goes haywire, Peter must go up against five deadly new enemies--the Green Goblin, Dr. Octopus, Electro, the Lizard and Sandman--all while discovering what it truly means to be Spider-Man.','spiderman.png','8.4','12.00 PM','now'),(3,'Matrix 2021','Sci-fi','Lana Wachowski','Thomas Anderson\'s seemingly ordinary life ends when he accepts Morpheus\'s offer, only to wake up to a new, more secure and much more dangerous Matrix. Return to a world of two realities: one, everyday life; the other, what lies behind it. To find out if his reality is a construct, to truly know himself, Mr. Anderson will have to choose to follow the white rabbit once more.','matrix.png','5.7','16.00 PM','now'),(4,'Resident Evil','Horror','Johannes Roberts','Once the booming home of pharmaceutical giant Umbrella Corporation, Raccoon City is now a dying Midwestern town. The company\'s exodus left the city a wasteland with great evil brewing below the surface. When that evil is unleashed, the townspeople are forever changed and a small group of survivors must work together to uncover the truth behind Umbrella and make it through the night.','resident.png','5.2','20.00 PM','now'),(5,'Jumanji : Next Level','Adventure','Jake Kasdan','One quiet year after unearthing the old-school video-game console in Jumanji: Welcome to the Jungle (2017), Spencer and his friends--Martha, Fridge, and Bethany--have all gone their separate ways. However, the power of the mysterious board game is unlimited, and before they know it, the quartet of reluctant players, along with a pair of unexpected participants, find themselves, once again, pulled into the dangerous mystical realm.','jumanji.png','9','08.00 AM','upcoming'),(6,'Venom','Action','Andy Serkis','Eddie Brock attempts to reignite his career by interviewing serial killer Cletus Kasady, who becomes the host of the symbiote Carnage and escapes prison after a failed execution.\n\nEddie Brock struggles to adjust to his new life as the host of the alien symbiote Venom, which grants him super-human abilities in order to be a lethal vigilante. Brock attempts to reignite his career by interviewing serial killer Cletus Kasady, who becomes the host of the symbiote Carnage and escapes prison after a failed execution.','venom.png','6','12.00 PM','upcoming');

UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `movieId` int NOT NULL,
  `userId` int NOT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`movieId`,`userId`)
);

LOCK TABLES `rating` WRITE;

INSERT INTO `rating` VALUES (1,1,4),(1,3,4),(1,6,5),(1,8,4),(2,3,3),(2,6,4),(3,3,4),(3,7,5);

UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `accBalance` float DEFAULT NULL,
  PRIMARY KEY (`userId`)
);
--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;

INSERT INTO `user` VALUES (1,'admin@admin.com','admin',101,'Admin','User',NULL,9979),(3,'user@user.com','user',202,'John','Luk','john.png',350),(6,'josh@gmail.com','josh',202,'Josh','Fil',NULL,300),(8,'show@gmail.com','richel',202,'Richell','Show',NULL,300),(9,'ahmad@gmail.com','ahmed',202,'Ahmad','Ali',NULL,250);

UNLOCK TABLES;



DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `bookingId` int NOT NULL AUTO_INCREMENT,
  `movieId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `seats` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookingId`),
  KEY `user_booked_idx` (`userId`),
  KEY `movie_booked_idx` (`movieId`),
  CONSTRAINT `movie_booked` FOREIGN KEY (`movieId`) REFERENCES `movielist` (`movieId`),
  CONSTRAINT `user_booked` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
);

LOCK TABLES `booking` WRITE;

INSERT INTO `booking` VALUES (1,1,3,'2022-06-02','1,2,3'),(2,2,3,'2022-06-05','3,4,5'),(3,1,6,'2022-06-02','6,7,8,9'),(6,2,3,'2022-06-02','21,29'),(7,3,3,'2022-05-18','2,10,18'),(8,1,3,'2022-05-20','3,19,27'),(11,1,1,'2022-05-21','20');


UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `commentId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `movieId` int NOT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `datetime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`commentId`),
  KEY `movie_comment_idx` (`movieId`),
  KEY `user_comment_idx` (`userId`),
  CONSTRAINT `movie_comment` FOREIGN KEY (`movieId`) REFERENCES `movielist` (`movieId`),
  CONSTRAINT `user_comment` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ;
LOCK TABLES `comment` WRITE;

INSERT INTO `comment` VALUES (1,3,1,'Watched a fantastic movie after long time','2022/05/16 on 07:03 pm'),(4,3,3,'Highly recommended. Final Verdict, Huge Improvement Over 2nd and 3rd Parts.','2022/05/19 on 04:34 pm'),(8,3,2,'This movie was so overrated. Some really cool fight sequences and special effects especially when Dr. Strange is involved. Other than that it was awkwardly weepy and trying too hard to be witty. That said if you are a die hard lover of this stuff then you’ll love whatever they put on screen. Enjoy!\r\n','2022/05/19 on 04:38 pm');

UNLOCK TABLES;


--
-- Table structure for table `topupreq`
--

DROP TABLE IF EXISTS `topupreq`;

CREATE TABLE `topupreq` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `cardNo` varchar(45) DEFAULT NULL,
  `cvv` varchar(4) DEFAULT NULL,
  `expDate` date DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `t_u_idx` (`userId`),
  CONSTRAINT `t_u` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
);
--
-- Dumping data for table `topupreq`
--

LOCK TABLES `topupreq` WRITE;

INSERT INTO `topupreq` VALUES (4,8,200,'1234 1256 5566 7788','234','2025-06-04'),(5,9,150,'1234 1256 5566 7788','234','2025-06-04'),(6,3,250,'1234 1256 5566 7788','234','2025-06-04'),(7,6,150,'1234 1256 5566 7788','234','2025-06-04');

UNLOCK TABLES;
