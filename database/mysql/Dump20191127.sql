-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rbi6
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `api_component_type`
--

DROP TABLE IF EXISTS `api_component_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_component_type` (
  `APIComponentTypeID` int(11) NOT NULL,
  `APIComponentTypeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AliasAPIComponentType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `GFFSmall` double DEFAULT NULL,
  `GFFMedium` double DEFAULT NULL,
  `GFFLarge` double DEFAULT NULL,
  `GFFRupture` double DEFAULT NULL,
  `GFFTotal` double DEFAULT NULL,
  `HoleCostSmall` double DEFAULT NULL,
  `HoleCostMedium` double DEFAULT NULL,
  `HoleCostLarge` double DEFAULT NULL,
  `HoleCostRupture` double DEFAULT NULL,
  `OutageSmall` double DEFAULT NULL,
  `OutageMedium` double DEFAULT NULL,
  `OutageLarge` double DEFAULT NULL,
  `OutageRupture` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`APIComponentTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_component_type`
--

LOCK TABLES `api_component_type` WRITE;
/*!40000 ALTER TABLE `api_component_type` DISABLE KEYS */;
INSERT INTO `api_component_type` VALUES (1,'COLBTM',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,10000,25000,50000,100000,2,4,5,21,'2019-06-14 07:43:20'),(2,'COLMID',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,10000,25000,50000,100000,2,4,5,21,'2019-06-14 07:43:20'),(3,'COLTOP',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,10000,25000,50000,100000,2,4,5,21,'2019-06-14 07:43:20'),(4,'COMPC',NULL,0.000008,0.00002,0.000002,0,0.00003,10000,20000,100000,300000,2,3,7,14,'2019-06-14 07:43:20'),(5,'COMPR',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,5000,10000,50000,100000,2,3,7,14,'2019-06-14 07:43:20'),(6,'COURSE-1',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(7,'COURSE-10',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(8,'COURSE-2',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(9,'COURSE-3',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(10,'COURSE-4',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(11,'COURSE-5',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(12,'COURSE-6',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(13,'COURSE-7',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(14,'COURSE-8',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(15,'COURSE-9',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(16,'DRUM',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(17,'FILTER',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,1000,2000,4000,10000,0,1,1,1,'2019-06-14 07:43:20'),(18,'FINFAN',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,1000,2000,20000,60000,0,0,0,0,'2019-06-14 07:43:20'),(19,'HEXSS',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,1000,2000,20000,60000,0,0,0,0,'2019-06-14 07:43:20'),(20,'HEXTS',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,1000,2000,20000,60000,0,0,0,0,'2019-06-14 07:43:20'),(21,'HEXTUBE',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,1000,2000,20000,60000,0,0,0,0,'2019-06-14 07:43:20'),(22,'KODRUM',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(23,'PIPE-1',NULL,0.000028,0,0,0.000003,0.000031,5,0,0,20,0,0,0,1,'2019-06-14 07:43:20'),(24,'PIPE-10',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,5,40,80,240,0,2,3,4,'2019-06-14 07:43:20'),(25,'PIPE-12',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,5,60,120,360,0,3,4,4,'2019-06-14 07:43:20'),(26,'PIPE-16',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,5,80,160,500,0,3,4,5,'2019-06-14 07:43:20'),(27,'PIPE-2',NULL,0.000028,0,0,0.000003,0.000031,5,0,0,40,0,0,0,1,'2019-06-14 07:43:20'),(28,'PIPE-4',NULL,0.000008,0.00002,0,0.000003,0.000031,5,10,0,60,0,1,0,2,'2019-06-14 07:43:20'),(29,'PIPE-6',NULL,0.000008,0.00002,0,0.000003,0.000031,5,20,0,120,0,1,2,3,'2019-06-14 07:43:20'),(30,'PIPE-8',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,5,30,60,180,0,2,3,3,'2019-06-14 07:43:20'),(31,'PIPEGT16',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,10,120,240,700,1,4,5,7,'2019-06-14 07:43:20'),(32,'PUMP1S',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,1000,2500,5000,5000,0,0,0,0,'2019-06-14 07:43:20'),(33,'PUMP2S',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,1000,2500,5000,5000,0,0,0,0,'2019-06-14 07:43:20'),(34,'PUMPR',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,1000,2500,5000,10000,0,0,0,0,'2019-06-14 07:43:20'),(35,'REACTOR',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,10000,24000,40000,80000,4,6,6,14,'2019-06-14 07:43:20'),(36,'TANKBOTTOM',NULL,0.00072,0,0,0.000002,0.000722,5000,0,0,120000,5,0,0,50,'2019-06-14 07:43:20'),(37,'OTHER',NULL,0.000008,0.00002,0.000002,0.000001,0.000031,10000,25000,50000,100000,2,4,5,21,'2019-06-14 07:43:20'),(38,'TANKROOFFIXED',NULL,0.00007,0.000025,0.000005,0,0.0001,5000,12000,20000,40000,2,3,3,7,'2019-06-14 07:43:20'),(39,'TANKROOFFLOAT',NULL,0.00072,0,0,0.000002,0.000722,5000,0,0,120000,5,0,0,50,'2019-06-14 07:43:20');
/*!40000 ALTER TABLE `api_component_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_group_permissions_auth_group_permissio_permission_id_84c5c` (`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm_auth_g` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` bigint(20) DEFAULT NULL,
  `codename` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` bigint(20) DEFAULT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` bigint(20) DEFAULT NULL,
  `is_active` bigint(20) DEFAULT NULL,
  `date_joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'123','2018-01-24 10:47:58',1,'vuna','','','anhvu01011994@gmail.com',1,1,'2017-12-19 08:50:49');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id_auth_user_g` (`group_id`),
  KEY `auth_user_groups_auth_user_groups_group_id_97559544_fk_auth_gro` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_user_user_permissions_auth_user_user_permi_permission_id_1` (`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm_auth_u` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_level1`
--

DROP TABLE IF EXISTS `ca_level1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ca_level1` (
  `ID` int(11) DEFAULT NULL,
  `Release_Phase` text,
  `fact_di` double DEFAULT NULL,
  `fact_mit` double DEFAULT NULL,
  `fact_ait` double DEFAULT NULL,
  `CA_cmd` double DEFAULT NULL,
  `CA_inj_flame` double DEFAULT NULL,
  `CA_inj_toxic` double DEFAULT NULL,
  `CA_inj_ntnf` double DEFAULT NULL,
  `FC_cmd` double DEFAULT NULL,
  `FC_affa` double DEFAULT NULL,
  `FC_prod` double DEFAULT NULL,
  `FC_inj` double DEFAULT NULL,
  `FC_envi` double DEFAULT NULL,
  `FC_total` double DEFAULT NULL,
  `FCOF_Category` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_level1`
--

LOCK TABLES `ca_level1` WRITE;
/*!40000 ALTER TABLE `ca_level1` DISABLE KEYS */;
INSERT INTO `ca_level1` VALUES (99,'Gas',0,0.25,0,2555.46970883798,49.1415771499572,0,0,24183.0065359477,5110939.41767596,2460746.02667537,49141.5771499572,0,7645010.02803724,'D'),(123,'Gas',0,0.05,0.839728217426059,0,0,0,3083.71516774003,29019.6078431373,0,243790.849673203,154185758.387002,0,154458568.844518,'E'),(124,'Powder',0,0.2,0,0,0,0,0,13490.1960784314,0,190849.673202614,0,0,204339.869281046,'C'),(142,'Liquid',0.25,0.2,0.659872102318145,0,0,0,0,0,0,0,0,0,100000000,'E'),(146,'Liquid',0.25,0.2,0.659872102318145,0,0,0,0,0,0,0,0,0,100000000,'E'),(148,'Liquid',0.25,0.2,0.659872102318145,0,0,0,0,0,0,0,0,0,100000000,'E'),(149,'Liquid',0.25,0.15,1,0,0,0,0.000000453812643262802,11310,0,661400,0.000226906321631401,0,672710.000226906,'C'),(157,'Liquid',0.25,0.2,0.659872102318145,0,0,0,0,0,0,0,0,0,100000000,'E'),(158,'Liquid',0.25,0.2,0.659872102318145,0,0,0,0,0,0,0,0,0,100000000,'E'),(181,'Gas',0.25,0.2,0,0,0,0,0,0,0,0,0,0,100000000,'E'),(220,'Liquid',0.25,0.2,0.659872102318145,0,0,0,0,0,0,0,0,0,100000000,'E'),(261,'Gas',0,0.15,0,611.111787282893,57.9002129121442,0,0,24183.0065359477,916667.680924339,1023381.7454878,579.002129121442,0,1964811.43507721,'D'),(298,'Liquid',0,0.15,0.659872102318145,0,0,0,0,0,0,0,0,0,100000000,'E'),(312,'Gas',0,0.25,0,2555.46970883798,49.1415771499572,0,0,24183.0065359477,5110939.41767596,2460746.02667537,49141.5771499572,0,7645010.02803724,'D'),(346,'',0,0,0,0,0,0,0,0,0,0,0,0,100000000,'E'),(347,'',0,0,0,0,0,0,0,0,0,0,0,0,100000000,'E'),(351,'',0,0,0,0,0,0,0,0,0,0,0,0,100000000,'E'),(352,'Liquid',0,0.15,0,45.9830870053085,91.243326468701,0,0,7254901960784.31,2069238915.23888,68559551180.827,5036631621.0723,35761.1235955056,7330567418262.58,'E'),(370,'Gas',0.2,0.05,0,173.148994463478,23.6675923550006,0,0,3627450980.39216,8311151734.24696,411788154.765311,53015406.8752012,10518198.1663531,12413924474.446,'E'),(407,'',0,0,0,0,0,0,0,0,0,0,0,0,100000000,'E'),(408,'',0,0,0,0,0,0,0,0,0,0,0,0,100000000,'E'),(409,'',0,0,0,0,0,0,0,0,0,0,0,0,100000000,'E'),(410,'',0,0,0,0,0,0,0,0,0,0,0,0,100000000,'E'),(96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100000000,'E'),(98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100000000,'E');
/*!40000 ALTER TABLE `ca_level1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cof_fluid`
--

DROP TABLE IF EXISTS `cof_fluid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cof_fluid` (
  `COFFluidID` int(11) NOT NULL AUTO_INCREMENT,
  `COFFluid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AliasName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ExamplesOfApplicable` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FluidType` int(11) NOT NULL,
  `MW` double DEFAULT NULL,
  `NBP` double DEFAULT NULL,
  `Density` double DEFAULT NULL,
  `HeatEquation` int(11) DEFAULT NULL,
  `IdealConstantA` double DEFAULT NULL,
  `IdealConstantB` double DEFAULT NULL,
  `IdealConstantC` double DEFAULT NULL,
  `IdealConstantD` double DEFAULT NULL,
  `IdealConstantE` double DEFAULT NULL,
  `AmbientState` int(11) NOT NULL,
  `AutoIgnitionTemperature` int(11) DEFAULT NULL,
  `K` double DEFAULT NULL,
  `Flammable` tinyint(1) NOT NULL,
  `Toxic` tinyint(1) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`COFFluidID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `UK_COFFluid` (`COFFluidID`),
  UNIQUE KEY `IX_COF_FLUID` (`AuditingID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cof_fluid`
--

LOCK TABLES `cof_fluid` WRITE;
/*!40000 ALTER TABLE `cof_fluid` DISABLE KEYS */;
INSERT INTO `cof_fluid` VALUES (1,'C1-C2','C1_To_C2','Methane, Ethane, Ethylene, LNG, Fluid Gas',0,23,-125,250.512,1,12.3,0.115,-0.000029,0,0,0,558,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'80C9BA22-D051-4B56-A015-BF40B5E7A94A'),(2,'C3-C4','C3_To_C4','Propane, Butane, Isobutane, LPG',0,51,-21,538.379,1,2.632,0.3188,-0.000135,0,0,0,369,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'49EA3965-7553-4908-97AD-33B2A4CBC152'),(3,'C5','C5','Pentane',0,72,36,625.199,1,-3.626,0.4873,-0.00026,0,0,1,284,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'FA4C2B5E-CAF8-4B7D-9881-B67BBAA0D04A'),(4,'C6-C8','C6_To_C8','Gasoline, Naphtha, Light Straight Run, Heptane',0,100,99,684.018,1,-5.146,0.676,-0.000365,0,0,1,223,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'00E7096B-461F-4699-9175-A00BC35BCC46'),(5,'C9-C12','C9_To_C12','Diesel, Kerosene',0,149,184,734.012,1,-8.5,1.01,-0.000556,0,0,1,208,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F180E47E-944D-4F55-9709-ADCAA58BAC3F'),(6,'C13-C-16','C13_To_C16','Jet Fuel, Kerosene, Atmosphere Gas Oil',0,205,261,764.527,1,-11.7,1.39,-0.000772,0,0,1,202,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'3E14E87F-5BC4-4F23-A1C8-50D530808D35'),(7,'C17-C25','C17_To_C25','Gas Oil, Typical Crude',0,280,344,775.019,1,-22.4,1.94,-0.00112,0,0,1,202,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'D975601A-9B0F-4915-8846-386E32C27D7E'),(8,'C25+','C25_And_Above','Residium, Heavy Crude, Lube Oil, Seal Oil',0,422,527,900.026,1,-22.4,1.94,-0.00112,0,0,1,202,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'29665E4A-4B6B-4373-995C-644D6378CFFA'),(9,'Water','Water','Water',3,18,100,997.947,3,276000,-2090,8.125,-0.0141,0.000009,1,NULL,0,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'7F694BD1-FEB2-4898-9E10-DC562EF32007'),(10,'Steam','Steam','Steam',3,18,100,997.947,3,33400,26800,2610,8900,1170,0,NULL,0,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'1A6A93AF-6549-49E6-B2AF-23747BEC8436'),(11,'Acid','Acid','Acid',3,18,100,997.947,3,276000,-2090,8.125,-0.0141,0.000009,1,NULL,0,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'3FE229D4-C078-43F7-93CC-185FFDBF0577'),(12,'Caustic','Caustic','Caustic',3,18,100,997.947,3,276000,-2090,8.125,-0.0141,0.000009,1,NULL,0,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'8515A7FB-8DB9-4A82-972C-980B10FA409F'),(13,'H2','H2','Hydrogen',0,2,-253,71.01,1,27.1,0.00927,-0.000014,0,0,0,400,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'8D08AE4E-0FF0-43CA-9BCE-523F8EA9EED9'),(14,'H2S','H2S','Hydrogen Sulfide',2,34,-59,993.029,1,31.9,0.00144,0.000024,0,0,0,260,0,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'F753C4C6-70FD-4216-8F9E-D23056C3E488'),(15,'HFAcid','HFAcid','Hydrogen Fluoride',1,20,20,967.031,1,29.1,0.000661,-0.000002,0,0,0,17760,0,0,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'27557ECF-930F-43C0-BD40-61903E8E9320'),(16,'CO','CO','Carbon Monoxide',2,28,-191,800.92,2,29100,8770,3090,0.00846,1540,0,609,0,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'D6436A01-D62A-4194-B49B-CF5F35882788'),(17,'DEE','DEE','Diethyl Ether',0,74,35,720.828,2,86200,255000,1540,144000,-689,1,160,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'9CA2090F-ADDC-4B22-9696-A835AB29DCFA'),(18,'HCL','HCL','Hydrogen Chloride',1,36,-85,1185.362,5,0,0,0,0,0,0,NULL,1.41,0,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'A1CAB1AB-2C9D-4725-97B4-53EA5EE7012D'),(19,'Nitric Acid','NitricAcid','Nitric Acid',1,63,121,1521.749,4,0,0,0,0,0,1,NULL,1.5,0,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'7D0DE5DD-0DFE-424D-8B4A-121F48C5C76F'),(20,'ALCL3','ALCL3','Alumunium Chloride',1,133.5,194,2434.798,1,43400,39700,417,24000,0,2,558,0,0,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'761F8326-9E2B-4E1A-A332-EA0C10C26DCF'),(21,'NO2','NO2','Nitrogen Dioxide',1,90,135,929.068,4,0,0,0,0,0,1,NULL,1.5,0,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'0F8C1979-1AD7-4BAD-A2DB-322E813C268C'),(22,'Phosgene','Phosgene','Phosgene',1,99,83,1377.583,4,0,0,0,0,0,1,NULL,1.5,0,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'995D4CF4-FD01-46FD-A4A5-348C935BFC6E'),(23,'TDI','TDI','Toluene Diisocyanate',1,174,251,1217.399,4,0,0,0,0,0,1,620,1.5,0,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'AF7D6860-6F9F-429A-82CD-DF03A8A26487'),(24,'Methanol','Methanol','Methanol',0,32,65,800.92,2,39300,87900,1920,53700,897,1,464,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'6A6B58D9-3042-4A3C-B22F-42A12A430E9F'),(25,'PO','PO','Propylene Oxide',2,58,34,832.957,2,49500,174000,1560,115000,702,1,449,0,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'43C1C009-59BB-4936-ACC5-7FCE1F1C039D'),(26,'Aromatics','Aromatics','Benzene, Toluene, Xylene, Cuemene',0,104,145,683.986,2,89300,215000,772,99900,2440,1,490,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'DC11DE43-4980-47A9-B47F-B36834FA4FCA'),(27,'Styrene','Styrene','Styrene',0,104,145,683.986,2,89300,215000,772,99900,2440,1,490,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'A4668F19-1016-42B9-8C55-73D99895ACCB'),(28,'EEA','EEA','Ethylene Glycol Monoethyl Ether Acetate',0,132,156,977.123,2,106000,240000,659,150000,1970,1,379,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'73F41213-8F7C-4699-9EFF-B344C1B30F7A'),(29,'EE','EE','Ethylene Glycol Monoethyl Ether',2,90,135,929.068,2,32500,300000,1170,208000,473,1,235,0,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'74328DFF-570B-4058-B1C8-FEDE42773A08'),(30,'EG','EG','Ethylene Glycol',0,62,197,1105.27,2,63000,146000,1670,97300,774,1,396,0,1,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'1FD59ED3-A4E6-4715-8DB8-D3319974D154'),(31,'EO','EO','Ethylene Oxide',2,44,11,881.013,2,33500,121000,1610,82400,737,0,429,0,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'DBF14281-82B6-4417-B690-177460F3B917'),(32,'Pyrophoric','Pyrophoric','Pyrophoric Materials',2,149,184,734.012,1,-8.5,1.01,-0.000556,0,0,1,54,0,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'C5B7F170-0311-4CA1-B70D-5BAF752FDC59'),(33,'Ammonia','Ammonia','Ammonia',1,17,-33,681.9,6,0,0,0,0,0,0,651,1.32,0,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'F9B6011C-DE5C-4C06-9C47-130866B761CE'),(34,'Chlorine','Chlorine','Chlorine',1,71,-34,1562.5,7,0,0,0,0,0,0,NULL,1.33,0,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'58A7E2B9-B87A-47E4-8F4F-1D5FD74446E1');
/*!40000 ALTER TABLE `cof_fluid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_detail`
--

DROP TABLE IF EXISTS `component_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_detail` (
  `ComponentID` int(11) NOT NULL,
  `MaterialID` int(11) DEFAULT NULL,
  `StreamID` int(11) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ComponentID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_COMPONENT_DETAIL` (`AuditingID`),
  CONSTRAINT `FK_COMPONENT_DETAIL_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_detail`
--

LOCK TABLES `component_detail` WRITE;
/*!40000 ALTER TABLE `component_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_master`
--

DROP TABLE IF EXISTS `component_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_master` (
  `ComponentID` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentNumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EquipmentID` int(11) NOT NULL,
  `ComponentTypeID` int(11) NOT NULL,
  `ComponentName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ComponentDesc` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IsEquipment` smallint(6) DEFAULT NULL,
  `IsEquipmentLinked` smallint(6) DEFAULT NULL,
  `APIComponentTypeID` int(11) NOT NULL,
  `Created` datetime DEFAULT NULL,
  PRIMARY KEY (`ComponentID`),
  KEY `FK_COMPONENT_MASTER_API_COMPONENT_TYPE` (`APIComponentTypeID`),
  KEY `FK_COMPONENT_MASTER_COMPONENT_TYPE` (`ComponentTypeID`),
  KEY `FK_COMPONENT_MASTER_EQUIPMENT_MASTER` (`EquipmentID`),
  CONSTRAINT `FK_COMPONENT_MASTER_API_COMPONENT_TYPE` FOREIGN KEY (`APIComponentTypeID`) REFERENCES `api_component_type` (`APIComponentTypeID`),
  CONSTRAINT `FK_COMPONENT_MASTER_COMPONENT_TYPE` FOREIGN KEY (`ComponentTypeID`) REFERENCES `component_type` (`ComponentTypeID`) ON DELETE CASCADE,
  CONSTRAINT `FK_COMPONENT_MASTER_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_master`
--

LOCK TABLES `component_master` WRITE;
/*!40000 ALTER TABLE `component_master` DISABLE KEYS */;
INSERT INTO `component_master` VALUES (1,'45',2,3,'linh','',0,0,16,'2019-09-10 15:13:01'),(5,'34',3,7,'duong','',0,1,1,'2019-09-30 10:53:24'),(9,'trt',2,4,'rww','',0,0,3,'2019-11-01 15:20:07'),(10,'fgfg',4,3,'dss','',0,1,3,'2019-11-01 15:20:07'),(25,'1.1',11,12,'tank','',NULL,0,36,'2019-11-16 14:55:10'),(26,'2',12,6,'cc','',NULL,1,1,'2019-11-25 09:11:12'),(27,'1',13,1,'luongcuong','',NULL,0,23,'2019-11-25 10:47:33');
/*!40000 ALTER TABLE `component_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_modelling`
--

DROP TABLE IF EXISTS `component_modelling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_modelling` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentID` int(11) NOT NULL,
  `ObjectName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_COMPONENT_MODELLING` (`AuditingID`),
  KEY `FK_COMPONENT_MODELLING_COMPONENT_MASTER` (`ComponentID`),
  CONSTRAINT `FK_COMPONENT_MODELLING_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_modelling`
--

LOCK TABLES `component_modelling` WRITE;
/*!40000 ALTER TABLE `component_modelling` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_modelling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_type`
--

DROP TABLE IF EXISTS `component_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_type` (
  `ComponentTypeID` int(11) NOT NULL,
  `ComponentTypeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ComponentTypeCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Shape` varchar(50) DEFAULT NULL,
  `ShapeFactor` double NOT NULL DEFAULT '0',
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ComponentTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_type`
--

LOCK TABLES `component_type` WRITE;
/*!40000 ALTER TABLE `component_type` DISABLE KEYS */;
INSERT INTO `component_type` VALUES (1,'Cylindrical Section','CylindricalSection','Cylindrical',2,'2019-06-14 07:43:20'),(3,'Elliptical Head','EllipticalHead','Head',1.13,'2019-06-14 07:43:20'),(4,'Torispherical Head','TorisphericalHead','Head',1.13,'2019-06-14 07:43:20'),(6,'Bend / Elbow','Elbow','Cylindrical',2,'2019-06-14 07:43:20'),(7,'Cylindrical Shell','CylindricalShell','Cylindrical',2,'2019-06-14 07:43:20'),(8,'Nozzle','Nozzle','Cylindrical',2,'2019-06-14 07:43:20'),(9,'Spherical Shell','SphericalShell','Spherical',4,'2019-06-14 07:43:20'),(10,'Hemispherical Head','HemisphericalHead','Head',1.13,'2019-06-14 07:43:20'),(11,'Reducer','Reducer','Cylindrical',2,'2019-06-14 07:43:20'),(12,'Tank Bottom','TankBottom',NULL,0,'2019-06-14 07:43:20'),(13,'Shell','Shell',NULL,0,'2019-06-14 07:43:20'),(14,'Fixed Roof','TANKROOFFIXED',NULL,0,'2019-06-14 07:43:20'),(15,'Floating Roof','TANKROOFFLOAT',NULL,0,'2019-06-14 07:43:20'),(16,'Pressure Relief Device','PressureReliefDevice',NULL,0,'2019-06-14 07:43:20');
/*!40000 ALTER TABLE `component_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_code`
--

DROP TABLE IF EXISTS `design_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `design_code` (
  `DesignCodeID` int(11) NOT NULL AUTO_INCREMENT,
  `DesignCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DesignCodeApp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SiteID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DesignCodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `design_code`
--

LOCK TABLES `design_code` WRITE;
/*!40000 ALTER TABLE `design_code` DISABLE KEYS */;
INSERT INTO `design_code` VALUES (1,'XO07','123',4),(2,'XO08','vuna',4),(4,'POSTGRESQL_DEMO','PG_DEMO',4),(8,'Lab 411 Code','None',3),(9,'Div II','None',3),(10,'09877','09yyy',13),(11,'Huong','Huong',1),(12,'hihi','hihi',3),(13,'DTH','DTH',3),(14,'gt','sd',3),(15,'me','memo',3);
/*!40000 ALTER TABLE `design_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` bigint(20) NOT NULL,
  `action_time` datetime DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) DEFAULT NULL,
  `action_flag` bigint(20) DEFAULT NULL,
  `change_message` longtext,
  `content_type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co_django_a` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_django_admin_log` (`user_id`),
  KEY `django_admin_log_django_admin_log_content_type_id_c4bce8eb_fk_d` (`content_type_id`),
  KEY `django_admin_log_django_admin_log_user_id_c564eba6_fk` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-12-25 09:11:27','36','TANKBOTTOM',2,'[{\"changed\": {\"fields\": [\"outagemedium\"]}}]',7,1),(2,'2017-12-25 09:11:58','36','TANKBOTTOM',2,'[{\"changed\": {\"fields\": [\"outagemedium\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` bigint(20) NOT NULL,
  `app_label` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'polls','apicomponenttype'),(8,'polls','equipmenttype'),(9,'polls','dmitems'),(10,'polls','dmcategory'),(11,'polls','tbl52capropertieslevel1'),(12,'polls','tbl74sccdmpwht'),(13,'polls','tbl204dmhtha'),(14,'polls','tbl511dfbthin');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `applied` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-12-19 08:47:53'),(2,'auth','0001_initial','2017-12-19 08:47:54'),(3,'admin','0001_initial','2017-12-19 08:47:55'),(4,'admin','0002_logentry_remove_auto_add','2017-12-19 08:47:55'),(5,'contenttypes','0002_remove_content_type_name','2017-12-19 08:47:55'),(6,'auth','0002_alter_permission_name_max_length','2017-12-19 08:47:55'),(7,'auth','0003_alter_user_email_max_length','2017-12-19 08:47:55'),(8,'auth','0004_alter_user_username_opts','2017-12-19 08:47:55'),(9,'auth','0005_alter_user_last_login_null','2017-12-19 08:47:55'),(10,'auth','0006_require_contenttypes_0002','2017-12-19 08:47:55'),(11,'auth','0007_alter_validators_add_error_messages','2017-12-19 08:47:55'),(12,'auth','0008_alter_user_username_max_length','2017-12-19 08:47:56'),(13,'auth','0009_alter_user_last_name_max_length','2017-12-19 08:47:56'),(14,'sessions','0001_initial','2017-12-19 08:47:56');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_django_session_expire_date_a5c62663` (`expire_date`),
  KEY `django_session_expire_date_a5c62663_django_session` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('018ym6gnkngnxori08kcwbtcwlsl8j2m','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-07-17 04:34:53'),('0cvaskxni7x20wsetmyq70lbp2egaqc0','MGU0YzU5MWZkYTdiNTUxMmZkNjFhN2UyNTg2NjA4ZDlkMTEwZWJkZDp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMDEyMjMzNDQ1NTEiLCJhZGRyZXNzIjoiSGEgTm9pICIsImVtYWlsIjoiZG9hbmh0dWFuMTQxMTE5OTdAZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-18 08:57:28'),('0eounoeppo2w0e4qdf7rceug61f3143s','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-12-30 12:53:48'),('0fy864ai9209bmvzz9hby9jjh1zr238n','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-09-28 03:36:20'),('0k7qd83xegi6tcuixkqe0zulykzzof1r','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-09-28 03:21:45'),('0xoihdubpc46ocrngot33qxddf2ai7ej','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-28 08:22:47'),('14jq2ed7xy1x3r9epwzqk6t50853m2yw','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-12-11 02:11:49'),('15qiwotmttfqf2rb7oqt1fezmc4qkiiq','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-19 07:11:53'),('1cox117gsbost8z0jsk61b9egg56wy08','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-30 14:58:09'),('1eyb0zz253s9qt0yqkiyqng622z3v72w','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-13 07:47:43'),('1n13c8zn0msi23549t8tjxiw1s5q2kt8','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-05 10:57:49'),('1qipyed8g8gp9t7t25qyoithackqkt8y','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-28 07:15:59'),('1u4mzf187ikd6j1ds9cev59wer09vibs','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-12-03 01:59:15'),('1ung49z27cv89e29w6hbdjc18fsx024z','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-18 07:39:11'),('2eibc3sghrxn1lerito8ssnoesprcumk','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-24 07:27:24'),('2ickbnbok5jy72pk8cdbrkb4md1tljhv','MDJjODc3YjZmZmM0MTM3OTBhNWU3MjZmNWVkYzE4MDg1ODA4OTI0Nzp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjEyMzEyMzMxIiwiYWRkcmVzcyI6IlllbiBCYWkiLCJlbWFpbCI6ImhpZXV0cmFuQGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-30 15:10:14'),('2j9tzp8qv34ze4al96gcvrvtrbw09luz','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-31 02:52:01'),('2k4is39k65re2690uf11iurm5mv6zzpc','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-07-19 05:34:34'),('2nav90e0tvjspx7x5po4q8jdfkddpkve','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-02-06 09:06:38'),('2spilwr0wc309ek1e6dr0m7cr58wbmxm','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-12-28 13:11:28'),('2szvqir66cbfr54wneg84hqbwo2e52i8','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-30 03:24:32'),('2wrzreypv73h9box6sd5y5ryuo9owiby','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-30 04:03:00'),('33zjusr9ipli07qmbkeq4j4qbrinfuei','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-24 07:19:57'),('3446whhqyis2pvw7eeg0z6d1agyennfa','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-30 06:51:42'),('35oar7ftwytboba9hf7ni03csii8ponf','MDJjODc3YjZmZmM0MTM3OTBhNWU3MjZmNWVkYzE4MDg1ODA4OTI0Nzp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjEyMzEyMzMxIiwiYWRkcmVzcyI6IlllbiBCYWkiLCJlbWFpbCI6ImhpZXV0cmFuQGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-28 03:58:47'),('37fy6m9bngutlm9092jxh447tznl3d62','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-18 07:23:50'),('39kx14ljkjlx1h1aacln8fb87q0nxulw','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-12-02 02:03:55'),('3d0j179iidoh0rjkpjrt4xtt2n1uloae','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-26 08:27:19'),('3eo84jv1df7o7vil91s3bpspuzhjo37u','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-30 03:33:15'),('3g1mb12n47sx6is691mfyg7qhhi1o1zc','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-14 08:28:38'),('3m9as7qm9antc2nh6gw4m0hj1obw7hx2','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-10 08:41:46'),('3t0fs2lt22iohncbdzoxid1sps5fwvbx','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-16 08:47:07'),('46wanlxt43dmt5y7vxmv6zdo4hf799c6','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-29 15:08:32'),('49uy1jpwc72bwemx89wyl4r2i1cpmeox','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-14 11:55:39'),('4rarvwykm516cqztovez7e90qkb5vhof','MDJjODc3YjZmZmM0MTM3OTBhNWU3MjZmNWVkYzE4MDg1ODA4OTI0Nzp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjEyMzEyMzMxIiwiYWRkcmVzcyI6IlllbiBCYWkiLCJlbWFpbCI6ImhpZXV0cmFuQGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-30 02:55:36'),('4tyfhptdgjq3cjvsgch1qrkor1z1a7an','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-14 06:52:40'),('4vfl833ef6bai2ygvr882y8jd1l4tox5','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-11 07:09:33'),('55i92qvcmn528pm8era11jb6hajxxya6','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-22 13:22:42'),('5f5jwr2cuvcjyt5j7t8oysebvn07zk8e','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-23 08:22:45'),('5g6kh5mn8usyntoocaxcpwto66ryxmyi','MGU0YzU5MWZkYTdiNTUxMmZkNjFhN2UyNTg2NjA4ZDlkMTEwZWJkZDp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMDEyMjMzNDQ1NTEiLCJhZGRyZXNzIjoiSGEgTm9pICIsImVtYWlsIjoiZG9hbmh0dWFuMTQxMTE5OTdAZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-11-14 06:53:08'),('5ratcxar4yd8xljxo4hicukpfoxu7d9n','YTg2MGE4MDdlN2ZlMWFkMWRkYWIwOTBhMDU2MTkxNzQxMzZjMzM2Mzp7ImlkIjozMiwibmFtZSI6IlRyXHUxZWE3biBUcnVuZyBIaVx1MWViZnUgIiwia2luZCI6ImZhY3RvcnkiLCJwaG9uZSI6IjA5NjIxOTkxOTciLCJhZGRyZXNzIjoiU1x1MWVkMSAyNCwgR2lhaSBQaFx1MDBmM25nLCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCIsImVtYWlsIjoiMjAxNTQwNzdAc3R1ZGVudC5odXN0LmVkdS52biIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-05-03 03:30:03'),('5rly657rouoeit786mdiai7cl4697ts2','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-19 03:49:46'),('5xqu8ewwawf49m9k3h0v3yi1v4yvngiw','ZmNkMGNlMzdhOWViYjFjNDIzY2MwNGJhNzY1YTVmNjEyNzYzNDQxZTp7ImlkIjoyLCJuYW1lIjpudWxsLCJraW5kIjoiY2l0aXplbiIsInBob25lIjpudWxsLCJhZGRyZXNzIjpudWxsLCJlbWFpbCI6bnVsbCwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-08-18 08:49:22'),('6jhou9rjx4k1qmld5w9nlua599r92or2','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-29 08:45:50'),('6kixxi9dufvuihm6i2a4nr2y4hg6gvbn','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-14 02:45:59'),('6o9lwe7lxeflm8o85e54n1h783pvnj95','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-09 07:14:04'),('6rqr8af75b8o6a7oeqww653zlz7d2u8e','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-12 10:42:02'),('6xrbjjcbtp0nyxzxcnsgw72br2j11bcw','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-09 07:40:54'),('6yu6bo2w3e6wp0jszzmk157ceq0w0rti','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-10 16:50:52'),('74iuia5olyg80iko8cbplkw3ye3gmysw','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-28 12:27:14'),('7bem20eppt747hlo1064r4fqyf9dvml8','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-04-04 07:51:21'),('7i3xj1w1bhgaa7akr0n9i4l3uhc2moba','MGU0YzU5MWZkYTdiNTUxMmZkNjFhN2UyNTg2NjA4ZDlkMTEwZWJkZDp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMDEyMjMzNDQ1NTEiLCJhZGRyZXNzIjoiSGEgTm9pICIsImVtYWlsIjoiZG9hbmh0dWFuMTQxMTE5OTdAZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-11-14 07:35:28'),('7msznfats79s5soc4phxqnk5s457t6ip','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-04-01 03:34:42'),('7vxfal0flt33a8cqd257ihu0gm60min5','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-10-30 03:24:04'),('7xvkjwv9e7x8lan3lujctso4tij1m6pn','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-31 07:08:08'),('7zphbe840tc8moccqmw6hzpneleztjkk','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-23 03:54:56'),('821onjmfzr5urp9ekn8eifonz4om3g2d','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-01 08:05:01'),('89uzlmuhqtas3donh69ukb4vpbmmoid6','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-10-19 03:15:12'),('8gjouusiqvxgfy641s83wyl09bdp6kcs','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-12-04 17:57:01'),('8m3q6wpoixrbadscuelyas7ydsr6bzc4','MDJjODc3YjZmZmM0MTM3OTBhNWU3MjZmNWVkYzE4MDg1ODA4OTI0Nzp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjEyMzEyMzMxIiwiYWRkcmVzcyI6IlllbiBCYWkiLCJlbWFpbCI6ImhpZXV0cmFuQGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-30 01:40:15'),('8nuq8oy2pqa72iheuxhpwewjrm7zrbjc','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-23 10:59:26'),('9734zj5geoioke3iz909ncyx3zuybtyh','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-05 06:46:17'),('9av5gg2s7msvn5hc2lbgqd3ulyzbz99c','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-06-05 07:15:04'),('9z7e5mfc6gbfilj5ncs44fpi8fhjlb85','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-01 02:58:40'),('aciv7u9z8ta0fddu7ie8qq8uhx8sbk0j','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-01 04:30:20'),('aedkfusledstboz0fkgh7xe2r5clsrdz','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-11-21 08:23:25'),('agksdigwel1mp5ftexy3c5dog22rhb35','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-11 08:30:11'),('agr5dbbe4x5dp2fdu7myiyeu7ffgfzxr','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-14 03:39:11'),('amuvkdm6gzo4xljwublj1iot5b14qxtz','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-05-22 04:25:37'),('axijd3oh9t28890qd1okzugolaaqlcah','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-23 08:37:49'),('ay07kdjctifn5eijzhonm00svmza2ksv','MGU0YzU5MWZkYTdiNTUxMmZkNjFhN2UyNTg2NjA4ZDlkMTEwZWJkZDp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMDEyMjMzNDQ1NTEiLCJhZGRyZXNzIjoiSGEgTm9pICIsImVtYWlsIjoiZG9hbmh0dWFuMTQxMTE5OTdAZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-18 08:22:29'),('b2ipeos65rkx35kmryyym7s4v27zml4r','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-23 08:06:34'),('bamedpdy5l2kt717k5tqazdall06dsed','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-20 08:45:02'),('betfx9xpxo7olqncia7zbcrzxtoshlng','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-03 09:03:35'),('bp7xown5vrsgd9bfi4iiefxs6u8knek2','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-12 06:17:54'),('bvjyt1ajlb4fxh9nzbaa5nzz0hz7cngg','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-28 12:27:14'),('bw432ia8v1jhszpqi2oo6eda3hkxvumr','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-08 10:47:44'),('c81mwoq2q485haubmvna0dtst37yhwik','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-12-05 08:11:01'),('chvi3q5ouwma5hoav3bdqu2ltuzseokj','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-02 08:12:55'),('clahdtcy0hz2o9fuzuxxkc23ye4wuqau','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-12 03:25:36'),('crie3icrgqgxiwqo4jlgork3tvk2hui3','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-20 08:52:19'),('cwgiulqcd6fl6kqqpfljkjdmq7qpgotb','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-18 07:01:07'),('d1g0z9m4ymu7z6qwcyuzi39z0zqhrkqs','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-11 07:57:28'),('d3fxj0ctfpyl5zn5ygvuuk8wzkz3jvip','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-20 08:24:03'),('dahaoak5ul8oplfudnflchc4y09ytmti','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-07 09:23:08'),('djm99okfntaug9xxbj7ga9wai02nnujz','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-23 02:52:46'),('dk9xwgxu203r4hsze6f3u1ybv1nfrnvt','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-08-30 14:52:52'),('dph9f3oiyvd9hno604ipapi7x65rhd9e','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-07 07:02:00'),('e65dvmp2bnfipylflh4899uleati2vbq','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-16 08:48:37'),('ehaa60wyllyvic94bqzc99phlpzmgd8t','YTg2MGE4MDdlN2ZlMWFkMWRkYWIwOTBhMDU2MTkxNzQxMzZjMzM2Mzp7ImlkIjozMiwibmFtZSI6IlRyXHUxZWE3biBUcnVuZyBIaVx1MWViZnUgIiwia2luZCI6ImZhY3RvcnkiLCJwaG9uZSI6IjA5NjIxOTkxOTciLCJhZGRyZXNzIjoiU1x1MWVkMSAyNCwgR2lhaSBQaFx1MDBmM25nLCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCIsImVtYWlsIjoiMjAxNTQwNzdAc3R1ZGVudC5odXN0LmVkdS52biIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-05-02 23:42:07'),('ejcxosein8stpvgn2aonvw7x2e4iu6fh','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-02-05 07:20:58'),('eo6745iuoteapegnqv6pocy83k1p4zvb','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-12 07:22:29'),('eqjwu7ol9w9pdxh458ct4gxu006qd2ly','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-04 03:05:17'),('exsggcopniad070fcybys4oemcyuttlv','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-09 02:10:08'),('eye87n75tf1jz3s9b5216vhx3fgntq1d','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-03 04:29:42'),('f64m599b1lxwd2uafa940vz57nl5bh4k','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-24 07:04:16'),('f6to6nrh0k0i2kqcmdcfbi7xhay2zo2v','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-07 03:40:30'),('fk83e64pn184kurfs1jiyq188rzfdwzl','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-13 13:44:20'),('ft2gllzif9u9majtxsm310yozgdlm9iq','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-05 08:56:15'),('fuefrpclia3hkcitk0k5bb8ia5daeoqo','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-11 10:39:53'),('fuo10qj1tywmab0vfchoadmrhwtmia79','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-03 08:57:10'),('ggjff4if5j9y6npeu1xn5t0sn0u7t3kj','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-07 09:09:06'),('gmziugzzvytfbuhhc3gyc973lx1v1u1k','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-12-30 23:42:53'),('gr333paeeh3mrci9wbt2x1nzv1hs697z','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-17 08:30:48'),('h0pg9hwp50dfewvhkv46q8ssh3df0fz3','MGU0YzU5MWZkYTdiNTUxMmZkNjFhN2UyNTg2NjA4ZDlkMTEwZWJkZDp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMDEyMjMzNDQ1NTEiLCJhZGRyZXNzIjoiSGEgTm9pICIsImVtYWlsIjoiZG9hbmh0dWFuMTQxMTE5OTdAZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-30 03:36:08'),('h8gdqbrat3vkkib1s65a47vzmy6p8je7','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-25 07:06:12'),('h9rkl9es9hr5jmn4rfqnfg0o4ch621e9','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-13 08:26:46'),('hbcv5gudnjee3sv6rl4u8bgwyr680w5d','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-23 08:21:32'),('hc677hzzjg5qmd9344npc8fdonwvf9a4','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-16 04:24:17'),('hiyg75pyngs06hx98l0p4fn8qxz54pxc','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-24 04:19:02'),('hnur16hz7j0n2hit22magujp86yi0h5h','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-02-07 06:55:43'),('hv1ov2vpipe04q5ctr4y5oi307afce0g','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-30 14:55:59'),('hxqvvpakov7wy09mxowmdrsm1goqthwb','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-03 04:30:29'),('hyvoerez997bdxqtde36fs7ab0jvf9t9','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-10 12:07:43'),('i2jaiibo99yhpf5fq9tpo3r4cj21w2m8','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-14 03:56:37'),('iida5ps0z9sqdv2173e4nswsagfuj6k7','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-21 04:26:37'),('ikdtjwm6s2eq8wcq8njhmc4ch3uvdmq0','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-12-02 10:55:48'),('j236ojs17mgkhqr80wm84vuo3guxwzx0','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-10-19 03:35:50'),('j57yfbrjkspimtw5kmi0t4bifv3ecqmt','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-25 08:15:40'),('j6s95k4vmnsv6lp2xm8v81kplniwcspw','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-16 19:33:01'),('jdcsy7yb024dnwjs93lghhnutuztuk13','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-13 08:44:09'),('jfumzk35q3e8jv2ukwv98zu0wyjb18yn','MDJjODc3YjZmZmM0MTM3OTBhNWU3MjZmNWVkYzE4MDg1ODA4OTI0Nzp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjEyMzEyMzMxIiwiYWRkcmVzcyI6IlllbiBCYWkiLCJlbWFpbCI6ImhpZXV0cmFuQGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-29 15:02:53'),('jimy3n8dkebwxu7qxu5f58bvuqibr0ld','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-12-30 23:12:03'),('jkcv2iytzaaiut9ugzj168q93kxq6x1z','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-28 02:59:28'),('k5gtsnur2lddlkcj6lb1bd89sn3soccb','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-07 09:40:31'),('k603jbewbg6q1zijlyvjqmf0hszp8pel','YTg2MGE4MDdlN2ZlMWFkMWRkYWIwOTBhMDU2MTkxNzQxMzZjMzM2Mzp7ImlkIjozMiwibmFtZSI6IlRyXHUxZWE3biBUcnVuZyBIaVx1MWViZnUgIiwia2luZCI6ImZhY3RvcnkiLCJwaG9uZSI6IjA5NjIxOTkxOTciLCJhZGRyZXNzIjoiU1x1MWVkMSAyNCwgR2lhaSBQaFx1MDBmM25nLCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCIsImVtYWlsIjoiMjAxNTQwNzdAc3R1ZGVudC5odXN0LmVkdS52biIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-04-26 05:39:10'),('kb5oldunxoz7u521ulluf7zcccqm2lna','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-08-12 07:13:56'),('khk22x5ba46mvvmlf0lhlccwtxtxatmj','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-13 03:28:51'),('kj1ojhf8x0iny4qdc848a0zao3hfhs57','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-10-30 03:26:58'),('kt9z7v2x1x2l6rr7helnl008vdz4ag9l','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-07 03:50:26'),('l0ujq2c168k1u99swqdln713dnftpwwq','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-14 03:44:18'),('l26mp87ms9phu63pu8s6ettow5ov2q26','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-23 02:51:00'),('larednfwmplnu4feqf5n425wqfqgpnhl','YTg2MGE4MDdlN2ZlMWFkMWRkYWIwOTBhMDU2MTkxNzQxMzZjMzM2Mzp7ImlkIjozMiwibmFtZSI6IlRyXHUxZWE3biBUcnVuZyBIaVx1MWViZnUgIiwia2luZCI6ImZhY3RvcnkiLCJwaG9uZSI6IjA5NjIxOTkxOTciLCJhZGRyZXNzIjoiU1x1MWVkMSAyNCwgR2lhaSBQaFx1MDBmM25nLCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCIsImVtYWlsIjoiMjAxNTQwNzdAc3R1ZGVudC5odXN0LmVkdS52biIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-05-02 19:12:23'),('ld5u7ty664spvmz30rasnj5pnvzpvuk4','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-10 18:42:26'),('lh6n1l8k23dadp2n2m4kt57o2b8hq733','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-11-05 11:04:42'),('ljcskgnq1xsv8o28owvgnf1yvc2ef8jy','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-01 14:11:13'),('lm8rkgy4klr8d78vjipmwkbfu5mrs7i0','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-12-09 02:11:21'),('lodvxnmvwvt7i1x0rfra0qudcbcdb0rn','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-11-07 08:51:46'),('ls4gpya1u5r7s33bs8has6jl7wovm3ru','MGU0YzU5MWZkYTdiNTUxMmZkNjFhN2UyNTg2NjA4ZDlkMTEwZWJkZDp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMDEyMjMzNDQ1NTEiLCJhZGRyZXNzIjoiSGEgTm9pICIsImVtYWlsIjoiZG9hbmh0dWFuMTQxMTE5OTdAZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-11-28 08:59:05'),('ltaevfumfmhp3i7y3vs7a954zklhghvx','YmVhMjA1NDliNjk4Yzg0MzM5ZDMxNDQzNTgzZTIzNGNhZjg3ZjJkNTp7ImlkIjoyNiwibmFtZSI6ImRvIHR1YW4iLCJraW5kIjoiZmFjdG9yeSIsInBob25lIjoiMDk2MjE5OTE5NyIsImFkZHJlc3MiOiJhZGQiLCJlbWFpbCI6IjIwMTU0MDc3QHN0dWRlbnQuaHVzdC5lZHUudm4iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-09 01:37:03'),('m02godiy84bqhh3h4br5czjlicgynqa9','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-13 08:19:30'),('mhjjlc95nx3y7sbmbhed4pucpwn4buma','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-11-21 04:39:04'),('mk9foywk2pl7wh2cb8uswi7ybtdrb9ec','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-04 03:31:21'),('mkvzp91d497otmxr3302w2e6a99lc7v0','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-10 08:28:28'),('msz06s0ws6xddti4c2xiin8omcfxvd0q','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-12-08 09:21:19'),('my8ziin8a9fli4pe9hyfgiwjyte1nnno','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-05 02:52:45'),('n8v0juzht0pdd1llaz7y4u3no02un7eh','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-11 08:30:41'),('nct40ho8rhwg8driui9tis40vaxncqt3','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-29 14:26:23'),('nfb4a93lxph2p0nz1aygtivq0s48mq6y','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-17 03:10:38'),('nh6wqrc9e2806g8kl0jxdyklh01231ry','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-05-02 12:14:12'),('nzpy3saodi9kwf8zhsq4p6ntxcs04qjc','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-24 03:17:39'),('oh6zhj1hx6tf5t4fmap3gltmw1uuc0jp','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-03 16:57:38'),('oj27dnifc70u7roo7wmvei7nyxnv6ukj','ZWRkZTJhMDRiZTdiNWI5NzEzN2Q3MjVmNGI5NTk3NDczM2RkMzVhYzp7ImlkIjoyOCwibmFtZSI6ImRvIHR1YW4iLCJraW5kIjoiZmFjdG9yeSIsInBob25lIjoiOTYyMTk5MTk3IiwiYWRkcmVzcyI6ImFkZCIsImVtYWlsIjoiMjAxNTQwNzdAc3R1ZGVudC5odXN0LmVkdS52biIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-10 07:32:31'),('ol2dn06sirc94vgth0ya7wsunnr032se','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-30 09:45:01'),('olw331mmlboz2jfyowain7bqm2kvtf9x','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-28 08:22:47'),('oq7l6moozdhd9ryf601u7omlhim4suwk','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-04-25 07:56:29'),('oq7ut68b8figaq6zcdzgm9jzp7nowvbs','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-10-12 03:38:17'),('ow93xf2ady2rvlrk6yi4ridz3wm9zxge','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-12-05 09:41:04'),('ozch7obowmpbjre609l0ah19o4nhvob4','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-30 14:53:45'),('p73reicf7ybd9ektlbsk37fbqezhuj42','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-24 07:54:42'),('pielgeuj36ixtozg0qtn8kbw36mr537u','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-11-08 07:53:22'),('pjmy5ibi14thla9qqzgfipzxxa5e2bld','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-14 04:06:29'),('pkjajimhrn3kfo1g9augn03byt8wrfra','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-27 04:06:42'),('ptzddapgxp35shw1fq9rml57m2kgxx5g','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-23 06:56:10'),('q34iv08oudlz1nzmcm51rn0rpt7dvts9','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-06 07:27:13'),('qr20rubrdkp78hxtwodomg0wiy4vrc4g','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-04-01 18:30:28'),('qz4nlr2ustiik55tiba2bj60ncggvtoh','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-10 08:19:19'),('r74f6fxcn2ulm0ksn9bbfb09s10gjugy','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-10-30 03:16:39'),('rbzdm222zvfak8a6mdpnc7g82xhsjvna','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-31 10:33:32'),('rdwc0a8av7ef1f1ceegixl0j6gym3iia','MGU0YzU5MWZkYTdiNTUxMmZkNjFhN2UyNTg2NjA4ZDlkMTEwZWJkZDp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMDEyMjMzNDQ1NTEiLCJhZGRyZXNzIjoiSGEgTm9pICIsImVtYWlsIjoiZG9hbmh0dWFuMTQxMTE5OTdAZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-11-13 08:36:16'),('rfwxvlkbasfhq9wscwhq5man76famm8q','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-21 02:55:11'),('rk646on9bb76fh97yh46rovp9bj73azl','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-19 02:35:04'),('rn0p6wdft82paybdt8z2pye86wgeab91','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-04-01 10:37:12'),('rp9wnd7zagtlqdlgptpot4i7ytj1tc69','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-13 08:23:49'),('rwjxk6dwo2lfytswutq0fb0jazxai35p','MDJjODc3YjZmZmM0MTM3OTBhNWU3MjZmNWVkYzE4MDg1ODA4OTI0Nzp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjEyMzEyMzMxIiwiYWRkcmVzcyI6IlllbiBCYWkiLCJlbWFpbCI6ImhpZXV0cmFuQGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-13 09:04:31'),('rxkqstt83f1ta7ht6jo6cli3hgxn5stx','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-24 07:59:40'),('s2jn5qg2n01gfhq6pm1xl5mwsnc5urrt','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-04-24 07:36:08'),('si12ik27wiax2fnzjzb7kqk6cj64tmhn','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-02-08 06:27:12'),('srfe299y22ul85o6binriv6wynlq9b8j','MGU0YzU5MWZkYTdiNTUxMmZkNjFhN2UyNTg2NjA4ZDlkMTEwZWJkZDp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMDEyMjMzNDQ1NTEiLCJhZGRyZXNzIjoiSGEgTm9pICIsImVtYWlsIjoiZG9hbmh0dWFuMTQxMTE5OTdAZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-11-14 08:18:35'),('ssrqa086utncg665f2qkghhyxpy2dkp0','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-08-30 14:21:50'),('su77c3zsf8jwj4xnluoap6x901rxpnlq','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-23 08:38:54'),('sww1myop120ckj47co5su7df69oznltp','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-23 09:00:43'),('t1sqx0vzmzepm0in9nc6z50eyaic38ru','YTg2MGE4MDdlN2ZlMWFkMWRkYWIwOTBhMDU2MTkxNzQxMzZjMzM2Mzp7ImlkIjozMiwibmFtZSI6IlRyXHUxZWE3biBUcnVuZyBIaVx1MWViZnUgIiwia2luZCI6ImZhY3RvcnkiLCJwaG9uZSI6IjA5NjIxOTkxOTciLCJhZGRyZXNzIjoiU1x1MWVkMSAyNCwgR2lhaSBQaFx1MDBmM25nLCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCIsImVtYWlsIjoiMjAxNTQwNzdAc3R1ZGVudC5odXN0LmVkdS52biIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-05-03 00:01:54'),('t8njv6fqu37xlnpwh3pbog2w9l4qapzp','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-25 08:16:32'),('tts602tw06km7x8gue88dxvis2ozenka','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-13 08:01:11'),('tu1dv3kojskwd772j1qnaanbt763gwqd','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-14 08:49:18'),('tv3owb23g3zymcolpeqs9e1nlltmgt69','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-10 21:02:10'),('twpmmdm4in8p68rx0xzidawgz7ha2c3o','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-12-28 16:30:40'),('u26xyuuecfxmfd7c3z6scgg0gla703al','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-29 07:18:32'),('uj9yn5uzx5vfvg1j139hjrxm2vprukzj','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-29 08:24:38'),('uqp4vajywhuc81eum5ipgubhihtryt3u','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-24 04:07:54'),('urpinutempxriilwioeu4wiwqtknmgio','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-31 03:29:06'),('uye5dh0jjfjg2eiffqmxn00i9npu484g','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-03 07:49:24'),('v1pf1ktucfp0eymb3g0r3mgfvgll426t','MTUxNWFhZGNlMTljNTY4YWMzZDk3MjIwNzk2MzU0OGU3YTQ4ZTg2ZDp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjA5MDEwMjAzMDQiLCJhZGRyZXNzIjoiWWVuIEJhaSIsImVtYWlsIjoiaGlldXRyYW5AZ21haWwuY29tIiwib3RoZXJfaW5mbyI6bnVsbCwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2018-10-10 03:36:32'),('v96t9uxs2v37q57h20afrb68gdv9oy59','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-12-27 09:39:17'),('vf8gi4pom0jv0c8h3hetqcbfelmywppt','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-11 08:47:54'),('vij32hz23tqg7cs84jbwjvntoaf77pwk','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-22 07:42:03'),('vijjd7y163ro7tb2bbm6c54m2fuwvie6','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-24 04:10:49'),('vnx9c1llki1pc4tvgwgb4we3yb5y8y4y','MDJjODc3YjZmZmM0MTM3OTBhNWU3MjZmNWVkYzE4MDg1ODA4OTI0Nzp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjEyMzEyMzMxIiwiYWRkcmVzcyI6IlllbiBCYWkiLCJlbWFpbCI6ImhpZXV0cmFuQGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-28 08:15:23'),('vv5d6h2nvwfarx92k0w7yc2xj744w53w','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-12-10 02:18:00'),('vvlzwbbmsd344nhbzcn3t3x98s5h12jy','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-02-26 03:05:21'),('vzd1vkz4ce85joq18lq73qg5d7fhvzh5','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-04-23 10:52:01'),('w06avumiotwbh1kkddanuuxsysepkmt8','MDJjODc3YjZmZmM0MTM3OTBhNWU3MjZmNWVkYzE4MDg1ODA4OTI0Nzp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjEyMzEyMzMxIiwiYWRkcmVzcyI6IlllbiBCYWkiLCJlbWFpbCI6ImhpZXV0cmFuQGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-08-23 03:42:51'),('w07e9nssl7i0dn46mu8iai6p5b8kqxsc','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-10-12 03:06:21'),('w1qvrz8c5d2v5xcr878fmng6h2o0hqyh','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-30 08:44:56'),('wfcmpsiyqxkcve22z2lgqgb8d2h8edpc','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-06-05 07:09:11'),('wgsyi1jy62idmbtt44xopu4vx9f88swv','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-15 07:47:45'),('wmejymzo0mxqqwkuhg62sg3jyia4oyz7','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-09-23 09:51:17'),('x39bpwvy4c27j0igtme34j6xa65l5rqc','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-06 07:52:09'),('xiu44ro80k333226sjtzw052i43i1ozt','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-11-22 09:03:50'),('xm7znb2oyuz9z5t8qlyrin0k7sof8bkf','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-07-12 09:53:27'),('y913m6y15f6cz7ehb1ooqf2jegz92atw','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-23 10:23:09'),('yig5pqk8hwdnz3n9t834v3qt6b002llr','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-04 08:57:08'),('yj9vljy222dnblz2ir3t2xapcv5gew71','MDJjODc3YjZmZmM0MTM3OTBhNWU3MjZmNWVkYzE4MDg1ODA4OTI0Nzp7ImlkIjoyLCJuYW1lIjoiVHJhbiBUcnVuZyBIaWV1Iiwia2luZCI6ImNpdGl6ZW4iLCJwaG9uZSI6IjEyMzEyMzMxIiwiYWRkcmVzcyI6IlllbiBCYWkiLCJlbWFpbCI6ImhpZXV0cmFuQGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-26 07:09:22'),('ykhhhmu7vz2azzauo07vk87p2origkl2','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-11-27 03:19:24'),('yktb13amevqbgal9ox88st3b79on70vr','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-19 08:33:44'),('yzwyztonrz2ijtntvvo9wcjcef8ntuo8','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-11-08 02:39:13'),('z574w1fh1hpz5hz9fx73l7gwi0ff6ty1','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-01-04 10:44:07'),('z7r2hznltgx1z980jrittfl9328pe4zs','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-12-04 08:42:39'),('zdg0bk85hgi77orn8lpewon8h7w0rpl8','MTRlYjIwM2I4MGQxZjk2M2NhN2JhYmE3OWQ2YTlkNmFiYTkwNDI4Mjp7ImlkIjozLCJuYW1lIjoiRG8gQW5oIFR1YW4iLCJraW5kIjoibWFuYWdlciIsInBob25lIjoiMTIzMyIsImFkZHJlc3MiOiJIYSBOb2kgIiwiZW1haWwiOiJkb2FuaHR1YW4xNDExMTk5N0BnbWFpbC5jb20iLCJvdGhlcl9pbmZvIjpudWxsLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2018-09-06 07:29:40'),('zozxid4kuztvsxgvco49a78ono1s7hew','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-05-01 13:45:35'),('zxvte4d5uxbyth1g4lxktged0sc9d5el','YTJlOTY3NTBhOGUzZDEyYThhMThkN2RhZTY1M2VhOWZjMmFhNTIzZDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOm51bGwsImFkZHJlc3MiOm51bGwsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2018-09-06 07:24:20'),('zyktf82gilhufbrlycucynr4sbuisfo7','NWFlMjcwZWVhNzY0Y2M1Mjc4MTk3ZTJiYTFlMjQ1YTY3MDE0YWFiMDp7ImlkIjoxLCJuYW1lIjoiTGUgVmFuIEhhaSIsImtpbmQiOiJmYWN0b3J5IiwicGhvbmUiOiIwNDMzMTMzMTMzIiwiYWRkcmVzcyI6IlNcdTFlZDEgMSBcdTAxMTBcdTFlYTFpIENcdTFlZDUgVmlcdTFlYzd0LCBIYWkgQlx1MDBlMCBUclx1MDFiMG5nLCBIXHUwMGUwIE5cdTFlZDlpICIsImVtYWlsIjoibGV2YW5oYWkyMjA2QGdtYWlsLmNvbSIsIm90aGVyX2luZm8iOm51bGwsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-03-06 08:03:40');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_category`
--

DROP TABLE IF EXISTS `dm_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_category` (
  `DMCategoryID` int(11) NOT NULL,
  `DMCategoryName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`DMCategoryID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_DM_CATEGORY` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_category`
--

LOCK TABLES `dm_category` WRITE;
/*!40000 ALTER TABLE `dm_category` DISABLE KEYS */;
INSERT INTO `dm_category` VALUES (1,'1. Mechanical and Metallurgical Mechanisms','2019-06-14 07:43:20',NULL,NULL,NULL,'78696F41-377E-4BE1-8C96-FA88BFAA822A'),(2,'2. Uniform or Localized Metal Loss','2019-06-14 07:43:20',NULL,NULL,NULL,'F23E2049-D25A-4DCA-B807-636BF621C481'),(3,'3. High Temperature Corrosion','2019-06-14 07:43:20',NULL,NULL,NULL,'F7E898BA-272B-48A9-841C-3214E64FCCEC'),(4,'4. Environmental-Assisted Mechanisms','2019-06-14 07:43:20',NULL,NULL,NULL,'B74D5890-5300-461C-9539-350BADE1AA8C'),(5,'5. Others','2019-06-14 07:43:20',NULL,NULL,NULL,'A1189966-5CBC-4E7A-91A9-31726ADBDED9');
/*!40000 ALTER TABLE `dm_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_expected_type`
--

DROP TABLE IF EXISTS `dm_expected_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_expected_type` (
  `ExpectedTypeID` int(11) NOT NULL,
  `ExpectedTypeName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ExpectedTypeID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_DM_EXPECTED_TYPE` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_expected_type`
--

LOCK TABLES `dm_expected_type` WRITE;
/*!40000 ALTER TABLE `dm_expected_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_expected_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_items`
--

DROP TABLE IF EXISTS `dm_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_items` (
  `DMItemID` int(11) NOT NULL,
  `DMDescription` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DMSeq` int(11) NOT NULL,
  `DMCategoryID` int(11) NOT NULL,
  `DMCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `HasDF` tinyint(1) DEFAULT NULL,
  `HasRule` tinyint(1) DEFAULT NULL,
  `FailureMode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`DMItemID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_DM_ITEMS` (`AuditingID`),
  KEY `FK_DM_ITEMS_DM_CATEGORY` (`DMCategoryID`),
  CONSTRAINT `FK_DM_ITEMS_DM_CATEGORY` FOREIGN KEY (`DMCategoryID`) REFERENCES `dm_category` (`DMCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_items`
--

LOCK TABLES `dm_items` WRITE;
/*!40000 ALTER TABLE `dm_items` DISABLE KEYS */;
INSERT INTO `dm_items` VALUES (1,'885F Embrittlement',1,1,'dm885F',1,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'8B19EA14-6EF8-4EE8-B6CB-D011E5E10845'),(2,'Brittle Fracture',2,1,'dmBrittleFracture',1,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'BBF20DCF-013B-4F15-9642-E1AE9E3C5FDC'),(3,'Cavitation',3,1,'dmCavitation',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'426225C4-DB4E-4AFE-8EE0-4383BDB6A354'),(4,'Creep Rupture',4,1,'dmCreepRupture',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'675BA217-B4D0-44C5-AB60-3D669D0F919A'),(5,'Dissimilar Metal Weld Cracking',5,1,'dmDissimilarMetalWeldCracking',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'443CD514-0C62-41CF-93B0-11B0E7B7611F'),(6,'Erosion/Erosion-Corrosion',6,1,'dmErosionCorrosion',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'F09568DF-1299-49F9-816B-3610414C8B74'),(7,'Graphitisation',7,1,'dmGraphitisation',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'A3385350-EDBF-410E-A187-80C6BC1A710E'),(8,'Internal Thinning',1,2,'dmInternalThinning',1,1,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'ACC35D88-2802-4C34-923E-F243045BC09B'),(9,'Internal Lining Degradation',2,2,'dmInternalLiningDegradation',1,1,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'457D767B-E077-4A79-A664-BA849D464FC9'),(10,'Vibration-Induced Mechanical Fatigue',10,1,'dmPipingMechanicalFatigue',1,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'AAB0FB87-66EE-423D-AAD9-358FDEA1F2CA'),(11,'Refractory Degradation',11,1,'dmRefractoryDegradation',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'A3C55698-2E87-4C93-94C5-675853EEE510'),(12,'Reheat Cracking',12,1,'dmReheatCracking',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'C03954A6-B8A8-40CF-88C0-F6B616E227EE'),(13,'Short Term Overheating',13,1,'dmShortTermOverheating',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'3D097B99-AAF9-4025-8EB8-AFBC136ABC13'),(14,'Sigma Phase Embrittlement',14,1,'dmSigmaPhaseEmbrittlement',1,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'F3A25D22-6373-48AA-BAAD-2FA8D1E252E5'),(15,'Spheroidisation (Softening)',15,1,'dmSpheroidisation',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'338019FF-0C7A-4AC5-98CC-8F605A5F7114'),(16,'Steam Blanketing',16,1,'dmSteamBlanketing',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'45A80672-9079-4D79-A740-3A15217F2AE1'),(17,'Strain Aging',17,1,'dmStrainAging',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'10BA0A10-52B2-4E2A-B7C2-B3CFAEB5D82B'),(18,'Temper Embrittlement',18,1,'dmTemperEmbrittlement',1,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'7AE9647E-9204-4C47-8326-F72C93CC8F25'),(19,'Thermal Fatigue',19,1,'dmThermalFatigue',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'63441E4E-1F5B-4677-885D-A2C47789273A'),(20,'Thermal Shock',20,1,'dmThermalShock',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'93CDC200-0521-41D6-A9FF-939A7AA48712'),(22,'Other Mechanical or Metallurgical',22,1,'dmMechanicalMetallurgical',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'DDACDDDE-8B63-4ECE-98AC-832B7E26F088'),(23,'Amine Corrosion',23,2,'dmAmineCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'84C8BEFB-24F7-4FB3-B1DF-A0639F0E2AB5'),(24,'Ammonium Bisulphide Corrosion',24,2,'dmAmmoniumBisulphideCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'12FF753B-0D3A-4578-92A2-A78696BF4B10'),(25,'Ammonium Chloride Corrosion',25,2,'dmAmmoniumChlorideCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'CAB618C5-99F6-4A53-9996-52AA358DC34B'),(26,'Atmospheric Corrosion',26,2,'dmAtmosphericCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'5B8CBA90-25A7-4ACA-A019-EEE10F807A93'),(27,'Boiler Water Condensate Corrosion',27,2,'dmBoilerWaterCondensateCorrosion',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'B665629F-D4E6-48C6-BB22-DA529B63D599'),(28,'Caustic Corrosion',28,2,'dmCausticCorrosion',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'307676B3-3CCC-42C6-B81A-F67122F28ECA'),(29,'Chloride Stress Corrosion Under Insulation',29,2,'dmChlorideStressCorrosionUnderInsulation',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'2467E144-D305-4A29-9612-7776286D2CFF'),(30,'CO2 Corrosion',30,2,'dmCO2Corrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'79545CB6-51C8-43AE-9790-2A1878A0CEF5'),(31,'Cooling Water Corrosion',31,2,'dmCoolingWaterCorrosion',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'CDBAC9FF-72FF-4CC9-886B-20517879F0C0'),(32,'Corrosion Under Insulation',32,2,'dmCorrosionUnderInsulation',1,1,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'991A2390-2A30-406E-8EDE-4AB1C4C0BBC4'),(33,'Dealloying',33,2,'dmDealloying',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'62B3CC1F-4122-4B65-9375-A37D459C619A'),(34,'External Corrosion',34,2,'dmExternalDamageFerriticComponent',1,1,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'C7218078-EF95-45D1-B4EA-947FE2C700C1'),(35,'Flue Gas Dew Point Corrosion',35,2,'dmFlueGasDewPointCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'D6D16285-D99E-431E-8FA2-64D5B88477D0'),(36,'Galvanic Corrosion',36,2,'dmGalvanicCorrosion',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'FC6391C6-3DBA-490A-8DBF-3AF686B82357'),(37,'Graphite Corrosion',37,2,'dmGraphiteCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'632239F2-EB9D-46FE-B009-13703E250B13'),(38,'High Temperature H2/H2S Corrosion',38,2,'dmHighTemperatureH2_H2SCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'C303AFC0-2F2F-49C8-A71E-39007F982F3A'),(39,'Hydrochloric Acid Corrosion',39,2,'dmHydrochloricAcidCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'86D52B1D-1692-40EC-9F2A-40A270501007'),(40,'Hydrofluoric Acid Corrosion',40,2,'dmHydrofluoricAcidCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'FB14FD60-672C-4B38-BB42-A22C37AE9A93'),(41,'Microbiologically-Induced Corrosion',41,2,'dmMicrobiologicallyInducedCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'A5C65288-4940-4562-9526-2B6CCBDB9328'),(42,'Naphthenic Acid Corrosion',42,2,'dmNaphthenicAcidCorrosion',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'F0C413D8-7B4F-4466-98D7-AAD5BC6F78C9'),(43,'Phenol (Carbonic Acid) Corrosion',43,2,'dmPhenolCarbonicAcidCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'C0279370-1EFC-4169-BA3A-201A273550F1'),(44,'Soil Corrosion',44,2,'dmSoilCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'9DB2DC20-A118-4D93-B0C2-93B35F1AC84E'),(45,'Sour Water Corrosion',45,2,'dmSourWaterCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'10D5FA02-D253-470C-A24E-F0A66C2674D2'),(46,'Sulphuric Acid Corrosion',46,2,'dmSulphuricAcidCorrosion',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'C0D46AF7-90B9-4EF5-8239-358FD928D656'),(47,'Titanium Hydriding',47,2,'dmTitaniumHydriding',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'5D64CD94-1A7A-4610-A7F5-4F8CD24FF69E'),(48,'Other, Metal Loss',48,2,'dmOtherMetalLoss',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'7629185A-1FFE-48C8-A1AC-BC61926EA92B'),(49,'Carburisation',49,3,'dmCarburisation',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'4417E326-055D-44AC-8BF1-F108670F089B'),(50,'Decarburisation',50,3,'dmDecarburisation',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'6E692342-859A-4AEE-AB17-D04564B92CBC'),(51,'Fuel Ash Corrosion',51,3,'dmFuelAshCorrosion',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'EE6DC854-E5DD-4479-ABF9-A411521F3A11'),(52,'Metal Dusting',52,3,'dmMetalDusting',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'76AA8C81-680C-46B2-A5EB-4010843C14AA'),(53,'Nitriding',53,3,'dmNitriding',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'4DD8F4DB-1490-482F-BAB0-025FE168F930'),(54,'Oxidation',54,3,'dmOxidation',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'63EB5DEA-2688-4FFF-B6BD-D520AA4B8286'),(55,'Sulphidation',55,3,'dmSulphidation',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'5D4C4017-E2F7-4FFD-A5EC-341CFA4B9EB6'),(56,'Other High Temperature Corrosion',56,3,'dmOtherHighTemperatureCorrosion',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'643628E8-1266-4921-91A5-3406C1B280A5'),(57,'Amine Stress Corrosion Cracking',57,4,'dmAmineStressCorrosionCracking',1,1,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'2C7AFBD5-3147-4C5B-B180-B8BB5B186B9E'),(58,'Ammonia Stress Corrosion Cracking',58,4,'dmAmmoniaStressCorrosionCracking',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'FC169FF9-764A-4F07-96E2-069E062A9F77'),(59,'Blistering',59,4,'dmBlistering',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'C433731B-B442-4738-80E8-F40DCB55B501'),(60,'Carbonate Stress Corrosion Cracking',60,4,'dmCarbonateStressCorrosionCracking',1,1,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'FD8CD41E-553F-43F6-BE6E-29758C7C270B'),(61,'Caustic Stress Corrosion Cracking',61,4,'dmCausticStressCorrosionCracking',1,1,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'36159841-B871-4AFE-8822-AA054017A5F9'),(62,'Chloride Stress Corrosion Cracking',62,4,'dmChlorideStressCorrosionCracking',1,1,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'F2A7F732-65C2-49B1-B686-42D0AC7C245A'),(63,'Chloride Stress Corrosion Cracking Under Insulation',63,4,'dmChlorideStressCorrosionCrackingUnderInsulation',1,1,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'EA326C8E-A118-4125-935A-B0E15E807A36'),(64,'Corrosion Fatigue',64,4,'dmCorrosionFatigue',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'3709C2B5-BE5E-4E55-AAD5-298A6BE2B9C5'),(65,'Deaerator Cracking',65,4,'dmDeaeratorCracking',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'79972FDA-2169-468B-8EDF-FBC6FD461CB2'),(66,'External Chloride Stress Corrosion Cracking',66,4,'dmExternalChlorideStressCorrosionCracking',1,1,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'9153CDE9-170E-4E17-A039-36719AF0296A'),(67,'HF Produced HIC/SOHIC',67,4,'dmHFProducedHIC_SOHIC',1,1,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'E5896BFA-26FD-4734-88F3-7ED8C629ECF9'),(68,'High Temperature Hydrogen Attack',68,4,'dmHighTemperatureHydrogenAttack',1,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'EC1C9EF1-AD71-4E76-966B-00D2291F295E'),(69,'HIC/SOHIC-H2S',70,4,'dmHIC_SOHIC_H2S',1,1,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'41AC6FF2-F86F-468E-8F74-C5F85E645640'),(70,'Hydrogen Stress Cracking (HF)',71,4,'dmHydrogenStressCrackingHSCHF',1,1,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'83C326AA-E6D5-4A85-8B8D-64E2032118AB'),(71,'Liquid Metal Embrittlement',72,4,'dmLiquidMetalEmbrittlement',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'9D3F7CD1-0C54-48BD-803B-A0B745D1921C'),(72,'Polythionic Acid Stress Corrosion Cracking',73,4,'dmPolythionicAcidStressCorrosionCracking',1,1,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'4D760E81-83CE-4EC8-8F25-D38C34DF00B7'),(73,'Sulphide Stress Corrosion Cracking (H2S)',74,4,'dmSulphideStressCorrosionCrackingH2S',1,1,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'DE3CC8F9-196E-413E-A76C-F24DA6955B19'),(74,'Other Environment-Assisted',75,4,'dmOtherEnvironmentAssisted',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'31F9AC7C-273F-496A-82FD-7096A9873BE9'),(75,'Aluminium Chloride (General + Localised Corrosion)',76,5,'dmAluminiumChloride',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'B8AFE373-7062-472D-8427-02BF4A3DAFFA'),(76,'Ammonia (General + Localised Corrosion)',77,5,'dmAmmonia',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'93B507F8-47CC-470E-BE54-FF837104A75A'),(77,'Cladding Disbondment',78,5,'dmCladdingDisbondment',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'897BD826-797E-429A-B28E-B97F8BB5234D'),(78,'Cyanides (General + Localised Corrosion)',79,5,'dmCyanides',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'8BE6811F-5544-4DE2-8C61-4D01F533E12E'),(79,'Formic Acid (General + Localised Corrosion)',80,5,'dmFormicAcid',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'9BF612C3-17FD-42AE-94E9-1DEAB829E8F0'),(80,'Hydrogen Sulphide (General + Localised Corrosion)',81,5,'dmHydrogenSulphide',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'C5EDADC4-C84F-44E2-B10A-360005790529'),(81,'Localised Corrosion of Stainless Steel',82,5,'dmLocalisedCorrosionStainlessSteel',0,0,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'6E31126F-801D-4F3F-ACEA-6FFB33F00202'),(82,'Oxygen (General + Localised Corrosion)',83,5,'dmOxygen',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'A72927D9-3232-4C7C-B7D6-5CD44B98C5B0'),(83,'Polythionic Acid (General + Localised Corrosion)',84,5,'dmPolythionicAcid',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'4FC21061-7C40-459B-A752-5453C42B3BEA'),(84,'Under Deposit Attack (Metal Thinning)',85,5,'dmUnderDepositAttackMetalThinning',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'2F2BBAE9-BDEE-4A4E-9D55-F6FCB87E1487'),(85,'Water (General + Localised Corrosion)',86,5,'dmWater',0,0,'Mixed','2019-06-14 07:43:20',NULL,NULL,NULL,'166C6F00-C4C7-4139-885C-0C2D5A98B462'),(86,'Hydrogen Embrittlement',69,3,'dmHydrogenEmbrittlement',0,0,'Rupture','2019-06-14 07:43:20',NULL,NULL,NULL,'A366723E-2ECA-44D1-AE0C-E60CF8A5C051');
/*!40000 ALTER TABLE `dm_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmcategory`
--

DROP TABLE IF EXISTS `dmcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmcategory` (
  `DMCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `DMCategoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DMCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmcategory`
--

LOCK TABLES `dmcategory` WRITE;
/*!40000 ALTER TABLE `dmcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmitems`
--

DROP TABLE IF EXISTS `dmitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmitems` (
  `DMItemID` int(20) NOT NULL AUTO_INCREMENT,
  `DMDescription` varchar(45) DEFAULT NULL,
  `DMSeq` int(20) DEFAULT NULL,
  `DMCategoryID` int(20) DEFAULT NULL,
  `DMCode` varchar(45) DEFAULT NULL,
  `HasDF` int(20) DEFAULT NULL,
  `FailureMode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DMItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmitems`
--

LOCK TABLES `dmitems` WRITE;
/*!40000 ALTER TABLE `dmitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_extra_fields`
--

DROP TABLE IF EXISTS `equipment_extra_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment_extra_fields` (
  `EquipmentID` int(11) NOT NULL,
  `ObjectField001` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField002` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField003` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField004` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField005` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField006` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField007` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField008` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField009` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField010` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField011` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField012` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField013` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField014` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField015` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField016` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField017` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField018` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField019` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField020` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField021` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField022` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField023` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField024` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField025` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField026` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField027` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField028` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField029` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField030` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField031` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField032` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField033` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField034` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField035` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField036` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField037` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField038` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField039` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField040` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField041` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField042` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField043` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField044` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField045` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField046` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField047` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField048` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField049` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField050` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`EquipmentID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_EQUIPMENT_EXTRA_FIELDS` (`AuditingID`),
  CONSTRAINT `FK_EQUIPMENT_EXTRA_FIELDS_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_extra_fields`
--

LOCK TABLES `equipment_extra_fields` WRITE;
/*!40000 ALTER TABLE `equipment_extra_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_extra_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_master`
--

DROP TABLE IF EXISTS `equipment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment_master` (
  `EquipmentID` int(11) NOT NULL AUTO_INCREMENT,
  `EquipmentNumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EquipmentTypeID` int(11) NOT NULL,
  `EquipmentName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CommissionDate` datetime(6) NOT NULL,
  `DesignCodeID` int(11) NOT NULL,
  `SiteID` int(11) NOT NULL,
  `FacilityID` int(11) NOT NULL,
  `ManufacturerID` int(11) NOT NULL,
  `PFDNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ProcessDescription` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EquipmentDesc` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IsArchived` smallint(6) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  PRIMARY KEY (`EquipmentID`),
  UNIQUE KEY `UK_EquipmentNumber` (`EquipmentNumber`),
  KEY `FK_EQUIPMENT_MASTER_DESIGN_CODE1` (`DesignCodeID`),
  KEY `FK_EQUIPMENT_MASTER_EQUIPMENT_TYPE` (`EquipmentTypeID`),
  KEY `FK_EQUIPMENT_MASTER_FACILITY` (`FacilityID`),
  KEY `FK_EQUIPMENT_MASTER_MANUFACTURER` (`ManufacturerID`),
  KEY `FK_EQUIPMENT_MASTER_SITES1` (`SiteID`),
  CONSTRAINT `FK_EQUIPMENT_MASTER_DESIGN_CODE1` FOREIGN KEY (`DesignCodeID`) REFERENCES `design_code` (`DesignCodeID`),
  CONSTRAINT `FK_EQUIPMENT_MASTER_EQUIPMENT_TYPE` FOREIGN KEY (`EquipmentTypeID`) REFERENCES `equipment_type` (`EquipmentTypeID`),
  CONSTRAINT `FK_EQUIPMENT_MASTER_FACILITY` FOREIGN KEY (`FacilityID`) REFERENCES `facility` (`FacilityID`) ON DELETE CASCADE,
  CONSTRAINT `FK_EQUIPMENT_MASTER_MANUFACTURER` FOREIGN KEY (`ManufacturerID`) REFERENCES `manufacturer` (`ManufacturerID`),
  CONSTRAINT `FK_EQUIPMENT_MASTER_SITES1` FOREIGN KEY (`SiteID`) REFERENCES `sites` (`SiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_master`
--

LOCK TABLES `equipment_master` WRITE;
/*!40000 ALTER TABLE `equipment_master` DISABLE KEYS */;
INSERT INTO `equipment_master` VALUES (2,'8',5,'it','2019-09-10 00:00:00.000000',9,3,32,3,'4','aaaa','bbbb',0,'2019-09-10 10:40:18'),(3,'36',1,'lab411','2019-09-30 00:00:00.000000',8,3,1,3,'','','',0,'2019-09-30 10:53:24'),(4,'47',1,'ff','2019-09-30 00:00:00.000000',8,3,33,3,'3','fs','',0,'2019-09-30 11:15:31'),(11,'1',11,'cuong1','2019-11-16 00:00:00.000000',8,3,1,3,'','','',NULL,'2019-11-16 14:55:10'),(12,'12',2,'12','2019-11-25 00:00:00.000000',8,3,40,11,'','','',NULL,'2019-11-25 09:11:12'),(13,'test1',1,'test1','2019-11-25 00:00:00.000000',8,3,40,9,'','','',NULL,'2019-11-25 10:47:33');
/*!40000 ALTER TABLE `equipment_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_revision`
--

DROP TABLE IF EXISTS `equipment_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment_revision` (
  `RevisionID` int(11) NOT NULL AUTO_INCREMENT,
  `EquipmentID` int(11) NOT NULL,
  `RevisionXML` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RevisionNo` int(11) NOT NULL,
  `IssuedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IssuedDate` datetime(6) DEFAULT NULL,
  `ReviewedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ReviewedDate` datetime(6) DEFAULT NULL,
  `IsReviewed` tinyint(1) NOT NULL DEFAULT '0',
  `ApprovedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ApprovedDate` datetime(6) DEFAULT NULL,
  `IsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `EndorsedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EndorsedDate` datetime(6) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`RevisionID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_EQUIPMENT_REVISION` (`AuditingID`),
  KEY `FK_EQUIPMENT_REVISION_EQUIPMENT_MASTER` (`EquipmentID`),
  CONSTRAINT `FK_EQUIPMENT_REVISION_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_revision`
--

LOCK TABLES `equipment_revision` WRITE;
/*!40000 ALTER TABLE `equipment_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_revision_inspection_coverage`
--

DROP TABLE IF EXISTS `equipment_revision_inspection_coverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment_revision_inspection_coverage` (
  `RevisionID` int(11) NOT NULL,
  `EquipmentID` int(11) NOT NULL,
  `InspPlanName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `InspPlanDate` datetime(6) DEFAULT NULL,
  `CoverageName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CoverageDate` datetime(6) DEFAULT NULL,
  `Remarks` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Findings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `FindingRTF` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`RevisionID`,`EquipmentID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_EQUIPMENT_REVISION_INSPECTION_COVERAGE` (`AuditingID`),
  CONSTRAINT `FK_EQUIPMENT_REVISION_INSPECTION_COVERAGE_EQUIPMENT_REVISION` FOREIGN KEY (`RevisionID`) REFERENCES `equipment_revision` (`RevisionID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_revision_inspection_coverage`
--

LOCK TABLES `equipment_revision_inspection_coverage` WRITE;
/*!40000 ALTER TABLE `equipment_revision_inspection_coverage` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_revision_inspection_coverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_type`
--

DROP TABLE IF EXISTS `equipment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment_type` (
  `EquipmentTypeID` int(11) NOT NULL,
  `EquipmentTypeCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EquipmentTypeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`EquipmentTypeID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_EQUIPMENT_TYPE` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_type`
--

LOCK TABLES `equipment_type` WRITE;
/*!40000 ALTER TABLE `equipment_type` DISABLE KEYS */;
INSERT INTO `equipment_type` VALUES (1,'ACCUM','Accumulator','2019-06-14 07:43:20',NULL,NULL,NULL,'77A86B54-6BB4-4BFD-8D0B-7C8C9D88177A'),(2,'AIRCO','Air Cooler','2019-06-14 07:43:20',NULL,NULL,NULL,'45DEE00D-15C5-4BC0-8D58-B390656F1F77'),(3,'COLUM','Column','2019-06-14 07:43:20',NULL,NULL,NULL,'C6A82141-789F-443A-9A62-42C01C03366D'),(4,'VEVES','Vertical Vessel','2019-06-14 07:43:20',NULL,NULL,NULL,'08953F63-C803-4F8F-8503-F3D79B1DA2B3'),(5,'SPVES','Spherical Vessel','2019-06-14 07:43:20',NULL,NULL,NULL,'77460C4C-1A68-4CDF-A0FB-2DB230AF9FF6'),(6,'FIHEA','Fired Heater','2019-06-14 07:43:20',NULL,NULL,NULL,'5367BF68-1B20-4239-93C5-72A16C455637'),(7,'PIPIN','Piping','2019-06-14 07:43:20',NULL,NULL,NULL,'3A33D242-DDD1-42A8-B294-77A8B5EF7C64'),(8,'PUMP','Pump','2019-06-14 07:43:20',NULL,NULL,NULL,'71507E6D-3FF7-403F-A140-4F89134C322C'),(9,'PLEXC','Plate Exchanger','2019-06-14 07:43:20',NULL,NULL,NULL,'46CDFA86-5DF0-4EE6-B5AC-61B1E4966899'),(10,'STEXC','Shell and Tube Exchanger','2019-06-14 07:43:20',NULL,NULL,NULL,'7711BAE9-A5A1-4DB4-8F2A-934A761896A3'),(11,'TANK','Tank','2019-06-14 07:43:20',NULL,NULL,NULL,'3DE783A9-7536-4EAC-BA3B-6C5BD17C58BF'),(12,'HOVES','Horizontal Vessel','2019-06-14 07:43:20',NULL,NULL,NULL,'4247BD59-333A-497E-9043-5EC5E7259F0D'),(13,'REVAL','Relief Valve','2019-06-14 07:43:20',NULL,NULL,NULL,'BA3196A5-F3AE-4E0C-A661-2C7787FF62D2'),(14,'TOWER','Tower','2019-06-14 07:43:20',NULL,NULL,NULL,'536A85FE-D21C-4C12-A0C6-3FD8072AFBF3'),(15,'FILTE','Filter','2019-06-14 07:43:20',NULL,NULL,NULL,'2033FB73-7D2C-4AFF-AE6E-E302202DD303');
/*!40000 ALTER TABLE `equipment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra_fields_lookup`
--

DROP TABLE IF EXISTS `extra_fields_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extra_fields_lookup` (
  `LookupID` int(11) NOT NULL AUTO_INCREMENT,
  `ExtraFieldID` int(11) NOT NULL,
  `LookupText` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LookupValue` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`LookupID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_EXTRA_FIELDS_LOOKUP` (`AuditingID`),
  KEY `FK_EXTRA_FIELDS_LOOKUP_EXTRA_FIELDS_SETTING` (`ExtraFieldID`),
  CONSTRAINT `FK_EXTRA_FIELDS_LOOKUP_EXTRA_FIELDS_SETTING` FOREIGN KEY (`ExtraFieldID`) REFERENCES `extra_fields_setting` (`ExtraFieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_fields_lookup`
--

LOCK TABLES `extra_fields_lookup` WRITE;
/*!40000 ALTER TABLE `extra_fields_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `extra_fields_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra_fields_lookup_component`
--

DROP TABLE IF EXISTS `extra_fields_lookup_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extra_fields_lookup_component` (
  `LookupID` int(11) NOT NULL AUTO_INCREMENT,
  `ExtraFieldID` int(11) NOT NULL,
  `LookupText` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LookupValue` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`LookupID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_EXTRA_FIELDS_LOOKUP_COMPONENT` (`AuditingID`),
  KEY `FK_EXTRA_FIELDS_LOOKUP_COMPONENT_EXTRA_FIELDS_SETTING_COMPONENT` (`ExtraFieldID`),
  CONSTRAINT `FK_EXTRA_FIELDS_LOOKUP_COMPONENT_EXTRA_FIELDS_SETTING_COMPONENT` FOREIGN KEY (`ExtraFieldID`) REFERENCES `extra_fields_setting_component` (`ExtraFieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_fields_lookup_component`
--

LOCK TABLES `extra_fields_lookup_component` WRITE;
/*!40000 ALTER TABLE `extra_fields_lookup_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `extra_fields_lookup_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra_fields_setting`
--

DROP TABLE IF EXISTS `extra_fields_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extra_fields_setting` (
  `ExtraFieldID` int(11) NOT NULL,
  `FieldID` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FieldName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FieldDescription` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SeqNo` int(11) DEFAULT NULL,
  `FieldType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FieldSize` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsCreated` tinyint(1) NOT NULL DEFAULT '0',
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ExtraFieldID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_EXTRA_FIELDS_SETTING` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_fields_setting`
--

LOCK TABLES `extra_fields_setting` WRITE;
/*!40000 ALTER TABLE `extra_fields_setting` DISABLE KEYS */;
INSERT INTO `extra_fields_setting` VALUES (1,'ObjectField001',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'A1D9EF30-4E86-482D-830A-D4419660EE11'),(2,'ObjectField002',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'35E69FF5-9288-46D6-8D45-61732B20A4D4'),(3,'ObjectField003',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'AFC57FE8-753A-4F7D-97CC-6C6B6E5B0BC3'),(4,'ObjectField004',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'D90CB3E5-9382-4A83-B507-D4C53C43B29F'),(5,'ObjectField005',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'BDC9160D-AC55-4945-BA46-28727AB4616F'),(6,'ObjectField006',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'6D9F0EE5-DC43-4F98-820A-56DDB52A066F'),(7,'ObjectField007',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'CF5287A2-EE35-4682-B8D9-190B614E6FD8'),(8,'ObjectField008',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'08A17A03-477F-4FFA-B1CC-08E978F31D81'),(9,'ObjectField009',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'FCF4C405-9AF3-4D4A-9B15-6C04E2FBA61B'),(10,'ObjectField010',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'3B03F2EC-1413-4A88-82EC-95BCA1123D0C'),(11,'ObjectField011',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F61EAE14-2BDA-446B-88B0-4A096E1BEE99'),(12,'ObjectField012',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'68503273-EFFF-445C-818A-1C7D99D0B0C0'),(13,'ObjectField013',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'FF364C7E-5C95-4FD9-9E6F-6E646C2BBF60'),(14,'ObjectField014',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'83814C83-34A1-4EB9-9A35-438566D1023F'),(15,'ObjectField015',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'E1F8446C-8657-41CD-A727-CEB9D380D6D6'),(16,'ObjectField016',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'ABD0B609-A15A-4295-AB4E-1176F49A6269'),(17,'ObjectField017',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'C47BF145-77C4-44E8-89DC-FD63D2F625DE'),(18,'ObjectField018',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'C38B2957-D4C0-4CB1-A43D-413738708A52'),(19,'ObjectField019',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'849461FF-2194-4A44-AB1C-6DD664E11788'),(20,'ObjectField020',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'2509D639-988D-4489-BF20-E397916A3B86'),(21,'ObjectField021',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'D7058F16-3810-4534-96C0-513EA246168C'),(22,'ObjectField022',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'8E308304-9FE5-47F8-A446-208114F709A0'),(23,'ObjectField023',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'3D7DAD25-59B5-41FD-BE16-334BD0E0A017'),(24,'ObjectField024',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F70BC4A2-105A-4C64-BF47-C22A6AEE36C6'),(25,'ObjectField025',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'0F1A3F30-B3C1-448C-818E-4B309AC80A5A'),(26,'ObjectField026',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F7A24B1F-5A35-4EB2-8D74-FE8C0D3D39C9'),(27,'ObjectField027',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'368AAFB7-D4F1-4911-99A4-D0CCE8349A29'),(28,'ObjectField028',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'980272AC-616F-462B-ADEB-AE60B62CBB53'),(29,'ObjectField029',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'14C4213F-5C37-4CCA-BBF4-FAAF4246F351'),(30,'ObjectField030',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F63432FF-FBC5-4189-AFDC-0B66EDD35426'),(31,'ObjectField031',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'7D00D6C1-47E7-4E23-8FE6-F60BDB6DACAE'),(32,'ObjectField032',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'622AF627-F6B8-4AEA-B269-86CE5AEA2F1C'),(33,'ObjectField033',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'BD7A6360-5B9E-41A0-A229-29B024137462'),(34,'ObjectField034',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F13A153A-5EAC-4618-A5A5-3C45C6169DBE'),(35,'ObjectField035',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F1C0CBD1-1622-44CB-9B29-426BB6219997'),(36,'ObjectField036',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'6E9ADA12-58BA-4B5E-A2CE-C68A1F55C901'),(37,'ObjectField037',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'2A6FC7EC-5254-4842-9125-C6EDC36B5CB0'),(38,'ObjectField038',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'C59A59EC-2FF5-4C23-B27D-20D71EE43189'),(39,'ObjectField039',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'ABEE59B5-C484-4D3E-B486-D7644A730EB6'),(40,'ObjectField040',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'6F08F1C1-B9BA-4A92-81AE-438805F837BF'),(41,'ObjectField041',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'B07916DA-9060-40BC-8F85-54E47FE4AD45'),(42,'ObjectField042',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'62114C63-431F-41FA-A54D-618AAF577B80'),(43,'ObjectField043',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'00A182A7-A74F-4587-88C6-EAA5CC18DB92'),(44,'ObjectField044',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'9896074F-B248-4DCF-9004-F01C279664E4'),(45,'ObjectField045',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F3F3A9EC-6A25-4296-A693-A120C83FBF25'),(46,'ObjectField046',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'81B15CEB-1ED6-43A4-9F92-0AB2FCC9D5BC'),(47,'ObjectField047',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'E8605657-8D9A-4C45-84D8-595C9E481B0C'),(48,'ObjectField048',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'E82E466C-05AD-4AD9-909A-F9BFE903FAF5'),(49,'ObjectField049',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'25612D89-ED4B-4929-91FB-08F5D17EFFFB'),(50,'ObjectField050',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'030A1A32-9B37-464C-B062-3E9F08947107');
/*!40000 ALTER TABLE `extra_fields_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra_fields_setting_component`
--

DROP TABLE IF EXISTS `extra_fields_setting_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extra_fields_setting_component` (
  `ExtraFieldID` int(11) NOT NULL,
  `FieldID` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FieldName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FieldDescription` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SeqNo` int(11) DEFAULT NULL,
  `FieldType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FieldSize` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '0',
  `IsCreated` tinyint(1) NOT NULL DEFAULT '0',
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ExtraFieldID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_EXTRA_FIELDS_SETTING_COMPONENT` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_fields_setting_component`
--

LOCK TABLES `extra_fields_setting_component` WRITE;
/*!40000 ALTER TABLE `extra_fields_setting_component` DISABLE KEYS */;
INSERT INTO `extra_fields_setting_component` VALUES (1,'ObjectField001',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'3F477A51-DB7A-44B3-ABFE-076355AA5753'),(2,'ObjectField002',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'6C6BD515-2E69-4186-8938-9F68661BF8DF'),(3,'ObjectField003',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'DCABA38A-BD5C-4857-AF82-AE2C6884DF11'),(4,'ObjectField004',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'CC2ED950-8D59-4683-90A4-5E104420D02A'),(5,'ObjectField005',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'DF7AB753-15A4-4B1F-ACE7-FC0895779B62'),(6,'ObjectField006',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'ABF33D0F-AB9B-4081-B7DC-3F80D8865F65'),(7,'ObjectField007',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'A7DDA2BB-F679-4615-AEAC-48B363B80F9C'),(8,'ObjectField008',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'DC8E4368-34DE-44D7-B317-72B9869345B8'),(9,'ObjectField009',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'93F89DDF-374E-4043-9140-BC4630A58DCF'),(10,'ObjectField010',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'72C057DF-4560-4855-991D-3546F9655D07'),(11,'ObjectField011',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'3969B0A6-A6D0-4F3F-9F47-ECC19928E132'),(12,'ObjectField012',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'06817542-8162-4158-A59E-CAC97B14648C'),(13,'ObjectField013',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'AAE0E4AB-43FE-4A16-B298-358BFF0E735D'),(14,'ObjectField014',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'1D500769-70F4-43A2-A44F-FC0BD96DE9EC'),(15,'ObjectField015',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'2B325751-4C30-4925-A38F-A520BC80797C'),(16,'ObjectField016',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'EF778607-4185-426D-9098-DFE96D583EBB'),(17,'ObjectField017',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'9E07D5F4-818E-41E6-B5FE-354DFAB5DF44'),(18,'ObjectField018',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'7BD049C0-991E-4152-95FA-DE7C092B15A3'),(19,'ObjectField019',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'07FD2642-49F3-4B2C-B6A3-5FC1EF6CE76F'),(20,'ObjectField020',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'0D1D6A60-680E-4B5A-BE59-B7A2449C3C91'),(21,'ObjectField021',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'CFAED99B-CE33-4E5B-95C8-3644FDF40A05'),(22,'ObjectField022',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'CD46AB18-6BA7-471C-9FBD-8956371FED5D'),(23,'ObjectField023',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F54A44C1-F5CE-4063-9804-9C3132C513DB'),(24,'ObjectField024',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'E68A346B-A86B-47F2-B400-9C3BA22CE4AC'),(25,'ObjectField025',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'5E9D9088-3A09-4E08-9751-7554A04B25A5'),(26,'ObjectField026',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'658315AE-AEEB-4EA8-8DAF-B4771100AAC9'),(27,'ObjectField027',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'754FA952-5706-468E-B7F3-6A2549E135EC'),(28,'ObjectField028',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'B660C148-3184-4D22-BFCF-0613B794D960'),(29,'ObjectField029',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'CC4B5DFA-24ED-479A-89A9-63A90F210C4A'),(30,'ObjectField030',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F1575B6C-A3B5-4423-8D18-2E6CA661AE02'),(31,'ObjectField031',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'3323FE5D-CA08-4511-936B-E3BF53D421C2'),(32,'ObjectField032',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'0505BC97-3ABA-4ADE-A9E5-81B702D087DC'),(33,'ObjectField033',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'AAC1BD48-E4B9-4B3E-9DA0-0497B7230402'),(34,'ObjectField034',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'7FF269C5-3040-4853-9358-2CBDC1D1A239'),(35,'ObjectField035',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'3E2BF5AF-A7D4-404B-A5D4-CE6A0AC35BA4'),(36,'ObjectField036',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'50AA6FA4-D6FA-4B7A-8D2E-E8415300DA00'),(37,'ObjectField037',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'AC27F424-D763-49FF-BFB2-63DBF27CC368'),(38,'ObjectField038',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'15D0ED25-ADF6-444F-AD86-4901754D3921'),(39,'ObjectField039',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'0D95E017-2C95-4F9B-AAE9-908FDC3386EA'),(40,'ObjectField040',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'60342CBC-6073-4D70-BFF3-E924A2DB551A'),(41,'ObjectField041',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F1A4F1E4-7440-4202-A3B8-2DF5FDBB805E'),(42,'ObjectField042',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'312D35BB-6E64-4738-9B19-099486A23811'),(43,'ObjectField043',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'D01456B5-BC34-40AC-94B3-C6B1965BF933'),(44,'ObjectField044',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'25B010DD-998A-428A-9EA0-737DE59771D5'),(45,'ObjectField045',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'5FDE4652-F757-4CB6-B29B-655EE441529C'),(46,'ObjectField046',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'F1A77B5B-CA61-46AB-9C66-BD63F23BD716'),(47,'ObjectField047',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'97950524-7968-4515-A1EB-024DE1141402'),(48,'ObjectField048',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'C9E94E80-4B04-46B5-AB8C-6402EE75E71B'),(49,'ObjectField049',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'C674DF14-2810-4B2D-B976-50ACBC176BBB'),(50,'ObjectField050',NULL,NULL,NULL,NULL,NULL,0,0,'2019-06-14 07:43:20',NULL,NULL,NULL,'35D01B58-E5C6-4307-A26D-F6346A5C2A8E');
/*!40000 ALTER TABLE `extra_fields_setting_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility` (
  `FacilityID` int(20) NOT NULL AUTO_INCREMENT,
  `SiteID` int(20) DEFAULT NULL,
  `FacilityName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ManagementFactor` double NOT NULL,
  `Created` datetime DEFAULT NULL,
  PRIMARY KEY (`FacilityID`),
  KEY `FK_FACILITY_SITES` (`SiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,3,'VuNA Facility',11,'2019-09-05 10:26:17'),(2,4,'CORTEK Facility Demo',0.1,'2019-09-05 10:30:03'),(3,4,'vunafacility',0.1,'2019-09-05 10:33:25'),(8,4,'facility test',21,'2019-09-05 10:33:25'),(9,8,'facility test 1',21,'2019-09-05 10:33:25'),(11,11,'Postgres demo',0.1,'2019-09-05 10:33:25'),(23,4,'vunafacility2',0.1,'2019-09-05 10:33:25'),(28,13,'Aaa',0.1,'2019-09-05 10:33:25'),(31,1,'Duong ',1,'2019-09-09 12:10:55'),(32,3,'huong',1,'2019-09-09 18:00:24'),(33,3,'hihi',1,'2019-09-10 10:16:24'),(40,3,'lab411',0.1,'2019-11-25 09:11:12');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_risk_target`
--

DROP TABLE IF EXISTS `facility_risk_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_risk_target` (
  `FacilityID` bigint(20) NOT NULL,
  `RiskTarget_FC` double DEFAULT NULL,
  `RiskTarget_AC` double DEFAULT NULL,
  PRIMARY KEY (`FacilityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_risk_target`
--

LOCK TABLES `facility_risk_target` WRITE;
/*!40000 ALTER TABLE `facility_risk_target` DISABLE KEYS */;
INSERT INTO `facility_risk_target` VALUES (1,30000,10002),(2,1000000,10000),(3,100000,100),(8,1000000000,20000),(9,1000000,100),(11,120000,1000),(23,1000000,10000),(28,21111,1232),(29,6800000,15000),(32,15000000,1200),(33,4800000,14000),(40,12,0.01);
/*!40000 ALTER TABLE `facility_risk_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_component`
--

DROP TABLE IF EXISTS `file_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_component` (
  `FileID` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentID` int(11) NOT NULL,
  `FileDocName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FileType` int(11) NOT NULL,
  `FileDescription` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OriFileName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FileBinary` longblob NOT NULL,
  `FileSize` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FileExt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DateUploaded` datetime(6) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`FileID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_FILE_COMPONENT` (`AuditingID`),
  KEY `FK_FILE_COMPONENT_COMPONENT_MASTER` (`ComponentID`),
  CONSTRAINT `FK_FILE_COMPONENT_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_component`
--

LOCK TABLES `file_component` WRITE;
/*!40000 ALTER TABLE `file_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_equipment`
--

DROP TABLE IF EXISTS `file_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_equipment` (
  `FileID` int(11) NOT NULL AUTO_INCREMENT,
  `EquipmentID` int(11) NOT NULL,
  `FileDocName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FileType` int(11) NOT NULL,
  `FileDescription` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OriFileName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FileBinary` longblob NOT NULL,
  `FileSize` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FileExt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DateUploaded` datetime(6) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`FileID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_FILE_EQUIPMENT` (`AuditingID`),
  KEY `FK_FILE_EQUIPMENT_EQUIPMENT_MASTER` (`EquipmentID`),
  CONSTRAINT `FK_FILE_EQUIPMENT_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_equipment`
--

LOCK TABLES `file_equipment` WRITE;
/*!40000 ALTER TABLE `file_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_facility`
--

DROP TABLE IF EXISTS `file_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_facility` (
  `FileID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityID` int(11) NOT NULL,
  `FileDocName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FileType` int(11) NOT NULL,
  `FileDescription` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OriFileName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FileBinary` longblob NOT NULL,
  `FileSize` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FileExt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DateUploaded` datetime(6) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`FileID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_FILE_FACILITY` (`AuditingID`),
  KEY `FK_FILE_FACILITY_FACILITY` (`FacilityID`),
  CONSTRAINT `FK_FILE_FACILITY_FACILITY` FOREIGN KEY (`FacilityID`) REFERENCES `facility` (`FacilityID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_facility`
--

LOCK TABLES `file_facility` WRITE;
/*!40000 ALTER TABLE `file_facility` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_fluid`
--

DROP TABLE IF EXISTS `generic_fluid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generic_fluid` (
  `GenericFluidID` int(11) NOT NULL AUTO_INCREMENT,
  `GenericFluid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ExamplesOfApplicable` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FluidType` int(11) NOT NULL,
  `MW` double DEFAULT NULL,
  `NBP` double DEFAULT NULL,
  `Density` double DEFAULT NULL,
  `AmbientState` int(11) NOT NULL,
  `AutoIgnitionTemperature` int(11) DEFAULT NULL,
  `ChemicalFactor` int(11) DEFAULT NULL,
  `HealthDegree` int(11) DEFAULT NULL,
  `Flammability` int(11) DEFAULT NULL,
  `Reactivity` int(11) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`GenericFluidID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `UK_GenericFluid` (`GenericFluid`),
  UNIQUE KEY `IX_GENERIC_FLUID` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_fluid`
--

LOCK TABLES `generic_fluid` WRITE;
/*!40000 ALTER TABLE `generic_fluid` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_fluid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_material`
--

DROP TABLE IF EXISTS `generic_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generic_material` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaterialName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DesignPressure` double DEFAULT NULL,
  `DesignTemperature` double DEFAULT NULL,
  `MinDesignTemperature` double DEFAULT NULL,
  `CorrosionAllowance` double DEFAULT NULL,
  `SigmaPhase` double DEFAULT NULL,
  `SulfurContent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `HeatTreatment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ReferenceTemperature` double DEFAULT NULL,
  `PTAMaterialCode` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `HTHAMaterialCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IsPTA` tinyint(1) NOT NULL DEFAULT '0',
  `IsHTHA` tinyint(1) NOT NULL DEFAULT '0',
  `Austenitic` tinyint(1) NOT NULL DEFAULT '0',
  `Temper` tinyint(1) NOT NULL DEFAULT '0',
  `CarbonLowAlloy` tinyint(1) NOT NULL DEFAULT '0',
  `NickelBased` tinyint(1) NOT NULL DEFAULT '0',
  `ChromeMoreEqual12` tinyint(1) NOT NULL DEFAULT '0',
  `CostFactor` double DEFAULT NULL,
  `YieldStrength` double DEFAULT NULL,
  `TensileStrength` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_GENERIC_MATERIAL` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_material`
--

LOCK TABLES `generic_material` WRITE;
/*!40000 ALTER TABLE `generic_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `im_items`
--

DROP TABLE IF EXISTS `im_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `im_items` (
  `IMItemID` int(11) NOT NULL,
  `IMDescription` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IMCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`IMItemID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_IM_ITEMS` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `im_items`
--

LOCK TABLES `im_items` WRITE;
/*!40000 ALTER TABLE `im_items` DISABLE KEYS */;
INSERT INTO `im_items` VALUES (1,'Visual','imVisual','2019-06-14 07:43:20',NULL,NULL,NULL,'0D0EED81-B4E1-4DF8-8ECF-46048E602398'),(2,'Magnetic','imMagnetic','2019-06-14 07:43:20',NULL,NULL,NULL,'A05ED705-DF01-4905-A523-AA74CAF21CB6'),(3,'Penetrant','imPenetrant','2019-06-14 07:43:20',NULL,NULL,NULL,'22EB8FDF-2D71-489B-BD1A-2907AD148D28'),(4,'Radiography','imRadiography','2019-06-14 07:43:20',NULL,NULL,NULL,'6A001CAF-E5EE-477C-9B90-7C64DCCDF3CE'),(5,'Ultrasonic','imUltrasonic','2019-06-14 07:43:20',NULL,NULL,NULL,'6EA720C7-8F3E-4B5D-A2F4-8AF2ADFC3BD7'),(6,'Eddy Current','imEddyCurrent','2019-06-14 07:43:20',NULL,NULL,NULL,'389CEFF7-2321-4168-8B47-474E00B9E65F'),(7,'Thermography','imThermography','2019-06-14 07:43:20',NULL,NULL,NULL,'B1F4C383-C93B-4914-9105-023D6ED81252'),(8,'Acoustic Emission','imAcoustic','2019-06-14 07:43:20',NULL,NULL,NULL,'9CFE6BDC-24A3-4956-B344-65C42AD35D5E'),(9,'Metallurgical','imMetallurgical','2019-06-14 07:43:20',NULL,NULL,NULL,'105DEFF1-9A1E-48DC-8576-162F96CB64E5'),(10,'Monitoring','imMonitoring','2019-06-14 07:43:20',NULL,NULL,NULL,'87BB000E-5642-4990-BAFD-A2D04EA1E376');
/*!40000 ALTER TABLE `im_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `im_type`
--

DROP TABLE IF EXISTS `im_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `im_type` (
  `IMTypeID` int(11) NOT NULL,
  `IMTypeName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IMTypeCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IMItemID` int(11) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`IMTypeID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_IM_TYPE` (`AuditingID`),
  KEY `FK_IM_TYPE_IM_ITEMS` (`IMItemID`),
  CONSTRAINT `FK_IM_TYPE_IM_ITEMS` FOREIGN KEY (`IMItemID`) REFERENCES `im_items` (`IMItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `im_type`
--

LOCK TABLES `im_type` WRITE;
/*!40000 ALTER TABLE `im_type` DISABLE KEYS */;
INSERT INTO `im_type` VALUES (1,'Endoscopy','itEndoscopy',1,'2019-06-14 07:43:20',NULL,NULL,NULL,'8FEB1B67-5774-49EA-BC4C-884BE5E0D496'),(2,'Hydrotesting','itHydrotesting',1,'2019-06-14 07:43:20',NULL,NULL,NULL,'AF320222-6383-4FED-8D1B-EC1DE7628095'),(3,'Naked Eye','itNakedEye',1,'2019-06-14 07:43:20',NULL,NULL,NULL,'D445547F-2483-401C-A3A8-95D99C064DA2'),(4,'Video','itVideo',1,'2019-06-14 07:43:20',NULL,NULL,NULL,'944DD41D-51DD-4FD0-9120-4754FEFE0D9A'),(5,'Magnetic Fluorescent Inspection','itFluorescent',2,'2019-06-14 07:43:20',NULL,NULL,NULL,'6D8849DC-224A-47FA-821D-9574D380CCB3'),(6,'Magnetic Flux Leakage','itFluxLeakage',2,'2019-06-14 07:43:20',NULL,NULL,NULL,'9D5E1D5D-47A8-4356-B37D-9DA0DF2D3411'),(7,'Magnetic Particle Inspection','itParticle',2,'2019-06-14 07:43:20',NULL,NULL,NULL,'68242B4E-577C-4CE0-9B1A-B3DA8E2C9E40'),(8,'Liquid Penetrant Inspection','itLiquidPenetrant',3,'2019-06-14 07:43:20',NULL,NULL,NULL,'094CE4C1-2298-467B-9A1D-61C9C0FB5E91'),(9,'Penetrant Leak Detection','itLeakDetectPetn',3,'2019-06-14 07:43:20',NULL,NULL,NULL,'6574B379-10BE-4FF9-AFB6-1090E440E213'),(10,'Compton Scatter','itCompton',4,'2019-06-14 07:43:20',NULL,NULL,NULL,'9C5AF21B-B732-4E56-AFEF-FF0B6429411E'),(11,'Gamma Radiography','itGamma',4,'2019-06-14 07:43:20',NULL,NULL,NULL,'98ED5BF8-C938-4F9D-8D6C-1813AADFC6B9'),(12,'Real-time Radiography','itRealTimeRadio',4,'2019-06-14 07:43:20',NULL,NULL,NULL,'9B62D70E-6614-4D79-BEE0-B398DA14E35E'),(13,'X-Radiography','itXRadio',4,'2019-06-14 07:43:20',NULL,NULL,NULL,'05098319-11E6-49A3-99E8-16DC6ADCDB7D'),(14,'Angled Compression Wave','itCompWave',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'47257CF8-9C71-48D2-AF8A-1C15C93C72EE'),(15,'Angled Shear Wave','itShearWave',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'DA4991FB-7613-4682-AA3D-6C62C72BE047'),(16,'A-scan Thickness Survey','itAScan',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'8FEA9024-1C49-4E7C-AEBD-70882E205784'),(17,'B-scan','itBScan',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'6FC57AC5-EE3B-4999-9D3C-9A255E87F50C'),(18,'Chime','itChime',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'61837112-E675-43E0-816B-6F35B5456583'),(19,'C-scan','itCScan',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'49C80FFC-8A32-4316-952F-B62163F2781F'),(20,'Digital Ultrasonic Thickness Gauge','itDUTG',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'0DD154CE-AD3F-4351-AAE7-B98C86767E6E'),(21,'Lorus','itLorus',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'15D8B726-35B3-44C5-9DF5-A1D55B7B3865'),(22,'Surface Waves','itSurfaceWave',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'4F813E1F-6D63-4B09-AF76-FFC9771C4A47'),(23,'Teletest','itTeletest',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'3679843F-7716-4C5E-ADB9-7F39FC6C9501'),(24,'TOFD','itTOFD',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'4DEA0D80-DA80-42A9-A1E9-405EC66B8C49'),(25,'ACFM','itACFM',6,'2019-06-14 07:43:20',NULL,NULL,NULL,'E0EB3777-1BAE-4CED-851D-399D2A1F3A2D'),(26,'Low frequency','itLowFreq',6,'2019-06-14 07:43:20',NULL,NULL,NULL,'1E0D5C83-1F9A-49BB-B43E-1C2C182538B5'),(27,'Pulsed','itPulsed',6,'2019-06-14 07:43:20',NULL,NULL,NULL,'E31EF3B5-E211-4BF0-B416-149FE4C16278'),(28,'Remote field','itRemoteField',6,'2019-06-14 07:43:20',NULL,NULL,NULL,'5593595A-DCA4-4F58-B76E-1320BEFB39A7'),(29,'Standard (flat coil)','itFlatCoil',6,'2019-06-14 07:43:20',NULL,NULL,NULL,'DFED27B4-5870-43F8-BBC2-6BFCF85E47C4'),(30,'Passive Thermography','itPassiveThermo',7,'2019-06-14 07:43:20',NULL,NULL,NULL,'1434ABF7-CED4-43CD-A026-3F9C4481FD1D'),(31,'Transient Thermography','itTransientThermo',7,'2019-06-14 07:43:20',NULL,NULL,NULL,'D8F819AF-7C1A-4E7A-9788-21AEB664C65A'),(32,'Crack Detection','itCrackDetect',8,'2019-06-14 07:43:20',NULL,NULL,NULL,'557976D9-0613-46C1-B6A4-BFADBEB39767'),(33,'Leak Detection','itLeakDetect',8,'2019-06-14 07:43:20',NULL,NULL,NULL,'AFF0F6A4-2088-4EF7-8D4A-36DA34EE8931'),(34,'Hardness Surveys','itHardSurvey',9,'2019-06-14 07:43:20',NULL,NULL,NULL,'C1E48383-9F2E-4ADB-9646-4BCA74E901EC'),(35,'Microstructure Replication','itMicroReplicate',9,'2019-06-14 07:43:20',NULL,NULL,NULL,'D8917C2D-9314-4A4E-BCC9-8EA7371F759C'),(36,'On-line Monitoring','itOnlineMon',10,'2019-06-14 07:43:20',NULL,NULL,NULL,'7BE67316-BA6B-48B1-A9E3-FB60F6B08A28'),(37,'Holiday Test','itHoliday',1,'2019-06-14 07:43:20',NULL,NULL,NULL,'B10EF1E9-0F59-4A5B-9AA9-940ADD829252'),(38,'Advanced Ultrasonic Backscatter Technique','itAUBT',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'BFA7CD2D-69A7-46C4-9347-FF05D66FE6BF'),(39,'Internal Rotational Inspection System','itIRIS',5,'2019-06-14 07:43:20',NULL,NULL,NULL,'7D1BB75A-C8A7-4EA3-9193-542DB180FFE0');
/*!40000 ALTER TABLE `im_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_component`
--

DROP TABLE IF EXISTS `image_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_component` (
  `ImageID` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentID` int(11) NOT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ImageDescription` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ImageBinary` longblob NOT NULL,
  `ImageBinarySmall` longblob NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ImageID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_IMAGE_COMPONENT` (`AuditingID`),
  KEY `FK_IMAGE_COMPONENT_COMPONENT_MASTER` (`ComponentID`),
  CONSTRAINT `FK_IMAGE_COMPONENT_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_component`
--

LOCK TABLES `image_component` WRITE;
/*!40000 ALTER TABLE `image_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_equipment`
--

DROP TABLE IF EXISTS `image_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_equipment` (
  `ImageID` int(11) NOT NULL AUTO_INCREMENT,
  `EquipmentID` int(11) NOT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ImageDescription` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ImageBinary` longblob NOT NULL,
  `ImageBinarySmall` longblob NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ImageID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_IMAGE_EQUIPMENT` (`AuditingID`),
  KEY `FK_IMAGE_EQUIPMENT_EQUIPMENT_MASTER` (`EquipmentID`),
  CONSTRAINT `FK_IMAGE_EQUIPMENT_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_equipment`
--

LOCK TABLES `image_equipment` WRITE;
/*!40000 ALTER TABLE `image_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_facility`
--

DROP TABLE IF EXISTS `image_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_facility` (
  `ImageID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityID` int(11) NOT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ImageDescription` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ImageBinary` longblob NOT NULL,
  `ImageBinarySmall` longblob NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ImageID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_IMAGE_FACILITY` (`AuditingID`),
  KEY `FK_IMAGE_FACILITY_FACILITY` (`FacilityID`),
  CONSTRAINT `FK_IMAGE_FACILITY_FACILITY` FOREIGN KEY (`FacilityID`) REFERENCES `facility` (`FacilityID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_facility`
--

LOCK TABLES `image_facility` WRITE;
/*!40000 ALTER TABLE `image_facility` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspection_coverage`
--

DROP TABLE IF EXISTS `inspection_coverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspection_coverage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PlanID` int(11) NOT NULL,
  `EquipmentID` int(11) NOT NULL,
  `ComponentID` int(11) NOT NULL,
  `Remarks` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Findings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `FindingRTF` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_INSPECTION_COVERAGE` (`AuditingID`),
  KEY `FK_INSPECTION_COVERAGE_COMPONENT_MASTER` (`ComponentID`),
  KEY `FK_INSPECTION_COVERAGE_EQUIPMENT_MASTER` (`EquipmentID`),
  KEY `FK_INSPECTION_COVERAGE_INSPECTION_PLAN` (`PlanID`),
  CONSTRAINT `FK_INSPECTION_COVERAGE_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`) ON DELETE CASCADE,
  CONSTRAINT `FK_INSPECTION_COVERAGE_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`),
  CONSTRAINT `FK_INSPECTION_COVERAGE_INSPECTION_PLAN` FOREIGN KEY (`PlanID`) REFERENCES `inspection_plan` (`PlanID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection_coverage`
--

LOCK TABLES `inspection_coverage` WRITE;
/*!40000 ALTER TABLE `inspection_coverage` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspection_coverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspection_coverage_detail`
--

DROP TABLE IF EXISTS `inspection_coverage_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspection_coverage_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CoverageID` int(11) NOT NULL,
  `DMItemID` int(11) NOT NULL,
  `InspectionDate` datetime(6) NOT NULL,
  `EffectivenessCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `InspectionSummary` varchar(500) DEFAULT NULL,
  `IsCarriedOut` tinyint(1) DEFAULT NULL,
  `CarriedOutDate` datetime(6) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_INSPECTION_COVERAGE_DETAIL` (`AuditingID`),
  KEY `FK_INSPECTION_COVERAGE_DETAIL_DM_ITEMS` (`DMItemID`),
  KEY `FK_INSPECTION_COVERAGE_DETAIL_INSPECTION_COVERAGE` (`CoverageID`),
  CONSTRAINT `FK_INSPECTION_COVERAGE_DETAIL_DM_ITEMS` FOREIGN KEY (`DMItemID`) REFERENCES `dm_items` (`DMItemID`),
  CONSTRAINT `FK_INSPECTION_COVERAGE_DETAIL_INSPECTION_COVERAGE` FOREIGN KEY (`CoverageID`) REFERENCES `inspection_coverage` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection_coverage_detail`
--

LOCK TABLES `inspection_coverage_detail` WRITE;
/*!40000 ALTER TABLE `inspection_coverage_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspection_coverage_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspection_detail_technique`
--

DROP TABLE IF EXISTS `inspection_detail_technique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspection_detail_technique` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CoverageID` int(11) NOT NULL,
  `IMItemID` int(11) DEFAULT NULL,
  `IMTypeID` int(11) DEFAULT NULL,
  `InspectionType` int(11) DEFAULT NULL,
  `Coverage` int(11) NOT NULL DEFAULT '0',
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_INSPECTION_DETAIL_TECHNIQUE` (`AuditingID`),
  KEY `FK_INSPECTION_DETAIL_TECHNIQUE_INSPECTION_COVERAGE` (`CoverageID`),
  CONSTRAINT `FK_INSPECTION_DETAIL_TECHNIQUE_INSPECTION_COVERAGE` FOREIGN KEY (`CoverageID`) REFERENCES `inspection_coverage` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection_detail_technique`
--

LOCK TABLES `inspection_detail_technique` WRITE;
/*!40000 ALTER TABLE `inspection_detail_technique` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspection_detail_technique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspection_dm_rule`
--

DROP TABLE IF EXISTS `inspection_dm_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspection_dm_rule` (
  `DMItemID` int(11) NOT NULL,
  `IMItemID` int(11) NOT NULL,
  `IMTypeID` int(11) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  UNIQUE KEY `AuditingID` (`AuditingID`),
  KEY `FK_INSPECTION_DM_RULE_DM` (`DMItemID`),
  KEY `FK_INSPECTION_DM_RULE_IM_ITEM` (`IMItemID`),
  KEY `FK_INSPECTION_DM_RULE_IM_TYPE` (`IMTypeID`),
  CONSTRAINT `FK_INSPECTION_DM_RULE_DM` FOREIGN KEY (`DMItemID`) REFERENCES `dm_items` (`DMItemID`),
  CONSTRAINT `FK_INSPECTION_DM_RULE_IM_ITEM` FOREIGN KEY (`IMItemID`) REFERENCES `im_items` (`IMItemID`),
  CONSTRAINT `FK_INSPECTION_DM_RULE_IM_TYPE` FOREIGN KEY (`IMTypeID`) REFERENCES `im_type` (`IMTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection_dm_rule`
--

LOCK TABLES `inspection_dm_rule` WRITE;
/*!40000 ALTER TABLE `inspection_dm_rule` DISABLE KEYS */;
INSERT INTO `inspection_dm_rule` VALUES (9,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'0017B594-A892-42DA-A228-CA07E2076DF4'),(67,1,37,'2019-06-14 07:43:20',NULL,NULL,NULL,'0041EE4F-B958-4332-AA67-A0406B1B53C8'),(57,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'006F610F-AD60-46D2-961E-17B39A2AFCBA'),(60,2,5,'2019-06-14 07:43:20',NULL,NULL,NULL,'0202A9F0-EFB7-43C3-AAE8-E3DD97D68E1C'),(60,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'02524FD4-13B4-4AAC-BA00-69394B447C6F'),(67,1,3,'2019-06-14 07:43:20',NULL,NULL,NULL,'027FBF63-BC29-4504-B629-F54634D6AD47'),(72,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'03182905-F0DE-4C8E-824C-877B51995551'),(63,6,25,'2019-06-14 07:43:20',NULL,NULL,NULL,'0348498B-F608-4A06-BD3F-A8ED84D2940A'),(63,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'04152493-74C9-4A4D-B887-6A1765F5E0DA'),(62,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'05E6AF2C-0E2F-46B1-BBEA-17B00806E827'),(60,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'0B7FF05C-5817-4901-A68A-D49CC314DC0F'),(66,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'0C7886E2-5CD4-49F3-B92B-1ECC0C37CED0'),(72,3,9,'2019-06-14 07:43:20',NULL,NULL,NULL,'0CEC0E88-E52A-48C8-85E3-B744A245E930'),(57,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'0D0DB541-E41A-4F65-B97C-862D7EE94005'),(69,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'0DF69622-9059-46B4-853F-89C512DAEABD'),(34,1,3,'2019-06-14 07:43:20',NULL,NULL,NULL,'0E982E19-B528-403E-A9F6-CBE1B5DC07A2'),(66,3,9,'2019-06-14 07:43:20',NULL,NULL,NULL,'0F82FEA9-5369-4433-91CC-D20E599C6DF4'),(62,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'1105FA3D-87F3-4E49-8B51-A203B1915569'),(9,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'1303FAC8-7BDF-483C-B48C-7FC119EE0AD0'),(34,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'14B9F81F-8289-47A9-A5D3-3EE71CAF309D'),(57,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'14CADB67-5F68-4D3B-876F-14059B5F902C'),(57,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'150D1D73-2279-4CBE-8F8D-2029F1C5F84E'),(70,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'1620BF48-C414-45ED-86BA-B7062F3B0500'),(63,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'170DA96D-F0C3-40AE-B2B5-2E25FC0B6075'),(60,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'176FD481-AFB0-4B40-9A3E-C5BE47B1A8D1'),(32,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'178AF761-F426-4717-9F84-68A56F1E6943'),(57,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'180C65D8-1827-42FD-A524-9884A32B8E37'),(69,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'1871206D-8E16-4E32-B24E-28A25C5C48EB'),(63,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'18F54DF8-5925-4901-B0DB-4767C369477A'),(72,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'1A0BC60D-6281-431E-A5C2-20316F927209'),(57,8,32,'2019-06-14 07:43:20',NULL,NULL,NULL,'1B02A5A4-293A-45C2-B097-FE9BC2706176'),(72,8,33,'2019-06-14 07:43:20',NULL,NULL,NULL,'1C2F9036-C5B4-4E34-97CD-B17BA07A80F1'),(61,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'1CA7AEA4-39EB-429A-9743-B0F9302761C7'),(73,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'1D243C16-B108-4ECA-8338-C3CD7B7D0180'),(61,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'1D3FFB8D-9492-4729-8729-89AB78BE5C13'),(57,8,33,'2019-06-14 07:43:20',NULL,NULL,NULL,'1E9D48CB-8AB2-4A2F-9388-332B283FFECA'),(67,1,4,'2019-06-14 07:43:20',NULL,NULL,NULL,'1EB644AB-4FE0-4C7E-BFBE-EC4914BF8C78'),(62,6,26,'2019-06-14 07:43:20',NULL,NULL,NULL,'1ECD46C0-B2FC-40DC-A66B-120564C6B548'),(66,6,27,'2019-06-14 07:43:20',NULL,NULL,NULL,'1FB8362D-4D5E-4FE7-82D8-2543873423B7'),(73,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'202367E9-C18E-47A6-8C4B-F71CC4692A5E'),(60,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'20B31824-17F9-41FA-B17A-C0799F60BA40'),(66,6,28,'2019-06-14 07:43:20',NULL,NULL,NULL,'22F3FBDE-FCD9-4A64-8828-7BDF65F8BAA5'),(61,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'257C527D-283C-4BEA-967B-57E856352101'),(67,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'27036E3A-7F3C-47A5-9F77-80EA78B47085'),(67,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'28E5AF0B-863E-43CC-B3E6-733D62E3695A'),(62,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'2A62D1B2-752F-462E-ABF9-3EFEF127DDA6'),(72,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'2BD189AB-F8F0-4B22-954E-E9459094D5C9'),(61,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'2D16A95D-EEE0-4F50-A4AB-0C56E4843726'),(8,1,3,'2019-06-14 07:43:20',NULL,NULL,NULL,'2E29C134-7284-40FB-B8B5-4BA0DEA9CF06'),(66,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'2E7BC1A2-9EFE-44F9-8B59-705D2406799D'),(9,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'2E9E7355-7016-407C-A9B9-CB784FADB1A7'),(73,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'2F78FE7B-081E-4A2D-AD46-CC670469346F'),(34,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'3086A65D-F195-4035-BFD2-B117C29FE1FF'),(72,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'313F44C1-9A9F-4BF0-BF23-C9FAF8308948'),(60,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'3141F310-F924-4A8A-8ADE-6D55206F16F9'),(57,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'31E581E5-FEFB-438F-92D2-44B4ABF0A85D'),(62,6,27,'2019-06-14 07:43:20',NULL,NULL,NULL,'32204C2C-9D16-44FF-A7B9-78F08255B9D0'),(32,1,4,'2019-06-14 07:43:20',NULL,NULL,NULL,'327A69ED-A3B2-4886-8A03-1020FFCAEB28'),(8,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'33C44FDB-C74F-46EB-ACEA-0B48D452342A'),(60,8,32,'2019-06-14 07:43:20',NULL,NULL,NULL,'346188DF-7B95-4E43-AE5C-8F14283B0C0E'),(72,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'348017B1-AEDD-4832-BE82-D07C516A535C'),(62,6,25,'2019-06-14 07:43:20',NULL,NULL,NULL,'348715FD-6C05-4673-930F-8FC664B562C4'),(60,8,33,'2019-06-14 07:43:20',NULL,NULL,NULL,'349DE88E-7FD8-4377-84F9-F9B78969A1BF'),(61,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'362BEE36-67FD-4123-9B9B-EA2A8A3CCC31'),(62,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'377FC833-9100-49EE-BF7E-333F772355B2'),(34,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'3ACE2C7C-2FCB-4615-94FC-6A4D3CF59B53'),(70,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'3BCBA82C-A614-46E0-924C-414234B81E8D'),(32,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'3C6E20C2-B045-42B0-8B20-FC5248649EF9'),(70,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'3C9AC806-E543-4203-80D8-CB4D7E9C6195'),(67,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'3D3835A3-FE4F-4B23-92C3-D4C15333F1A3'),(60,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'3E1D25B5-15C0-46B5-A1DD-C800F83C1749'),(34,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'3E742DC3-3FA1-48B4-8321-C2DD36B6E357'),(67,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'3EA5C3C2-5004-4219-BA8B-F52DF04CE852'),(70,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'3EECB6A8-5761-40B0-A9B3-607D0B4C3C5D'),(34,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'415C9E5C-E154-4EA3-B91D-6D30F838068B'),(66,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'418F30E2-2317-4BE4-981A-325DA6F357E2'),(32,1,3,'2019-06-14 07:43:20',NULL,NULL,NULL,'41A0C014-FFEC-4011-BD3C-940C9EE31775'),(69,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'41A617FC-EA57-4B68-9E51-342C315C21FB'),(9,2,5,'2019-06-14 07:43:20',NULL,NULL,NULL,'41BF175C-4F29-4663-99B4-BEF71A4302FE'),(61,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'41DEADDA-6CD9-4FE6-907A-768C730FF98B'),(8,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'4388C0B8-4E68-4828-AF83-645E07117573'),(61,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'479E5E9B-176D-4ED0-BB37-42E6BF43DC86'),(61,8,33,'2019-06-14 07:43:20',NULL,NULL,NULL,'48AC0789-E66B-4BF2-B62D-2CB786119B17'),(70,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'4A2E8555-FA13-4BA5-B9D1-70A5D898CD19'),(67,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'4A646CA7-267A-4F33-BE81-5A0FB519B55C'),(67,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'4A8EF225-3229-429B-9D4F-C7A8BAF24975'),(9,1,3,'2019-06-14 07:43:20',NULL,NULL,NULL,'4C8E63BC-24A7-4634-AA4A-E7B65ED4874B'),(70,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'4CB0925A-2895-4878-A5ED-D6F0DF01B179'),(9,1,2,'2019-06-14 07:43:20',NULL,NULL,NULL,'4D63ECDA-E1F3-400F-BC09-B90023253947'),(34,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'4DC46FE6-140B-4760-8B14-1627EC3B621C'),(57,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'4F9164EF-626A-4681-A40A-B2D10D63036F'),(9,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'4FC0CC6E-7B14-4BDE-BC8D-55AEFDD21D1A'),(69,1,2,'2019-06-14 07:43:20',NULL,NULL,NULL,'515D05CB-123E-4F5B-AD7A-2F67048947E6'),(61,6,25,'2019-06-14 07:43:20',NULL,NULL,NULL,'51974FEA-827F-4309-9C8B-81BA19A02A49'),(62,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'528E1703-9E65-4DFA-AB67-10696AE6D24D'),(8,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'5391527F-1D5D-4447-8791-58B746D93CAB'),(60,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'53BBAB8A-6B3F-4382-9A5A-B719D26E7352'),(34,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'53F553B4-678A-4110-882B-CA8E428266DC'),(70,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'56226DFC-EA12-498A-9B26-B02A5EE50E3C'),(70,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'56C9997B-4C0C-4C85-995F-62D9B804B190'),(63,1,37,'2019-06-14 07:43:20',NULL,NULL,NULL,'582A2E01-7E7B-4FEC-9413-E84A1F0765CF'),(66,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'5A23FD93-9B15-437B-A835-16499C0AB154'),(34,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'5A719D8D-ED61-4CED-B891-0F54670D5990'),(63,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'5ADBF432-2C90-4D18-8B4B-4E34641CD604'),(70,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'5B1F28DC-F170-4342-B187-84259C3712D2'),(73,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'5BF933F8-53EC-46ED-81AD-0EBDEAD9FA3D'),(63,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'5C7A156C-15E7-4F62-B26A-BC2E1261DD4F'),(9,2,7,'2019-06-14 07:43:20',NULL,NULL,NULL,'5D33C4B7-D839-417E-AE1F-E31E21F180A4'),(8,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'5D3C91D0-7852-426B-ABE0-C82C11D69DFA'),(62,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'5DC02A9C-6B5B-43A5-AF94-78C011F8C4C4'),(62,3,9,'2019-06-14 07:43:20',NULL,NULL,NULL,'5E06D8BE-C69B-49EA-AF31-A4915CB97F44'),(62,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'5E0716F1-9FF1-4C2A-80CD-0F15611CB433'),(66,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'5E416B77-1292-4E44-8EC9-63885B366010'),(32,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'5E893AEE-EB7D-454C-92EA-C40FF83D5145'),(63,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'602B775D-7DB5-41C4-B4D1-7833AE3DD9FC'),(72,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'60450EF3-400A-4F76-AA13-776E03AF4D81'),(72,8,32,'2019-06-14 07:43:20',NULL,NULL,NULL,'61D7784F-4190-4EED-99AF-D49EA16AA3E6'),(67,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'623DF8DD-D320-4C40-99EF-39248812E266'),(9,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'624C3887-696D-45D0-A159-C9D7073B3328'),(67,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'64C6CD22-FB75-4283-8CD6-2FB5F59F6335'),(72,6,25,'2019-06-14 07:43:20',NULL,NULL,NULL,'65D05789-46BC-4F71-8B4D-E1AFCDE9D065'),(63,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'66001C73-1E3B-423C-A502-CB45BA3E395A'),(8,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'6620F3E3-0650-45DD-B090-8849A0E840B7'),(66,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'66DD5226-5D66-484D-8ECE-AB8368FACA32'),(67,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'674646BB-929C-4CA9-A658-FF4B864EF901'),(73,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'679A1000-87D1-4360-B07D-911956EF530C'),(73,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'679E4E4B-7160-4138-BD43-05798B065FCE'),(63,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'6883D4FF-FCB0-4E72-9AB0-75B65D390D44'),(66,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'69DB581C-850E-4887-AD10-2F094C3197EF'),(32,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'6A413D49-A686-4E42-9092-08ECBDE79756'),(32,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'6A74B0D1-0931-4D1C-80A1-BB841759AB9A'),(9,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'6B2321F2-5E7B-48A4-B83C-0AC244ABEF15'),(9,1,4,'2019-06-14 07:43:20',NULL,NULL,NULL,'6C03CAA3-02F8-41B0-834D-2399CC6B41E7'),(57,6,25,'2019-06-14 07:43:20',NULL,NULL,NULL,'6C81F543-3B9B-44C2-B8EB-D6C543E27BCC'),(63,1,4,'2019-06-14 07:43:20',NULL,NULL,NULL,'6D865654-1BE9-46E5-B6EE-E6B628BE9E74'),(72,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'6E1355EE-9B95-4F00-B667-54235DDBB369'),(57,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'6E224F5C-E6F8-4E1C-8231-70715E4A606C'),(32,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'6E64874C-DAB9-4FDF-8C9D-A4ED4E24F935'),(63,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'712261DE-BFA7-4C60-BC66-A08ACBCA675D'),(63,6,28,'2019-06-14 07:43:20',NULL,NULL,NULL,'7249B1A9-296C-4EFB-911A-22F9FF5A4DA2'),(70,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'724B0CE6-91E9-43DA-A242-DB7F5A0EA4C5'),(8,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'731DDFD6-25BF-455B-B565-7DA384476430'),(8,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'7436598C-ABAA-4EF1-8BE5-AC0201E1F4C5'),(60,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'755D8ACA-116A-4F44-A724-E02C1DAD85C5'),(63,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'75AAFBB7-1AF7-4AE7-A081-58478B4E9DF8'),(61,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'75B5C9D1-4698-40C6-A002-E0C8E0545AE2'),(63,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'7601B3D7-0EAD-417E-A3DC-A56714CEC034'),(61,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'760B1FF1-F341-402A-A123-E7D6189CE819'),(63,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'763D792F-CBE6-4055-9452-EDCF8000A0B2'),(73,2,5,'2019-06-14 07:43:20',NULL,NULL,NULL,'77324690-BAFA-4B29-BA10-663D151F3511'),(72,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'777FF7C6-62DA-452E-9278-2C63D2331ECB'),(60,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'78069652-7915-4A7D-A2C1-9D0798D5D4A5'),(72,6,26,'2019-06-14 07:43:20',NULL,NULL,NULL,'7911797B-BF87-469D-A037-A218A78D2832'),(57,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'798A0173-A87C-42AA-A5A8-1B4CC502C837'),(9,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'79DB38E3-50C8-41E3-B12E-E14681087761'),(62,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'7BC97B91-A06E-4EE0-BFE8-306F05A6E99C'),(9,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'7BD8E92E-20E8-4AC0-8413-1BFC55B7F8B6'),(61,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'7CAB9BDD-87A1-4F45-BB81-F36599D04223'),(73,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'7D84C306-AF9F-4C02-A7FF-35D0CE35597C'),(61,2,5,'2019-06-14 07:43:20',NULL,NULL,NULL,'7DAC9B58-30D0-4B83-9272-2EAB0144874C'),(67,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'7E7CE93D-F248-4A27-94F1-4B68FB75AE49'),(73,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'7EDC8D3A-2848-40AC-BE1E-25981C68D5A6'),(72,6,29,'2019-06-14 07:43:20',NULL,NULL,NULL,'7F7BA974-23A9-42C1-B484-465EE071A3A9'),(32,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'80E3A6A2-183A-4231-A443-43849B57A9E3'),(70,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'8217D051-3F46-466A-9D45-DFDE6D50ED38'),(32,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'8523CEF7-D880-4AD0-A969-FD32DD24A1F2'),(69,1,37,'2019-06-14 07:43:20',NULL,NULL,NULL,'85417663-0636-4EED-9398-73D41F79C80C'),(9,1,37,'2019-06-14 07:43:20',NULL,NULL,NULL,'85A6C092-4A52-44F1-880B-EC16EBE8E26E'),(62,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'85B88F30-6F01-46DF-88EE-DFD13D9AE82F'),(32,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'862B445C-72BD-4395-8A72-143F027727C6'),(32,1,37,'2019-06-14 07:43:20',NULL,NULL,NULL,'86D35951-F7DD-4CA6-A2E3-C2509BA18A2B'),(66,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'88473BD7-B235-4FBE-81DD-4A6510703307'),(60,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'8AE19251-254D-4D03-9E24-566301A15D0F'),(9,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'8AF05E65-3263-457C-89E5-A4840A4F864E'),(66,6,29,'2019-06-14 07:43:20',NULL,NULL,NULL,'8B94072E-11C6-4193-A712-5FB187FD917C'),(62,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'8BB54A58-686E-4E23-AB27-0D51A897C6C8'),(57,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'8BC03D0D-9920-455B-9360-E1FF8232CB95'),(57,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'8BE55D48-44C9-46C4-A8E9-1F0B3FE23403'),(69,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'8CF7AF13-D12D-4209-8BB3-126B568FFF7C'),(34,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'8CFC9431-78AC-44A8-9C20-1DDF9866F371'),(61,8,32,'2019-06-14 07:43:20',NULL,NULL,NULL,'8DE6349D-164A-433F-9C1A-56A91B347695'),(70,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'8E12CA18-25A1-42BE-AA48-7AD6B8305895'),(34,1,2,'2019-06-14 07:43:20',NULL,NULL,NULL,'8E95C158-996C-4E23-8949-6E51DBD0E840'),(66,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'8EA56ED9-74AB-4066-B08A-0BA6A9B793A1'),(34,1,37,'2019-06-14 07:43:20',NULL,NULL,NULL,'8F056087-F8A9-41C1-9BA1-5E0A140F7851'),(73,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'8F07B58C-C115-476B-94F5-A46A7C950D32'),(67,1,2,'2019-06-14 07:43:20',NULL,NULL,NULL,'90D551EF-4105-47C5-8BFE-BFE192EA85EE'),(60,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'9109A235-C57C-4F6C-B39C-268479036127'),(66,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'916D95C2-DFB3-46F8-B5D7-211A9D17C3A7'),(73,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'9192533E-9A76-4F3B-BB43-BB3C5CBDD83B'),(34,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'9233F328-0CB9-4614-888A-F153C7302575'),(32,1,2,'2019-06-14 07:43:20',NULL,NULL,NULL,'93EE31C7-A7C5-4FE7-AC49-8E5C3668FD50'),(72,6,28,'2019-06-14 07:43:20',NULL,NULL,NULL,'93F6D6BF-92E5-4CD2-8CA4-F17B6E6EC159'),(34,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'94017514-3D3B-44E5-BB36-4DDA29E4905D'),(63,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'94BB7A5A-3E8A-4187-8310-9D7835830F21'),(57,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'952F16CE-CFA1-4C6D-8440-57F520651E34'),(8,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'964F5680-0990-4FEA-9EA3-38C19D123ABD'),(69,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'9654458E-EF2E-424F-ABEB-924202C6D088'),(8,1,2,'2019-06-14 07:43:20',NULL,NULL,NULL,'96AE88A3-1D34-47B9-AA90-8311B6E58E28'),(72,6,27,'2019-06-14 07:43:20',NULL,NULL,NULL,'9721FEA5-9D87-4683-8FDF-F4E27DE248A4'),(73,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'99A8CB10-452C-4F1F-A7B5-89DB221A0BD8'),(73,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'9AF9FE4F-D0F3-4749-A267-103C91B4C42D'),(9,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'9C4729C2-830C-47A4-A3C7-548B75CE2ABB'),(67,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'9CDEDE28-CC75-4DFE-A20E-0C8FFB523F29'),(70,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'9D350F5A-D112-4528-9CFE-082ED8BE13DB'),(60,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'9E39C4C3-4D53-453B-9C23-9FFCF36BCF28'),(70,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'9F7D1282-2305-425A-9EA1-FF602BCD5E50'),(62,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'9FDF0146-D9BC-4488-A726-5DFB61044713'),(62,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'A19CB95D-776D-421C-95CB-A05500A40478'),(57,2,5,'2019-06-14 07:43:20',NULL,NULL,NULL,'A2105DBC-BA80-4871-9C2F-0F9B844F17DB'),(57,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'A23E6348-5CBF-4EF5-A0AE-91A224BC1778'),(61,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'A3170D57-1C69-4A58-8A58-0DD378C288CF'),(73,6,25,'2019-06-14 07:43:20',NULL,NULL,NULL,'A5498A99-B9DC-4F5D-A0FC-B0A712E7D5F4'),(70,8,32,'2019-06-14 07:43:20',NULL,NULL,NULL,'A564B572-37A7-4DA3-8FC0-EB43B025B253'),(66,6,26,'2019-06-14 07:43:20',NULL,NULL,NULL,'A5A6D9A3-581B-49A9-B508-2D7D71D39473'),(62,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'A7BFEC80-03A3-4921-8168-28438CC242C3'),(62,6,28,'2019-06-14 07:43:20',NULL,NULL,NULL,'AA04F09A-FBD2-43A5-B57C-41BEB71D646A'),(60,6,25,'2019-06-14 07:43:20',NULL,NULL,NULL,'AA68D7F1-CE72-43B8-87FD-1FCB7D7F120B'),(67,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'AB633555-C3D8-497A-B230-411B022DB13B'),(8,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'AC2FC1B5-92B9-4887-8F9B-3E1B783D5864'),(9,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'AC35FCB5-25F2-48B4-BF83-0A7ECDD2916A'),(32,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'AC86FA82-E8BE-42F9-AB18-79C92884E01D'),(70,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'ACC21CFD-BB80-459B-8B25-FEB61A0341E4'),(34,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'ACC4E03A-31D2-4544-A574-6B210065BCF3'),(63,6,27,'2019-06-14 07:43:20',NULL,NULL,NULL,'ADF10B81-15C0-4C25-81E3-4FF911CE478A'),(62,8,32,'2019-06-14 07:43:20',NULL,NULL,NULL,'AE40997D-0CD5-47A8-992D-14BDDD3A9753'),(8,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'AEB70976-7120-4331-AFC3-1AB04355A230'),(62,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'AFB2C62B-2F02-4F63-8950-8F6BAD1614C5'),(9,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'B0CD5DFD-4AFB-4B83-9381-FCE6D0C5BD4E'),(69,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'B0EE2F1F-2036-4384-B554-7452C6566CFE'),(57,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'B1841855-37A8-47D1-973A-70AC09CE3669'),(9,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'B1D4488C-FC4C-487C-9237-D499EB1E7D96'),(61,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'B33503E6-E6B1-42F0-930A-FB8EE8FBD808'),(32,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'B45755C9-21D4-4EE4-A8A9-5EF48E6A519D'),(72,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'B4B7A69B-BB3C-4CD1-AA33-49195EBAC40D'),(63,6,29,'2019-06-14 07:43:20',NULL,NULL,NULL,'B630C292-60DE-43AC-9645-9B6C25C762FA'),(72,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'B6C4C53B-9011-4B50-A4D4-DC6D46DE380B'),(60,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'B6FF1026-F0DF-4A12-9B1C-2F4972AAFB55'),(62,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'B72609DB-B868-440F-9412-1FDA6312B7D3'),(63,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'B7F49005-96BC-4565-845E-A9D5A20CE50A'),(69,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'B7F73BC4-B33B-46B5-97EC-EC55EE6D01C9'),(61,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'B83802E1-DD88-46D9-8FDB-EA0B4DC71F42'),(69,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'B9363025-4BD3-49D5-8644-896DD63254AD'),(73,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'B98879B6-55E0-4C0D-8EA4-66F2A0F48BCF'),(67,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'B9E96ED0-A105-4055-AFBF-9BDEC1CA57BA'),(62,3,8,'2019-06-14 07:43:20',NULL,NULL,NULL,'BABBAB11-E316-4A1B-B3A5-F4D14CC64720'),(34,1,4,'2019-06-14 07:43:20',NULL,NULL,NULL,'BCDD51BE-09E8-40EC-A3C5-6ABA73E5A239'),(8,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'BD4E5907-FFB0-423D-87C4-FFCB18ABB904'),(70,8,33,'2019-06-14 07:43:20',NULL,NULL,NULL,'BD699E98-F56F-4895-A935-2A981C3A3308'),(8,1,37,'2019-06-14 07:43:20',NULL,NULL,NULL,'BDF5C081-15BC-4400-B59F-A89D055EE7B8'),(8,1,4,'2019-06-14 07:43:20',NULL,NULL,NULL,'BF0E9992-9FA7-4C5E-87F5-5C80E0EAC5BB'),(34,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'BF45727B-4771-4708-9C5D-05BCEA875A98'),(57,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'C00BB876-4DAC-4DDF-AF33-85098D76DCAB'),(72,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'C110948F-A95C-4709-B484-0CE3C575D990'),(72,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'C1ED18BA-FB75-4E12-AFE2-4CC2FC8A25E2'),(32,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'C3646F3E-4D65-40B3-9243-153C6FEFB3BC'),(72,3,8,'2019-06-14 07:43:20',NULL,NULL,NULL,'C53C8A5B-EC4C-457C-805E-B347A1CD4A53'),(57,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'C907B058-F75E-41F4-9700-7CBC9F852AB7'),(8,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'CAE9FDDC-272B-439D-8E69-A5FCC78ED8E4'),(34,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'CB01BB8D-49D8-4F02-BEF9-745D9D76B845'),(62,8,33,'2019-06-14 07:43:20',NULL,NULL,NULL,'CB1E9361-013D-4883-996A-04530A3CF269'),(63,1,2,'2019-06-14 07:43:20',NULL,NULL,NULL,'CD708377-306D-4B66-BF5E-552E1205DA2F'),(72,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'CFB67B43-6F41-47D3-AD83-FDF7BACF1994'),(69,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'D02926A9-9B20-4FAB-B82A-66A33FC94FC8'),(60,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'D0C7406A-CCB0-4923-BAE7-A0194DE1CDDA'),(69,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'D16474BA-9E42-42D8-A70A-12B0F420A899'),(72,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'D1A7EB01-026E-4796-B5CC-272123FC83CD'),(34,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'D2ACF5B2-66EE-4DF6-91DD-370B4027A0BA'),(60,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'D3C1EE5B-25FC-4DBE-A946-FA96CA87783C'),(66,5,14,'2019-06-14 07:43:20',NULL,NULL,NULL,'D48D4747-875F-4548-A4E3-D51D61FD33E1'),(66,6,25,'2019-06-14 07:43:20',NULL,NULL,NULL,'D516A473-3CC6-46C1-9007-E33EA9461434'),(69,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'D6A901D0-8875-46F7-926E-7BDC24E45921'),(9,2,6,'2019-06-14 07:43:20',NULL,NULL,NULL,'D6B3EB6A-97EE-43D3-9189-1D4412B760CB'),(73,8,32,'2019-06-14 07:43:20',NULL,NULL,NULL,'D738FBDC-5F78-480E-A4F5-57DA2E9D98DA'),(69,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'D91E2363-15EC-4B41-970E-841764A9B3D1'),(32,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'D920CEB0-BBAA-4B35-A8B7-F95BB159E884'),(62,6,29,'2019-06-14 07:43:20',NULL,NULL,NULL,'D9BD6462-5DCB-4813-A63F-31134FFD4E71'),(34,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'D9BF0D11-CC65-460A-8E50-02098140DCAB'),(61,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'DB62A416-EB9F-43D0-A0CE-29C652E98A13'),(34,5,23,'2019-06-14 07:43:20',NULL,NULL,NULL,'DBF06EDF-E41C-44DB-A6CF-DD66F156E8AE'),(70,6,25,'2019-06-14 07:43:20',NULL,NULL,NULL,'DCF9DBD2-D7F6-4C64-AC16-1BBD0D758D06'),(63,3,8,'2019-06-14 07:43:20',NULL,NULL,NULL,'DE32EB58-BE32-44A1-802A-6EF33FD31458'),(9,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'DED6931B-FCB3-466C-9AD6-6310881EED08'),(69,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'DF2F0CA2-1D44-4EC0-AE22-0D1887B35D59'),(73,8,33,'2019-06-14 07:43:20',NULL,NULL,NULL,'E058AA91-AA2C-4EC8-A533-4F385A96E6A4'),(66,5,21,'2019-06-14 07:43:20',NULL,NULL,NULL,'E0BDFA52-795F-4B59-9A18-37D550D76281'),(69,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'E1B3ACC2-3FF3-4709-A773-9B18165BE913'),(61,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'E1DA6EAC-63FD-4C70-BBF4-882DB0246B18'),(32,5,38,'2019-06-14 07:43:20',NULL,NULL,NULL,'E2E79A02-5FEB-4048-82C1-FB21BF258735'),(63,6,26,'2019-06-14 07:43:20',NULL,NULL,NULL,'E4F3C2A1-58F6-4E85-8358-3EADEA4E7432'),(8,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'E54F0523-67AC-4FFB-9CCF-6BC1D1F29692'),(61,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'E66348D7-9FBF-4568-947C-237AAFD19EB5'),(72,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'E680EF69-4B11-4B20-B3EC-6FB2C845CFFB'),(63,3,9,'2019-06-14 07:43:20',NULL,NULL,NULL,'E7510140-3DB8-40A5-98A1-27635E07F6B7'),(32,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'E768569A-1365-45F8-8E25-327B3A988D36'),(34,5,16,'2019-06-14 07:43:20',NULL,NULL,NULL,'E7D52731-2FAD-4A14-99DC-3469F7BC39FB'),(70,2,5,'2019-06-14 07:43:20',NULL,NULL,NULL,'E8F0BF55-CEB2-4FE5-ADBF-83A7D1791DCA'),(32,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'E91A665F-4450-49B8-9716-816CED6D35D2'),(62,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'E9C96711-759A-44C8-BF67-23FE2A2CAE0F'),(72,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'EAFBBEE7-8523-4124-B0B1-363DCBF2D27D'),(8,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'EB0C9C9B-07D9-4E63-9500-A49640888771'),(63,1,3,'2019-06-14 07:43:20',NULL,NULL,NULL,'ECB48FD8-CE1D-40F3-B9B9-DB7A7AEB296D'),(8,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'ECB5C92D-B113-4A7E-A459-28F600D40C97'),(69,1,4,'2019-06-14 07:43:20',NULL,NULL,NULL,'EE54C350-8864-429A-B32E-CD4E05EE3853'),(72,5,39,'2019-06-14 07:43:20',NULL,NULL,NULL,'EE61A22E-106A-4049-9E1B-E25609A574B7'),(73,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'EEFD3AFF-48EC-4AD0-9E1E-0C46CD5E5D3E'),(73,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'EF2ED910-ADA0-411B-831C-EFCA445FA7FC'),(60,5,15,'2019-06-14 07:43:20',NULL,NULL,NULL,'EFD0C658-9EA2-492E-8100-AD1B386B1160'),(66,5,18,'2019-06-14 07:43:20',NULL,NULL,NULL,'F237F216-0216-4017-AC1B-76EA8C4DD8CE'),(67,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'F3B452F8-893B-49CD-8569-3F174DBC030A'),(32,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'F3E3A172-95A4-46AD-A275-57356C868297'),(8,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'F4325B2A-C597-4C1F-8774-14856CE12827'),(62,4,10,'2019-06-14 07:43:20',NULL,NULL,NULL,'F44CF7B0-A88D-4C3A-9FFB-17AC1D32D12F'),(69,1,3,'2019-06-14 07:43:20',NULL,NULL,NULL,'F4C8C0B0-2D55-4C78-8A7F-344A2AC0B22C'),(70,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'F5182E8D-E366-4E77-9CF1-A77DCA2194E9'),(8,5,17,'2019-06-14 07:43:20',NULL,NULL,NULL,'F5B552B7-E7A0-4F33-9CA1-A8F1EFD9359B'),(73,5,19,'2019-06-14 07:43:20',NULL,NULL,NULL,'F65D0419-9116-452F-BFBA-73657981411D'),(66,3,8,'2019-06-14 07:43:20',NULL,NULL,NULL,'F7360255-2BCC-4A03-9F8F-BA4AF0E043A2'),(73,4,11,'2019-06-14 07:43:20',NULL,NULL,NULL,'F7C77BA9-FEBD-4815-ABF8-D25309CAEB88'),(57,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'F96A5732-E6C9-4829-9457-0D037BC3EDDF'),(32,4,13,'2019-06-14 07:43:20',NULL,NULL,NULL,'FA2C8266-B2E6-4D68-AB83-45C0D75553C5'),(60,5,22,'2019-06-14 07:43:20',NULL,NULL,NULL,'FAD10EC4-9002-4956-BD8E-D70363D79B8F'),(8,5,20,'2019-06-14 07:43:20',NULL,NULL,NULL,'FB78B9EF-DC1A-4BB0-8F08-EA11A14C21B1'),(61,5,24,'2019-06-14 07:43:20',NULL,NULL,NULL,'FBB77FCB-076F-4388-8DFC-3FE8E8B33CBF'),(70,4,12,'2019-06-14 07:43:20',NULL,NULL,NULL,'FF2CC90E-7893-4E5A-B875-51687C88ADF8');
/*!40000 ALTER TABLE `inspection_dm_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspection_plan`
--

DROP TABLE IF EXISTS `inspection_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspection_plan` (
  `PlanID` int(11) NOT NULL AUTO_INCREMENT,
  `InspPlanName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `InspPlanDate` datetime(6) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`PlanID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_INSPECTION_PLAN` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection_plan`
--

LOCK TABLES `inspection_plan` WRITE;
/*!40000 ALTER TABLE `inspection_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspection_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_list_config`
--

DROP TABLE IF EXISTS `item_list_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_list_config` (
  `ItemListConfigID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TreeNode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NodeSeq` int(11) NOT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ItemListConfigID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_ITEM_LIST_CONFIG` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_list_config`
--

LOCK TABLES `item_list_config` WRITE;
/*!40000 ALTER TABLE `item_list_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_list_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `ManufacturerID` int(11) NOT NULL AUTO_INCREMENT,
  `ManufacturerName` varchar(100) NOT NULL,
  `SiteID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ManufacturerID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'Vuna Manu 1',4),(2,'manu test1',4),(3,'manufacture test2',3),(5,'manufacture test4',4),(9,'Vung Tau',3),(10,'Viet Nam',3),(11,'Lab411',3),(12,'aaaaa',13),(13,'N/A',3),(14,'Hung Yen',4),(15,'lab 411',1),(16,'kttt',3);
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:template.cache.sidebar.d41d8cd98f00b204e9800998ecf8427e','gASVSAAAAAAAAACMF2RqYW5nby51dGlscy5zYWZlc3RyaW5nlIwIU2FmZVRleHSUk5SMGQogICAgIDx0YWJsZT4KICAgICAgCiAgICCUhZSBlC4=','2019-01-11 09:23:21.000000'),(':1:views.decorators.cache.cache_page..GET.16f196b5b46c11e6596878251610a192.d41d8cd98f00b204e9800998ecf8427e.en-us.UTC','gASVfxsAAAAAAACMFGRqYW5nby5odHRwLnJlc3BvbnNllIwMSHR0cFJlc3BvbnNllJOUKYGUfZQojAhfaGVhZGVyc5R9lCiMDGNvbnRlbnQtdHlwZZSMDENvbnRlbnQtVHlwZZSMGHRleHQvaHRtbDsgY2hhcnNldD11dGYtOJSGlIwHZXhwaXJlc5SMB0V4cGlyZXOUjB1GcmksIDExIEphbiAyMDE5IDA5OjQyOjIwIEdNVJSGlIwNY2FjaGUtY29udHJvbJSMDUNhY2hlLUNvbnRyb2yUjAttYXgtYWdlPTkwMJSGlHWMEV9jbG9zYWJsZV9vYmplY3RzlF2UjA5faGFuZGxlcl9jbGFzc5ROjAdjb29raWVzlIwMaHR0cC5jb29raWVzlIwMU2ltcGxlQ29va2lllJOUKYGUjAZjbG9zZWSUiYwOX3JlYXNvbl9waHJhc2WUTowIX2NoYXJzZXSUTowKX2NvbnRhaW5lcpRdlEILGgAACgo8IURPQ1RZUEUgaHRtbD4KPGh0bWwgbGFuZz0iZW4iPgo8aGVhZD4KICAgIAogICAgPHRpdGxlPkZhY2lsaXR5IE1hbmFnZW1lbnQ8L3RpdGxlPgogICAgPG1ldGEgbmFtZT0idmlld3BvcnQiIGNvbnRlbnQ9IndpZHRoPWRldmljZS13aWR0aCwgaW5pdGlhbC1zY2FsZT0xIj4KICAgIDxtZXRhIGh0dHAtZXF1aXY9IlgtVUEtQ29tcGF0aWJsZSIgY29udGVudD0iSUU9ZWRnZSI+CiAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIGhyZWY9Ii9zdGF0aWMvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIj4KICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iL3N0YXRpYy9jc3MvYmFzZS5jc3MiPgogICAgPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvc3RhdGljL2Nzcy9pbmRleC5jc3MiPgogICAgPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvc3RhdGljL2Nzcy9wZW9wbGUuY3NzIj4KICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iL3N0YXRpYy9jc3MvbWFuYWdlci5jc3MiPgogICAgPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvc3RhdGljL2Nzcy9idXNpbmVzcy5jc3MiPgogICAgPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvc3RhdGljL2Nzcy9mb3J1bS5jc3MiPgoKCiAgICA8c2NyaXB0IHNyYz0iaHR0cHM6Ly9hamF4Lmdvb2dsZWFwaXMuY29tL2FqYXgvbGlicy9qcXVlcnkvMy4zLjEvanF1ZXJ5Lm1pbi5qcyI+PC9zY3JpcHQ+CiAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9qcy9qcXVlcnkubWluLmpzIj48L3NjcmlwdD4KICAgIDxzY3JpcHQgc3JjPSJodHRwczovL2NvZGUuanF1ZXJ5LmNvbS9qcXVlcnktMS4xMi40LmpzIj48L3NjcmlwdD4KICAgIDxzY3JpcHQgc3JjPSJodHRwczovL2NvZGUuanF1ZXJ5LmNvbS91aS8xLjEyLjEvanF1ZXJ5LXVpLmpzIj48L3NjcmlwdD4KICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iLy9jb2RlLmpxdWVyeS5jb20vdWkvMS4xMi4xL3RoZW1lcy9iYXNlL2pxdWVyeS11aS5jc3MiPgogICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvanMvYm9vdHN0cmFwLm1pbi5qcyI+PC9zY3JpcHQ+CgogICAgCiAgICAKICAgIDxsaW5rIGhyZWY9Imh0dHA6Ly9tYXhjZG4uYm9vdHN0cmFwY2RuLmNvbS9mb250LWF3ZXNvbWUvNC4xLjAvY3NzL2ZvbnQtYXdlc29tZS5taW4uY3NzIiByZWw9InN0eWxlc2hlZXQiPgoKICAgIDxzY3JpcHQgdHlwZT0idGV4dC9qYXZhc2NyaXB0Ij4KCgoKICAgICAgICAkKCdbZGF0YS10b2dnbGU9InRvb2x0aXAiXScpLnRvb2x0aXAoKTsKICAgIDwvc2NyaXB0PgoKPC9oZWFkPgo8Ym9keT4KCjxkaXYgY2xhc3M9Im5hdmJhciBuYXZiYXItZml4ZWQtdG9wIiBzdHlsZT0iYm9yZGVyLWJvdHRvbTogNHB4IHNvbGlkICMwMDAwMDAgIj4KICAgIDxkaXYgY2xhc3M9ImhlYWRlciI+CiAgICAgICAgPGltZyBzcmM9ICIvc3RhdGljL2ltYWdlL2xvZ28vaWNvbi5wbmciIHN0eWxlPSJoZWlnaHQ6IDYwcHg7cGFkZGluZy10b3A6IDJweDtwYWRkaW5nLWxlZnQ6IDIwcHgiPgoKICAgICAgICAKICAgIDxhIGNsYXNzPSJhLWxvZ291dCIgaHJlZj0iL2xvZ291dCIgZGF0YS10b2dnbGU9InRvb2x0aXAiIGRhdGEtcGxhY2VtZW50PSJib3R0b20iIHRpdGxlPSJTaWduIE91dCI+PGkgY2xhc3M9ImZhIGZhLXNpZ24tb3V0Ij48L2k+PC9hPgogICAgPGEgY2xhc3M9ImEtbm9ybWFsIiBocmVmPSIiIGRhdGEtdG9nZ2xlPSJtb2RhbCIgZGF0YS10YXJnZXQ9IiNteU1vZGFsIiBkYXRhLXBsYWNlbWVudD0iYm90dG9tIiB0aXRsZT0iUHJvZmlsZSI+PGkgY2xhc3M9ImZhIGZhLXVzZXIiPjwvaT48L2E+CiAgICA8YSBjbGFzcz0iYS1ub3JtYWwiIGhyZWY9Ii9oZWxwLyIgZGF0YS10b2dnbGU9InRvb2x0aXAiIGRhdGEtcGxhY2VtZW50PSJib3R0b20iIHRpdGxlPSJIZWxwIj48aSBjbGFzcz0iZmEgZmEtcXVlc3Rpb24iPjwvaT48L2E+CiAgICA8YSBjbGFzcz0iYS1ub3JtYWwiIGhyZWY9IiIgZGF0YS10b2dnbGU9Im1vZGFsIiBkYXRhLXRhcmdldD0iI25vdGlNb2RhbCIgIGRhdGEtcGxhY2VtZW50PSJib3R0b20iIHRpdGxlPSJOb3RpZmljYXRpb24iIG9uY2xpY2s9ImhpZGVub3RpKCkiIHN0eWxlPSJwb3NpdGlvbjogcmVsYXRpdmUiPjxpIGNsYXNzPSJmYSBmYS1iZWxsIj48c3BhbiBpZD0iY291bnRub3RpIiBjbGFzcz0iZm9ydW0tbm90aWZpY2F0aW9uIj48L3NwYW4+PC9pPjwvYT4KICAgIDxhIGNsYXNzPSJhLW5vcm1hbCIgaHJlZj0iL21hc3NhZ2VzLyIgZGF0YS10b2dnbGU9InRvb2x0aXAiIGRhdGEtcGxhY2VtZW50PSJib3R0b20iIHRpdGxlPSJNZXNzYWdlcyI+PGkgY2xhc3M9ImZhIGZhLXdlY2hhdCI+PHNwYW4gY2xhc3M9ImJhZGdlIHJlZCIgc3R5bGU9ImNvbG9yOiByZWQiPjwvc3Bhbj48L2k+PC9hPgogICAgPGEgY2xhc3M9ImEtbm9ybWFsIiBocmVmPSIvZm9ydW0vIiBkYXRhLXRvZ2dsZT0idG9vbHRpcCIgZGF0YS1wbGFjZW1lbnQ9ImJvdHRvbSIgdGl0bGU9IkZvcnVtIj48aSBjbGFzcz0iZmEgZmEtZGVkZW50Ij48L2k+PC9hPgogICAgPGEgY2xhc3M9ImEtbG9ybWFsIiBocmVmPSIvdmVyaWZpY2F0aW9uLyIgZGF0YS10b2dnbGU9InRvb2x0aXAiIGRhdGEtcGxhY2VtZW50PSJib3R0b20iIHRpdGxlPSJWZXJpZmljYXRvbiI+PGkgY2xhc3M9ImZhIGZhLWV4Y2xhbWF0aW9uLXRyaWFuZ2xlIj48c3BhbiBjbGFzcz0iYmFkZ2UgcmVkIiBzdHlsZT0iY29sb3I6IHJlZCI+MTwvc3Bhbj48L2k+PC9hPgogICAgPGEgY2xhc3M9ImEtbm9ybWFsIiBocmVmPSIvIiBkYXRhLXRvZ2dsZT0idG9vbHRpcCIgZGF0YS1wbGFjZW1lbnQ9ImJvdHRvbSIgdGl0bGU9IkhvbWUiPjxpIGNsYXNzPSJmYSBmYS1ob21lIj48L2k+PC9hPgoKCgogICAgPC9kaXY+CjwvZGl2PgoKCgoKICAgIDxkaXYgY2xhc3M9ImJ1c2luZXNzLW5vcm1hbCI+CiAgICAgICAgPGRpdiBjbGFzcz0ic2lkZW5hdiI+CiAgICAgICAgICAgIAogICAgPGRpdiBjbGFzcz0idmVydGljYWwtbWVudSI+CiAgICAgICAgPGEgY2xhc3M9ImFjdGl2ZSI+RmFjaWxpdHk8YnI+TWFuYWdlbWVudDwvYT4KICAgICAgICA8YSBocmVmPSIiPjxpIGNsYXNzPSJmYSBmYS1saXN0Ij4mZW1zcDtMaXN0IG9mIEZhY2lsaXRpZXM8L2k+PC9hPgogICAgICAgIDxhIGhyZWY9IiI+PGkgY2xhc3M9ImZhIGZhLWJ1aWxkaW5nIj4mZW1zcDtOZXcgRmFjaWxpdHk8L2k+PC9hPgogICAgICAgIDxhIGhyZWY9IiI+PGkgY2xhc3M9ImZhIGZhLWJhcmNvZGUiPiZlbXNwO0Rlc2lnbiBDb2RlPC9pPjwvYT4KICAgICAgICA8YSBocmVmPSIiPjxpIGNsYXNzPSJmYSBmYS1jdWJlcyI+JmVtc3A7TWFudWZhY3R1cmU8L2k+PC9hPgogICAgICAgIDxhIGhyZWY9IiI+PGkgY2xhc3M9ImZhIGZhLWZpbGUiPiZlbXNwO1VwbG9hZCBIaXN0b3J5PC9pPjwvYT4KICAgICAgICA8YSBocmVmPSIiPjxpIGNsYXNzPSJmYSBmYS1maWxlLWV4Y2VsLW8iPiZlbXNwO1VwbG9hZCBQbGFuPC9pPjwvYT4KICAgICAgICA8YSBocmVmPSIvc2V0dGluZ3MvIj48aSBjbGFzcyA9ImZhIGZhLW9wdGlvbiI+U2V0dGluZ3M8L2k+PC9hPgogICAgPC9kaXY+CgogICAgICAgIDwvZGl2PgogICAgICAgIDxhcnRpY2xlIGNsYXNzPSJtYWluIj4KICAgICAgICAgICAgCiAgICA8Zm9ybSBtZXRob2Q9InBvc3QiPgogICAgICAgIDxpbnB1dCB0eXBlPSJoaWRkZW4iIG5hbWU9ImNzcmZtaWRkbGV3YXJldG9rZW4iIHZhbHVlPSI2RTd2bEtpemJCRnhTczVmMG1hdVpRVUZQbUJlRE5HbGsxdkZkV2NvaWEyZ2x1VmtMOFNEakpCRWdqSGluYWRLIj4KICAgICAgICAgICAgIE1vbmV5dGFyeSBVbml0OiA8c2VsZWN0IGNsYXNzPSJzZXQtc2V0IiBuYW1lPSJzZXQiIGlkPSJzZXQiPgoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPG9wdGlvbiB2YWx1ZT0iVm5kIiA+Vm5kPC9vcHRpb24+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxvcHRpb24gdmFsdWU9IiQiID4kPC9vcHRpb24+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L3NlbGVjdD4KICAgICAgICAgICAgPGJ1dHRvbiB0eXBlPSJzdWJtaXQiIG5hbWU9InN1YiI+U2F2ZSBjaGFuZ2VzPC9idXR0b24+CgoKCgoKCgoKCgogICAgPHRhYmxlPgogICAgICAKICAgICAgICAgIDx0cj48dGQ+JDwvdGQ+PC90cj4KICAgICAgCgoKICAgICAgICA8L2FydGljbGU+CiAgICA8L2Rpdj4KCgo8IS0tIE1vZGFsIG5vdGlmaWNhdGlvbi0tPgogIDxkaXYgY2xhc3M9Im1vZGFsIiBpZD0ibm90aU1vZGFsIj4KICAgICAgPGRpdiBjbGFzcz0ibW9kYWwtY29udGVudCIgc3R5bGU9Im1hcmdpbi1sZWZ0OiA2MCU7bWFyZ2luLXRvcDo2MHB4O3dpZHRoOiA0MCU7Ym9yZGVyLXJhZGl1czogMHB4Ij4KICAgICAgICA8ZGl2IGNsYXNzPSJtb2RhbC1oZWFkZXIiPgogICAgICAgICAgPGJ1dHRvbiB0eXBlPSJidXR0b24iIGNsYXNzPSJjbG9zZSIgZGF0YS1kaXNtaXNzPSJtb2RhbCI+JnRpbWVzOzwvYnV0dG9uPgogICAgICAgICAgICA8aDQgY2xhc3M9Im1vZGFsLXRpdGxlIj48YSBocmVmPSIiPjxpIGNsYXNzPSJmYSBmYS11c2VyIj48L2k+PC9hPk5vdGlmaWNhdGlvbjwvaDQ+CiAgICAgICAgPC9kaXY+CiAgICAgICAgPGRpdiBjbGFzcz0ibW9kYWwtYm9keSI+CiAgICAgICAgICAgIAogICAgICAgIDwvZGl2PgogICAgICAgIDxkaXYgY2xhc3M9Im1vZGFsLWZvb3RlciI+CiAgICAgICAgICA8YnV0dG9uIHR5cGU9ImJ1dHRvbiIgY2xhc3M9ImJ0biIgc3R5bGU9ImNvbG9yOiB3aGl0ZTtiYWNrZ3JvdW5kLWNvbG9yOiAjNDU3NUI3OyIgZGF0YS1kaXNtaXNzPSJtb2RhbCI+Q2xvc2U8L2J1dHRvbj4KICAgICAgICA8L2Rpdj4KICAgICAgPC9kaXY+CiAgPC9kaXY+CgogICAgPCEtLSBNb2RhbCAtLT4KICA8ZGl2IGNsYXNzPSJtb2RhbCIgaWQ9Im15TW9kYWwiPgoKICAgICAgPGRpdiBjbGFzcz0ibW9kYWwtY29udGVudCIgc3R5bGU9Im1hcmdpbi1sZWZ0OiA2MCU7bWFyZ2luLXRvcDo2MHB4O3dpZHRoOiA0MCU7Ym9yZGVyLXJhZGl1czogMHB4Ij4KICAgICAgICA8ZGl2IGNsYXNzPSJtb2RhbC1oZWFkZXIiPgogICAgICAgICAgPGJ1dHRvbiB0eXBlPSJidXR0b24iIGNsYXNzPSJjbG9zZSIgZGF0YS1kaXNtaXNzPSJtb2RhbCI+JnRpbWVzOzwvYnV0dG9uPgogICAgICAgICAgICA8aDQgY2xhc3M9Im1vZGFsLXRpdGxlIj48YSBocmVmPSIiPjxpIGNsYXNzPSJmYSBmYS11c2VyIj48L2k+PC9hPiBQcm9maWxlPC9oND4KICAgICAgICA8L2Rpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJtb2RhbC1ib2R5Ij4KICAgICAgICAgICAgPGRpdiBjbGFzcz0icm93Ij4KICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC1tZC01Ij48c3BhbiBzdHlsZT0iZm9udC13ZWlnaHQ6IGJvbGQ7IHdpZHRoOiA0MCUiPk5hbWU6PC9zcGFuPjwvZGl2PgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLW1kLTciPjwvZGl2PgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgPGhyPgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJyb3ciPgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLW1kLTUiPjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDogYm9sZDsgd2lkdGg6IDQwJSI+RW1haWw6PC9zcGFuPjwvZGl2PgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLW1kLTciPjwvZGl2PgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgPGhyPgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJyb3ciPgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLW1kLTUiPjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDogYm9sZDsgd2lkdGg6IDQwJSI+UGhvbmUgbnVtYmVyOjwvc3Bhbj48L2Rpdj4KICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC1tZC03Ij48L2Rpdj4KICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIDxocj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0icm93Ij4KICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC1tZC01Ij48c3BhbiBzdHlsZT0iZm9udC13ZWlnaHQ6IGJvbGQ7IHdpZHRoOiA0MCUiPkFkZHJlc3M6PC9zcGFuPjwvZGl2PgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLW1kLTciPjwvZGl2PgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgPGhyPgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJyb3ciPgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLW1kLTUiPjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDogYm9sZDsgd2lkdGg6IDQwJSI+QWNjb3VudDo8L3NwYW4+PC9kaXY+CiAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wtbWQtNyI+PC9kaXY+CiAgICAgICAgICAgIDwvZGl2PgoKICAgICAgICA8L2Rpdj4KICAgICAgICA8ZGl2IGNsYXNzPSJtb2RhbC1mb290ZXIiPgogICAgICAgICAgPGJ1dHRvbiB0eXBlPSJidXR0b24iIGNsYXNzPSJidG4iIHN0eWxlPSJjb2xvcjogd2hpdGU7YmFja2dyb3VuZC1jb2xvcjogIzQ1NzVCNzsiIGRhdGEtZGlzbWlzcz0ibW9kYWwiPkNsb3NlPC9idXR0b24+CiAgICAgICAgPC9kaXY+CiAgICAgIDwvZGl2PgogIDwvZGl2PgoKCgoKCiAgICA8ZGl2IGNsYXNzPSJmb290ZXIiPsKpIDIwMTggQ29weXJpZ2h0OiBFbWJlZGRlZCBOZXR3b3JraW5nIExhYm9yYXRvcnksIEhhbm9pIFVuaXZlcnNpdHkgb2YgU2NpZW5jZSBhbmQgVGVjaG5vbG9neTwvZGl2PgoKCjwvYm9keT4KPC9odG1sPpRhdWIu','2019-01-11 09:42:20.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `points` (
  `PointID` int(11) NOT NULL AUTO_INCREMENT,
  `PointName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ComponentID` int(11) NOT NULL,
  `CorrosionRate` double DEFAULT NULL,
  `NominalThickness` double DEFAULT NULL,
  `MinReqThickness` double DEFAULT NULL,
  `ThicknessCurrent` double DEFAULT NULL,
  `ThicknessPrevious` double DEFAULT NULL,
  `DateCurrent` datetime(6) DEFAULT NULL,
  `DatePrevious` datetime(6) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`PointID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_POINTS` (`AuditingID`),
  KEY `FK_POINTS_COMPONENT_MASTER` (`ComponentID`),
  CONSTRAINT `FK_POINTS_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points`
--

LOCK TABLES `points` WRITE;
/*!40000 ALTER TABLE `points` DISABLE KEYS */;
/*!40000 ALTER TABLE `points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_component_master`
--

DROP TABLE IF EXISTS `prd_component_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_component_master` (
  `ComponentID` int(11) NOT NULL,
  `PRDTypeID` int(11) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ComponentID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_COMPONENT_MASTER` (`AuditingID`),
  KEY `FK_PRD_COMPONENT_MASTER_PRD_TYPE` (`PRDTypeID`),
  CONSTRAINT `FK_PRD_COMPONENT_MASTER_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`),
  CONSTRAINT `FK_PRD_COMPONENT_MASTER_PRD_TYPE` FOREIGN KEY (`PRDTypeID`) REFERENCES `prd_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_component_master`
--

LOCK TABLES `prd_component_master` WRITE;
/*!40000 ALTER TABLE `prd_component_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `prd_component_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_df_classes`
--

DROP TABLE IF EXISTS `prd_df_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_df_classes` (
  `ID` int(11) NOT NULL,
  `DFClass` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DFValue` int(11) NOT NULL,
  `Desciption` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_DF_CLASSES` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_df_classes`
--

LOCK TABLES `prd_df_classes` WRITE;
/*!40000 ALTER TABLE `prd_df_classes` DISABLE KEYS */;
INSERT INTO `prd_df_classes` VALUES (1,'None',1,'New vessel or inspection shows little if any damage.','2019-06-14 07:43:21',NULL,NULL,NULL,'FEF16968-61E7-4756-B911-DDEBE9347428'),(2,'Minimal',20,'Equipment has been in service for a reasonable amount of time and inspection shows evidence of minor damage. Damage mechanisms have been identified and inspection data is available.','2019-06-14 07:43:21',NULL,NULL,NULL,'73C0C479-D706-4EDC-A767-C51B1262201E'),(3,'Minor',200,'One or more damage mechanisms have been identified, limited inspection data available and fairly moderate evidence of damage. Single damage mechanism identified, recent inspection indicates moderate evidence of damage.','2019-06-14 07:43:21',NULL,NULL,NULL,'8943CADC-7B13-4A6C-958A-11858F67CD54'),(4,'Moderate',750,'Moderate damage found during recent inspection. Low susceptible to one or more damage mechanisms, and limited inspection exists.','2019-06-14 07:43:21',NULL,NULL,NULL,'75B1ED4B-ABE1-40A3-80D1-56AF09600702'),(5,'Severe',2000,'One or more active damage mechanisms present without any recent inspection history. Limited inspection indicating high damage susceptibility.','2019-06-14 07:43:21',NULL,NULL,NULL,'8774A473-B4DE-4962-974F-5C796D8FA694');
/*!40000 ALTER TABLE `prd_df_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_discharge_location`
--

DROP TABLE IF EXISTS `prd_discharge_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_discharge_location` (
  `ID` int(11) NOT NULL,
  `DischargeLocation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `WeibullAdjustmentFactor` double DEFAULT NULL,
  `RecoveryFactor` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_DISCHARGE_LOCATION` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_discharge_location`
--

LOCK TABLES `prd_discharge_location` WRITE;
/*!40000 ALTER TABLE `prd_discharge_location` DISABLE KEYS */;
INSERT INTO `prd_discharge_location` VALUES (1,'Flare with Recovery System',0.75,0.5,'2019-06-14 07:43:21',NULL,NULL,NULL,'8B6CD0F1-6ECD-427D-A335-B00437042AEE'),(2,'Flare without Recovery System',0.75,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'A1B64B83-485C-4ABD-A984-3B6F83B06FCF'),(3,'Closed System',0.75,0,'2019-06-14 07:43:21',NULL,NULL,NULL,'1EC9374E-3541-4F3B-8E7D-FF597CDA8D9E'),(4,'Atmosphere',1,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'D7B5A424-B4B8-4425-9D7E-F866CCF9685C');
/*!40000 ALTER TABLE `prd_discharge_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_failure_mode`
--

DROP TABLE IF EXISTS `prd_failure_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_failure_mode` (
  `ID` int(11) NOT NULL,
  `FailureMode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_FAILURE_MODE` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_failure_mode`
--

LOCK TABLES `prd_failure_mode` WRITE;
/*!40000 ALTER TABLE `prd_failure_mode` DISABLE KEYS */;
INSERT INTO `prd_failure_mode` VALUES (1,'Fail to Open','2019-06-14 07:43:20',NULL,NULL,NULL,'9C46CCFB-C62E-4F56-9459-28ED2B161A98'),(2,'Leakage','2019-06-14 07:43:20',NULL,NULL,NULL,'EE9D7BEB-AD53-49B3-8AF0-FAB8C64026F4');
/*!40000 ALTER TABLE `prd_failure_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_inspection_confidence`
--

DROP TABLE IF EXISTS `prd_inspection_confidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_inspection_confidence` (
  `ID` int(11) NOT NULL,
  `EffectivenessID` int(11) NOT NULL,
  `InspectionResultID` int(11) NOT NULL,
  `FactorValue` double NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_INSPECTION_CONFIDENCE` (`AuditingID`),
  KEY `FK_PRD_INSPECTION_CONFIDENCE_PRD_INSPECTION_EFFECTIVENESS` (`EffectivenessID`),
  KEY `FK_PRD_INSPECTION_CONFIDENCE_PRD_INSPECTION_RESULT` (`InspectionResultID`),
  CONSTRAINT `FK_PRD_INSPECTION_CONFIDENCE_PRD_INSPECTION_EFFECTIVENESS` FOREIGN KEY (`EffectivenessID`) REFERENCES `prd_inspection_effectiveness` (`ID`),
  CONSTRAINT `FK_PRD_INSPECTION_CONFIDENCE_PRD_INSPECTION_RESULT` FOREIGN KEY (`InspectionResultID`) REFERENCES `prd_inspection_result` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_inspection_confidence`
--

LOCK TABLES `prd_inspection_confidence` WRITE;
/*!40000 ALTER TABLE `prd_inspection_confidence` DISABLE KEYS */;
INSERT INTO `prd_inspection_confidence` VALUES (1,1,1,0.9,'2019-06-14 07:43:20',NULL,NULL,NULL,'5A8F8293-2A90-4C0C-A337-41CBB120E3B6'),(2,1,2,0.95,'2019-06-14 07:43:20',NULL,NULL,NULL,'A219AED5-373E-4814-9A49-2104BDB49F2C'),(3,1,3,0.9,'2019-06-14 07:43:20',NULL,NULL,NULL,'32E84927-0D8C-4916-ACD2-D349CA0E66D5'),(4,1,4,0.95,'2019-06-14 07:43:20',NULL,NULL,NULL,'73743D0F-372C-4E2F-91E6-11BA5E107E17'),(5,2,1,0.7,'2019-06-14 07:43:20',NULL,NULL,NULL,'53CD4B7A-9037-415D-BBEC-56B56584EEE3'),(6,2,2,0.95,'2019-06-14 07:43:20',NULL,NULL,NULL,'C6636AC3-E820-41D2-9885-B334E6465438'),(7,2,3,0.7,'2019-06-14 07:43:20',NULL,NULL,NULL,'38B001B3-15FE-4BD6-BDE4-20388A8EFBC7'),(8,2,4,0.95,'2019-06-14 07:43:20',NULL,NULL,NULL,'26356D01-4799-4CF2-8999-421DC2A3B177'),(9,3,1,0.5,'2019-06-14 07:43:20',NULL,NULL,NULL,'8F8CE7E3-83DD-4F44-B236-8D0B248CCD25'),(10,3,2,0.7,'2019-06-14 07:43:20',NULL,NULL,NULL,'17E16315-BD45-4D31-842D-98DF46D955F8'),(11,3,3,0.5,'2019-06-14 07:43:20',NULL,NULL,NULL,'91EE70CE-3F8A-493A-A617-4EB62ECDB8D9'),(12,3,4,0.7,'2019-06-14 07:43:20',NULL,NULL,NULL,'C70C59E2-10A8-432A-857F-EDE957D5AD48'),(13,4,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'B7F2AB12-58F8-498B-8E7B-3073893D3785'),(14,4,2,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'7F4E75F6-D99B-4A40-A7C0-146BEF45C202'),(15,4,3,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'44C260D5-BCB5-4E37-AC04-0BFC07AC6F95'),(16,4,4,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'447E511F-6EC4-4862-9603-DE2D912F2EDF');
/*!40000 ALTER TABLE `prd_inspection_confidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_inspection_effectiveness`
--

DROP TABLE IF EXISTS `prd_inspection_effectiveness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_inspection_effectiveness` (
  `ID` int(11) NOT NULL,
  `Effectiveness` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_INSPECTION_EFFECTIVENESS` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_inspection_effectiveness`
--

LOCK TABLES `prd_inspection_effectiveness` WRITE;
/*!40000 ALTER TABLE `prd_inspection_effectiveness` DISABLE KEYS */;
INSERT INTO `prd_inspection_effectiveness` VALUES (1,'Highly Effective','2019-06-14 07:43:20',NULL,NULL,NULL,'AC6CFA71-D185-496A-94DD-730DF49CCC40'),(2,'Usually Effective','2019-06-14 07:43:20',NULL,NULL,NULL,'27E4BDA4-C4F1-44DA-9E4B-4D60BB68558F'),(3,'Fairly Effective','2019-06-14 07:43:20',NULL,NULL,NULL,'094DC90F-DB09-4B75-B29A-E47DF97CFF5D'),(4,'Ineffective','2019-06-14 07:43:20',NULL,NULL,NULL,'681542BA-2F6F-42A4-A708-A8CB56CA22AE');
/*!40000 ALTER TABLE `prd_inspection_effectiveness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_inspection_result`
--

DROP TABLE IF EXISTS `prd_inspection_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_inspection_result` (
  `ID` int(11) NOT NULL,
  `InspectionResult` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_INSPECTION_RESULT` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_inspection_result`
--

LOCK TABLES `prd_inspection_result` WRITE;
/*!40000 ALTER TABLE `prd_inspection_result` DISABLE KEYS */;
INSERT INTO `prd_inspection_result` VALUES (1,'Pass','2019-06-14 07:43:20',NULL,NULL,NULL,'55EEAA30-BA6A-4533-BB4C-8FF6D1ADCDC3'),(2,'Failed to Open','2019-06-14 07:43:20',NULL,NULL,NULL,'9B577539-0598-4DAA-88DD-9753C374B3AA'),(3,'Leaking','2019-06-14 07:43:20',NULL,NULL,NULL,'8618EFDA-46FE-4BE7-BED6-FD5435444534'),(4,'Failed to Open and Leaking','2019-06-14 07:43:20',NULL,NULL,NULL,'1544CF84-DF37-4A3D-846A-BEE4C9EF97CE');
/*!40000 ALTER TABLE `prd_inspection_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_overpressure_demand`
--

DROP TABLE IF EXISTS `prd_overpressure_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_overpressure_demand` (
  `ID` int(11) NOT NULL,
  `DemandCase` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EventFrequency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EF` double NOT NULL,
  `DRRF` double NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_OVERPRESSURE_DEMAND` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_overpressure_demand`
--

LOCK TABLES `prd_overpressure_demand` WRITE;
/*!40000 ALTER TABLE `prd_overpressure_demand` DISABLE KEYS */;
INSERT INTO `prd_overpressure_demand` VALUES (1,'Fire','1 per 250 years',0.004,0.1,'2019-06-14 07:43:21',NULL,NULL,NULL,'8B25ED94-7889-4777-B9AC-F2C73EA3A609'),(2,'Loss of cooling water utility','1 per 10 years',0.1,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'1BFD9FD6-6E03-427F-A3BD-8D56CEDEE0AB'),(3,'Electrical power supply failure','1 per 12.5 years',0.08,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'F0816275-8FDC-4B90-B302-88AFEACA4F91'),(4,'Blocked discharge with administrative controls in place','1 per 100 years',0.01,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'4520FF51-4372-4085-A5EA-700DD5F62E10'),(5,'Blocked discharge without administrative controls','1 per 10 years',0.1,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'3E93EBBD-C863-4AE8-A14A-C60FEB0155C9'),(6,'Control valve failure, initiating event is same direction as control valve normal fail position','1 per 10 years',0.1,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'35CFEF20-77CD-4D14-A79E-7CF377DA218E'),(7,'Control valve failure, initiating event is opposite direction as control valve normal fail position','1 per 50 years',0.02,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'8DD41D0C-4B1D-42CC-852E-857ACA0E9381'),(8,'Runaway chemical reaction','1 per year',1,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'F2A76D05-C062-4278-809C-D77D50E89FFD'),(9,'Heat exchanger tube rupture','1 per 1000 years',0.001,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'A08E1ACB-487A-4EDD-9E28-C8B9345170D1'),(10,'Tower P/A or reflux pump failures','1 per 5 years',0.2,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'FDF67136-FF25-4219-88AA-CA99A1CD78A0'),(11,'Thermal relief with administrative controls in place','1 per 100 years',0.01,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'65772ADE-D5F8-4847-A433-5E3CBECDD09D'),(12,'Thermal relief without administrative controls','1 per 10 years',0.1,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'6D5E395F-1DEA-4144-8EDD-18C261700D69'),(13,'Liquid overfitting with administrative controls in place','1 per 100 years',0.01,0.1,'2019-06-14 07:43:21',NULL,NULL,NULL,'7F8EE57B-AC52-4C8E-8153-FBD0025A057D'),(14,'Liquid overfitting without administrative controls','1 per 10 years',0.1,0.1,'2019-06-14 07:43:21',NULL,NULL,NULL,'498AC982-D9A4-45BC-A419-47AB40C71831'),(15,'Leakage','1',1,1,'2019-06-14 07:43:21',NULL,NULL,NULL,'EAC581B2-6941-4C49-90BE-EF12A7CC011F');
/*!40000 ALTER TABLE `prd_overpressure_demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_service_severity`
--

DROP TABLE IF EXISTS `prd_service_severity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_service_severity` (
  `ID` int(11) NOT NULL,
  `ServiceSeverity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_SERVICE_SEVERITY` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_service_severity`
--

LOCK TABLES `prd_service_severity` WRITE;
/*!40000 ALTER TABLE `prd_service_severity` DISABLE KEYS */;
INSERT INTO `prd_service_severity` VALUES (1,'Mild','2019-06-14 07:43:20',NULL,NULL,NULL,'43E04A8C-6601-4DC1-8F1A-7805BF42D62D'),(2,'Moderate','2019-06-14 07:43:20',NULL,NULL,NULL,'8A2B18EF-9DA8-46BE-9CCE-F4F2050CB2AA'),(3,'Severe','2019-06-14 07:43:20',NULL,NULL,NULL,'543E35DE-F085-4538-B1DA-7E51ACF1A915');
/*!40000 ALTER TABLE `prd_service_severity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_type`
--

DROP TABLE IF EXISTS `prd_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_type` (
  `ID` int(11) NOT NULL,
  `PRDTypeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_type`
--

LOCK TABLES `prd_type` WRITE;
/*!40000 ALTER TABLE `prd_type` DISABLE KEYS */;
INSERT INTO `prd_type` VALUES (1,'Conventional Spring Loaded PRV','2019-06-14 07:43:20'),(2,'Balanced Bellows PRV','2019-06-14 07:43:20'),(3,'Pilot-Operated PRV','2019-06-14 07:43:20'),(4,'PRV with Rupture Disk','2019-06-14 07:43:20'),(5,'Rupture Disk only','2019-06-14 07:43:20');
/*!40000 ALTER TABLE `prd_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_weibull_parameter`
--

DROP TABLE IF EXISTS `prd_weibull_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prd_weibull_parameter` (
  `ID` int(11) NOT NULL,
  `PRDTypeID` int(11) NOT NULL,
  `ServiceSeverityID` int(11) NOT NULL,
  `FalureModeID` int(11) NOT NULL,
  `Eta` double NOT NULL,
  `Beta` double NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_PRD_WEIBULL_PARAMETER` (`AuditingID`),
  KEY `FK_PRD_WEIBULL_PARAMETER_PRD_FAILURE_MODE` (`FalureModeID`),
  KEY `FK_PRD_WEIBULL_PARAMETER_PRD_SERVICE_SEVERITY` (`ServiceSeverityID`),
  KEY `FK_PRD_WEIBULL_PARAMETER_PRD_TYPE` (`PRDTypeID`),
  CONSTRAINT `FK_PRD_WEIBULL_PARAMETER_PRD_FAILURE_MODE` FOREIGN KEY (`FalureModeID`) REFERENCES `prd_failure_mode` (`ID`),
  CONSTRAINT `FK_PRD_WEIBULL_PARAMETER_PRD_SERVICE_SEVERITY` FOREIGN KEY (`ServiceSeverityID`) REFERENCES `prd_service_severity` (`ID`),
  CONSTRAINT `FK_PRD_WEIBULL_PARAMETER_PRD_TYPE` FOREIGN KEY (`PRDTypeID`) REFERENCES `prd_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_weibull_parameter`
--

LOCK TABLES `prd_weibull_parameter` WRITE;
/*!40000 ALTER TABLE `prd_weibull_parameter` DISABLE KEYS */;
INSERT INTO `prd_weibull_parameter` VALUES (1,1,1,1,50.5,1.8,'2019-06-14 07:43:20',NULL,NULL,NULL,'B771A6CA-EB91-4DCA-B719-F0F17A01060C'),(2,1,2,1,23.9,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'75D6C1D1-BC7B-4987-9B93-F882702AF301'),(3,1,3,1,17.6,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'EFD8AFB1-7E67-4513-A41E-EEB28901ABC7'),(4,2,1,1,50.5,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'59A219D4-2D6E-4BB7-BD9E-CF2516E9361C'),(5,2,2,1,23.9,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'D5CF7EFB-EF2B-42B4-841B-AD71318862A3'),(6,2,3,1,17.6,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'C3F0D471-AC06-4A17-9CA8-35755B8E7338'),(7,3,1,1,33.7,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'1413F7C8-B871-4A3C-8904-EFE8299DEAEC'),(8,3,2,1,8,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'F0144188-426E-40CC-BE4A-C1AA54D99C90'),(9,3,3,1,3.5,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'C8DC95C1-84A9-4B7F-BE4D-BE99B79E306A'),(10,4,1,1,50.5,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'4CA0F057-24C1-47DE-8F19-E3BCB054A453'),(11,4,2,1,50.5,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'E22A221E-3723-419D-B875-6BC46B5EAF67'),(12,4,3,1,50.5,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'D225B4D0-33DC-4848-A19C-20BEA1F08A78'),(13,5,1,1,50.5,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'740CC472-6B18-46E8-A3C5-7890F0741596'),(14,5,2,1,50.5,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'9DDD35AB-99DB-4128-8703-10F3F8350A80'),(15,5,3,1,50.5,1.8,'2019-06-14 07:43:21',NULL,NULL,NULL,'D5A3DA39-8972-47B0-A1E8-B33338368FDA'),(16,1,1,2,17.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'E8D06154-26B5-4262-8437-C26C58ABE478'),(17,1,2,2,15.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'75A54D71-2E35-4468-B34E-84C4F37460EA'),(18,1,3,2,13.1,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'A97FDF64-58C4-4EF6-8229-9224ADECF029'),(19,2,1,2,16,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'ECB14A1C-E6FD-4789-968E-6878FF5EB1A0'),(20,2,2,2,14,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'83EDE20E-21F0-4138-A328-FBB5FA1AF5BE'),(21,2,3,2,11.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'BDC5B81B-43B3-47AA-89BD-3022FAFE236C'),(22,3,1,2,17.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'67F06EEC-A654-47E3-AA21-DC9090322C93'),(23,3,2,2,15.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'4F577773-AE32-4814-B7DB-DBBF75C16B4D'),(24,3,3,2,13.1,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'068104B0-228D-4665-817C-AC7180F346FF'),(25,4,1,2,17.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'3A426D58-F00D-416A-9EA8-B1B1BFCBB70D'),(26,4,2,2,17.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'CC9E1F81-30DF-4539-BE88-FE0675099FBE'),(27,4,3,2,17.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'873582E4-800D-45A2-83E3-FD2BA6A5CD3E'),(28,5,1,2,17.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'5782E594-081A-4254-9214-5761A7BBFA44'),(29,5,2,2,17.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'A5D23544-3D6F-4EDF-B0F9-B14B821E8358'),(30,5,3,2,17.5,1.6,'2019-06-14 07:43:21',NULL,NULL,NULL,'DC2BEB5A-DB62-4A09-941A-6720A2B2CB98');
/*!40000 ALTER TABLE `prd_weibull_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_template`
--

DROP TABLE IF EXISTS `report_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_template` (
  `TemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `TemplateName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TemplateDescription` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OriginalFile` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ReportIdentifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ReportID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ReportType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ReportVersion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Predefined` tinyint(1) NOT NULL DEFAULT '0',
  `TemplateBinary` longblob,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`TemplateID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_REPORT_TEMPLATE` (`AuditingID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_template`
--

LOCK TABLES `report_template` WRITE;
/*!40000 ALTER TABLE `report_template` DISABLE KEYS */;
INSERT INTO `report_template` VALUES (1,'Standard Equipment','Standard RiskWISE Equipment Report','NIL',NULL,'NIL','Equipment','NIL',1,NULL,'2019-06-14 07:43:20',NULL,NULL,NULL,'D4AC4956-A0EF-47D9-B79B-7B3299305E41'),(2,'Standard Component','Standard RiskWISE Component Report','NIL',NULL,'NIL','Component','NIL',1,NULL,'2019-06-14 07:43:20',NULL,NULL,NULL,'B00FF374-7534-49E2-BA6D-CA01754F4B88');
/*!40000 ALTER TABLE `report_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_template_assessment`
--

DROP TABLE IF EXISTS `report_template_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_template_assessment` (
  `ID` int(11) NOT NULL,
  `TemplateID` int(11) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  KEY `FK_REPORT_TEMPLATE_ASSESSMENT_REPORT_TEMPLATE` (`TemplateID`),
  CONSTRAINT `FK_REPORT_TEMPLATE_ASSESSMENT_REPORT_TEMPLATE` FOREIGN KEY (`TemplateID`) REFERENCES `report_template` (`TemplateID`) ON DELETE CASCADE,
  CONSTRAINT `FK_REPORT_TEMPLATE_ASSESSMENT_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_template_assessment`
--

LOCK TABLES `report_template_assessment` WRITE;
/*!40000 ALTER TABLE `report_template_assessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_template_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_template_component_default`
--

DROP TABLE IF EXISTS `report_template_component_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_template_component_default` (
  `EquipmentID` int(11) NOT NULL,
  `TemplateID` int(11) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`EquipmentID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_REPORT_TEMPLATE_COMPONENT_DEFAULT` (`AuditingID`),
  KEY `FK_REPORT_TEMPLATE_COMPONENT_DEFAULT_REPORT_TEMPLATE` (`TemplateID`),
  CONSTRAINT `FK_REPORT_TEMPLATE_COMPONENT_DEFAULT_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`) ON DELETE CASCADE,
  CONSTRAINT `FK_REPORT_TEMPLATE_COMPONENT_DEFAULT_REPORT_TEMPLATE` FOREIGN KEY (`TemplateID`) REFERENCES `report_template` (`TemplateID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_template_component_default`
--

LOCK TABLES `report_template_component_default` WRITE;
/*!40000 ALTER TABLE `report_template_component_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_template_component_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_template_equipment`
--

DROP TABLE IF EXISTS `report_template_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_template_equipment` (
  `EquipmentID` int(11) NOT NULL,
  `TemplateID` int(11) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`EquipmentID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  KEY `FK_REPORT_TEMPLATE_EQUIPMENT_REPORT_TEMPLATE` (`TemplateID`),
  CONSTRAINT `FK_REPORT_TEMPLATE_EQUIPMENT_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`) ON DELETE CASCADE,
  CONSTRAINT `FK_REPORT_TEMPLATE_EQUIPMENT_REPORT_TEMPLATE` FOREIGN KEY (`TemplateID`) REFERENCES `report_template` (`TemplateID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_template_equipment`
--

LOCK TABLES `report_template_equipment` WRITE;
/*!40000 ALTER TABLE `report_template_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_template_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_assessment`
--

DROP TABLE IF EXISTS `rw_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_assessment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EquipmentID` int(11) NOT NULL,
  `ComponentID` int(11) NOT NULL,
  `AssessmentDate` datetime DEFAULT NULL,
  `AssessmentMethod` varchar(100) DEFAULT NULL,
  `RiskAnalysisPeriod` int(11) DEFAULT NULL,
  `IsEquipmentLinked` smallint(6) NOT NULL,
  `RecordType` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ProposalNo` int(11) DEFAULT NULL,
  `RevisionNo` int(11) DEFAULT NULL,
  `IsRecommend` smallint(6) DEFAULT NULL,
  `ProposalOrRevision` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AdoptedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AdoptedDate` datetime(6) DEFAULT NULL,
  `RecommendedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RecommendedDate` datetime(6) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ProposalName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RW_ASSESSMENT_COMPONENT_MASTER` (`ComponentID`),
  KEY `FK_RW_ASSESSMENT_EQUIPMENT_MASTER` (`EquipmentID`),
  CONSTRAINT `FK_RW_ASSESSMENT_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`) ON DELETE CASCADE,
  CONSTRAINT `FK_RW_ASSESSMENT_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_assessment`
--

LOCK TABLES `rw_assessment` WRITE;
/*!40000 ALTER TABLE `rw_assessment` DISABLE KEYS */;
INSERT INTO `rw_assessment` VALUES (2,2,1,'2019-11-01 00:00:00','Semi-Quantitative PoF and Semi-Quantitative CoF',36,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2019-11-01 14:53:47','adasd'),(4,2,9,'2019-11-01 00:00:00','Semi-Quantitative PoF and Semi-Quantitative CoF',36,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2019-11-01 15:20:07','rrfrsr'),(5,4,10,'2019-11-01 00:00:00','Semi-Quantitative PoF and Semi-Quantitative CoF',36,1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2019-11-01 15:20:07','asddsa'),(29,3,5,'2019-11-16 00:00:00','Semi-Quantitative PoF and Semi-Quantitative CoF',36,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-16 11:12:41','cuong'),(94,12,26,'2019-11-25 00:00:00','Semi-Quantitative PoF and Semi-Quantitative CoF',36,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-25 09:11:12','Proposal3'),(95,13,27,'2019-11-25 00:00:00','Semi-Quantitative PoF and Semi-Quantitative CoF',36,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-25 14:12:25','test1'),(96,13,27,'2019-11-25 00:00:00','Semi-Quantitative PoF and Semi-Quantitative CoF',36,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-25 14:29:31','test1'),(97,13,27,'2019-11-27 00:00:00','Semi-Quantitative PoF and Semi-Quantitative CoF',36,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-27 09:56:36','123'),(98,13,27,'2019-11-27 00:00:00','Semi-Quantitative PoF and Semi-Quantitative CoF',36,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-27 09:56:36','123');
/*!40000 ALTER TABLE `rw_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_cf_master`
--

DROP TABLE IF EXISTS `rw_cf_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_cf_master` (
  `ID` int(11) NOT NULL,
  `CF1` double DEFAULT NULL,
  `CF2` double DEFAULT NULL,
  `CF3` double DEFAULT NULL,
  `CF4` double DEFAULT NULL,
  `CF5` double DEFAULT NULL,
  `CF6` double DEFAULT NULL,
  `CF7` double DEFAULT NULL,
  `CF8` double DEFAULT NULL,
  `CF9` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_CF_MASTER` (`AuditingID`),
  CONSTRAINT `FK_RW_CF_MASTER_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_cf_master`
--

LOCK TABLES `rw_cf_master` WRITE;
/*!40000 ALTER TABLE `rw_cf_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_cf_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_coating`
--

DROP TABLE IF EXISTS `rw_coating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_coating` (
  `ID` int(11) NOT NULL,
  `ExternalCoating` smallint(6) DEFAULT NULL,
  `ExternalInsulation` smallint(6) DEFAULT NULL,
  `InternalCladding` smallint(6) DEFAULT NULL,
  `InternalCoating` smallint(6) DEFAULT NULL,
  `InternalLining` smallint(6) DEFAULT NULL,
  `ExternalCoatingDate` datetime(6) DEFAULT NULL,
  `ExternalCoatingQuality` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ExternalInsulationType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `InsulationCondition` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `InsulationContainsChloride` smallint(6) DEFAULT NULL,
  `InternalLinerCondition` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `InternalLinerType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CladdingThickness` double DEFAULT NULL,
  `CladdingCorrosionRate` double DEFAULT NULL,
  `SupportConfigNotAllowCoatingMaint` smallint(6) DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID_UNIQUE` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_coating`
--

LOCK TABLES `rw_coating` WRITE;
/*!40000 ALTER TABLE `rw_coating` DISABLE KEYS */;
INSERT INTO `rw_coating` VALUES (94,0,0,1,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,31,0,NULL,NULL,NULL,NULL),(95,0,0,1,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,31,0,NULL,NULL,NULL,NULL),(96,0,0,1,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,31,0,NULL,NULL,NULL,NULL),(97,0,0,0,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(98,0,0,1,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,12,0,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rw_coating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_component`
--

DROP TABLE IF EXISTS `rw_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_component` (
  `ID` int(11) NOT NULL,
  `NominalDiameter` double DEFAULT NULL,
  `NominalThickness` double DEFAULT NULL,
  `CurrentThickness` double DEFAULT NULL,
  `MinReqThickness` double DEFAULT NULL,
  `CurrentCorrosionRate` double DEFAULT NULL,
  `BranchDiameter` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `BranchJointType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `BrinnelHardness` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ChemicalInjection` smallint(6) DEFAULT NULL,
  `HighlyInjectionInsp` smallint(6) DEFAULT NULL,
  `ComplexityProtrusion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CorrectiveAction` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CracksPresent` smallint(6) DEFAULT NULL,
  `CyclicLoadingWitin15_25m` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DamageFoundInspection` smallint(6) DEFAULT NULL,
  `DeltaFATT` double DEFAULT NULL,
  `NumberPipeFittings` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PipeCondition` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PreviousFailures` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ShakingAmount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ShakingDetected` smallint(6) DEFAULT NULL,
  `ShakingTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SeverityOfVibration` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ReleasePreventionBarrier` smallint(6) DEFAULT NULL,
  `ConcreteFoundation` smallint(6) DEFAULT NULL,
  `ShellHeight` double DEFAULT NULL,
  `AllowableStress` double DEFAULT NULL,
  `WeldJointEfficiency` double DEFAULT NULL,
  `ComponentVolume` double DEFAULT NULL,
  `ConfidenceCorrosionRate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MinimumStructuralThicknessGoverns` smallint(6) DEFAULT NULL,
  `StructuralThickness` double DEFAULT NULL,
  `CracksCurrentCondition` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FabricatedSteel` smallint(6) DEFAULT NULL,
  `EquipmentSatisfied` smallint(6) DEFAULT NULL,
  `NominalOperatingConditions` smallint(6) DEFAULT NULL,
  `CETGreaterOrEqual` smallint(6) DEFAULT NULL,
  `CyclicServiceFatigueVibration` smallint(6) DEFAULT NULL,
  `EquipmentCircuitShock` smallint(6) DEFAULT NULL,
  `HTHADamageObserved` smallint(6) DEFAULT NULL,
  `BrittleFractureThickness` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_component`
--

LOCK TABLES `rw_component` WRITE;
/*!40000 ALTER TABLE `rw_component` DISABLE KEYS */;
INSERT INTO `rw_component` VALUES (29,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,0,0,NULL,0,0,NULL,0,0,0,0,0,0,0,NULL),(94,12,23,0,5,8,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,4,0.88,0,NULL,0,0,NULL,0,0,0,0,0,0,0,NULL),(95,12,23,11,5,8,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,4,0.88,0,'Low',0,0,NULL,0,0,0,0,0,0,0,NULL),(96,12,23,11,5,8,'Any branch less than or equal to 2\" Nominal OD',NULL,NULL,0,0,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,4,0.88,0,'Low',1,0,NULL,0,0,0,0,0,0,0,NULL),(97,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,0,0,NULL,0,0,NULL,0,0,0,0,0,0,0,NULL),(98,12,1,3,1,0,'Any branch less than or equal to 2\" Nominal OD',NULL,'Below 200',0,0,'Above average',NULL,1,'PRV chatter',1,1,NULL,NULL,'One','Minor',0,NULL,NULL,0,0,NULL,1,1,1,'Low',0,1,NULL,1,1,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `rw_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_corrosion_rate_tank`
--

DROP TABLE IF EXISTS `rw_corrosion_rate_tank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_corrosion_rate_tank` (
  `ID` int(11) NOT NULL,
  `CorrosionID` int(11) NOT NULL AUTO_INCREMENT,
  `SoilSideCorrosionRate` double DEFAULT NULL,
  `ProductSideCorrosionRate` double DEFAULT NULL,
  `PotentialCorrosion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TankPadMaterial` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TankDrainageType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CathodicProtectionType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TankBottomType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SoilSideTemperature` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ProductCondition` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ProductSideTemp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SteamCoil` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `WaterDrawOff` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ProductSideBottom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ModifiedSoilSideCorrosionRate` double DEFAULT NULL,
  `ModifiedProductSideCorrosionRate` double DEFAULT NULL,
  `FinalEstimatedCorrosionRate` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`CorrosionID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_CORROSION_RATE_TANK` (`AuditingID`),
  KEY `FK_RW_CORROSION_RATE_TANK_RW_ASSESSMENT` (`ID`),
  CONSTRAINT `FK_RW_CORROSION_RATE_TANK_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_corrosion_rate_tank`
--

LOCK TABLES `rw_corrosion_rate_tank` WRITE;
/*!40000 ALTER TABLE `rw_corrosion_rate_tank` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_corrosion_rate_tank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_damage_mechanism`
--

DROP TABLE IF EXISTS `rw_damage_mechanism`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_damage_mechanism` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DMItemID` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '0',
  `Notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ExpectedTypeID` int(11) DEFAULT NULL,
  `IsEL` tinyint(1) NOT NULL DEFAULT '0',
  `ELValue` double DEFAULT NULL,
  `IsDF` tinyint(1) NOT NULL DEFAULT '0',
  `IsUserDisabled` tinyint(1) NOT NULL DEFAULT '0',
  `DF1` double DEFAULT NULL,
  `DF2` double DEFAULT NULL,
  `DF3` double DEFAULT NULL,
  `DFBase` double DEFAULT NULL,
  `RLI` double DEFAULT NULL,
  `HighestInspectionEffectiveness` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SecondInspectionEffectiveness` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NumberOfInspections` int(11) DEFAULT NULL,
  `LastInspDate` datetime(6) DEFAULT NULL,
  `InspDueDate` datetime(6) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) DEFAULT NULL,
  `ID_DM` int(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_DAMAGE_MECHANISM` (`AuditingID`),
  KEY `FK_RW_DAMAGE_MECHANISM_DM_ITEMS` (`DMItemID`),
  CONSTRAINT `FK_RW_DAMAGE_MECHANISM_DM_ITEMS` FOREIGN KEY (`DMItemID`) REFERENCES `dm_items` (`DMItemID`),
  CONSTRAINT `FK_RW_DAMAGE_MECHANISM_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_damage_mechanism`
--

LOCK TABLES `rw_damage_mechanism` WRITE;
/*!40000 ALTER TABLE `rw_damage_mechanism` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_damage_mechanism` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_data_chart`
--

DROP TABLE IF EXISTS `rw_data_chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_data_chart` (
  `ID` int(20) NOT NULL,
  `risk_age_1` double DEFAULT NULL,
  `risk_age_2` double DEFAULT NULL,
  `risk_age_3` double DEFAULT NULL,
  `risk_age_4` double DEFAULT NULL,
  `risk_age_5` double DEFAULT NULL,
  `risk_age_6` double DEFAULT NULL,
  `risk_age_7` double DEFAULT NULL,
  `risk_age_8` double DEFAULT NULL,
  `risk_age_9` double DEFAULT NULL,
  `risk_age_10` double DEFAULT NULL,
  `risk_age_11` double DEFAULT NULL,
  `risk_age_12` double DEFAULT NULL,
  `risk_age_13` double DEFAULT NULL,
  `risk_age_14` double DEFAULT NULL,
  `risk_age_15` double DEFAULT NULL,
  `risk_target` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_data_chart`
--

LOCK TABLES `rw_data_chart` WRITE;
/*!40000 ALTER TABLE `rw_data_chart` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_data_chart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_equipment`
--

DROP TABLE IF EXISTS `rw_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_equipment` (
  `ID` int(11) NOT NULL,
  `CommissionDate` datetime(6) NOT NULL,
  `AdminUpsetManagement` smallint(6) NOT NULL,
  `ContainsDeadlegs` smallint(6) DEFAULT NULL,
  `CyclicOperation` smallint(6) DEFAULT NULL,
  `HighlyDeadlegInsp` smallint(6) DEFAULT NULL,
  `DowntimeProtectionUsed` smallint(6) DEFAULT NULL,
  `ExternalEnvironment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `HeatTraced` smallint(6) DEFAULT NULL,
  `InterfaceSoilWater` smallint(6) DEFAULT NULL,
  `LinerOnlineMonitoring` smallint(6) NOT NULL,
  `MaterialExposedToClExt` smallint(6) DEFAULT NULL,
  `MinReqTemperaturePressurisation` double DEFAULT NULL,
  `OnlineMonitoring` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PresenceSulphidesO2` smallint(6) DEFAULT NULL,
  `PresenceSulphidesO2Shutdown` smallint(6) DEFAULT NULL,
  `PressurisationControlled` smallint(6) DEFAULT NULL,
  `PWHT` smallint(6) DEFAULT NULL,
  `SteamOutWaterFlush` smallint(6) DEFAULT NULL,
  `ManagementFactor` double DEFAULT NULL,
  `ThermalHistory` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `YearLowestExpTemp` smallint(6) DEFAULT NULL,
  `Volume` double DEFAULT NULL,
  `TypeOfSoil` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EnvironmentSensitivity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DistanceToGroundWater` double DEFAULT NULL,
  `AdjustmentSettle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ComponentIsWelded` smallint(6) DEFAULT NULL,
  `TankIsMaintained` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_RW_EQUIPMENT_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_equipment`
--

LOCK TABLES `rw_equipment` WRITE;
/*!40000 ALTER TABLE `rw_equipment` DISABLE KEYS */;
INSERT INTO `rw_equipment` VALUES (29,'2019-09-30 00:00:00.000000',0,0,0,0,0,NULL,0,0,0,0,0,NULL,0,0,0,0,0,11,NULL,0,0,NULL,NULL,NULL,NULL,0,0),(94,'2019-11-25 00:00:00.000000',0,0,0,0,0,NULL,0,0,0,0,0,'Amine high velocity corrosion - Electrical resistance probes',0,0,0,0,0,0.1,NULL,0,0,NULL,NULL,NULL,NULL,0,0),(95,'2019-11-25 00:00:00.000000',0,0,0,0,0,NULL,0,0,0,0,0,'Amine high velocity corrosion - Corrosion coupons',0,0,0,0,0,0.1,NULL,0,0,NULL,NULL,NULL,NULL,0,0),(96,'2019-11-25 00:00:00.000000',0,0,0,0,0,NULL,0,0,0,0,0,'Amine high velocity corrosion - Corrosion coupons',0,0,0,0,0,0.1,NULL,0,0,NULL,NULL,NULL,NULL,0,0),(97,'2019-11-25 00:00:00.000000',0,0,0,0,0,NULL,0,0,0,0,0,NULL,0,0,0,0,0,0.1,NULL,0,0,NULL,NULL,NULL,NULL,0,0),(98,'2019-11-25 00:00:00.000000',0,0,0,0,0,'Arid/dry',0,0,0,1,0,'High temperature H2S/H2 corrosion - Key process parameters',0,0,0,0,0,0.1,'None',1,0,NULL,NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `rw_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_extcor_temperature`
--

DROP TABLE IF EXISTS `rw_extcor_temperature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_extcor_temperature` (
  `ID` int(11) NOT NULL,
  `Minus12ToMinus8` double DEFAULT NULL,
  `Minus8ToPlus6` double DEFAULT NULL,
  `Plus6ToPlus32` double DEFAULT NULL,
  `Plus32ToPlus71` double DEFAULT NULL,
  `Plus71ToPlus107` double DEFAULT NULL,
  `Plus107ToPlus121` double DEFAULT NULL,
  `Plus121ToPlus135` double DEFAULT NULL,
  `Plus135ToPlus162` double DEFAULT NULL,
  `Plus162ToPlus176` double DEFAULT NULL,
  `MoreThanPlus176` double DEFAULT NULL,
  `rw_extcor_temperaturecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_extcor_temperature`
--

LOCK TABLES `rw_extcor_temperature` WRITE;
/*!40000 ALTER TABLE `rw_extcor_temperature` DISABLE KEYS */;
INSERT INTO `rw_extcor_temperature` VALUES (94,0,0,0,0,0,0,0,0,0,0,NULL),(95,0,0,0,0,0,0,0,0,0,0,NULL),(96,0,0,0,0,0,0,0,0,0,0,NULL),(97,0,0,0,0,0,0,0,0,0,0,NULL),(98,0,0,0,0,0,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `rw_extcor_temperature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_extra_fields`
--

DROP TABLE IF EXISTS `rw_extra_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_extra_fields` (
  `ID` int(11) NOT NULL,
  `ObjectField001` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField002` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField003` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField004` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField005` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField006` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField007` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField008` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField009` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField010` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField011` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField012` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField013` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField014` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField015` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField016` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField017` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField018` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField019` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField020` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField021` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField022` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField023` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField024` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField025` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField026` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField027` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField028` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField029` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField030` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField031` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField032` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField033` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField034` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField035` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField036` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField037` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField038` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField039` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField040` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField041` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField042` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField043` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField044` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField045` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField046` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField047` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField048` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField049` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ObjectField050` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_EXTRA_FIELDS` (`AuditingID`),
  CONSTRAINT `FK_RW_EXTRA_FIELDS_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_extra_fields`
--

LOCK TABLES `rw_extra_fields` WRITE;
/*!40000 ALTER TABLE `rw_extra_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_extra_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_full_cof`
--

DROP TABLE IF EXISTS `rw_full_cof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_full_cof` (
  `ID` int(11) NOT NULL,
  `CoFValue` double DEFAULT NULL,
  `CoFCategory` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CoFMatrixValue` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_FULL_COF` (`AuditingID`),
  CONSTRAINT `FK_RW_FULL_COF_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_full_cof`
--

LOCK TABLES `rw_full_cof` WRITE;
/*!40000 ALTER TABLE `rw_full_cof` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_full_cof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_full_cof_fluid`
--

DROP TABLE IF EXISTS `rw_full_cof_fluid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_full_cof_fluid` (
  `ID` int(11) NOT NULL,
  `Cp` double DEFAULT NULL,
  `k` double DEFAULT NULL,
  `GFFTotal` double DEFAULT NULL,
  `Kv_n` double DEFAULT NULL,
  `ReleasePhase` varchar(15) DEFAULT NULL,
  `Cd` double DEFAULT NULL,
  `Ptrans` double DEFAULT NULL,
  `NBP` double DEFAULT NULL,
  `Density` double DEFAULT NULL,
  `MW` double DEFAULT NULL,
  `R` double DEFAULT NULL,
  `Ps` double DEFAULT NULL,
  `Ts` double DEFAULT NULL,
  `Patm` double DEFAULT NULL,
  `fact_di` double DEFAULT NULL,
  `fact_mit` double DEFAULT NULL,
  `fact_AIT` double DEFAULT NULL,
  `g` double DEFAULT NULL,
  `h` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_FULL_COF_FLUID` (`AuditingID`),
  CONSTRAINT `FK_RW_FULL_COF_FLUID_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_full_cof_fluid`
--

LOCK TABLES `rw_full_cof_fluid` WRITE;
/*!40000 ALTER TABLE `rw_full_cof_fluid` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_full_cof_fluid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_full_cof_hole_size`
--

DROP TABLE IF EXISTS `rw_full_cof_hole_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_full_cof_hole_size` (
  `ID` int(11) NOT NULL,
  `GFF_n` varchar(15) NOT NULL,
  `An` double DEFAULT NULL,
  `Wn` double DEFAULT NULL,
  `t_n` double DEFAULT NULL,
  `ld_max_n` double DEFAULT NULL,
  `mass_add_n` double DEFAULT NULL,
  `mass_avail_n` double DEFAULT NULL,
  `rate_n` double DEFAULT NULL,
  `ld_n` double DEFAULT NULL,
  `mass_n` double DEFAULT NULL,
  `eneff_n` double DEFAULT NULL,
  `factIC_n` double DEFAULT NULL,
  `ReleaseType_n` varchar(15) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`,`GFF_n`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_FULL_COF_HOLE_SIZE` (`AuditingID`),
  CONSTRAINT `FK_RW_FULL_COF_HOLE_SIZE_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_full_cof_hole_size`
--

LOCK TABLES `rw_full_cof_hole_size` WRITE;
/*!40000 ALTER TABLE `rw_full_cof_hole_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_full_cof_hole_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_full_cof_input`
--

DROP TABLE IF EXISTS `rw_full_cof_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_full_cof_input` (
  `ID` int(11) NOT NULL,
  `Mitigation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DetectionType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IsolationType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mass_comp` double DEFAULT NULL,
  `mass_inv` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_FULL_COF_INPUT` (`AuditingID`),
  CONSTRAINT `FK_RW_FULL_COF_INPUT_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_full_cof_input`
--

LOCK TABLES `rw_full_cof_input` WRITE;
/*!40000 ALTER TABLE `rw_full_cof_input` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_full_cof_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_full_cof_tank`
--

DROP TABLE IF EXISTS `rw_full_cof_tank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_full_cof_tank` (
  `ID` int(11) NOT NULL,
  `CoFValue` double DEFAULT NULL,
  `CoFCategory` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ProdCost` double DEFAULT NULL,
  `EquipOutageMultiplier` double DEFAULT NULL,
  `equipcost` double DEFAULT NULL,
  `popdens` double DEFAULT NULL,
  `injcost` double DEFAULT NULL,
  `CoFMatrixValue` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  CONSTRAINT `FK_RW_FULL_COF_TANK_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_full_cof_tank`
--

LOCK TABLES `rw_full_cof_tank` WRITE;
/*!40000 ALTER TABLE `rw_full_cof_tank` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_full_cof_tank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_full_fcof`
--

DROP TABLE IF EXISTS `rw_full_fcof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_full_fcof` (
  `ID` int(11) NOT NULL,
  `FCoFValue` double DEFAULT NULL,
  `FCoFCategory` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AIL` tinyint(1) NOT NULL DEFAULT '0',
  `EquipOutageMultiplier` double DEFAULT NULL,
  `envcost` double DEFAULT NULL,
  `equipcost` double DEFAULT NULL,
  `prodcost` double DEFAULT NULL,
  `popdens` double DEFAULT NULL,
  `injcost` double DEFAULT NULL,
  `FCoFMatrixValue` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_FULL_FCOF` (`AuditingID`),
  CONSTRAINT `FK_RW_FULL_FCOF_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_full_fcof`
--

LOCK TABLES `rw_full_fcof` WRITE;
/*!40000 ALTER TABLE `rw_full_fcof` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_full_fcof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_full_pof`
--

DROP TABLE IF EXISTS `rw_full_pof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_full_pof` (
  `ID` int(11) NOT NULL,
  `ThinningAP1` double DEFAULT NULL,
  `ThinningAP2` double DEFAULT NULL,
  `ThinningAP3` double DEFAULT NULL,
  `SCCAP1` double DEFAULT NULL,
  `SCCAP2` double DEFAULT NULL,
  `SCCAP3` double DEFAULT NULL,
  `ExternalAP1` double DEFAULT NULL,
  `ExternalAP2` double DEFAULT NULL,
  `ExternalAP3` double DEFAULT NULL,
  `BrittleAP1` double DEFAULT NULL,
  `BrittleAP2` double DEFAULT NULL,
  `BrittleAP3` double DEFAULT NULL,
  `HTHA_AP1` double DEFAULT NULL,
  `HTHA_AP2` double DEFAULT NULL,
  `HTHA_AP3` double DEFAULT NULL,
  `FatigueAP1` double DEFAULT NULL,
  `FatigueAP2` double DEFAULT NULL,
  `FatigueAP3` double DEFAULT NULL,
  `FMS` double DEFAULT NULL,
  `ThinningType` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `GFFTotal` double DEFAULT NULL,
  `ThinningLocalAP1` double DEFAULT NULL,
  `ThinningLocalAP2` double DEFAULT NULL,
  `ThinningLocalAP3` double DEFAULT NULL,
  `ThinningGeneralAP1` double DEFAULT NULL,
  `ThinningGeneralAP2` double DEFAULT NULL,
  `ThinningGeneralAP3` double DEFAULT NULL,
  `TotalDFAP1` double DEFAULT NULL,
  `TotalDFAP2` double DEFAULT NULL,
  `TotalDFAP3` double DEFAULT NULL,
  `PoFAP1` double DEFAULT NULL,
  `PoFAP2` double DEFAULT NULL,
  `PoFAP3` double DEFAULT NULL,
  `MatrixPoFAP1` double DEFAULT NULL,
  `MatrixPoFAP2` double DEFAULT NULL,
  `MatrixPoFAP3` double DEFAULT NULL,
  `RLI` double DEFAULT NULL,
  `SemiAP1` double DEFAULT NULL,
  `SemiAP2` double DEFAULT NULL,
  `SemiAP3` double DEFAULT NULL,
  `PoFAP1Category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PoFAP2Category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PoFAP3Category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CoFValue` double DEFAULT NULL,
  `CoFCategory` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CoFMatrixValue` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_RW_FULL_POF_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_full_pof`
--

LOCK TABLES `rw_full_pof` WRITE;
/*!40000 ALTER TABLE `rw_full_pof` DISABLE KEYS */;
INSERT INTO `rw_full_pof` VALUES (96,5696.40698595327,5696.40698595327,5696.40698595327,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,0.1,'Local',0.000031,5696.40698595327,5696.40698595327,5696.40698595327,5696.40698595327,5696.40698595327,5696.40698595327,5700.40698595327,5700.40698595327,5700.40698595327,0.0176712616564551,0.0176712616564551,0.0176712616564551,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','5','5',NULL,NULL,NULL),(98,6410.25641025638,6410.25641025638,6410.25641025638,0,0,0,0,0,0,0,0,0,0,0,0,200,200,200,0.1,'Local',0.000031,6410.25641025638,6410.25641025638,6410.25641025638,6410.25641025638,6410.25641025638,6410.25641025638,6610.25641025638,6610.25641025638,6610.25641025638,0.0204917948717948,0.0204917948717948,0.0204917948717948,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','5','5',NULL,NULL,NULL);
/*!40000 ALTER TABLE `rw_full_pof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_input_ca_level1`
--

DROP TABLE IF EXISTS `rw_input_ca_level1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_input_ca_level1` (
  `ID` int(11) NOT NULL,
  `API_FLUID` varchar(50) DEFAULT NULL,
  `SYSTEM` varchar(50) DEFAULT NULL,
  `Release_Duration` varchar(50) DEFAULT NULL,
  `Detection_Type` varchar(50) DEFAULT NULL,
  `Isulation_Type` varchar(50) DEFAULT NULL,
  `Mitigation_System` varchar(150) DEFAULT NULL,
  `Equipment_Cost` double DEFAULT NULL,
  `Injure_Cost` double DEFAULT NULL,
  `Evironment_Cost` double DEFAULT NULL,
  `Toxic_Percent` double DEFAULT NULL,
  `Personal_Density` double DEFAULT NULL,
  `Material_Cost` double DEFAULT NULL,
  `Production_Cost` double DEFAULT NULL,
  `Mass_Inventory` double DEFAULT NULL,
  `Mass_Component` double DEFAULT NULL,
  `Stored_Pressure` double DEFAULT NULL,
  `Stored_Temp` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_input_ca_level1`
--

LOCK TABLES `rw_input_ca_level1` WRITE;
/*!40000 ALTER TABLE `rw_input_ca_level1` DISABLE KEYS */;
INSERT INTO `rw_input_ca_level1` VALUES (94,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL),(95,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL),(96,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL),(97,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL),(98,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL),(99,'C1-C2','Vapor',NULL,'C','C','Inventory blowdown, couple with isolation system classification B or higher',2000,500000,0,0,0.002,1,50000,12468,24154,1379,27,NULL),(123,'Steam','Vapor',NULL,'C','C','Fire water monitors only',0,5000000,0,0,0.01,1.2,50000,12135,24123,2758,20,NULL),(124,'AlCl3','Liquid','All','C','C','Fire water deluge system and monitors',0,5000000,0,10,0.001,1.2,50000,12458,24121,303.38,27,NULL),(142,'Acid','Liquid',NULL,'A','A','Fire water deluge system and monitors',0,0,0,0,0,0,0,0,0,0,0,NULL),(146,'Acid','Liquid',NULL,'A','A','Fire water deluge system and monitors',0,0,0,0,0,0,0,0,0,0,0,NULL),(148,'Acid','Liquid',NULL,'A','A','Fire water deluge system and monitors',0,0,0,0,0,0,0,0,0,0,0,NULL),(149,'Acid','Liquid',NULL,'A','A','Foam spray system',10000,500000,0,0,0.001,1.5,200000,1200,1500,1379,40,NULL),(157,'Acid','Liquid',NULL,'A','A','Fire water deluge system and monitors',0,0,0,0,0,0,0,0,0,0,0,NULL),(158,'Acid','Liquid',NULL,'A','A','Fire water deluge system and monitors',0,0,0,0,0,0,0,0,0,0,0,NULL),(181,'C1-C2','Vapor',NULL,'A','A','Fire water deluge system and monitors',0,0,0,0,0,0,0,0,0,0,0,NULL),(220,'Acid','Liquid',NULL,'A','A','Fire water deluge system and monitors',0,0,0,0,0,0,0,0,0,0,0,NULL),(261,'C1-C2','Vapor',NULL,'C','C','Foam spray system',1500,100000,0,0,0.0001,1,50000,1200,2000,1379,20,NULL),(298,'Acid','Liquid',NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL),(312,'C1-C2','Vapor',NULL,'C','C','Inventory blowdown, couple with isolation system classification B or higher',2000,500000,0,0,0.002,1,50000,12468,24154,1379,27,NULL),(346,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(347,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(351,'C1-C2','Liquid',NULL,NULL,NULL,'Fire water monitors only',34,3,23,0,199,0,34,34,34,0,0,NULL),(352,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(353,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(354,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(357,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(367,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(368,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(369,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(370,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rw_input_ca_level1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_input_ca_tank`
--

DROP TABLE IF EXISTS `rw_input_ca_tank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_input_ca_tank` (
  `ID` int(11) NOT NULL,
  `FLUID_HEIGHT` double DEFAULT NULL,
  `SHELL_COURSE_HEIGHT` double DEFAULT NULL,
  `TANK_DIAMETTER` double DEFAULT NULL,
  `Prevention_Barrier` smallint(6) DEFAULT NULL,
  `Environ_Sensitivity` varchar(50) DEFAULT NULL,
  `P_lvdike` double DEFAULT NULL,
  `P_onsite` double DEFAULT NULL,
  `P_offsite` double DEFAULT NULL,
  `Soil_Type` varchar(150) DEFAULT NULL,
  `TANK_FLUID` varchar(150) DEFAULT NULL,
  `API_FLUID` varchar(50) DEFAULT NULL,
  `SW` double DEFAULT NULL,
  `ProductionCost` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_input_ca_tank`
--

LOCK TABLES `rw_input_ca_tank` WRITE;
/*!40000 ALTER TABLE `rw_input_ca_tank` DISABLE KEYS */;
INSERT INTO `rw_input_ca_tank` VALUES (177,12,NULL,11.99,0,'Low',12,10,2,'Coarse Sand','Light Diesel Oil','C9-C12',0,10000),(222,0,0,99,0,'High',0,0,0,'Coarse Sand','Gasoline','C6-C8',0,0),(225,0,0,0,0,'High',0,0,0,'Coarse Sand','Gasoline','C6-C8',0,0),(228,0,0,0,0,'High',0,0,0,'Coarse Sand','Gasoline','C6-C8',0,0),(231,0,2,9.04,0,'High',0,0,0,'Coarse Sand','Gasoline','C6-C8',0,0),(247,0,NULL,7,0,'High',0,0,0,'Coarse Sand','Gasoline','C6-C8',0,0),(291,12,1.2,99,0,'High',3,2,2,'Clay','Gasoline','C6-C8',NULL,20000),(306,0,0,0,0,NULL,0,0,0,'Coarse Sand',NULL,'C25+',NULL,0),(348,45,12,20,1,'High',10,20,30,'Coarse Sand','Light Diesel Oil','C9-C12',5,NULL);
/*!40000 ALTER TABLE `rw_input_ca_tank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_inspection_detail`
--

DROP TABLE IF EXISTS `rw_inspection_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_inspection_detail` (
  `ID` int(11) NOT NULL,
  `DetailID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EquipmentID` int(11) NOT NULL,
  `ComponentID` int(11) NOT NULL,
  `Coverage_DetailID` bigint(20) DEFAULT NULL,
  `InspPlanName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `InspectionDate` datetime(6) DEFAULT NULL,
  `DMItemID` int(11) NOT NULL,
  `EffectivenessCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `InspectionSummary` varchar(500) DEFAULT NULL,
  `IsCarriedOut` tinyint(1) DEFAULT NULL,
  `CarriedOutDate` datetime(6) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`DetailID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_INSPECTION_DETAIL` (`AuditingID`),
  KEY `FK_RW_INSPECTION_DETAIL_COMPONENT_MASTER` (`ComponentID`),
  KEY `FK_RW_INSPECTION_DETAIL_DM_ITEMS` (`DMItemID`),
  KEY `FK_RW_INSPECTION_DETAIL_EQUIPMENT_MASTER` (`EquipmentID`),
  KEY `FK_RW_INSPECTION_DETAIL_RW_ASSESSMENT` (`ID`),
  CONSTRAINT `FK_RW_INSPECTION_DETAIL_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`),
  CONSTRAINT `FK_RW_INSPECTION_DETAIL_DM_ITEMS` FOREIGN KEY (`DMItemID`) REFERENCES `dm_items` (`DMItemID`),
  CONSTRAINT `FK_RW_INSPECTION_DETAIL_EQUIPMENT_MASTER` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment_master` (`EquipmentID`),
  CONSTRAINT `FK_RW_INSPECTION_DETAIL_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_inspection_detail`
--

LOCK TABLES `rw_inspection_detail` WRITE;
/*!40000 ALTER TABLE `rw_inspection_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_inspection_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_inspection_history`
--

DROP TABLE IF EXISTS `rw_inspection_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_inspection_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `InspectionPlanName` varchar(100) DEFAULT NULL,
  `InspectionCoverageName` varchar(100) DEFAULT NULL,
  `EquipmentNumber` varchar(50) DEFAULT NULL,
  `ComponentNumber` varchar(50) DEFAULT NULL,
  `DM` varchar(150) DEFAULT NULL,
  `InspectionType` varchar(250) DEFAULT NULL,
  `InspectionDate` datetime DEFAULT NULL,
  `InspectionEffective` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_inspection_history`
--

LOCK TABLES `rw_inspection_history` WRITE;
/*!40000 ALTER TABLE `rw_inspection_history` DISABLE KEYS */;
INSERT INTO `rw_inspection_history` VALUES (1,'huong','45.0','1.0','2.0','Amine Corrosion','Chime','2019-05-03 00:00:00','B'),(2,'goby','12.0','2.0','3.0','Amine Stress Corrosion Cracking','','2019-06-03 00:00:00','C'),(3,'huong','45.0','1.0','2.0','Amine Corrosion','Chime','2019-05-03 00:00:00','B'),(4,'goby','12.0','2.0','3.0','Amine Stress Corrosion Cracking','','2019-06-03 00:00:00','C'),(5,'huong','45.0','1.0','1.0','Amine Corrosion','Chime','2019-05-03 00:00:00','B'),(6,'goby','12.0','1.0','1.0','Amine Stress Corrosion Cracking','','2019-06-03 00:00:00','C'),(7,'huong','45.0','2.0','2.0','Amine Corrosion','Chime','2019-05-03 00:00:00','B'),(8,'goby','12.0','2.0','2.0','Amine Stress Corrosion Cracking','','2019-06-03 00:00:00','C');
/*!40000 ALTER TABLE `rw_inspection_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_lf_detail`
--

DROP TABLE IF EXISTS `rw_lf_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_lf_detail` (
  `ID` int(11) NOT NULL,
  `DMItemID` int(11) NOT NULL,
  `LF2AP1` double DEFAULT NULL,
  `LF2AP2` double DEFAULT NULL,
  `LF2AP3` double DEFAULT NULL,
  `LF2FactorAP1` double DEFAULT NULL,
  `LF2FactorAP2` double DEFAULT NULL,
  `LF2FactorAP3` double DEFAULT NULL,
  `LF3` double DEFAULT NULL,
  `LF3Factor` double DEFAULT NULL,
  `LCF` double DEFAULT NULL,
  `LHAP1Category` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LHAP2Category` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LHAP3Category` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LHAP1Value` double DEFAULT NULL,
  `LHAP2Value` double DEFAULT NULL,
  `LHAP3Value` double DEFAULT NULL,
  `CoFValue` double DEFAULT NULL,
  `CoFCategory` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RLI` double DEFAULT NULL,
  `IsEL` tinyint(1) NOT NULL DEFAULT '0',
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`,`DMItemID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_LF_DETAIL` (`AuditingID`),
  KEY `FK_RW_LF_DETAIL_DM_ITEMS` (`DMItemID`),
  CONSTRAINT `FK_RW_LF_DETAIL_DM_ITEMS` FOREIGN KEY (`DMItemID`) REFERENCES `dm_items` (`DMItemID`),
  CONSTRAINT `FK_RW_LF_DETAIL_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_lf_detail`
--

LOCK TABLES `rw_lf_detail` WRITE;
/*!40000 ALTER TABLE `rw_lf_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_lf_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_lf_master`
--

DROP TABLE IF EXISTS `rw_lf_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_lf_master` (
  `ID` int(11) NOT NULL,
  `LF1Factor` double DEFAULT NULL,
  `LF4Factor` double DEFAULT NULL,
  `LF5Factor` double DEFAULT NULL,
  `LF6Factor` double DEFAULT NULL,
  `LF7Factor` double DEFAULT NULL,
  `LF1` double DEFAULT NULL,
  `LF4` double DEFAULT NULL,
  `LF5` double DEFAULT NULL,
  `LF6` double DEFAULT NULL,
  `LF7` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_LF_MASTER` (`AuditingID`),
  CONSTRAINT `FK_RW_LF_MASTER_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_lf_master`
--

LOCK TABLES `rw_lf_master` WRITE;
/*!40000 ALTER TABLE `rw_lf_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_lf_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_material`
--

DROP TABLE IF EXISTS `rw_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_material` (
  `ID` int(11) NOT NULL,
  `MaterialName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DesignPressure` double DEFAULT NULL,
  `DesignTemperature` double DEFAULT NULL,
  `MinDesignTemperature` double DEFAULT NULL,
  `BrittleFractureThickness` double DEFAULT NULL,
  `CorrosionAllowance` double DEFAULT NULL,
  `SigmaPhase` double DEFAULT NULL,
  `SulfurContent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `HeatTreatment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SteelProductForm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ReferenceTemperature` double DEFAULT NULL,
  `PTAMaterialCode` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `HTHAMaterialCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IsPTA` smallint(6) DEFAULT NULL,
  `IsHTHA` smallint(6) DEFAULT NULL,
  `Austenitic` smallint(6) DEFAULT NULL,
  `Temper` smallint(6) DEFAULT NULL,
  `CarbonLowAlloy` smallint(6) DEFAULT NULL,
  `NickelBased` smallint(6) DEFAULT NULL,
  `ChromeMoreEqual12` smallint(6) DEFAULT NULL,
  `YieldStrength` double DEFAULT NULL,
  `TensileStrength` double DEFAULT NULL,
  `CostFactor` double DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID_UNIQUE` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_material`
--

LOCK TABLES `rw_material` WRITE;
/*!40000 ALTER TABLE `rw_material` DISABLE KEYS */;
INSERT INTO `rw_material` VALUES (94,'12',12,0,0,0,0,0,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(95,'122',0,0,0,0,0,0,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,0,0,0,33,12,0,NULL,NULL,NULL,NULL,NULL),(96,'11',0,0,0,0,0,0,'High > 0.01%',NULL,NULL,0,NULL,NULL,0,0,0,0,0,0,0,33,12,0,NULL,NULL,NULL,NULL,NULL),(97,'123',0,0,0,0,0,0,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(98,'123',12,0,0,0,12,0,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,0,0,0,1,1,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rw_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_points`
--

DROP TABLE IF EXISTS `rw_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_points` (
  `ID` int(11) NOT NULL,
  `PointID` int(11) NOT NULL AUTO_INCREMENT,
  `PointName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `GaugePoint` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PointLocation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PIDNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FittingDesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Specification` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MinReqThickness` double DEFAULT NULL,
  `ThicknessReading` double DEFAULT NULL,
  `ThicknessDate` datetime(6) DEFAULT NULL,
  `NominalThickness` double DEFAULT NULL,
  `EstimatedCorrosionRate` double DEFAULT NULL,
  `CalculatedCorrosionRate` double DEFAULT NULL,
  `CalculatedRemainingLife` double DEFAULT NULL,
  `k` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`PointID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_POINTS` (`AuditingID`),
  KEY `FK_RW_POINTS_RW_ASSESSMENT` (`ID`),
  CONSTRAINT `FK_RW_POINTS_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_points`
--

LOCK TABLES `rw_points` WRITE;
/*!40000 ALTER TABLE `rw_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_prd_cof_input`
--

DROP TABLE IF EXISTS `rw_prd_cof_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_prd_cof_input` (
  `ID` int(11) NOT NULL,
  `Mitigation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DetectionType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IsolationType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ModelFluidID` int(11) DEFAULT NULL,
  `ToxicFluidID` int(11) DEFAULT NULL,
  `LiquidLevel` double DEFAULT NULL,
  `ReleaseFluidPercentToxic` double DEFAULT NULL,
  `StoragePhase` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mass_inv` double DEFAULT NULL,
  `NominalDiameter` double DEFAULT NULL,
  `MaterialCostFactor` double DEFAULT NULL,
  `FluidCost` double DEFAULT NULL,
  `ComponentVolume` double DEFAULT NULL,
  `equipcost` double DEFAULT NULL,
  `prodcost` double DEFAULT NULL,
  `ShutDownDays` double DEFAULT NULL,
  `popdens` double DEFAULT NULL,
  `injcost` double DEFAULT NULL,
  `envcostLoss` double DEFAULT NULL,
  `envcostLeak` double DEFAULT NULL,
  `EquipOutageMultiplier` double DEFAULT NULL,
  `LeakingReliefDevice` tinyint(1) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_PRD_COF_INPUT` (`AuditingID`),
  CONSTRAINT `FK_RW_PRD_COF_INPUT_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_prd_cof_input`
--

LOCK TABLES `rw_prd_cof_input` WRITE;
/*!40000 ALTER TABLE `rw_prd_cof_input` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_prd_cof_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_prd_component`
--

DROP TABLE IF EXISTS `rw_prd_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_prd_component` (
  `ID` int(11) NOT NULL,
  `CommisionDate` datetime(6) DEFAULT NULL,
  `InstallationDate` datetime(6) DEFAULT NULL,
  `FailServiceSeverityID` int(11) DEFAULT NULL,
  `LeakServiceSeverityID` int(11) DEFAULT NULL,
  `DischargeLocationID` int(11) DEFAULT NULL,
  `SoftSeat` tinyint(1) NOT NULL DEFAULT '0',
  `PipingVibration` tinyint(1) NOT NULL DEFAULT '0',
  `ExcessiveActuation` tinyint(1) NOT NULL DEFAULT '0',
  `Chatter` tinyint(1) NOT NULL DEFAULT '0',
  `PulsatingCyclical` tinyint(1) NOT NULL DEFAULT '0',
  `OperatingSet` double DEFAULT NULL,
  `MaxOpPressure` double DEFAULT NULL,
  `MAWP` double DEFAULT NULL,
  `OperatingTemperature` double DEFAULT NULL,
  `FlowCapacity` double DEFAULT NULL,
  `InletSize` double DEFAULT NULL,
  `OrificeArea` double DEFAULT NULL,
  `ManagementFactor` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_PRD_COMPONENT` (`AuditingID`),
  KEY `FK_RW_PRD_COMPONENT_PRD_DISCHARGE_LOCATION` (`DischargeLocationID`),
  KEY `FK_RW_PRD_COMPONENT_PRD_SERVICE_SEVERITY` (`FailServiceSeverityID`),
  KEY `FK_RW_PRD_COMPONENT_PRD_SERVICE_SEVERITY1` (`LeakServiceSeverityID`),
  CONSTRAINT `FK_RW_PRD_COMPONENT_PRD_DISCHARGE_LOCATION` FOREIGN KEY (`DischargeLocationID`) REFERENCES `prd_discharge_location` (`ID`),
  CONSTRAINT `FK_RW_PRD_COMPONENT_PRD_SERVICE_SEVERITY` FOREIGN KEY (`FailServiceSeverityID`) REFERENCES `prd_service_severity` (`ID`),
  CONSTRAINT `FK_RW_PRD_COMPONENT_PRD_SERVICE_SEVERITY1` FOREIGN KEY (`LeakServiceSeverityID`) REFERENCES `prd_service_severity` (`ID`),
  CONSTRAINT `FK_RW_PRD_COMPONENT_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_prd_component`
--

LOCK TABLES `rw_prd_component` WRITE;
/*!40000 ALTER TABLE `rw_prd_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_prd_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_prd_component_linked`
--

DROP TABLE IF EXISTS `rw_prd_component_linked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_prd_component_linked` (
  `ID` int(11) NOT NULL,
  `ComponentLinkedID` int(11) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`,`ComponentLinkedID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_PRD_COMPONENT_LINKED` (`AuditingID`),
  KEY `FK_RW_PRD_COMPONENT_LINKED_COMPONENT_MASTER` (`ComponentLinkedID`),
  CONSTRAINT `FK_RW_PRD_COMPONENT_LINKED_COMPONENT_MASTER` FOREIGN KEY (`ComponentLinkedID`) REFERENCES `component_master` (`ComponentID`),
  CONSTRAINT `FK_RW_PRD_COMPONENT_LINKED_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_prd_component_linked`
--

LOCK TABLES `rw_prd_component_linked` WRITE;
/*!40000 ALTER TABLE `rw_prd_component_linked` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_prd_component_linked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_prd_inspection`
--

DROP TABLE IF EXISTS `rw_prd_inspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_prd_inspection` (
  `ID` int(11) NOT NULL,
  `InspectionID` bigint(20) NOT NULL AUTO_INCREMENT,
  `InspectionDate` datetime(6) DEFAULT NULL,
  `InspectionResultID` int(11) DEFAULT NULL,
  `InspectionEffectivenessID` int(11) DEFAULT NULL,
  `Overhaul` tinyint(1) NOT NULL DEFAULT '0',
  `IsPipingPlugged` tinyint(1) NOT NULL DEFAULT '0',
  `Findings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`InspectionID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_PRD_INSPECTION` (`AuditingID`),
  KEY `FK_RW_PRD_INSPECTION_PRD_INSPECTION_RESULT` (`InspectionResultID`),
  KEY `FK_RW_PRD_INSPECTION_RW_ASSESSMENT` (`ID`),
  CONSTRAINT `FK_RW_PRD_INSPECTION_PRD_INSPECTION_EFFECTIVENESS` FOREIGN KEY (`InspectionResultID`) REFERENCES `prd_inspection_effectiveness` (`ID`),
  CONSTRAINT `FK_RW_PRD_INSPECTION_PRD_INSPECTION_RESULT` FOREIGN KEY (`InspectionResultID`) REFERENCES `prd_inspection_result` (`ID`),
  CONSTRAINT `FK_RW_PRD_INSPECTION_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_prd_inspection`
--

LOCK TABLES `rw_prd_inspection` WRITE;
/*!40000 ALTER TABLE `rw_prd_inspection` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_prd_inspection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_prd_overpressure_demand`
--

DROP TABLE IF EXISTS `rw_prd_overpressure_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_prd_overpressure_demand` (
  `ID` int(11) NOT NULL,
  `DemandCaseID` int(11) NOT NULL,
  `PotentialOverpressure` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`,`DemandCaseID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_PRD_OVERPRESSURE_DEMAND` (`AuditingID`),
  KEY `FK_RW_PRD_OVERPRESSURE_DEMAND_PRD_OVERPRESSURE_DEMAND` (`DemandCaseID`),
  CONSTRAINT `FK_RW_PRD_OVERPRESSURE_DEMAND_PRD_OVERPRESSURE_DEMAND` FOREIGN KEY (`DemandCaseID`) REFERENCES `prd_overpressure_demand` (`ID`),
  CONSTRAINT `FK_RW_PRD_OVERPRESSURE_DEMAND_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_prd_overpressure_demand`
--

LOCK TABLES `rw_prd_overpressure_demand` WRITE;
/*!40000 ALTER TABLE `rw_prd_overpressure_demand` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_prd_overpressure_demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_prd_protected_component`
--

DROP TABLE IF EXISTS `rw_prd_protected_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_prd_protected_component` (
  `ID` int(11) NOT NULL,
  `EquipmentRiskAvailable` tinyint(1) NOT NULL DEFAULT '0',
  `UseComponentDF` tinyint(1) NOT NULL DEFAULT '0',
  `DFClassID` int(11) DEFAULT NULL,
  `ComponentID` int(11) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_PRD_PROTECTED_COMPONENT` (`AuditingID`),
  KEY `FK_RW_PRD_PROTECTED_COMPONENT_COMPONENT_MASTER` (`ComponentID`),
  KEY `FK_RW_PRD_PROTECTED_COMPONENT_PRD_DF_CLASSES` (`DFClassID`),
  CONSTRAINT `FK_RW_PRD_PROTECTED_COMPONENT_COMPONENT_MASTER` FOREIGN KEY (`ComponentID`) REFERENCES `component_master` (`ComponentID`),
  CONSTRAINT `FK_RW_PRD_PROTECTED_COMPONENT_PRD_DF_CLASSES` FOREIGN KEY (`DFClassID`) REFERENCES `prd_df_classes` (`ID`),
  CONSTRAINT `FK_RW_PRD_PROTECTED_COMPONENT_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_prd_protected_component`
--

LOCK TABLES `rw_prd_protected_component` WRITE;
/*!40000 ALTER TABLE `rw_prd_protected_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_prd_protected_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_prd_risk`
--

DROP TABLE IF EXISTS `rw_prd_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_prd_risk` (
  `ID` int(11) NOT NULL,
  `RiskID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(250) DEFAULT NULL,
  `PoFValue` double DEFAULT NULL,
  `PoFCategory` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CoFValue` double DEFAULT NULL,
  `CoFCategory` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`RiskID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_PRD_RISK` (`AuditingID`),
  KEY `FK_RW_PRD_RISK_RW_ASSESSMENT` (`ID`),
  CONSTRAINT `FK_RW_PRD_RISK_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_prd_risk`
--

LOCK TABLES `rw_prd_risk` WRITE;
/*!40000 ALTER TABLE `rw_prd_risk` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_prd_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_primary_fluid`
--

DROP TABLE IF EXISTS `rw_primary_fluid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_primary_fluid` (
  `ID` int(11) NOT NULL,
  `FluidName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NBP` double DEFAULT NULL,
  `MW` double DEFAULT NULL,
  `Density` double DEFAULT NULL,
  `ChemicalFactor` int(11) DEFAULT NULL,
  `HealthDegree` int(11) DEFAULT NULL,
  `Flammability` int(11) DEFAULT NULL,
  `Reactivity` int(11) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_PRIMARY_FLUID` (`AuditingID`),
  CONSTRAINT `FK_RW_PRIMARY_FLUID_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_primary_fluid`
--

LOCK TABLES `rw_primary_fluid` WRITE;
/*!40000 ALTER TABLE `rw_primary_fluid` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_primary_fluid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_revision_inspection`
--

DROP TABLE IF EXISTS `rw_revision_inspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_revision_inspection` (
  `ID` int(11) NOT NULL,
  `CoverageDetailID` int(11) NOT NULL,
  `InspPlanName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CoverageName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DMItemID` int(11) NOT NULL,
  `IMTypeID` int(11) NOT NULL,
  `InspectionDate` datetime(6) NOT NULL,
  `EffectivenessCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Findings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `FindingRTF` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`,`CoverageDetailID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_REVISION_INSPECTION` (`AuditingID`),
  KEY `FK_RW_REVISION_INSPECTION_DM_ITEMS` (`DMItemID`),
  KEY `FK_RW_REVISION_INSPECTION_IM_TYPE` (`IMTypeID`),
  CONSTRAINT `FK_RW_REVISION_INSPECTION_DM_ITEMS` FOREIGN KEY (`DMItemID`) REFERENCES `dm_items` (`DMItemID`) ON DELETE CASCADE,
  CONSTRAINT `FK_RW_REVISION_INSPECTION_IM_TYPE` FOREIGN KEY (`IMTypeID`) REFERENCES `im_type` (`IMTypeID`),
  CONSTRAINT `FK_RW_REVISION_INSPECTION_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_revision_inspection`
--

LOCK TABLES `rw_revision_inspection` WRITE;
/*!40000 ALTER TABLE `rw_revision_inspection` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_revision_inspection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_risk_target`
--

DROP TABLE IF EXISTS `rw_risk_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_risk_target` (
  `ID` int(11) NOT NULL,
  `RiskTarget_A` double DEFAULT NULL,
  `RiskTarget_B` double DEFAULT NULL,
  `RiskTarget_C` double DEFAULT NULL,
  `RiskTarget_D` double DEFAULT NULL,
  `RiskTarget_E` double DEFAULT NULL,
  `RiskTarget_CA` double DEFAULT NULL,
  `RiskTarget_FC` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_RISK_TARGET` (`AuditingID`),
  CONSTRAINT `FK_RW_RISK_TARGET_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_risk_target`
--

LOCK TABLES `rw_risk_target` WRITE;
/*!40000 ALTER TABLE `rw_risk_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_risk_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_safety_factor`
--

DROP TABLE IF EXISTS `rw_safety_factor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_safety_factor` (
  `ID` int(11) NOT NULL,
  `SafetyFactorScheme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `A` double DEFAULT NULL,
  `B` double DEFAULT NULL,
  `C` double DEFAULT NULL,
  `D` double DEFAULT NULL,
  `E` double DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_SAFETY_FACTOR` (`AuditingID`),
  CONSTRAINT `FK_RW_SAFETY_FACTOR_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_safety_factor`
--

LOCK TABLES `rw_safety_factor` WRITE;
/*!40000 ALTER TABLE `rw_safety_factor` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_safety_factor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_secondary_fluid`
--

DROP TABLE IF EXISTS `rw_secondary_fluid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_secondary_fluid` (
  `ID` int(11) NOT NULL,
  `FluidName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NBP` double DEFAULT NULL,
  `MW` double DEFAULT NULL,
  `Density` double DEFAULT NULL,
  `ChemicalFactor` int(11) DEFAULT NULL,
  `HealthDegree` int(11) DEFAULT NULL,
  `Flammability` int(11) DEFAULT NULL,
  `Reactivity` int(11) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_SECONDARY_FLUID` (`AuditingID`),
  CONSTRAINT `FK_RW_SECONDARY_FLUID_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_secondary_fluid`
--

LOCK TABLES `rw_secondary_fluid` WRITE;
/*!40000 ALTER TABLE `rw_secondary_fluid` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_secondary_fluid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_settings`
--

DROP TABLE IF EXISTS `rw_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_settings` (
  `ID` int(11) NOT NULL,
  `DefaultAssessmentMethod` int(11) NOT NULL,
  `SchemaVersion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `UnlockCode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `CompanyName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_rw_settings` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_settings`
--

LOCK TABLES `rw_settings` WRITE;
/*!40000 ALTER TABLE `rw_settings` DISABLE KEYS */;
INSERT INTO `rw_settings` VALUES (1,4,'6.0.2',NULL,NULL,'2019-06-14 07:43:21',NULL,NULL,NULL,'74F0453A-AED5-4CB3-80D5-43BF6260D477');
/*!40000 ALTER TABLE `rw_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_stream`
--

DROP TABLE IF EXISTS `rw_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_stream` (
  `ID` int(11) NOT NULL,
  `AmineSolution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AqueousOperation` smallint(6) DEFAULT NULL,
  `AqueousShutdown` smallint(6) DEFAULT NULL,
  `ToxicConstituent` smallint(6) DEFAULT NULL,
  `Caustic` smallint(6) DEFAULT NULL,
  `Chloride` double DEFAULT NULL,
  `CO3Concentration` double DEFAULT NULL,
  `Cyanide` smallint(6) DEFAULT NULL,
  `ExposedToGasAmine` smallint(6) DEFAULT NULL,
  `ExposedToSulphur` smallint(6) DEFAULT NULL,
  `ExposureToAmine` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FlammableFluidID` int(11) DEFAULT NULL,
  `FlowRate` double DEFAULT NULL,
  `H2S` smallint(6) DEFAULT NULL,
  `H2SInWater` double DEFAULT NULL,
  `Hydrogen` smallint(6) DEFAULT NULL,
  `H2SPartialPressure` double DEFAULT NULL,
  `Hydrofluoric` smallint(6) DEFAULT NULL,
  `MaterialExposedToClInt` smallint(6) DEFAULT NULL,
  `MaxOperatingPressure` double DEFAULT NULL,
  `MaxOperatingTemperature` double DEFAULT NULL,
  `MinOperatingPressure` double DEFAULT NULL,
  `MinOperatingTemperature` double DEFAULT NULL,
  `CriticalExposureTemperature` double DEFAULT NULL,
  `ModelFluidID` int(11) DEFAULT NULL,
  `NaOHConcentration` double DEFAULT NULL,
  `NonFlameToxicFluidID` int(11) DEFAULT NULL,
  `LiquidLevel` double DEFAULT NULL,
  `ReleaseFluidPercentToxic` double DEFAULT NULL,
  `StoragePhase` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ToxicFluidID` int(11) DEFAULT NULL,
  `WaterpH` double DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) DEFAULT NULL,
  `TankFluidName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TankToxicFluidName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FluidHeight` double DEFAULT NULL,
  `FluidLeaveDikePercent` double DEFAULT NULL,
  `FluidLeaveDikeRemainOnSitePercent` double DEFAULT NULL,
  `FluidGoOffSitePercent` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AuditingID_UNIQUE` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_stream`
--

LOCK TABLES `rw_stream` WRITE;
/*!40000 ALTER TABLE `rw_stream` DISABLE KEYS */;
INSERT INTO `rw_stream` VALUES (94,NULL,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,NULL,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,NULL,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,NULL,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,NULL,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rw_stream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rw_thickness`
--

DROP TABLE IF EXISTS `rw_thickness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rw_thickness` (
  `ID` int(11) NOT NULL,
  `PointID` int(11) NOT NULL,
  `ThicknessID` int(11) NOT NULL AUTO_INCREMENT,
  `ThicknessDate` datetime(6) DEFAULT NULL,
  `MinReading` double DEFAULT NULL,
  `MaxReading` double DEFAULT NULL,
  `Orientation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `InspectionComment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AnalysisComment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ValidReading` tinyint(1) NOT NULL DEFAULT '0',
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ThicknessID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_RW_THICKNESS` (`AuditingID`),
  KEY `FK_RW_THICKNESS_RW_ASSESSMENT` (`ID`),
  KEY `FK_RW_THICKNESS_RW_POINTS` (`PointID`),
  CONSTRAINT `FK_RW_THICKNESS_RW_ASSESSMENT` FOREIGN KEY (`ID`) REFERENCES `rw_assessment` (`ID`),
  CONSTRAINT `FK_RW_THICKNESS_RW_POINTS` FOREIGN KEY (`PointID`) REFERENCES `rw_points` (`PointID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rw_thickness`
--

LOCK TABLES `rw_thickness` WRITE;
/*!40000 ALTER TABLE `rw_thickness` DISABLE KEYS */;
/*!40000 ALTER TABLE `rw_thickness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safety_factors`
--

DROP TABLE IF EXISTS `safety_factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `safety_factors` (
  `SafetyFactorID` int(11) NOT NULL,
  `SafetyFactorName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `A` double NOT NULL,
  `B` double NOT NULL,
  `C` double NOT NULL,
  `D` double NOT NULL,
  `E` double NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`SafetyFactorID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_SAFETY_FACTORS` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safety_factors`
--

LOCK TABLES `safety_factors` WRITE;
/*!40000 ALTER TABLE `safety_factors` DISABLE KEYS */;
INSERT INTO `safety_factors` VALUES (1,'Scaled Full-Life',1,1,1,1,1,'2019-06-14 07:43:20',NULL,NULL,NULL,'DA391605-8991-4F9A-ABDB-CFA3A289A7C7');
/*!40000 ALTER TABLE `safety_factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sites` (
  `SiteID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (3,'SITE','2019-09-09 10:58:13',1),(4,'VUNA2','2019-09-09 10:58:13',4),(8,'SITE1','2019-09-09 10:58:13',0),(9,'VUNATEST','2019-09-09 10:58:13',0),(11,'PROGRES demo','2019-09-09 10:58:13',0),(13,'Doanh Nghiep','2019-09-09 10:58:13',32);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_204_dm_htha`
--

DROP TABLE IF EXISTS `tbl_204_dm_htha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_204_dm_htha` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Susceptibility` longtext,
  `No Inspection` int(11) DEFAULT NULL,
  `1D` int(11) DEFAULT NULL,
  `1C` int(11) DEFAULT NULL,
  `1B` int(11) DEFAULT NULL,
  `2D` int(11) DEFAULT NULL,
  `2C` int(11) DEFAULT NULL,
  `2B` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_204_dm_htha`
--

LOCK TABLES `tbl_204_dm_htha` WRITE;
/*!40000 ALTER TABLE `tbl_204_dm_htha` DISABLE KEYS */;
INSERT INTO `tbl_204_dm_htha` VALUES (1,'Damage',0,2000,2000,2000,2000,2000,2000),(2,'High',2000,1800,1200,800,1600,800,400),(3,'Low',20,18,12,8,16,8,4),(4,'Medium',200,180,120,80,160,80,40),(5,'Not',1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `tbl_204_dm_htha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_213_dm_impact_exemption`
--

DROP TABLE IF EXISTS `tbl_213_dm_impact_exemption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_213_dm_impact_exemption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentThickness` double DEFAULT NULL,
  `CurveA` double DEFAULT NULL,
  `CurveB` double DEFAULT NULL,
  `CurveC` double DEFAULT NULL,
  `CurveD` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_213_dm_impact_exemption`
--

LOCK TABLES `tbl_213_dm_impact_exemption` WRITE;
/*!40000 ALTER TABLE `tbl_213_dm_impact_exemption` DISABLE KEYS */;
INSERT INTO `tbl_213_dm_impact_exemption` VALUES (1,0.25,18,-20,-55,-55),(2,0.3125,18,-20,-55,-55),(3,0.375,18,-20,-55,-55),(4,0.4375,24.2,-14,-40.5,-55),(5,0.5,31.6,-6.9,-32.2,-55),(6,0.5625,38.2,-0.6,-27.2,-51),(7,0.625,44,5.2,-22.8,-47.5),(8,0.6875,49.2,10.4,-18.7,-44.2),(9,0.75,53.9,15.1,-15,-41.1),(10,0.8125,58.2,19.5,-11.6,-38.1),(11,0.875,62.1,23.5,-8.6,-35.3),(12,0.9375,65.6,27.2,-5.7,-32.7),(13,1,68.9,30.6,-3.1,-30.1),(14,1.0625,71.9,33.8,-0.7,-27.8),(15,1.125,74.6,36.7,1.6,-25.5),(16,1.1875,77.2,39.4,3.7,-23.4),(17,1.25,79.6,42,5.8,-21.4),(18,1.3125,81.8,44.4,7.7,-19.5),(19,1.375,83.8,46.6,9.6,-17.6),(20,1.4375,85.8,48.7,11.4,-15.9),(21,1.5,87.6,50.7,13.1,-14.3),(22,1.5625,89.2,52.5,14.8,-12.7),(23,1.625,90.8,54.3,16.4,-11.2),(24,1.6875,92.3,55.9,17.9,-9.8),(25,1.75,93.7,57.5,19.4,-8.5),(26,1.8125,95.1,58.9,20.9,-7.2),(27,1.875,96.3,60.3,22.3,-5.9),(28,1.9375,97.5,61.7,23.7,-4.7),(29,2,98.6,63,25,-3.6),(30,2.0625,99.7,64.2,26.3,-2.5),(31,2.125,100.7,65.3,27.5,-1.4),(32,2.1875,101.7,66.4,28.7,-0.4),(33,2.25,102.6,67.5,29.9,0.6),(34,2.3125,103.5,68.5,31,1.6),(35,2.375,104.3,69.5,32.1,2.5),(36,2.4375,105.1,70.5,33.2,3.4),(37,2.5,105.8,71.4,34.3,4.3),(38,2.5625,106.5,72.3,35.3,5.2),(39,2.625,107.2,73.2,36.3,6),(40,2.6875,107.9,74,37.2,6.9),(41,2.75,108.5,74.8,38.2,7.7),(42,2.8125,109.1,75.6,39.1,8.5),(43,2.875,109.7,76.4,39.9,9.3),(44,2.9375,110.2,77.2,40.8,10.1),(45,3,110.8,77.9,41.7,10.9),(46,3.0625,111.3,78.7,42.5,11.7),(47,3.125,111.7,79.4,43.3,12.4),(48,3.1875,112.2,80.1,44,13.2),(49,3.25,112.6,80.8,44.8,13.9),(50,3.3125,113.1,81.5,45.5,14.7);
/*!40000 ALTER TABLE `tbl_213_dm_impact_exemption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_214_dm_not_pwht`
--

DROP TABLE IF EXISTS `tbl_214_dm_not_pwht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_214_dm_not_pwht` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tmin-Tref` int(11) DEFAULT NULL,
  `6.4` double DEFAULT NULL,
  `12.7` double DEFAULT NULL,
  `25.4` double DEFAULT NULL,
  `38.1` double DEFAULT NULL,
  `50.8` double DEFAULT NULL,
  `63.5` double DEFAULT NULL,
  `76.2` double DEFAULT NULL,
  `88.9` double DEFAULT NULL,
  `101.6` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_214_dm_not_pwht`
--

LOCK TABLES `tbl_214_dm_not_pwht` WRITE;
/*!40000 ALTER TABLE `tbl_214_dm_not_pwht` DISABLE KEYS */;
INSERT INTO `tbl_214_dm_not_pwht` VALUES (1,-73,4,61,579,1436,2336,3160,3883,4509,5000),(2,-62,3,46,474,1239,2080,2873,3581,4203,4746),(3,-51,2,30,350,988,1740,2479,3160,3769,4310),(4,-40,2,16,220,697,1317,1969,2596,3176,3703),(5,-29,1.2,7,109,405,850,1366,1897,2415,2903),(6,-18,0.9,3,39,175,424,759,1142,1545,1950),(7,-7,0.1,1.3,10,49,143,296,500,741,1008),(8,4,0,0.7,2,9,29,69,133,224,338),(9,16,0,0,1,2,4,9,19,36,60),(10,27,0,0,0,0.8,1.1,2,2,4,6),(11,38,0,0,0,0,0,0,0.9,1.1,1.2);
/*!40000 ALTER TABLE `tbl_214_dm_not_pwht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_215_dm_pwht`
--

DROP TABLE IF EXISTS `tbl_215_dm_pwht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_215_dm_pwht` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tmin-Tref` int(11) DEFAULT NULL,
  `6.4` double DEFAULT NULL,
  `12.7` double DEFAULT NULL,
  `25.4` double DEFAULT NULL,
  `38.1` double DEFAULT NULL,
  `50.8` double DEFAULT NULL,
  `63.5` double DEFAULT NULL,
  `76.2` double DEFAULT NULL,
  `88.9` double DEFAULT NULL,
  `101.6` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_215_dm_pwht`
--

LOCK TABLES `tbl_215_dm_pwht` WRITE;
/*!40000 ALTER TABLE `tbl_215_dm_pwht` DISABLE KEYS */;
INSERT INTO `tbl_215_dm_pwht` VALUES (1,-73,0,1.3,9,46,133,277,472,704,962),(2,-62,0,1.2,7,34,102,219,382,582,810),(3,-51,0,1.1,5,22,68,153,277,436,623),(4,-40,0,0.9,3,12,38,90,171,281,416),(5,-29,0,0.4,2,5,17,41,83,144,224),(6,-18,0,0,1.1,2,6,14,29,53,88),(7,-7,0,0,0.6,1.2,2,4,7,13,23),(8,4,0,0,0,0.5,1.1,1.3,2,3,4),(9,16,0,0,0,0,0,0.5,0.9,1.1,1.3),(10,27,0,0,0,0,0,0,0,0,0.2),(11,38,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tbl_215_dm_pwht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_3b21_si_conversion`
--

DROP TABLE IF EXISTS `tbl_3b21_si_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_3b21_si_conversion` (
  `conversionFactory` int(11) NOT NULL AUTO_INCREMENT,
  `SIUnits` double DEFAULT NULL,
  `USUnits` double DEFAULT NULL,
  PRIMARY KEY (`conversionFactory`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_3b21_si_conversion`
--

LOCK TABLES `tbl_3b21_si_conversion` WRITE;
/*!40000 ALTER TABLE `tbl_3b21_si_conversion` DISABLE KEYS */;
INSERT INTO `tbl_3b21_si_conversion` VALUES (1,31623,12),(2,1000,1),(3,4536,10000),(4,2.205,1),(5,25.2,55.6),(6,55.6,100),(7,1,10.763),(8,0.0929,1),(9,0.123,0.6),(10,9.744,63.32),(11,0.145,1),(12,1.8,1),(13,6.29,0.178),(14,1,3600),(15,4.685,1),(16,30.89,70),(17,0.001481,0.00723),(18,0.005,0.0164),(19,1.085,1.015),(20,1.013,0.147),(21,5328,9590),(22,5.8,14.62),(23,0.45,0.346),(24,2.6,2.279),(25,0.0296,0.0438),(26,100,14.5),(27,1,0.3967),(28,1000,6895),(29,0.00043,0.000185),(30,0.0000000976,0.000000643),(31,864,7200),(32,0.543,107),(33,0.0815,16.03),(34,86.4,183000),(35,2.382,0.0259),(36,30.5,100);
/*!40000 ALTER TABLE `tbl_3b21_si_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_511_dfb_thin`
--

DROP TABLE IF EXISTS `tbl_511_dfb_thin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_511_dfb_thin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `art` double DEFAULT NULL,
  `E` int(11) DEFAULT NULL,
  `insp` int(11) DEFAULT NULL,
  `D` int(11) DEFAULT NULL,
  `C` int(11) DEFAULT NULL,
  `B` int(11) DEFAULT NULL,
  `A` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_511_dfb_thin`
--

LOCK TABLES `tbl_511_dfb_thin` WRITE;
/*!40000 ALTER TABLE `tbl_511_dfb_thin` DISABLE KEYS */;
INSERT INTO `tbl_511_dfb_thin` VALUES (1,0,0,1,0,0,0,0),(2,0.05,4,1,1,1,0,0),(3,0.01,14,1,3,1,1,1),(4,0.15,32,1,8,2,1,1),(5,0.2,56,1,18,6,2,1),(6,0.25,87,1,32,11,4,3),(7,0.3,125,1,53,21,9,6),(8,0.35,170,1,80,36,16,12),(9,0.4,222,1,115,57,29,21),(10,0.45,281,1,158,86,47,36),(11,0.5,347,1,211,124,73,58),(12,0.55,420,1,273,173,109,89),(13,0.6,500,1,346,234,158,133),(14,0.65,587,1,430,309,222,192),(15,0.7,681,1,527,401,305,270),(16,0.75,782,1,635,510,409,370),(17,0.8,890,1,757,638,538,498),(18,0.85,1005,1,893,789,698,658),(19,0.9,1128,1,1044,963,888,856),(20,0.95,1255,1,1209,1163,1118,1098),(21,1,1390,1,1390,1390,1390,1390);
/*!40000 ALTER TABLE `tbl_511_dfb_thin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_512_dfb_thin_tank_bottom`
--

DROP TABLE IF EXISTS `tbl_512_dfb_thin_tank_bottom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_512_dfb_thin_tank_bottom` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `art` double DEFAULT NULL,
  `E` double DEFAULT NULL,
  `insp` int(11) DEFAULT NULL,
  `D` double DEFAULT NULL,
  `C` double DEFAULT NULL,
  `B` double DEFAULT NULL,
  `A` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_512_dfb_thin_tank_bottom`
--

LOCK TABLES `tbl_512_dfb_thin_tank_bottom` WRITE;
/*!40000 ALTER TABLE `tbl_512_dfb_thin_tank_bottom` DISABLE KEYS */;
INSERT INTO `tbl_512_dfb_thin_tank_bottom` VALUES (1,0.05,4,1,1,1,1,1),(2,0.1,14,1,3,1,1,1),(3,0.15,32,1,8,2,1,1),(4,0.2,56,1,18,6,2,1),(5,0.25,87,1,32,11,4,3),(6,0.3,125,1,53,21,9,6),(7,0.35,170,1,80,36,16,12),(8,0.4,222,1,115,57,29,21),(9,0.45,281,1,158,86,47,36),(10,0.5,347,1,211,124,73,58),(11,0.55,420,1,273,173,109,89),(12,0.6,500,1,346,234,158,133),(13,0.65,587,1,430,309,222,192),(14,0.7,681,1,527,401,305,270),(15,0.75,782,1,635,510,409,370),(16,0.8,890,1,757,638,538,498),(17,0.85,1005,1,893,789,696,658),(18,0.9,1126,1,1044,963,888,856),(19,0.95,1255,1,1209,1163,1118,1098),(20,1,1390,1,1390,1390,1390,1390),(21,0,0.1,1,0.1,0.1,0.1,0.1);
/*!40000 ALTER TABLE `tbl_512_dfb_thin_tank_bottom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_52_ca_properties_level_1`
--

DROP TABLE IF EXISTS `tbl_52_ca_properties_level_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_52_ca_properties_level_1` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Fluid` longtext,
  `MW` double DEFAULT NULL,
  `Density` double DEFAULT NULL,
  `NBP` double DEFAULT NULL,
  `Ambient` longtext,
  `ideal` int(11) DEFAULT NULL,
  `A` double DEFAULT NULL,
  `B` double DEFAULT NULL,
  `C` double DEFAULT NULL,
  `D` double DEFAULT NULL,
  `E` double DEFAULT NULL,
  `Auto` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_52_ca_properties_level_1`
--

LOCK TABLES `tbl_52_ca_properties_level_1` WRITE;
/*!40000 ALTER TABLE `tbl_52_ca_properties_level_1` DISABLE KEYS */;
INSERT INTO `tbl_52_ca_properties_level_1` VALUES (1,'Acid',18,62.3,212,'Liquid',3,276000,-2090,8.125,-0.0141,0.00000937,0),(2,'AlCl3',133.5,152,382,'Powder',1,43400,39700,417,24000,0,1036),(3,'C1-C2',23,15.639,-193,'Gas',1,12.3,0.115,-0.0000287,-0.0000000013,0,1036),(4,'C13-C16',205,47.728,502,'Liquid',1,-11.7,1.39,-0.000772,0.000000167,0,396),(5,'C17-C25',280,48.383,651,'Liquid',1,-22.4,1.94,-0.00112,-0.000000253,0,396),(6,'C25+',422,56.187,981,'Liquid',1,-22.4,1.94,-0.00112,-0.000000253,0,396),(7,'C3-C4',51,33.61,-6.3,'Gas',1,2.632,0.3188,-13470,0.00000001466,0,696),(8,'C5',72,39.03,97,'Liquid',1,-3.626,0.4873,-0.00026,0.000000053,0,544),(9,'C6-C8',100,42.702,210,'Liquid',1,-5.146,0.6762,-0.000365,0.00000007658,0,433),(10,'C9-C12',149,45.823,364,'Liquid',1,-8.5,1.01,-0.000556,0.000000118,0,406),(11,'CO',28,50,-312,'Gas',2,29100,8770,3090,8460,1540,1128),(12,'DEE',74,45,95,'Liquid',2,86200,255000,1540,144000,-689,320),(13,'EE',90,58,275,'Liquid',2,32500,300000,1170,208000,473,455),(14,'EEA',132,61,313,'Liquid',2,106000,240000,659,150000,1970,715),(15,'EG',62,69,387,'Liquid',2,63000,146000,1670,97300,774,745),(16,'EO',44,55,51,'Gas',2,33500,121000,1610,82400,737,804),(17,'H2',2,4.433,-423,'Gas',1,27.1,0.00927,-0.0000138,0.00000000765,0,752),(18,'H2S',34,61.993,-75,'Gas',1,31.9,0.00144,0.0000243,-0.0000000118,0,500),(19,'HCl',36,74,-121,'Gas',0,0,0,0,0,0,0),(20,'HF',20,60.37,68,'Gas',1,29.1,0.000661,-0.00000203,0.0000000025,0,32000),(21,'Methanol',32,50,149,'Liquid',2,39300,87900,1920,53700,897,867),(22,'Nitric Acid',63,95,250,'Liquid',0,0,0,0,0,0,0),(23,'NO2',90,58,275,'Liquid',0,0,0,0,0,0,0),(24,'Phosgene',99,86,181,'Liquid',0,0,0,0,0,0,0),(25,'PO',58,52,93,'Liquid',2,49500,174000,1560,115000,702,840),(26,'Pyrophoric',149,45.823,364,'Liquid',1,-8.5,1.01,-0.000556,0.000000118,0,0),(27,'Steam',18,62.3,212,'Gas',3,33400,26800,2610,8900,1170,0),(28,'Styrene',104,42.7,293,'Liquid',2,89300,215000,772,99900,2440,914),(29,'TDI',174,76,484,'Liquid',0,0,0,0,0,0,1148),(30,'Water',18,62.3,212,'Liquid',3,276000,-2090,8.125,-0.0141,0.00000937,0);
/*!40000 ALTER TABLE `tbl_52_ca_properties_level_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_58_ca_component_dm`
--

DROP TABLE IF EXISTS `tbl_58_ca_component_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_58_ca_component_dm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Fluid` longtext,
  `CAINL_gas_a` double DEFAULT NULL,
  `CAINL_gas_b` double DEFAULT NULL,
  `CAINL_liquid_a` double DEFAULT NULL,
  `CAINL_liquid_b` double DEFAULT NULL,
  `CAIL_gas_a` double DEFAULT NULL,
  `CAIL_gas_b` double DEFAULT NULL,
  `CAIL_liquid_a` double DEFAULT NULL,
  `CAIL_liquid_b` double DEFAULT NULL,
  `IAINL_gas_a` double DEFAULT NULL,
  `IAINL_gas_b` double DEFAULT NULL,
  `IAINL_liquid_a` double DEFAULT NULL,
  `IAINL_liquid_b` double DEFAULT NULL,
  `IAIL_gas_a` double DEFAULT NULL,
  `IAIL_gas_b` double DEFAULT NULL,
  `IAIL_liquid_a` double DEFAULT NULL,
  `IAIL_liquid_b` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_58_ca_component_dm`
--

LOCK TABLES `tbl_58_ca_component_dm` WRITE;
/*!40000 ALTER TABLE `tbl_58_ca_component_dm` DISABLE KEYS */;
INSERT INTO `tbl_58_ca_component_dm` VALUES (1,'Aromatics',64.14,0.963,353.5,0.883,1344,0.937,487.7,0.268,18.08,0.686,0.14,0.935,512.6,0.713,1.404,0.935),(2,'C1-C2',8.669,0.98,0,0,55.13,0.95,0,0,6.469,0.67,0,0,163.7,0.62,0,0),(3,'C13-C16',0,0,12.11,0.9,0,0,196.7,0.92,0,0,0.086,0.88,0,0,1.714,0.88),(4,'C17-C25',0,0,3.785,0.9,0,0,165.5,0.92,0,0,0.021,0.91,0,0,1.068,0.91),(5,'C25+',0,0,2.098,0.91,0,0,103,0.9,0,0,0.006,0.99,0,0,0.284,0.99),(6,'C3-C4',10.13,1,0,0,64.23,1,0,0,4.59,0.72,0,0,79.94,0.63,0,0),(7,'C5',5.115,0.99,100.6,0.89,62.41,1,0,0,2.214,0.73,0.271,0.85,41.38,0.61,0,0),(8,'C6-C8',5.846,0.98,34.17,0.89,63.98,1,103.4,0.95,2.188,0.66,0.749,0.78,41.49,0.61,8.18,0.55),(9,'C9-C12',2.419,0.98,24.6,0.9,76.98,0.95,110.3,0.95,1.111,0.66,0.559,0.76,42.28,0.61,0.848,0.53),(10,'CO',0.04,1.752,0,0,0,0,0,0,10.97,0.667,0,0,0,0,0,0),(11,'DEE',9.072,1.134,164.2,1.106,67.42,1.033,976,0.649,24.51,0.667,0.981,0.919,0,0,1.09,0.919),(12,'EE',2.595,1.005,35.45,1,0,0,0,0,6.119,0.667,14.79,1,0,0,0,0),(13,'EEA',0,1.035,23.96,1,0,0,0,0,1.261,0.667,14.13,1,0,0,0,0),(14,'EG',1.548,0.973,22.12,1,0,0,0,0,1.027,0.667,14.13,1,0,0,0,0),(15,'EO',6.712,1.069,0,0,0,0,0,0,21.46,0.667,0,0,0,0,0,0),(16,'H2',13.13,0.992,0,0,86.02,1,0,0,9.605,0.657,0,0,216.5,0.618,0,0),(17,'H2S',6.554,1,0,0,38.11,0.89,0,0,22.63,0.63,0,0,53.72,0.61,0,0),(18,'HF',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(19,'Methanol',0.005,0.909,340.4,0.934,0,0,0,0,4.425,0.667,0.363,0.9,0,0,0,0),(20,'PO',3.277,1.114,257,0.96,0,0,0,0,10.32,0.667,0.629,0.869,0,0,0,0),(21,'Pyrophoric',2.419,0.98,24.6,0.9,76.98,0.95,110.3,0.95,1.111,0.66,0.559,0.76,42.28,0.61,0.848,0.53),(22,'Styrene',3.952,1.097,21.1,1,80.11,1.055,0,0,1.804,0.667,14.36,1,83.68,0.713,143.6,1);
/*!40000 ALTER TABLE `tbl_58_ca_component_dm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_59_component_damage_person`
--

DROP TABLE IF EXISTS `tbl_59_component_damage_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_59_component_damage_person` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Fluid` longtext,
  `CAINL_gas_a` double DEFAULT NULL,
  `CAINL_gas_b` double DEFAULT NULL,
  `CAINL_liquid_a` double DEFAULT NULL,
  `CAINL_liquid_b` double DEFAULT NULL,
  `CALL_gas_a` double DEFAULT NULL,
  `CALL_gas_b` double DEFAULT NULL,
  `CALL_liquid_a` double DEFAULT NULL,
  `CALL_liquid_b` double DEFAULT NULL,
  `IAINL_gas_a` double DEFAULT NULL,
  `IAINL_gas_b` double DEFAULT NULL,
  `IAINL_liquid_a` double DEFAULT NULL,
  `IAINL_liquid_b` double DEFAULT NULL,
  `IAIL_gas_a` double DEFAULT NULL,
  `IAIL_gas_b` double DEFAULT NULL,
  `IAIL_liquid_a` double DEFAULT NULL,
  `IAIL_liquid_b` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_59_component_damage_person`
--

LOCK TABLES `tbl_59_component_damage_person` WRITE;
/*!40000 ALTER TABLE `tbl_59_component_damage_person` DISABLE KEYS */;
INSERT INTO `tbl_59_component_damage_person` VALUES (1,'Aromatics',12.76,0.963,66.01,0.883,261.9,0.937,56,0.268,2.889,0.686,0.027,0.935,83.68,0.713,0.273,0.935),(2,'C1-C2',21.83,0.96,0,0,143.2,0.92,0,0,12.46,0.67,0,0,473.9,0.63,0,0),(3,'C13-C16',0,0,34.36,0.89,0,0,539.4,0.9,0,0,0.242,0.88,0,0,4.843,0.88),(4,'C17-C25',0,0,10.7,0.89,0,0,458,0.9,0,0,0.061,0.91,0,0,3.052,0.9),(5,'C25+',0,0,6.196,0.89,0,0,303.6,0.9,0,0,0.016,0.99,0,0,0.833,0.99),(6,'C3-C4',25.64,1,0,0,171.4,1,0,0,9.702,0.75,0,0,270.4,0.63,0,0),(7,'C5',12.71,1,290.1,0.89,166.1,1,0,0,4.82,0.76,0.79,0.85,146.7,0.63,0,0),(8,'C6-C8',3.49,0.96,96.88,0.89,169.7,1,252.8,0.92,4.216,0.67,2.186,0.78,147.2,0.63,31.89,0.54),(9,'C9-C12',5.755,0.96,70.03,0.89,188.6,0.92,269.4,0.92,2.035,0.66,1.609,0.76,151,0.63,2.847,0.54),(10,'CO  ',5.491,0.991,0,0,0,0,0,0,16.91,0.692,0,0,0,0,0,0),(11,'DEE',26.76,1.025,236.7,1.219,241.5,0.997,488.9,0.864,31.71,0.682,8.333,0.814,128.3,0.657,9.258,0.814),(12,'EE',7.107,0.969,8.142,0.8,0,0,0,0,25.36,0.66,0.029,0.927,0,0,0,0),(13,'EEA',0,0.946,79.66,0.835,0,0,0,0,1.825,0.687,0.03,0.924,0,0,0,0),(14,'EG',5.042,0.947,59.96,0.869,0,0,0,0,1.435,0.687,0.027,0.922,0,0,0,0),(15,'EO',11,1.105,0,0,0,0,0,0,34.7,0.665,0,0,0,0,0,0),(16,'H2',32.05,0.933,0,0,228.8,1,0,0,18.43,0.652,0,0,636.5,0.621,0,0),(17,'H2S',10.65,1,0,0,73.25,0.94,0,0,41.43,0.63,0,0,191.5,0.63,0,0),(18,'HF',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(19,'Methanol',0,1.008,849.9,0.902,0,0,0,0,6.035,6.88,1.157,0.871,0,0,0,0),(20,'PO',8.239,1.047,352.8,0.84,0,0,0,0,13.33,0.682,2.732,0.83,0,0,0,0),(21,'Pyrophoric',5.755,0.96,70.03,0.89,188.6,0.92,269.4,0.92,2.035,0.66,1.609,0.76,151,0.63,2.847,0.54),(22,'Styrene',12.76,0.963,66.01,0.883,261.9,0.937,56,0.268,2.889,0.686,0.027,0.935,83.68,0.713,0.273,0.935);
/*!40000 ALTER TABLE `tbl_59_component_damage_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_64_dm_linning_inorganic`
--

DROP TABLE IF EXISTS `tbl_64_dm_linning_inorganic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_64_dm_linning_inorganic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `YearsSinceLastInspection` int(11) DEFAULT NULL,
  `Strip lined alloy` double DEFAULT NULL,
  `Castable refractory` double DEFAULT NULL,
  `Castable refractory severe condition` int(11) DEFAULT NULL,
  `Glass lined` int(11) DEFAULT NULL,
  `Acid Brick` int(11) DEFAULT NULL,
  `Fibreglass` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_64_dm_linning_inorganic`
--

LOCK TABLES `tbl_64_dm_linning_inorganic` WRITE;
/*!40000 ALTER TABLE `tbl_64_dm_linning_inorganic` DISABLE KEYS */;
INSERT INTO `tbl_64_dm_linning_inorganic` VALUES (1,1,0.3,0.5,9,3,0,1),(2,2,0.5,1,40,4,0,1),(3,3,0.7,2,146,6,0,1),(4,4,1,4,428,7,0,1),(5,5,1,9,1017,9,1,1),(6,6,2,16,1978,11,1,1),(7,7,3,30,3000,13,1,2),(8,8,4,53,3000,16,1,3),(9,9,6,89,3000,20,2,7),(10,10,9,146,3000,25,3,13),(11,11,12,230,3000,30,4,26),(12,12,16,351,3000,36,5,47),(13,13,22,518,3000,44,7,82),(14,14,30,738,3000,53,9,139),(15,15,40,1017,3000,63,11,228),(16,16,53,1358,3000,75,15,359),(17,17,69,1758,3000,89,19,548),(18,18,89,2209,3000,105,25,808),(19,19,115,2697,3000,124,31,1151),(20,20,146,3000,3000,146,40,1587),(21,21,184,3000,3000,170,50,2119),(22,22,230,3000,3000,199,63,2743),(23,23,286,3000,3000,230,78,3000),(24,24,351,3000,3000,266,97,3000),(25,25,428,3000,3000,306,119,3000);
/*!40000 ALTER TABLE `tbl_64_dm_linning_inorganic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_65_dm_linning_organic`
--

DROP TABLE IF EXISTS `tbl_65_dm_linning_organic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_65_dm_linning_organic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `YearInService` int(11) DEFAULT NULL,
  `MoreThan6Years` int(11) DEFAULT NULL,
  `WithinLast6Years` int(11) DEFAULT NULL,
  `WithinLast3Years` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_65_dm_linning_organic`
--

LOCK TABLES `tbl_65_dm_linning_organic` WRITE;
/*!40000 ALTER TABLE `tbl_65_dm_linning_organic` DISABLE KEYS */;
INSERT INTO `tbl_65_dm_linning_organic` VALUES (1,1,30,1,0),(2,2,89,4,0),(3,3,230,16,0),(4,4,518,53,0),(5,5,1017,146,0.2),(6,6,1758,351,1),(7,7,2697,738,4),(8,8,3000,1358,16),(9,9,3000,2209,53),(10,10,3000,3000,146),(11,11,3000,3000,351),(12,12,3000,3000,738),(13,13,3000,3000,1358),(14,14,3000,3000,2209),(15,15,3000,3000,3000),(16,16,3000,3000,3000),(17,17,3000,3000,3000),(18,18,3000,3000,3000),(19,19,3000,3000,3000),(20,20,3000,3000,3000),(21,21,3000,3000,3000),(22,22,3000,3000,3000),(23,23,3000,3000,3000),(24,24,3000,3000,3000),(25,25,3000,3000,3000);
/*!40000 ALTER TABLE `tbl_65_dm_linning_organic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_71_properties_storage_tank`
--

DROP TABLE IF EXISTS `tbl_71_properties_storage_tank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_71_properties_storage_tank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Fluid` longtext,
  `Level 1 Consequence Analysis Representative Fluid` longtext,
  `Molecular Weight` int(11) DEFAULT NULL,
  `Liquid Density` double DEFAULT NULL,
  `Liquid Density Viscosity` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_71_properties_storage_tank`
--

LOCK TABLES `tbl_71_properties_storage_tank` WRITE;
/*!40000 ALTER TABLE `tbl_71_properties_storage_tank` DISABLE KEYS */;
INSERT INTO `tbl_71_properties_storage_tank` VALUES (1,'Crude Oil','C17-C25',280,775.019,0.0369),(2,'Fuel Oil','C17-C25',280,775.019,0.0369),(3,'Gasonline','C6-C8',100,684.018,0.00401),(4,'Heavy Crude Oil','C25+',422,900.026,0.046),(5,'Heavy Diesel Oil','C13-C16',205,764.527,0.00246),(6,'Heavy Fuel Oil','C25+',422,900.026,0.046),(7,'Light Diesel Oil','C9-C12',149,734.011,0.00104);
/*!40000 ALTER TABLE `tbl_71_properties_storage_tank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_74_scc_dm_pwht`
--

DROP TABLE IF EXISTS `tbl_74_scc_dm_pwht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_74_scc_dm_pwht` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SVI` int(11) DEFAULT NULL,
  `E` int(11) DEFAULT NULL,
  `1D` int(11) DEFAULT NULL,
  `1C` int(11) DEFAULT NULL,
  `1B` int(11) DEFAULT NULL,
  `1A` int(11) DEFAULT NULL,
  `2D` int(11) DEFAULT NULL,
  `2C` int(11) DEFAULT NULL,
  `2B` int(11) DEFAULT NULL,
  `2A` int(11) DEFAULT NULL,
  `3D` int(11) DEFAULT NULL,
  `3C` int(11) DEFAULT NULL,
  `3B` int(11) DEFAULT NULL,
  `3A` int(11) DEFAULT NULL,
  `4D` int(11) DEFAULT NULL,
  `4C` int(11) DEFAULT NULL,
  `4B` int(11) DEFAULT NULL,
  `4A` int(11) DEFAULT NULL,
  `5D` int(11) DEFAULT NULL,
  `5C` int(11) DEFAULT NULL,
  `5B` int(11) DEFAULT NULL,
  `5A` int(11) DEFAULT NULL,
  `6D` int(11) DEFAULT NULL,
  `6C` int(11) DEFAULT NULL,
  `6B` int(11) DEFAULT NULL,
  `6A` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_74_scc_dm_pwht`
--

LOCK TABLES `tbl_74_scc_dm_pwht` WRITE;
/*!40000 ALTER TABLE `tbl_74_scc_dm_pwht` DISABLE KEYS */;
INSERT INTO `tbl_74_scc_dm_pwht` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(2,10,10,8,3,1,1,6,2,1,1,4,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1),(3,50,50,40,17,5,3,30,10,2,1,20,5,1,1,10,2,1,1,5,1,1,1,1,1,1,1),(4,100,100,80,33,10,5,60,20,4,1,40,10,2,1,20,5,1,1,10,2,1,1,5,1,1,1),(5,500,500,400,170,50,25,300,100,20,5,200,50,8,1,100,25,2,1,50,10,1,1,25,5,1,1),(6,1000,1000,800,330,100,50,600,200,40,10,400,100,16,2,200,50,5,1,100,25,2,1,50,10,1,1),(7,5000,5000,4000,1670,250,250,3000,1000,250,50,2000,500,80,10,1000,250,25,2,500,125,5,1,250,50,2,1);
/*!40000 ALTER TABLE `tbl_74_scc_dm_pwht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thickness_reading`
--

DROP TABLE IF EXISTS `thickness_reading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thickness_reading` (
  `ThicknessID` int(11) NOT NULL AUTO_INCREMENT,
  `PointID` int(11) NOT NULL,
  `ThicknessDate` datetime(6) DEFAULT NULL,
  `Orientation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MaxReading` double DEFAULT NULL,
  `ThicknessReading` double DEFAULT NULL,
  `CorrosionRate` double DEFAULT NULL,
  `ValidReading` tinyint(1) NOT NULL DEFAULT '0',
  `Comment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`ThicknessID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_THICKNESS_READING` (`AuditingID`),
  KEY `FK_THICKNESS_READING_POINTS` (`PointID`),
  CONSTRAINT `FK_THICKNESS_READING_POINTS` FOREIGN KEY (`PointID`) REFERENCES `points` (`PointID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thickness_reading`
--

LOCK TABLES `thickness_reading` WRITE;
/*!40000 ALTER TABLE `thickness_reading` DISABLE KEYS */;
/*!40000 ALTER TABLE `thickness_reading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_descriptor`
--

DROP TABLE IF EXISTS `unit_descriptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_descriptor` (
  `UnitDescriptorID` int(11) NOT NULL,
  `UnitCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UnitDescriptor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`UnitCode`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_UNIT_DESCRIPTOR` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_descriptor`
--

LOCK TABLES `unit_descriptor` WRITE;
/*!40000 ALTER TABLE `unit_descriptor` DISABLE KEYS */;
INSERT INTO `unit_descriptor` VALUES (1,'BAR','bar','2019-06-14 07:43:20',NULL,NULL,NULL,'6223CB7A-0001-40D7-9CDF-1208C7EC255F'),(24,'Custom','Custom Scheme','2019-06-14 07:43:20',NULL,NULL,NULL,'E4135EBC-8165-42C7-BDA0-B76754780562'),(2,'DEG_C','°C','2019-06-14 07:43:20',NULL,NULL,NULL,'D8055AE2-01FC-4D12-B6BA-5C86219A7AFC'),(3,'DEG_F','°F','2019-06-14 07:43:20',NULL,NULL,NULL,'C6106548-0E36-4A2A-84B4-1EE72B7CBF42'),(22,'European','European Scheme','2019-06-14 07:43:20',NULL,NULL,NULL,'FD3F4DA4-EA33-41A0-B4C7-CD9746F95290'),(4,'FT3','ft³','2019-06-14 07:43:20',NULL,NULL,NULL,'CA896BA8-4360-4992-9704-E577D9ADD347'),(5,'FT3HR','ft³/hr','2019-06-14 07:43:20',NULL,NULL,NULL,'4E69848B-971B-4253-88DC-DABF1EA207B2'),(6,'INCH','in','2019-06-14 07:43:20',NULL,NULL,NULL,'2FD4906B-495C-41B2-94AA-BB5F5F2CA9A6'),(7,'K','K','2019-06-14 07:43:20',NULL,NULL,NULL,'09C0B1DC-EF6A-4C2B-B596-B9741E00F6F4'),(8,'KG','kg','2019-06-14 07:43:20',NULL,NULL,NULL,'E2A03D37-E573-4EDB-BDB1-F6E5729F6513'),(21,'KSI','KSI','2019-06-14 07:43:20',NULL,NULL,NULL,'2B3938F3-85E1-4263-882D-4B2DE71451FB'),(9,'LBFFT','lbf.ft','2019-06-14 07:43:20',NULL,NULL,NULL,'7E64433D-825B-497B-90B2-C765F497BEFE'),(10,'M','m','2019-06-14 07:43:20',NULL,NULL,NULL,'5172F59E-7B66-439D-97D1-03F4600D9D09'),(11,'M3','m³','2019-06-14 07:43:20',NULL,NULL,NULL,'19BBAE86-AA40-4327-8C47-92509171F7C5'),(12,'M3HR','m³/hr','2019-06-14 07:43:20',NULL,NULL,NULL,'8EA806FB-FC10-4051-A0DD-4C77375035F9'),(13,'MIL','mil','2019-06-14 07:43:20',NULL,NULL,NULL,'F84D616D-97A5-4AB1-8054-558C68324302'),(26,'MILYR','mil/yr','2019-06-14 07:43:20',NULL,NULL,NULL,'8CB9DD9F-A333-4CB6-9212-223E0BF4FD4F'),(14,'MM','mm','2019-06-14 07:43:20',NULL,NULL,NULL,'BF41D103-006A-493A-B0BF-88DB08C1682F'),(25,'MMYR','mm/yr','2019-06-14 07:43:20',NULL,NULL,NULL,'276675AA-618D-4B6C-AFF7-A6CF0303289F'),(15,'MPA','MPa','2019-06-14 07:43:20',NULL,NULL,NULL,'39817325-FEDF-4044-9BE0-EAD7D7013E38'),(16,'MW','mW','2019-06-14 07:43:20',NULL,NULL,NULL,'62B9D36E-4030-4E54-8840-4468590A82D9'),(17,'NCM2','N/cm²','2019-06-14 07:43:20',NULL,NULL,NULL,'ECE02E84-ACD9-44D3-BD95-2B06BECEB9C1'),(18,'NM','Nm','2019-06-14 07:43:20',NULL,NULL,NULL,'899B4E50-40D8-4586-8088-FA67BBAB9420'),(19,'NM2','N/m²','2019-06-14 07:43:20',NULL,NULL,NULL,'5C5FE486-4EA8-431C-B689-E5FDE0EF8087'),(20,'PSI','psi','2019-06-14 07:43:20',NULL,NULL,NULL,'FF605C97-B3C9-47A6-92D0-E7089A90A83E'),(23,'US','US Scheme','2019-06-14 07:43:20',NULL,NULL,NULL,'6340A44D-9F29-457D-B3F4-142B58D4A4A8');
/*!40000 ALTER TABLE `unit_descriptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `UnitID` int(11) NOT NULL,
  `UnitName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SelectedUnit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`UnitID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_UNITS` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'Pressure','MPA','2019-06-14 07:43:20',NULL,NULL,NULL,'1281CE53-702B-4C43-A72E-330A30034AE7'),(2,'Temperature','DEG_C','2019-06-14 07:43:20',NULL,NULL,NULL,'2FBF6C4A-91FA-4F1D-9D59-F121C36EEFD2'),(3,'Dimensions','MM','2019-06-14 07:43:20',NULL,NULL,NULL,'ADB97936-E978-49C1-B061-A810DDFD25BE'),(4,'Volume','M3','2019-06-14 07:43:20',NULL,NULL,NULL,'5BEA2E31-E215-4BA5-8F39-AD8DF28753AF'),(5,'FlowRate','M3HR','2019-06-14 07:43:20',NULL,NULL,NULL,'282DD80C-26F5-4B35-86C1-5FA2EA9FDC9C'),(6,'Diameter','MM','2019-06-14 07:43:20',NULL,NULL,NULL,'1FEAE64C-5E24-451E-9711-213472B1DA47'),(7,'Thickness','MM','2019-06-14 07:43:20',NULL,NULL,NULL,'71A6F7C1-5017-45E2-8193-BDF6C7D5E209'),(8,'MetalLoss','MM','2019-06-14 07:43:20',NULL,NULL,NULL,'AD7450E1-EA90-4D13-8CEB-E6E5969EB4D8'),(9,'Corrosion','MM','2019-06-14 07:43:20',NULL,NULL,NULL,'315D99AA-937C-4454-8258-276C404698F4'),(10,'Torque','LBFFT','2019-06-14 07:43:20',NULL,NULL,NULL,'92E90EAC-2945-4635-8395-755F730116A2'),(11,'Scheme','Custom','2019-06-14 07:43:20',NULL,NULL,NULL,'4E80B361-94A3-4DA1-B25D-D499B12E1669'),(12,'Stress','MPA','2019-06-14 07:43:20',NULL,NULL,NULL,'B77A54FF-176C-4DB4-9818-C2D6A45A5AFF'),(14,'CorrosionRate','MMYR','2019-06-14 07:43:20',NULL,NULL,NULL,'59150AA6-BD03-42D6-BC3A-F69F6D00AB0F'),(15,'Meter','M','2019-06-14 07:43:20',NULL,NULL,NULL,'A08691CF-3D7D-4770-9229-0B554966987A');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_groups` (
  `UserGroupID` int(11) NOT NULL,
  `UserGroup` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SysGroup` tinyint(1) NOT NULL,
  `Disabled` tinyint(1) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`UserGroup`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_USER_GROUPS` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permission_list`
--

DROP TABLE IF EXISTS `user_permission_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permission_list` (
  `PermissionID` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Permission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Container` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Object` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ObjectType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Active` tinyint(1) NOT NULL,
  `SortOrder` decimal(5,3) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`PermissionID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_USER_PERMISSION_LIST` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permission_list`
--

LOCK TABLES `user_permission_list` WRITE;
/*!40000 ALTER TABLE `user_permission_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_permission_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permissions` (
  `UserPermissionID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Permission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Allowed` tinyint(1) NOT NULL,
  `Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Active` tinyint(1) NOT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`UserPermissionID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_USER_PERMISSIONS` (`AuditingID`),
  UNIQUE KEY `KEY_USER_PERMISSIONS` (`UserID`,`Category`,`Permission`),
  CONSTRAINT `FK_USER_PERMISSIONS_USERS` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LastName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `JobTitle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `UserGroupName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ADAuthentication` tinyint(1) NOT NULL DEFAULT '0',
  `SysUser` tinyint(1) NOT NULL DEFAULT '0',
  `IsActive` tinyint(1) NOT NULL DEFAULT '0',
  `LicenseKey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modified` datetime(6) DEFAULT NULL,
  `ModifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AuditingID` varchar(64) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `AuditingID` (`AuditingID`),
  UNIQUE KEY `IX_USERS` (`AuditingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('administrator','','Administrator','Administrator','','','','Administrators',0,1,1,NULL,'blfGC81EuE96PYQhKKkm8L/8goKJgzWvejPBgWaW3VI=6YTYtABd8EZtXGW4iTMItixtW3qAZBZ7elmT5wvQI1E=','2019-06-14 07:43:21',NULL,NULL,NULL,'C339E311-6BA2-4668-9F79-9EDC520E9283');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vericontent`
--

DROP TABLE IF EXISTS `vericontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vericontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VeriID` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vericontent`
--

LOCK TABLES `vericontent` WRITE;
/*!40000 ALTER TABLE `vericontent` DISABLE KEYS */;
INSERT INTO `vericontent` VALUES (25,9,'Thinning Type','2018-11-14 15:21:02'),(26,9,'Governing Thinning Damage Factor','2018-11-14 15:21:02'),(27,9,'High Temperature Hydrogen Attack Damage Factor','2018-11-14 15:21:02'),(28,9,'Other Damage Factor','2018-11-14 15:21:02'),(29,10,'Governing Thinning Damage Factor','2018-11-14 15:21:02'),(30,10,'Total Damage Factor with Local Thinning','2018-11-14 15:21:02'),(31,10,'Final Total Damage Factor','2018-11-14 15:21:02'),(32,10,'Probability of Failure Category','2018-11-14 15:21:02'),(33,18,'Thinning Type','2019-04-12 12:05:39'),(34,18,'Total Generic Frequence','2019-04-12 12:05:39'),(35,18,'Factor of Management System','2019-04-12 12:05:39'),(36,18,'Governing External Damage Factor','2019-04-12 12:05:39'),(37,18,'High Temperature Hydrogen Attack Damage Factor','2019-04-12 12:05:39'),(38,18,'Governing Brittle Fracture Damage Factor','2019-04-12 12:05:39'),(39,18,'Total Damage Factor with Local Thinning','2019-04-12 12:05:39'),(40,18,'Final Total Damage Factor','2019-04-12 12:05:39'),(41,18,'Probability of Failure','2019-04-12 12:05:39'),(42,18,'Probability of Failure Category','2019-04-12 12:05:39'),(43,19,'Thinning Type','2019-04-12 12:19:12'),(44,19,'Total Generic Frequence','2019-04-12 12:19:12'),(45,19,'Factor of Management System','2019-04-12 12:19:12'),(46,19,'Governing Thinning Damage Factor','2019-04-12 12:19:12'),(47,19,'Governing Stress Corrosion Cracking','2019-04-12 12:19:12'),(48,19,'Governing External Damage Factor','2019-04-12 12:19:12'),(49,19,'Final Total Damage Factor','2019-04-12 12:19:12'),(50,19,'Probability of Failure','2019-04-12 12:19:12'),(51,20,'Thinning Type','2019-04-12 12:26:56'),(52,20,'Total Generic Frequence','2019-04-12 12:26:56'),(53,21,'Final Total Damage Factor','2019-04-12 12:28:42'),(54,21,'Probability of Failure','2019-04-12 12:28:42'),(55,22,'Governing Brittle Fracture Damage Factor','2019-04-12 12:38:08'),(56,22,'Piping Mechanical Fatigue<br> Damage Factor','2019-04-12 12:38:08'),(57,22,'Other Damage Factor','2019-04-12 12:38:08'),(58,22,'Total Damage Factor with General Thinning','2019-04-12 12:38:08'),(59,25,'Total Generic Frequence','2019-04-18 17:51:19'),(60,25,'Governing Thinning Damage Factor','2019-04-18 17:51:19'),(61,25,'Governing Stress Corrosion Cracking','2019-04-18 17:51:19'),(62,26,'Thinning Type','2019-04-18 17:51:19'),(63,26,'Total Generic Frequence','2019-04-18 17:51:19'),(64,26,'Factor of Management System','2019-04-18 17:51:19'),(65,26,'Governing External Damage Factor','2019-04-18 17:51:19'),(66,26,'High Temperature Hydrogen Attack Damage Factor','2019-04-18 17:51:19'),(67,26,'Governing Brittle Fracture Damage Factor','2019-04-18 17:51:19'),(68,27,'Governing Thinning Damage Factor','2019-04-18 17:51:19'),(69,27,'Governing Stress Corrosion Cracking','2019-04-18 17:51:19'),(70,27,'Governing External Damage Factor','2019-04-18 17:51:19'),(71,28,'Total Generic Frequence','2019-04-18 23:36:51'),(72,28,'Factor of Management System','2019-04-18 23:36:51'),(73,29,'High Temperature Hydrogen Attack Damage Factor','2019-04-18 23:48:38'),(74,29,'Governing Brittle Fracture Damage Factor','2019-04-18 23:48:38'),(75,29,'Piping Mechanical Fatigue<br> Damage Factor','2019-04-18 23:48:38'),(76,30,'Factor of Management System','2019-04-18 23:48:38'),(77,30,'Governing Thinning Damage Factor','2019-04-18 23:48:38'),(78,30,'Governing Stress Corrosion Cracking','2019-04-18 23:48:38'),(79,31,'Factor of Management System','2019-04-18 23:48:38'),(80,31,'Governing Thinning Damage Factor','2019-04-18 23:48:38'),(81,31,'Governing Stress Corrosion Cracking','2019-04-18 23:48:38'),(82,31,'Governing Brittle Fracture Damage Factor','2019-04-18 23:48:38'),(83,31,'Piping Mechanical Fatigue<br> Damage Factor','2019-04-18 23:48:38'),(84,31,'Other Damage Factor','2019-04-18 23:48:38'),(85,31,'Total Damage Factor with General Thinning','2019-04-18 23:48:38'),(86,31,'Total Damage Factor with Local Thinning','2019-04-18 23:48:38'),(87,32,'Total Generic Frequence','2019-04-19 02:11:06'),(88,32,'Factor of Management System','2019-04-19 02:11:06'),(89,32,'Governing Thinning Damage Factor','2019-04-19 02:11:06'),(90,32,'Governing External Damage Factor','2019-04-19 02:11:06'),(91,32,'High Temperature Hydrogen Attack Damage Factor','2019-04-19 02:11:06'),(92,33,'Total Generic Frequence','2019-04-19 02:11:06'),(93,33,'Factor of Management System','2019-04-19 02:11:06'),(94,33,'Governing Thinning Damage Factor','2019-04-19 02:11:06'),(95,33,'Governing External Damage Factor','2019-04-19 02:11:06'),(96,33,'High Temperature Hydrogen Attack Damage Factor','2019-04-19 02:11:06'),(97,33,'Governing Brittle Fracture Damage Factor','2019-04-19 02:11:06'),(98,33,'Piping Mechanical Fatigue<br> Damage Factor','2019-04-19 02:11:06'),(99,33,'Other Damage Factor','2019-04-19 02:11:06'),(100,33,'Total Damage Factor with General Thinning','2019-04-19 02:11:06'),(101,34,'Governing External Damage Factor','2019-04-19 02:11:06'),(102,34,'High Temperature Hydrogen Attack Damage Factor','2019-04-19 02:11:06'),(103,34,'Governing Brittle Fracture Damage Factor','2019-04-19 02:11:06'),(104,34,'Piping Mechanical Fatigue<br> Damage Factor','2019-04-19 02:11:06'),(105,34,'Other Damage Factor','2019-04-19 02:11:06'),(106,34,'Total Damage Factor with General Thinning','2019-04-19 02:11:06'),(107,35,'Total Damage Factor with Local Thinning','2019-04-19 02:11:06'),(108,36,'Piping Mechanical Fatigue<br> Damage Factor','2019-04-19 02:11:06'),(109,36,'Other Damage Factor','2019-04-19 02:11:06'),(110,36,'Total Damage Factor with Local Thinning','2019-04-19 02:11:06'),(111,36,'Final Total Damage Factor','2019-04-19 02:11:06'),(112,36,'Probability of Failure','2019-04-19 02:11:06'),(113,37,'Governing Stress Corrosion Cracking','2019-04-19 06:40:25'),(114,37,'Governing External Damage Factor','2019-04-19 06:40:25'),(115,37,'High Temperature Hydrogen Attack Damage Factor','2019-04-19 06:40:25'),(116,37,'Governing Brittle Fracture Damage Factor','2019-04-19 06:40:25'),(117,37,'Piping Mechanical Fatigue<br> Damage Factor','2019-04-19 06:40:25'),(118,38,'Governing Stress Corrosion Cracking','2019-04-19 06:40:25'),(119,38,'Governing External Damage Factor','2019-04-19 06:40:25'),(120,38,'High Temperature Hydrogen Attack Damage Factor','2019-04-19 06:40:25'),(121,38,'Governing Brittle Fracture Damage Factor','2019-04-19 06:40:25'),(122,38,'Piping Mechanical Fatigue<br> Damage Factor','2019-04-19 06:40:25'),(123,38,'Other Damage Factor','2019-04-19 06:40:25'),(124,38,'Total Damage Factor with General Thinning','2019-04-19 06:40:25'),(125,38,'Total Damage Factor with Local Thinning','2019-04-19 06:40:25'),(126,38,'Final Total Damage Factor','2019-04-19 06:40:25'),(127,39,'Thinning Type','2019-04-19 06:40:25'),(128,39,'Total Generic Frequence','2019-04-19 06:40:25'),(129,39,'Factor of Management System','2019-04-19 06:40:25'),(130,39,'Total Damage Factor with Local Thinning','2019-04-19 06:40:25'),(131,39,'Final Total Damage Factor','2019-04-19 06:40:25'),(132,40,'Thinning Type','2019-04-19 06:40:25'),(133,40,'Total Generic Frequence','2019-04-19 06:40:25'),(134,40,'Factor of Management System','2019-04-19 06:40:25'),(135,40,'Other Damage Factor','2019-04-19 06:40:25'),(136,40,'Total Damage Factor with General Thinning','2019-04-19 06:40:25'),(137,40,'Total Damage Factor with Local Thinning','2019-04-19 06:40:25'),(138,40,'Final Total Damage Factor','2019-04-19 06:40:25'),(139,41,'Thinning Type','2019-04-19 06:40:25'),(140,41,'Total Generic Frequence','2019-04-19 06:40:25'),(141,41,'Factor of Management System','2019-04-19 06:40:25'),(142,41,'Other Damage Factor','2019-04-19 06:40:25'),(143,41,'Total Damage Factor with General Thinning','2019-04-19 06:40:25'),(144,41,'Total Damage Factor with Local Thinning','2019-04-19 06:40:25'),(145,41,'Final Total Damage Factor','2019-04-19 06:40:25'),(146,41,'Probability of Failure','2019-04-19 06:40:25'),(147,41,'Probability of Failure Category','2019-04-19 06:40:25');
/*!40000 ALTER TABLE `vericontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifacation`
--

DROP TABLE IF EXISTS `verifacation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verifacation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proposal` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `Is_active` int(11) DEFAULT NULL,
  `manager` text,
  `facility` int(11) DEFAULT NULL,
  `com` text,
  `eq` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifacation`
--

LOCK TABLES `verifacation` WRITE;
/*!40000 ALTER TABLE `verifacation` DISABLE KEYS */;
INSERT INTO `verifacation` VALUES (9,'vunaproposal','2018-11-14 15:21:02',1,'Do Anh Tuan',1,'vuna','Vuna Eq Demo'),(10,'New Excel Proposal 05-03-18','2018-11-14 15:21:02',1,'Do Anh Tuan',1,'Component Hoang','Pressure Machine'),(11,'vunaproposal','2018-11-14 15:52:59',1,'Do Anh Tuan',1,'vuna','Vuna Eq Demo'),(12,'vunaproposal','2018-11-14 15:52:59',1,'Do Anh Tuan',1,'vuna','Vuna Eq Demo'),(13,'New Excel Proposal 05-03-18','2018-11-14 15:52:59',1,'Do Anh Tuan',1,'Component Hoang','Oil Tube'),(14,'New Excel Proposal 05-03-18','2018-11-14 15:52:59',1,'Do Anh Tuan',1,'Component Hoang','Pressure Machine'),(15,'da','2019-04-12 10:48:19',1,'Do Anh Tuan',28,'dá','tuan'),(16,'da','2019-04-12 11:19:23',1,'Do Anh Tuan',28,'dá','tuan'),(17,'da','2019-04-12 11:33:24',1,'Do Anh Tuan',28,'dá','tuan'),(18,'da','2019-04-12 12:05:39',1,'Do Anh Tuan',28,'dá','tuan'),(19,'da','2019-04-12 12:19:12',1,'Do Anh Tuan',28,'dá','tuan'),(20,'da','2019-04-12 12:26:56',1,'Do Anh Tuan',28,'dá','tuan'),(21,'da','2019-04-12 12:28:42',1,'Do Anh Tuan',28,'dá','tuan'),(22,'da','2019-04-12 12:38:08',1,'Do Anh Tuan',28,'dá','tuan'),(23,'da','2019-04-18 17:51:19',1,'Do Anh Tuan',28,'dá','tuan'),(24,'da','2019-04-18 17:51:19',1,'Do Anh Tuan',28,'dá','tuan'),(25,'da','2019-04-18 17:51:19',1,'Do Anh Tuan',28,'dá','tuan'),(26,'da','2019-04-18 17:51:19',1,'Do Anh Tuan',28,'dá','tuan'),(27,'da','2019-04-18 17:51:19',1,'Do Anh Tuan',28,'dá','tuan'),(28,'da','2019-04-18 23:36:51',1,'Do Anh Tuan',28,'dá','tuan'),(29,'da','2019-04-18 23:48:38',1,'Do Anh Tuan',28,'dá','tuan'),(30,'da','2019-04-18 23:48:38',1,'Do Anh Tuan',28,'dá','tuan'),(31,'da','2019-04-18 23:48:38',1,'Do Anh Tuan',28,'dá','tuan'),(32,'da','2019-04-19 02:11:06',1,'Do Anh Tuan',28,'dá','tuan'),(33,'da','2019-04-19 02:11:06',1,'Do Anh Tuan',28,'dá','tuan'),(34,'da','2019-04-19 02:11:06',0,'Do Anh Tuan',28,'dá','tuan'),(35,'da','2019-04-19 02:11:06',0,'Do Anh Tuan',28,'dá','tuan'),(36,'da','2019-04-19 02:11:06',1,'Do Anh Tuan',28,'dá','tuan'),(37,'da','2019-04-19 06:40:25',1,'Do Anh Tuan',28,'dá','tuan'),(38,'da','2019-04-19 06:40:25',1,'Do Anh Tuan',28,'dá','tuan'),(39,'da','2019-04-19 06:40:25',1,'Do Anh Tuan',28,'dá','tuan'),(40,'da','2019-04-19 06:40:25',1,'Do Anh Tuan',28,'dá','tuan'),(41,'da','2019-04-19 06:40:25',0,'Do Anh Tuan',28,'dá','tuan');
/*!40000 ALTER TABLE `verifacation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_business`
--

DROP TABLE IF EXISTS `z_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compa_infor` text,
  `name_company` text,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_business`
--

LOCK TABLES `z_business` WRITE;
/*!40000 ALTER TABLE `z_business` DISABLE KEYS */;
INSERT INTO `z_business` VALUES (1,'Trường Đại học Bách khoa Hà Nội (tên tiếng Anh\r\nHanoi university of science and technology – viết tắt HUST)\r\nđược thành lập theo Nghị định số 147/NĐ ngày\r\n6-3-1956 do Bộ trưởng Bộ Giáo dục Nguyễn Văn Huyên ký.\r\nĐây là trường đại học kỹ thuật đầu tiên của nước ta\r\ncó nhiệm vụ đào tạo kỹ sư công nghiệp cho công cuộc\r\nxây dựng CNXH ở miền Bắc và đấu tranh giải phóng miền Nam;\r\nlà trung tâm đào tạo, nghiên cứu khoa học và công nghệ đa ngành,\r\nđa lĩnh vực; kết hợp chặt chẽ giữa đào tạo với nghiên cứu\r\nkhoa học nhằm tạo nguồn nhân lực chất lượng cao\r\nvà bồi dưỡng nhân tài khoa học, công nghệ; định hướng phát triển\r\nthành đại học nghiên cứu ngang tầm với các đại học\r\ncó uy tín trong khu vực và trên thế giới.','SITE',1),(2,'Triển khai đề án: “Quy hoạch tổng thể xây dựng và phát triển trường Đại học Bách Khoa Hà Nội giai đoạn 2006 – 2030”, với mục tiêu phấn đấu” Xây dựng ĐHBK Hà Nội thành Trường đại học nghiên cứu trọng điểm quốc gia về khoa học & công nghệ, đào tạo đa ngành, đa lĩnh vực, đạt trình độ và chất lượng khu vực và thế giới; là địa chỉ tin cậy, hấp dẫn đối với xã hội và các nhà đầu tư phát triển công nghệ, giới doanh nghiệp, tài chính trong và ngoài nước”, được sự đồng ý của Bộ Giáo dục và Đào tạo ngày 24/03/2008 trường ĐHBK Hà Nội đã công bố thành lập công ty cổ phần Đầu tư và Phát triển công nghệ Bách Khoa Hà Nội (BK-Holdings). Đây là mô hình doanh nghiệp lần đầu tiên được phép thành lập tại một trường Đại học ở Việt Nam.','VUNA2',4),(3,'Năm 1998, Trung tâm Sản xuất sạch Việt Nam (VNCPC) được thành lập theo khuôn khổ dự án US/VIE/96/063 do Chính phủ Thụy Sĩ (thông qua Cục Kinh tế Liên bang Thụy Sĩ – SECO) tài trợ. Dự án này do Tổ chức Phát triển Liên hợp quốc (UNIDO) điều hành và Trường Đại học Bách Khoa (trực tiếp là Viện Khoa học và Công nghệ Môi trường) thực hiện.\r\nMục tiêu hoạt động cốt yếu của VNCPC lúc đó là phổ biến rộng rãi khái niệm Sản xuất sạch hơn (SXSH) và xúc tiến việc áp dụng tiếp cận chủ động phòng ngừa ô nhiễm này vào các doanh nghiệp công nghiệp ở Việt Nam. ','Doanh Nghiep',32);
/*!40000 ALTER TABLE `z_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_comment`
--

DROP TABLE IF EXISTS `z_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_posts` int(11) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_comment`
--

LOCK TABLES `z_comment` WRITE;
/*!40000 ALTER TABLE `z_comment` DISABLE KEYS */;
INSERT INTO `z_comment` VALUES (1,1,12,'xin chào','2018-08-14 10:29:32'),(2,1,12,'hihi','2018-08-14 10:47:48'),(3,2,12,'hello','2018-08-14 10:59:03'),(4,2,12,'1\r\n2\r\n3\r\n4\r\n5','2018-08-14 10:59:11'),(5,2,13,'no','2018-08-14 14:40:41'),(6,2,13,'ddi','2018-08-14 14:40:49'),(7,1,13,'aaa','2018-08-15 14:34:15'),(8,1,13,'dd','2018-08-15 14:35:15'),(9,1,12,'ahihi','2018-08-15 14:45:21'),(10,2,12,'â','2018-08-15 15:24:04'),(11,1,12,'huhu\r\n','2018-08-15 15:24:47'),(12,2,13,'fsdfsf','2018-08-20 15:21:58'),(13,1,13,'dsd\r\n','2018-09-05 14:11:15'),(14,2,15,'vsf','2018-09-10 09:56:20'),(15,2,15,'fsd','2018-09-10 09:56:28'),(16,3,12,'aaaaaa','2018-09-25 14:07:20'),(17,1,15,'edsds','2019-04-12 10:55:14'),(18,2,15,'asdfasdf','2019-04-12 10:56:39'),(19,1,15,'fsfds','2019-04-12 11:07:14'),(20,1,15,'hhhh','2019-04-12 11:08:08'),(21,1,15,'ádasdsa','2019-04-12 11:12:40'),(22,2,13,'adasdasd','2019-04-12 11:19:42'),(23,2,15,'fsfafsfs','2019-04-12 11:20:34');
/*!40000 ALTER TABLE `z_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_notification`
--

DROP TABLE IF EXISTS `z_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `object` varchar(100) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_notification`
--

LOCK TABLES `z_notification` WRITE;
/*!40000 ALTER TABLE `z_notification` DISABLE KEYS */;
INSERT INTO `z_notification` VALUES (2,2,'Le Van Hai',' đã phản hồi bài viết ','Android và Material Design','12',NULL,1),(3,2,'Le Van Hai',' đã phản hồi bài viết ','Android và Material Design','12','2018-08-15 15:24:47',1),(4,2,'Le Van Hai',' đã phản hồi bài viết ','aa','13','2018-09-05 14:11:15',1),(5,1,'Tran Trung Hieu',' đã phản hồi bài viết ','fdf','15','2018-09-10 09:56:20',1),(6,1,'Tran Trung Hieu',' đã phản hồi bài viết ','fdf','15','2018-09-10 09:56:28',1),(7,2,'Do Anh Tuan',' đã phản hồi bài viết ','Android và Material Design','12','2018-09-25 14:07:20',1);
/*!40000 ALTER TABLE `z_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_posts`
--

DROP TABLE IF EXISTS `z_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_posts`
--

LOCK TABLES `z_posts` WRITE;
/*!40000 ALTER TABLE `z_posts` DISABLE KEYS */;
INSERT INTO `z_posts` VALUES (11,2,'aaa','ấdjd\r\ndv\r\nd\r\nd\r\nd\r\nd','2018-08-09 11:19:05','d',34),(12,2,'Android và Material Design','Bạn có thể đã nghe về Android Material Design . Đã được giới thiệu trong phiên bản Android Lollipop . Trong Android Material Design có rất \r\nnhiều thứ mới mà đã được giới thiệu nhưMaterial Theme New Widgets,Custom Shadows, Vector drawbles, Custom Animations. Nếu bạn chưa \r\ntừng làm việc với Android Material Design thì có lẽ bài viết này sẽ là sự khởi đầu tốt cho bạn. Trong bài viết này tôi sẽ giới thiệu những bước cơ\r\n bản nhất của Android Material Design. Những link bên dưới có thể giúp bạn hiểu hơn về Material Design.','2018-08-09 14:43:43','android',121),(13,2,'aa','Bạn có thể đã nghe về Android Material Design Bạn có thể đã nghe về Android Material Design Bạn có thể đã nghe về Android Material Design \r\nBạn có thể đã nghe về Android Material Design Bạn có thể đã nghe về Android Material Design Bạn có thể đã nghe về Android Material D','2018-08-09 14:50:31','â',27),(14,1,'fdf','fdsfs','2018-09-05 14:11:29','dfsdfds',2),(15,1,'fdf','fdsfs','2018-09-05 14:11:34','dfsdfds',31);
/*!40000 ALTER TABLE `z_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_profile_business`
--

DROP TABLE IF EXISTS `z_profile_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_profile_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_detail` varchar(1000) DEFAULT NULL,
  `image_name` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `z_profile_business_user_id_ea5e2f97_fk_z_user_id` (`user_id`),
  CONSTRAINT `z_profile_business_user_id_ea5e2f97_fk_z_user_id` FOREIGN KEY (`user_id`) REFERENCES `z_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_profile_business`
--

LOCK TABLES `z_profile_business` WRITE;
/*!40000 ALTER TABLE `z_profile_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_profile_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_user`
--

DROP TABLE IF EXISTS `z_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `adress` varchar(200) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `other_info` int(11) DEFAULT NULL,
  `kind` varchar(20) DEFAULT NULL,
  `date_joined` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_user`
--

LOCK TABLES `z_user` WRITE;
/*!40000 ALTER TABLE `z_user` DISABLE KEYS */;
INSERT INTO `z_user` VALUES (1,'Le Van Hai','levanhai2206@gmail.com','0433133133','Số 1 Đại Cổ Việt, Hai Bà Trưng, Hà Nội ','user1','pass1',NULL,'factory',NULL,1),(2,'Tran Trung Hieu','hieutran@gmail.com','0901020304','Yen Bai','user2','pass2',NULL,'citizen',NULL,1),(3,'Do Anh Tuan','doanhtuan14111997@gmail.com','01223344551','Ha Noi ','user3','pass3',NULL,'manager',NULL,1),(4,'Do Anh','tuan9962199197@gmail.com','0337788122','Số 245 Định Công, Hoàng Mai, Hà Nội ','user4','pass4',NULL,'factory',NULL,1),(32,'Trần Trung Hiếu ','20154077@student.hust.edu.vn','0962199197','Số 24, Giai Phóng, Hai Bà Trưng,','user7','123456789',NULL,'factory','2018-08-30 14:10:36',1);
/*!40000 ALTER TABLE `z_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zm_people_sent`
--

DROP TABLE IF EXISTS `zm_people_sent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zm_people_sent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `subject` text,
  `emailsent` text,
  `emailto` text,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zm_people_sent`
--

LOCK TABLES `zm_people_sent` WRITE;
/*!40000 ALTER TABLE `zm_people_sent` DISABLE KEYS */;
INSERT INTO `zm_people_sent` VALUES (1,'fsfsdfsd','fsdfsdf','hieutran@gmail.com','hieutran@gmail.com','2018-08-16'),(2,'kiem dinh','kiem tra thiet bi','hieutran@gmail.com','hieutran@gmail.com','2018-08-16'),(3,'kiem dinh','kiem tra thiet bi','hieutran@gmail.com','hieutran@gmail.com','2018-08-16'),(7,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL),(8,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL),(9,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL),(10,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL),(11,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL),(12,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL),(13,'fdsfsdfds','fdsfsfd','levanhai2206@gmail.com','levanhai2206@gmail.com',NULL),(14,'fdsfsdfds','fdsfsfd','levanhai2206@gmail.com','levanhai2206@gmail.com',NULL),(15,'Haha','Subject','hieutran@gmail.com','doanhtuan14111997@gmail.com',NULL);
/*!40000 ALTER TABLE `zm_people_sent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zm_people_to`
--

DROP TABLE IF EXISTS `zm_people_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zm_people_to` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `subject` text,
  `emailsent` text,
  `emailto` text,
  `date` date DEFAULT NULL,
  `Is_see` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zm_people_to`
--

LOCK TABLES `zm_people_to` WRITE;
/*!40000 ALTER TABLE `zm_people_to` DISABLE KEYS */;
INSERT INTO `zm_people_to` VALUES (7,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL,0),(8,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL,0),(9,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL,0),(10,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL,0),(11,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL,0),(12,'saaaa','kiem tra','hieutran@gmail.com','doanhtuan14111997@gaml.com',NULL,0),(13,'fdsfsdfds','fdsfsfd','levanhai2206@gmail.com','levanhai2206@gmail.com',NULL,1),(14,'Haha','Subject','hieutran@gmail.com','doanhtuan14111997@gmail.com',NULL,1);
/*!40000 ALTER TABLE `zm_people_to` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-27 10:04:02
