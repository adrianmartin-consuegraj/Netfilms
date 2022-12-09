-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: netfilms
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `genre` varchar(1000) DEFAULT NULL,
  `poster_path` varchar(45) DEFAULT NULL,
  `overview` varchar(2000) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'O Brother, Where Art Thou?','Adventure, Comedy, Crime','/2YztYilviFCYcEtDAnrOstUWGie.jpg','In the deep south during the 1930s, three escaped convicts search for hidden treasure while a relentless lawman pursues them. On their journey they come across many comical characters and incredible situations. Based upon Homer\'s \'Odyssey','2015-05-13'),(2,'All Quiet on the Western Front','Drama, War','/yAU6jklJLUjZot3WyvyJrxVdLKb.jpg','A young soldier faces profound disillusionment in the soul-destroying horror of World War I. Together with several other young German soldiers, he experiences the horrors of war, such evil of which he had not conceived of when signing up to fight. They eventually become sad, tormented, and confused of their purpose.',NULL),(3,'Groundhog Day','Romance, Fantasy, Drama, Comedy','/fyuhkgPQSXiToYMQ3bIk2uVoulb.jpg','A narcissistic TV weatherman, along with his attractive-but-distant producer, and his mawkish cameraman, is sent to report on Groundhog Day in the small town of Punxsutawney, where he finds himself repeating the same day over and over.','2013-10-30'),(4,'Mifune','Drama, Comedy, Romance','/962ZZDr4FV3L46ZnurqIaZveL60.jpg','Kresten, newly wed, is on the threshold of a great career success in his father-in-law´s company. But when the death of his own father takes him back to his poverty-stricken childhood home, far out in the country, his career plans fall apart. For one thing he has to deal with his loveable, backward brother, who is now all alone; for another, he meets a stunning woman who comes to the farm as a housekeeper, in disguise of her real profession as a call-girl.',NULL),(5,'Donnie Darko','Fantasy, Drama, Mystery','/fhQoQfejY1hUcwyuLgpBrYs6uFt.jpg','After narrowly escaping a bizarre accident, a troubled teenager is plagued by visions of a large bunny rabbit that manipulates him to commit a series of crimes.',NULL),(6,'Brokeback Mountain','Drama, Romance','/fsbzfe9eLOEl5rJX04nPEr1eoAi.jpg','Two modern-day cowboys meet on a shepherding job in the summer of \'63, the two share a raw and powerful summer together that turns into a lifelong relationship conflict',NULL);
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `id` bigint NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `genre` varchar(1000) DEFAULT NULL,
  `poster_path` varchar(45) DEFAULT NULL,
  `overview` varchar(2000) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'Mr. Bean: The Animated Series','Comedy, Animation','/1V2PSez4pNZ9a4Bbomm7KZiQJ44.jpg','Mr Bean is forced to babysit Mrs Wicket\'s nephew on an Outward Bound day course.','2002-01-05'),(2,'Scream: The TV Series','Drama, Crime, Mystery','/vETTFu6Rg9R1mATWhId6UgepN3b.jpg','What starts as a YouTube video going viral, soon leads to problems for the teenagers of Lakewood and serves as the catalyst for a murder that opens up a window to the town\'s troubled past. Everyone has secrets. Everyone tells lies. Everyone is fair game.','2015-06-30'),(3,'Transporter: The Series','Action & Adventure, Crime, Drama','/23ESZ6mTcJw8zHOkW4G38uIz147.jpg','The adventures of professional transporter Frank Martin, who can always be counted on to get the job done—discreetly. Operating in a seedy underworld of dangerous criminals and desperate players, his three rules are: Never change the deal, no names, and never open the package. Occasionally, complications arise and rules get broken.','2012-10-25'),(4,'Série Noire','Drama, Comedy','/ozOf1rRs7Vm9aymbQ2hXYQB3kjg.jpg','Denis tries to find allies in the police force. Will he manage to convince Judith? Charlène confronts Minister Thibodeau and he reveals his motives.','2014-01-13');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01 15:11:05
