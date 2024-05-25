-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbinfox
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `tbclientes`
--

DROP TABLE IF EXISTS `tbclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbclientes` (
  `idcli` int NOT NULL AUTO_INCREMENT,
  `nomecli` varchar(50) NOT NULL,
  `fonecli` varchar(50) NOT NULL,
  `endcli` varchar(100) DEFAULT NULL,
  `emalcli` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idcli`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbclientes`
--

LOCK TABLES `tbclientes` WRITE;
/*!40000 ALTER TABLE `tbclientes` DISABLE KEYS */;
INSERT INTO `tbclientes` VALUES (1,'Bruno R N','Rua Amandita 1500','9898-98989','bruno@gmail.com'),(2,'Lucas','9898-98989','Rua Sucrilhos 99','lucas@gmail.com'),(3,'Douglas','8888-99999','Rua Passarinho 123','douglas@teste.com'),(4,'Breno Silva Santos','1111-11111','Rua Teste','teste@teste.com'),(5,'Bruna Oliveira','Rua Beijamin 987','3333-3333','bruna@gmail.com'),(6,'Bianca Bentin','1111-1111','teste','teste@teste.com'),(7,'Tauros','5555-5555','Rua de Touros',''),(10,'Antonio Laserda','99999-99999','Rua MiniMinu 7889','antonio@mac.com'),(11,'João Pé de Feijão','12312312','Rua ceu','ovosDeOuro@ganso.com');
/*!40000 ALTER TABLE `tbclientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18 17:21:42
