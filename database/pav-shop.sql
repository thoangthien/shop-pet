CREATE DATABASE  IF NOT EXISTS `pav_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pav_shop`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: pav_shop
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brandId` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (2,'Bayer','Bayer@gmail.com','0915767465'),(3,'Beaphar','Beaphar@gmail.com','0915999999'),(4,'RubberT','RubberT@gmail.com','0915868565'),(5,'Prunus','Prunus@gmail.com','0496586526'),(6,'Pedigree','Pedigree@gmail.com','0915636598'),(7,'Prada','Prada@gmail.com','0945265869');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Thức ăn cho chó'),(2,'Thức ăn cho mèo'),(3,'Dụng cụ vệ sinh thú cưng'),(4,'Balo , Túi vận chuyển'),(8,'Đồ chơi thú cưng'),(9,'Áo thú cưng'),(10,'Vòng cổ , Dây dắt, Rọ mõm');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerId` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('admin123','admin@gmail.com',_binary '','Tôi là admin','$2a$10$k.G4fI0RgEhHJ/N..t2.aeG7x3j85dmlDbT.pWS2fxUGLSg1ddnkS','','1',NULL),('dong123','huudong297@gmail.com',_binary '','Trần Hữu Đồng','$2a$10$IDE4k.qiCIsG9VyuNOg6xuwbXhVgUWxmL/.SfTlJDAkr9255d77aS','','0',NULL),('thien01','thienth@gmail.com',_binary '','thien01','$2a$10$hcfVxPthBWeBY2DRO7utp.osEpfBBi11kRpylE3MMUJO6FrEU17ei','','1','2023-01-19 00:00:00.000000'),('user1','user@gmail.com',_binary '','user1','$2a$10$SPtdBxlm6KlezNspMl4CJ.oI//T8KezTFTrOy/bYV7cvsFm7tosbe','','0',NULL),('user2','user2@gmail.com',_binary '','user2','$2a$10$EZ6Gfb81tiM5NW3LCgcCyeZH88MHCj7KbDuYUqZhWXNPu07Nm1/Yq','','0',NULL),('user3','user3@gmail.com',_binary '','user3','$2a$10$/u.ChRiSn3mib4AO420qZubfV0.vIF0vI2L/bvlgAAYP6klZfd6qW','','0',NULL),('user4','user4@gmail.com',_binary '','Tôi là user4','$2a$10$Jf7UNOWOZQOscFf2rMcAN.jnZts.XEGh0pikVhjlP/Eo7qd2co/86','','0','2021-09-08 18:31:23.670000'),('user5','user5@gmail.com',_binary '','Tôi là user5','$2a$10$j3HPDFAdIYg7Hw8JGO0DFunCJ8L58rFZfCQ8Y6QFH4rXn44prmIoa','','0','2021-09-08 00:00:00.000000'),('user6','user6@gmail.com',_binary '','user6','$2a$10$rtMtZVWN6qCLQam0.jCZDe1Bm/lB5MRlXzsk0C2uHUgnebSt7NOQW','','0','2021-09-09 00:00:00.000000');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `orderDetailId` int NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`orderDetailId`),
  KEY `FK3ohml2o6a85wh1nn65snnaind` (`orderId`),
  KEY `FK5pie1uapfd704usnm2loi3tex` (`productId`),
  CONSTRAINT `FK3ohml2o6a85wh1nn65snnaind` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  CONSTRAINT `FK5pie1uapfd704usnm2loi3tex` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (33,NULL,50,1,'Đang giao dịch',47.5,17,47),(34,NULL,50,1,'Đang giao dịch',47.5,18,46),(35,NULL,200,1,'Đã thanh toán',120,19,45),(36,NULL,50,2,'Đã thanh toán',95,19,46),(37,NULL,120,1,'Đang giao dịch',108,20,51);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `requireDate` date DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FK1bpj2iini89gbon333nm7tvht` (`customerId`),
  CONSTRAINT `FK1bpj2iini89gbon333nm7tvht` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'TP. Hà Tĩnh',0,'Túi Xách','2021-09-08','0915767465','Trần Hữu Đồng',NULL,368,NULL),(2,'TP. Hà Tĩnh',0,'Túi Xách','2021-09-08','0915767465','Trần Hữu Đồng',NULL,368,NULL),(3,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hữu Đồng',NULL,368,NULL),(4,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Demo mô tả','2021-09-08','0915999999','Nguyễn Ngọc Khánh',NULL,650,NULL),(5,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hoài Nam',NULL,585,'user5'),(6,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hoài Nam',NULL,675,'user5'),(7,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hữu Đồng',NULL,585,'dong123'),(8,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Nguyễn Văn Tú',NULL,1575,'user2'),(9,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-09','0915999999','Trần Hoài Nam',NULL,585,'user1'),(10,'Tp.Huế',0,'Demo mô tả','2021-09-09','0915999999','Nguyễn Thanh Lam',NULL,585,'user6'),(11,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-10','0915999999','Trần Hoài Nam',NULL,1565.5,'user2'),(12,'Tp.Huế',0,'Demo mô tả','2021-09-10','0915767465','Nguyễn Thanh Lam',NULL,885,'user3'),(13,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-10','0915767465','Nguyễn Văn Tú',NULL,522.5,'user4'),(14,'1 pham van nghi',0,'aaa','2023-01-12','0789486777','Tran Hoang Thien',NULL,585,'admin123'),(15,'123',0,'111','2023-01-13','0789486777','Tran Hoang Thien',NULL,1039,'admin123'),(16,'1 pham van nghi',0,'','2023-01-13','0789486777','Tran Hoang Thien',NULL,364,'admin123'),(17,'1 pham van nghi',0,'111','2023-01-31','0789486777','Tran Hoang Thien',NULL,47.5,'admin123'),(18,'1 pham van nghi',0,'111','2023-01-31','0789486777','Tran Hoang Thien',NULL,47.5,'admin123'),(19,'1 pham van nghi',0,'111','2023-01-31','0789486777','Tran Hoang Thien',NULL,215,'admin123'),(20,'1 pham van nghi',0,'111','2023-01-31','0789486777','Tran Hoang Thien',NULL,108,'admin123');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `description` varchar(455) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `enteredDate` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `brandId` int DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `FKh5l4pix4d0mc61aibdt3gj898` (`brandId`),
  KEY `FKej2ob3ifydf846t2a2tntna4e` (`categoryId`),
  CONSTRAINT `FKej2ob3ifydf846t2a2tntna4e` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`),
  CONSTRAINT `FKh5l4pix4d0mc61aibdt3gj898` FOREIGN KEY (`brandId`) REFERENCES `brands` (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (43,'Sữa Bột Cho Chó - Predogen 110g\r\n\r\nChất liệu da tổng hợp cao cấp. Ví phù hợp dùng như ví tiền hoặc đi tiệc, dạo phố',15,'2023-01-30','c2a9e017b370407d898b343f35ac336e.jpeg','Sữa Bột Cho Chó - Predogen 110g',200,300,2,1),(45,'balo đẹp',40,'2023-01-31','b5fdfd1233924a168fd6c2a74f9e103e.jpeg','Balo pokemon',200,100,4,4),(46,'xương chó',5,'2023-01-31','d28c4929462742b6805833fa23a2c686.jpg','Xương Da Bò Gói 4 Cái',50,100,5,1),(47,'thức ăn cho chó',5,'2023-01-31','4ef0a9554b1943e1b54f16d2b1183510.jpg','Xúc Xích Cho Chó 1 Cây',50,100,2,1),(48,'thức ăn cho chó',5,'2023-01-31','thucancho.jpg','Ganador Chó Lớn - Adult Dog',80,100,7,1),(49,'thức ăn cho chó',10,'2023-01-31','thucancho1.jpeg','MODKO-Thức Ăn Cho Chó Mọi Lứa Tuổi-1.5kg',150,300,5,1),(51,'thức ăn cho mèo',10,'2023-01-31','c822e97a86794ba89584a55e18028e70.jpeg','Sữa Bột Cho Mèo Precaten - 110g',120,300,5,2),(53,'Royal Canin - Kitten Cat - Hạt Mèo Con',20,NULL,'2f0b8d7e5e33431395bb3eb0f819cf46.png','Royal Canin - Kitten Cat - Hạt Mèo Con',140,200,4,2),(54,'Bánh Quy Green Yummy',10,'2023-02-02','40cca609ce8e4358ac59303a4313f2cb.jpeg','Bánh Quy Green Yummy',40,100,5,1),(55,'Pate Cho Mèo Wanpy 80g - Mọi Lứa Tuổi',5,'2023-02-02','512b1eabcf09492ba4b09698591543b8.jpeg','Pate Cho Mèo Wanpy 80g - Mọi Lứa Tuổi',70,100,3,2),(56,'Me-O - Kitten Cat - Mèo Con',20,'2023-02-02','3ddabbf3e0444ba5994167f0df9c0120.jpeg','Me-O - Kitten Cat - Mèo Con',130,100,5,2),(57,'Thức Ăn Cho Mèo - CAT\'S EYE - 1kg',8,'2023-02-02','3f67b363c00448ce805df42a3e5cd4b9.jpeg','Thức Ăn Cho Mèo - CAT\'S EYE - 1kg',50,100,7,2),(58,'Pate Whiskas - Sốt Cho Mèo Con (2-12 Tháng) 85g',30,'2023-02-02','abcc.jpg','Pate Whiskas - Sốt Cho Mèo Con (2-12 Tháng) 85g',200,100,4,2),(60,'Bỉm Size XXS 18-30cm, 1-3kg',2,'2023-02-02','276385d4050f40019f50f21c23c33aa5.jpg','Bỉm Size XXS 18-30cm, 1-3kg',20,100,4,3),(61,'\r\nLược Chải Bông Lông Trắng\r\n',2,'2023-02-02','68f4e31bacff4aab90086834355c4475.jpg',' Lược Chải Bông Lông Trắng',30,100,5,3),(62,'Tấm Lót Khử Mùi 96h',4,'2023-02-02','fa98a4a198844e7f8bf586d775e83e75.jpg','Tấm Lót Khử Mùi 96h',40,100,5,3),(63,'Khây vệ sinh',5,'2023-03-12','a0dc5440892448a7875be41bffb4a762.jpeg','Khây vệ sinh',40,100,6,3),(64,'Xịt Khử Mùi Kháng Khuẩn Bioline 300ml',5,'2023-02-02','05cd3a52bebc4f188be8aab10af35f27.jpeg','Xịt Khử Mùi Kháng Khuẩn Bioline 300ml',60,100,6,3),(65,'Bóng Gai Nhiều Màu',0,'2023-02-02','xxxxsd.jpg','Bóng Gai Nhiều Màu',20,100,7,8),(66,'Trụ Cào Mèo Lò Xo 30x16cm',9,'2023-02-02','bgdfgdf.jpg','Trụ Cào Mèo Lò Xo 30x16cm',60,100,7,8),(69,'',0,'2023-02-02','qqqqq.jpg','Bóng Cói Lông Vũ 4cm',10,100,6,8),(70,'Xương Nhựa Kèm Dây',0,'2023-02-02','wwwwwa.jpg','Xương Nhựa Kèm Dây',5,100,6,8),(71,'Bàn Cào Móng Tròn Hình Thú 25cm',0,'2023-02-02','xxxxxxxxxf.jpg','Bàn Cào Móng Tròn Hình Thú 25cm',15,100,2,8),(72,'Banh Thừng 7cm',5,'2023-02-02','60b71a5625a74d0ab89c018ed86b4095.jpeg','Banh Thừng 7cm',35,100,3,8),(73,'Đồ Chơi Quả Tạ Gai To 15cm',5,'2023-02-02','2f530d5ff317404db0e101d8f013029c.png','Đồ Chơi Quả Tạ Gai To 15cm',39,100,6,8),(75,'Váy Dạ Đỏ Cổ Lông Trắng Đính Nơ Caro',5,'2023-02-02','c0e54560ea064ec6bf7f8c47a55f801c.jpg','Váy Dạ Đỏ Cổ Lông Trắng Đính Nơ Caro',60,100,3,9),(76,'Váy Nỉ Cây Thông Noel',20,'2023-02-02','ccaca63f39664377a7146b834854f2f0.jpg','Váy Nỉ Cây Thông Noel',150,100,5,9),(78,'Áo Len Đỏ Đính Nơ Trắng',10,'2023-02-02','b4f00afff242449cb29377b6664125cc.jpg','Áo Len Đỏ Đính Nơ Trắng',150,100,5,9),(80,'Váy Nỉ Đỏ Nâu Mặt Gấu',5,'2023-02-03','fffc780af59342a7b1fc1b0e90fc099e.jpg','Váy Nỉ Đỏ Nâu Mặt Gấu',201,100,6,9),(81,'Áo Nỉ Đỏ Cổ Hoa Lovely Dog',5,'2023-02-03','15e67cd04f2048ecb5b57cfb64dc7559.jpg','Áo Nỉ Đỏ Cổ Hoa Lovely Dog',200,50,5,9),(82,'\r\nÁo Hình Mặt Cún Và Chữ\r\n',5,'2023-02-03','a35d68622ad74402887386430807af6b.jpeg',' Áo Hình Mặt Cún Và Chữ',150,100,5,9),(84,'Áo Dài Tết Có Chân Tháo Rời',5,'2023-02-03','dae2fb16bcb64f50a6fb88a01369a3f7.jpg','Áo Dài Tết Có Chân Tháo Rời',200,5,6,9),(86,'Áo Tết Mèo Mặc Áo Dạ',5,'2023-02-03','75aec6c67ca24dfa972423687016254f.jpg','Áo Tết Mèo Mặc Áo Dạ',200,100,3,9),(88,'Váy Vàng Thắt Nơ',5,'2023-02-03','3f480278e7cb4fb498b182f45794e628.jpg','Váy Vàng Thắt Nơ',250,100,2,9),(91,'Dây Dắt Thiên Thần 1x120cm',5,'2023-02-03','1a5ccd848f0f4c9a8da4685c4c4d940b.jpeg','Dây Dắt Thiên Thần 1x120cm',50,100,2,10),(92,'Dây Dắt Tự Động DIIL 5M(Dưới 40kg)',5,'2023-02-03','065ff164e567425f95450cbc8167feb1.jpeg','Dây Dắt Tự Động DIIL 5M(Dưới 40kg)',50,100,7,10),(93,'Dây Dắt Police Vòng Cổ 3cm',5,'2023-02-03','eba50c7fe8074a0c822af278f771663d.jpeg','Dây Dắt Police Vòng Cổ 3cm',50,100,2,10),(94,'Rọ Mõm Vải MS02',5,'2023-02-03','8ca564dda676497794abac28797554ff.jpg','Rọ Mõm Vải MS02',50,100,2,10),(95,'Vòng Cổ Doremon Size Lớn 38cm',5,'2023-02-03','b5dc2b1661ed437189e1a7d4fc4f4805.jpeg','Vòng Cổ Doremon Size Lớn 38cm',50,10,6,10),(96,'Địu Cho Chó Mèo',5,'2023-02-03','da3e144cfdd6454197c4c4b18c24edaa.jpg','Địu Cho Chó Mèo',100,50,4,4),(97,'Bóng Nhựa In Dấu Chân',5,'2023-02-02','264cf02b673d4f119cc641295f464203.jpeg','Bóng Nhựa In Dấu Chân',20,500,2,8),(98,'Áo Len Noel Đính Nơ',5,'2023-02-02','26f6c41d500a4c01bdcbce928a782023.jpg','Áo Len Noel Đính Nơ',200,100,2,9),(99,'Áo Ba Lỗ Nhiều Màu',5,'2023-02-03','6bc157e447b643a3aad4bf1ae2daa6a8.jpeg','Áo Ba Lỗ Nhiều Màu',100,100,2,9),(100,'Áo Tết Mèo Thần Tài Và Đồng Tiền',5,'2023-02-03','341dbf1a25fa46f294d50f2cd3534217.jpg','Áo Tết Mèo Thần Tài Và Đồng Tiền',200,100,2,9),(101,'Balo Chữ Nhật Trong Suốt',20,'2023-02-03','e6a965496c7345839384ed95e0626aa8.jpeg','Balo Chữ Nhật Trong Suốt',500,100,6,4),(102,'Balo Trong Suốt Nhiều Hoạ Tiết',5,'2023-02-03','1bf2151c967840dc8f2bb44b5ca1d9b5.jpeg','Balo Trong Suốt Nhiều Hoạ Tiết',100,100,5,4),(103,'Túi Vận Chuyển Kèm Kính 40x25x25cm',5,'2023-02-03','b5fdfd1233924a168fd6c2a74f9e103e.jpeg','Túi Vận Chuyển Kèm Kính 40x25x25cm',100,50,4,4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcotftqap7by5m4ibph3ss3xvo` (`customerId`),
  CONSTRAINT `FKcotftqap7by5m4ibph3ss3xvo` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','admin123');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 14:27:44
