-- Creación de backup de las tablas CLIENTES, ORDENES, PRODUCTOS, TRANSPORTES Y LOG_DATA DE LA BASE SUPPLY

CREATE DATABASE  IF NOT EXISTS `supply` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `supply`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: supply
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'GERARDO MACIAS','SAN MATEO 55, SANTO DOMINGO, 02160','GMACIAS@GMAIL.COM','5512434563','2023-05-30'),(2,'ALEJANDRO ROCHA','FRESNOS 54, VALLE DORADO, 52902','AROCHA@GMAIL.COM','5565781555','2023-05-30'),(3,'HECTOR JUAREZ','SOL 18, GUERRERO, 06300','HJUAREZ@GMAIL.COM','5596215596','2023-05-30'),(4,'ANA OROZCO','SAN ANTONIO 28, DOCTORES, 06720','AOROZCO@GMAIL.COM','5556460926','2023-05-30'),(5,'JAIR FERNANDEZ','JOSE MARIA 91, NAVARTE, 03020','JFERNANDEZ@GMAIL.COM','5519215894','2023-05-30'),(6,'DIEGO HERNANDEZ','PILARES 123, DEL VALLE, 03100','DHERNANDEZ@GMAIL.COM','5520425062','2023-05-30'),(7,'DIANA PEREZ','BERLIN 185, DEL CARMEN,04100','DPEREZ@GMAIL.COM','5548843707','2023-05-30'),(8,'ERNESTO FLORES','LUCAS 11, SANTO TOMAS, 02020','EFLORES@GMAIL.COM','5556672266','2023-05-30'),(9,'ARMANDO DOMINGUEZ','PLUTARCO ELIAS 89, TEXCOCO, 02940','ADOMINGUEZ@GMAIL.COM','5792091029','2023-06-12');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_data`
--

LOCK TABLES `log_data` WRITE;
/*!40000 ALTER TABLE `log_data` DISABLE KEYS */;
INSERT INTO `log_data` VALUES (1,'INSERT','ORDENES','7','root@localhost','2023-07-01 14:09:59'),(2,'UPDATE','ORDENES','6 - 7','root@localhost','2023-07-01 14:10:13'),(3,'INSERT','ORDENES','8','root@localhost','2023-07-07 01:03:51'),(4,'INSERT','ORDENES','9','root@localhost','2023-07-07 01:03:51'),(5,'INSERT','ORDENES','10','root@localhost','2023-07-07 01:03:51'),(6,'INSERT','ORDENES','11','root@localhost','2023-07-07 01:03:51'),(7,'INSERT','ORDENES','12','root@localhost','2023-07-07 01:03:51'),(8,'INSERT','ORDENES','13','root@localhost','2023-07-07 01:03:51'),(9,'INSERT','ORDENES','14','root@localhost','2023-07-07 01:03:51'),(10,'INSERT','ORDENES','15','root@localhost','2023-07-07 01:03:51');
/*!40000 ALTER TABLE `log_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (1,4,2,2,3,1200,'2023-06-05'),(2,7,4,2,1,600,'2023-06-07'),(3,15,5,5,2,600,'2023-06-09'),(4,8,7,5,1,600,'2023-06-12'),(5,5,8,5,2,1400,'2023-06-18'),(6,3,2,1,1,700,'2023-06-19'),(7,7,3,2,1,600,'2023-06-19');
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Balon Futbol','Rojo Azul',600,'MEXIEMSPOR'),(2,'Pelota tenis','Verde',100,'CHSUNITYDE'),(3,'Balon Basket','Negro Azul',700,'CHSUNITYDE'),(4,'Balon Volley','Blanco',400,'MEXIEMSPOR'),(5,'Balon Basket','Naranja',700,'MEXIEMSPOR'),(6,'Balon Futbol','Blanco Negro',600,'MEXIEMSPOR'),(7,'Balon Futbol','Verde Blanco',600,'MEXIEMSPOR'),(8,'Balon Futbol','Rojo Negro',600,'CHSUNITYDE'),(9,'Balon Futbol','Azul',600,'CHSUNITYDE'),(10,'Guantes Futbol','Naranja',350,'CHSUNITYDE'),(11,'Guantes Futbol','Negro',350,'MEXIEMSPOR'),(12,'Guantes Futbol','Verde',350,'MEXIEMSPOR'),(13,'Gorra Tenis','Azul',250,'MEXIEMSPOR'),(14,'Gorra Tenis','Blanco',250,'CHSUNITYDE'),(15,'Gorra Tenis','Rosa',300,'CHSUNITYDE');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transportes`
--

LOCK TABLES `transportes` WRITE;
/*!40000 ALTER TABLE `transportes` DISABLE KEYS */;
INSERT INTO `transportes` VALUES (1,'CAMION',3,'CDX',11),(2,'FURGONETA',2,'TLZ',14),(3,'CAMION',5,'TIZ',16),(4,'CAMION',6,'TLZ',19),(5,'REMOLQUE',10,'CDX',22);
/*!40000 ALTER TABLE `transportes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-11  0:34:06