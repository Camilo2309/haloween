-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: enigmes
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adresse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,'1 place de l’hippodrome, 69002 Lyon','45.7450356','4.823525700000005'),(2,'112 Cours Charlemagne, 69002 Lyon','45.7408777','4.818954699999949'),(3,'100 Cours Charlemagne, 69002 Lyon','45.7424072','4.81968710000001'),(4,'10 Place des Archives, 69002 Lyon','45.746622','4.826411000000007'),(6,'14 Cours de Verdun Gensoul, 69002 Lyon','45.7477025','4.827386299999944'),(8,'1 Place des Archives, 69002 Lyon','45.7477966','4.824626699999953'),(9,'13 Rue Delandine, 69002 Lyon','45.7469504','4.827567300000055'),(10,'30 Cours de Verdun Perrache, 69002 Lyon','45.74829709999999','4.828240700000038'),(11,'15 Rue Pasteur, 69007 Lyon','45.7545722','4.8410652'),(14,'Place Bellecour, 69002 Lyon','45.758461685024685','4.8321342429912875'),(15,'5 Rue Thomassin, 69002 Lyon','45.76170648747057','4.833686121986261'),(16,'15 Rue de la Poulaillerie, 69002 Lyon','45.764311175033896','4.835145243690363'),(17,'26 Quai Jean Moulin, 69001 Lyon','45.763907007348465','4.837870368049494'),(18,'33 Rue du Capitaine Robert Cluzan, 69007 Lyon','45.75087273618812','4.841501707931457'),(19,'272 Rue de Créqui, 69003 Lyon','45.751875899732624','4.848870637998402'),(20,'52 Rue Moncey, 69003 Lyon','45.75813403529661','4.846166971311391'),(21,'Esplanade de Fourvière, 69005 Lyon','45.76278975260714','4.822757944976274'),(22,'40bis Rue Tramassac, 69005 Lyon','45.76000839079471','4.82574462890625'),(23,'12 Montée Nicolas de Lange, 69005 Lyon','45.763840649275146','4.821152687072754'),(24,'7 Montée Saint-Barthélémy, 69005 Lyon','45.7649633313958','4.826538562774658'),(25,'3 Rue des Augustins, 69001 Lyon','45.76761277162252','4.829864501953125'),(27,'14 Avenue Debrousse, 69005 Lyon','45.74957205862929','4.813155467542856');
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonbon`
--

DROP TABLE IF EXISTS `bonbon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bonbon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonbon`
--

LOCK TABLES `bonbon` WRITE;
/*!40000 ALTER TABLE `bonbon` DISABLE KEYS */;
INSERT INTO `bonbon` VALUES (1,'Arlequin',''),(2,'Dragibus',''),(3,'Shoko-bons',''),(4,'Carambar',''),(5,'Fraise Tagada',''),(6,'Kinder Surprise',''),(7,'Chupa-Chups',''),(8,'Malabar',''),(9,'Schtroumpfs',''),(10,'Tetes Brulees','');
/*!40000 ALTER TABLE `bonbon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enigme`
--

DROP TABLE IF EXISTS `enigme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `enigme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `vrai` varchar(255) DEFAULT NULL,
  `faux` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enigme`
--

LOCK TABLES `enigme` WRITE;
/*!40000 ALTER TABLE `enigme` DISABLE KEYS */;
INSERT INTO `enigme` VALUES (1,'Ma reponse est simple, mais je suis compliquee\r\nCelui qui me trouve dans le conte, est sauve\r\nL\'imagination, pour me connaitre, est la clef\r\nQui suis-je ?','L\'ENIGME','TA MERE'),(2,'Ma legende est nee d\'un prince\r\nJe ne suis pas vivant mais je ne suis pas mort\r\nMon nom signifie le dragon\r\nJe suis poussiere au soleil\r\nQui suis-je ?','DRACULA','CLAUDE FRANCOIS'),(3,'Les yeux ouverts tu ne me vois pas\r\nJ\'aime les recoins, les cavernes\r\nJe vis aussi au fond des mers\r\nQui suis-je ?	','L\'OBSCURITEE','UN CLUB LIBERTIN'),(4,'Je suis sans lumiere et eclaire Halloween\r\nJe fais peur aux fantômes \r\nmais les mortels me mangent\r\nJe nais dans les jardins et meurs sur les fenetres\r\nQui suis-je ?','LA CITROUILLE','TITI'),(5,'Mon domaine est la toile\r\nJe ne suis pas un insecte\r\nJe prends souvent la mouche\r\nQui suis-je ?','L\'ARAIGNEE','GOOGLE'),(6,'J\'habite les contes de fee\r\nJe suis souvent dans la cheminee\r\nJe suis l\'ami des sorciers\r\nQui suis-je ?','LE CHAUDRON','LE PERE NOEL'),(7,'Je vis la nuit et je meurs le jour... \r\nJ\'existe comme je n\'existe pas... \r\nQuand tu me croises rarement tu te souviens de moi... \r\nQui suis-je ?','LE REVE','UN TRAVELOT'),(8,'Je suis un mythe, une legende\r\nJe n\'existe qu\'une fois le mois\r\nJe suis ne suis ni un homme, ni une bete \r\nLes gens ont peur de moi\r\nQui suis-je ?','LE LOUP GAROU','GAROU LE CHANTEUR'),(9,'Quand c\'est facile, ce n\'est pas...\r\nLes potions sont ma specialite...\r\nQui suis-je ?','LE SORCIER','UN DEALER'),(10,'Je viens du fond des ages\r\nJ\'ai terrifie tes ancetres\r\nJe plais aux enfants\r\nJe suis une croyance Celte\r\nQui suis-je ?','HALLOWEEN','FANTOMAS');
/*!40000 ALTER TABLE `enigme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'crapo','$2y$10$udxoe1qoMFj3OKUC.rKYou9ojBCQXu054Wu5Oll.8HnJfygzY3B4q',NULL),(3,'test','$2y$10$sooMeVsMJVHC739c.dDNuuuPuZg9tSvxhofVSMtgNTIMk8DMpf6fa',NULL),(4,'testee','$2y$10$oYC/D9aPK00knWcZS6C2GeIPtB7NIKJ1Jxzuj4Qx/bDXokn.bEdE6',NULL),(5,'testzz','$2y$10$xN8ilMKXTkE9m9HZkV8AK.xTIu4IGfQ1/ihNjO0GQ9MUT3f/lAgua',NULL),(6,'nabo','$2y$10$c1rfBHGsq0nRXCXG59qeUOwgi3m5kVPv8rE5P2hp9fDM7EBxnxq/O',NULL),(7,'facho','$2y$10$FimpZoOjOFzjnj9qfijWA.OKhdeaALW/dqb8yvauWeaQkJuPkcZ32',NULL),(8,'trafik','$2y$10$i1csv7X0dSi.HweWUE6BneGZlufwbREaB72lgofTd2H8dDVdPIw9S',NULL),(9,'testa','$2y$10$CNaKZ2scpUmL.BL9Z5GpzeoJLmH1oFPqs2Es3wJch7iFboh5D7GKa',NULL),(10,'jef','$2y$10$iY9n0M3zvDlOTjF2zWRqHu/mkl51Qy05i3M2HXAnqZrcPDqJRL13e',NULL),(11,'KKK','$2y$10$wFsiBbcWjPKo5iPEegdDF.o8bsrHr.V/7BNgzy9BGg.aS7lpkp84m',NULL),(12,'jef2','$2y$10$g1JfflTfVT5HHLQ6YBuADeTev5iMIXVbRHhlhHZqgrw3rfuPyyCiC',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 14:20:51
