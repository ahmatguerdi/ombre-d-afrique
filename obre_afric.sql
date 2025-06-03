-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: ombre_afrique
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id_client` int NOT NULL,
  `nom_client` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `telephone` int DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'mom','okam',60426564,'teïba'),(2,'mht','issa',66040754,'Taradona'),(3,'moussa','abdou',85656465,'goz-amir'),(4,'moubarak','tiné',66666481,'bendjedid nord'),(5,'bakhit','ali',60701479,'mowgav-adré');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `numero` int NOT NULL,
  `type` varchar(25) DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  `id_employé` int DEFAULT NULL,
  `numero_table` int DEFAULT NULL,
  `montant` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,'à emporter',1,2,NULL,2000,'2025-06-03'),(2,'sur place',2,1,1,2500,'2025-06-02'),(3,'livraison à domicile',3,3,3,5000,'2025-06-01'),(4,'sur place',5,4,4,1500,'2025-05-31'),(5,'à emporter',4,2,NULL,3500,'2025-06-03');
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composer`
--

DROP TABLE IF EXISTS `composer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composer` (
  `code_plat` int NOT NULL,
  `id_ingredient` int NOT NULL,
  PRIMARY KEY (`code_plat`,`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composer`
--

LOCK TABLES `composer` WRITE;
/*!40000 ALTER TABLE `composer` DISABLE KEYS */;
INSERT INTO `composer` VALUES (1,2),(1,3),(2,1),(3,4);
/*!40000 ALTER TABLE `composer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenir`
--

DROP TABLE IF EXISTS `contenir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenir` (
  `code_plat` int NOT NULL,
  `numero_commande` int NOT NULL,
  PRIMARY KEY (`code_plat`,`numero_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenir`
--

LOCK TABLES `contenir` WRITE;
/*!40000 ALTER TABLE `contenir` DISABLE KEYS */;
INSERT INTO `contenir` VALUES (1,2),(1,3),(2,1),(3,4);
/*!40000 ALTER TABLE `contenir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employé`
--

DROP TABLE IF EXISTS `employé`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employé` (
  `id_employé` int NOT NULL,
  `nom_employé` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `adresse` varchar(25) DEFAULT NULL,
  `telephone` int DEFAULT NULL,
  `poste` varchar(25) DEFAULT NULL,
  `salaire` int DEFAULT NULL,
  `date_embauche` date DEFAULT NULL,
  PRIMARY KEY (`id_employé`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employé`
--

LOCK TABLES `employé` WRITE;
/*!40000 ALTER TABLE `employé` DISABLE KEYS */;
INSERT INTO `employé` VALUES (1,'Ahmat','oki','Moderne',67586758,'Gérant',60000,'2025-05-05'),(2,'Erda','Touar','Kaminé',684554442,'Cuisinier',56564,'2021-06-01'),(3,'Momage','Djerou','Ammar',645552212,'Caissier',250000,'2020-01-25'),(4,'Abakar','Matar','Bendjedid',675555455,'Caissier',300000,'2019-03-15');
/*!40000 ALTER TABLE `employé` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fournisseur` (
  `id_fournisseur` int NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `contact` int DEFAULT NULL,
  `speciate` varchar(25) DEFAULT NULL,
  `condition_paiement` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_fournisseur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,'Guerdi',68485464,'Boissons','carte bancaire'),(2,'borkounou',99546815,'Viandes','espèces'),(3,'ina',65485555,'poisons','Mobile Money'),(4,'Seiro',62584542,'légumes','Mobile Money');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `id_ingredient` int NOT NULL,
  `Nom` varchar(25) DEFAULT NULL,
  `description` varchar(25) DEFAULT NULL,
  `quantite` int DEFAULT NULL,
  `prix` int DEFAULT NULL,
  `id_fournisseur` int DEFAULT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Poulet','Sanopa',20,50000,4),(2,'Poisons','fraîches',150,75000,1),(3,'blé','sacs',5,125000,3),(4,'viandes','moutons',4,200000,2);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plat`
--

DROP TABLE IF EXISTS `plat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plat` (
  `code_plat` int NOT NULL,
  `nom_plat` varchar(25) DEFAULT NULL,
  `description` varchar(25) DEFAULT NULL,
  `prix_plat` varchar(25) DEFAULT NULL,
  `categorie` varchar(25) DEFAULT NULL,
  `temps_prepation` varchar(25) DEFAULT NULL,
  `liste_ingredient` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code_plat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plat`
--

LOCK TABLES `plat` WRITE;
/*!40000 ALTER TABLE `plat` DISABLE KEYS */;
INSERT INTO `plat` VALUES (1,'Sarkima','sarkima de mouton','1000','plats principaux','3h','viande, sel, huile, oignon, aile'),(2,'sandwich','oeuf et viande','500','entrées','3h 5mn','oeuf, viande, sel, huile, oignon, aile, tomate'),(3,'kissard','kissard avec gombo','1500','plats princcipaux','3h 50mn','mil, gombo vert, viande, sel, huile, oignon, aile'),(4,'basta','basta de miel','2000','desserts','2h','miel, lait, fruit, blé');
/*!40000 ALTER TABLE `plat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserver`
--

DROP TABLE IF EXISTS `reserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserver` (
  `numero_table` int DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserver`
--

LOCK TABLES `reserver` WRITE;
/*!40000 ALTER TABLE `reserver` DISABLE KEYS */;
INSERT INTO `reserver` VALUES (1,2,'2025-06-04'),(3,4,'2025-06-10'),(1,3,'2025-06-05'),(2,1,'2025-06-25');
/*!40000 ALTER TABLE `reserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables` (
  `numero_table` int NOT NULL,
  `capacite` int DEFAULT NULL,
  `zone_emplacement` varchar(25) DEFAULT NULL,
  `etat` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`numero_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES (1,2,'entrée sud','occupée'),(2,4,'entrée EST','libre'),(3,6,'salon','reservée'),(4,8,'véranda','libre');
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-03 14:34:02
