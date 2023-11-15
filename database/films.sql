-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: sql.freedb.tech    Database: freedb_tim-burton-films
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
  `idMovie` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `year` varchar(4) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `synopsis` text,
  `classification` varchar(15) NOT NULL,
  PRIMARY KEY (`idMovie`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'The Nightmare Before Christmas','1993','73 minutes','The story follows Jack Skellington, the Pumpkin King of Halloween Town, who becomes bored with the annual routine of scaring people on Halloween. Seeking something new, he stumbles upon Christmas Town and becomes enchanted by the holiday. Jack decides to bring Christmas to Halloween Town, but his well-intentioned efforts lead to chaos and confusion. The film is a dark and whimsical musical that explores themes of identity, self-discovery, and the magic of different holiday traditions.','PG'),(2,'Beetlejuice','1988','92 minutes','The story follows a recently deceased couple, Adam and Barbara Maitland, who discover that their home has been taken over by a living family. Unable to scare off the new residents on their own, they turn to Beetlejuice, an eccentric and chaotic bio-exorcist, to get rid of the intruders.','PG'),(4,'Corpse Bride','2005','76 minutes','The film tells the story of Victor Van Dort, a young man who accidentally proposes to a deceased bride, Emily, while rehearsing his wedding vows in the woods. Victor finds himself transported to the Land of the Dead, where he meets Emily, the Corpse Bride. Victor must navigate the complex relationships between the living and the dead as he tries to return to his intended bride, Victoria. The film combines dark and whimsical elements, showcasing Tim Burton\'s distinctive style, and explores themes of love, death, and the afterlife.','PG'),(5,'Edward Scissorhands','1990','105 minutes','Edward, a man with scissors for hands, who is discovered by a suburban family. Despite his unique talents, Edward faces challenges fitting into society. The film explores themes of love, acceptance, and the consequences of being different in a visually stunning and poignant fairy-tale setting.','PG-13'),(6,'Sleepy Hollow','1999','105 minutes','The movie is a dark fantasy adaptation of Washington Irving\'s classic short story \"The Legend of Sleepy Hollow.\" Ichabod Crane, a skeptical constable with a penchant for forensic investigation, is sent to the town of Sleepy Hollow to investigate a series of mysterious beheadings. As Ichabod delves into the chilling secrets of the town, he encounters supernatural forces, including the legendary Headless Horseman. The film combines elements of horror, mystery, and fantasy, creating a visually striking and atmospheric tale of the macabre.','R'),(7,'Pee-wee`s Big Adventure','1985','91 minutes','The story follows Pee-wee Herman, played by Paul Reubens, an eccentric and childlike man who loves his bicycle more than anything in the world. When his beloved bike is stolen, Pee-wee embarks on a whimsical and absurd cross-country journey to retrieve it. Along the way, he encounters a variety of eccentric characters and finds himself in surreal and humorous situations. The film captures Pee-wee\'s quirky personality and showcases Tim Burton\'s early directorial style, combining humor with a sense of the fantastical.','PG'),(8,'Batman','1989','126 minutes','The story is set in the dark and atmospheric Gotham City, where crime is rampant. The mysterious vigilante Batman, played by Michael Keaton, emerges to combat the city\'s criminal underworld, led by the menacing Joker, portrayed by Jack Nicholson.','PG-13'),(9,'Batman Returns','1992','126 minutes','Set in Gotham City during the Christmas season, the film continues the story of Batman, played by Michael Keaton. This time, Batman faces new adversaries: the sinister Penguin, played by Danny DeVito, and the mysterious and seductive Catwoman, portrayed by Michelle Pfeiffer.','PG-13'),(10,'Ed Wood','1994','127 minutes','Ed Wood is a young film director, a visionary with no formal education, fond of dressing in women\'s clothing, and with very few opportunities to make movies in a major studio. However, he perseveres in his quest to become a famous director. After assembling a curious group of characters, he creates low-budget, eccentric films that are not very technically polished','R'),(11,'Mars Attacks!','1996','106 minutes','The story revolves around a comical and chaotic Martian invasion of Earth. When Martians arrive with apparent peaceful intentions, humanity is hopeful for interplanetary harmony. However, the aliens soon reveal their true destructive nature, leading to a hilariously absurd and over-the-top battle between Earth and the invaders. The film features an ensemble cast, including Jack Nicholson, Glenn Close, Pierce Brosnan, and many others, and it is known for its satirical take on sci-fi tropes and B-movie aesthetics.','PG-13');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 11:04:23
