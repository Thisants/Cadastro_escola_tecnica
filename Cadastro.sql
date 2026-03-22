-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cadastro
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `workload` int DEFAULT NULL,
  `level` enum('basic','intermediate','advanced') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Basic Informatics',100,'basic','2026-03-21 22:25:20'),(2,'Web Development',300,'intermediate','2026-03-21 22:25:20'),(3,'Engineer IA',3000,'intermediate','2026-03-21 22:25:20'),(4,'Networking',400,'advanced','2026-03-21 22:25:20'),(5,'Data analysis',2000,'advanced','2026-03-21 22:25:20'),(6,'Web designer',160,'basic','2026-03-21 22:25:20');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_teacher`
--

DROP TABLE IF EXISTS `courses_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_teacher` (
  `teacher_id` int NOT NULL,
  `course_id` int NOT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `weekday` enum('Mon','Tue','Wed','Thu','Fri','Sat') NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`teacher_id`,`course_id`,`weekday`,`start_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_teacher`
--

LOCK TABLES `courses_teacher` WRITE;
/*!40000 ALTER TABLE `courses_teacher` DISABLE KEYS */;
INSERT INTO `courses_teacher` VALUES (1,1,'Programming Logic','','08:00:00','10:00:00'),(2,2,'Web Development','','10:00:00','12:00:00'),(3,1,'Databases','','08:00:00','10:00:00'),(1,1,'Programming Logic','Mon','08:00:00','10:00:00'),(2,2,'Web Development','Tue','10:00:00','12:00:00'),(3,1,'Databases','Wed','08:00:00','10:00:00');
/*!40000 ALTER TABLE `courses_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,1,1,'2026-03-21'),(2,2,1,'2026-03-21'),(3,3,2,'2026-03-21'),(4,4,2,'2026-03-21'),(5,1,2,'2026-03-21');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(100) NOT NULL,
  `Birthday` date DEFAULT NULL,
  `Gender` enum('M','F') DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Maria Joaquina','2004-07-23','F','mariaJ@anon.com.br','2026-03-20 01:30:11'),(2,'Eduarda silva Fernandez','2007-01-30','F','doardaFernandez@anon.com.br','2026-03-20 01:30:11'),(3,'San Fernando Santos','1999-04-29','M','saintsan@anon.com.br','2026-03-20 01:30:11'),(4,'Alderico Oliveira','1994-02-17','M','alderico@anon.com.br','2026-03-20 01:30:11'),(5,'Celia silveira silva','1989-12-13','F','celiasilva@anon.com.br','2026-03-20 01:30:11'),(6,'Isabela Cristina','2008-07-23','F','isacris@anon.com.br','2026-03-20 01:30:11'),(7,'Eduardo Perez Fernandez','2000-11-23','F','eduPerz@anon.com.br','2026-03-20 01:30:11'),(8,'Santiago Santos','1998-05-29','M','santiagon@anon.com.br','2026-03-20 01:30:11'),(9,'Breno Cavalcante','2001-03-11','M','brenon@anon.com.br','2026-03-20 01:30:11'),(10,'Bela Carvalho dos Reis','2002-01-28','F','belaReis@anon.com.br','2026-03-20 01:30:11');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(100) NOT NULL,
  `Birthday` date DEFAULT NULL,
  `Gender` enum('M','F') DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Alfredo Nogueira','1998-12-01','M','alfrengue@anon.com.br','2026-03-22 00:15:29'),(2,'Sandra Pinheiro','1998-11-11','F','sandrapinha@anon.com.br','2026-03-22 00:15:29'),(3,'Isaque Silveira','1998-12-01','M','isaquesilve@anon.com.br','2026-03-22 00:15:29'),(4,'Kojima Sato','1990-07-01','M','kojima@anon.com.br','2026-03-22 00:15:29');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-21 22:11:15
