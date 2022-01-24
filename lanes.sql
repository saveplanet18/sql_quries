-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 172.16.100.32    Database: wwa
-- ------------------------------------------------------
-- Server version	5.5.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `grdb_Dashboard_Unique_Lanes`
--

DROP TABLE IF EXISTS `grdb_Dashboard_Unique_Lanes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grdb_Dashboard_Unique_Lanes` (
  `iDashboardLandID` bigint(20) NOT NULL AUTO_INCREMENT,
  `cCustomeralias` varchar(30) NOT NULL DEFAULT '',
  `cScaccodeOFR` varchar(5) NOT NULL DEFAULT '',
  `cScaccodeFOB` varchar(5) NOT NULL DEFAULT '',
  `cScaccodePLC` varchar(5) NOT NULL DEFAULT '',
  `cOriginRegioncode` varchar(20) NOT NULL DEFAULT '',
  `cOriginCountrycode` varchar(20) NOT NULL DEFAULT '',
  `cOriginUncode` varchar(5) NOT NULL DEFAULT '',
  `cDestinationRegioncode` varchar(20) NOT NULL DEFAULT '',
  `cDestinationCountrycode` varchar(20) NOT NULL DEFAULT '',
  `cDestinationUncode` varchar(5) NOT NULL DEFAULT '',
  `iOFRExist` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Active OFR - 0, Missing - 1 Deleted - 2',
  `iFOBExist` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Active FOB - 0, Missing - 1 Deleted - 2',
  `iPLCExist` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Active PLC - 0, Missing - 1 Deleted - 2',
  `cQuotingMemberOFR` varchar(30) NOT NULL DEFAULT '',
  `cQuotingMemberFOB` varchar(30) NOT NULL DEFAULT '',
  `cQuotingMemberPLC` varchar(30) NOT NULL DEFAULT '',
  `cOption1` varchar(255) NOT NULL DEFAULT '1',
  `cOption2` varchar(255) NOT NULL DEFAULT '',
  `iStatus` int(11) NOT NULL DEFAULT '0',
  `iEnteredby` int(11) NOT NULL DEFAULT '0',
  `tEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iUpdatedby` int(11) NOT NULL DEFAULT '0',
  `tUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`iDashboardLandID`),
  KEY `IX_STATUS` (`iStatus`),
  KEY `IX_OPTION_FLAG` (`cOption1`),
  KEY `IX_OFR_FOB_PLC_EXT` (`iOFRExist`,`iFOBExist`,`iPLCExist`),
  KEY `IX_CUSTOMER` (`cCustomeralias`),
  KEY `IX_ORG_DEST` (`cOriginUncode`,`cDestinationUncode`),
  KEY `IX_MEMBERSCAC` (`cScaccodeOFR`,`cScaccodeFOB`,`cScaccodePLC`),
  KEY `IX_QuotingSCAC` (`cQuotingMemberOFR`,`cQuotingMemberFOB`,`cQuotingMemberPLC`)
) ENGINE=InnoDB AUTO_INCREMENT=8196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grdb_Dashboard_Unique_Lanes`
--

LOCK TABLES `grdb_Dashboard_Unique_Lanes` WRITE;
/*!40000 ALTER TABLE `grdb_Dashboard_Unique_Lanes` DISABLE KEYS */;
INSERT INTO `grdb_Dashboard_Unique_Lanes` VALUES (8191,'LESCHACO','ELDA','SHPT','ELDA','INDIAN SUB','PK','PKKHI','EMEA','IL','ILHFA',0,1,1,'ELDAN-CARGO','STI-KHI','ELDAN-CARGO','1','',0,21121986,'2021-05-15 17:36:55',0,'0000-00-00 00:00:00'),(8192,'TOLL','SHPT','SHPT','TMGB','NORAM','US','USNYC','INDIAN SUB','IN','INAMD',1,0,1,'STI-USA','STI-USA','TEAMGLOBAL','1','',0,21121986,'2021-05-15 17:39:50',0,'0000-00-00 00:00:00'),(8193,'AGILITY','ELDA','SHPT','ELDA','INDIAN SUB','PK','PKKHI','EMEA','IL','ILHFA',1,1,0,'ELDAN-CARGO','STI-KHI','ELDAN-CARGO','1','',0,21121986,'2021-05-15 17:44:06',0,'0000-00-00 00:00:00'),(8194,'TOLL','ELDA','SHPT','ELDA','INDIAN SUB','PK','PKKHI','EMEA','IL','ILHFA',1,1,0,'ELDAN-CARGO','STI-KHI','ELDAN-CARGO','1','',0,21121986,'2021-05-15 17:44:07',0,'0000-00-00 00:00:00'),(8195,'TOLL','SHPT','SHPT','TMGB','NORAM','US','USNYC','INDIAN SUB','IN','INNSA',1,1,0,'STI-USA','STI-USA','TEAMGLOBAL','1','',0,21121986,'2021-05-15 17:44:07',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `grdb_Dashboard_Unique_Lanes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-22  6:10:27
