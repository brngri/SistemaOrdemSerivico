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
-- Table structure for table `tbos`
--

DROP TABLE IF EXISTS `tbos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbos` (
  `os` int NOT NULL AUTO_INCREMENT,
  `data_os` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` varchar(25) NOT NULL,
  `situacao` varchar(30) NOT NULL,
  `equipamento` varchar(150) NOT NULL,
  `defeito` varchar(150) NOT NULL,
  `servico` varchar(150) DEFAULT NULL,
  `tecnico` varchar(30) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `idcli` int NOT NULL,
  PRIMARY KEY (`os`),
  KEY `idcli` (`idcli`),
  CONSTRAINT `tbos_ibfk_1` FOREIGN KEY (`idcli`) REFERENCES `tbclientes` (`idcli`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbos`
--

LOCK TABLES `tbos` WRITE;
/*!40000 ALTER TABLE `tbos` DISABLE KEYS */;
INSERT INTO `tbos` VALUES (1,'2024-04-05 22:50:46','orçamento','Entrega OK','Computador','Tela Azul','Formatação','Brutos',100.00,1),(2,'2024-04-05 23:09:05','OS','Aguardando Aprovação','Notebook','Não liga','Venda monitor lenovo + software de Atualização de drive 2','Kratos',3000.00,2),(3,'2024-05-12 17:48:45','OS','Entrega OK','Computador','Tela azul','Trocar placa de video e memória RAM','Bruno',500.00,7),(4,'2024-05-12 17:53:50','OS','Na bancada','2323','32323','','',0.00,3),(6,'2024-05-13 23:53:00','orçamento','Aguardando Aprovação','Munitor','Não liga','','',0.00,2),(8,'2024-05-14 23:16:55','orçamento','Aguardando Aprovação','Celular','Não liga ','','',0.00,4),(9,'2024-05-14 23:20:02','orçamento','Na bancada','HD','Queimou','','',0.00,2),(11,'2024-05-18 11:33:23','OS','Entrega OK','Notebook','Tela azul','Formatação','Bruno N ',100.00,3);
/*!40000 ALTER TABLE `tbos` ENABLE KEYS */;
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
