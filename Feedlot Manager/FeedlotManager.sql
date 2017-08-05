-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: feedlotmanager
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `aborto`
--

DROP TABLE IF EXISTS `aborto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aborto` (
  `id_aborto` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_tipo_parto` char(36) DEFAULT NULL,
  `id_tipo_aborto` char(36) DEFAULT NULL,
  `id_causa_muerte` char(36) DEFAULT NULL,
  `id_hembra` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_aborto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aborto`
--

LOCK TABLES `aborto` WRITE;
/*!40000 ALTER TABLE `aborto` DISABLE KEYS */;
/*!40000 ALTER TABLE `aborto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alimento`
--

DROP TABLE IF EXISTS `alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alimento` (
  `id_alimento` char(36) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` char(255) NOT NULL,
  `costo_unitario` decimal(20,2) DEFAULT NULL,
  `id_unidad` char(36) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_alimento`,`codigo`,`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimento`
--

LOCK TABLES `alimento` WRITE;
/*!40000 ALTER TABLE `alimento` DISABLE KEYS */;
INSERT INTO `alimento` VALUES ('0c528340-0ca5-11e6-8f12-025041000001',270,'Pacas de zacate',0.00,'4','S'),('1541cb01-0ca5-11e6-8f12-025041000001',110,'Aceite acidulado',0.00,'4','S'),('1fa355ce-0ca5-11e6-8f12-025041000001',357,'Zilmax',0.00,'4','S'),('2818a927-0ca5-11e6-8f12-025041000001',250,'Levadura safmannan',0.00,'4','S'),('309cf9d9-0ca5-11e6-8f12-025041000001',255,'Maiz',0.00,'4','S'),('391e9114-0ca5-11e6-8f12-025041000001',162,'Bostec v-15',0.00,'4','S'),('42896b9f-0ca5-11e6-8f12-025041000001',306,'Soya',0.00,'4','S'),('4aaac044-0ca5-11e6-8f12-025041000001',277,'Polinaza',0.00,'4','S'),('52b74a86-0ca5-11e6-8f12-025041000001',295,'Salvado de Trigo',0.00,'4','S'),('5cfa1eef-0ca5-11e6-8f12-025041000001',159,'Bostec corral f-75 rcg',0.00,'4','S'),('b9e85cfd-0ca5-11e6-8f12-025041000001',282,'Procreatin',0.00,'4','S');
/*!40000 ALTER TABLE `alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alimento_receta`
--

DROP TABLE IF EXISTS `alimento_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alimento_receta` (
  `id_alimento` char(36) NOT NULL,
  `id_receta` char(36) NOT NULL,
  `cantidad` decimal(20,2) DEFAULT NULL,
  `importe` decimal(20,2) DEFAULT NULL,
  `porcentaje_cantidad` decimal(20,2) DEFAULT NULL,
  `porcentaje_costo` decimal(20,2) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_alimento`,`id_receta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimento_receta`
--

LOCK TABLES `alimento_receta` WRITE;
/*!40000 ALTER TABLE `alimento_receta` DISABLE KEYS */;
INSERT INTO `alimento_receta` VALUES ('0c528340-0ca5-11e6-8f12-025041000001','70180150-6fcd-11e6-8683-10c37b693112',110.00,13200.00,27.03,35.20,'S'),('1541cb01-0ca5-11e6-8f12-025041000001','70180150-6fcd-11e6-8683-10c37b693112',50.00,6000.00,12.29,16.00,'S'),('42896b9f-0ca5-11e6-8f12-025041000001','70180150-6fcd-11e6-8683-10c37b693112',87.00,4350.00,21.38,11.60,'S'),('4aaac044-0ca5-11e6-8f12-025041000001','70180150-6fcd-11e6-8683-10c37b693112',95.00,950.00,23.34,2.53,'S'),('5cfa1eef-0ca5-11e6-8f12-025041000001','70180150-6fcd-11e6-8683-10c37b693112',65.00,13000.00,15.97,34.67,'S');
/*!40000 ALTER TABLE `alimento_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal` (
  `id_animal` char(36) NOT NULL,
  `id_proveedor` char(36) DEFAULT NULL,
  `fecha_compra` datetime DEFAULT NULL,
  `compra` char(255) DEFAULT NULL,
  `numero_lote` char(255) DEFAULT NULL,
  `peso_compra` decimal(20,4) DEFAULT NULL,
  `id_sexo` char(36) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `arete_visual` varchar(45) DEFAULT NULL,
  `arete_electronico` char(255) DEFAULT NULL,
  `arete_siniiga` char(255) DEFAULT NULL,
  `arete_campaña` char(255) DEFAULT NULL,
  `peso_actual` decimal(12,4) DEFAULT NULL,
  `temperatura` decimal(20,4) DEFAULT NULL,
  `es_semental` varchar(1) DEFAULT NULL,
  `id_semental` char(36) DEFAULT NULL,
  `id_raza` char(36) DEFAULT NULL,
  `es_vientre` char(1) DEFAULT NULL,
  `fecha_recepcion` datetime DEFAULT NULL,
  `peso_recepcion` decimal(20,4) DEFAULT NULL,
  `porcentaje_merma` decimal(20,4) DEFAULT NULL,
  `costo_flete` decimal(20,4) DEFAULT NULL,
  `total_alimento` decimal(20,4) DEFAULT NULL,
  `costo_alimento` decimal(20,4) DEFAULT NULL,
  `promedio_alimento` decimal(20,4) DEFAULT NULL,
  `promedio_costo_alimento` decimal(20,4) DEFAULT NULL,
  `fecha_ultima_comida` datetime DEFAULT NULL,
  `ganancia_promedio` decimal(20,4) DEFAULT NULL,
  `fecha_nacimiento` datetime DEFAULT NULL,
  `estado_vientre` char(36) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `id_tipoganado` char(36) DEFAULT NULL,
  `folio_animal` char(255) DEFAULT NULL,
  `id_corral_acopio` char(36) DEFAULT NULL,
  `costo_comision` decimal(20,4) DEFAULT '0.0000',
  `otros_costos` decimal(20,4) DEFAULT '0.0000',
  `costo_kilo` decimal(20,4) DEFAULT '0.0000',
  `costo_revision` decimal(20,4) DEFAULT '0.0000',
  `costo_combustible` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES ('0bdd8975-6fc0-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 16:15:30','F-040601-8','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',-15.0000,'2016-08-31 16:14:53','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-8','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000),('1a7ebf4f-6fc0-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 16:15:55','F-040601-9','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',-15.0000,'2016-08-31 16:15:36','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-9','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000),('312a4bcb-7209-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-09-03 14:00:58','FAC','CH930595',0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-03 14:00:58',271.4286,NULL,214.2857,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A',NULL,NULL,NULL,0.0000,600.0000,0.0000,0.0000,0.0000),('3f9b7d00-6fbc-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:43:52','','F-050602',300.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 15:46:44','F-050602-1','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:43:52',300.0000,NULL,0.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',0.0000,'2016-08-31 15:45:44','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-050602-1','',0.0000,0.0000,50.0000,0.0000,0.0000),('5d7cef2d-6fbc-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:43:52','','F-050602',300.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 15:47:34','F-050602-2','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:43:52',300.0000,NULL,0.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',0.0000,'2016-08-31 15:45:44','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-050602-2','',0.0000,0.0000,50.0000,0.0000,0.0000),('65511741-6fbf-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 16:10:51','F-040601-1','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',-15.0000,'2016-08-31 16:10:28','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-1','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000),('7b41ea44-6fbc-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:43:52','','F-050602',300.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 15:48:24','F-050602-3','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:43:52',300.0000,NULL,0.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',0.0000,'2016-08-31 15:45:44','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-050602-3','',0.0000,0.0000,50.0000,0.0000,0.0000),('8cee875a-6fbc-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:43:52','','F-050602',300.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 15:48:54','F-050602-4','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:43:52',300.0000,NULL,0.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',0.0000,'2016-08-31 15:45:44','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-050602-4','',0.0000,0.0000,50.0000,0.0000,0.0000),('8d796d78-6fbf-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 16:11:58','F-040601-2','','','F-040601-2',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',-15.0000,'2016-08-31 16:10:28','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-2','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000),('9a293fb3-6fbf-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 16:12:20','F-040601-3','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',-15.0000,'2016-08-31 16:10:28','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-3','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000),('9c3ade50-6fbc-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:43:52','','F-050602',300.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 15:49:20','F-050602-5','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:43:52',300.0000,NULL,0.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',0.0000,'2016-08-31 15:45:44','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-050602-5','',0.0000,0.0000,50.0000,0.0000,0.0000),('9dec7d11-706c-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-09-01 12:48:27','','F-05960',200.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-01 12:48:27',190.0000,5.0000,102.5000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A',NULL,NULL,NULL,0.0000,186.8000,0.0000,0.0000,0.0000),('aa67fee6-6fbf-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 16:12:47','F-040601-4','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',-15.0000,'2016-08-31 16:10:28','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-4','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000),('ad9f4e62-6fbc-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:43:52','','F-050602',300.0000,'43ae095a-cad9-11e4-af6c-3860779bbc63','2016-08-31 15:49:49','F-050602-6','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:43:52',300.0000,NULL,0.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',0.0000,'2016-08-31 15:45:44','','A','f55f7305-37c1-11e6-93e5-10c37b693112','F-050602-6','',0.0000,0.0000,40.0000,0.0000,0.0000),('b8817bda-6fbf-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 16:13:11','F-040601-5','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',-15.0000,'2016-08-31 16:10:28','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-5','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000),('c1dfe21c-6fbc-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:43:52','','F-050602',300.0000,'43ae095a-cad9-11e4-af6c-3860779bbc63','2016-08-31 15:50:23','F-050602-7','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:43:52',300.0000,NULL,0.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',0.0000,'2016-08-31 15:45:44','','A','f55f7305-37c1-11e6-93e5-10c37b693112','F-050602-7','',0.0000,0.0000,40.0000,0.0000,0.0000),('c524a7ef-6fbf-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 16:13:32','F-040601-6','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',-15.0000,'2016-08-31 16:10:28','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-6','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000),('efc58cc0-7051-11e6-a3a5-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 09:39:24','F-040601-10','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,NULL,NULL,NULL,NULL,NULL,-15.0000,'2016-09-01 09:39:24','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-10','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000),('ff53eab3-6fbf-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38','','F-040601',315.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63','2016-08-31 16:15:09','F-040601-7','','','',300.0000,0.0000,NULL,'0','','N','2016-08-31 15:44:38',300.0000,5.0000,151.0000,22.8125,2101.8888,22.8125,2101.8888,'2016-09-01 17:52:19',-15.0000,'2016-08-31 16:14:53','','A','10e05980-37c2-11e6-93e5-10c37b693112','F-040601-7','48533ab0-37c9-11e6-93e5-10c37b693112',0.0000,191.4000,20.0000,0.0000,0.0000);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal_grupo`
--

DROP TABLE IF EXISTS `animal_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal_grupo` (
  `id_rancho` char(36) NOT NULL,
  `id_usuario` char(36) NOT NULL,
  `id_animal` char(36) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `peso` decimal(20,4) DEFAULT '0.0000',
  `costo_kilo` decimal(20,4) DEFAULT '0.0000',
  `tipo_ganado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_usuario`,`id_animal`,`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla para capturas masivas\ntipo = medicina, traspaso, salid';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal_grupo`
--

LOCK TABLES `animal_grupo` WRITE;
/*!40000 ALTER TABLE `animal_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodega`
--

DROP TABLE IF EXISTS `bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodega` (
  `id_bodega` char(36) NOT NULL,
  `descripcion` varchar(55) NOT NULL,
  `estado` char(36) DEFAULT NULL,
  `ciudad` char(36) DEFAULT NULL,
  `ultima_entrada` datetime DEFAULT NULL,
  `ultima_salida` datetime DEFAULT NULL,
  `cantidad` decimal(20,4) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodega`
--

LOCK TABLES `bodega` WRITE;
/*!40000 ALTER TABLE `bodega` DISABLE KEYS */;
INSERT INTO `bodega` VALUES ('2f0b7255-73aa-11e6-b11d-008cfa6fa291','Silo 3','1','1','2016-05-09 12:00:00','2016-05-09 20:00:00',300.0000,'S'),('3845d6b7-73aa-11e6-b11d-008cfa6fa291','Silo 4','1','1','2016-05-09 12:00:00','2016-05-09 20:00:00',100.0000,'S'),('40aca12f-73aa-11e6-b11d-008cfa6fa291','Silo 5','1','1','2016-05-09 12:00:00','2016-05-09 20:00:00',400.0000,'S'),('6585ebe0-73a8-11e6-b11d-008cfa6fa291','Silo 1','1','1','2016-05-09 12:00:00','2016-05-09 20:00:00',200.0000,'S'),('74fb95d1-73a9-11e6-b11d-008cfa6fa291','Silo 2','1','1','2016-05-09 12:00:00','2016-05-09 20:00:00',500.0000,'S');
/*!40000 ALTER TABLE `bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodega_alimento`
--

DROP TABLE IF EXISTS `bodega_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodega_alimento` (
  `id_bodega_alimento` char(36) NOT NULL,
  `id_bodega` char(36) DEFAULT NULL,
  `id_alimento` char(36) DEFAULT NULL,
  `existencia` decimal(20,4) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  `ultima_compra` datetime DEFAULT NULL,
  `ultimo_costo` double(20,4) DEFAULT NULL,
  `costo_promedio` double(20,4) DEFAULT NULL,
  PRIMARY KEY (`id_bodega_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodega_alimento`
--

LOCK TABLES `bodega_alimento` WRITE;
/*!40000 ALTER TABLE `bodega_alimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodega_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caseta_sanitaria`
--

DROP TABLE IF EXISTS `caseta_sanitaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caseta_sanitaria` (
  `id_caseta` char(36) NOT NULL,
  `codigo` char(36) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_caseta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caseta_sanitaria`
--

LOCK TABLES `caseta_sanitaria` WRITE;
/*!40000 ALTER TABLE `caseta_sanitaria` DISABLE KEYS */;
INSERT INTO `caseta_sanitaria` VALUES ('07bfea15-7064-11e6-b11d-008cfa6fa291','3','Caseta 3','S'),('536652d9-6bad-11e6-b11d-008cfa6fa291','2','Caseta 2','S'),('f882c0f8-6bad-11e6-b11d-008cfa6fa291','1','Caseta 1','S');
/*!40000 ALTER TABLE `caseta_sanitaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `causas_muerte`
--

DROP TABLE IF EXISTS `causas_muerte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `causas_muerte` (
  `id_causas_muerte` char(36) NOT NULL,
  `descripcion` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_causas_muerte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `causas_muerte`
--

LOCK TABLES `causas_muerte` WRITE;
/*!40000 ALTER TABLE `causas_muerte` DISABLE KEYS */;
INSERT INTO `causas_muerte` VALUES ('0115351b-1951-11e6-bc46-10c37b693112','Traumática'),('09eb0cc2-1951-11e6-bc46-10c37b693112','Viral'),('bfda1188-1950-11e6-bc46-10c37b693112','Bacteriana'),('cd8d3505-1950-11e6-bc46-10c37b693112','Micótica'),('d83093a0-1950-11e6-bc46-10c37b693112','Otras'),('dfb7a94a-1950-11e6-bc46-10c37b693112','Protozoarios'),('f2c6feea-1950-11e6-bc46-10c37b693112','Tóxica');
/*!40000 ALTER TABLE `causas_muerte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chofer`
--

DROP TABLE IF EXISTS `chofer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chofer` (
  `id_chofer` char(36) NOT NULL,
  `codigo` char(36) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_chofer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chofer`
--

LOCK TABLES `chofer` WRITE;
/*!40000 ALTER TABLE `chofer` DISABLE KEYS */;
INSERT INTO `chofer` VALUES ('0065ac11-7064-11e6-b11d-008cfa6fa291','3','Chofer 3','S'),('a9bea2e0-6bb9-11e6-b11d-008cfa6fa291','2','Chofer 2','S'),('d8e0fcb6-6bb8-11e6-b11d-008cfa6fa291','1','Chofer 1','S');
/*!40000 ALTER TABLE `chofer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `id_estado` char(36) NOT NULL,
  `id_ciudad` char(36) NOT NULL,
  `descripcion_ciudad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_estado`,`id_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES ('1','1','Aguascalientes'),('1','2','Calvillo'),('1','3','San Francisco de los Romo'),('1','4','Jesús María'),('1','5','Pabellón de Arteaga'),('1','6','Rincón de Romos'),('1','7','Asientos'),('1','8','Tepezalá'),('1','9','Cosío'),('10','1','Victoria de Durango'),('10','10','Vicente Guerrero'),('10','11','El Salto'),('10','12','Santa María del Oro'),('10','2','Gómez Palacio'),('10','3','Ciudad Lerdo'),('10','4','Santiago Papasquiaro'),('10','5','Canatlán'),('10','6','San Juan del Río del Centauro del Norte'),('10','7','Peñón Blanco'),('10','8','Francisco I. Madero'),('10','9','Nombre de Dios'),('11','1','Acámbaro'),('11','10','San Francisco del Rincón'),('11','11','Silao'),('11','12','Jerécuaro'),('11','13','Santiago Maravatío'),('11','14','Romita'),('11','15','Tarandacuao'),('11','16','Huanímaro'),('11','17','Comonfort'),('11','18','Uriangato'),('11','19','Pénjamo'),('11','2','San miguel de Allende'),('11','20','Cuerámaro'),('11','21','Empalme Escobedo (Escobedo)'),('11','22','San Luis de la Paz'),('11','23','Valle de Santiago'),('11','24','Abasolo'),('11','25','Rincón de Tamayo'),('11','26','Villagrán'),('11','27','Yuriria'),('11','28','Apaseo el Grande'),('11','29','Purísima de Bustos'),('11','3','Celaya'),('11','30','Salvatierra'),('11','31','Marfil'),('11','32','San José Iturbide'),('11','33','Apaseo el Alto'),('11','34','Ciudad Manuel Doblado'),('11','35','Jaral del Progreso'),('11','36','San Diego de la Unión'),('11','37','Santa Cruz Juventino Rosas'),('11','38','Doctor Mora'),('11','39','Dolores Hidalgo Cuna de la Independencia Nacional'),('11','4','Cortazar'),('11','5','Guanajuato'),('11','6','Irapuato'),('11','7','León de los Aldama'),('11','8','Moroleón'),('11','9','Salamanca'),('12','1','Acapulco de Juárez'),('12','10','Ciudad Apaxtla de Castrejón'),('12','11','Ciudad Altamirano'),('12','12','Buenavista de Cuellar'),('12','13','Cutzamala de Pinzón'),('12','14','Coyuca de Catalán'),('12','15','Tierra Colorada'),('12','16','Coyuca de Benítez'),('12','17','Olinalá'),('12','18','Marquelia'),('12','19','Zumpango del Río'),('12','2','Chilpancingo de los Bravo'),('12','20','San Luis de la Loma'),('12','21','Petatlán'),('12','22','La Unión'),('12','23','San Luis San Pedro'),('12','24','Teloloapan'),('12','25','Técpan de Galeana'),('12','26','Huitzuco'),('12','27','Tixtla de Guerrero'),('12','28','Tepecoacuilco de Trujano'),('12','29','San Marcos'),('12','3','Iguala de la Independencia'),('12','30','Azoyú'),('12','31','Tlapehuala'),('12','32','San Luis Acatlán'),('12','33','Chilapa de Álvarez'),('12','34','Tlapa de Comonfort'),('12','35','Tlalixtaquilla'),('12','36','Cuajinicuilapa'),('12','37','Huamuxtitlan'),('12','38','Cruz Grande'),('12','39','Ocotito'),('12','4','Taxco de Alarcón'),('12','40','Copala'),('12','41','Zihuatanejo'),('12','5','Arcelia'),('12','6','Ayutla de los Libres'),('12','7','Atoyac de Álvarez'),('12','9','San Jerónimo de Juárez'),('13','1','Actopan'),('13','10','Tizayuca'),('13','11','Santiago Tulantepec'),('13','12','Ixmiquilpan'),('13','13','Tepeji del Rio'),('13','14','Cruz Azul'),('13','15','Tepeapulco'),('13','2','Apan'),('13','3','Pachuca de Soto'),('13','4','Ciudad de Fray Bernardino de Sahagún'),('13','5','Tula de Allende'),('13','6','Tulancingo'),('13','7','Zimapan'),('13','8','Huejutla de Reyes'),('13','9','Tlaxcoapan'),('14','1','Ameca'),('14','10','Zapopan'),('14','13','Tuxpan'),('14','14','Tototlán'),('14','15','San Diego de Alejandría'),('14','16','La Resolana'),('14','17','Atotonilco el Alto'),('14','18','Jalostotitlán'),('14','19','Poncitlán'),('14','2','Ciudad Guzmán'),('14','20','Arandas'),('14','21','Talpa de Allende'),('14','22','Etzatlán'),('14','23','Sayula'),('14','24','Ahualulco de Mercado'),('14','25','Autlán de Navarro'),('14','26','Magdalena'),('14','27','San Julián'),('14','28','Cocula'),('14','29','El Grullo'),('14','30','San Miguel el Alto'),('14','31','Tala'),('14','32','La Barca'),('14','33','Jamay'),('14','34','Yahualica de González Gallo'),('14','36','Cihuatlán'),('14','37','Zapotiltic'),('14','38','Villa Corona'),('14','39','Teocaltiche'),('14','4','Lagos de Moreno'),('14','41','Tequila'),('14','42','El Quince (San José el Quince)'),('14','43','San José el Verde (El Verde)'),('14','44','Jocotepec'),('14','45','Tecalitlán'),('14','46','Chapala'),('14','47','Ajijic'),('14','48','San Ignacio Cerro Gordo'),('14','5','Ocotlán'),('14','50','Huejuquilla el Alto'),('14','51','Villa Hidalgo'),('14','52','Unión de San Antonio'),('14','53','Las Pintitas'),('14','54','Tamazula de Gordiano'),('14','55','Acatlán de Juárez'),('14','56','Valle de Guadalupe'),('14','7','San Juan de los Lagos'),('14','8','Tepatitlán de Morelos'),('14','9','Tlaquepaque'),('15','1','Ciudad Adolfo López Mateos'),('15','10','Ciudad Nezahualcoyotl'),('15','11','Villa Nicolás Romero'),('15','12','Tecamac de Felipe Villanueva'),('15','13','Tepotzotlán'),('15','14','Tlalnepantla de Baz'),('15','15','Santa Maria Tultepec'),('15','16','Tultitlán de Mariano Escobedo'),('15','17','Cuautitlán'),('15','18','Ixtapaluca'),('15','19','Texcoco de Mora'),('15','2','Chimalhuacán'),('15','20','Toluca de Lerdo'),('15','21','Valle de Chalco Solidaridad'),('15','22','Tejupilco de Hidalgo'),('15','23','Chalco de Díaz Covarrubias'),('15','24','Amatepec'),('15','26','Melchor Ocampo'),('15','27','San Vicente Chicoloapan de Juárez'),('15','28','Capulhuac'),('15','29','Juchitepec de Mariano Riva Palacio'),('15','3','Coacalco de Berriozabal'),('15','30','Tequixquiac'),('15','31','Xonacatlán'),('15','32','San Mateo Atenco'),('15','36','Chiconcuac'),('15','39','Almoloya de Juárez'),('15','4','Cuautitlán Izcalli'),('15','40','Ocoyoacac'),('15','41','Zumpango'),('15','5','Ecatepec de Morelos'),('15','6','Huixquilucan de Degollado'),('15','7','Los Reyes Acaquilpan (La Paz)'),('15','8','Metepec'),('15','9','Naucalpan de Juárez'),('16','1','Apatzingán de la Constitución'),('16','10','Zacapu'),('16','11','Zamora de Hidalgo'),('16','12','Heroica Zitácuaro'),('16','13','Paracho de Verduzco'),('16','14','Tangancícuaro de Arista'),('16','15','Maravatío de Ocampo'),('16','16','Zinapécuaro de Figueroa'),('16','17','Puruándiro'),('16','18','Yurécuaro'),('16','19','Huetamo de Núñez'),('16','2','Los Reyes de Salgado'),('16','20','Tacámbaro de Codallos'),('16','21','Ciudad Lázaro Cárdenas'),('16','22','Las Guacamayas'),('16','23','Jiquilpan de Juárez'),('16','24','Tuxpan'),('16','25','Cotija de la Paz'),('16','26','Nueva Italia de Ruiz'),('16','27','Cuitzeo del Porvenir'),('16','3','Ciudad Hidalgo'),('16','4','Jacona de Plancarte'),('16','5','La piedad de Cabadas'),('16','6','Morelia'),('16','7','Pátzcuaro'),('16','8','Sahuayo de Morelos'),('16','9','Uruapan'),('17','1','Cuautla (Cuautla de Morelos)'),('17','2','Cuernavaca'),('17','3','Galeana'),('17','4','Jojutla'),('17','5','Puente de Ixtla'),('17','6','Santa Rosa Treinta'),('17','7','Zacatepec de Hidalgo'),('17','8','Tlaquiltenango'),('18','1','Santiago Ixcuintla'),('18','10','San Blas'),('18','11','Ixtlán del Río'),('18','12','Bucerías'),('18','13','Las Varas'),('18','14','Xalisco'),('18','15','San pedro Lagunillas'),('18','16','La peñita de Jaltemba'),('18','17','Jala'),('18','18','Ahuacatlán'),('18','2','Tepic'),('18','3','Tuxpan'),('18','4','Acaponeta'),('18','5','Tecuala'),('18','6','Compostela'),('18','7','Francisco I. Madero (Puga)'),('18','8','Villa Hidalgo (El Nuevo)'),('18','9','Ruiz'),('19','1','Ciudad Apodaca'),('19','10','Ciudad Santa Catarina'),('19','11','Doctor Arroyo'),('19','12','Ciénega de Flores'),('19','13','Hualahuises'),('19','15','Cadereyta Jiménez'),('19','17','Santiago'),('19','18','El cercado'),('19','2','San Pedro Garza García'),('19','20','Anáhuac'),('19','21','García'),('19','22','Ciudad Benito Juárez'),('19','3','Ciudad General Escobedo'),('19','4','Guadalupe'),('19','5','Linares'),('19','6','Montemorelos'),('19','7','Monterrey'),('19','8','Ciudad Sabinas Hidalgo'),('19','9','San Nicolás de los Garza'),('2','1','Ensenada'),('2','2','Mexicali'),('2','3','Tecate'),('2','4','Tijuana'),('2','5','Playas de Rosarito'),('2','6','Rodolfo Sánchez T. (Maneadero)'),('2','7','San Felipe'),('20','1','Juchitán (Juchitán de Zaragoza)'),('20','11','Santiago Suchilquitongo'),('20','12','San Felipe Jalapa de Díaz'),('20','13','Bahias de Huatulco'),('20','14','Putla Villa de Guerrero'),('20','15','Cosolapa'),('20','16','Tlacolula de Matamoros'),('20','17','San Pablo Villa de Mitla'),('20','18','Natividad'),('20','19','Teotitlán de Flores Magón'),('20','2','Oaxaca de Juárez'),('20','20','Santa María Huatulco'),('20','21','San Juan Bautista Cuicatlán'),('20','22','Villa Sola de Vega'),('20','23','Ocotlán de Morelos'),('20','24','Villa de Zaachila'),('20','25','Miahuatlán de Porfirio Díaz'),('20','26','Unión Hidalgo'),('20','27','El Camarón'),('20','28','San Pedro Mixtepec -Dto. 22-'),('20','29','Santa Cruz Itundujia'),('20','3','Salina Cruz'),('20','30','Chahuites'),('20','31','Heroica Ciudad de Ejutla de Crespo'),('20','32','San Pedro Tapanatepec'),('20','33','Vicente Camalote'),('20','34','Villa de Tamazulápam del Progreso'),('20','35','San Juan Bautista lo de Soto'),('20','36','San Juan Cacahuatepec'),('20','37','San Pedro Totolapa'),('20','38','San Miguel el Grande'),('20','39','Zimatlán de Álvarez'),('20','4','San Juan Bautista Tuxtepec'),('20','40','San Pablo Huitzo'),('20','41','San Francisco Telixtlahuaca'),('20','42','Mariscala de Juárez'),('20','43','Santiago Pinotepa Nacional'),('20','44','Santiago Jamiltepec'),('20','45','San Pedro Pochutla'),('20','46','Heroica Ciudad de Tlaxiaco'),('20','47','San Juan Bautista Valle Nacional'),('20','48','Lagunas'),('20','49','Ciudad Ixtepec'),('20','5','Matías Romero Avendaño'),('20','50','Santiago Juxtlahuaca'),('20','51','San Sebastián Tecomaxtlahuaca'),('20','52','Asunción Nochixtlán'),('20','53','San Francisco Ixhuatán'),('20','54','San Blas Atempa'),('20','55','Santo Domingo Tehuantepec'),('20','56','Cuilápam de Guerrero'),('20','57','El Rosario'),('20','58','Santa Lucia del Camino'),('20','59','San Antonio de la Cal'),('20','6','Heroica Ciudad de Huajuapan de León'),('20','7','Loma Bonita'),('20','8','Puerto Escondido'),('20','9','Río Grande o Piedra Parada'),('21','1','Atlixco'),('21','10','Acatlán de Osorio'),('21','11','Cuautlancingo'),('21','12','Tepeaca'),('21','13','Tecamachalco'),('21','14','Zacatlán'),('21','15','Xicotepec'),('21','16','Ciudad Serdán'),('21','17','Amozoc'),('21','2','Izúcar de Matamoros'),('21','3','Puebla (Heroica Puebla)'),('21','4','San Martín Texmelucan de Labastida'),('21','5','Tehuacan'),('21','6','Teziutlan'),('21','7','San Andrés Cholula'),('21','8','San Pedro Cholula'),('21','9','Huauchinango'),('22','1','Querétaro'),('22','2','San Juan del Rio'),('22','4','El Pueblito'),('23','1','Cancún'),('23','2','Cozumel'),('23','3','Felipe Carrillo Puerto'),('23','4','Chetumal'),('23','5','Playa del Carmen'),('23','6','Kantunilkín'),('23','7','Isla Mujeres'),('23','8','Bacalar'),('24','1','Ciudad Valles'),('24','10','Cerritos'),('24','11','Tamuin'),('24','12','Tamasopo'),('24','13','Ciudad del Maíz'),('24','14','Cedral'),('24','15','Tierra Nueva'),('24','16','Villa de Reyes'),('24','17','Fracción el Refugio'),('24','18','Tamazunchale'),('24','19','Santa María del Río'),('24','2','Ébano'),('24','20','El Naranjo'),('24','3','Matehuala'),('24','4','Rioverde'),('24','5','San Luis Potosí'),('24','6','Soledad de Graciano Sánchez'),('24','7','Charcas'),('24','8','Salinas de Hidalgo'),('24','9','Cárdenas'),('25','1','Los Mochis'),('25','10','Higuera de Zaragoza'),('25','11','Choix'),('25','12','Villa Unión'),('25','13','Sinaloa de Leyva'),('25','14','Mocorito'),('25','15','Angostura'),('25','16','San Blas'),('25','17','La Cruz'),('25','18','El rosario'),('25','19','Estación Naranjo'),('25','2','Culiacán Rosales'),('25','20','Aguaruto'),('25','21','Cosalá'),('25','22','San Ignacio'),('25','23','Topolobampo'),('25','24','Lic. Benito Juárez (Campo Gobierno)'),('25','3','Escuinapa de Hidalgo'),('25','4','Guasave'),('25','5','Mazatlán'),('25','6','Guamúchil'),('25','7','Navolato'),('25','8','Quila'),('25','9','Ahome'),('26','1','San Luis Río Colorado'),('26','10','Heroica Nogales'),('26','11','Puerto Peñasco'),('26','12','Heroica Ciudad de Cananea'),('26','13','Sonoita'),('26','14','Magdalena de Kino'),('26','2','Agua Prieta'),('26','3','Heroica Caborca'),('26','4','Ciudad Obregón'),('26','5','Empalme'),('26','6','Heroica Guaymas'),('26','7','Hermosillo'),('26','8','Huatabampo'),('26','9','Navojoa'),('27','1','Cárdenas'),('27','10','Paraíso'),('27','11','Frontera'),('27','12','Cunduacán'),('27','13','Huimanguillo'),('27','2','Villahermosa'),('27','3','Comalcalco'),('27','4','Emiliano Zapata'),('27','5','Jalpa de Méndez'),('27','7','Macuspana'),('27','8','Tenosique de Pino Suárez'),('27','9','Teapa'),('28','1','Altamira'),('28','10','Tampico'),('28','11','Ciudad Victoria'),('28','12','González'),('28','13','Jaumave'),('28','14','Ciudad Gustavo Díaz Ordaz'),('28','15','Estación Manuel (Úrsulo Galván)'),('28','16','Xicoténcatl'),('28','17','Ciudad Miguel Alemán'),('28','18','Soto la Marina'),('28','19','Ciudad Tula'),('28','2','Ciudad Camargo'),('28','20','Nueva Ciudad Guerrero'),('28','21','Valle Hermoso'),('28','3','Ciudad Madero'),('28','4','Ciudad Mante'),('28','5','Heroica Matamoros'),('28','6','Nuevo Laredo'),('28','7','Reynosa'),('28','8','Ciudad Río Bravo'),('28','9','San Fernando'),('29','1','Apizaco'),('29','2','Villa Vicente Guerrero'),('29','3','Tlaxcala (Tlaxcala de Xicotencatl)'),('29','4','Huamantla'),('29','5','Calpulalpan'),('29','6','Chiautempan'),('3','1','Ciudad Constitución'),('3','10','San Ignacio'),('3','11','Guerrero Negro'),('3','2','La Paz'),('3','3','Cabo San Lucas'),('3','4','San José del Cabo'),('3','5','Loreto'),('3','6','Puerto Adolfo López Mateos'),('3','7','Todos Santos'),('3','8','Heroica Mulegé'),('3','9','Villa Alberto Andrés Alvarado Arámburo'),('30','1','Acayucan'),('30','10','Xalapa-Enríquez'),('30','11','Minatitlán'),('30','12','Orizaba'),('30','13','Papantla de Olarte'),('30','14','Poza Rica de Hidalgo'),('30','15','San Andrés Tuxtla'),('30','16','Túxpam de Rodríguez Cano'),('30','17','Veracruz'),('30','18','Tierra Blanca'),('30','19','Cosamaloapan'),('30','2','Naranjos'),('30','20','Carlos A. Carrillo'),('30','21','Pánuco'),('30','22','Tampico Alto'),('30','23','Tempoal de Sánchez'),('30','24','Tantoyuca'),('30','25','Gutiérrez Zamora'),('30','26','Platón Sánchez'),('30','27','Juan Rodríguez Clara'),('30','28','Huatusco de Chicuellar'),('30','29','Ixtaczoquitlán'),('30','3','Boca del RÍo'),('30','30','Río Blanco'),('30','31','Isla'),('30','32','Cuitláhuac'),('30','33','Fortín de las Flores'),('30','34','Alvarado'),('30','35','José Cardel'),('30','36','Banderilla'),('30','37','Paraje Nuevo'),('30','38','Playa Vicente'),('30','39','Altotonga'),('30','4','Coatepec'),('30','40','Juan Díaz Covarrubias'),('30','41','Cuichapa'),('30','42','Santiago Tuxtla'),('30','43','Huayacocotla'),('30','44','Paso de Ovejas'),('30','45','Catemaco'),('30','46','Nogales'),('30','47','Las Choapas'),('30','48','General Miguel Alemán (Potrero Nuevo)'),('30','49','Coatzintla'),('30','5','Agua dulce'),('30','50','Ángel R. Cabada'),('30','51','San Rafael'),('30','52','Tlacojalpan'),('30','53','Cosoleacaque'),('30','54','Lerdo de Tejada'),('30','55','Tihuatlán'),('30','56','Atoyac'),('30','57','Huiloapan de Cuauhtémoc'),('30','58','Cazones de Herrera'),('30','59','Yecuatla'),('30','6','Coatzacoalcos'),('30','60','Soledad de Doblado'),('30','61','Cerro Azul'),('30','62','Tezonapa'),('30','66','Sihuapan'),('30','67','El Higo'),('30','68','Paso del Macho'),('30','69','Tlapacoyan'),('30','7','Córdoba'),('30','8','Tres Valles'),('30','9','Jáltipan de Morelos'),('31','1','Mérida'),('31','2','Tizimín'),('31','3','Ticul'),('31','4','Motul de Carrillo Puerto'),('31','5','Valladolid'),('31','6','Kanasín'),('32','1','Fresnillo'),('32','10','Villa de Cos'),('32','11','Nochistlán de Mejía'),('32','12','Víctor Rosales'),('32','13','Valparaíso'),('32','14','Luis Moya'),('32','15','Moyahua de Estrada'),('32','16','Sombrerete'),('32','17','Jalpa'),('32','18','Loreto'),('32','19','Juan Aldama'),('32','2','Jerez de García Salinas'),('32','3','Zacatecas'),('32','4','Guadalupe'),('32','5','Río Grande'),('32','6','Ciudad Cuauhtémoc'),('32','7','Ojocaliente'),('32','8','Villa Hidalgo'),('32','9','Villanueva'),('4','1','San Francisco de Campeche'),('4','11','Pomuch'),('4','2','Ciudad del Carmen'),('4','3','Calkini'),('4','4','Candelaria'),('4','5','Escárcega'),('4','6','Sabancuy'),('4','7','Hopelchén'),('4','8','Champotón'),('4','9','Hecelchakán'),('5','1','Ciudad Acuña'),('5','10','San Pedro'),('5','11','Torreón'),('5','12','Castaños'),('5','13','Francisco I. Madero (Chávez)'),('5','14','Cuatro Ciénegas de Carranza'),('5','15','Nadadores'),('5','16','Ramos Arizpe'),('5','17','Nava'),('5','18','Zaragoza'),('5','19','San Buenaventura'),('5','2','Frontera'),('5','20','Ciudad Melchor Múzquiz'),('5','21','Viesca'),('5','22','Morelos'),('5','23','Arteaga'),('5','24','Allende'),('5','3','Matamoros'),('5','4','Monclova'),('5','5','Parras de la Fuente'),('5','6','Piedras Negras'),('5','7','Sabinas'),('5','8','Saltillo'),('5','9','Nueva Rosita'),('6','1','Colima'),('6','2','Manzanillo'),('6','3','Tecoman'),('6','4','Ciudad de Villa de Álvarez'),('6','5','Ciudad de Armería'),('7','1','Comitán de Domínguez'),('7','10','Palenque'),('7','11','Ocosingo'),('7','12','Tonalá'),('7','13','Mapastepec'),('7','14','Las Rosas'),('7','15','Chiapa de Corzo'),('7','16','Cacahoatán'),('7','17','Ocozocoautla de Espinosa'),('7','18','Cintalapa de Figueroa'),('7','19','Pichucalco'),('7','2','San Cristóbal de las Casas'),('7','20','Puerto Madero (San Benito)'),('7','21','Pijijiapan'),('7','22','Reforma'),('7','23','Huixtla'),('7','24','Motozintla de Mendoza'),('7','25','Acala'),('7','3','Tapachula de Córdova y Ordóñez'),('7','4','Tuxtla Gutiérrez'),('7','5','Venustiano Carranza'),('7','6','Jiquipilas'),('7','7','Villaflores'),('7','8','Las Margaritas'),('7','9','Arriaga'),('8','1','Santa Rosalía de Camargo'),('8','10','Colonia Anáhuac'),('8','11','Juan Aldama'),('8','12','José Mariano Jiménez'),('8','13','Manuel Ojinaga'),('8','14','Bachíniva'),('8','15','Saucillo'),('8','2','Chihuahua'),('8','3','Cuauhtémoc'),('8','4','Delicias'),('8','5','Hidalgo del Parral'),('8','6','Juárez'),('8','7','Nuevo Casas Grandes'),('8','9','Madera'),('9','1','Ciudad de México'),('9','10','Ciudad de México'),('9','11','Ciudad de México'),('9','12','Ciudad de México'),('9','13','Ciudad de México'),('9','14','Ciudad de México'),('9','15','Ciudad de México'),('9','16','Ciudad de México'),('9','2','Ciudad de México'),('9','3','Ciudad de México'),('9','4','Ciudad de México'),('9','5','Ciudad de México'),('9','6','Ciudad de México'),('9','7','Ciudad de México'),('9','8','Ciudad de México'),('9','9','Ciudad de México');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudaddestino`
--

DROP TABLE IF EXISTS `ciudaddestino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudaddestino` (
  `id_estado` char(36) NOT NULL,
  `id_ciudad` char(36) NOT NULL,
  `descripcion_ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estado`,`id_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudaddestino`
--

LOCK TABLES `ciudaddestino` WRITE;
/*!40000 ALTER TABLE `ciudaddestino` DISABLE KEYS */;
INSERT INTO `ciudaddestino` VALUES ('1','1','Tampico'),('2','1','Monterrey'),('3','1','Ébano'),('4','1','Pánuco');
/*!40000 ALTER TABLE `ciudaddestino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudadorigen`
--

DROP TABLE IF EXISTS `ciudadorigen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudadorigen` (
  `id_estado` char(36) NOT NULL,
  `id_ciudad` char(36) NOT NULL,
  `descripcion_ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estado`,`id_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudadorigen`
--

LOCK TABLES `ciudadorigen` WRITE;
/*!40000 ALTER TABLE `ciudadorigen` DISABLE KEYS */;
INSERT INTO `ciudadorigen` VALUES ('1','1','Aguascalientes'),('1','2','Calvillo'),('1','3','San Francisco de los Romo'),('10','5','Durango'),('11','1','Aguascalientes'),('15','20','Ciudad Juarez'),('2','10','Tampico'),('3','20','Monterrey'),('7','5','San Luis Potosí'),('8','8','Campeche');
/*!40000 ALTER TABLE `ciudadorigen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clase_movimiento`
--

DROP TABLE IF EXISTS `clase_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clase_movimiento` (
  `id_clase_movimiento` int(11) NOT NULL,
  `descripcion` char(255) DEFAULT NULL,
  PRIMARY KEY (`id_clase_movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase_movimiento`
--

LOCK TABLES `clase_movimiento` WRITE;
/*!40000 ALTER TABLE `clase_movimiento` DISABLE KEYS */;
INSERT INTO `clase_movimiento` VALUES (1,'VP - Venta en pie'),(2,'VR - Traspaso al rastro para su venta'),(3,'OT - Otro');
/*!40000 ALTER TABLE `clase_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` char(36) NOT NULL,
  `descripcion` char(255) DEFAULT NULL,
  `id_pais` char(36) DEFAULT NULL,
  `id_estado` char(36) DEFAULT NULL,
  `id_ciudad` char(36) DEFAULT NULL,
  `direccion` char(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` char(20) DEFAULT NULL,
  `p_fisica_moral` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `con_pago` varchar(45) DEFAULT NULL,
  `dias_credito` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('bf1c8b84-6fa0-11e6-b11d-008cfa6fa291','Juan Garza González','bc300667-bead-11e4-a9a2-002258cc1d65','28','10','Miguel Hidalgo 405 Colonia Independencia','juan.garza@gmail.com','833144902','F','A','Crédito',30);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_arete`
--

DROP TABLE IF EXISTS `color_arete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_arete` (
  `id_color` int(11) NOT NULL,
  `descripcion` char(255) DEFAULT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_arete`
--

LOCK TABLES `color_arete` WRITE;
/*!40000 ALTER TABLE `color_arete` DISABLE KEYS */;
INSERT INTO `color_arete` VALUES (1,'Macho'),(2,'Hembra');
/*!40000 ALTER TABLE `color_arete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `id_rancho` char(36) NOT NULL,
  `id_compra` char(36) NOT NULL,
  `id_proveedor` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `factura` varchar(45) DEFAULT NULL,
  `orden` varchar(45) DEFAULT NULL,
  `subtotal` decimal(20,4) DEFAULT NULL,
  `iva` decimal(20,4) DEFAULT NULL,
  `total` decimal(20,4) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_rancho`,`id_compra`,`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','436fac56-6fcd-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 17:49:34','fac12415','A-12415',5000000.0000,0.0000,5000000.0000,'S'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','4e08e0e3-6fcd-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 17:50:14','fac163456','M-163456',425.0000,0.0000,425.0000,'S');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprador`
--

DROP TABLE IF EXISTS `comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprador` (
  `id_comprador` char(36) NOT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_comprador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprador`
--

LOCK TABLES `comprador` WRITE;
/*!40000 ALTER TABLE `comprador` DISABLE KEYS */;
INSERT INTO `comprador` VALUES ('23356d69-6fa1-11e6-b11d-008cfa6fa291','1','Rafael Medina López','S');
/*!40000 ALTER TABLE `comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concepto_movimiento`
--

DROP TABLE IF EXISTS `concepto_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concepto_movimiento` (
  `id_rancho` char(36) NOT NULL,
  `id_concepto` char(36) NOT NULL,
  `descripcion` char(100) DEFAULT NULL,
  `des_corta` char(5) DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_concepto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concepto_movimiento`
--

LOCK TABLES `concepto_movimiento` WRITE;
/*!40000 ALTER TABLE `concepto_movimiento` DISABLE KEYS */;
INSERT INTO `concepto_movimiento` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','875c48f7-6fa0-11e6-b11d-008cfa6fa291','Muerte','Mrt','S'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','8769c848-6fa0-11e6-b11d-008cfa6fa291','Peso','Pso','N'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','87775d5d-6fa0-11e6-b11d-008cfa6fa291','Traspaso Salida','Tsa','S'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','877e1685-6fa0-11e6-b11d-008cfa6fa291','Traspaso Entrada','Ten','E'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','8784f1ac-6fa0-11e6-b11d-008cfa6fa291','Salida','Sal','S'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9ce49794-7084-11e6-b11d-008cfa6fa291','Muerte','Mrt','S'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9cf05136-7084-11e6-b11d-008cfa6fa291','Peso','Pso','N'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9cf734b0-7084-11e6-b11d-008cfa6fa291','Traspaso Salida','Tsa','S'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9d015f2f-7084-11e6-b11d-008cfa6fa291','Traspaso Entrada','Ten','E'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9d0b8569-7084-11e6-b11d-008cfa6fa291','Salida','Sal','S');
/*!40000 ALTER TABLE `concepto_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracion`
--

DROP TABLE IF EXISTS `configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuracion` (
  `id_configuracion` char(36) NOT NULL,
  `puerto_baston` char(255) DEFAULT NULL,
  `puerto_bascula` char(255) DEFAULT NULL,
  `envio_com` varchar(45) DEFAULT NULL,
  `rec_com_bascula` varchar(45) DEFAULT NULL,
  `rec_com_baston` varchar(45) DEFAULT NULL,
  `tiempo_espera_com` int(1) DEFAULT NULL,
  `precio_carne` decimal(20,4) DEFAULT NULL,
  `costo_alimento` decimal(20,4) DEFAULT NULL,
  `fecha_ultima_replicacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuracion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tipo_aplicacion: 1 = oficina, 2 = rancho(sucursal)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracion`
--

LOCK TABLES `configuracion` WRITE;
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
INSERT INTO `configuracion` VALUES ('1f12304d-bea4-11e4-a9a2-002258cc1d65','COM1','COM7','{ZN}','EziWeigh7','XRS',5,82.0000,12.6500,'2016-04-05 16:22:46');
/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_gestacion`
--

DROP TABLE IF EXISTS `control_gestacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_gestacion` (
  `id_control_gestacion` char(36) NOT NULL,
  `id_registro_empadre` char(36) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo_parto` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_control_gestacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_gestacion`
--

LOCK TABLES `control_gestacion` WRITE;
/*!40000 ALTER TABLE `control_gestacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_gestacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corral`
--

DROP TABLE IF EXISTS `corral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corral` (
  `id_rancho` char(36) NOT NULL,
  `id_corral` char(36) NOT NULL,
  `nombre` char(255) DEFAULT NULL,
  `localizacion` char(255) DEFAULT NULL,
  `num_animales` int(11) DEFAULT NULL,
  `dias_corral` int(11) DEFAULT NULL,
  `id_raza` char(36) DEFAULT NULL,
  `total_kilos` decimal(20,4) DEFAULT NULL,
  `peso_minimo` decimal(20,4) DEFAULT NULL,
  `peso_maximo` decimal(20,4) DEFAULT NULL,
  `peso_promedio` decimal(20,4) DEFAULT NULL,
  `alimento_ingresado` decimal(20,4) DEFAULT NULL,
  `peso_ganancia` decimal(20,4) DEFAULT NULL,
  `id_sexo` char(36) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `total_kilos_iniciales` decimal(20,4) DEFAULT NULL,
  `total_costo_medicina` decimal(20,4) DEFAULT NULL,
  `total_costo_flete` decimal(20,4) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_cierre` datetime DEFAULT NULL,
  `ganancia_promedio` decimal(20,4) DEFAULT NULL,
  `promedio_alimento` decimal(20,4) DEFAULT NULL,
  `medicina_promedio` decimal(20,4) DEFAULT NULL,
  `conversion_alimenticia` decimal(20,4) DEFAULT NULL,
  `merma` decimal(20,4) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_rancho`,`id_corral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corral`
--

LOCK TABLES `corral` WRITE;
/*!40000 ALTER TABLE `corral` DISABLE KEYS */;
INSERT INTO `corral` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','Corral Prueba','Tampico',16,NULL,'',4800.0000,300.0000,300.0000,300.0000,342.1875,-135.0000,'4e73bea4-cad9-11e4-af6c-3860779bbc63',NULL,4935.0000,NULL,1359.0000,'2016-08-31 09:39:24',NULL,-8.4375,22.8125,NULL,-2.7037,5.0000,'S'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','874eb0df-6fa0-11e6-b11d-008cfa6fa291','Hospital','',0,NULL,NULL,NULL,NULL,NULL,NULL,0.0000,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'E'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ceaa4b02-7084-11e6-b11d-008cfa6fa291','Corral Destino','',1,NULL,'',300.0000,300.0000,300.0000,300.0000,22.8125,-15.0000,'49388b3d-cad9-11e4-af6c-3860779bbc63',NULL,315.0000,NULL,151.0000,'2016-08-31 16:10:51',NULL,-15.0000,22.8125,NULL,-1.5208,5.0000,'S'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9cd6e673-7084-11e6-b11d-008cfa6fa291','Hospital','',0,NULL,NULL,NULL,NULL,NULL,NULL,0.0000,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'E');
/*!40000 ALTER TABLE `corral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corral_acopio`
--

DROP TABLE IF EXISTS `corral_acopio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corral_acopio` (
  `id_corral_acopio` char(36) NOT NULL,
  `nombre` char(255) DEFAULT NULL,
  `total_alimento` decimal(20,4) DEFAULT NULL,
  `num_animales` int(11) DEFAULT '0',
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_corral_acopio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corral_acopio`
--

LOCK TABLES `corral_acopio` WRITE;
/*!40000 ALTER TABLE `corral_acopio` DISABLE KEYS */;
INSERT INTO `corral_acopio` VALUES ('48533ab0-37c9-11e6-93e5-10c37b693112','C-ACOPIO 1',0.0000,0,'S'),('4e2be138-37c9-11e6-93e5-10c37b693112','C-ACOPIO 2',0.0000,0,'S'),('554cafff-37c9-11e6-93e5-10c37b693112','C-ACOPIO 3',0.0000,10,'S'),('6a55bb0c-37c9-11e6-93e5-10c37b693112','C-ACOPIO 4',0.0000,0,'S'),('71d93c91-37c9-11e6-93e5-10c37b693112','C-ACOPIO 5',0.0000,0,'S'),('772ee08d-37c9-11e6-93e5-10c37b693112','C-ACOPIO 6',0.0000,0,'S'),('7c3f47ad-37c9-11e6-93e5-10c37b693112','C-ACOPIO 7',0.0000,0,'S'),('815414d2-37c9-11e6-93e5-10c37b693112','C-ACOPIO 8',0.0000,0,'S'),('8932d15b-37c9-11e6-93e5-10c37b693112','C-MANEJO 1',0.0000,0,'S'),('96685bb1-37c9-11e6-93e5-10c37b693112','C-MANEJO 2',0.0000,0,'S');
/*!40000 ALTER TABLE `corral_acopio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corral_acopio_recepcion`
--

DROP TABLE IF EXISTS `corral_acopio_recepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corral_acopio_recepcion` (
  `id_corral_acopio` char(36) NOT NULL,
  `id_recepcion` char(36) NOT NULL,
  `animales_pendientes` int(11) DEFAULT NULL,
  `num_animales` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_corral_acopio`,`id_recepcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corral_acopio_recepcion`
--

LOCK TABLES `corral_acopio_recepcion` WRITE;
/*!40000 ALTER TABLE `corral_acopio_recepcion` DISABLE KEYS */;
INSERT INTO `corral_acopio_recepcion` VALUES ('48533ab0-37c9-11e6-93e5-10c37b693112','1168b41a-6fbc-11e6-b11d-008cfa6fa291',0,10),('554cafff-37c9-11e6-93e5-10c37b693112','9de129cf-706c-11e6-b11d-008cfa6fa291',10,10);
/*!40000 ALTER TABLE `corral_acopio_recepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corral_animal`
--

DROP TABLE IF EXISTS `corral_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corral_animal` (
  `id_rancho` char(36) NOT NULL,
  `id_corral` char(36) NOT NULL,
  `id_animal` char(36) NOT NULL,
  PRIMARY KEY (`id_rancho`,`id_corral`,`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corral_animal`
--

LOCK TABLES `corral_animal` WRITE;
/*!40000 ALTER TABLE `corral_animal` DISABLE KEYS */;
INSERT INTO `corral_animal` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','0bdd8975-6fc0-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','1a7ebf4f-6fc0-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','3f9b7d00-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','5d7cef2d-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','7b41ea44-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','8cee875a-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','8d796d78-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','9a293fb3-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','9c3ade50-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','aa67fee6-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','ad9f4e62-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','b8817bda-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','c1dfe21c-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','c524a7ef-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','e9de6ba1-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','efc58cc0-7051-11e6-a3a5-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','ff53eab3-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ceaa4b02-7084-11e6-b11d-008cfa6fa291','65511741-6fbf-11e6-8683-10c37b693112');
/*!40000 ALTER TABLE `corral_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corral_datos`
--

DROP TABLE IF EXISTS `corral_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corral_datos` (
  `id_rancho` char(36) NOT NULL,
  `id_corral` char(36) NOT NULL,
  `categoria` char(255) DEFAULT NULL,
  `ganado_amedias` char(255) DEFAULT NULL,
  `color_arete` int(11) DEFAULT NULL,
  `fecha_nacimiento` datetime DEFAULT NULL,
  `numero_lote` char(255) DEFAULT NULL,
  `compra` char(255) DEFAULT NULL,
  `porcentaje` decimal(5,2) DEFAULT NULL,
  `id_proveedor` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_corral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corral_datos`
--

LOCK TABLES `corral_datos` WRITE;
/*!40000 ALTER TABLE `corral_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `corral_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cria`
--

DROP TABLE IF EXISTS `cria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cria` (
  `id_rancho` char(36) NOT NULL,
  `id_madre` char(36) NOT NULL,
  `id_cria` char(36) NOT NULL,
  `arete` varchar(45) DEFAULT NULL,
  `id_sexo` char(36) DEFAULT NULL,
  `id_raza` char(36) DEFAULT NULL,
  `fecha_nacimiento` datetime DEFAULT NULL,
  `peso` decimal(20,4) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `id_tipo_parto` char(36) DEFAULT NULL,
  `id_animal` char(36) DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT '',
  `nombre_cria` char(255) DEFAULT '',
  PRIMARY KEY (`id_rancho`,`id_madre`,`id_cria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cria`
--

LOCK TABLES `cria` WRITE;
/*!40000 ALTER TABLE `cria` DISABLE KEYS */;
/*!40000 ALTER TABLE `cria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destino`
--

DROP TABLE IF EXISTS `destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destino` (
  `id_destino` int(11) NOT NULL,
  `descripcion` char(255) DEFAULT NULL,
  PRIMARY KEY (`id_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destino`
--

LOCK TABLES `destino` WRITE;
/*!40000 ALTER TABLE `destino` DISABLE KEYS */;
INSERT INTO `destino` VALUES (1,'900 - Embarque'),(2,'901 - Rastro Vargas'),(3,'902 - Rastro Tierra Blanca'),(4,'903 - Rastro Tihuatlan'),(5,'904 - Rastro Cuitláhuac');
/*!40000 ALTER TABLE `destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_compra` (
  `id_rancho` char(36) NOT NULL,
  `id_compra` char(36) NOT NULL,
  `id_medicina` char(36) NOT NULL,
  `id_detalle` char(36) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `presentacion` decimal(20,4) DEFAULT NULL,
  `precio_unitario` decimal(20,4) DEFAULT NULL,
  `importe` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`,`id_compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
INSERT INTO `detalle_compra` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','4e08e0e3-6fcd-11e6-8683-10c37b693112','60879f0b-0ca6-11e6-8f12-025041000001','4e1096da-6fcd-11e6-8683-10c37b693112',10,1000.0000,12.0000,120.0000),('87452b01-6fa0-11e6-b11d-008cfa6fa291','4e08e0e3-6fcd-11e6-8683-10c37b693112','798db943-0ca6-11e6-8f12-025041000001','4e230a37-6fcd-11e6-8683-10c37b693112',10,1000.0000,12.5000,125.0000),('87452b01-6fa0-11e6-b11d-008cfa6fa291','4e08e0e3-6fcd-11e6-8683-10c37b693112','a952b03e-0ca6-11e6-8f12-025041000001','4e2bed24-6fcd-11e6-8683-10c37b693112',10,1000.0000,18.0000,180.0000);
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra_alimento`
--

DROP TABLE IF EXISTS `detalle_compra_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_compra_alimento` (
  `id_detalle` char(36) NOT NULL,
  `id_rancho` char(36) NOT NULL,
  `id_alimento` char(36) NOT NULL,
  `id_compra` char(36) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(20,2) DEFAULT NULL,
  `importe` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`,`id_compra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra_alimento`
--

LOCK TABLES `detalle_compra_alimento` WRITE;
/*!40000 ALTER TABLE `detalle_compra_alimento` DISABLE KEYS */;
INSERT INTO `detalle_compra_alimento` VALUES ('4378717b-6fcd-11e6-8683-10c37b693112','87452b01-6fa0-11e6-b11d-008cfa6fa291','1541cb01-0ca5-11e6-8f12-025041000001','436fac56-6fcd-11e6-8683-10c37b693112',10000,120.00,1200000.00),('438c7fb8-6fcd-11e6-8683-10c37b693112','87452b01-6fa0-11e6-b11d-008cfa6fa291','5cfa1eef-0ca5-11e6-8f12-025041000001','436fac56-6fcd-11e6-8683-10c37b693112',10000,200.00,2000000.00),('439655c8-6fcd-11e6-8683-10c37b693112','87452b01-6fa0-11e6-b11d-008cfa6fa291','0c528340-0ca5-11e6-8f12-025041000001','436fac56-6fcd-11e6-8683-10c37b693112',10000,120.00,1200000.00),('439a83ce-6fcd-11e6-8683-10c37b693112','87452b01-6fa0-11e6-b11d-008cfa6fa291','4aaac044-0ca5-11e6-8f12-025041000001','436fac56-6fcd-11e6-8683-10c37b693112',10000,10.00,100000.00),('439dfb74-6fcd-11e6-8683-10c37b693112','87452b01-6fa0-11e6-b11d-008cfa6fa291','42896b9f-0ca5-11e6-8f12-025041000001','436fac56-6fcd-11e6-8683-10c37b693112',10000,50.00,500000.00);
/*!40000 ALTER TABLE `detalle_compra_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_gastos_orden`
--

DROP TABLE IF EXISTS `detalle_gastos_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_gastos_orden` (
  `id_detalle_gastos` char(36) NOT NULL,
  `id_orden` char(36) DEFAULT NULL,
  `id_gastos` char(36) DEFAULT NULL,
  `importe` decimal(20,4) DEFAULT NULL,
  `iva` decimal(20,4) DEFAULT NULL,
  `total` decimal(20,4) DEFAULT NULL,
  `referencia` varchar(45) DEFAULT NULL,
  `pago` decimal(20,4) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  `cantidad` decimal(20,4) DEFAULT NULL,
  `tipo_gasto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_gastos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_gastos_orden`
--

LOCK TABLES `detalle_gastos_orden` WRITE;
/*!40000 ALTER TABLE `detalle_gastos_orden` DISABLE KEYS */;
INSERT INTO `detalle_gastos_orden` VALUES ('0510f3da-6fa6-11e6-b11d-008cfa6fa291','d30b5f57-6fa5-11e6-b11d-008cfa6fa291','166534f5-6bb4-11e6-b11d-008cfa6fa291',600.0000,45.0000,645.0000,'C-08094',0.0000,'N',1.0000,'Otros'),('0517ebca-6fa6-11e6-b11d-008cfa6fa291','d30b5f57-6fa5-11e6-b11d-008cfa6fa291','180e0359-6bb4-11e6-b11d-008cfa6fa291',200.0000,23.0000,423.0000,'C-08094',0.0000,'N',2.0000,'Otros'),('0a69f054-6fa4-11e6-b11d-008cfa6fa291','da0c8f0e-6fa3-11e6-b11d-008cfa6fa291','38ad39cb-6fa2-11e6-b11d-008cfa6fa291',500.0000,80.0000,1080.0000,'C-050601',0.0000,'S',2.0000,'Transportacion'),('0a7172e2-6fa4-11e6-b11d-008cfa6fa291','da0c8f0e-6fa3-11e6-b11d-008cfa6fa291','6fa69949-6eda-11e6-beec-10c37b693112',400.0000,30.0000,430.0000,'C-050601',0.0000,'S',1.0000,'Transportacion'),('1c46abb7-6fa6-11e6-b11d-008cfa6fa291','d30b5f57-6fa5-11e6-b11d-008cfa6fa291','6fa69949-6eda-11e6-beec-10c37b693112',500.0000,25.0000,1025.0000,'C-08094',0.0000,'S',2.0000,'Transportacion'),('2204be24-6fa4-11e6-b11d-008cfa6fa291','da0c8f0e-6fa3-11e6-b11d-008cfa6fa291','180e0359-6bb4-11e6-b11d-008cfa6fa291',800.0000,50.0000,1650.0000,'C-050601',0.0000,'N',2.0000,'Otros'),('22ac67f8-6fa6-11e6-b11d-008cfa6fa291','d30b5f57-6fa5-11e6-b11d-008cfa6fa291','166534f5-6bb4-11e6-b11d-008cfa6fa291',600.0000,45.0000,645.0000,'C-08094',0.0000,'N',1.0000,'Otros'),('22b51322-6fa6-11e6-b11d-008cfa6fa291','d30b5f57-6fa5-11e6-b11d-008cfa6fa291','180e0359-6bb4-11e6-b11d-008cfa6fa291',200.0000,23.0000,423.0000,'C-08094',0.0000,'N',2.0000,'Otros'),('2cbf30b9-7208-11e6-b11d-008cfa6fa291','188ff959-7208-11e6-b11d-008cfa6fa291','180e0359-6bb4-11e6-b11d-008cfa6fa291',2000.0000,200.0000,4200.0000,'MC-930714',0.0000,'S',2.0000,'Otros'),('2fae6b1a-6fa4-11e6-b11d-008cfa6fa291','da0c8f0e-6fa3-11e6-b11d-008cfa6fa291','180e0359-6bb4-11e6-b11d-008cfa6fa291',800.0000,50.0000,1650.0000,'C-050601',0.0000,'S',2.0000,'Otros'),('3cce853b-7208-11e6-b11d-008cfa6fa291','188ff959-7208-11e6-b11d-008cfa6fa291','38ad39cb-6fa2-11e6-b11d-008cfa6fa291',1000.0000,500.0000,1500.0000,'MC-930714',0.0000,'S',1.0000,'Transportacion'),('4b7df001-6fc3-11e6-8683-10c37b693112','d30b5f57-6fa5-11e6-b11d-008cfa6fa291','166534f5-6bb4-11e6-b11d-008cfa6fa291',600.0000,45.0000,645.0000,'C-08094',0.0000,'S',1.0000,'Otros'),('4b86cff7-6fc3-11e6-8683-10c37b693112','d30b5f57-6fa5-11e6-b11d-008cfa6fa291','180e0359-6bb4-11e6-b11d-008cfa6fa291',200.0000,23.0000,423.0000,'C-08094',0.0000,'S',2.0000,'Otros'),('4b8d03b5-6fc3-11e6-8683-10c37b693112','d30b5f57-6fa5-11e6-b11d-008cfa6fa291','166534f5-6bb4-11e6-b11d-008cfa6fa291',800.0000,0.0000,800.0000,'C-08094',0.0000,'S',1.0000,'Otros'),('f116812c-6fa5-11e6-b11d-008cfa6fa291','d30b5f57-6fa5-11e6-b11d-008cfa6fa291','6fa69949-6eda-11e6-beec-10c37b693112',500.0000,25.0000,1025.0000,'C-08094',0.0000,'N',2.0000,'Transportacion');
/*!40000 ALTER TABLE `detalle_gastos_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_movimiento`
--

DROP TABLE IF EXISTS `detalle_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_movimiento` (
  `id_rancho` char(36) NOT NULL,
  `id_movimiento` char(36) NOT NULL,
  `id_concepto` char(36) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_animal` char(36) NOT NULL,
  PRIMARY KEY (`id_rancho`,`id_movimiento`,`id_concepto`,`id_detalle`,`id_animal`),
  KEY `fk_det_mov_mov_idx` (`id_rancho`,`id_movimiento`,`id_concepto`),
  KEY `fk_det_mov_animal_idx` (`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_movimiento`
--

LOCK TABLES `detalle_movimiento` WRITE;
/*!40000 ALTER TABLE `detalle_movimiento` DISABLE KEYS */;
INSERT INTO `detalle_movimiento` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf00d80-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'0bdd8975-6fc0-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf7b08c-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'0bdd8975-6fc0-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0a2f5ed-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'1a7ebf4f-6fc0-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0b37f70-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'1a7ebf4f-6fc0-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e793493f-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'3f9b7d00-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ec4fe463-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'5d7cef2d-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b394fef2-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'65511741-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b3a1cd28-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'65511741-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e164fa01-7084-11e6-b11d-008cfa6fa291','87775d5d-6fa0-11e6-b11d-008cfa6fa291',1,'65511741-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e1801dc3-7084-11e6-b11d-008cfa6fa291','877e1685-6fa0-11e6-b11d-008cfa6fa291',1,'65511741-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f21ffcad-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'7b41ea44-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f7c09ea3-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'8cee875a-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba841a8d-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'8d796d78-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba8f7ba8-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'8d796d78-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfa3059b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'9a293fb3-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfae6c31-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'9a293fb3-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','fc8ce74b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'9c3ade50-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4b2aa30-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'aa67fee6-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4ba4c33-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'aa67fee6-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','01dae066-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'ad9f4e62-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb120911-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'b8817bda-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb1b1bb4-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'b8817bda-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','0736aba9-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'c1dfe21c-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d1331011-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'c524a7ef-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d13ab357-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'c524a7ef-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f768e653-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'efc58cc0-7051-11e6-a3a5-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f78ecb11-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'efc58cc0-7051-11e6-a3a5-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d7359d79-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'ff53eab3-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d744e2ee-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'ff53eab3-6fbf-11e6-8683-10c37b693112');
/*!40000 ALTER TABLE `detalle_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_orden_alimento`
--

DROP TABLE IF EXISTS `detalle_orden_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_orden_alimento` (
  `id_detalle` char(36) NOT NULL,
  `id_orden_alimento` char(36) DEFAULT NULL,
  `cantidad` decimal(20,4) DEFAULT NULL,
  `precio_unitario` decimal(20,4) DEFAULT NULL,
  `importe` decimal(20,4) DEFAULT NULL,
  `id_alimento` char(36) DEFAULT NULL,
  `unidad_medida` char(36) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  `impuestos` double(20,4) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_orden_alimento`
--

LOCK TABLES `detalle_orden_alimento` WRITE;
/*!40000 ALTER TABLE `detalle_orden_alimento` DISABLE KEYS */;
INSERT INTO `detalle_orden_alimento` VALUES ('113d51f9-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',0.0000),('1147ed0f-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,200.0000,2000000.0000,'5cfa1eef-0ca5-11e6-8f12-025041000001','4','N',0.0000),('114db20c-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'0c528340-0ca5-11e6-8f12-025041000001','4','N',0.0000),('1158de8c-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,10.0000,100000.0000,'4aaac044-0ca5-11e6-8f12-025041000001','4','N',0.0000),('11679a32-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,50.0000,500000.0000,'42896b9f-0ca5-11e6-8f12-025041000001','4','N',0.0000),('1b25d6be-7394-11e6-b11d-008cfa6fa291','0710c2a4-7137-11e6-b11d-008cfa6fa291',2.0000,2000.0000,4200.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',200.0000),('30800569-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',0.0000),('3087092b-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,200.0000,2000000.0000,'5cfa1eef-0ca5-11e6-8f12-025041000001','4','N',0.0000),('30913b26-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'0c528340-0ca5-11e6-8f12-025041000001','4','N',0.0000),('309b169a-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,10.0000,100000.0000,'4aaac044-0ca5-11e6-8f12-025041000001','4','N',0.0000),('30a632e3-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,50.0000,500000.0000,'42896b9f-0ca5-11e6-8f12-025041000001','4','N',0.0000),('3162a693-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','S',0.0000),('316b74d8-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,200.0000,2000000.0000,'5cfa1eef-0ca5-11e6-8f12-025041000001','4','S',0.0000),('31747c81-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'0c528340-0ca5-11e6-8f12-025041000001','4','S',0.0000),('317eef00-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,10.0000,100000.0000,'4aaac044-0ca5-11e6-8f12-025041000001','4','S',0.0000),('3187b95e-7396-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,50.0000,500000.0000,'42896b9f-0ca5-11e6-8f12-025041000001','4','S',0.0000),('3626e1ca-7396-11e6-b11d-008cfa6fa291','0710c2a4-7137-11e6-b11d-008cfa6fa291',2.0000,2000.0000,4200.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',200.0000),('3f14b7ca-7396-11e6-b11d-008cfa6fa291','0710c2a4-7137-11e6-b11d-008cfa6fa291',2.0000,2000.0000,4200.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',200.0000),('4967ef29-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',0.0000),('49757786-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,200.0000,2000000.0000,'5cfa1eef-0ca5-11e6-8f12-025041000001','4','N',0.0000),('497ed389-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'0c528340-0ca5-11e6-8f12-025041000001','4','N',0.0000),('49854b60-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,10.0000,100000.0000,'4aaac044-0ca5-11e6-8f12-025041000001','4','N',0.0000),('498fb829-738e-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,50.0000,500000.0000,'42896b9f-0ca5-11e6-8f12-025041000001','4','N',0.0000),('5ee943a4-7460-11e6-b11d-008cfa6fa291','5edded24-7460-11e6-b11d-008cfa6fa291',2.0000,20000.0000,42000.0000,'1541cb01-0ca5-11e6-8f12-025041000001','5','S',2000.0000),('66760825-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',0.0000),('667c86ac-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,200.0000,2000000.0000,'5cfa1eef-0ca5-11e6-8f12-025041000001','4','N',0.0000),('668798c3-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'0c528340-0ca5-11e6-8f12-025041000001','4','N',0.0000),('6691d5a2-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,10.0000,100000.0000,'4aaac044-0ca5-11e6-8f12-025041000001','4','N',0.0000),('669aadae-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,50.0000,500000.0000,'42896b9f-0ca5-11e6-8f12-025041000001','4','N',0.0000),('94827a3c-7395-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',0.0000),('948ab95d-7395-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,200.0000,2000000.0000,'5cfa1eef-0ca5-11e6-8f12-025041000001','4','N',0.0000),('9493887a-7395-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'0c528340-0ca5-11e6-8f12-025041000001','4','N',0.0000),('949c2458-7395-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,10.0000,100000.0000,'4aaac044-0ca5-11e6-8f12-025041000001','4','N',0.0000),('94a756e8-7395-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,50.0000,500000.0000,'42896b9f-0ca5-11e6-8f12-025041000001','4','N',0.0000),('a5af6aa4-7157-11e6-b11d-008cfa6fa291','0710c2a4-7137-11e6-b11d-008cfa6fa291',2.0000,2000.0000,4200.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',200.0000),('c634f99f-6fcc-11e6-8683-10c37b693112','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',NULL),('c63a32a5-6fcc-11e6-8683-10c37b693112','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,200.0000,2000000.0000,'5cfa1eef-0ca5-11e6-8f12-025041000001','4','N',NULL),('c63ee80c-6fcc-11e6-8683-10c37b693112','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'0c528340-0ca5-11e6-8f12-025041000001','4','N',NULL),('c6469809-6fcc-11e6-8683-10c37b693112','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,10.0000,100000.0000,'4aaac044-0ca5-11e6-8f12-025041000001','4','N',NULL),('c654ead5-6fcc-11e6-8683-10c37b693112','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,50.0000,500000.0000,'42896b9f-0ca5-11e6-8f12-025041000001','4','N',NULL),('dd9be718-7396-11e6-b11d-008cfa6fa291','0710c2a4-7137-11e6-b11d-008cfa6fa291',2.0000,2000.0000,4200.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',200.0000),('e0c1585c-7396-11e6-b11d-008cfa6fa291','0710c2a4-7137-11e6-b11d-008cfa6fa291',2.0000,2000.0000,4200.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','S',200.0000),('fc9bf2a0-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'1541cb01-0ca5-11e6-8f12-025041000001','4','N',0.0000),('fca43faf-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,200.0000,2000000.0000,'5cfa1eef-0ca5-11e6-8f12-025041000001','4','N',0.0000),('fcacfbdd-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,120.0000,1200000.0000,'0c528340-0ca5-11e6-8f12-025041000001','4','N',0.0000),('fcb472e7-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,10.0000,100000.0000,'4aaac044-0ca5-11e6-8f12-025041000001','4','N',0.0000),('fcbb151d-738f-11e6-b11d-008cfa6fa291','c62f663d-6fcc-11e6-8683-10c37b693112',10000.0000,50.0000,500000.0000,'42896b9f-0ca5-11e6-8f12-025041000001','4','N',0.0000);
/*!40000 ALTER TABLE `detalle_orden_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_orden_ganado`
--

DROP TABLE IF EXISTS `detalle_orden_ganado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_orden_ganado` (
  `id_detalle` char(36) NOT NULL,
  `id_orden_ganado` char(36) DEFAULT NULL,
  `cantidad` decimal(20,4) DEFAULT NULL,
  `precio_unitario` decimal(20,4) DEFAULT NULL,
  `importe` decimal(20,4) DEFAULT NULL,
  `unidad_medida` char(36) DEFAULT NULL,
  `id_tipoganado` char(36) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  `id_sexo` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_orden_ganado`
--

LOCK TABLES `detalle_orden_ganado` WRITE;
/*!40000 ALTER TABLE `detalle_orden_ganado` DISABLE KEYS */;
INSERT INTO `detalle_orden_ganado` VALUES ('1897fff2-7208-11e6-b11d-008cfa6fa291','188ff959-7208-11e6-b11d-008cfa6fa291',1500.0000,30.0000,45000.0000,'4','10e05980-37c2-11e6-93e5-10c37b693112','N','49388b3d-cad9-11e4-af6c-3860779bbc63'),('54ccb95f-7208-11e6-b11d-008cfa6fa291','188ff959-7208-11e6-b11d-008cfa6fa291',1500.0000,30.0000,45000.0000,'4','10e05980-37c2-11e6-93e5-10c37b693112','S','49388b3d-cad9-11e4-af6c-3860779bbc63'),('54d39e09-7208-11e6-b11d-008cfa6fa291','188ff959-7208-11e6-b11d-008cfa6fa291',2000.0000,40.0000,80000.0000,'4','f55f7305-37c1-11e6-93e5-10c37b693112','S','43ae095a-cad9-11e4-af6c-3860779bbc63'),('5f101304-6fc8-11e6-8683-10c37b693112','5f0ab4fd-6fc8-11e6-8683-10c37b693112',3000.0000,28.0000,84000.0000,'4','10e05980-37c2-11e6-93e5-10c37b693112','N','49388b3d-cad9-11e4-af6c-3860779bbc63'),('9b9e87d5-6fa7-11e6-b11d-008cfa6fa291','9b92533f-6fa7-11e6-b11d-008cfa6fa291',2000.0000,50.0000,100000.0000,'4','10e05980-37c2-11e6-93e5-10c37b693112','S','49388b3d-cad9-11e4-af6c-3860779bbc63'),('9ba4826e-6fa7-11e6-b11d-008cfa6fa291','9b92533f-6fa7-11e6-b11d-008cfa6fa291',500.0000,40.0000,20000.0000,'4','f55f7305-37c1-11e6-93e5-10c37b693112','S','43ae095a-cad9-11e4-af6c-3860779bbc63'),('d312a380-6fa5-11e6-b11d-008cfa6fa291','d30b5f57-6fa5-11e6-b11d-008cfa6fa291',2000.0000,50.0000,100000.0000,'4','208a30cc-37c2-11e6-93e5-10c37b693112','S','43ae095a-cad9-11e4-af6c-3860779bbc63'),('da146bed-6fa3-11e6-b11d-008cfa6fa291','da0c8f0e-6fa3-11e6-b11d-008cfa6fa291',2000.0000,20.0000,40000.0000,'4','10e05980-37c2-11e6-93e5-10c37b693112','S','49388b3d-cad9-11e4-af6c-3860779bbc63'),('fe95a238-6fc9-11e6-8683-10c37b693112','5f0ab4fd-6fc8-11e6-8683-10c37b693112',3000.0000,28.0000,84000.0000,'4','10e05980-37c2-11e6-93e5-10c37b693112','S','49388b3d-cad9-11e4-af6c-3860779bbc63');
/*!40000 ALTER TABLE `detalle_orden_ganado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_orden_medicina`
--

DROP TABLE IF EXISTS `detalle_orden_medicina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_orden_medicina` (
  `id_detalle` char(36) NOT NULL,
  `id_orden_medicina` char(36) DEFAULT NULL,
  `cantidad` decimal(20,4) DEFAULT NULL,
  `importe` decimal(20,4) DEFAULT NULL,
  `id_medicina` char(36) DEFAULT NULL,
  `unidad_medida` char(36) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  `precio_unitario` decimal(20,4) DEFAULT NULL,
  `presentacion` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_orden_medicina`
--

LOCK TABLES `detalle_orden_medicina` WRITE;
/*!40000 ALTER TABLE `detalle_orden_medicina` DISABLE KEYS */;
INSERT INTO `detalle_orden_medicina` VALUES ('f2bc316c-6fcc-11e6-8683-10c37b693112','f2b343fd-6fcc-11e6-8683-10c37b693112',10.0000,120.0000,'60879f0b-0ca6-11e6-8f12-025041000001','3','S',12.0000,1000.0000),('f2c22fc0-6fcc-11e6-8683-10c37b693112','f2b343fd-6fcc-11e6-8683-10c37b693112',10.0000,125.0000,'798db943-0ca6-11e6-8f12-025041000001','3','S',12.5000,1000.0000),('f2c71241-6fcc-11e6-8683-10c37b693112','f2b343fd-6fcc-11e6-8683-10c37b693112',10.0000,180.0000,'a952b03e-0ca6-11e6-8f12-025041000001','3','S',18.0000,1000.0000);
/*!40000 ALTER TABLE `detalle_orden_medicina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id_estado` char(36) NOT NULL,
  `id_pais` char(36) NOT NULL,
  `descripcion` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_estado`,`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES ('1','1','Aguascalientes'),('10','1','Durango'),('11','1','Guanajuato'),('12','1','Guerrero'),('13','1','Hidalgo'),('14','1','Jalisco'),('15','1','México'),('16','1','Michoacán de Ocampo'),('17','1','Morelos'),('18','1','Nayarit'),('19','1','Nuevo León'),('2','1','Baja California'),('20','1','Oaxaca'),('21','1','Puebla'),('22','1','Querétaro'),('23','1','Quintana Roo'),('24','1','San Luis Potosí'),('25','1','Sinaloa'),('26','1','Sonora'),('27','1','Tabasco'),('28','1','Tamaulipas'),('29','1','Tlaxcala'),('3','1','Baja California Sur'),('30','1','Veracruz de Ignacio de la llave'),('31','1','Yucatán'),('32','1','Zacatecas'),('4','1','Campeche'),('5','1','Coahuila de Zaragoza'),('6','1','Colima'),('7','1','Chiapas'),('8','1','Chihuahua'),('9','1','Distrito Federal');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_vientre`
--

DROP TABLE IF EXISTS `estado_vientre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_vientre` (
  `id_estado_vientre` char(36) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_estado_vientre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_vientre`
--

LOCK TABLES `estado_vientre` WRITE;
/*!40000 ALTER TABLE `estado_vientre` DISABLE KEYS */;
INSERT INTO `estado_vientre` VALUES ('058db38b-317f-11e6-8267-10c37b693112','Programada','S'),('1091ff56-317f-11e6-8267-10c37b693112','Servida','S'),('1cd65a2f-317f-11e6-8267-10c37b693112','Preñada','S'),('f0c5579a-317e-11e6-8267-10c37b693112','Vacia','S');
/*!40000 ALTER TABLE `estado_vientre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadodestino`
--

DROP TABLE IF EXISTS `estadodestino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadodestino` (
  `id_estado` char(36) NOT NULL,
  `id_pais` char(36) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estado`,`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadodestino`
--

LOCK TABLES `estadodestino` WRITE;
/*!40000 ALTER TABLE `estadodestino` DISABLE KEYS */;
INSERT INTO `estadodestino` VALUES ('1','1','Tamaulipas'),('2','1','Nuevo León'),('3','1','San Luis Potosí'),('4','1','Veracruz');
/*!40000 ALTER TABLE `estadodestino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoorigen`
--

DROP TABLE IF EXISTS `estadoorigen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadoorigen` (
  `id_estado` char(36) NOT NULL,
  `id_pais` char(36) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estado`,`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoorigen`
--

LOCK TABLES `estadoorigen` WRITE;
/*!40000 ALTER TABLE `estadoorigen` DISABLE KEYS */;
INSERT INTO `estadoorigen` VALUES ('1','1','Aguascalientes'),('10','1','Durango'),('11','1','Guanajuato'),('15','1','Chihuahua'),('2','1','Tamaulipas'),('3','1','Nuevo León'),('5','1','Veracruz'),('6','1','Tabasco'),('7','1','San Luis Potosí'),('8','1','Campeche');
/*!40000 ALTER TABLE `estadoorigen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento_peso`
--

DROP TABLE IF EXISTS `evento_peso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento_peso` (
  `id_evento_peso` char(36) NOT NULL,
  `descripcion` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_evento_peso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento_peso`
--

LOCK TABLES `evento_peso` WRITE;
/*!40000 ALTER TABLE `evento_peso` DISABLE KEYS */;
INSERT INTO `evento_peso` VALUES ('883300af-2132-11e6-a364-10c37b693112','Control'),('90598587-21fb-11e6-8ad9-10c37b693112','Peso Mermado'),('98ad112e-2132-11e6-a364-10c37b693112','Palpaciones'),('aada60b5-2132-11e6-a364-10c37b693112','Entore'),('bf0b807d-2132-11e6-a364-10c37b693112','Servicio'),('c60b50bb-2132-11e6-a364-10c37b693112','Venta'),('cae86438-2132-11e6-a364-10c37b693112','Compra'),('cf9be82a-2132-11e6-a364-10c37b693112','Traslado'),('d6788411-2132-11e6-a364-10c37b693112','Nacimiento'),('e39f4f02-2132-11e6-a364-10c37b693112','Destete'),('e8701714-2132-11e6-a364-10c37b693112','Al parto'),('ef73c95b-2132-11e6-a364-10c37b693112','Al secado'),('f5880a92-2132-11e6-a364-10c37b693112','Implante');
/*!40000 ALTER TABLE `evento_peso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `id_factura` char(36) NOT NULL,
  `factura` varchar(45) DEFAULT NULL,
  `orden_compra` varchar(45) DEFAULT NULL,
  `id_origen` char(36) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_proveedor` char(36) DEFAULT NULL,
  `subtotal` decimal(20,4) DEFAULT NULL,
  `iva` decimal(20,4) DEFAULT NULL,
  `total` decimal(20,4) DEFAULT NULL,
  `folio_compra` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_orden`
--

DROP TABLE IF EXISTS `factura_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_orden` (
  `id_factura_orden` char(36) NOT NULL,
  `id_orden_ganado` char(36) DEFAULT NULL,
  `factura` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_factura_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_orden`
--

LOCK TABLES `factura_orden` WRITE;
/*!40000 ALTER TABLE `factura_orden` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos_transportacion`
--

DROP TABLE IF EXISTS `gastos_transportacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastos_transportacion` (
  `id_gastos` char(36) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_gastos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos_transportacion`
--

LOCK TABLES `gastos_transportacion` WRITE;
/*!40000 ALTER TABLE `gastos_transportacion` DISABLE KEYS */;
INSERT INTO `gastos_transportacion` VALUES ('38ad39cb-6fa2-11e6-b11d-008cfa6fa291','2','Comisión','S'),('454362e1-6fa2-11e6-b11d-008cfa6fa291','3','Combustible','S'),('6fa69949-6eda-11e6-beec-10c37b693112','1','Flete','S');
/*!40000 ALTER TABLE `gastos_transportacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genealogia`
--

DROP TABLE IF EXISTS `genealogia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genealogia` (
  `id_animal` char(36) NOT NULL,
  `id_madre` char(36) NOT NULL,
  `id_padre` char(36) NOT NULL,
  PRIMARY KEY (`id_animal`,`id_madre`,`id_padre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genealogia`
--

LOCK TABLES `genealogia` WRITE;
/*!40000 ALTER TABLE `genealogia` DISABLE KEYS */;
/*!40000 ALTER TABLE `genealogia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hallazgo`
--

DROP TABLE IF EXISTS `hallazgo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hallazgo` (
  `id_hallazgo` char(36) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_hallazgo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hallazgo`
--

LOCK TABLES `hallazgo` WRITE;
/*!40000 ALTER TABLE `hallazgo` DISABLE KEYS */;
INSERT INTO `hallazgo` VALUES ('24181e87-438b-11e6-93f8-10c37b693112','Preñada'),('3381aab0-438b-11e6-93f8-10c37b693112','No Preñada');
/*!40000 ALTER TABLE `hallazgo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_sanitaria`
--

DROP TABLE IF EXISTS `info_sanitaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_sanitaria` (
  `id_info_sanitaria` char(36) NOT NULL,
  `numero_so_sanitaria` varchar(45) DEFAULT NULL,
  `folio_tbe` varchar(45) DEFAULT NULL,
  `folio_br` varchar(45) DEFAULT NULL,
  `folio_unico` varchar(45) DEFAULT NULL,
  `folio_flejes` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'S',
  PRIMARY KEY (`id_info_sanitaria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_sanitaria`
--

LOCK TABLES `info_sanitaria` WRITE;
/*!40000 ALTER TABLE `info_sanitaria` DISABLE KEYS */;
INSERT INTO `info_sanitaria` VALUES ('36a0b935-6fca-11e6-8683-10c37b693112','B5679742','798592-583','747485-475','3766','13488','S'),('5624260f-6fca-11e6-8683-10c37b693112','B5678949','2815709','2767506','27696','13178','S'),('ba32cb8f-6bbb-11e6-aa84-10c37b693112','D2590461','3977803-02','1999596-95','31895','13372','S');
/*!40000 ALTER TABLE `info_sanitaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_alimento`
--

DROP TABLE IF EXISTS `ingreso_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso_alimento` (
  `id_ingreso_alimento` char(36) NOT NULL,
  `numero_lote` varchar(45) DEFAULT NULL,
  `id_corral` char(36) DEFAULT NULL,
  `total_alimento` decimal(20,4) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `costo_unitario` decimal(20,4) DEFAULT NULL,
  `costo_total` decimal(20,4) DEFAULT NULL,
  `carro` varchar(45) DEFAULT NULL,
  `vale_material` varchar(45) DEFAULT NULL,
  `texto_cabecera` varchar(45) DEFAULT NULL,
  `porcentaje_alimento` decimal(20,2) DEFAULT NULL,
  `id_receta` char(36) DEFAULT NULL,
  `id_rancho` char(36) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_ingreso_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_alimento`
--

LOCK TABLES `ingreso_alimento` WRITE;
/*!40000 ALTER TABLE `ingreso_alimento` DISABLE KEYS */;
INSERT INTO `ingreso_alimento` VALUES ('9cbeb60f-6fcd-11e6-8683-10c37b693112','','5f797185-6fa9-11e6-b11d-008cfa6fa291',170.0000,'2016-08-31 17:52:19',0.0000,15663.3900,'','','',41.77,'70180150-6fcd-11e6-8683-10c37b693112','87452b01-6fa0-11e6-b11d-008cfa6fa291','S'),('a5819eff-6fcd-11e6-8683-10c37b693112','','5f797185-6fa9-11e6-b11d-008cfa6fa291',195.0000,'2016-09-01 17:52:19',0.0000,17966.8300,'','','',47.91,'70180150-6fcd-11e6-8683-10c37b693112','87452b01-6fa0-11e6-b11d-008cfa6fa291','S');
/*!40000 ALTER TABLE `ingreso_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inseminador`
--

DROP TABLE IF EXISTS `inseminador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inseminador` (
  `id_inseminador` char(36) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_inseminador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inseminador`
--

LOCK TABLES `inseminador` WRITE;
/*!40000 ALTER TABLE `inseminador` DISABLE KEYS */;
/*!40000 ALTER TABLE `inseminador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `id_inventario` char(36) NOT NULL,
  `id_rancho` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_inventario`,`id_rancho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES ('8f664808-fc17-11e5-8fbb-10c37b693112','a7bc0568-f766-11e5-878f-281878d1f2b4','2016-04-06 11:49:42'),('b033db3d-fc45-11e5-8fbb-10c37b693112','a7bc0568-f766-11e5-878f-281878d1f2b4','2016-04-06 17:19:54');
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_animal`
--

DROP TABLE IF EXISTS `inventario_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario_animal` (
  `id_inventario_animal` char(36) NOT NULL,
  `id_inventario` char(36) NOT NULL,
  `id_animal` char(36) NOT NULL,
  PRIMARY KEY (`id_inventario_animal`,`id_inventario`,`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_animal`
--

LOCK TABLES `inventario_animal` WRITE;
/*!40000 ALTER TABLE `inventario_animal` DISABLE KEYS */;
INSERT INTO `inventario_animal` VALUES ('8f6f8934-fc17-11e5-8fbb-10c37b693112','8f664808-fc17-11e5-8fbb-10c37b693112','0463f1dc-f769-11e5-878f-281878d1f2b4'),('8f76ec4c-fc17-11e5-8fbb-10c37b693112','8f664808-fc17-11e5-8fbb-10c37b693112','10c30d6a-f767-11e5-878f-281878d1f2b4'),('8f7ce692-fc17-11e5-8fbb-10c37b693112','8f664808-fc17-11e5-8fbb-10c37b693112','26f9179d-f767-11e5-878f-281878d1f2b4'),('8f85cc72-fc17-11e5-8fbb-10c37b693112','8f664808-fc17-11e5-8fbb-10c37b693112','3d91923e-f767-11e5-878f-281878d1f2b4'),('8f890af2-fc17-11e5-8fbb-10c37b693112','8f664808-fc17-11e5-8fbb-10c37b693112','4c01dfd9-f767-11e5-878f-281878d1f2b4'),('8f8f62c4-fc17-11e5-8fbb-10c37b693112','8f664808-fc17-11e5-8fbb-10c37b693112','5bbe1046-f767-11e5-878f-281878d1f2b4'),('8f93c162-fc17-11e5-8fbb-10c37b693112','8f664808-fc17-11e5-8fbb-10c37b693112','6a7e03a3-f767-11e5-878f-281878d1f2b4'),('8f96fff5-fc17-11e5-8fbb-10c37b693112','8f664808-fc17-11e5-8fbb-10c37b693112','7beb210f-f767-11e5-878f-281878d1f2b4'),('b044a65a-fc45-11e5-8fbb-10c37b693112','b033db3d-fc45-11e5-8fbb-10c37b693112','1265c5a7-f768-11e5-878f-281878d1f2b4'),('b04f3597-fc45-11e5-8fbb-10c37b693112','b033db3d-fc45-11e5-8fbb-10c37b693112','1f9cc651-f768-11e5-878f-281878d1f2b4'),('b0539dcf-fc45-11e5-8fbb-10c37b693112','b033db3d-fc45-11e5-8fbb-10c37b693112','29abfe95-f768-11e5-878f-281878d1f2b4'),('b058c625-fc45-11e5-8fbb-10c37b693112','b033db3d-fc45-11e5-8fbb-10c37b693112','35ec41ba-f768-11e5-878f-281878d1f2b4'),('b05fe8d9-fc45-11e5-8fbb-10c37b693112','b033db3d-fc45-11e5-8fbb-10c37b693112','3feaa28d-f768-11e5-878f-281878d1f2b4'),('b0676bd5-fc45-11e5-8fbb-10c37b693112','b033db3d-fc45-11e5-8fbb-10c37b693112','48cce8be-f768-11e5-878f-281878d1f2b4'),('b06af613-fc45-11e5-8fbb-10c37b693112','b033db3d-fc45-11e5-8fbb-10c37b693112','5034a50b-f768-11e5-878f-281878d1f2b4');
/*!40000 ALTER TABLE `inventario_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab` (
  `id_lab` char(36) NOT NULL,
  `codigo` char(36) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_lab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab`
--

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` VALUES ('26a5cfa3-7120-11e6-b11d-008cfa6fa291','1','a','S');
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicina`
--

DROP TABLE IF EXISTS `medicina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicina` (
  `id_medicina` char(36) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` char(255) NOT NULL,
  `costo` decimal(20,4) DEFAULT NULL,
  `id_unidad` char(36) DEFAULT NULL,
  `presentacion` decimal(20,4) DEFAULT NULL,
  `costo_unitario` decimal(20,4) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_medicina`,`codigo`,`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicina`
--

LOCK TABLES `medicina` WRITE;
/*!40000 ALTER TABLE `medicina` DISABLE KEYS */;
INSERT INTO `medicina` VALUES ('04049bfe-0ca6-11e6-8f12-025041000001',167,'Bovimune protector 50 ds',0.0000,'3',0.0000,0.0000,'S'),('0f534938-0ca6-11e6-8f12-025041000001',168,'Bovimune single shot 50 ds',0.0000,'3',0.0000,0.0000,'S'),('31778c57-0ca6-11e6-8f12-025041000001',332,'Vacuna - Bovimune clostri 50 ds',0.0000,'3',0.0000,0.0000,'S'),('3c62c40f-0ca6-11e6-8f12-025041000001',235,'Implante - component te-s con Tylan',0.0000,'2',0.0000,0.0000,'S'),('4a247fc3-0ca6-11e6-8f12-025041000001',181,'Dectectiver tf 1 lt',0.0000,'3',0.0000,0.0000,'N'),('55654de7-0ca6-11e6-8f12-025041000001',560,'CYDECTIN',0.0000,'3',0.0000,0.0000,'S'),('60879f0b-0ca6-11e6-8f12-025041000001',129,'Antibiótico - Karitil 30% inyectable',0.0000,'3',0.0000,0.0000,'S'),('6ed49684-0ca6-11e6-8f12-025041000001',297,'Seleject b12 200 ml',0.0000,'3',0.0000,0.0000,'S'),('798db943-0ca6-11e6-8f12-025041000001',126,'Antibiótico- draxxyn',0.0000,'3',0.0000,0.0000,'S'),('86677620-0ca6-11e6-8f12-025041000001',206,'Flunidin 250 ml',0.0000,'3',0.0000,0.0000,'S'),('92066699-0ca6-11e6-8f12-025041000001',335,'vacuna protector 10',0.0000,'3',0.0000,0.0000,'S'),('9dd231de-0ca6-11e6-8f12-025041000001',333,'Bovimune single shot 10 ds',0.0000,'3',0.0000,0.0000,'S'),('a4dcb776-13d1-11e6-8f12-025041000001',191,'Desparasitante- Dectectiver tf',0.0000,'3',0.0000,0.0000,'S'),('a952b03e-0ca6-11e6-8f12-025041000001',166,'Bovimune clostri 10 ds',0.0000,'3',0.0000,0.0000,'S'),('b48aeb81-0ca6-11e6-8f12-025041000001',239,'Implante - Revalor h 20ds',0.0000,'2',0.0000,0.0000,'S');
/*!40000 ALTER TABLE `medicina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicina_animal`
--

DROP TABLE IF EXISTS `medicina_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicina_animal` (
  `id_rancho` char(36) NOT NULL,
  `id_medicina_animal` char(36) NOT NULL,
  `id_medicina` char(36) DEFAULT NULL,
  `id_animal` char(36) DEFAULT NULL,
  `dosis` decimal(20,4) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `costo` decimal(20,4) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  `costo_veterinario` decimal(20,4) DEFAULT '0.0000',
  `diagnostico` varchar(45) DEFAULT NULL,
  `hospital` char(1) DEFAULT 'N',
  PRIMARY KEY (`id_medicina_animal`,`id_rancho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicina_animal`
--

LOCK TABLES `medicina_animal` WRITE;
/*!40000 ALTER TABLE `medicina_animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicina_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicina_animal_hospital`
--

DROP TABLE IF EXISTS `medicina_animal_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicina_animal_hospital` (
  `id_rancho` char(36) NOT NULL,
  `id_hospital` char(36) DEFAULT NULL,
  `id_medicina_animal_hospital` char(36) NOT NULL,
  `id_medicina` char(36) DEFAULT NULL,
  `id_animal` char(36) DEFAULT NULL,
  `dosis` decimal(20,4) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `costo` decimal(20,4) DEFAULT NULL,
  `costo_veterinario` decimal(20,4) DEFAULT NULL,
  `diagnostico` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_medicina_animal_hospital`,`id_rancho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicina_animal_hospital`
--

LOCK TABLES `medicina_animal_hospital` WRITE;
/*!40000 ALTER TABLE `medicina_animal_hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicina_animal_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicina_tratamiento`
--

DROP TABLE IF EXISTS `medicina_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicina_tratamiento` (
  `id_tratamiento` char(36) NOT NULL,
  `id_medicina` char(36) NOT NULL,
  `dosis` decimal(20,4) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_tratamiento`,`id_medicina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicina_tratamiento`
--

LOCK TABLES `medicina_tratamiento` WRITE;
/*!40000 ALTER TABLE `medicina_tratamiento` DISABLE KEYS */;
INSERT INTO `medicina_tratamiento` VALUES ('58a4cf1b-6fcd-11e6-8683-10c37b693112','60879f0b-0ca6-11e6-8f12-025041000001',10.0000,'S'),('58a4cf1b-6fcd-11e6-8683-10c37b693112','798db943-0ca6-11e6-8f12-025041000001',12.0000,'S'),('58a4cf1b-6fcd-11e6-8683-10c37b693112','a952b03e-0ca6-11e6-8f12-025041000001',5.0000,'S');
/*!40000 ALTER TABLE `medicina_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulo` (
  `id_modulo` varchar(36) NOT NULL,
  `nombre_modulo` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_modulo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES ('1','Alimentos','admin'),('2','Compra ganado','admin'),('3','Compra Medicamentos','admin'),('4','Peso Manual','admin'),('5','Ingreso Alimentos','admin');
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento`
--

DROP TABLE IF EXISTS `movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento` (
  `id_rancho` char(36) NOT NULL,
  `id_movimiento` char(36) NOT NULL,
  `id_concepto` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_rancho_origen` char(36) DEFAULT NULL,
  `id_corral_origen` char(36) DEFAULT NULL,
  `id_rancho_destino` char(36) DEFAULT NULL,
  `id_corral_destino` char(36) DEFAULT NULL,
  `id_clase_movimiento` int(11) DEFAULT NULL,
  `numero_pedido` char(255) DEFAULT NULL,
  `id_cliente` char(36) DEFAULT NULL,
  `necropcia` char(255) DEFAULT NULL,
  `dx_muerte` char(255) DEFAULT NULL,
  `etapa_reproductiva` char(255) DEFAULT NULL,
  `causa_entrada` char(255) DEFAULT NULL,
  `observacion` char(255) DEFAULT NULL,
  `peso` decimal(12,4) DEFAULT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rancho`,`id_movimiento`,`id_concepto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento`
--

LOCK TABLES `movimiento` WRITE;
/*!40000 ALTER TABLE `movimiento` DISABLE KEYS */;
INSERT INTO `movimiento` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','01dae066-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:55:27'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','0736aba9-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:55:36'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b394fef2-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-08-31 22:53:15'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b3a1cd28-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:53:15'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba841a8d-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-08-31 22:53:27'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba8f7ba8-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:53:27'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfa3059b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-08-31 22:53:36'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfae6c31-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:53:36'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4b2aa30-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-08-31 22:53:44'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4ba4c33-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:53:44'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb120911-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-08-31 22:53:55'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb1b1bb4-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:53:55'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d1331011-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-08-31 22:54:05'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d13ab357-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:54:05'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d7359d79-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-08-31 22:54:15'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d744e2ee-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:54:15'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf00d80-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-08-31 22:54:23'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf7b08c-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:54:23'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0a2f5ed-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-08-31 22:54:31'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0b37f70-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:54:31'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e164fa01-7084-11e6-b11d-008cfa6fa291','87775d5d-6fa0-11e6-b11d-008cfa6fa291','2016-09-01 03:42:46','87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','87452b01-6fa0-11e6-b11d-008cfa6fa291','ceaa4b02-7084-11e6-b11d-008cfa6fa291',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-01 20:42:46'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e1801dc3-7084-11e6-b11d-008cfa6fa291','877e1685-6fa0-11e6-b11d-008cfa6fa291','2016-09-01 03:42:46','87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','87452b01-6fa0-11e6-b11d-008cfa6fa291','ceaa4b02-7084-11e6-b11d-008cfa6fa291',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-01 20:42:46'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e793493f-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:54:43'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ec4fe463-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:54:51'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f21ffcad-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:55:00'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f768e653-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,315.0000,'2016-09-01 14:40:02'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f78ecb11-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-09-01 14:40:02'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f7c09ea3-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:55:10'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','fc8ce74b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.0000,'2016-08-31 22:55:18');
/*!40000 ALTER TABLE `movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_animal`
--

DROP TABLE IF EXISTS `movimiento_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento_animal` (
  `id_rancho` char(36) NOT NULL,
  `id_movimiento` char(36) NOT NULL,
  `id_concepto` char(36) NOT NULL,
  `id_animal` char(36) NOT NULL,
  PRIMARY KEY (`id_rancho`,`id_movimiento`,`id_concepto`,`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_animal`
--

LOCK TABLES `movimiento_animal` WRITE;
/*!40000 ALTER TABLE `movimiento_animal` DISABLE KEYS */;
INSERT INTO `movimiento_animal` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','01dae066-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','ad9f4e62-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','0736aba9-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','c1dfe21c-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba8f7ba8-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','8d796d78-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfae6c31-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','9a293fb3-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4ba4c33-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','aa67fee6-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb1b1bb4-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','b8817bda-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d13ab357-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','c524a7ef-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d744e2ee-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','ff53eab3-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf7b08c-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','0bdd8975-6fc0-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0b37f70-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','1a7ebf4f-6fc0-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e1801dc3-7084-11e6-b11d-008cfa6fa291','877e1685-6fa0-11e6-b11d-008cfa6fa291','65511741-6fbf-11e6-8683-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e793493f-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','3f9b7d00-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ec4fe463-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','5d7cef2d-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f21ffcad-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','7b41ea44-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f78ecb11-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','efc58cc0-7051-11e6-a3a5-10c37b693112'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f7c09ea3-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','8cee875a-6fbc-11e6-b11d-008cfa6fa291'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','fc8ce74b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','9c3ade50-6fbc-11e6-b11d-008cfa6fa291');
/*!40000 ALTER TABLE `movimiento_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_eventopeso`
--

DROP TABLE IF EXISTS `movimiento_eventopeso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento_eventopeso` (
  `id_movimiento_eventoPeso` char(36) NOT NULL,
  `id_movimiento` char(36) DEFAULT NULL,
  `id_evento_peso` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_movimiento_eventoPeso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_eventopeso`
--

LOCK TABLES `movimiento_eventopeso` WRITE;
/*!40000 ALTER TABLE `movimiento_eventopeso` DISABLE KEYS */;
INSERT INTO `movimiento_eventopeso` VALUES ('567e4f7e-2360-11e6-a431-10c37b693112','567589ee-2360-11e6-a431-10c37b693112','90598587-21fb-11e6-8ad9-10c37b693112'),('56901dbd-2360-11e6-a431-10c37b693112','568601f0-2360-11e6-a431-10c37b693112','883300af-2132-11e6-a364-10c37b693112'),('5ab0c571-21de-11e6-814e-10c37b693112','5a8be26a-21de-11e6-814e-10c37b693112','90598587-21fb-11e6-8ad9-10c37b693112'),('5ac51e95-21de-11e6-814e-10c37b693112','5ab861d3-21de-11e6-814e-10c37b693112','883300af-2132-11e6-a364-10c37b693112'),('648d581a-235d-11e6-a431-10c37b693112','646849f3-235d-11e6-a431-10c37b693112','90598587-21fb-11e6-8ad9-10c37b693112'),('64b2479a-235d-11e6-a431-10c37b693112','649b24ed-235d-11e6-a431-10c37b693112','883300af-2132-11e6-a364-10c37b693112'),('6b7fb6c6-21fa-11e6-8ad9-10c37b693112','6b6f9c3b-21fa-11e6-8ad9-10c37b693112','cae86438-2132-11e6-a364-10c37b693112'),('6ca38f61-21de-11e6-814e-10c37b693112','6c96d452-21de-11e6-814e-10c37b693112','98ad112e-2132-11e6-a364-10c37b693112'),('79a7cb20-235d-11e6-a431-10c37b693112','799e87da-235d-11e6-a431-10c37b693112','cae86438-2132-11e6-a364-10c37b693112'),('79a9e3b7-2360-11e6-a431-10c37b693112','799adbcc-2360-11e6-a431-10c37b693112','90598587-21fb-11e6-8ad9-10c37b693112'),('79ba6d34-2360-11e6-a431-10c37b693112','79b2d9d0-2360-11e6-a431-10c37b693112','cae86438-2132-11e6-a364-10c37b693112'),('87981f2d-22b6-11e6-8877-10c37b693112','87366b86-22b6-11e6-8877-10c37b693112','90598587-21fb-11e6-8ad9-10c37b693112'),('87c70768-22b6-11e6-8877-10c37b693112','87b032aa-22b6-11e6-8877-10c37b693112','cae86438-2132-11e6-a364-10c37b693112'),('894d1f95-22c3-11e6-8877-10c37b693112','89433a5f-22c3-11e6-8877-10c37b693112','883300af-2132-11e6-a364-10c37b693112'),('c9acbd0e-2360-11e6-a431-10c37b693112','c9a530af-2360-11e6-a431-10c37b693112','90598587-21fb-11e6-8ad9-10c37b693112'),('c9cdae84-2360-11e6-a431-10c37b693112','c9b5b3fd-2360-11e6-a431-10c37b693112','883300af-2132-11e6-a364-10c37b693112'),('d3c547c0-21f5-11e6-8ad9-10c37b693112','d3b8a15b-21f5-11e6-8ad9-10c37b693112','e8701714-2132-11e6-a364-10c37b693112'),('d5578f1b-21ef-11e6-8ad9-10c37b693112','d548b25f-21ef-11e6-8ad9-10c37b693112','cf9be82a-2132-11e6-a364-10c37b693112'),('d8d0d8a2-21ee-11e6-8ad9-10c37b693112','d8847549-21ee-11e6-8ad9-10c37b693112','');
/*!40000 ALTER TABLE `movimiento_eventopeso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `id_estado` char(36) NOT NULL,
  `id_ciudad` char(36) NOT NULL,
  `id_municipio` char(36) NOT NULL,
  `descripcion_municipio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_estado`,`id_ciudad`,`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES ('1','1','1','Aguascalientes'),('1','2','3','Calvillo'),('1','3','11','San Francisco de los Romo'),('1','4','5','Jesús María'),('1','5','6','Pabellón de Arteaga'),('1','6','7','Rincón de Romos'),('1','7','2','Asientos'),('1','8','9','Tepezalá'),('1','9','4','Cosío'),('10','1','5','Durango'),('10','10','38','Vicente Guerrero'),('10','11','23','Pueblo Nuevo'),('10','12','18','El Oro'),('10','2','7','Gómez Palacio'),('10','3','12','Lerdo'),('10','4','32','Santiago Papasquiaro'),('10','5','1','Canatlán'),('10','6','28','San Juan del Río'),('10','7','21','Peñón Blanco'),('10','8','20','Pánuco de Coronado'),('10','9','16','Nombre de Dios'),('11','1','2','Acámbaro'),('11','10','31','San Francisco del Rincón'),('11','11','37','Silao de la Victoria'),('11','12','19','Jerécuaro'),('11','13','36','Santiago Maravatío'),('11','14','26','Romita'),('11','15','38','Tarandacuao'),('11','16','16','Huanímaro'),('11','17','9','Comonfort'),('11','18','41','Uriangato'),('11','19','23','Pénjamo'),('11','2','3','San Miguel de Allende'),('11','20','12','Cuerámaro'),('11','21','9','Comonfort'),('11','22','33','San Luis de la Paz'),('11','23','42','Valle de Santiago'),('11','24','1','Abasolo'),('11','25','7','Celaya'),('11','26','44','Villagrán'),('11','27','46','Yuriria'),('11','28','5','Apaseo el Grande'),('11','29','25','Purísima del Rincón'),('11','3','7','Celaya'),('11','30','28','Salvatierra'),('11','31','15','Guanajuato'),('11','32','32','San José Iturbide'),('11','33','4','Apaseo el Alto'),('11','34','8','Manuel Doblado'),('11','35','18','Jaral del Progreso'),('11','36','29','San Diego de la Unión'),('11','37','35','Santa Cruz de Juventino Rosas'),('11','38','13','Doctor Mora'),('11','39','14','Dolores Hidalgo Cuna de la Independencia Nacional'),('11','4','11','Cortazar'),('11','5','15','Guanajuato'),('11','6','17','Irapuato'),('11','7','20','León'),('11','8','21','Moroleón'),('11','9','27','Salamanca'),('12','1','1','Acapulco de Juárez'),('12','10','6','Apaxtla'),('12','11','50','Pungarabato'),('12','12','15','Buenavista de Cuéllar'),('12','13','27','Cutzamala de Pinzón'),('12','14','22','Coyuca de Catalán'),('12','15','39','Juan R. Escudero'),('12','16','21','Coyuca de Benítez'),('12','17','45','Olinalá'),('12','18','77','Marquelia'),('12','19','75','Eduardo Neri'),('12','2','29','Chilpancingo de los Bravo'),('12','20','57','Técpan de Galeana'),('12','21','48','Petatlán'),('12','22','68','La Unión de Isidoro Montes de Oca'),('12','23','57','Técpan de Galeana'),('12','24','58','Teloloapan'),('12','25','57','Técpan de Galeana'),('12','26','34','Huitzuco de los Figueroa'),('12','27','61','Tixtla de Guerrero'),('12','28','59','Tepecoacuilco de Trujano'),('12','29','53','San Marcos'),('12','3','35','Iguala de la Independencia'),('12','30','13','Azoyú'),('12','31','67','Tlapehuala'),('12','32','52','San Luis Acatlán'),('12','33','28','Chilapa de Álvarez'),('12','34','66','Tlapa de Comonfort'),('12','35','65','Tlalixtaquilla de Maldonado'),('12','36','23','Cuajinicuilapa'),('12','37','33','Huamuxtitlán'),('12','38','30','Florencio Villarreal'),('12','39','29','Chilpancingo de los Bravo'),('12','4','55','Taxco de Alarcón'),('12','40','18','Copala'),('12','41','38','Zihuatanejo de Azueta'),('12','5','7','Arcelia'),('12','6','12','Ayutla de los Libres'),('12','7','11','Atoyac de Álvarez'),('12','9','14','Benito Juárez'),('13','1','3','Actopan'),('13','10','69','Tizayuca'),('13','11','56','Santiago Tulantepec de Lugo Guerrero'),('13','12','30','Ixmiquilpan'),('13','13','63','Tepeji del Río de Ocampo'),('13','14','76','Tula de Allende'),('13','15','61','Tepeapulco'),('13','2','8','Apan'),('13','3','48','Pachuca de Soto'),('13','4','61','Tepeapulco'),('13','5','76','Tula de Allende'),('13','6','77','Tulancingo de Bravo'),('13','7','84','Zimapán'),('13','8','28','Huejutla de Reyes'),('13','9','74','Tlaxcoapan'),('14','1','6','Ameca'),('14','10','120','Zapopan'),('14','13','108','Tuxpan'),('14','14','105','Tototlán'),('14','15','72','San Diego de Alejandría'),('14','16','21','Casimiro Castillo'),('14','17','13','Atotonilco el Alto'),('14','18','46','Jalostotitlán'),('14','19','66','Poncitlán'),('14','2','23','Zapotlán el Grande'),('14','20','8','Arandas'),('14','21','84','Talpa de Allende'),('14','22','36','Etzatlán'),('14','23','82','Sayula'),('14','24','3','Ahualulco de Mercado'),('14','25','15','Autlán de Navarro'),('14','26','55','Magdalena'),('14','27','74','San Julián'),('14','28','24','Cocula'),('14','29','37','El Grullo'),('14','30','78','San Miguel el Alto'),('14','31','83','Tala'),('14','32','18','La Barca'),('14','33','47','Jamay'),('14','34','118','Yahualica de González Gallo'),('14','35','25','Colotlán'),('14','36','22','Cihuatlán'),('14','37','121','Zapotiltic'),('14','38','114','Villa Corona'),('14','39','91','Teocaltiche'),('14','4','53','Lagos de Moreno'),('14','41','94','Tequila'),('14','42','70','El Salto'),('14','43','70','El Salto'),('14','44','50','Jocotepec'),('14','45','87','Tecalitlán'),('14','46','30','Chapala'),('14','47','30','Chapala'),('14','48','125','San Ignacio Cerro Gordo'),('14','5','63','Ocotlán'),('14','50','42','Huejuquilla el Alto'),('14','51','116','Villa Hidalgo'),('14','52','109','Unión de San Antonio'),('14','53','70','El Salto'),('14','54','85','Tamazula de Gordiano'),('14','55','2','Acatlán de Juárez'),('14','56','111','Valle de Guadalupe'),('14','7','73','San Juan de los Lagos'),('14','8','93','Tepatitlán de Morelos'),('14','9','98','San Pedro Tlaquepaque'),('15','1','13','Atizapán de Zaragoza'),('15','10','58','Nezahualcóyotl'),('15','11','60','Nicolás Romero'),('15','12','81','Tecámac'),('15','13','95','Tepotzotlán'),('15','14','104','Tlalnepantla de Baz'),('15','15','108','Tultepec'),('15','16','109','Tultitlán'),('15','17','24','Cuautitlán'),('15','18','39','Ixtapaluca'),('15','19','99','Texcoco'),('15','2','31','Chimalhuacán'),('15','20','106','Toluca'),('15','21','122','Valle de Chalco Solidaridad'),('15','22','82','Tejupilco'),('15','23','25','Chalco'),('15','24','8','Amatepec'),('15','26','53','Melchor Ocampo'),('15','27','29','Chicoloapan'),('15','28','19','Capulhuac'),('15','29','50','Juchitepec'),('15','3','20','Coacalco de Berriozábal'),('15','30','96','Tequixquiac'),('15','31','115','Xonacatlán'),('15','32','76','San Mateo Atenco'),('15','36','30','Chiconcuac'),('15','39','5','Almoloya de Juárez'),('15','4','121','Cuautitlán Izcalli'),('15','40','62','Ocoyoacac'),('15','41','120','Zumpango'),('15','5','33','Ecatepec de Morelos'),('15','6','37','Huixquilucan'),('15','7','70','La Paz'),('15','8','54','Metepec'),('15','9','57','Naucalpan de Juárez'),('16','1','6','Apatzingán'),('16','10','107','Zacapu'),('16','11','108','Zamora'),('16','12','112','Zitácuaro'),('16','13','65','Paracho'),('16','14','85','Tangancícuaro'),('16','15','50','Maravatío'),('16','16','110','Zinapécuaro'),('16','17','71','Puruándiro'),('16','18','106','Yurécuaro'),('16','19','38','Huetamo'),('16','2','75','Los Reyes'),('16','20','82','Tacámbaro'),('16','21','52','Lázaro Cárdenas'),('16','22','52','Lázaro Cárdenas'),('16','23','45','Jiquilpan'),('16','24','98','Tuxpan'),('16','25','19','Cotija'),('16','26','55','Múgica'),('16','27','20','Cuitzeo'),('16','3','34','Hidalgo'),('16','4','43','Jacona'),('16','5','69','La Piedad'),('16','6','53','Morelia'),('16','7','66','Pátzcuaro'),('16','8','76','Sahuayo'),('16','9','102','Uruapan'),('17','1','6','Cuautla'),('17','2','7','Cuernavaca'),('17','3','31','Zacatepec'),('17','4','12','Jojutla'),('17','5','17','Puente de Ixtla'),('17','6','24','Tlaltizapán de Zapata'),('17','7','31','Zacatepec'),('17','8','25','Tlaquiltenango'),('18','1','15','Santiago Ixcuintla'),('18','10','12','San Blas'),('18','11','6','Ixtlán del Río'),('18','12','20','Bahía de Banderas'),('18','13','4','Compostela'),('18','14','8','Xalisco'),('18','15','13','San Pedro Lagunillas'),('18','16','4','Compostela'),('18','17','7','Jala'),('18','18','2','Ahuacatlán'),('18','2','17','Tepic'),('18','3','18','Tuxpan'),('18','4','1','Acaponeta'),('18','5','16','Tecuala'),('18','6','4','Compostela'),('18','7','17','Tepic'),('18','8','15','Santiago Ixcuintla'),('18','9','11','Ruíz'),('19','1','6','Apodaca'),('19','10','48','Santa Catarina'),('19','11','14','Doctor Arroyo'),('19','12','12','Ciénega de Flores'),('19','13','29','Hualahuises'),('19','15','9','Cadereyta Jiménez'),('19','17','49','Santiago'),('19','18','49','Santiago'),('19','2','19','San Pedro Garza García'),('19','20','5','Anáhuac'),('19','21','18','García'),('19','22','31','Juárez'),('19','3','21','General Escobedo'),('19','4','26','Guadalupe'),('19','5','33','Linares'),('19','6','38','Montemorelos'),('19','7','39','Monterrey'),('19','8','44','Sabinas Hidalgo'),('19','9','46','San Nicolás de los Garza'),('2','1','1','Ensenada'),('2','2','2','Mexicali'),('2','3','3','Tecate'),('2','4','4','Tijuana'),('2','5','5','Playas de Rosarito'),('2','6','1','Ensenada'),('2','7','2','Mexicali'),('20','1','43','Heroica Ciudad de Juchitán de Zaragoza'),('20','11','483','Santiago Suchilquitongo'),('20','12','134','San Felipe Jalapa de Díaz'),('20','13','413','Santa María Huatulco'),('20','14','73','Putla Villa de Guerrero'),('20','15','21','Cosolapa'),('20','16','551','Tlacolula de Matamoros'),('20','17','298','San Pablo Villa de Mitla'),('20','18','62','Natividad'),('20','19','545','Teotitlán de Flores Magón'),('20','2','67','Oaxaca de Juárez'),('20','20','413','Santa María Huatulco'),('20','21','177','San Juan Bautista Cuicatlán'),('20','22','277','Villa Sola de Vega'),('20','23','68','Ocotlán de Morelos'),('20','24','565','Villa de Zaachila'),('20','25','59','Miahuatlán de Porfirio Díaz'),('20','26','557','Unión Hidalgo'),('20','27','64','Nejapa de Madero'),('20','28','318','San Pedro Mixtepec -Dto. 22 -'),('20','29','377','Santa Cruz Itundujia'),('20','3','79','Salina Cruz'),('20','30','25','Chahuites'),('20','31','28','Heroica Ciudad de Ejutla de Crespo'),('20','32','327','San Pedro Tapanatepec'),('20','33','2','Acatlán de Pérez Figueroa'),('20','34','540','Villa de Tamazulápam del Progreso'),('20','35','180','San Juan Bautista Lo de Soto'),('20','36','185','San Juan Cacahuatepec'),('20','37','333','San Pedro Totolápam'),('20','38','269','San Miguel el Grande'),('20','39','570','Zimatlán de Álvarez'),('20','4','184','San Juan Bautista Tuxtepec'),('20','40','294','San Pablo Huitzo'),('20','41','150','San Francisco Telixtlahuaca'),('20','42','55','Mariscala de Juárez'),('20','43','482','Santiago Pinotepa Nacional'),('20','44','467','Santiago Jamiltepec'),('20','45','324','San Pedro Pochutla'),('20','46','397','Heroica Ciudad de Tlaxiaco'),('20','47','559','San Juan Bautista Valle Nacional'),('20','48','10','El Barrio de la Soledad'),('20','49','14','Ciudad Ixtepec'),('20','5','57','Matías Romero Avendaño'),('20','50','469','Santiago Juxtlahuaca'),('20','51','348','San Sebastián Tecomaxtlahuaca'),('20','52','6','Asunción Nochixtlán'),('20','53','143','San Francisco Ixhuatán'),('20','54','124','San Blas Atempa'),('20','55','515','Santo Domingo Tehuantepec'),('20','56','23','Cuilápam de Guerrero'),('20','57','350','San Sebastián Tutla'),('20','58','390','Santa Lucía del Camino'),('20','59','107','San Antonio de la Cal'),('20','6','39','Heroica Ciudad de Huajuapan de León'),('20','7','44','Loma Bonita'),('20','8','318','San Pedro Mixtepec -Dto. 22 -'),('20','9','334','Villa de Tututepec de Melchor Ocampo'),('21','1','19','Atlixco'),('21','10','3','Acatlán'),('21','11','41','Cuautlancingo'),('21','12','164','Tepeaca'),('21','13','154','Tecamachalco'),('21','14','208','Zacatlán'),('21','15','197','Xicotepec'),('21','16','45','Chalchicomula de Sesma'),('21','17','15','Amozoc'),('21','2','85','Izúcar de Matamoros'),('21','3','114','Puebla'),('21','4','132','San Martín Texmelucan'),('21','5','156','Tehuacán'),('21','6','174','Teziutlán'),('21','7','119','San Andrés Cholula'),('21','8','140','San Pedro Cholula'),('21','9','71','Huauchinango'),('22','1','14','Querétaro'),('22','2','16','San Juan del Río'),('22','4','6','Corregidora'),('23','1','5','Benito Juárez'),('23','2','1','Cozumel'),('23','3','2','Felipe Carrillo Puerto'),('23','4','4','Othón P. Blanco'),('23','5','8','Solidaridad'),('23','6','7','Lázaro Cárdenas'),('23','7','3','Isla Mujeres'),('23','8','10','Bacalar'),('24','1','13','Ciudad Valles'),('24','10','8','Cerritos'),('24','11','40','Tamuín'),('24','12','36','Tamasopo'),('24','13','10','Ciudad del Maíz'),('24','14','7','Cedral'),('24','15','43','Tierra Nueva'),('24','16','50','Villa de Reyes'),('24','17','11','Ciudad Fernández'),('24','18','37','Tamazunchale'),('24','19','32','Santa María del Río'),('24','2','16','Ebano'),('24','20','58','El Naranjo'),('24','3','20','Matehuala'),('24','4','24','Rioverde'),('24','5','28','San Luis Potosí'),('24','6','35','Soledad de Graciano Sánchez'),('24','7','15','Charcas'),('24','8','25','Salinas'),('24','9','5','Cárdenas'),('25','1','1','Ahome'),('25','10','1','Ahome'),('25','11','7','Choix'),('25','12','12','Mazatlán'),('25','13','17','Sinaloa'),('25','14','13','Mocorito'),('25','15','2','Angostura'),('25','16','10','El Fuerte'),('25','17','8','Elota'),('25','18','14','Rosario'),('25','19','17','Sinaloa'),('25','2','6','Culiacán'),('25','20','6','Culiacán'),('25','21','5','Cosalá'),('25','22','16','San Ignacio'),('25','23','1','Ahome'),('25','24','18','Navolato'),('25','3','9','Escuinapa'),('25','4','11','Guasave'),('25','5','12','Mazatlán'),('25','6','15','Salvador Alvarado'),('25','7','18','Navolato'),('25','8','6','Culiacán'),('25','9','1','Ahome'),('26','1','55','San Luis Río Colorado'),('26','10','43','Nogales'),('26','11','48','Puerto Peñasco'),('26','12','19','Cananea'),('26','13','70','General Plutarco Elías Calles'),('26','14','36','Magdalena'),('26','2','2','Agua Prieta'),('26','3','17','Caborca'),('26','4','18','Cajeme'),('26','5','25','Empalme'),('26','6','29','Guaymas'),('26','7','30','Hermosillo'),('26','8','33','Huatabampo'),('26','9','42','Navojoa'),('27','1','2','Cárdenas'),('27','10','14','Paraíso'),('27','11','3','Centla'),('27','12','6','Cunduacán'),('27','13','8','Huimanguillo'),('27','2','4','Centro'),('27','3','5','Comalcalco'),('27','4','7','Emiliano Zapata'),('27','5','10','Jalpa de Méndez'),('27','7','12','Macuspana'),('27','8','17','Tenosique'),('27','9','16','Teapa'),('28','1','3','Altamira'),('28','10','38','Tampico'),('28','11','41','Victoria'),('28','12','12','González'),('28','13','17','Jaumave'),('28','14','15','Gustavo Díaz Ordaz'),('28','15','12','González'),('28','16','43','Xicoténcatl'),('28','17','25','Miguel Alemán'),('28','18','37','Soto la Marina'),('28','19','39','Tula'),('28','2','7','Camargo'),('28','20','14','Guerrero'),('28','21','40','Valle Hermoso'),('28','3','9','Ciudad Madero'),('28','4','21','El Mante'),('28','5','22','Matamoros'),('28','6','27','Nuevo Laredo'),('28','7','32','Reynosa'),('28','8','33','Río Bravo'),('28','9','35','San Fernando'),('29','1','5','Apizaco'),('29','2','25','San Pablo del Monte'),('29','3','33','Tlaxcala'),('29','4','13','Huamantla'),('29','5','6','Calpulalpan'),('29','6','10','Chiautempan'),('3','1','1','Comondú'),('3','10','2','Mulegé'),('3','11','2','Mulegé'),('3','2','3','La Paz'),('3','3','8','Los Cabos'),('3','4','8','Los Cabos'),('3','5','9','Loreto'),('3','6','1','Comondú'),('3','7','3','La Paz'),('3','8','2','Mulegé'),('3','9','2','Mulegé'),('30','1','3','Acayucan'),('30','10','87','Xalapa'),('30','11','108','Minatitlán'),('30','12','118','Orizaba'),('30','13','124','Papantla'),('30','14','131','Poza Rica de Hidalgo'),('30','15','141','San Andrés Tuxtla'),('30','16','189','Tuxpan'),('30','17','193','Veracruz'),('30','18','174','Tierra Blanca'),('30','19','45','Cosamaloapan de Carpio'),('30','2','13','Naranjos Amatlán'),('30','20','208','Carlos A. Carrillo'),('30','21','123','Pánuco'),('30','22','152','Tampico Alto'),('30','23','161','Tempoal'),('30','24','155','Tantoyuca'),('30','25','69','Gutiérrez Zamora'),('30','26','129','Platón Sánchez'),('30','27','94','Juan Rodríguez Clara'),('30','28','71','Huatusco'),('30','29','85','Ixtaczoquitlán'),('30','3','28','Boca del Río'),('30','30','138','Río Blanco'),('30','31','77','Isla'),('30','32','53','Cuitláhuac'),('30','33','68','Fortín'),('30','34','11','Alvarado'),('30','35','16','La Antigua'),('30','36','26','Banderilla'),('30','37','14','Amatlán de los Reyes'),('30','38','130','Playa Vicente'),('30','39','10','Altotonga'),('30','4','38','Coatepec'),('30','40','73','Hueyapan de Ocampo'),('30','41','111','Moloacán'),('30','42','143','Santiago Tuxtla'),('30','43','72','Huayacocotla'),('30','44','126','Paso de Ovejas'),('30','45','32','Catemaco'),('30','46','115','Nogales'),('30','47','61','Las Choapas'),('30','48','21','Atoyac'),('30','49','40','Coatzintla'),('30','5','204','Agua Dulce'),('30','50','15','Angel R. Cabada'),('30','51','211','San Rafael'),('30','52','176','Tlacojalpan'),('30','53','48','Cosoleacaque'),('30','54','97','Lerdo de Tejada'),('30','55','175','Tihuatlán'),('30','56','21','Atoyac'),('30','57','74','Huiloapan de Cuauhtémoc'),('30','58','33','Cazones de Herrera'),('30','59','197','Yecuatla'),('30','6','39','Coatzacoalcos'),('30','60','148','Soledad de Doblado'),('30','61','34','Cerro Azul'),('30','62','173','Tezonapa'),('30','66','141','San Andrés Tuxtla'),('30','67','205','El Higo'),('30','68','125','Paso del Macho'),('30','69','183','Tlapacoyan'),('30','7','44','Córdoba'),('30','8','207','Tres Valles'),('30','9','89','Jáltipan'),('31','1','50','Mérida'),('31','2','96','Tizimín'),('31','3','89','Ticul'),('31','4','52','Motul'),('31','5','102','Valladolid'),('31','6','41','Kanasín'),('32','1','10','Fresnillo'),('32','10','51','Villa de Cos'),('32','11','34','Nochistlán de Mejía'),('32','12','5','Calera'),('32','13','49','Valparaíso'),('32','14','25','Luis Moya'),('32','15','33','Moyahua de Estrada'),('32','16','42','Sombrerete'),('32','17','19','Jalpa'),('32','18','24','Loreto'),('32','19','22','Juan Aldama'),('32','2','20','Jerez'),('32','3','56','Zacatecas'),('32','4','17','Guadalupe'),('32','5','39','Río Grande'),('32','6','8','Cuauhtémoc'),('32','7','36','Ojocaliente'),('32','8','54','Villa Hidalgo'),('32','9','55','Villanueva'),('4','1','2','Campeche'),('4','11','5','Hecelchakán'),('4','2','3','Carmen'),('4','3','1','Calkiní'),('4','4','11','Candelaria'),('4','5','9','Escárcega'),('4','6','3','Carmen'),('4','7','6','Hopelchén'),('4','8','4','Champotón'),('4','9','5','Hecelchakán'),('5','1','2','Acuña'),('5','10','33','San Pedro'),('5','11','35','Torreón'),('5','12','6','Castaños'),('5','13','9','Francisco I. Madero'),('5','14','7','Cuatro Ciénegas'),('5','15','21','Nadadores'),('5','16','27','Ramos Arizpe'),('5','17','22','Nava'),('5','18','38','Zaragoza'),('5','19','31','San Buenaventura'),('5','2','10','Frontera'),('5','20','20','Múzquiz'),('5','21','36','Viesca'),('5','22','19','Morelos'),('5','23','4','Arteaga'),('5','24','3','Allende'),('5','3','17','Matamoros'),('5','4','18','Monclova'),('5','5','24','Parras'),('5','6','25','Piedras Negras'),('5','7','28','Sabinas'),('5','8','30','Saltillo'),('5','9','32','San Juan de Sabinas'),('6','1','2','Colima'),('6','2','7','Manzanillo'),('6','3','9','Tecomán'),('6','4','10','Villa de Álvarez'),('6','5','1','Armería'),('7','1','19','Comitán de Domínguez'),('7','10','65','Palenque'),('7','11','59','Ocosingo'),('7','12','97','Tonalá'),('7','13','51','Mapastepec'),('7','14','75','Las Rosas'),('7','15','27','Chiapa de Corzo'),('7','16','15','Cacahoatán'),('7','17','61','Ocozocoautla de Espinosa'),('7','18','17','Cintalapa'),('7','19','68','Pichucalco'),('7','2','78','San Cristóbal de las Casas'),('7','20','89','Tapachula'),('7','21','69','Pijijiapan'),('7','22','74','Reforma'),('7','23','40','Huixtla'),('7','24','57','Motozintla'),('7','25','2','Acala'),('7','3','89','Tapachula'),('7','4','101','Tuxtla Gutiérrez'),('7','5','106','Venustiano Carranza'),('7','6','46','Jiquipilas'),('7','7','108','Villaflores'),('7','8','52','Las Margaritas'),('7','9','9','Arriaga'),('8','1','11','Camargo'),('8','10','17','Cuauhtémoc'),('8','11','2','Aldama'),('8','12','36','Jiménez'),('8','13','52','Ojinaga'),('8','14','6','Bachíniva'),('8','15','62','Saucillo'),('8','2','19','Chihuahua'),('8','3','17','Cuauhtémoc'),('8','4','21','Delicias'),('8','5','32','Hidalgo del Parral'),('8','6','37','Juárez'),('8','7','50','Nuevo Casas Grandes'),('8','9','40','Madera'),('9','1','10','Álvaro Obregón'),('9','10','8','La Magdalena Contreras'),('9','11','16','Miguel Hidalgo'),('9','12','9','Milpa Alta'),('9','13','11','Tláhuac'),('9','14','12','Tlalpan'),('9','15','17','Venustiano Carranza'),('9','16','13','Xochimilco'),('9','2','2','Azcapotzalco'),('9','3','14','Benito Juárez'),('9','4','3','Coyoacán'),('9','5','4','Cuajimalpa de Morelos'),('9','6','15','Cuauhtémoc'),('9','7','5','Gustavo A. Madero'),('9','8','6','Iztacalco'),('9','9','7','Iztapalapa');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_alimento`
--

DROP TABLE IF EXISTS `orden_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_alimento` (
  `id_orden_alimento` char(36) NOT NULL,
  `orden_compra` varchar(45) DEFAULT NULL,
  `id_proveedor` char(36) DEFAULT NULL,
  `id_origen` char(36) DEFAULT NULL,
  `direccion` char(255) DEFAULT NULL,
  `autorizo` char(255) DEFAULT NULL,
  `condicion_pago` varchar(45) DEFAULT NULL,
  `id_comprador` char(36) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `subtotal` decimal(20,4) DEFAULT NULL,
  `iva` decimal(20,4) DEFAULT NULL,
  `total` decimal(20,4) DEFAULT NULL,
  `folio_compra` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT '0',
  `status` char(1) DEFAULT NULL,
  `id_lab` char(36) DEFAULT NULL,
  `id_ciudadorigen` char(36) DEFAULT NULL,
  `id_chofer` char(36) DEFAULT NULL,
  `placas_trailer` varchar(45) DEFAULT NULL,
  `placas_remolque1` varchar(45) DEFAULT NULL,
  `placas_remolque2` varchar(45) DEFAULT NULL,
  `hora_salida` datetime DEFAULT NULL,
  `merma` decimal(20,4) DEFAULT NULL,
  `num_alimentos` int(11) DEFAULT NULL,
  `alimentos_pendientes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_orden_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_alimento`
--

LOCK TABLES `orden_alimento` WRITE;
/*!40000 ALTER TABLE `orden_alimento` DISABLE KEYS */;
INSERT INTO `orden_alimento` VALUES ('0710c2a4-7137-11e6-b11d-008cfa6fa291','C-9307','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','Direccion','Manuel Quintero','Contado','23356d69-6fa1-11e6-b11d-008cfa6fa291','2016-09-02 12:57:14',4200.0000,0.0000,4200.0000,'FC-49959',0,'S','26a5cfa3-7120-11e6-b11d-008cfa6fa291','1','0065ac11-7064-11e6-b11d-008cfa6fa291','XHX9495','XKE6348','XHK8169','2016-09-02 10:20:00',30.0000,NULL,NULL),('5edded24-7460-11e6-b11d-008cfa6fa291','GC9307','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','Calle Independencia 181','Manuel Quintero Rodríguez','Contado','23356d69-6fa1-11e6-b11d-008cfa6fa291','2016-09-06 13:28:35',42000.0000,0.0000,42000.0000,'FC9503',0,'S','26a5cfa3-7120-11e6-b11d-008cfa6fa291','1','d8e0fcb6-6bb8-11e6-b11d-008cfa6fa291','CYK8495','PCI9595','HCK8589','2016-09-06 10:00:00',20.0000,NULL,NULL),('c62f663d-6fcc-11e6-8683-10c37b693112','A-12415','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','10','Direccion','Autorizo','Condiciones','23356d69-6fa1-11e6-b11d-008cfa6fa291','2016-08-30 17:45:30',5000000.0000,0.0000,5000000.0000,'A-01',0,'S','26a5cfa3-7120-11e6-b11d-008cfa6fa291','5','d8e0fcb6-6bb8-11e6-b11d-008cfa6fa291','XBC3245','JCK9540','JHF9550','1900-01-01 00:00:00',0.0000,NULL,NULL);
/*!40000 ALTER TABLE `orden_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_ganado`
--

DROP TABLE IF EXISTS `orden_ganado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_ganado` (
  `id_orden_ganado` char(36) NOT NULL,
  `orden_compra` varchar(45) DEFAULT NULL,
  `id_proveedor` char(36) DEFAULT NULL,
  `id_origen` char(36) DEFAULT NULL,
  `direccion` char(255) DEFAULT NULL,
  `autorizo` char(255) DEFAULT NULL,
  `condicion_pago` varchar(45) DEFAULT NULL,
  `id_comprador` char(36) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  `fecha` datetime DEFAULT NULL,
  `subtotal` decimal(20,4) DEFAULT NULL,
  `iva` decimal(20,4) DEFAULT NULL,
  `total` decimal(20,4) DEFAULT NULL,
  `folio_compra` varchar(45) DEFAULT NULL,
  `hembras` int(11) DEFAULT '0',
  `machos` int(11) DEFAULT '0',
  `id_chofer` char(36) DEFAULT NULL,
  `placas_trailer` varchar(45) DEFAULT NULL,
  `placas_jaula` varchar(45) DEFAULT NULL,
  `id_destino` char(36) DEFAULT NULL,
  `hora_salida` datetime DEFAULT NULL,
  `subtotal_gastos` decimal(20,4) DEFAULT '0.0000',
  `iva_gastos` decimal(20,4) DEFAULT '0.0000',
  `total_gastos` decimal(20,4) DEFAULT '0.0000',
  `merma` decimal(20,4) DEFAULT '0.0000',
  `id_ciudad_origen` char(36) DEFAULT NULL,
  `id_ciudad_destino` char(36) DEFAULT NULL,
  `subtotal_otros` decimal(20,4) DEFAULT '0.0000',
  `iva_otros` decimal(20,4) DEFAULT '0.0000',
  `total_otros` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`id_orden_ganado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_ganado`
--

LOCK TABLES `orden_ganado` WRITE;
/*!40000 ALTER TABLE `orden_ganado` DISABLE KEYS */;
INSERT INTO `orden_ganado` VALUES ('188ff959-7208-11e6-b11d-008cfa6fa291','MC-930714','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','','A','B','23356d69-6fa1-11e6-b11d-008cfa6fa291','S','2016-09-03 13:51:47',125000.0000,0.0000,125000.0000,'CH930595',4,3,'a9bea2e0-6bb9-11e6-b11d-008cfa6fa291','AAAAA','BBBBB','1','2016-09-03 00:00:00',1500.0000,0.0000,1500.0000,20.0000,'1','1',4200.0000,0.0000,4200.0000),('5f0ab4fd-6fc8-11e6-8683-10c37b693112','C-58777','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','','Rafael Medina López','Contado','23356d69-6fa1-11e6-b11d-008cfa6fa291','S','2016-08-31 00:00:00',84000.0000,0.0000,84000.0000,'F-58777',10,0,'d8e0fcb6-6bb8-11e6-b11d-008cfa6fa291','ssf','asd','1','2016-08-31 07:15:00',0.0000,0.0000,0.0000,6.0000,'1','1',0.0000,0.0000,0.0000),('9b92533f-6fa7-11e6-b11d-008cfa6fa291','C-59960','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','3','','Jesús Jiménez','Contado','23356d69-6fa1-11e6-b11d-008cfa6fa291','S','2016-08-31 13:16:38',120000.0000,19200.0000,139200.0000,'F-050602',5,2,'a9bea2e0-6bb9-11e6-b11d-008cfa6fa291','HCK9599','YUK0560','1','2016-08-31 10:30:00',0.0000,0.0000,0.0000,10.0000,'20','1',0.0000,0.0000,0.0000),('d30b5f57-6fa5-11e6-b11d-008cfa6fa291','C-08094','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','8','','Roberto Sierra González','Contado','23356d69-6fa1-11e6-b11d-008cfa6fa291','S','2016-08-01 00:00:00',100000.0000,16000.0000,116000.0000,'F-05960',0,10,'a9bea2e0-6bb9-11e6-b11d-008cfa6fa291','OUK9694','HWX9583','3','2016-08-31 00:00:00',1025.0000,0.0000,1025.0000,20.0000,'8','1',1868.0000,0.0000,1868.0000),('da0c8f0e-6fa3-11e6-b11d-008cfa6fa291','C-050601','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','','José Martínez Sánchez','Contado','23356d69-6fa1-11e6-b11d-008cfa6fa291','S','2016-08-30 12:49:19',40000.0000,6400.0000,46400.0000,'F-040601',10,0,'a9bea2e0-6bb9-11e6-b11d-008cfa6fa291','XKE6348','XHK9532','1','2016-08-31 10:00:00',1510.0000,0.0000,1510.0000,50.0000,'1','1',1650.0000,264.0000,1914.0000);
/*!40000 ALTER TABLE `orden_ganado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_medicina`
--

DROP TABLE IF EXISTS `orden_medicina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_medicina` (
  `id_orden_medicina` char(36) NOT NULL,
  `orden_compra` varchar(45) DEFAULT NULL,
  `id_proveedor` char(36) DEFAULT NULL,
  `id_origen` char(36) DEFAULT NULL,
  `direccion` char(255) DEFAULT NULL,
  `autorizo` char(255) DEFAULT NULL,
  `condicion_pago` varchar(45) DEFAULT NULL,
  `id_comprador` char(36) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `subtotal` decimal(20,4) DEFAULT NULL,
  `iva` decimal(20,4) DEFAULT NULL,
  `total` decimal(20,4) DEFAULT NULL,
  `folio_compra` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT '0',
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_orden_medicina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_medicina`
--

LOCK TABLES `orden_medicina` WRITE;
/*!40000 ALTER TABLE `orden_medicina` DISABLE KEYS */;
INSERT INTO `orden_medicina` VALUES ('f2b343fd-6fcc-11e6-8683-10c37b693112','M-163456','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','','','','23356d69-6fa1-11e6-b11d-008cfa6fa291','2016-08-30 17:46:43',425.0000,0.0000,425.0000,'M-01',0,'S');
/*!40000 ALTER TABLE `orden_medicina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otros_gastos`
--

DROP TABLE IF EXISTS `otros_gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otros_gastos` (
  `id_gastos` char(36) NOT NULL,
  `codigo` char(36) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_gastos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otros_gastos`
--

LOCK TABLES `otros_gastos` WRITE;
/*!40000 ALTER TABLE `otros_gastos` DISABLE KEYS */;
INSERT INTO `otros_gastos` VALUES ('166534f5-6bb4-11e6-b11d-008cfa6fa291','1','Gasto 1','S'),('180e0359-6bb4-11e6-b11d-008cfa6fa291','2','Gasto 2','S'),('9fefca6e-6bb4-11e6-b11d-008cfa6fa291','3','Gasto 3','S'),('cbd1269a-7064-11e6-b11d-008cfa6fa291','4','Gasto 4','S'),('d28e8da4-7064-11e6-b11d-008cfa6fa291','5','Gasto 5','S');
/*!40000 ALTER TABLE `otros_gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id_pais` char(36) NOT NULL,
  `descripcion` char(100) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES ('bc300667-bead-11e4-a9a2-002258cc1d65','Mexico');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pajilla`
--

DROP TABLE IF EXISTS `pajilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pajilla` (
  `id_pajilla` char(36) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `id_semental` char(36) DEFAULT NULL,
  `linea_genetica` varchar(45) DEFAULT NULL,
  `origen` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_pajilla`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pajilla`
--

LOCK TABLES `pajilla` WRITE;
/*!40000 ALTER TABLE `pajilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `pajilla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programacion`
--

DROP TABLE IF EXISTS `programacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programacion` (
  `id_programacion` char(36) NOT NULL,
  `id_rancho` char(36) DEFAULT NULL,
  `id_hembra` char(36) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo_reproduccion` char(36) DEFAULT NULL,
  `id_reproductor` char(36) DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT '',
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_programacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programacion`
--

LOCK TABLES `programacion` WRITE;
/*!40000 ALTER TABLE `programacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `programacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programacion_reproductor`
--

DROP TABLE IF EXISTS `programacion_reproductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programacion_reproductor` (
  `id_programacion_reproductor` char(36) NOT NULL,
  `id_programacion` char(36) DEFAULT NULL,
  `id_reproductor` char(36) DEFAULT NULL,
  `fecha_reproductor` datetime DEFAULT NULL,
  `tipo_reproduccion` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_programacion_reproductor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programacion_reproductor`
--

LOCK TABLES `programacion_reproductor` WRITE;
/*!40000 ALTER TABLE `programacion_reproductor` DISABLE KEYS */;
/*!40000 ALTER TABLE `programacion_reproductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id_proveedor` char(36) NOT NULL,
  `descripcion` char(255) DEFAULT NULL,
  `id_pais` char(36) DEFAULT NULL,
  `id_estado` char(36) DEFAULT NULL,
  `id_ciudad` char(36) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `email` char(45) DEFAULT NULL,
  `telefono` char(20) DEFAULT NULL,
  `p_fisica_moral` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `numero_proveedor` varchar(45) DEFAULT NULL,
  `con_pago` varchar(45) DEFAULT NULL,
  `dias_credito` int(11) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `cuenta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES ('3e955fa4-6fa3-11e6-b11d-008cfa6fa291','Manuel Quintero Rodríguez','bc300667-bead-11e4-a9a2-002258cc1d65','1','1','Calle Encino 234 Col. Bosque','manel.quintero@gmail.com','4824501245','F','A','101','Contado',0,'AIRJ4789DT0978','102-235-025');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pvie`
--

DROP TABLE IF EXISTS `pvie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvie` (
  `id_pvie` char(36) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_pvie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvie`
--

LOCK TABLES `pvie` WRITE;
/*!40000 ALTER TABLE `pvie` DISABLE KEYS */;
INSERT INTO `pvie` VALUES ('100b2ed4-7064-11e6-b11d-008cfa6fa291','2','PVIE 2','S'),('4ac39263-6bbc-11e6-b11d-008cfa6fa291','1','PVIE','S');
/*!40000 ALTER TABLE `pvie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rancho`
--

DROP TABLE IF EXISTS `rancho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rancho` (
  `id_rancho` char(36) NOT NULL,
  `descripcion` char(255) DEFAULT NULL,
  `con_traspaso_entrada` char(36) DEFAULT NULL,
  `con_traspaso_salida` char(36) DEFAULT NULL,
  `con_salida` char(36) DEFAULT NULL,
  `con_muerte` char(36) DEFAULT NULL,
  `con_pesaje` char(36) DEFAULT NULL,
  `id_corral_hospital` char(36) DEFAULT NULL,
  `actividad` char(255) DEFAULT NULL,
  `id_estado` char(36) DEFAULT NULL,
  `id_ciudad` char(36) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rancho`
--

LOCK TABLES `rancho` WRITE;
/*!40000 ALTER TABLE `rancho` DISABLE KEYS */;
INSERT INTO `rancho` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','Rancho Prueba','877e1685-6fa0-11e6-b11d-008cfa6fa291','87775d5d-6fa0-11e6-b11d-008cfa6fa291','8784f1ac-6fa0-11e6-b11d-008cfa6fa291','875c48f7-6fa0-11e6-b11d-008cfa6fa291','8769c848-6fa0-11e6-b11d-008cfa6fa291','874eb0df-6fa0-11e6-b11d-008cfa6fa291','Ganadería y Crianza de Animales','28','10','A'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','Rancho Destino','9d015f2f-7084-11e6-b11d-008cfa6fa291','9cf734b0-7084-11e6-b11d-008cfa6fa291','9d0b8569-7084-11e6-b11d-008cfa6fa291','9ce49794-7084-11e6-b11d-008cfa6fa291','9cf05136-7084-11e6-b11d-008cfa6fa291','9cd6e673-7084-11e6-b11d-008cfa6fa291','Ganadería','1','1','A');
/*!40000 ALTER TABLE `rancho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rancho_alimento`
--

DROP TABLE IF EXISTS `rancho_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rancho_alimento` (
  `id_rancho` char(36) NOT NULL,
  `id_alimento` char(36) NOT NULL,
  `existencia_inicial` int(11) DEFAULT NULL,
  `existencia` decimal(20,2) DEFAULT NULL,
  `ultima_compra` datetime DEFAULT NULL,
  `ultimo_costo` decimal(20,2) DEFAULT NULL,
  `costo_promedio` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rancho_alimento`
--

LOCK TABLES `rancho_alimento` WRITE;
/*!40000 ALTER TABLE `rancho_alimento` DISABLE KEYS */;
INSERT INTO `rancho_alimento` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','0c528340-0ca5-11e6-8f12-025041000001',0,9901.35,'2016-08-31 17:49:34',120.00,120.00),('87452b01-6fa0-11e6-b11d-008cfa6fa291','1541cb01-0ca5-11e6-8f12-025041000001',0,9955.17,'2016-08-31 17:49:34',120.00,120.00),('87452b01-6fa0-11e6-b11d-008cfa6fa291','42896b9f-0ca5-11e6-8f12-025041000001',0,9921.98,'2016-08-31 17:49:34',50.00,50.00),('87452b01-6fa0-11e6-b11d-008cfa6fa291','4aaac044-0ca5-11e6-8f12-025041000001',0,9914.81,'2016-08-31 17:49:34',10.00,10.00),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5cfa1eef-0ca5-11e6-8f12-025041000001',0,9941.71,'2016-08-31 17:49:34',200.00,200.00);
/*!40000 ALTER TABLE `rancho_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rancho_medicina`
--

DROP TABLE IF EXISTS `rancho_medicina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rancho_medicina` (
  `id_rancho` char(36) NOT NULL,
  `id_medicina` char(36) NOT NULL,
  `existencia_inicial` int(11) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  `costo_promedio` decimal(20,4) DEFAULT NULL,
  `ultimo_costo` decimal(20,4) DEFAULT NULL,
  `ultima_compra` datetime DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_medicina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rancho_medicina`
--

LOCK TABLES `rancho_medicina` WRITE;
/*!40000 ALTER TABLE `rancho_medicina` DISABLE KEYS */;
INSERT INTO `rancho_medicina` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','60879f0b-0ca6-11e6-8f12-025041000001',0,10000,0.0139,0.0139,'2016-08-31 17:50:14'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','798db943-0ca6-11e6-8f12-025041000001',0,10000,0.0145,0.0145,'2016-08-31 17:50:14'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','a952b03e-0ca6-11e6-8f12-025041000001',0,10000,0.0209,0.0209,'2016-08-31 17:50:14');
/*!40000 ALTER TABLE `rancho_medicina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raza`
--

DROP TABLE IF EXISTS `raza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raza` (
  `id_raza` char(36) NOT NULL,
  `descripcion` char(255) NOT NULL,
  `seleccionar` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_raza`,`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raza`
--

LOCK TABLES `raza` WRITE;
/*!40000 ALTER TABLE `raza` DISABLE KEYS */;
INSERT INTO `raza` VALUES ('2ac668fc-1cd9-11e5-a670-0023187ffb93','Red Sindi','S','A'),('2acf7fb7-1cd9-11e5-a670-0023187ffb93','Herdford','S','A'),('2ad9f2d0-1cd9-11e5-a670-0023187ffb93','Holstein','S','A'),('2ae28c0b-1cd9-11e5-a670-0023187ffb93','Pardo Suizo','S','A'),('2aeac128-1cd9-11e5-a670-0023187ffb93','Jersey','S','A'),('2aef8a58-1cd9-11e5-a670-0023187ffb93','Normando','S','A'),('2afa44b8-1cd9-11e5-a670-0023187ffb93','Angus','S','A'),('2b0b792e-1cd9-11e5-a670-0023187ffb93','Charolais','S','A'),('2b111069-1cd9-11e5-a670-0023187ffb93','Simmental','S','A'),('2b1a9327-1cd9-11e5-a670-0023187ffb93','Limousin','S','A'),('31e175e3-cb9b-11e4-bb5f-3860779bbc63','Mixto','N','A'),('3e26de81-beae-11e4-a9a2-002258cc1d65','Brahaman','S','A'),('3e26e1ad-beae-11e4-a9a2-002258cc1d65','Cebu','S','A'),('3e26e25a-beae-11e4-a9a2-002258cc1d65','Guzerat','S','A'),('3e26e2fc-beae-11e4-a9a2-002258cc1d65','Gyr','S','A'),('3e26e3a1-beae-11e4-a9a2-002258cc1d65','Indubrasil','S','A'),('3e26e44f-beae-11e4-a9a2-002258cc1d65','Nelore','S','A'),('a1c84978-1aab-11e5-881a-0023187ffb93','Sardo','S','A'),('bc85dcee-1cd8-11e5-a670-0023187ffb93','Brahaman Rojo','S','A'),('d30ad493-6f88-11e5-b2d5-005056c00001','F1','S','E');
/*!40000 ALTER TABLE `raza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recepcion`
--

DROP TABLE IF EXISTS `recepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recepcion` (
  `id_recepcion` char(36) NOT NULL,
  `id_proveedor` char(36) DEFAULT NULL,
  `id_origen` char(36) DEFAULT NULL,
  `folio` varchar(45) DEFAULT NULL,
  `fecha_compra` datetime DEFAULT NULL,
  `fecha_recepcion` datetime DEFAULT NULL,
  `animales` int(10) DEFAULT NULL,
  `animales_pendientes` int(10) DEFAULT NULL,
  `peso_origen` decimal(20,4) DEFAULT NULL,
  `limite_merma` decimal(20,4) DEFAULT NULL,
  `merma` decimal(20,4) DEFAULT NULL,
  `porcentaje_merma` decimal(20,4) DEFAULT NULL,
  `peso_recepcion` decimal(20,4) DEFAULT NULL,
  `numero_lote` char(255) DEFAULT NULL,
  `costo_flete` decimal(20,4) DEFAULT NULL,
  `devoluciones` int(10) DEFAULT NULL,
  `causa_devolucion` varchar(45) DEFAULT NULL,
  `total_alimento` decimal(20,4) DEFAULT NULL,
  `comision` decimal(20,2) DEFAULT NULL,
  `otros_costos` decimal(20,2) DEFAULT NULL,
  `revision_ganado` decimal(20,2) DEFAULT NULL,
  `orden_compra` varchar(45) DEFAULT NULL,
  `tipoganado` char(36) DEFAULT NULL,
  `corral_acopio` char(36) DEFAULT NULL,
  `tipo_recepcion` varchar(45) DEFAULT NULL,
  `costo_combustible` decimal(20,4) DEFAULT NULL,
  `animales_muertos` int(11) DEFAULT NULL,
  `animales_caidos` int(11) DEFAULT NULL,
  `razon_merma` char(255) DEFAULT NULL,
  `id_pvie` char(36) DEFAULT NULL,
  `hora_llegada` datetime DEFAULT NULL,
  `horas_trayecto` varchar(45) DEFAULT NULL,
  `id_info_sanitaria` char(36) DEFAULT NULL,
  `peso_bruto` decimal(20,4) DEFAULT NULL,
  `peso_tara` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`id_recepcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcion`
--

LOCK TABLES `recepcion` WRITE;
/*!40000 ALTER TABLE `recepcion` DISABLE KEYS */;
INSERT INTO `recepcion` VALUES ('1168b41a-6fbc-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','','2016-08-31 15:44:38','2016-08-31 15:44:38',10,0,2000.0000,50.0000,100.0000,5.0000,1900.0000,'F-040601',1510.0000,0,'',NULL,0.00,1650.00,0.00,'C-050601','10e05980-37c2-11e6-93e5-10c37b693112','48533ab0-37c9-11e6-93e5-10c37b693112','Foránea',0.0000,0,0,'','4ac39263-6bbc-11e6-b11d-008cfa6fa291','2016-08-31 20:00:00','0d con 10:00:00','ba32cb8f-6bbb-11e6-aa84-10c37b693112',NULL,0.0000),('31258616-7209-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','FAC','2016-09-03 14:00:58','2016-09-03 14:00:58',7,7,0.0000,20.0000,-1900.0000,NULL,1900.0000,'CH930595',1500.0000,0,'',NULL,0.00,4200.00,0.00,'MC-930714','10e05980-37c2-11e6-93e5-10c37b693112','','Local',0.0000,0,0,'','4ac39263-6bbc-11e6-b11d-008cfa6fa291','2016-09-03 20:00:00','0d con 20:00:00','36a0b935-6fca-11e6-8683-10c37b693112',NULL,0.0000),('9de129cf-706c-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','4','','2016-09-01 12:48:27','2016-09-01 12:48:27',10,10,2000.0000,20.0000,100.0000,5.0000,1900.0000,'F-05960',1025.0000,0,'',NULL,0.00,1868.00,0.00,'C-08094','10e05980-37c2-11e6-93e5-10c37b693112','554cafff-37c9-11e6-93e5-10c37b693112','Foránea',0.0000,0,0,'','4ac39263-6bbc-11e6-b11d-008cfa6fa291','2016-09-01 10:00:00','1d con 10:00:00','5624260f-6fca-11e6-8683-10c37b693112',NULL,0.0000),('e7a5cdf4-6fbb-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','19','','2016-08-31 15:43:52','2016-08-31 15:43:52',7,0,0.0000,10.0000,0.0000,NULL,0.0000,'F-050602',0.0000,0,'',NULL,0.00,0.00,0.00,'C-59960','','','Local',0.0000,0,0,'','4ac39263-6bbc-11e6-b11d-008cfa6fa291','2016-08-31 00:00:00','','ba32cb8f-6bbb-11e6-aa84-10c37b693112',NULL,0.0000);
/*!40000 ALTER TABLE `recepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recepcion_alimento`
--

DROP TABLE IF EXISTS `recepcion_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recepcion_alimento` (
  `id_recepcion` char(36) NOT NULL,
  `ordencompra` char(36) DEFAULT NULL,
  `id_proveedor` char(36) DEFAULT NULL,
  `id_estadoorigen` char(36) DEFAULT NULL,
  `id_ciudadorigen` char(36) DEFAULT NULL,
  `id_lab` char(36) DEFAULT NULL,
  `horas_trayecto` varchar(45) DEFAULT NULL,
  `g_dañado` decimal(20,4) DEFAULT NULL,
  `mat_extraña` decimal(20,4) DEFAULT NULL,
  `desc_m_extra` decimal(20,4) DEFAULT NULL,
  `folio` varchar(45) DEFAULT NULL,
  `peso_origen` decimal(20,4) DEFAULT NULL,
  `merma` decimal(20,4) DEFAULT NULL,
  `peso_bruto` decimal(20,4) DEFAULT NULL,
  `peso_tara` decimal(20,4) DEFAULT NULL,
  `peso_neto` decimal(20,4) DEFAULT NULL,
  `descuentos` decimal(20,4) DEFAULT NULL,
  `total_descuento` decimal(20,4) DEFAULT NULL,
  `humedad` decimal(20,4) DEFAULT NULL,
  `desc_humedad` decimal(20,4) DEFAULT NULL,
  `desc_secado` decimal(20,4) DEFAULT NULL,
  `cant_liquidar` decimal(20,4) DEFAULT NULL,
  `precio_tonelada` decimal(20,4) DEFAULT NULL,
  `total_pagar` decimal(20,4) DEFAULT NULL,
  `id_bodega` char(36) DEFAULT NULL,
  `num_reporte` varchar(45) DEFAULT NULL,
  `fecha_recepcion` datetime DEFAULT NULL,
  `hora_llegada` datetime DEFAULT NULL,
  `limite_merma` decimal(20,4) DEFAULT NULL,
  `porcentaje_merma` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`id_recepcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcion_alimento`
--

LOCK TABLES `recepcion_alimento` WRITE;
/*!40000 ALTER TABLE `recepcion_alimento` DISABLE KEYS */;
INSERT INTO `recepcion_alimento` VALUES ('65880bbc-7451-11e6-b11d-008cfa6fa291','C-9307','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','1','26a5cfa3-7120-11e6-b11d-008cfa6fa291','1d con 10:00:00',0.0000,0.0000,0.0000,'1',5000.0000,20.0000,50160.0000,16290.0000,33870.0000,1321.0000,32549.0000,0.1740,23.0000,24.0000,32549.0000,3080.0000,100250.9200,'2f0b7255-73aa-11e6-b11d-008cfa6fa291','55714','2016-08-31 00:00:00','2016-09-01 10:00:00',NULL,NULL);
/*!40000 ALTER TABLE `recepcion_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receta` (
  `id_receta` char(36) NOT NULL,
  `codigo` char(45) NOT NULL,
  `nombre` char(255) NOT NULL,
  `status` char(1) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `cantidad` decimal(20,2) DEFAULT NULL,
  `importe` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id_receta`,`codigo`,`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES ('70180150-6fcd-11e6-8683-10c37b693112','1','Receta 1','A','2016-08-31 17:51:22',407.00,37500.00);
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_empadre`
--

DROP TABLE IF EXISTS `registro_empadre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_empadre` (
  `id_registro_empadre` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_hembra` char(36) NOT NULL,
  `id_semental` char(36) NOT NULL,
  `status_gestacional` char(2) NOT NULL,
  `aborto` char(2) NOT NULL,
  `id_tipo_parto` char(36) DEFAULT NULL,
  `activo` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_registro_empadre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_empadre`
--

LOCK TABLES `registro_empadre` WRITE;
/*!40000 ALTER TABLE `registro_empadre` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_empadre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_aborto`
--

DROP TABLE IF EXISTS `repl_aborto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_aborto` (
  `id_aborto` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_aborto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_aborto`
--

LOCK TABLES `repl_aborto` WRITE;
/*!40000 ALTER TABLE `repl_aborto` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_aborto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_alimento`
--

DROP TABLE IF EXISTS `repl_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_alimento` (
  `id_alimento` char(36) NOT NULL,
  `codigo` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_alimento`,`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_alimento`
--

LOCK TABLES `repl_alimento` WRITE;
/*!40000 ALTER TABLE `repl_alimento` DISABLE KEYS */;
INSERT INTO `repl_alimento` VALUES ('0c528340-0ca5-11e6-8f12-025041000001','270','2016-08-31 16:17:30','PE'),('1541cb01-0ca5-11e6-8f12-025041000001','110','2016-08-31 16:17:30','PE'),('1fa355ce-0ca5-11e6-8f12-025041000001','357','2016-08-31 16:17:30','PE'),('2818a927-0ca5-11e6-8f12-025041000001','250','2016-08-31 16:17:30','PE'),('309cf9d9-0ca5-11e6-8f12-025041000001','255','2016-08-31 16:17:30','PE'),('391e9114-0ca5-11e6-8f12-025041000001','162','2016-08-31 16:17:30','PE'),('42896b9f-0ca5-11e6-8f12-025041000001','306','2016-08-31 16:17:30','PE'),('4aaac044-0ca5-11e6-8f12-025041000001','277','2016-08-31 16:17:30','PE'),('52b74a86-0ca5-11e6-8f12-025041000001','295','2016-08-31 16:17:30','PE'),('5cfa1eef-0ca5-11e6-8f12-025041000001','159','2016-08-31 16:17:30','PE'),('b9e85cfd-0ca5-11e6-8f12-025041000001','282','2016-08-31 16:17:30','PE');
/*!40000 ALTER TABLE `repl_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_alimento_receta`
--

DROP TABLE IF EXISTS `repl_alimento_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_alimento_receta` (
  `id_receta` char(36) NOT NULL,
  `id_alimento` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_receta`,`id_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_alimento_receta`
--

LOCK TABLES `repl_alimento_receta` WRITE;
/*!40000 ALTER TABLE `repl_alimento_receta` DISABLE KEYS */;
INSERT INTO `repl_alimento_receta` VALUES ('70180150-6fcd-11e6-8683-10c37b693112','0c528340-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:11','PE'),('70180150-6fcd-11e6-8683-10c37b693112','1541cb01-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:11','PE'),('70180150-6fcd-11e6-8683-10c37b693112','42896b9f-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:11','PE'),('70180150-6fcd-11e6-8683-10c37b693112','4aaac044-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:11','PE'),('70180150-6fcd-11e6-8683-10c37b693112','5cfa1eef-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:11','PE');
/*!40000 ALTER TABLE `repl_alimento_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_animal`
--

DROP TABLE IF EXISTS `repl_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_animal` (
  `id_rancho` char(36) NOT NULL,
  `id_animal` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_animal`,`id_rancho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_animal`
--

LOCK TABLES `repl_animal` WRITE;
/*!40000 ALTER TABLE `repl_animal` DISABLE KEYS */;
INSERT INTO `repl_animal` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','0bdd8975-6fc0-11e6-8683-10c37b693112','2016-09-01 09:44:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','1a7ebf4f-6fc0-11e6-8683-10c37b693112','2016-09-01 09:44:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','3f9b7d00-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:54:43','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5d7cef2d-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:54:51','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','65511741-6fbf-11e6-8683-10c37b693112','2016-09-01 09:44:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','7b41ea44-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:00','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','8cee875a-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:10','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','8d796d78-6fbf-11e6-8683-10c37b693112','2016-09-01 09:44:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','9a293fb3-6fbf-11e6-8683-10c37b693112','2016-09-01 09:44:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','9c3ade50-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:18','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','aa67fee6-6fbf-11e6-8683-10c37b693112','2016-09-01 09:44:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ad9f4e62-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b8817bda-6fbf-11e6-8683-10c37b693112','2016-09-01 09:44:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c1dfe21c-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c524a7ef-6fbf-11e6-8683-10c37b693112','2016-09-01 09:44:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e9de6ba1-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 15:51:30','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','efc58cc0-7051-11e6-a3a5-10c37b693112','2016-09-01 09:44:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ff53eab3-6fbf-11e6-8683-10c37b693112','2016-09-01 09:44:15','PE');
/*!40000 ALTER TABLE `repl_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_cliente`
--

DROP TABLE IF EXISTS `repl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_cliente` (
  `id_cliente` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_cliente`
--

LOCK TABLES `repl_cliente` WRITE;
/*!40000 ALTER TABLE `repl_cliente` DISABLE KEYS */;
INSERT INTO `repl_cliente` VALUES ('bf1c8b84-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 15:33:24','PE');
/*!40000 ALTER TABLE `repl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_compra`
--

DROP TABLE IF EXISTS `repl_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_compra` (
  `id_rancho` char(36) NOT NULL,
  `id_compra` char(36) NOT NULL,
  `id_proveedor` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_rancho`,`id_compra`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_compra`
--

LOCK TABLES `repl_compra` WRITE;
/*!40000 ALTER TABLE `repl_compra` DISABLE KEYS */;
INSERT INTO `repl_compra` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','436fac56-6fcd-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 17:50:07','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','4e08e0e3-6fcd-11e6-8683-10c37b693112','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 17:50:25','PE');
/*!40000 ALTER TABLE `repl_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_comprador`
--

DROP TABLE IF EXISTS `repl_comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_comprador` (
  `id_comprador` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_comprador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_comprador`
--

LOCK TABLES `repl_comprador` WRITE;
/*!40000 ALTER TABLE `repl_comprador` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_concepto_movimiento`
--

DROP TABLE IF EXISTS `repl_concepto_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_concepto_movimiento` (
  `id_rancho` char(36) NOT NULL,
  `id_concepto` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_concepto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_concepto_movimiento`
--

LOCK TABLES `repl_concepto_movimiento` WRITE;
/*!40000 ALTER TABLE `repl_concepto_movimiento` DISABLE KEYS */;
INSERT INTO `repl_concepto_movimiento` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','875c48f7-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 12:28:19','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 12:28:19','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','87775d5d-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 12:28:19','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','877e1685-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 12:28:19','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','8784f1ac-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 12:28:19','PE'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9ce49794-7084-11e6-b11d-008cfa6fa291','2016-09-01 15:40:51','PE'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9cf05136-7084-11e6-b11d-008cfa6fa291','2016-09-01 15:40:51','PE'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9cf734b0-7084-11e6-b11d-008cfa6fa291','2016-09-01 15:40:51','PE'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9d015f2f-7084-11e6-b11d-008cfa6fa291','2016-09-01 15:40:51','PE'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9d0b8569-7084-11e6-b11d-008cfa6fa291','2016-09-01 15:40:52','PE');
/*!40000 ALTER TABLE `repl_concepto_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_control_gestacion`
--

DROP TABLE IF EXISTS `repl_control_gestacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_control_gestacion` (
  `id_control_gestacion` char(36) NOT NULL,
  `id_registro_empadre` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_control_gestacion`,`id_registro_empadre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_control_gestacion`
--

LOCK TABLES `repl_control_gestacion` WRITE;
/*!40000 ALTER TABLE `repl_control_gestacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_control_gestacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_corral`
--

DROP TABLE IF EXISTS `repl_corral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_corral` (
  `id_rancho` char(36) NOT NULL,
  `id_corral` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_corral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_corral`
--

LOCK TABLES `repl_corral` WRITE;
/*!40000 ALTER TABLE `repl_corral` DISABLE KEYS */;
INSERT INTO `repl_corral` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','2016-09-01 15:42:46','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','874eb0df-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 12:28:19','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ceaa4b02-7084-11e6-b11d-008cfa6fa291','2016-09-01 15:42:46','PE'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','9cd6e673-7084-11e6-b11d-008cfa6fa291','2016-09-01 15:40:51','PE');
/*!40000 ALTER TABLE `repl_corral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_corral_acopio`
--

DROP TABLE IF EXISTS `repl_corral_acopio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_corral_acopio` (
  `id_corral_acopio` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_corral_acopio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_corral_acopio`
--

LOCK TABLES `repl_corral_acopio` WRITE;
/*!40000 ALTER TABLE `repl_corral_acopio` DISABLE KEYS */;
INSERT INTO `repl_corral_acopio` VALUES ('48533ab0-37c9-11e6-93e5-10c37b693112','2016-09-01 09:39:50','PE'),('4e2be138-37c9-11e6-93e5-10c37b693112','2016-08-31 13:21:53','PE'),('554cafff-37c9-11e6-93e5-10c37b693112','2016-09-01 12:49:05','PE'),('6a55bb0c-37c9-11e6-93e5-10c37b693112','2016-08-31 12:26:56','PE'),('815414d2-37c9-11e6-93e5-10c37b693112','2016-08-31 12:26:56','PE'),('8932d15b-37c9-11e6-93e5-10c37b693112','2016-08-31 12:26:56','PE'),('96685bb1-37c9-11e6-93e5-10c37b693112','2016-08-31 12:26:56','PE');
/*!40000 ALTER TABLE `repl_corral_acopio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_corral_acopio_recepcion`
--

DROP TABLE IF EXISTS `repl_corral_acopio_recepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_corral_acopio_recepcion` (
  `id_corral_acopio` char(36) NOT NULL,
  `id_recepcion` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_corral_acopio`,`id_recepcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_corral_acopio_recepcion`
--

LOCK TABLES `repl_corral_acopio_recepcion` WRITE;
/*!40000 ALTER TABLE `repl_corral_acopio_recepcion` DISABLE KEYS */;
INSERT INTO `repl_corral_acopio_recepcion` VALUES ('48533ab0-37c9-11e6-93e5-10c37b693112','02171d4b-6fa9-11e6-b11d-008cfa6fa291','2016-08-31 13:29:01','PE'),('48533ab0-37c9-11e6-93e5-10c37b693112','1168b41a-6fbc-11e6-b11d-008cfa6fa291','2016-09-01 09:39:50','PE'),('48533ab0-37c9-11e6-93e5-10c37b693112','73ff927c-6fa6-11e6-b11d-008cfa6fa291','2016-08-31 13:10:45','PE'),('4e2be138-37c9-11e6-93e5-10c37b693112','39a74cc4-6fa7-11e6-b11d-008cfa6fa291','2016-08-31 13:16:15','PE'),('4e2be138-37c9-11e6-93e5-10c37b693112','a04399c7-6fa6-11e6-b11d-008cfa6fa291','2016-08-31 13:11:57','PE'),('554cafff-37c9-11e6-93e5-10c37b693112','9de129cf-706c-11e6-b11d-008cfa6fa291','2016-09-01 12:49:05','PE');
/*!40000 ALTER TABLE `repl_corral_acopio_recepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_corral_animal`
--

DROP TABLE IF EXISTS `repl_corral_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_corral_animal` (
  `id_rancho` char(36) NOT NULL,
  `id_corral` char(36) NOT NULL,
  `id_animal` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_corral`,`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_corral_animal`
--

LOCK TABLES `repl_corral_animal` WRITE;
/*!40000 ALTER TABLE `repl_corral_animal` DISABLE KEYS */;
INSERT INTO `repl_corral_animal` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','0bdd8975-6fc0-11e6-8683-10c37b693112','2016-08-31 16:15:30','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','1a7ebf4f-6fc0-11e6-8683-10c37b693112','2016-08-31 16:15:55','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','3f9b7d00-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 15:46:44','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','5d7cef2d-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 15:47:34','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','65511741-6fbf-11e6-8683-10c37b693112','2016-08-31 16:10:51','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','7b41ea44-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 15:48:24','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','8cee875a-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 15:48:54','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','8d796d78-6fbf-11e6-8683-10c37b693112','2016-08-31 16:11:58','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','9a293fb3-6fbf-11e6-8683-10c37b693112','2016-08-31 16:12:20','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','9c3ade50-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 15:49:20','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','aa67fee6-6fbf-11e6-8683-10c37b693112','2016-08-31 16:12:47','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','ad9f4e62-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 15:49:49','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','b8817bda-6fbf-11e6-8683-10c37b693112','2016-08-31 16:13:11','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','c1dfe21c-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 15:50:23','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','c524a7ef-6fbf-11e6-8683-10c37b693112','2016-08-31 16:13:32','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','e9de6ba1-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 15:51:30','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','efc58cc0-7051-11e6-a3a5-10c37b693112','2016-09-01 09:39:49','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5f797185-6fa9-11e6-b11d-008cfa6fa291','ff53eab3-6fbf-11e6-8683-10c37b693112','2016-08-31 16:15:09','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ceaa4b02-7084-11e6-b11d-008cfa6fa291','65511741-6fbf-11e6-8683-10c37b693112','2016-09-01 15:42:46','PE');
/*!40000 ALTER TABLE `repl_corral_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_corral_datos`
--

DROP TABLE IF EXISTS `repl_corral_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_corral_datos` (
  `id_rancho` char(36) NOT NULL,
  `id_corral` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_corral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_corral_datos`
--

LOCK TABLES `repl_corral_datos` WRITE;
/*!40000 ALTER TABLE `repl_corral_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_corral_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_cria`
--

DROP TABLE IF EXISTS `repl_cria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_cria` (
  `id_rancho` char(36) NOT NULL,
  `id_madre` char(36) NOT NULL,
  `id_cria` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_rancho`,`id_madre`,`id_cria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_cria`
--

LOCK TABLES `repl_cria` WRITE;
/*!40000 ALTER TABLE `repl_cria` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_cria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_detalle_compra`
--

DROP TABLE IF EXISTS `repl_detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_detalle_compra` (
  `id_rancho` char(36) NOT NULL,
  `id_compra` char(36) NOT NULL,
  `id_medicina` char(36) NOT NULL,
  `id_detalle` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_detalle_compra`
--

LOCK TABLES `repl_detalle_compra` WRITE;
/*!40000 ALTER TABLE `repl_detalle_compra` DISABLE KEYS */;
INSERT INTO `repl_detalle_compra` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','4e08e0e3-6fcd-11e6-8683-10c37b693112','60879f0b-0ca6-11e6-8f12-025041000001','4e1096da-6fcd-11e6-8683-10c37b693112','2016-08-31 17:50:25','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','4e08e0e3-6fcd-11e6-8683-10c37b693112','798db943-0ca6-11e6-8f12-025041000001','4e230a37-6fcd-11e6-8683-10c37b693112','2016-08-31 17:50:25','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','4e08e0e3-6fcd-11e6-8683-10c37b693112','a952b03e-0ca6-11e6-8f12-025041000001','4e2bed24-6fcd-11e6-8683-10c37b693112','2016-08-31 17:50:25','PE');
/*!40000 ALTER TABLE `repl_detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_detalle_compra_alimento`
--

DROP TABLE IF EXISTS `repl_detalle_compra_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_detalle_compra_alimento` (
  `id_rancho` char(36) NOT NULL,
  `id_compra` char(36) NOT NULL,
  `id_alimento` char(36) NOT NULL,
  `id_detalle` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_detalle_compra_alimento`
--

LOCK TABLES `repl_detalle_compra_alimento` WRITE;
/*!40000 ALTER TABLE `repl_detalle_compra_alimento` DISABLE KEYS */;
INSERT INTO `repl_detalle_compra_alimento` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','436fac56-6fcd-11e6-8683-10c37b693112','1541cb01-0ca5-11e6-8f12-025041000001','4378717b-6fcd-11e6-8683-10c37b693112','2016-08-31 17:50:07','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','436fac56-6fcd-11e6-8683-10c37b693112','5cfa1eef-0ca5-11e6-8f12-025041000001','438c7fb8-6fcd-11e6-8683-10c37b693112','2016-08-31 17:50:07','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','436fac56-6fcd-11e6-8683-10c37b693112','0c528340-0ca5-11e6-8f12-025041000001','439655c8-6fcd-11e6-8683-10c37b693112','2016-08-31 17:50:07','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','436fac56-6fcd-11e6-8683-10c37b693112','4aaac044-0ca5-11e6-8f12-025041000001','439a83ce-6fcd-11e6-8683-10c37b693112','2016-08-31 17:50:07','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','436fac56-6fcd-11e6-8683-10c37b693112','42896b9f-0ca5-11e6-8f12-025041000001','439dfb74-6fcd-11e6-8683-10c37b693112','2016-08-31 17:50:07','PE');
/*!40000 ALTER TABLE `repl_detalle_compra_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_detalle_movimiento`
--

DROP TABLE IF EXISTS `repl_detalle_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_detalle_movimiento` (
  `id_rancho` char(36) NOT NULL,
  `id_movimiento` char(36) NOT NULL,
  `id_concepto` char(36) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_animal` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_movimiento`,`id_detalle`,`id_concepto`,`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_detalle_movimiento`
--

LOCK TABLES `repl_detalle_movimiento` WRITE;
/*!40000 ALTER TABLE `repl_detalle_movimiento` DISABLE KEYS */;
INSERT INTO `repl_detalle_movimiento` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','01dae066-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'ad9f4e62-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','0736aba9-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'c1dfe21c-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b394fef2-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'65511741-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b3a1cd28-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'65511741-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba841a8d-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'8d796d78-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba8f7ba8-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'8d796d78-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfa3059b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'9a293fb3-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfae6c31-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'9a293fb3-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4b2aa30-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'aa67fee6-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:44','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4ba4c33-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'aa67fee6-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:44','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb120911-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'b8817bda-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:55','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb1b1bb4-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'b8817bda-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:55','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d1331011-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'c524a7ef-6fbf-11e6-8683-10c37b693112','2016-08-31 17:54:05','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d13ab357-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'c524a7ef-6fbf-11e6-8683-10c37b693112','2016-08-31 17:54:05','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d7359d79-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'ff53eab3-6fbf-11e6-8683-10c37b693112','2016-08-31 17:54:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d744e2ee-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'ff53eab3-6fbf-11e6-8683-10c37b693112','2016-08-31 17:54:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf00d80-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'0bdd8975-6fc0-11e6-8683-10c37b693112','2016-08-31 17:54:23','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf7b08c-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'0bdd8975-6fc0-11e6-8683-10c37b693112','2016-08-31 17:54:23','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0a2f5ed-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'1a7ebf4f-6fc0-11e6-8683-10c37b693112','2016-08-31 17:54:31','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0b37f70-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'1a7ebf4f-6fc0-11e6-8683-10c37b693112','2016-08-31 17:54:31','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e164fa01-7084-11e6-b11d-008cfa6fa291','87775d5d-6fa0-11e6-b11d-008cfa6fa291',1,'65511741-6fbf-11e6-8683-10c37b693112','2016-09-01 15:42:46','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e1801dc3-7084-11e6-b11d-008cfa6fa291','877e1685-6fa0-11e6-b11d-008cfa6fa291',1,'65511741-6fbf-11e6-8683-10c37b693112','2016-09-01 15:42:46','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e793493f-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'3f9b7d00-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:54:43','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ec4fe463-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'5d7cef2d-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:54:51','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f21ffcad-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'7b41ea44-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:00','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f768e653-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'efc58cc0-7051-11e6-a3a5-10c37b693112','2016-09-01 09:40:02','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f78ecb11-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'efc58cc0-7051-11e6-a3a5-10c37b693112','2016-09-01 09:40:02','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f7c09ea3-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'8cee875a-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:10','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','fc8ce74b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291',1,'9c3ade50-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:18','PE');
/*!40000 ALTER TABLE `repl_detalle_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_detalle_orden_ganado`
--

DROP TABLE IF EXISTS `repl_detalle_orden_ganado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_detalle_orden_ganado` (
  `id_detalle` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_detalle_orden_ganado`
--

LOCK TABLES `repl_detalle_orden_ganado` WRITE;
/*!40000 ALTER TABLE `repl_detalle_orden_ganado` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_detalle_orden_ganado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_genealogia`
--

DROP TABLE IF EXISTS `repl_genealogia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_genealogia` (
  `id_animal` char(36) NOT NULL,
  `id_madre` char(36) NOT NULL,
  `id_padre` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_animal`,`id_madre`,`id_padre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_genealogia`
--

LOCK TABLES `repl_genealogia` WRITE;
/*!40000 ALTER TABLE `repl_genealogia` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_genealogia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_ingreso_alimento`
--

DROP TABLE IF EXISTS `repl_ingreso_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_ingreso_alimento` (
  `id_ingreso_alimento` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_ingreso_alimento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_ingreso_alimento`
--

LOCK TABLES `repl_ingreso_alimento` WRITE;
/*!40000 ALTER TABLE `repl_ingreso_alimento` DISABLE KEYS */;
INSERT INTO `repl_ingreso_alimento` VALUES ('9cbeb60f-6fcd-11e6-8683-10c37b693112','2016-08-31 17:52:37','PE'),('a5819eff-6fcd-11e6-8683-10c37b693112','2016-08-31 17:52:52','PE');
/*!40000 ALTER TABLE `repl_ingreso_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_inseminador`
--

DROP TABLE IF EXISTS `repl_inseminador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_inseminador` (
  `id_inseminador` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_inseminador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_inseminador`
--

LOCK TABLES `repl_inseminador` WRITE;
/*!40000 ALTER TABLE `repl_inseminador` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_inseminador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_medicina`
--

DROP TABLE IF EXISTS `repl_medicina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_medicina` (
  `id_medicina` char(36) NOT NULL,
  `codigo` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_medicina`,`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_medicina`
--

LOCK TABLES `repl_medicina` WRITE;
/*!40000 ALTER TABLE `repl_medicina` DISABLE KEYS */;
INSERT INTO `repl_medicina` VALUES ('04049bfe-0ca6-11e6-8f12-025041000001','167','2016-08-31 16:18:04','PE'),('0f534938-0ca6-11e6-8f12-025041000001','168','2016-08-31 16:18:04','PE'),('31778c57-0ca6-11e6-8f12-025041000001','332','2016-08-31 16:18:04','PE'),('3c62c40f-0ca6-11e6-8f12-025041000001','235','2016-08-31 16:18:04','PE'),('4a247fc3-0ca6-11e6-8f12-025041000001','181','2016-08-31 16:18:04','PE'),('55654de7-0ca6-11e6-8f12-025041000001','560','2016-08-31 16:18:04','PE'),('60879f0b-0ca6-11e6-8f12-025041000001','129','2016-08-31 16:18:04','PE'),('6ed49684-0ca6-11e6-8f12-025041000001','297','2016-08-31 16:18:04','PE'),('798db943-0ca6-11e6-8f12-025041000001','126','2016-08-31 16:18:04','PE'),('86677620-0ca6-11e6-8f12-025041000001','206','2016-08-31 16:18:04','PE'),('92066699-0ca6-11e6-8f12-025041000001','335','2016-08-31 16:18:04','PE'),('9dd231de-0ca6-11e6-8f12-025041000001','333','2016-08-31 16:18:04','PE'),('a4dcb776-13d1-11e6-8f12-025041000001','191','2016-08-31 16:18:04','PE'),('a952b03e-0ca6-11e6-8f12-025041000001','166','2016-08-31 16:18:04','PE'),('b48aeb81-0ca6-11e6-8f12-025041000001','239','2016-08-31 16:18:04','PE');
/*!40000 ALTER TABLE `repl_medicina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_medicina_animal`
--

DROP TABLE IF EXISTS `repl_medicina_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_medicina_animal` (
  `id_rancho` char(36) NOT NULL,
  `id_medicina_animal` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_medicina_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_medicina_animal`
--

LOCK TABLES `repl_medicina_animal` WRITE;
/*!40000 ALTER TABLE `repl_medicina_animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_medicina_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_medicina_tratamiento`
--

DROP TABLE IF EXISTS `repl_medicina_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_medicina_tratamiento` (
  `id_tratamiento` char(36) NOT NULL,
  `id_medicina` char(36) NOT NULL DEFAULT '',
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_tratamiento`,`id_medicina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_medicina_tratamiento`
--

LOCK TABLES `repl_medicina_tratamiento` WRITE;
/*!40000 ALTER TABLE `repl_medicina_tratamiento` DISABLE KEYS */;
INSERT INTO `repl_medicina_tratamiento` VALUES ('58a4cf1b-6fcd-11e6-8683-10c37b693112','60879f0b-0ca6-11e6-8f12-025041000001','2016-08-31 17:50:51','PE'),('58a4cf1b-6fcd-11e6-8683-10c37b693112','798db943-0ca6-11e6-8f12-025041000001','2016-08-31 17:50:58','PE'),('58a4cf1b-6fcd-11e6-8683-10c37b693112','a952b03e-0ca6-11e6-8f12-025041000001','2016-08-31 17:51:05','PE');
/*!40000 ALTER TABLE `repl_medicina_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_modulo`
--

DROP TABLE IF EXISTS `repl_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_modulo` (
  `id_modulo` varchar(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_modulo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_modulo`
--

LOCK TABLES `repl_modulo` WRITE;
/*!40000 ALTER TABLE `repl_modulo` DISABLE KEYS */;
INSERT INTO `repl_modulo` VALUES ('1','2016-03-08 11:50:18','SC'),('2','2016-03-08 11:50:18','SC'),('3','2016-03-08 11:50:18','SC'),('4','2016-03-08 11:50:18','SC'),('5','2016-03-08 11:50:18','SC');
/*!40000 ALTER TABLE `repl_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_movimiento`
--

DROP TABLE IF EXISTS `repl_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_movimiento` (
  `id_rancho` char(36) NOT NULL,
  `id_movimiento` char(36) NOT NULL,
  `id_concepto` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_movimiento`,`id_concepto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_movimiento`
--

LOCK TABLES `repl_movimiento` WRITE;
/*!40000 ALTER TABLE `repl_movimiento` DISABLE KEYS */;
INSERT INTO `repl_movimiento` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','01dae066-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','0736aba9-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b394fef2-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b3a1cd28-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba841a8d-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba8f7ba8-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfa3059b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfae6c31-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4b2aa30-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:44','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4ba4c33-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:44','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb120911-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:55','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb1b1bb4-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:53:55','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d1331011-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:05','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d13ab357-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:05','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d7359d79-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d744e2ee-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf00d80-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:23','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf7b08c-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:23','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0a2f5ed-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:31','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0b37f70-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:31','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e164fa01-7084-11e6-b11d-008cfa6fa291','87775d5d-6fa0-11e6-b11d-008cfa6fa291','2016-09-01 15:42:46','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e1801dc3-7084-11e6-b11d-008cfa6fa291','877e1685-6fa0-11e6-b11d-008cfa6fa291','2016-09-01 15:42:46','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e793493f-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:43','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ec4fe463-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:54:51','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f21ffcad-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:00','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f768e653-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-09-01 09:40:02','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f78ecb11-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-09-01 09:40:56','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f7c09ea3-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:10','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','fc8ce74b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 17:55:18','PE');
/*!40000 ALTER TABLE `repl_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_movimiento_animal`
--

DROP TABLE IF EXISTS `repl_movimiento_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_movimiento_animal` (
  `id_rancho` char(36) NOT NULL,
  `id_movimiento` char(36) NOT NULL,
  `id_concepto` char(36) NOT NULL,
  `id_animal` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`,`id_movimiento`,`id_concepto`,`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_movimiento_animal`
--

LOCK TABLES `repl_movimiento_animal` WRITE;
/*!40000 ALTER TABLE `repl_movimiento_animal` DISABLE KEYS */;
INSERT INTO `repl_movimiento_animal` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','01dae066-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','ad9f4e62-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','0736aba9-6fce-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','c1dfe21c-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b394fef2-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','65511741-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','b3a1cd28-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','65511741-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba841a8d-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','8d796d78-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ba8f7ba8-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','8d796d78-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:27','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfa3059b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','9a293fb3-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','bfae6c31-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','9a293fb3-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:36','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4b2aa30-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','aa67fee6-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:44','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','c4ba4c33-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','aa67fee6-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:44','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb120911-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','b8817bda-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:55','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','cb1b1bb4-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','b8817bda-6fbf-11e6-8683-10c37b693112','2016-08-31 17:53:55','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d1331011-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','c524a7ef-6fbf-11e6-8683-10c37b693112','2016-08-31 17:54:05','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d13ab357-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','c524a7ef-6fbf-11e6-8683-10c37b693112','2016-08-31 17:54:05','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d7359d79-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','ff53eab3-6fbf-11e6-8683-10c37b693112','2016-08-31 17:54:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','d744e2ee-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','ff53eab3-6fbf-11e6-8683-10c37b693112','2016-08-31 17:54:15','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf00d80-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','0bdd8975-6fc0-11e6-8683-10c37b693112','2016-08-31 17:54:23','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','dbf7b08c-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','0bdd8975-6fc0-11e6-8683-10c37b693112','2016-08-31 17:54:23','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0a2f5ed-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','1a7ebf4f-6fc0-11e6-8683-10c37b693112','2016-08-31 17:54:31','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e0b37f70-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','1a7ebf4f-6fc0-11e6-8683-10c37b693112','2016-08-31 17:54:31','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e164fa01-7084-11e6-b11d-008cfa6fa291','87775d5d-6fa0-11e6-b11d-008cfa6fa291','65511741-6fbf-11e6-8683-10c37b693112','2016-09-01 15:42:46','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e1801dc3-7084-11e6-b11d-008cfa6fa291','877e1685-6fa0-11e6-b11d-008cfa6fa291','65511741-6fbf-11e6-8683-10c37b693112','2016-09-01 15:42:46','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','e793493f-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','3f9b7d00-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:54:43','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','ec4fe463-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','5d7cef2d-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:54:51','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f21ffcad-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','7b41ea44-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:00','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f768e653-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','efc58cc0-7051-11e6-a3a5-10c37b693112','2016-09-01 09:40:02','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f78ecb11-7051-11e6-a3a5-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','efc58cc0-7051-11e6-a3a5-10c37b693112','2016-09-01 09:40:02','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','f7c09ea3-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','8cee875a-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:10','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','fc8ce74b-6fcd-11e6-8683-10c37b693112','8769c848-6fa0-11e6-b11d-008cfa6fa291','9c3ade50-6fbc-11e6-b11d-008cfa6fa291','2016-08-31 17:55:18','PE');
/*!40000 ALTER TABLE `repl_movimiento_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_orden_ganado`
--

DROP TABLE IF EXISTS `repl_orden_ganado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_orden_ganado` (
  `id_orden_ganado` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_orden_ganado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_orden_ganado`
--

LOCK TABLES `repl_orden_ganado` WRITE;
/*!40000 ALTER TABLE `repl_orden_ganado` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_orden_ganado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_pajilla`
--

DROP TABLE IF EXISTS `repl_pajilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_pajilla` (
  `id_pajilla` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_pajilla`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_pajilla`
--

LOCK TABLES `repl_pajilla` WRITE;
/*!40000 ALTER TABLE `repl_pajilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_pajilla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_programacion`
--

DROP TABLE IF EXISTS `repl_programacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_programacion` (
  `id_programacion` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_programacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_programacion`
--

LOCK TABLES `repl_programacion` WRITE;
/*!40000 ALTER TABLE `repl_programacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_programacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_programacion_reproductor`
--

DROP TABLE IF EXISTS `repl_programacion_reproductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_programacion_reproductor` (
  `id_programacion_reproductor` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_programacion_reproductor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_programacion_reproductor`
--

LOCK TABLES `repl_programacion_reproductor` WRITE;
/*!40000 ALTER TABLE `repl_programacion_reproductor` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_programacion_reproductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_proveedor`
--

DROP TABLE IF EXISTS `repl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_proveedor` (
  `id_proveedor` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_proveedor`
--

LOCK TABLES `repl_proveedor` WRITE;
/*!40000 ALTER TABLE `repl_proveedor` DISABLE KEYS */;
INSERT INTO `repl_proveedor` VALUES ('3e955fa4-6fa3-11e6-b11d-008cfa6fa291','2016-08-31 17:40:53','PE');
/*!40000 ALTER TABLE `repl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_rancho`
--

DROP TABLE IF EXISTS `repl_rancho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_rancho` (
  `id_rancho` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_rancho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_rancho`
--

LOCK TABLES `repl_rancho` WRITE;
/*!40000 ALTER TABLE `repl_rancho` DISABLE KEYS */;
INSERT INTO `repl_rancho` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','2016-08-31 12:28:19','PE'),('9cce7a74-7084-11e6-b11d-008cfa6fa291','2016-09-01 15:40:52','PE');
/*!40000 ALTER TABLE `repl_rancho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_rancho_alimento`
--

DROP TABLE IF EXISTS `repl_rancho_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_rancho_alimento` (
  `id_rancho` char(36) NOT NULL,
  `id_alimento` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_rancho`,`id_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_rancho_alimento`
--

LOCK TABLES `repl_rancho_alimento` WRITE;
/*!40000 ALTER TABLE `repl_rancho_alimento` DISABLE KEYS */;
INSERT INTO `repl_rancho_alimento` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','0c528340-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:52','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','1541cb01-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:52','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','42896b9f-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:52','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','4aaac044-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:52','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','5cfa1eef-0ca5-11e6-8f12-025041000001','2016-08-31 17:52:52','PE');
/*!40000 ALTER TABLE `repl_rancho_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_rancho_medicina`
--

DROP TABLE IF EXISTS `repl_rancho_medicina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_rancho_medicina` (
  `id_rancho` char(36) NOT NULL,
  `id_medicina` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_rancho`,`id_medicina`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_rancho_medicina`
--

LOCK TABLES `repl_rancho_medicina` WRITE;
/*!40000 ALTER TABLE `repl_rancho_medicina` DISABLE KEYS */;
INSERT INTO `repl_rancho_medicina` VALUES ('87452b01-6fa0-11e6-b11d-008cfa6fa291','60879f0b-0ca6-11e6-8f12-025041000001','2016-08-31 17:50:25','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','798db943-0ca6-11e6-8f12-025041000001','2016-08-31 17:50:25','PE'),('87452b01-6fa0-11e6-b11d-008cfa6fa291','a952b03e-0ca6-11e6-8f12-025041000001','2016-08-31 17:50:25','PE');
/*!40000 ALTER TABLE `repl_rancho_medicina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_raza`
--

DROP TABLE IF EXISTS `repl_raza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_raza` (
  `id_raza` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` char(2) NOT NULL,
  PRIMARY KEY (`id_raza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_raza`
--

LOCK TABLES `repl_raza` WRITE;
/*!40000 ALTER TABLE `repl_raza` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_raza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_recepcion`
--

DROP TABLE IF EXISTS `repl_recepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_recepcion` (
  `id_recepcion` char(36) NOT NULL,
  `id_proveedor` char(36) NOT NULL,
  `id_origen` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_recepcion`,`id_proveedor`,`id_origen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_recepcion`
--

LOCK TABLES `repl_recepcion` WRITE;
/*!40000 ALTER TABLE `repl_recepcion` DISABLE KEYS */;
INSERT INTO `repl_recepcion` VALUES ('73ff927c-6fa6-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','2016-08-31 13:14:03','PE'),('a04399c7-6fa6-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','4','2016-08-31 13:13:42','PE'),('39a74cc4-6fa7-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','4','2016-08-31 13:16:25','PE'),('02171d4b-6fa9-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','2016-08-31 13:29:01','PE'),('443ba468-6fa9-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','4','2016-08-31 13:30:51','PE'),('e7a5cdf4-6fbb-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','19','2016-08-31 15:50:23','PE'),('1168b41a-6fbc-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','2016-09-01 09:39:50','PE'),('9de129cf-706c-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','4','2016-09-01 12:49:05','PE'),('31258616-7209-11e6-b11d-008cfa6fa291','3e955fa4-6fa3-11e6-b11d-008cfa6fa291','1','2016-09-03 14:02:04','PE');
/*!40000 ALTER TABLE `repl_recepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_receta`
--

DROP TABLE IF EXISTS `repl_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_receta` (
  `id_receta` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` char(2) NOT NULL,
  PRIMARY KEY (`id_receta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_receta`
--

LOCK TABLES `repl_receta` WRITE;
/*!40000 ALTER TABLE `repl_receta` DISABLE KEYS */;
INSERT INTO `repl_receta` VALUES ('70180150-6fcd-11e6-8683-10c37b693112','2016-08-31 17:52:11','PE');
/*!40000 ALTER TABLE `repl_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_registro_empadre`
--

DROP TABLE IF EXISTS `repl_registro_empadre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_registro_empadre` (
  `id_registro_empadre` char(36) NOT NULL,
  `id_hembra` char(36) DEFAULT NULL,
  `id_semental` char(36) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_registro_empadre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_registro_empadre`
--

LOCK TABLES `repl_registro_empadre` WRITE;
/*!40000 ALTER TABLE `repl_registro_empadre` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_registro_empadre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_servicio`
--

DROP TABLE IF EXISTS `repl_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_servicio` (
  `id_servicio` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_servicio`
--

LOCK TABLES `repl_servicio` WRITE;
/*!40000 ALTER TABLE `repl_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_status_gestacion`
--

DROP TABLE IF EXISTS `repl_status_gestacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_status_gestacion` (
  `id_estatus_gestacion` char(36) NOT NULL,
  `id_registro_empadre` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_estatus_gestacion`,`id_registro_empadre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_status_gestacion`
--

LOCK TABLES `repl_status_gestacion` WRITE;
/*!40000 ALTER TABLE `repl_status_gestacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_status_gestacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_tacto`
--

DROP TABLE IF EXISTS `repl_tacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_tacto` (
  `id_tacto` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_tacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_tacto`
--

LOCK TABLES `repl_tacto` WRITE;
/*!40000 ALTER TABLE `repl_tacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `repl_tacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_tratamiento`
--

DROP TABLE IF EXISTS `repl_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_tratamiento` (
  `id_tratamiento` char(36) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` char(2) NOT NULL,
  PRIMARY KEY (`id_tratamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_tratamiento`
--

LOCK TABLES `repl_tratamiento` WRITE;
/*!40000 ALTER TABLE `repl_tratamiento` DISABLE KEYS */;
INSERT INTO `repl_tratamiento` VALUES ('58a4cf1b-6fcd-11e6-8683-10c37b693112','2016-08-31 17:50:43','PE');
/*!40000 ALTER TABLE `repl_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repl_usuario`
--

DROP TABLE IF EXISTS `repl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_usuario` (
  `id_usuario` char(36) NOT NULL,
  `log` char(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`id_usuario`,`log`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repl_usuario`
--

LOCK TABLES `repl_usuario` WRITE;
/*!40000 ALTER TABLE `repl_usuario` DISABLE KEYS */;
INSERT INTO `repl_usuario` VALUES ('1','admin','2016-08-31 12:26:20','PE');
/*!40000 ALTER TABLE `repl_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replicacion_logs`
--

DROP TABLE IF EXISTS `replicacion_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replicacion_logs` (
  `maquina` char(20) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`maquina`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replicacion_logs`
--

LOCK TABLES `replicacion_logs` WRITE;
/*!40000 ALTER TABLE `replicacion_logs` DISABLE KEYS */;
INSERT INTO `replicacion_logs` VALUES ('server','1900-01-01 00:00:00');
/*!40000 ALTER TABLE `replicacion_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `id_servicio` char(36) NOT NULL,
  `id_rancho` char(36) DEFAULT NULL,
  `id_hembra` char(36) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo_reproduccion` char(36) DEFAULT NULL,
  `id_reproductor` char(36) DEFAULT NULL,
  `id_inseminador` char(36) DEFAULT NULL,
  `id_pajilla` char(36) DEFAULT NULL,
  `numero_pajillas` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexo` (
  `id_sexo` char(36) NOT NULL,
  `descripcion` char(255) DEFAULT NULL,
  `seleccionar` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES ('43ae095a-cad9-11e4-af6c-3860779bbc63','Macho','S'),('49388b3d-cad9-11e4-af6c-3860779bbc63','Hembra','S'),('4e73bea4-cad9-11e4-af6c-3860779bbc63','Mixto','N');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_gestacion`
--

DROP TABLE IF EXISTS `status_gestacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_gestacion` (
  `id_estatus_gestacion` char(36) NOT NULL,
  `id_registro_empadre` char(36) NOT NULL,
  `status` char(2) DEFAULT NULL,
  `fecha_chequeo` datetime DEFAULT NULL,
  `id_tipo_parto` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_estatus_gestacion`,`id_registro_empadre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_gestacion`
--

LOCK TABLES `status_gestacion` WRITE;
/*!40000 ALTER TABLE `status_gestacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_gestacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tacto`
--

DROP TABLE IF EXISTS `tacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tacto` (
  `id_tacto` char(36) NOT NULL,
  `id_rancho` char(36) DEFAULT NULL,
  `id_hembra` char(36) DEFAULT NULL,
  `id_hallazgo` char(36) DEFAULT NULL,
  `id_reproductor` varchar(45) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `dias_abierto` int(11) DEFAULT NULL,
  `diagnostico` varchar(45) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_tacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tacto`
--

LOCK TABLES `tacto` WRITE;
/*!40000 ALTER TABLE `tacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_aborto`
--

DROP TABLE IF EXISTS `tipo_aborto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_aborto` (
  `id_tipo_aborto` char(36) NOT NULL,
  `descripcion` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_aborto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_aborto`
--

LOCK TABLES `tipo_aborto` WRITE;
/*!40000 ALTER TABLE `tipo_aborto` DISABLE KEYS */;
INSERT INTO `tipo_aborto` VALUES ('adeedc1f-5b4e-11e5-9bc9-3860779bbc63','Aborto'),('b3faa273-5b4e-11e5-9bc9-3860779bbc63','Reabsorcion'),('dfc825bb-194f-11e6-bc46-10c37b693112','Muerte Fetal'),('f581b76b-194f-11e6-bc46-10c37b693112','Nacio Muerto');
/*!40000 ALTER TABLE `tipo_aborto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_ganado`
--

DROP TABLE IF EXISTS `tipo_ganado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_ganado` (
  `id_tipo_ganado` char(36) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_ganado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_ganado`
--

LOCK TABLES `tipo_ganado` WRITE;
/*!40000 ALTER TABLE `tipo_ganado` DISABLE KEYS */;
INSERT INTO `tipo_ganado` VALUES ('1','Europeo (85%-100% raza pura)'),('2','Porte Grueso (65%-85% europeo)'),('3','Porte Mediano (45%-65% europeo)'),('4','Porte Liviano (menos del 45% europeo)');
/*!40000 ALTER TABLE `tipo_ganado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_medicamento`
--

DROP TABLE IF EXISTS `tipo_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_medicamento` (
  `id_tipo_medicamento` char(36) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_medicamento`
--

LOCK TABLES `tipo_medicamento` WRITE;
/*!40000 ALTER TABLE `tipo_medicamento` DISABLE KEYS */;
INSERT INTO `tipo_medicamento` VALUES ('1','Engorda-invierno'),('2','Engorda-verano'),('3','Potrero-invierno'),('4','Potrero-verano');
/*!40000 ALTER TABLE `tipo_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_parto`
--

DROP TABLE IF EXISTS `tipo_parto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_parto` (
  `id_tipo_parto` char(36) NOT NULL,
  `descripcion` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_parto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_parto`
--

LOCK TABLES `tipo_parto` WRITE;
/*!40000 ALTER TABLE `tipo_parto` DISABLE KEYS */;
INSERT INTO `tipo_parto` VALUES ('bb80faf6-575b-11e5-95fc-3860779bbc63','SIMPLE'),('c4a0fe69-575b-11e5-95fc-3860779bbc63','DOBLE'),('c831c214-575b-11e5-95fc-3860779bbc63','TRIPLE'),('cd8af6d4-575b-11e5-95fc-3860779bbc63','CUADRUPLE'),('d46eb96a-575b-11e5-95fc-3860779bbc63','QUINTUPLE');
/*!40000 ALTER TABLE `tipo_parto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_reproduccion`
--

DROP TABLE IF EXISTS `tipo_reproduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_reproduccion` (
  `id_tipo_reproduccion` char(36) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `desc_corta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_reproduccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_reproduccion`
--

LOCK TABLES `tipo_reproduccion` WRITE;
/*!40000 ALTER TABLE `tipo_reproduccion` DISABLE KEYS */;
INSERT INTO `tipo_reproduccion` VALUES ('dffa40f9-326b-11e6-b161-10c37b693112','Monta Natural','MN'),('eea9ac44-326b-11e6-b161-10c37b693112','Inseminacion Artificial','IA');
/*!40000 ALTER TABLE `tipo_reproduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoganado`
--

DROP TABLE IF EXISTS `tipoganado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoganado` (
  `id_tipoganado` char(36) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `material` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  PRIMARY KEY (`id_tipoganado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoganado`
--

LOCK TABLES `tipoganado` WRITE;
/*!40000 ALTER TABLE `tipoganado` DISABLE KEYS */;
INSERT INTO `tipoganado` VALUES ('10e05980-37c2-11e6-93e5-10c37b693112','Becerra','2','S'),('158b6de1-37c2-11e6-93e5-10c37b693112','Hembra Gorda','3','S'),('208a30cc-37c2-11e6-93e5-10c37b693112','Macho Gordo','4','S'),('29e69db2-37c2-11e6-93e5-10c37b693112','Media Ceba','5','S'),('2fe163b2-37c2-11e6-93e5-10c37b693112','Novillona','6','S'),('36dc40ae-37c2-11e6-93e5-10c37b693112','Toro','7','S'),('3cc5de99-37c2-11e6-93e5-10c37b693112','Vaca','8','S'),('764c0d1f-37c2-11e6-93e5-10c37b693112','Mixto','9','S'),('f55f7305-37c1-11e6-93e5-10c37b693112','Becerro','1','S');
/*!40000 ALTER TABLE `tipoganado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tratamiento` (
  `id_tratamiento` char(36) NOT NULL,
  `codigo` char(45) NOT NULL,
  `nombre` char(255) NOT NULL,
  `status` char(1) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tratamiento`,`codigo`,`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES ('58a4cf1b-6fcd-11e6-8683-10c37b693112','1','Tratamiento 1','A','2016-08-31 17:50:43');
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades_de_medida`
--

DROP TABLE IF EXISTS `unidades_de_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades_de_medida` (
  `id_unidad` char(36) NOT NULL,
  `descripcion` char(255) DEFAULT NULL,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades_de_medida`
--

LOCK TABLES `unidades_de_medida` WRITE;
/*!40000 ALTER TABLE `unidades_de_medida` DISABLE KEYS */;
INSERT INTO `unidades_de_medida` VALUES ('1','CJ'),('2','PZA'),('3','ML'),('4','KG'),('5','TON');
/*!40000 ALTER TABLE `unidades_de_medida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` char(36) NOT NULL,
  `log` char(255) NOT NULL,
  `password` char(255) DEFAULT NULL,
  `nombre` char(255) DEFAULT NULL,
  `apellido` char(255) DEFAULT NULL,
  `id_estado` char(255) DEFAULT NULL,
  `id_ciudad` char(255) DEFAULT NULL,
  `correo` varchar(36) DEFAULT NULL,
  `fecha_nacimiento` varchar(36) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`,`log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('1','admin','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_ganado`
--

DROP TABLE IF EXISTS `venta_ganado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta_ganado` (
  `id_venta_ganado` char(36) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `folio` varchar(45) DEFAULT NULL,
  `numero_pedido` varchar(45) DEFAULT NULL,
  `cliente` char(36) DEFAULT NULL,
  `id_clase_movimiento` char(36) DEFAULT NULL,
  `costo_total` decimal(20,4) DEFAULT NULL,
  `kilos_totales` decimal(20,4) DEFAULT NULL,
  `costo_flete` decimal(20,4) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `id_rancho` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_venta_ganado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_ganado`
--

LOCK TABLES `venta_ganado` WRITE;
/*!40000 ALTER TABLE `venta_ganado` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_ganado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_ganado_animal`
--

DROP TABLE IF EXISTS `venta_ganado_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta_ganado_animal` (
  `id_venta` char(36) NOT NULL,
  `id_animal` char(36) NOT NULL,
  `id_movimiento` char(36) DEFAULT NULL,
  `peso` decimal(20,4) DEFAULT NULL,
  `costo_kilo` decimal(20,4) DEFAULT NULL,
  `tipo_ganado` varchar(45) DEFAULT NULL,
  `costo_flete` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`id_venta`,`id_animal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_ganado_animal`
--

LOCK TABLES `venta_ganado_animal` WRITE;
/*!40000 ALTER TABLE `venta_ganado_animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_ganado_animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vientre_estado_vientre`
--

DROP TABLE IF EXISTS `vientre_estado_vientre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vientre_estado_vientre` (
  `id_vientre_estado_vientre` char(36) NOT NULL,
  `id_estado_vientre` char(36) DEFAULT NULL,
  `id_vientre` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_vientre_estado_vientre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vientre_estado_vientre`
--

LOCK TABLES `vientre_estado_vientre` WRITE;
/*!40000 ALTER TABLE `vientre_estado_vientre` DISABLE KEYS */;
/*!40000 ALTER TABLE `vientre_estado_vientre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'feedlotmanager'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_fechaSalidaHospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_fechaSalidaHospital`(
	varIdAnimal CHAR(36), varFecha Date) RETURNS date
BEGIN

DECLARE varFechaSig Date;

SELECT fecha 
INTO   varFechaSig
FROM ( SELECT min(m1.id_movimiento), m1.fecha
       FROM   movimiento m1, detalle_movimiento d1, rancho r1
       WHERE (     m1.id_rancho        = r1.id_rancho
	          AND  m1.id_concepto      = r1.con_traspaso_salida  
              AND  m1.id_corral_origen = r1.id_corral_hospital )
       AND   (     m1.id_rancho     = d1.id_rancho
              AND  m1.id_concepto   = d1.id_concepto
              AND  m1.id_movimiento = d1.id_movimiento )
       AND    d1.id_animal = varIdAnimal
       AND    m1.fecha > varFecha) A1;

return varFechaSig;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizaCostosRecetas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizaCostosRecetas`(
			varIdAlimento CHAR(36), varIdRancho CHAR(36))
BEGIN
	
    DECLARE	varIdReceta	CHAR(36);
    DECLARE varImporteActual DECIMAL(20,4);
    DECLARE varImporteNuevo DECIMAL(20,4);
    DECLARE varCantidad DECIMAL (20,4);
    DECLARE varCostoPromedio DECIMAL(20,4);
    
    

	DECLARE vb_termina BOOL DEFAULT FALSE;
	
	DECLARE curRecetas CURSOR
	FOR	SELECT ar.id_receta        
		FROM   alimento_receta ar                
		WHERE  ar.id_alimento =	varIdAlimento
        AND    ar.status = 'S';
        
	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;	

	OPEN curRecetas;

	Recorre_Cursor: LOOP
	
		FETCH curRecetas INTO varIdReceta;

		IF vb_termina THEN
        
			LEAVE Recorre_Cursor;
		END IF;
        
        SELECT	importe, cantidad
        INTO	varImporteActual , varCantidad
        FROM	alimento_receta
        WHERE	id_alimento = varIdAlimento 
        AND		id_receta = varIdReceta;
        
        SELECT	costo_promedio
        INTO	varCostoPromedio
        FROM	rancho_alimento
        WHERE	id_alimento = varIdAlimento
        AND		id_rancho = varIdRancho;
        
        UPDATE	receta 
        SET		importe = importe - varImporteActual
        WHERE	id_receta = varIdReceta;
        
        set		varImporteNuevo = varCostoPromedio * varCantidad;
        
        UPDATE	alimento_receta SET importe = varImporteNuevo 
        WHERE	id_alimento = varIdAlimento 
        AND		id_receta = varIdReceta;
        
        UPDATE	receta SET importe = importe + varImporteNuevo
        WHERE	id_receta = varIdReceta ;
        
	END LOOP;
	
	CLOSE curRecetas;
        
	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizaDatosCorrales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizaDatosCorrales`()
BEGIN

	DECLARE varIdCorral CHAR(36);
    
    DECLARE vb_termina BOOL DEFAULT FALSE;
	
	DECLARE cur_corrales CURSOR
	FOR	SELECT	id_corral                                
		FROM	corral;

	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;	

	OPEN cur_corrales;

	Recorre_Cursor: LOOP
    
		FETCH cur_corrales INTO varIdCorral;

		IF vb_termina THEN
        
            LEAVE Recorre_Cursor;
        END IF;
        
        CALL animalesPorCorral(varIdCorral);
        
    END LOOP;
  	CLOSE cur_corrales;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizaInventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizaInventario`(
	varIdReceta CHAR(36), varPorcentaje DECIMAL(20,2),	varIdRancho CHAR(36))
BEGIN


	DECLARE	varIdAlimento 		CHAR(36);
	DECLARE	varCantidadAlimento	DECIMAL(20,2);
	DECLARE varDescuentoA		DECIMAL(20,2);
	
	DECLARE vb_termina BOOL DEFAULT FALSE;
	
	DECLARE curAlimento CURSOR
	FOR	SELECT ar.id_alimento,	ar.cantidad        
		FROM   alimento_receta ar                
		WHERE  ar.id_receta =	varIdReceta
		AND    ar.status = 'S';
	
	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;	

	OPEN curAlimento;

	Recorre_Cursor: LOOP
	
		FETCH curAlimento INTO varIdAlimento, varCantidadAlimento;

		IF vb_termina THEN
        
			LEAVE Recorre_Cursor;
		END IF;
		
		UPDATE rancho_alimento
		SET existencia = existencia - (varPorcentaje /100)*varCantidadAlimento
		WHERE id_alimento = varIdAlimento
		AND id_rancho = varIdRancho;
	END LOOP;
	
	CLOSE curAlimento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarAbortoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarAbortoRepl`(
		varIdAborto		CHAR(36),	varFecha DATETIME,		varIdTipoParto	CHAR(36),
        varIdTipoAborto	CHAR(36),	varIdCausaMuerte	CHAR(36),	varIdHembra		CHAR(36))
BEGIN
	
    IF EXISTS(	SELECT	* 
				FROM	aborto
				WHERE	id_aborto	=	varIdAborto) THEN 
		BEGIN

			UPDATE	aborto SET
					fecha			=	varFecha,	id_tipo_parto		=	varIdTipoParto,
                    id_tipo_aborto	=	varIdTipoAborto,     id_causa_muerte =	varIdCausaMuerte,
                    id_hembra =	varIdHembra
			WHERE	id_aborto	=	varIdAborto;
		END;
	ELSE
		BEGIN
        
			INSERT	aborto
			SELECT	varIdAborto,	varFecha,			varIdTipoParto,			varIdTipoAborto,		
					varIdCausaMuerte,	varIdHembra;	
		END;
	END IF;

	UPDATE repl_aborto set status = 'SC'
	WHERE id_aborto	=	varIdAborto;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarAlimento`(
	varId_alimento	CHAR(36),	varCodigo	INT,
    varNombre		CHAR(255),	varCosto	DECIMAL(20,4),
    varId_unidad	CHAR(36))
BEGIN

	UPDATE	alimento
	SET		codigo			=	varCodigo,
			nombre			=	varNombre,
			costo_unitario			=	varCosto,
			id_unidad		=	varId_unidad
	WHERE	id_alimento = varId_alimento;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarAlimentoRecetaRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarAlimentoRecetaRepl`(
	varIdReceta CHAR(36), varIdAlimento CHAR(36), varCantidad DECIMAL(20,4), varImporte DECIMAL(20,4),
    varPorcentajeCantidad DECIMAL(20,2),			varPorcentajeCosto DECIMAL(20,2), varStatus CHAR(1))
BEGIN
	IF NOT EXISTS(	SELECT	* 
					FROM	alimento_receta
					WHERE	id_alimento		=	varIdAlimento 
					AND		id_receta	=	varIdReceta) THEN
			BEGIN
				INSERT	alimento_receta(	
					id_receta, 		id_alimento,	cantidad, importe, porcentaje_cantidad, porcentaje_costo, status)
				SELECT	varIdReceta,	varIdAlimento,	varCantidad, varImporte, varPorcentajeCantidad, varPorcentajeCosto, varStatus;		
		END;
	ELSE
		BEGIN			
            UPDATE	alimento_receta
            SET		cantidad = varCantidad, importe  = varImporte,
            porcentaje_cantidad = varPorcentajeCantidad, porcentaje_costo = varPorcentajeCosto,	status = varStatus
			WHERE	id_alimento = varIdAlimento
			AND id_receta = varIdReceta;		
		END;
	END IF;

	UPDATE repl_alimento_receta 
	SET 
    status = 'SC'
	WHERE    id_alimento = varIdAlimento
        AND id_receta = varIdReceta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarAlimentoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarAlimentoRepl`(
	varIdAlimento		CHAR(36),		varCodigo	INT(11),	varNombre			CHAR(255),
	varIdUnidad	CHAR(36),	varCostoUnitario	DECIMAL(20,4),	varStatus	CHAR(1))
BEGIN

	IF EXISTS(	SELECT	* 
				FROM	alimento
				WHERE	id_alimento	=	varIdAlimento
                AND		codigo		=	varCodigo) THEN 
		BEGIN

			UPDATE	alimento SET
					nombre			=	varNombre,	id_unidad		=	varIdUnidad,
                    costo_unitario	=	varCostoUnitario,     status =	varStatus                    
			WHERE	id_alimento	=	varIdAlimento
			AND		codigo		=	varCodigo;
		END;
	ELSE
		BEGIN
        
			INSERT	alimento
			SELECT	varIdAlimento,	varCodigo,			varNombre,			varCostoUnitario,		
					varIdUnidad,	varStatus;	
		END;
	END IF;

	UPDATE repl_alimento set status = 'SC'
	WHERE id_alimento	=	varIdAlimento
	AND		codigo		=	varCodigo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarAnimal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarAnimal`(
    varIdAnimal		CHAR(36),		varIdProveedor		CHAR(36),		
	varFechaCompra	DATETIME,		varCompra			CHAR(255),
	varNumeroLote	CHAR(255),		varPesoCompra		DECIMAL(20,4),	
	varIdSexo		CHAR(36),		varFechaIngreso		DATETIME,
	varAreteVisual	CHAR(255),		varAreteElectronico	CHAR(255),
	varAreteSiniiga	CHAR(255),		varAreteCampaña		CHAR(255),
	varPesoActual	DECIMAL(20,4),	varTemperatura		DECIMAL(20,4),
	varEsSemental	CHAR(1),		varIdSemental		CHAR(36),
	varIdRaza		CHAR(36),		varStatus			CHAR(1),
	varEsVientre	CHAR(1),		varIdTipo			CHAR(36),
    varFolioAnimal		CHAR(255))
BEGIN
	
	UPDATE animal set 
		id_proveedor		=	varIdProveedor,			fecha_compra	=	varFechaCompra,
		compra				=	varCompra,				numero_lote		=	varNumeroLote,
		peso_compra			=	varPesoCompra,			id_sexo			=	varIdSexo,
		fecha_ingreso		=	varFechaIngreso,		arete_visual	=	varAreteVisual,
		arete_electronico	=	varAreteElectronico,	arete_siniiga	=	varAreteSiniiga,
		arete_campaña		=	varAreteCampaña,		peso_actual		=	varPesoActual,
		temperatura			=	varTemperatura,			es_semental		=	varEsSemental,
		id_semental			=	varIdSemental,			id_raza			=	varIdRaza,
		status				=	varStatus,				es_vientre		=	varEsVientre,
		id_tipoganado		=	varIdTipo,				folio_animal	=	varFolioAnimal
	WHERE	id_animal	=	varIdAnimal;	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarAnimalRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarAnimalRepl`(
	varIdAnimal		    CHAR(36),	   varIdProveedor	       CHAR(36),       varFechaCompra	    DATETIME,
    varCompra	        CHAR(255),     varNumeroLote	       CHAR(255),      varPesoCompra	    DECIMAL(20,4),
	varIdSexo    	    CHAR(36),      varFechaIngreso          DATETIME,	   varAreteVisual	    CHAR(255),
    varAreteElectronico CHAR(255),	   varAreteSiniiga          CHAR(255),	   varAreteCampaña	    CHAR(255),
	varPesoActual	    DECIMAL(20,4), varTemperatura           DECIMAL(20,4), varEsSemental	    CHAR(1),
    varIdSemental	    CHAR(36),      varIdRaza		        CHAR(36),      varEsVientre		    CHAR(1),
    varFechaRecepcion   DATETIME,	   varPesoRecepcion         DECIMAL(20,4), varPorcentajeMerma   DECIMAL(20,4),
    varCostoFlete       DECIMAL(20,4), varTotalAlimento         DECIMAL(20,4), varCostoAlimento     DECIMAL(20,4),
    varPromedioAlimento DECIMAL(20,4), varPromedioCostoAlimento DECIMAL(20,4), varFechaUltimaComida DATETIME, 
    varGananciaPromedio DECIMAL(20,4), varStatus			    CHAR(1),		varIdTipo			char(36),
    varFolioAnimal		char(255),		varFechaNacimiento		DATETIME,		varEstadoVientre	CHAR(36),
    varCorralAcopio		CHAR(36))
BEGIN
	
	IF EXISTS(SELECT * FROM animal WHERE id_animal = varIdAnimal ) THEN
		BEGIN

			UPDATE animal set 
				id_proveedor            = varIdProveedor,           fecha_compra        = varFechaCompra,
                compra		            = varCompra,                numero_lote         = varNumeroLote,
                peso_compra             = varPesoCompra,            id_sexo             = varIdSexo,
                fecha_ingreso	        = varFechaIngreso,	        arete_visual        = varAreteVisual,
                arete_electronico       = varAreteElectronico,      arete_siniiga       = varAreteSiniiga,
                arete_campaña	        = varAreteCampaña,          peso_actual         = varPesoActual,
                temperatura		        = varTemperatura,           es_semental         = varEsSemental,
                id_semental		        = varIdSemental,            id_raza	            = varIdRaza,
                es_vientre              = varEsVientre,             fecha_recepcion     = varFechaRecepcion,
                peso_recepcion          = varPesoRecepcion,         porcentaje_merma    = varPorcentajeMerma,
                costo_flete             = varCostoFlete,            total_alimento      = varTotalAlimento,
                costo_alimento          = varCostoAlimento,         promedio_alimento   = varPromedioAlimento,
                promedio_costo_alimento = varPromedioCostoAlimento, fecha_ultima_comida = varFechaUltimaComida,
                ganancia_promedio       = varGananciaPromedio,      status			    = varStatus,
                id_tipoganado			= varIdTipo,				folio_animal		= varFolioAnimal,
                fecha_nacimiento		= varFechaNacimiento,		estado_vientre		= varEstadoVientre,
                id_corral_acopio		= varCorralAcopio
			WHERE id_animal = varIdAnimal;
		END;
	ELSE
		BEGIN

			INSERT animal
			(	id_animal,    	   id_proveedor, 	        fecha_compra,        compra, 
				numero_lote,	   peso_compra,			    id_sexo,			 fecha_ingreso,    
				arete_visual,	   arete_electronico,		arete_siniiga,		 arete_campaña,    
				peso_actual,	   temperatura,			    es_semental,		 id_semental,  
				id_raza,		   es_vientre,              fecha_recepcion,     peso_recepcion,
                porcentaje_merma,  costo_flete,             total_alimento,      costo_alimento,
                promedio_alimento, promedio_costo_alimento, fecha_ultima_comida, ganancia_promedio, 
                status,				id_tipoganado,			folio_animal,		fecha_nacimiento,
                estado_vientre,		id_corral_acopio)
			SELECT
				varIdAnimal,	     varIdProveedor,		   varFechaCompra,		 varCompra,
				varNumeroLote,	     varPesoCompra,			   varIdSexo,			 varFechaIngreso,
				varAreteVisual,	     varAreteElectronico,	   varAreteSiniiga,	     varAreteCampaña,
				varPesoActual,	     varTemperatura,		   varEsSemental,		 varIdSemental,
				varIdRaza,		     varEsVientre,			   varFechaRecepcion,	 varPesoRecepcion,
                varPorcentajeMerma,  varCostoFlete,            varTotalAlimento,     varCostoAlimento,
                varPromedioAlimento, varPromedioCostoAlimento, varFechaUltimaComida, varGananciaPromedio,
                varStatus,			varIdTipo,					varFolioAnimal,			varFechaNacimiento,
                varEstadoVientre,	varCorralAcopio;		
		END;
	END IF;
	
	UPDATE repl_animal set status = 'SC'
	WHERE id_animal	=	varIdAnimal;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCasetaSanitaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCasetaSanitaria`(varIdCaseta CHAR(36), varCodigo CHAR(36), varDescripcion VARCHAR(45))
BEGIN
	update caseta_sanitaria
    set codigo = varCodigo,
    descripcion = varDescripcion
    where id_caseta = varIdCaseta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarChofer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarChofer`(varIdChofer CHAR(36), varCodigo CHAR(36), varNombre VARCHAR(45))
BEGIN
	update chofer
    set codigo = varCodigo,
    nombre = varNombre
    where id_chofer = varIdChofer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCiudadDestino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCiudadDestino`(varIdEstado CHAR(36) ,varIdCiudad CHAR(36), varEstado CHAR(45))
BEGIN
Update ciudaddestino
set id_estado = varIdEstado,
	id_ciudad = varIdCiudad,
	estado = varEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCiudadOrigen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCiudadOrigen`(varIdEstado CHAR(36) ,varIdCiudad CHAR(36), varCiudad CHAR(45))
BEGIN
Update ciudadorigen
set 	descripcion_ciudad = varCiudad
where id_estado = varIdEstado 
and	id_ciudad = varIdCiudad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCliente`(	
	varIdCliente	CHAR(36),	varCliente		CHAR(255), 	
    varIdPais		CHAR(36),	varIdEstado 	CHAR(36),
	varIdCiudad		CHAR(36),	varDireccion	CHAR(255),
	varEmail		CHAR(45),	varTelefono		CHAR(20),
    varPFisicaMoral	CHAR(1), 	varConPago		CHAR(45), 
    varDiasCredito	INT)
BEGIN

	UPDATE	cliente 
    SET		descripcion = 	varCliente,
			id_pais		=	varIdPais,            
			id_estado	=	varIdEstado,
            id_ciudad	=	varIdCiudad,
			direccion	=	varDireccion,
            email		=	varEmail,
            telefono	=	varTelefono,
			p_fisica_moral	=	varPFisicaMoral,
            con_pago = varConPago,
            dias_credito = varDiasCredito
    WHERE	id_cliente	=	varIdCliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarClienteRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarClienteRepl`(
	varIdCliente	CHAR(36),	varDescripcion	CHAR(255),	varIdPais		char(36),	
    varIdEstado		char(36),	varIdCiudad		char(36),	varDireccion	char(255),
	varEmail		char(45),	varTelefono		char(20),	varPFisicaMoral	char(1),
	varStatus		char(1))
BEGIN
	
	IF NOT EXISTS(	SELECT	* 
				FROM	cliente
				WHERE	id_cliente	=	varIdCliente	) THEN
		BEGIN
			INSERT	cliente(	
					id_cliente, 		descripcion, 	id_pais, 	id_estado,		
					id_ciudad,			direccion,		email,		telefono,	
                    p_fisica_moral,		status)
			SELECT	varIdCliente,		varDescripcion,	varIdPais,	varIdEstado,
					varIdCiudad,		varDireccion,	varEmail,	varTelefono,
                    varPFisicaMoral,	varStatus;		
		END;
	ELSE
		BEGIN			
            UPDATE	cliente
            SET		descripcion		=	varDescripcion,
					id_pais			=	varIdPais,
                    id_estado		=	varIdEstado,		
					id_ciudad		=	varIdCiudad,
                    direccion		=	varDireccion,
                    email			=	varEmail,
                    telefono		=	varTelefono,	
                    p_fisica_moral	=	varPFisicaMoral,
                    status			=	varStatus
			WHERE	id_cliente	=	varIdCliente;
		END;
	END IF;

	UPDATE	repl_cliente set status = 'SC'
	WHERE	id_cliente	=	varIdCliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCompraRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCompraRepl`(
	varIdRancho	CHAR(36),	varIdCompra CHAR(36),		varIdProveedor	CHAR(36),		varFecha	DATETIME,
    varFactura	VARCHAR(45), 	varOrden		VARCHAR(45),	varSubtotal	DECIMAL(20,4),
    varIva		DECIMAL(20,4),	varTotal		DECIMAL(20,4),	varStatus varChar(1) )
BEGIN
	IF EXISTS(SELECT * FROM compra WHERE id_compra = varIdCompra AND id_rancho = varIdRancho AND id_proveedor = varIdProveedor) THEN
		BEGIN

			UPDATE compra set 
				fecha			    = varFecha,
                factura 		= 		varFactura, 	orden 		= 		varOrden, 	
                subtotal 		= 		varSubtotal,	iva			=			varIva,
                total		=		varTotal,	status = varStatus
			WHERE id_compra = varIdCompra AND id_rancho = varIdRancho AND id_proveedor = varIdProveedor;
		END;
	ELSE
		BEGIN

			INSERT compra
			(	id_compra, 		id_rancho, 		id_proveedor, 		fecha, 		factura, 		orden, 
            subtotal, 		iva, 		total,		 status)
			SELECT
				varIdCompra, 		varIdRancho, 		varIdProveedor, 		varFecha, 
                varFactura, 		varOrden, 		varSubtotal, 		varIva, 		varTotal,
                varStatus;		
		END;
	END IF;
	
	UPDATE repl_compra set status = 'SC'
	WHERE id_compra	=	varIdCompra AND id_rancho = varIdRancho AND id_proveedor = varIdProveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarConceptoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarConceptoRepl`(
	varIdRancho		CHAR(36),	varIdConcepto	CHAR(36),	varDescripcion	CHAR(100),
	varDesCorta		CHAR(5),	varTipo			CHAR(1))
BEGIN
	
	IF EXISTS(	SELECT	* 
				FROM	concepto_movimiento
				WHERE	id_rancho	=	varIdRancho
                AND		id_concepto	=	varIdConcepto) THEN
		BEGIN

			UPDATE	concepto_movimiento SET
					descripcion	=	varDescripcion,	des_corta	=	varDesCorta,
					tipo		=	varTipo
			WHERE	id_rancho	=	varIdRancho
			AND		id_concepto	=	varIdConcepto;
		END;
	ELSE
		BEGIN

			INSERT	concepto_movimiento
			SELECT	varIdRancho,	varIdConcepto,	varDescripcion,	varDesCorta,	varTipo;		
		END;
	END IF;

	UPDATE	repl_concepto_movimiento set status = 'SC'
	WHERE	id_rancho	=	varIdRancho
    AND		id_concepto	=	varIdConcepto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarConfiguracion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarConfiguracion`(
	varIdConfiguracion	CHAR(36),	varPuertoBaston	CHAR(255),	
	varPuertoBascula	CHAR(255),	varEnvioCom		CHAR(45),
	varRecComBascula	CHAR(45),	varRecComBaston	CHAR(45),
    varTiempoEsperaCom	INT,		varPrecioCarne	DECIMAL(20,4),
	varCostoAlimento	DECIMAL(20,4))
BEGIN
	
    UPDATE	configuracion
    SET		puerto_baston		=	varPuertoBaston,
			puerto_bascula		=	varPuertoBascula,
            envio_com			=	varEnvioCom,
            rec_com_bascula		=	varRecComBascula,
            rec_com_baston		=	varRecComBaston,
            tiempo_espera_com	=	varTiempoEsperaCom,
			precio_carne		=	varPrecioCarne,
            costo_alimento		=	varCostoAlimento
    WHERE	id_configuracion	=	varIdConfiguracion;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarControlGestacionRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarControlGestacionRepl`(
varIdControlGestacion CHAR(36), varIdRegistroEmpadre CHAR(36), 
varStatus CHAR(2), varFecha DATETIME, varTipoParto CHAR(36)
)
BEGIN
	IF EXISTS(SELECT * FROM control_gestacion WHERE id_control_gestacion = varIdControlGestacion AND id_registro_empadre = varIdRegistroEmpadre) THEN
		BEGIN

			UPDATE control_gestacion set 
            status 		= 		varStatus, 		fecha 		= 		varFecha, 
            tipo_parto 	= 		varTipoParto
			WHERE id_control_gestacion = varIdControlGestacion AND id_registro_empadre = varIdRegistroEmpadre;
		END;
	ELSE
		BEGIN

			INSERT control_gestacion
			(	id_control_gestacion, 		id_registro_empadre, 		status, 		fecha, 		tipo_parto)
			SELECT
				varIdControlGestacion, 		varIdRegistroEmpadre, 		varStatus, 		varFecha, varTipoParto;		
		END;
	END IF;
	
	UPDATE repl_control_gestacion set status = 'SC'
	WHERE id_control_gestacion	=	varIdControlGestacion AND id_registro_empadre = varIdRegistroEmpare;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCorral` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCorral`(
	varIdRancho				CHAR(36),		varIdCorral			CHAR(36),	
	varNombre				CHAR(255),		varLocalizacion		CHAR(255), 	
	varAlimentoIngresado	DECIMAL(20,4),	varObservaciones	CHAR(255))
BEGIN
	UPDATE	corral
	SET		nombre				=	varNombre,				localizacion	=	varLocalizacion,        
			alimento_ingresado	=	varAlimentoIngresado,	observaciones	=	varObservaciones
	WHERE  id_rancho   = varIdRancho
	AND    id_corral   = varIdCorral;

	CALL	animalesPorCorral(	varIdCorral	);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCorralAcopioRecepcionRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCorralAcopioRecepcionRepl`(
		varIdCorralAcopio		CHAR(36),		varIdRecepcion		CHAR(36),
        varAnimalesPendientes	INT(11),		varNumeroAnimales	INT(11))
BEGIN

	IF NOT EXISTS (SELECT * 
					FROM	corral_acopio_recepcion
                    WHERE	id_corral_acopio = varIdCorralAcopio
                    AND		id_recepcion = varIdRecepcion) THEN
                    
			BEGIN 
            
            INSERT corral_acopio_recepcion 	(id_corral_acopio,	id_recepcion,	animales_pendientes,	num_animales)
            SELECT					varIdCorralAcopio,	varIdRecepcion,	varAnimalesPendientes,	varNumeroAnimales;
            
            END;
			
	ELSE 
			BEGIN
            UPDATE	corral_acopio_recepcion
            SET		animales_pendientes = varAnimalesPendientes,
					num_animales		= varNumeroAnimales
			WHERE	id_corral_acopio	= varIdCorralAcopio
            AND		id_recepcion		= varIdRecepcion;
           
           END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCorralAcopioRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCorralAcopioRepl`(
		varIdCorralAcopio		CHAR(36),		varNombre		CHAR(255),
        varTotalAlimento	DECIMAL(20,4),		varNumeroAnimales	INT(11),
        varStatus			CHAR(1))
BEGIN
	
    IF NOT EXISTS (SELECT * 
					FROM	corral_acopio
                    WHERE	id_corral_acopio = varIdCorralAcopio) THEN
                    
			BEGIN 
            
            INSERT corral_acopio 	(id_corral_acopio,	nombre,	total_alimento,	num_animales, status)
            SELECT					varIdCorralAcopio,	varNombre,	varTotalAlimento,	varNumeroAnimales, varStatus;
            
            END;
			
	ELSE 
			BEGIN
            UPDATE	corral_acopio
            SET		total_alimento		= varTotalAlimento,
					num_animales		= varNumeroAnimales,
                    status				= varStatus
			WHERE	id_corral_acopio	= varIdCorralAcopio;
           
           END;
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCorralAnimalRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCorralAnimalRepl`(
	varIdRancho		CHAR(36),	varIdCorral	CHAR(36),	varIdAnimal CHAR(36))
BEGIN
	
	DELETE	FROM corral_animal
	WHERE 	id_animal = varIdAnimal;

	INSERT INTO corral_animal
	SELECT 	varIdRancho, varIdCorral, varIdAnimal;
	
	UPDATE	repl_corral_animal set status = 'SC'
	WHERE	id_rancho	=	varIdRancho
	AND		id_corral	=	varIdCorral
	AND		id_animal	=	varIdAnimal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCorralDatos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCorralDatos`(
    varIdRancho    CHAR(36),		varIdCorral         CHAR(255),            
    varCategoria   CHAR(255),   	varGanado_amedias   CHAR(255),        
    varColor_arete INT,         	varFecha_nacimiento DATETIME,
    varNumero_lote CHAR(255),   	varCompra           CHAR(255),
    varPorcentaje  DECIMAL(20,4),	varIdProveedor		CHAR(36))
BEGIN
    
  UPDATE	corral_datos
  SET		categoria	= varCategoria,		ganado_amedias		=	varGanado_amedias,        
			color_arete	= varColor_arete,	fecha_nacimiento	=	varFecha_nacimiento,    
			numero_lote	= varNumero_lote,	compra				=	varCompra,                
			porcentaje	= varPorcentaje,	id_proveedor		=	varIdProveedor
  WHERE  	id_rancho   = varIdRancho
  AND    	id_corral   = varIdCorral;            
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCorralDatosRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCorralDatosRepl`(
	varIdRancho			CHAR(36),	varIdCorral		CHAR(36),	varCategoria		CHAR(255),
	varGanadoAmedias	CHAR(255),	varColorArete	CHAR(36),	varFechaNacimiento	DATETIME,
	varNumeroLote		CHAR(255),	varCompra		CHAR(255),	varPorcentaje		DECIMAL(5,2),
	varIdProveedor		CHAR(36))
BEGIN
	
	IF EXISTS(	SELECT	* 
				FROM	corral_datos
				WHERE	id_rancho	=	varIdRancho
                AND		id_corral	=	varIdCorral) THEN
		BEGIN

			UPDATE	corral_datos SET
					categoria	=	varCategoria,	ganado_amedias		=	varGanadoAmedias,
					color_arete	=	varColorArete,	fecha_nacimiento	=	varFechaNacimiento,
					numero_lote	=	varNumeroLote,	compra				=	varCompra,
					porcentaje	=	varPorcentaje,	id_proveedor		=	varIdProveedor
			WHERE	id_rancho	=	varIdRancho
			AND		id_corral	=	varIdCorral;
		END;
	ELSE
		BEGIN
        
			INSERT	corral(	
					id_rancho, 		id_corral, 			categoria, 		ganado_amedias, 
					color_arete, 	fecha_nacimiento, 	numero_lote,	compra,
					porcentaje,		id_proveedor)
			SELECT	varIdRancho,	varIdCorral,		varCategoria,	varGanadoAmedias,	
					varColorArete,	varFechaNacimiento,	varNumeroLote,	varCompra,	
					varPorcentaje,	varIdProveedor;		
		END;
	END IF;
	UPDATE	repl_corral_datos set status = 'SC'
	WHERE	id_rancho	=	varIdRancho
	AND		id_corral	=	varIdCorral;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCorralRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCorralRepl`(
	varIdRancho		         CHAR(36),	    varIdCorral	        CHAR(36),	
    varNombre		         CHAR(255),	    varLocalizacion		CHAR(255),	
    varDiasCorral            INT(11),	    varObservaciones	CHAR(255),
    varTotalCostoFlete       DECIMAL(20,4), varFechaInicio      DATETIME,  
    varFechaCierre           DATETIME,      varMedicinaPromedio DECIMAL(20,4),
    varConversionAlimenticia DECIMAL(20,4), varMerma            DECIMAL(20,4),
    varStatus	             CHAR(1))
BEGIN
	
	IF EXISTS(	SELECT	* 
				FROM	corral
				WHERE	id_rancho	=	varIdRancho
                AND		id_corral	=	varIdCorral) THEN
		BEGIN

			UPDATE	corral SET
					nombre			       = varNombre,			       localizacion		 =	varLocalizacion,
					dias_corral            = varDiasCorral,            observaciones	 =	varObservaciones,
                    total_costo_flete      = varTotalCostoFlete,       fecha_inicio      = varFechaInicio,
                    fecha_cierre           = varFechaCierre,           medicina_promedio = varMedicinaPromedio,
                    conversion_alimenticia = varConversionAlimenticia, merma             = varMerma,
					status			       = varStatus					
			WHERE	id_rancho	=	varIdRancho
			AND		id_corral	=	varIdCorral;
		END;
	ELSE
		BEGIN
        
			INSERT	corral(	
					id_rancho, 	    id_corral, 	         nombre,                   localizacion, 
					dias_corral,    observaciones,       total_costo_flete,        fecha_inicio,
                    fecha_cierre,   medicina_promedio,   conversion_alimenticia,   merma,
					status			       )
			SELECT	varIdRancho,    varIdCorral,		 varNombre,	               varLocalizacion,
                    varDiasCorral,  varObservaciones,    varTotalCostoFlete,       varFechaInicio,
                    varFechaCierre, varMedicinaPromedio, varConversionAlimenticia, varMerma,            
					varStatus;		
		END;
	END IF;
	UPDATE	repl_corral set status = 'SC'
	WHERE	id_rancho	=	varIdRancho
	AND		id_corral	=	varIdCorral;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCria`(
    varIdRancho			CHAR(36),	varIdMadre	CHAR(36),            
    varIdCria			CHAR(36),	varArete	CHAR(255),	
	varFechaNacimiento	DATETIME,	varIdSexo	CHAR(36),
	varIdRaza			CHAR(36),	varPeso		DECIMAL(20,4))
BEGIN
    
    UPDATE cria
	SET arete				=	varArete,
		fecha_nacimiento	=	varFechaNacimiento,
		id_sexo				=	varIdSexo,
		id_raza				=	varIdRaza,
		peso				=	varPeso
	WHERE	id_rancho	=	varIdRancho
	AND		id_madre	=	varIdMadre
	AND		id_cria		=	varIdCria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCriaRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCriaRepl`(
	varIdRancho	CHAR(36),	varIdMadre	CHAR(36),	varIdCria			CHAR(255),
	varArete	CHAR(45),	varIdSexo	CHAR(36),	varFechaNacimiento	DATETIME,
	varIdRaza	CHAR(36),	varStatus	CHAR(1),	varTipoParto		CHAR(36),
    varIdAnimal	CHAR(36),	varComentarios CHAR(255),	varNombreCria	CHAR(255))
BEGIN
	
	IF EXISTS(	SELECT	* 
				FROM	cria
				WHERE	id_rancho	=	varIdRancho
                AND		id_madre	=	varIdMadre
				AND		id_cria		=	varIdCria	) THEN
		BEGIN

			UPDATE	cria SET
					arete				=	varArete,			id_sexo	=	varIdSexo,
					fecha_nacimiento	=	varFechaNacimiento,	id_raza	=	varIdRaza,	
					status				=	varStatus,			comentarios = varComentarios,
                    nombre_cria			=	varNombreCria
			WHERE	id_rancho	=	varIdRancho
			AND		id_madre	=	varIdMadre
			AND		id_cria		=	varIdCria;
		END;
	ELSE
		BEGIN
        
			INSERT	cria(	
					id_rancho, 		id_madre, 			id_cria,	arete, 
					id_sexo, 		fecha_nacimiento, 	id_raza,	status,
                    id_tipo_parto,	id_animal,			comentarios,	nombre_cria)
			SELECT	varIdRancho,	varIdMadre,			varIdCria,	varArete,	
					varIdSexo,		varFechaNacimiento,	varIdRaza,	varStatus,
                    varTipoParto,	varIdAnimal,	varComentarios,	varNombreCria;		
		END;
	END IF;
	UPDATE	repl_cria set status = 'SC'
	WHERE	id_rancho	=	varIdRancho
	AND		id_madre	=	varIdMadre
	AND		id_cria		=	varIdCria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarDetalleCompraAlimentoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarDetalleCompraAlimentoRepl`(
varIdDetalle CHAR(36), varIdRancho CHAR(36), 	varIdCompra CHAR(36), 	varIdAlimento CHAR(36), varCantidad INT,
varPrecioUnitario DECIMAL(20,4), 		varImporte DECIMAL(20,4)
)
BEGIN
	
	IF NOT EXISTS(	SELECT	* 
				FROM	detalle_compra_alimento
				WHERE	id_rancho	=	varIdRancho 	AND 	id_compra 	= 	varIdCompra
                AND 	id_alimento = 	varIdAlimento 	AND		id_detalle 	=	varIdDetalle) THEN
		BEGIN
			INSERT	detalle_compra_alimento(	
					id_detalle,	id_rancho, 		id_compra, 	id_alimento,	cantidad,	precio_unitario,		importe)
			SELECT	varIdDetalle,	varIdRancho,	varIdCompra,	varIdAlimento,	  varCantidad,	varPrecioUnitario,	varImporte;		
		END;
	ELSE
		BEGIN			
            UPDATE	detalle_compra_alimento
            SET		cantidad 	= 	varCantidad,	
            precio_unitario 	= 	varPrecioUnitario,		importe 	= 	varImporte 
			WHERE	id_rancho	=	varIdRancho 	AND 	id_compra 	= 	varIdCompra
                AND 	id_alimento = 	varIdAlimento 	AND		id_detalle 	=	varIdDetalle;
		END;
	END IF;

	UPDATE repl_detalle_compra_alimento
SET 
    status = 'SC'
WHERE
    id_rancho	=	varIdRancho 	AND 	id_compra 	= 	varIdCompra 	
    AND 	id_alimento = 	varIdAlimento 	AND		id_detalle 	=	varIdDetalle;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarDetalleCompraRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarDetalleCompraRepl`(
varIdRancho CHAR(36), 	varIdCompra CHAR(36), 	varIdMedicina CHAR(36), 
varIdDetalle CHAR(36), 		varCantidad INT, 			varPresentacion DECIMAL(20,4),
varPrecioUnitario DECIMAL(20,4), 		varImporte DECIMAL(20,4)
)
BEGIN
	
	IF NOT EXISTS(	SELECT	* 
				FROM	detalle_compra
				WHERE	id_rancho	=	varIdRancho 	AND 	id_compra 	= 	varIdCompra
                AND 	id_medicina = 	varIdMedicina 	AND		id_detalle 	=	varIdDetalle) THEN
		BEGIN
			INSERT	detalle_compra(	
					id_rancho, 		id_compra, 	id_medicina,		id_detalle,		cantidad,
                    presentacion,	precio_unitario,		importe)
			SELECT	varIdRancho,	varIdCompra,	varIdMedicina,	varIdDetalle,	
            varCantidad,	varPresentacion,	varPrecioUnitario,	varImporte;		
		END;
	ELSE
		BEGIN			
            UPDATE	detalle_compra
            SET		cantidad 	= 	varCantidad,	presentacion 	= 	varPresentacion,	
            precio_unitario 	= 	varPrecioUnitario,		importe 	= 	varImporte 
			WHERE	id_rancho	=	varIdRancho 	AND 	id_compra 	= 	varIdCompra
                AND 	id_medicina = 	varIdMedicina 	AND		id_detalle 	=	varIdDetalle;
		END;
	END IF;

	UPDATE repl_detalle_compra 
SET 
    status = 'SC'
WHERE
    id_rancho	=	varIdRancho 	AND 	id_compra 	= 	varIdCompra 	
    AND 	id_medicina = 	varIdMedicina 	AND		id_detalle 	=	varIdDetalle;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarDetalleMovimientoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarDetalleMovimientoRepl`(
	varIdRancho		CHAR(36),	varIdMovimiento	CHAR(36),	varIdConcepto				CHAR(255),
	varIdDetalle	INT(11),	varIdAnimal		CHAR(36) )
BEGIN
	
	IF NOT EXISTS(	
				SELECT	* 
				FROM	detalle_movimiento
				WHERE	id_rancho		=	varIdRancho
                AND		id_movimiento	=	varIdMovimiento 
                AND		id_concepto		=	varIdConcepto
                AND		id_detalle		=	varIdDetalle
                AND		id_animal		=	varIdAnimal ) THEN
		BEGIN
			        
			INSERT	detalle_movimiento
            (id_rancho, id_movimiento, id_concepto, id_detalle, id_animal)
			SELECT	varIdRancho,	varIdMovimiento,	varIdConcepto,
					varIdDetalle,	varIdAnimal;
		END;
	END IF;

	UPDATE	repl_detalle_movimiento set status = 'SC'
	WHERE	id_rancho		=	varIdRancho
	AND		id_movimiento	=	varIdMovimiento 
    AND		id_concepto		=	varIdConcepto
    AND		id_detalle		=	varIdDetalle
    AND		id_animal		=	varIdAnimal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarDetalleOrdenGanado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarDetalleOrdenGanado`(
				varIdOrdenGanado		CHAR(36),		varCantidad		DECIMAL(20,4),
                varPrecioUnitario		DECIMAL(20,4),	varImporte		DECIMAL(20,4),
                varUnidadMedida			CHAR(36),		varIdTipoGanado	CHAR(36),
                varSubtotal				DECIMAL(20,4),	varIva			DECIMAL(20,4),
                varTotal				DECIMAL(20,4))
BEGIN
	
	DECLARE varIdDetalle	CHAR(36);
    DECLARE varFolio		varchar(45);
    SELECT	UUID()
	INTO	varIdDetalle;
    
    INSERT	detalle_orden_ganado (id_detalle,		id_orden_ganado,	cantidad,		precio_unitario,
								  importe,			unidad_medida,		id_tipoganado)
	SELECT						  varIdDetalle,		varIdOrdenGanado,	varCantidad,	varPrecioUnitario,
								  varImporte,		varUnidadMedida,	varIdTipoGanado;
	
    SELECT	folio_compra
    INTO	varFolio
    FROM	orden_ganado
    WHERE	id_orden_ganado	=	varIdOrdenGanado;
    
    UPDATE	animal
    set		costo_kilo	=	varPrecioUnitario
    WHERE	numero_lote	=	varFolio
    and		id_tipoganado	=	varIdTipoGanado;
    
    UPDATE	orden_ganado
    SET		subtotal = varSubtotal,
			iva = varIva,
            total	= varTotal
	WHERE	id_orden_ganado	=	varIdOrdenGanado;
	
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizaRegistroEmpadreRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizaRegistroEmpadreRepl`(
varIdRegistroEmpadre	CHAR(36),	varFecha	DATETIME,	varIdHembra		CHAR(36),
varIdSemental	CHAR(36),	varStatusGestacional	CHAR(2),	varAborto	CHAR(2),	
varIdTipoParto	CHAR(36),	varActivo	CHAR(2))
BEGIN
	IF EXISTS(SELECT * FROM registro_empadre 
	WHERE id_registro_empadre = varIdRegistroEmpadre	AND
		id_hembra = varIdHembra		AND id_semental = varIdSemental) THEN
		BEGIN
			UPDATE registro_empadre SET
			fecha	= varFecha,		status_gestacional = varStatusGestacional,
			aborto = varAborto,		id_tipo_parto = varIdTipoParto,
			activo = varActivo
			WHERE id_registro_empadre = varIdRegistroEmpadre	
				AND		id_hembra = varIdHembra		AND id_semental = varIdSemental;
		END;
	ELSE
		BEGIN
			INSERT registro_empadre (
			id_registro_empadre,	fecha,	id_hembra,	id_semental,	status_gestacional,
			aborto,	id_tipo_parto,	activo)
			SELECT 
			varIdRegistroEmpadre,	varFecha,	varIdHembra,	varIdSemental,	varStatusGestacional,
			varAborto,	varIdTipoParto,		varActivo;
			END;
		END IF;
	UPDATE 	repl_registro_empadre
	SET 	status	=	'SC'
	WHERE	id_registro_empadre = varIdRegistroEmpadre	AND		id_hembra	=	varIdHembra		
		AND		id_semental		AND		varIdSemental;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarEstadoDestino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarEstadoDestino`(varIdEstado CHAR(36) , varEstado CHAR(45))
BEGIN
Update estadodestino
set descripcion = varEstado
	where id_estado = varIdEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarEstadoOrigen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarEstadoOrigen`(varIdEstado CHAR(36) , varEstado CHAR(45))
BEGIN
Update estadoorigen
set descripcion = varEstado
	where id_estado = varIdEstado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarGasto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarGasto`(varIdGasto CHAR(36), varCodigo CHAR(36), varDescripcion VARCHAR(45))
BEGIN
	update otros_gastos
    set codigo = varCodigo,
    descripcion = varDescripcion
    where id_gastos = varIdGasto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarGastoTransportacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarGastoTransportacion`(
			varIdGasto CHAR(36), varCodigo CHAR(36), varDescripcion VARCHAR(45))
BEGIN
	update gastos_transportacion
    set codigo = varCodigo,
    descripcion = varDescripcion
    where id_gastos = varIdGasto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarGenealogiaRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarGenealogiaRepl`(
varIdAnimal 	CHAR(36),	varIdMadre	CHAR(36),	varIdPadre CHAR(36))
BEGIN
	IF NOT EXISTS(	SELECT	* 
				FROM	genealogia
				WHERE	id_animal	=	varIdAnimal 	AND 	id_madre 	= 	varIdMadre
                AND 	id_padre = 	varIdPadre) THEN
		BEGIN
			INSERT	genealogia(	
					id_animal, 		id_madre, 	id_padre)
			SELECT	varIdAnimal,	varIdMadre,	varIdPadre;		
		END;
END IF;
UPDATE repl_genealogia
SET 
    status = 'SC'
WHERE	id_animal	=	varIdAnimal 	AND 	id_madre 	= 	varIdMadre
AND 	id_padre = 	varIdPadre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarInfoSanitaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarInfoSanitaria`(
			varIdInfo	CHAR(36),	varNumero	varchar(45),		varFolioTB		varchar(45),		varFolioBR		varchar(45),
            varFolioUnico		varchar(45),	varFolioFleje	varchar(45))
BEGIN
	
	UPDATE	info_sanitaria
    SET		numero_so_sanitaria = varNumero,
			folio_tbe = varFolioTB,
            folio_br = varFolioBR,
            folio_unico = varFolioUnico,
			folio_flejes = varFolioFleje
	WHERE	id_info_sanitaria = varIdInfo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarIngresoAlimentoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarIngresoAlimentoRepl`(
varIdIngresoAlimento CHAR(36), varNumeroLote VARCHAR(45), varIdCorral CHAR(36),
varTotalAlimento DECIMAL(20,4), varFecha DATETIME, varCostoUnitario DECIMAL(20,4),
varCostoTotal DECIMAL(20,4), varCarro VARCHAR(45), varValeMaterial VARCHAR(45),
varTextoCabecera VARCHAR(45), varPorcentajeAlimento DECIMAL(20,2), varIdReceta char(36), varIdRancho CHAR(36),
varStatus  CHAR(1))
BEGIN
	IF NOT EXISTS(	SELECT	* 
				FROM	ingreso_alimento
				WHERE	id_ingreso_alimento	=	varIdIngresoAlimento	) THEN
		BEGIN
			INSERT	ingreso_alimento(	
					id_ingreso_alimento, 		numero_lote, 	id_corral,
                    total_alimento,		fecha,	costo_unitario,	costo_total,
                    carro, vale_material, texto_cabecera, porcentaje_alimento, id_receta,	id_rancho,
                    status)
			SELECT	varIdIngresoAlimento,		varNumeroLote,	varIdCorral,
					varTotalAlimento, 	varFecha,	varCostoUnitario,	varCostoTotal,
                    varCarro,	varValeMaterial, varTextoCabecera,	varPorcentajeAlimento,	varIdReceta, varIdRancho,
                    varStatus;		
		END;
	ELSE
		BEGIN			
            UPDATE	ingreso_alimento
            SET		numero_lote 	= 	varNumeroLote, 	id_corral 	= 	varIdCorral, 
					total_alimento 	= 	varTotalAlimento, fecha	= varFecha,	costo_unitario	=	varCostoUnitario,
                    costo_total 	=	varCostoTotal,	carro	=	varCarro, vale_material = varValeMaterial, 
                    texto_cabecera = varTextoCabecera, porcentaje_alimento = varPorcentajeAlimento, 
                    id_receta = varIdReceta,	id_rancho = varIdRancho, status = varStatus
			WHERE	id_ingreso_alimento	=	varIdIngresoAlimento;
		END;
	END IF;

	UPDATE	repl_ingreso_alimento set status = 'SC'
	WHERE	id_ingreso_alimento	=	varIdIngresoAlimento;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarInseminadorRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarInseminadorRepl`(
		varIdInseminador 	CHAR(36),	varCodigo	varCHAR(45),		varNombre	CHAR(255),
        varStatus			CHAR(1))
BEGIN
	
    IF EXISTS(	SELECT	* 
				FROM	inseminador
				WHERE	id_inseminador	=	varIdInseminador) THEN 
		BEGIN

			UPDATE	inseminador SET
					codigo			=	varCodigo,	nombre		=	varNombre,
                    status =	varStatus                    
			WHERE	id_inseminador	=	varIdInseminador;
		END;
	ELSE
		BEGIN
        
			INSERT	inseminador
			SELECT	varIdInseminador,	varCodigo,			varNombre,			varCostoUnitario,
					varStatus;	
		END;
	END IF;

	UPDATE repl_inseminador set status = 'SC'
	WHERE id_inseminador	=	varIdInseminador;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarLab` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarLab`(varIdLab CHAR(36), varCodigo CHAR(36), varDescripcion VARCHAR(45))
BEGIN
	update lab
    set codigo = varCodigo,
    descripcion = varDescripcion
    where id_lab = varIdLab;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarMedicina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarMedicina`(
	varId_medicina	CHAR(36),	varCodigo	INT,
    varNombre		CHAR(255),	varCosto	DECIMAL(20,4),
    varId_unidad	CHAR(36),	varPresentacion	DECIMAL(20,4))
BEGIN

	UPDATE	medicina
	SET		codigo			=	varCodigo,
			nombre			=	varNombre,
			costo			=	varCosto,
			id_unidad		=	varId_unidad,
			presentacion	=	varPresentacion,
			costo_unitario	=	costo / IFNULL(varPresentacion, 1)
	WHERE	id_medicina = varId_medicina;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarMedicinaAnimalRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarMedicinaAnimalRepl`(
	varIdRancho		CHAR(36),		varIdMedicinaAnimal	CHAR(36),
	varIdMedicina	CHAR(36),		varIdAnimal			CHAR(36),
	varDosis		DECIMAL(20,4),	varFecha			DATETIME,
	varCosto		DECIMAL(20,4),	varStatus			CHAR(1)	)
BEGIN
	
	IF NOT EXISTS(	SELECT	* 
					FROM	medicina_animal
					WHERE	id_rancho			=	varIdRancho
					AND		id_medicina_animal	=	varIdMedicinaAnimal) THEN 
		BEGIN
			INSERT INTO medicina_animal 
			SELECT	varIdRancho,	varIdMedicinaAnimal,	varIdMedicina,
					varIdAnimal,	varDosis,				varFecha,
                    varCosto,		varStatus;			
		END;
	ELSE
		BEGIN			
            UPDATE	medicina_animal
            SET		dosis = varDosis , costo = varCosto,  status = varStatus
			WHERE	id_rancho = varIdRancho
			AND id_medicina_animal = varIdMedicinaAnimal;		
		END;
	END IF;
	
	UPDATE	repl_medicina_animal set status = 'SC'
	WHERE	id_rancho			=	varIdRancho
	AND		id_medicina_animal	=	varIdMedicinaAnimal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarMedicinaRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarMedicinaRepl`(
	varIdMedicina		CHAR(36),		varCodigo	INT(11),	varNombre			CHAR(255),
	varCosto			DECIMAL(20,4),	varIdUnidad	CHAR(36),	varPresentacion		DECIMAL(20,4),
	varCostoUnitario	DECIMAL(20,4),	varStatus	CHAR(1)	)
BEGIN
	
	IF EXISTS(	SELECT	* 
				FROM	medicina
				WHERE	id_medicina	=	varIdMedicina
                AND		codigo		=	varCodigo) THEN 
		BEGIN

			UPDATE	medicina SET
					nombre			=	varNombre,			costo			=	varCosto,
					id_unidad		=	varIdUnidad,		presentacion	=	varPresentacion,
					costo_unitario	=	varCostoUnitario,	status			=	varStatus                    
			WHERE	id_medicina	=	varIdMedicina
			AND		codigo		=	varCodigo;
		END;
	ELSE
		BEGIN
        
			INSERT	medicina
			SELECT	varIdMedicina,	varCodigo,			varNombre,			varCosto,		
					varIdUnidad,	varPresentacion,	varCostoUnitario,	varStatus;	
		END;
	END IF;

	UPDATE repl_medicina set status = 'SC'
	WHERE id_medicina	=	varIdMedicina
	AND		codigo		=	varCodigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarMedicinaTratamientoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarMedicinaTratamientoRepl`(
varIdTratamiento CHAR(36), varIdMedicina CHAR(36), varDosis DECIMAL(20,4), varStatus CHAR(1))
BEGIN
	IF NOT EXISTS(	SELECT	* 
					FROM	medicina_tratamiento
					WHERE	id_medicina		=	varIdMedicina 
					AND		id_tratamiento	=	varIdTratamiento) THEN
			BEGIN
				INSERT	medicina_tratamiento(	
					id_tratamiento, 		id_medicina,	dosis,	status)
				SELECT	varIdTratamiento,	varIdMedicina,	varDosis,	varStatus;		
		END;
	ELSE
		BEGIN			
            UPDATE	medicina_tratamiento
            SET		dosis = varDosis , status = varStatus
			WHERE	id_medicina = varIdMedicina
			AND id_tratamiento = varIdTratamiento;		
		END;
	END IF;

	UPDATE repl_medicina_tratamiento 
SET 
    status = 'SC'
WHERE
    id_medicina = varIdMedicina
        AND id_tratamiento = varIdTratamiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarModuloRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarModuloRepl`(
	varIdModulo		CHAR(36),	varDescripcion	CHAR(255),
    varPassword	varchar(45))
BEGIN
	
	IF NOT EXISTS(	SELECT	* 
				FROM	modulo
				WHERE	id_Modulo	=	varIdModulo	) THEN
		BEGIN
			       
			INSERT	modulo(	
					id_modulo, 		descripcion,	modulo.password)
			SELECT	varIdModulo,	varDescripcion,	varPassword;		
		END;
	END IF;

	UPDATE	repl_modulo set status = 'SC'
	WHERE	id_modulo	=	varIdModulo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarMovimientoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarMovimientoRepl`(
	varIdRancho				CHAR(36),		varIdMovimiento 		CHAR(36),		
	varIdConcepto			CHAR(36),		varFecha				DATETIME,
	varIdRanchoOrigen		CHAR(36),		varIdCorralOrigen		CHAR(36),
	varIdRanchoDestino		CHAR(36),		varIdCorralDestino		CHAR(36),
	varIdClaseMovimiento	CHAR(36),		varNumeroPedido			CHAR(255),	
	varIdCliente			CHAR(36),		varNecropcia			CHAR(255),
	varDxMuerte				CHAR(255),		varEtapaReproductiva	CHAR(255),
	varCausaEntrada			CHAR(255),		varObservacion			CHAR(255),	
	varPeso					DECIMAL(12,4),	varFechaReg				DATETIME)
BEGIN

	IF NOT EXISTS(	
				SELECT	* 
				FROM	movimiento
				WHERE	id_rancho		=	varIdRancho
                AND		id_movimiento	=	varIdMovimiento 
                AND		id_concepto		=	varIdConcepto     ) THEN
		BEGIN

			INSERT INTO movimiento(	
				id_rancho,			id_movimiento,		id_concepto,			fecha,					id_rancho_origen,
				id_corral_origen,	id_rancho_destino,	id_corral_destino,		id_clase_movimiento,	numero_pedido,
				id_cliente,			necropcia,			dx_muerte,				etapa_reproductiva,		causa_entrada,
				observacion,		peso,				fecha_reg)
			VALUES(	
				varIdRancho,		varIdMovimiento,	varIdConcepto,			varFecha,				varIdRanchoOrigen,
				varIdCorralOrigen,	varIdRanchoDestino,	varIdCorralDestino,		varIdClaseMovimiento,	varNumeroPedido,
				varIdCliente,		varNecropcia,		varDxMuerte,			varEtapaReproductiva,	varCausaEntrada,
				varObservacion,		varPeso,			varFechaReg);                        
		END;
	END IF;

	UPDATE repl_movimiento set status = 'SC'
	WHERE	id_rancho		=	varIdRancho
	AND		id_movimiento	=	varIdMovimiento 
    AND		id_concepto		=	varIdConcepto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarOrdenAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarOrdenAlimento`(
			varIdOrdenAlimento	CHAR(36),
            varOrdenCompra	VARCHAR(45),	varIdProveedor	CHAR(36),		varFecha		DATETIME,
            varIdOrigen		CHAR(36),		varDir			CHAR(255),		varAutorizo		CHAR(255),
            varCondicion	varchar(45),    varIdComprador	CHAR(36),		varSubtotal		DECIMAL(20,4),
            varIva			DECIMAL(20,4),	varTotal		DECIMAL(20,4),	varFolioCompra	VARCHAR(45),
            varIdLab 		CHAR(36),		varIdOrigenM CHAR(36),			varIdChofer 	CHAR(36),
            varPlacasTrailer VARCHAR(45),	varPlacasR1		VARCHAR(45),	varPlacasR2		VARCHAR(45),
            varHoraSalida DATETIME, 		varMerma DECIMAL (20,4))
BEGIN

	UPDATE	orden_alimento
    set		orden_compra = varOrdenCompra,
			id_proveedor = varIdProveedor,
            id_origen = varIdOrigen,
            direccion = varDir,
            autorizo = varAutorizo,
            condicion_pago = varCondicion,
            id_comprador = varIdComprador,
            fecha = varFecha,
            subtotal = varSubtotal,
            iva = varIva,
            total = varTotal,
            folio_compra = varFolioCompra,
            id_lab = varIdLab ,
            id_ciudadorigen =varIdOrigenM ,
			id_chofer =varIdChofer, 
            placas_trailer =varPlacasTrailer ,
            placas_remolque1 = varPlacasR1		,
            placas_remolque2 = varPlacasR2,
            hora_salida = varHoraSalida,
            merma = varMerma
          
	WHERE	id_orden_alimento = varIdOrdenAlimento;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarOrdenGanado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarOrdenGanado`(
			varIdOrdenGanado	CHAR(36),
            varOrdenCompra	VARCHAR(45),	varIdProveedor	CHAR(36),		varFecha		DATETIME,
            varIdOrigen		CHAR(36),		varDir			CHAR(255),		varAutorizo		CHAR(255),
            varCondicion	varchar(45),    varIdComprador	CHAR(36),		varSubtotal		DECIMAL(20,4),
            varIva			DECIMAL(20,4),	varTotal		DECIMAL(20,4),	varFolioCompra	VARCHAR(45),
            varHembras	INT(11),			varMachos		INT(11),		varIdChofer VARCHAR(36),
            varPlacaTrailer VARCHAR(45),	varPlacaJaula VARCHAR(45),		varIdDestino CHAR(36), 
            varHoraSalida DATETIME,			varMerma		DECIMAL(20,4),		varIdCiudadOrigen	CHAR(36),
            varIdCiudadDestino	CHAR(36))
BEGIN

	UPDATE	orden_ganado
    set		orden_compra = varOrdenCompra,
			id_proveedor = varIdProveedor,
            id_origen = varIdOrigen,
            direccion = varDir,
            autorizo = varAutorizo,
            condicion_pago = varCondicion,
            id_comprador = varIdComprador,
            fecha = varFecha,
            subtotal = varSubtotal,
            iva = varIva,
            total = varTotal,
            folio_compra = varFolioCompra,
            hembras = varHembras,
			machos = varMachos,
            id_chofer = varIdChofer,
            placas_trailer = varPlacaTrailer,
            placas_jaula = varPlacaJaula,
            id_destino = varIdDestino,
            hora_salida = varHoraSalida,
            merma  = varMerma,
            id_ciudad_origen = varIdCiudadOrigen,
            id_ciudad_destino = varIdCiudadDestino
	WHERE	id_orden_ganado = varIdOrdenGanado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarOrdenMedicina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarOrdenMedicina`(
			varIdOrdenMedicina	CHAR(36),
            varOrdenCompra	VARCHAR(45),	varIdProveedor	CHAR(36),		varFecha		DATETIME,
            varIdOrigen		CHAR(36),		varDir			CHAR(255),		varAutorizo		CHAR(255),
            varCondicion	varchar(45),    varIdComprador	CHAR(36),		varSubtotal		DECIMAL(20,4),
            varIva			DECIMAL(20,4),	varTotal		DECIMAL(20,4),	varFolioCompra	VARCHAR(45))
BEGIN

	UPDATE	orden_medicina
    set		orden_compra = varOrdenCompra,
			id_proveedor = varIdProveedor,
            id_origen = varIdOrigen,
            direccion = varDir,
            autorizo = varAutorizo,
            condicion_pago = varCondicion,
            id_comprador = varIdComprador,
            fecha = varFecha,
            subtotal = varSubtotal,
            iva = varIva,
            total = varTotal,
            folio_compra = varFolioCompra
	WHERE	id_orden_medicina = varIdOrdenMedicina;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarPajillaRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPajillaRepl`(
			varIdPajilla	CHAR(36),		varCodigo	varchar(45),	varIdSemental	CHAR(36),
            varLineaGenetica	varchar(45),	varOrigen	varchar(45),	varStatus	CHAR(1))
BEGIN

	IF EXISTS(	SELECT	* 
				FROM	pajilla
				WHERE	id_pajilla	=	varIdPajilla) THEN 
		BEGIN

			UPDATE	pajilla SET
					codigo	=	varCodigo,	id_semental = varIdSemental,
                    linea_genetica = varLineaGenetica,	origen = varOrigen,
                    status = varStatus
			WHERE	id_pajilla	=	varIdPajilla;
		END;
	ELSE
		BEGIN
        
			INSERT	pajilla
			SELECT	varIdPajilla,	varCodigo,			varIdSemental,			varLineaGenetica,		
					varOrigen,	varStatus;	
		END;
	END IF;

	UPDATE repl_pajilla set status = 'SC'
	WHERE id_pajilla	=	varIdPajilla;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarProgramacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarProgramacion`(
			varIdProgramacion CHAR(36),
			varProgramacionReproductor1 CHAR(36),	varProgramacionReproductor2 CHAR(36),	varProgramacionReproductor3 CHAR(36),
            varIdReproductor1 CHAR(36),		varIdReproductor2 CHAR(36),	varIdReproductor3 CHAR(36),
            varIdTipo1 CHAR(36),		varIdTipo2 CHAR(36), varIdTipo3 CHAR(36),
            varFechaProgramacion1 DATETIME,   varFechaProgramacion2 DATETIME,	varFechaProgramacion3 DATETIME, 
            varComentarios varchar(255))
BEGIN

	UPDATE programacion_reproductor SET 
    id_reproductor = varIdReproductor1,	fecha_reproductor = varFechaProgramacion1,	tipo_reproduccion = varIdTipo1
    WHERE id_programacion_reproductor = varProgramacionReproductor1
	AND	  id_programacion = varIdProgramacion;
    
    UPDATE programacion_reproductor SET 
    id_reproductor = varIdReproductor2,	fecha_reproductor = varFechaProgramacion2,	tipo_reproduccion = varIdTipo2
    WHERE id_programacion_reproductor = varProgramacionReproductor2
    AND	  id_programacion = varIdProgramacion;
    
    UPDATE programacion_reproductor SET 
    id_reproductor = varIdReproductor3,	fecha_reproductor = varFechaProgramacion3,	tipo_reproduccion = varIdTipo3
    WHERE id_programacion_reproductor = varProgramacionReproductor3
    AND	  id_programacion = varIdProgramacion;
    
    UPDATE programacion set comentarios = varComentarios
    WHERE id_programacion = varIdProgramacion;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarProgramacionRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarProgramacionRepl`(
		varIdProgramacion	CHAR(36),	varIdRancho	CHAR(36),	varIdHembra		CHAR(36),
        varFecha		DATETIME,	varTipoReproduccion		CHAR(36),	varIdReproductor	CHAR(36),
        varComentarios		CHAR(255),		varStatus	CHAR(1))
BEGIN

	IF EXISTS(	SELECT	* 
				FROM	programacion
				WHERE	id_programacion	=	varIdProgramacion) THEN 
		BEGIN

			UPDATE	programacion SET
					id_hembra			=	varIdHembra,	fecha		=	varFecha,
                    tipo_reproduccion	=	varTipoReproduccion,     id_reproductor =	varIdReproductor,
                    comentarios =	varComentarios,		status = varStatus
			WHERE	id_programacion	=	varIdProgramacion;
		END;
	ELSE
		BEGIN
        
			INSERT	programacion
			SELECT	varIdProgramacion,	varIdRancho,		varIdHembra,		varFecha,		varTipoReproduccion,
					varIdReproductor,	varComentarios,		varStatus;	
		END;
	END IF;

	UPDATE repl_programacion set status = 'SC'
	WHERE id_programacion	=	varIdProgramacion;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarProveedor`(	
	varIdProveedor	CHAR(36),	varProveedor	CHAR(255), 	
    varIdPais		CHAR(36),	varIdEstado 	CHAR(36),
	varIdCiudad		CHAR(36),	varDireccion	CHAR(255),
	varEmail		CHAR(45),	varTelefono		CHAR(20),
    varPFisicaMoral	CHAR(1),	varNumeroProveedor VARCHAR(45),
    varConPago		CHAR(45),     varDiasCredito	INT,
    varRFC CHAR(45), 			varCuenta CHAR(45))
BEGIN

	UPDATE	proveedor 
    SET		descripcion		=	varProveedor,
			id_pais			=	varIdPais,            
			id_estado		=	varIdEstado,
            id_ciudad		=	varIdCiudad,
			direccion		=	varDireccion,
            email			=	varEmail,
            telefono		=	varTelefono,
			p_fisica_moral	=	varPFisicaMoral,
            numero_proveedor=	varNumeroProveedor,
            con_pago = varConPago,
            dias_credito = varDiasCredito ,
            rfc = varRFC,
            cuenta = varCuenta
    WHERE	id_proveedor	=	varIdProveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarProveedorRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarProveedorRepl`(
	varIdProveedor	CHAR(36),	varDescripcion	CHAR(255),	varIdPais	char(36),	varIdEstado		char(36),
    varIdCiudad		char(36),	varDireccion	char(255),	varEmail	char(45),	varTelefono	char(20),
	varPFisicaMoral	char(1),	varStatus		char(1),	varNumeroProveedor varchar(45))
BEGIN
	
	IF NOT EXISTS(	SELECT	* 
				FROM	proveedor
				WHERE	id_proveedor	=	varIdProveedor	) THEN
		BEGIN
			INSERT	proveedor(	
					id_proveedor, 		descripcion, 	id_pais, 	id_estado,		
					id_ciudad,			direccion,		email,		telefono,	
                    p_fisica_moral,		status, numero_proveedor)
			SELECT	varIdProveedor,		varDescripcion,	varIdPais,	varIdEstado,
					varIdCiudad,		varDireccion,	varEmail,	varTelefono,
                    varPFisicaMoral,	varStatus,		varNumeroProveedor;
		END;
	ELSE
		BEGIN
            UPDATE	proveedor
            SET		descripcion		=	varDescripcion,
					id_pais			=	varIdPais,
                    id_estado		=	varIdEstado,		
					id_ciudad		=	varIdCiudad,
                    direccion		=	varDireccion,
                    email			=	varEmail,
                    telefono		=	varTelefono,	
                    p_fisica_moral	=	varPFisicaMoral,
                    status			=	varStatus,
                    numero_proveedor			=	varNumeroProveedor
			WHERE	id_proveedor	=	varIdProveedor;
		END;
	END IF;

	UPDATE	repl_proveedor set status = 'SC'
	WHERE	id_proveedor	=	varIdProveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarPvie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarPvie`(varIdPvie CHAR(36), varCodigo CHAR(36), varDescripcion VARCHAR(45))
BEGIN
	update pvie
    set codigo = varCodigo,
    descripcion = varDescripcion
    where id_pvie = varIdPvie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRancho` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRancho`(
	varIdRancho	CHAR(36),	varDescripcion	CHAR(255),	varActividad	CHAR(255),
	varEstado	CHAR(36),	varCiudad		CHAR(36))
BEGIN

	UPDATE	rancho
	SET		descripcion	=	varDescripcion,
			actividad	=	varActividad,
			id_estado	=	varEstado,
			id_ciudad	=	varCiudad
	WHERE	id_rancho	=	varIdRancho;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRanchoAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRanchoAlimento`()
BEGIN

	-- Generar Registros
    START TRANSACTION;
		INSERT INTO	rancho_alimento
		SELECT		rancho.id_rancho, 			alimento.id_alimento, 0, 0, 
					'1900-01-01 00:00'
		FROM		rancho, alimento
		WHERE NOT EXISTS(	SELECT	* 
							FROM	rancho_alimento	
							WHERE	rancho_alimento.id_rancho = rancho.id_rancho
							AND		rancho_alimento.id_alimento = alimento.id_alimento);
	COMMIT;
    
    -- Actualizar existencias iniciales las que se han aplicado
    /*UPDATE 	rancho_alimento
    SET		existencia_inicial = (	SELECT SUM(dosis)
									FROM	medicina_animal
									WHERE	medicina_animal.id_rancho	=	rancho_medicina.id_rancho
                                    AND		medicina_animal.id_medicina	=	rancho_medicina.id_medicina);*/
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRanchoAlimentoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRanchoAlimentoRepl`(
varIdRancho CHAR(36),		varIdAlimento CHAR(36),		varExistenciaInicial INT(11),	
varExistencia DECIMAL(20,4),		varCostoPromedio DECIMAL(20,4),		
varUltimoCosto DECIMAL(20,4),		varUltimaCompra DATETIME)
BEGIN
	IF EXISTS(SELECT * FROM rancho_alimento WHERE id_rancho = varIdRancho AND id_alimento = varIdAlimento) THEN
		BEGIN
			UPDATE rancho_alimento set 
            existencia_inicial = varExistenciaInicial, existencia = varExistencia, costo_promedio = varCostoPromedio, 
            ultimo_costo =  varUltimoCosto, ultima_compra = varUltimaCompra
            WHERE id_rancho = varIdRancho AND id_alimento = varIdAlimento;
		END;
	ELSE
		BEGIN

			INSERT rancho_alimento 
			(	id_rancho,	id_alimento, 	existencia_inicial, 	existencia, 	costo_promedio, 	
            ultimo_costo, 	ultima_compra)
			SELECT
				varIdRancho,		varIdAlimento,	varExistenciaInicial,	varExistencia,		varCostoPromedio,		
				varUltimoCosto,		varUltimaCompra;		
		END;
	END IF;
	
	UPDATE repl_rancho_alimento 
SET 
    status = 'SC'
WHERE
    id_rancho = varIdRancho
        AND id_alimento = varIdAlimento;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRanchoMedicina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRanchoMedicina`()
BEGIN

	-- Generar Registros
    START TRANSACTION;
		INSERT INTO	rancho_medicina
		SELECT		rancho.id_rancho, 			medicina.id_medicina, 0, 0, 
					medicina.costo_unitario, 	medicina.costo_unitario, 
					'1900-01-01 00:00'
		FROM		rancho, medicina
		WHERE NOT EXISTS(	SELECT	* 
							FROM	rancho_medicina 	
							WHERE	rancho_medicina.id_rancho = rancho.id_rancho
							AND		rancho_medicina.id_medicina = medicina.id_medicina);
	COMMIT;
    
	-- Poner costo en las aplicaciones de medicina que no tengan
    SET @DISABLE_TRIGER = 1;
    
    START TRANSACTION;
		UPDATE	medicina_animal
		SET		costo	=	(	SELECT	costo_promedio
								FROM	rancho_medicina
								WHERE	rancho_medicina.id_rancho 	=	medicina_animal.id_rancho
								AND		rancho_medicina.id_medicina	=	medicina_animal.id_medicina)
		WHERE	COALESCE(costo,0.0)	=	0.0;
    COMMIT;
    
    SET @DISABLE_TRIGER = 0;
    
    -- Actualizar existencias iniciales las que se han aplicado
    UPDATE 	rancho_medicina
    SET		existencia_inicial = (	SELECT SUM(dosis)
									FROM	medicina_animal
									WHERE	medicina_animal.id_rancho	=	rancho_medicina.id_rancho
                                    AND		medicina_animal.id_medicina	=	rancho_medicina.id_medicina);
	
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRanchoMedicinaRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRanchoMedicinaRepl`(
varIdRancho CHAR(36),		varIdMedicina CHAR(36),		varExistenciaInicial INT(11),	
varExistencia INT(11),		varCostoPromedio DECIMAL(20,4),		
varUltimoCosto DECIMAL(20,4),		varUltimaCompra DATETIME)
BEGIN
	IF EXISTS(SELECT * FROM rancho_medicina WHERE id_rancho = varIdRancho AND id_medicina = varIdMedicina) THEN
		BEGIN
			UPDATE rancho_medicina set 
            existencia_inicial = varExistenciaInicial, existencia = varExistencia, costo_promedio = varCostoPromedio, 
            ultimo_costo =  varUltimoCosto, ultima_compra = varUltimaCompra
            WHERE id_rancho = varIdRancho AND id_medicina = varIdMedicina;
		END;
	ELSE
		BEGIN

			INSERT rancho_medicina 
			(	id_rancho,	id_medicina, 	existencia_inicial, 	existencia, 	costo_promedio, 	
            ultimo_costo, 	ultima_compra)
			SELECT
				varIdRancho,		varIdMedicina,	varExistenciaInicial,	varExistencia,		varCostoPromedio,		
				varUltimoCosto,		varUltimaCompra;		
		END;
	END IF;
	
	UPDATE repl_rancho_medicina 
SET 
    status = 'SC'
WHERE
    id_rancho = varIdRancho
        AND id_medicina = varIdMedicina;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRanchoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRanchoRepl`(
	varIdRancho				CHAR(36),	varDescripcion		CHAR(255),	varConTraspasoEntrada	CHAR(36),
    varConTraspasoSalida	CHAR(36),	varConSalida		CHAR(36),	varConMuerte			CHAR(36),
    varConPesaje			CHAR(36),	varIdCorralHospital	CHAR(36),	varActividad			CHAR(255),
	varIdEstado				CHAR(36),	varIdCiudad			CHAR(36))
BEGIN

	IF NOT EXISTS(	
				SELECT	* 
				FROM	rancho
				WHERE	id_rancho		=	varIdRancho ) THEN
		BEGIN
			        
			INSERT	rancho
			SELECT	varIdRancho,	varDescripcion,	varConTraspasoEntrada,	varConTraspasoSalida,
					varConSalida,	varConMuerte,	varConPesaje,			varIdCorralHospital,
                    varActividad,	varIdEstado,	varIdCiudad, 'A';
		END;
        ELSE
        BEGIN
			UPDATE	rancho
			SET		descripcion	=	varDescripcion,
					actividad	=	varActividad,
					id_estado	=	varIdEstado,
					id_ciudad	=	varIdCiudad
			WHERE	id_rancho	=	varIdRancho;
		END;
	END IF;

	UPDATE repl_rancho set status = 'SC'
	WHERE id_rancho	=	varIdRancho;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRaza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRaza`(	
	varIdRaza CHAR(36),	varRaza	CHAR(255)	)
BEGIN
	UPDATE raza set descripcion = varRaza
    WHERE	id_raza = varIdRaza;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRazaRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRazaRepl`(
	varIdRaza	CHAR(36),	varDescripcion			CHAR(255), varSeleccionar	CHAR(1))
BEGIN
	
	IF NOT EXISTS(	SELECT	* 
				FROM	raza
				WHERE	id_raza	=	varIdRaza	) THEN
		BEGIN
			       
			INSERT	raza(	
					id_raza, 		descripcion,	seleccionar)
			SELECT	varIdRaza,		varDescripcion,	varSeleccionar;		
		END;
	END IF;

	UPDATE	repl_raza set status = 'SC'
	WHERE	id_raza	=	varIdRaza;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRecepcion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRecepcion`(
		varIdRecepcion CHAR(36), 			varIdProveedor CHAR(36), 			varIdOrigen CHAR(36), 
		varFolio VARCHAR(45), 				varFechaCompra DATETIME, 			varFechaRecepcion DATETIME, 
		varAnimales INT(10), 				varAnimalesPendientes INT(10), 		varPesoOrigen DECIMAL(20,4), 
		varLimiteMerma DECIMAL(20,4), 		varMerma DECIMAL(20,4), 			varPorcentajeMerma DECIMAL(20,4), 
		varPesoRecepcion DECIMAL(20,4), 	varNumeroLote CHAR(255), 			varCostoFlete DECIMAL(20,4), 
		varDevoluciones INT(10), 			varCausaDevolucion VARCHAR(45), 	varTotalAlimento DECIMAL(20,4),
		varComisiones 		DECIMAL(20,2),	varOtrosCostos		DECIMAL(20,2),	varRevisionGanado	DECIMAL(20,2),
		varOrdenCompra		varchar(45),	varIdTipo		CHAR(36),			varIdCorralAcopio	CHAR(36),
		varCostoCombustible	DECIMAL(20,4),	varRazonMerma	CHAR(255),			varHoraLlegada		DATETIME,
        varHorasTrayecto	VARCHAR(45),	varAnimalesCaidos	INT(11),		varAnimalesMuertos	INT(11),
		varIdPvie			CHAR(36),		varIdSanitaria		CHAR(36), 		varPesoTara Decimal(20,4))
BEGIN

	


	IF EXISTS(SELECT * FROM recepcion WHERE id_recepcion = varIdRecepcion) THEN
		BEGIN
        
        set varMerma = varPesoOrigen - varPesoRecepcion;
    
		set varPorcentajeMerma = ( varMerma * 100 ) / varPesoOrigen;
        
			
            UPDATE recepcion set 
            folio = varFolio, fecha_compra = varFechaCompra, fecha_recepcion = varFechaRecepcion, animales = varAnimales,
            animales_pendientes = varAnimalesPendientes, peso_origen = varPesoOrigen, limite_merma = varLimiteMerma,
            merma = varMerma, porcentaje_merma = varPorcentajeMerma, peso_recepcion = varPesoRecepcion,
            numero_lote = varNumeroLote, costo_flete = varCostoFlete, devoluciones = varDevoluciones,
            causa_devolucion = varCausaDevolucion, total_alimento = varTotalAlimento, comision = varComisiones,
            otros_costos = varOtrosCostos,	revision_ganado = varRevisionGanado,	orden_compra = varOrdenCompra,
            id_proveedor = varIdProveedor, id_origen = varIdOrigen, tipoganado = varIdTipo, corral_acopio = varIdCorralAcopio,
            costo_combustible = varCostoCombustible,	razon_merma = varRazonMerma,	hora_llegada = varHoraLlegada,
            horas_trayecto = varHorasTrayecto,	animales_caidos = 	varAnimalesCaidos,	animales_muertos = varAnimalesMuertos,
            id_pvie = varIdPvie,	id_info_sanitaria = varIdSanitaria , peso_tara = varPesoTara
            WHERE id_recepcion = varIdRecepcion;
		END;
	ELSE
		BEGIN
        /*
        call agregarRecepcion_2( 
        varIdProveedor, varIdOrigen, varFolio, varFechaCompra , 
        varFechaRecepcion , varAnimales,   varPesoOrigen , varLimiteMerma , 
        varMerma , varPorcentajeMerma , varPesoRecepcion , varNumeroLote , 
        varCostoFlete , varDevoluciones , varCausaDevolucion, varAnimalesPendientes,
        varTotalAlimento);

*/
			SELECT 'Entro a insert';
            INSERT recepcion 
			/*(	id_recepcion, id_proveedor, id_origen, folio, fecha_compra, fecha_recepcion, animales, 
            animales_pendientes, peso_origen, limite_merma, merma, porcentaje_merma, peso_recepcion, 
            numero_lote, costo_flete, devoluciones, causa_devolucion, total_alimento, comision, otros_costos,
            revision_ganado, orden_compra)*/
			SELECT
			varIdRecepcion, varIdProveedor, varIdOrigen,varFolio, varFechaCompra, varFechaRecepcion, 
			varAnimales, varAnimalesPendientes, varPesoOrigen, varLimiteMerma, varMerma, varPorcentajeMerma, 
			varPesoRecepcion, varNumeroLote, varCostoFlete, varDevoluciones, varCausaDevolucion, varTotalAlimento,
            varComisiones, varOtrosCostos, varRevisionGanado, varOrdenCompra, varIdTipo, varIdCorralAcopio,
            varCostoCombustible;
            
            SELECT 'Salio Insert';
          
		END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRecepcionAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRecepcionAlimento`( varIdRecepcion CHAR(36), varOrdenCompra CHAR(36) ,   varIdProveedor CHAR(36) ,   varIdEstadoOrigen CHAR(36) ,
  varIdCiudadOrigen CHAR(36) ,  varIdLab CHAR(36) ,   varHorasTrayecto VARCHAR(45) ,  varGDañado DECIMAL(20,4) ,
 varMatExtraña DECIMAL(20,4) ,  varDescMExtra DECIMAL(20,4) ,  varFolio VARCHAR(45) ,  varPesoOrigen DECIMAL(20,4) ,
  varMerma DECIMAL(20,4) ,  varPesoBruto DECIMAL(20,4) ,  varPesoTara DECIMAL(20,4) ,  varPesoNeto DECIMAL(20,4) ,
  varDescuentos DECIMAL(20,4) ,  varTotalDescuento DECIMAL(20,4) ,  varHumedad DECIMAL(20,4) ,  varDescHumedad DECIMAL(20,4) ,
  varDescSecado DECIMAL(20,4) ,  varCantLiquidar DECIMAL(20,4) ,  varPrecioTonelada DECIMAL(20,4) ,  varTotalPagar DECIMAL(20,4) ,
  varIdBodega CHAR(36) ,  varNumReporte VARCHAR(45), varLimiteMerma decimal(20,4) , varPorcentajeMerma decimal (20,4), varFecha DATETIME, varHoraLlegada DATETIME)
BEGIN
	update recepcion_alimento
    set ordencompra = varOrdenCompra,
    id_proveedor = varIdProveedor,
    id_estadoorigen = varIdEstadoOrigen,
    id_ciudadorigen = varIdCiudadOrigen, 
    id_lab = varIdLab,
    horas_trayecto = varHorasTrayecto,
    g_dañado = varGDañado,
    mat_extraña = varMatExtraña,
    desc_m_extra = varDescMExtra,
    folio = varFolio,
    peso_origen = varPesoOrigen,
    merma = varMerma,
    peso_bruto = varPesoBruto,
    peso_tara = varPesoTara,
    peso_neto = varPesoNeto,
    descuentos = varDescuentos,
    total_descuento = varTotalDescuento,
    humedad = varHumedad,
    desc_humedad = varDescHumedad,
    desc_secado = varDescSecado,
    cant_liquidar = varCantLiquidar,
    precio_tonelada = varPrecioTonelada ,
    total_pagar = varTotalPagar,
    id_bodega= varIdBodega,
    num_reporte= varNumReporte,
    limite_merma = varLimiteMerma,
    porcentaje_merma = varPorcentajeMerma,
    fecha_recepcion = varFecha,
    hora_llegada = varHoraLlegada
    where id_recepcion = varIdRecepcion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRecepcionRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRecepcionRepl`(
varIdRecepcion CHAR(36), varIdProveedor CHAR(36), varIdOrigen CHAR(36), 
varFolio VARCHAR(45), varFechaCompra DATETIME, varFechaRecepcion DATETIME, 
varAnimales INT(10), varAnimalesPendientes INT(10), varPesoOrigen DECIMAL(20,4), 
varLimiteMerma DECIMAL(20,4), varMerma DECIMAL(20,4), varPorcentajeMerma DECIMAL(20,4), 
varPesoRecepcion DECIMAL(20,4), varNumeroLote CHAR(255), varCostoFlete DECIMAL(20,4), 
varDevoluciones INT(10), varCausaDevolucion VARCHAR(45), varTotalAlimento DECIMAL(20,4),
varComisiones 		DECIMAL(20,2),	varOtrosCostos		DECIMAL(20,2),	varRevisionGanado	DECIMAL(20,2),
    varOrdenCompra		varchar(45))
BEGIN



	IF EXISTS(SELECT * FROM recepcion WHERE id_recepcion = varIdRecepcion AND id_proveedor = varIdProveedor 
    AND id_origen = varIdOrigen) THEN
		BEGIN
			UPDATE recepcion set 
            folio = varFolio, fecha_compra = varFechaCompra, fecha_recepcion = varFechaRecepcion, animales = varAnimales,
            animales_pendientes = varAnimalesPendientes, peso_origen = varPesoOrigen, limite_merma = varLimiteMerma,
            merma = varMerma, porcentaje_merma = varPorcentajeMerma, peso_recepcion = varPesoRecepcion,
            numero_lote = varNumeroLote, costo_flete = varCostoFlete, devoluciones = varDevoluciones,
            causa_devolucion = varCausaDevolucion, total_alimento = varTotalAlimento, comision = varComisiones,
            otros_costos = varOtrosCostos,	revision_ganado = varRevisionGanado,	orden_compra = varOrdenCompra
            WHERE id_recepcion = varIdRecepcion AND id_proveedor = varIdProveedor AND id_origen = varIdOrigen;
		END;
	ELSE
		BEGIN
        /*
        call agregarRecepcion_2( 
        varIdProveedor, varIdOrigen, varFolio, varFechaCompra , 
        varFechaRecepcion , varAnimales,   varPesoOrigen , varLimiteMerma , 
        varMerma , varPorcentajeMerma , varPesoRecepcion , varNumeroLote , 
        varCostoFlete , varDevoluciones , varCausaDevolucion, varAnimalesPendientes,
        varTotalAlimento);

*/
			SELECT 'Entro a insert';
            INSERT feedlotmanager.recepcion 
			/*(	id_recepcion, id_proveedor, id_origen, folio, fecha_compra, fecha_recepcion, animales, 
            animales_pendientes, peso_origen, limite_merma, merma, porcentaje_merma, peso_recepcion, 
            numero_lote, costo_flete, devoluciones, causa_devolucion, total_alimento, comision, otros_costos,
            revision_ganado, orden_compra)*/
			SELECT
			varIdRecepcion, varIdProveedor, varIdOrigen,varFolio, varFechaCompra, varFechaRecepcion, 
			varAnimales, varAnimalesPendientes, varPesoOrigen, varLimiteMerma, varMerma, varPorcentajeMerma, 
			varPesoRecepcion, varNumeroLote, varCostoFlete, varDevoluciones, varCausaDevolucion, varTotalAlimento,
            varComisiones, varOtrosCostos, varRevisionGanado, varOrdenCompra;
            
            SELECT 'Salio Insert';
          
		END;
	END IF;

	UPDATE repl_recepcion 
SET 
    status = 'SC'
WHERE
    id_recepcion = varIdRecepcion
        AND id_proveedor = varIdProveedor
        AND id_origen = varIdOrigen;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarReceta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarReceta`(
	varIdReceta	CHAR(36),	varCodigo	CHAR(45),	varNombre	CHAR(255))
BEGIN

	UPDATE	receta
	SET		codigo			=	varCodigo,
			nombre			=	varNombre	
	WHERE	id_receta	=	varIdReceta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarRecetaRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarRecetaRepl`(
	varIdReceta CHAR(36),	varCodigo CHAR(36),	varNombre	CHAR(255),	
	varStatus	CHAR(1),	varFecha	DATETIME, varCantidad DECIMAL(20,2), varImporte DECIMAL(20,2))
BEGIN
	IF NOT EXISTS(	SELECT	* 
				FROM	receta
				WHERE	id_receta	=	varIdReceta) THEN
		BEGIN
			INSERT	receta(	
					id_receta, 		codigo,		
                    nombre,		status,		fecha, cantidad ,importe)
			SELECT	varIdReceta,		varCodigo,	
					varNombre,		varStatus,		varFecha, varCantidad, varImporte;
		END;
	ELSE
		BEGIN
            UPDATE	receta
            SET		codigo = varCodigo, nombre = varNombre, status = varStatus, fecha = varFecha ,cantidad = varCantidad,
            importe = varImporte
			WHERE	id_receta	=	varIdReceta;
		END;
	END IF;

	UPDATE	repl_receta set status = 'SC'
	WHERE	id_receta	=	varIdReceta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarServicioRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarServicioRepl`(
		varIdServicio CHAR(36) , varIdRancho CHAR(36) , varIdHembra  CHAR(36) , varFecha datetime ,
		varTipoReproduccion  CHAR(36)  ,varIdReproductor  CHAR(36)  ,
		varIdInseminador CHAR(36)  , varIdPajilla CHAR(36) , varNumeroPajilla int (11), varStatus char(2))
BEGIN

IF NOT EXISTS(	SELECT	* 
				FROM	servicio
				WHERE	id_servicio	=	varIdServicio	) THEN
		BEGIN
			INSERT	servicio(	
					id_servicio, 		id_rancho, 	id_hembraid_hembra, fecha, tipo_reproduccion ,
                    id_reproductor , id_inseminador ,id_pajilla ,numero_pajillas ,status)
			SELECT	varIdServicio, varIdRancho, varIdHembra , varFecha ,
            varTipoReproduccion ,VarIdReproductor , varIdInseminador , 
            varIdPajilla, varNumeroPajilla , varStatus ;		
		END;
	ELSE
		BEGIN			
            UPDATE	servicio
            SET		id_rancho		=	varIdRancho,
					id_hembra		=	varIdHembra,
                    fecha			=	varFecha,
                    tipo_reproduccion		=	varTipoReproduccion,		
					id_reproductor		=	varIdReproductor,
                    id_inseminador		=	varIdInseminador,
                    id_pajilla			=	varIdPajilla,
                    numero_pajillas		=	varNumeroPajillas,	
                    status			=	varStatus
			WHERE	id_servicio	=	varIdServicio;
		END;
	END IF;

	UPDATE	repl_servicio set status = 'SC'
	WHERE	id_servicio	=	varIdServicio;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarStatusGestacionRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarStatusGestacionRepl`(
varIdEstatusGestacion CHAR(36),		varIdRegistroEmpadre CHAR(36),		
varStatus CHAR(2),	varFechaChequeo DATETIME,	varIdTipoParto CHAR(36))
BEGIN
	IF EXISTS(SELECT * FROM status_gestacion WHERE id_estatus_gestacion = varIdestatus_gestacion 
    AND id_registro_empadre = varIdRegistroEmpadre) THEN
		BEGIN
			UPDATE status_gestacion set 
            id_estatus_gestacion = varIdEstatusGestacion, id_registro_empadre = varIdRegistroEmpadre,
            status = varStatus, fecha_chequeo = varFechaChequeo, id_tipo_parto = varIdTipoParto
            WHERE id_estatus_gestacion = varIdestatus_gestacion 
            AND id_registro_empadre = varIdRegistroEmpadre;
		END;
	ELSE
		BEGIN
			INSERT status_gestacion 
			(id_estatus_gestacion, id_registro_empadre, status, fecha_chequeo, id_tipo_parto)
			SELECT
				varIdEstatusGestacion,		varIdRegistroEmpadre,		varStatus,	varFechaChequeo,	varIdTipoParto; 
                END;
	END IF;

	UPDATE repl_status_gestacion 
SET 
    status = 'SC'
WHERE
    id_estatus_gestacion = varIdestatus_gestacion
        AND id_registro_empadre = varIdRegistroEmpadre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarTactoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarTactoRepl`(
		varIdTacto CHAR (36) , varIdRancho CHAR (36) ,
		varIdHembra CHAR (36) , varIdHallazgo CHAR (36) , VarIdReproductor CHAR (36) ,
		varObservacion VARCHAR (100) , varDiasAbierto INT,
		varDiagnostico VARCHAR (100) , varFecha DATETIME ,varStatus CHAR(2))
BEGIN
IF NOT EXISTS(	SELECT	* 
				FROM	tacto
				WHERE	id_tacto	=	varIdTacto	) THEN
		BEGIN
			INSERT	tacto(	
					id_tacto, 		id_rancho, 	id_hembra, 	id_hallazgo,		
					id_reproductor,			observacion,		dias_abierto,		diagnostico,	
                    fecha,		status)
			SELECT	varIdTacto , varIdRancho,
			varIdHembra , varIdHallazgo, VarIdReproductor,
			varObservacion, varDiasAbierto,
			varDiagnostico, varFecha  ,varStatus ;		
		END;
	ELSE
		BEGIN			
            UPDATE	tacto
            SET		id_rancho		=	varIdRancho,
					id_hembra		=	varIdHembra,
                    id_hallazgo		=	varIdHallazgo,		
					id_reproductor		=	varIdReproductor,
                    observacion		=	varObservacion,
                    dias_abierto			=	varDiasAbierto,
                    diagnostico		=	varDiagnostico,	
                    fecha			=	varFecha,
                    status			=	varStatus
			WHERE	id_tacto	=	varIdTacto;
		END;
	END IF;

	UPDATE	repl_tacto set status = 'SC'
	WHERE	id_tacto	=	varIdTacto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarTratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarTratamiento`(
	varIdTratamiento	CHAR(36),	varCodigo	CHAR(45),	varNombre	CHAR(255))
BEGIN

	UPDATE	tratamiento
	SET		codigo			=	varCodigo,
			nombre			=	varNombre	
	WHERE	id_tratamiento	=	varIdTratamiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarTratamientoRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarTratamientoRepl`(
varIdTratamiento CHAR(36),	varCodigo CHAR(36),	varNombre	CHAR(255),	
varStatus	CHAR(1),	varFecha	DATETIME)
BEGIN
	IF NOT EXISTS(	SELECT	* 
				FROM	tratamiento
				WHERE	id_tratamiento	=	varIdTratamiento	) THEN
		BEGIN
			INSERT	tratamiento(	
					id_tratamiento, 		codigo,		
                    nombre,		status,		fecha)
			SELECT	varIdTratamiento,		varCodigo,	
					varNombre,		varStatus,		varFecha;
		END;
	ELSE
		BEGIN
            UPDATE	tratamiento
            SET		codigo = varCodigo, nombre = varNombre, status = varStatus, fecha = varFecha
			WHERE	id_tratamiento	=	varIdTratamiento;
		END;
	END IF;

	UPDATE	repl_tratamiento set status = 'SC'
	WHERE	id_tratamiento	=	varIdTratamiento;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarUsuarioRepl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarUsuarioRepl`(
varIdUsuario CHAR(36), varLog CHAR(255), varPassword CHAR(255), varNombre CHAR(255), varApellido CHAR(255), 
varIdEstado CHAR(255), varIdCiudad CHAR(255), varCorreo VARCHAR(36), varFechaNacimiento VARCHAR(36), varTelefono VARCHAR(10))
BEGIN
/*
	IF NOT EXISTS(	SELECT	* 
				FROM	usuario
				WHERE	id_usuario	=	varIdUsuario	) THEN
		BEGIN
			INSERT	usuario(	
					id_usuario, 		log, password,		nombre,		apellido,	
                    id_estado,	id_ciudad,	correo,	fecha_nacimiento,	telefono)
			SELECT	varIdUsuario, varLog, varPassword, varNombre, varApellido, 
					varIdEstado, varIdCiudad, varCorreo, varFechaNacimiento, varTelefono ;
		END;
	ELSE
		BEGIN
            UPDATE	usuario
            SET		password = varPassword, nombre = varNombre, apellido = varApellido, 
					id_estado = varIdEstado, id_ciudad = varIdCiudad, correo = varCorreo, 
                    fecha_nacimiento = varFechaNacimiento, telefono = varTelefono
			WHERE	id_usuario	=	varIdUsuario;
		END;
	END IF;
*/
	UPDATE repl_usuario 
SET    status = 'SC'
WHERE    id_usuario = varIdUsuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarAborto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarAborto`(
    varIdHembra	CHAR(36),	varFecha	DATETIME,	varIdTipoParto CHAR(36),
    varIdTipoAborto CHAR(36),	varCausaMuerte CHAR(36))
BEGIN

	DECLARE varIdAborto CHAR(36);
    
    SELECT UUID()
    INTO varIdAborto;

	INSERT aborto (id_aborto,	id_tipo_parto,	id_tipo_aborto,	fecha,
				   id_hembra, id_causa_muerte)
	SELECT 			varIdAborto,	varIdTipoParto,	varIdTipoAborto,	varFecha,
					varIdHembra,	varCausaMuerte;
	
	-- Busca registro de empadre RE
	-- Actualiza RE.aborto = 'S'
	-- Actualizar RE.Activo = 'N'
	UPDATE	registro_empadre	
	SET		aborto	=	'S',
			activo	=	'N'
	WHERE	id_hembra	=	varIdHembra
	AND		status_gestacional	=	'N'
	AND		activo		=	'S';
	
	-- Actualizar Animal.semental = 0
	UPDATE	animal
	SET		id_semental  = 0
	WHERE	id_animal = varIdHembra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarAlimento`(
	varCodigo		INT,			varNombre			CHAR(255),
	varCosto		DECIMAL(20,4),	varId_unidad		INT)
BEGIN

	DECLARE	varId_alimento CHAR(36);
    
    SELECT	UUID()
	INTO	varId_alimento;
    
    INSERT	alimento
		(	id_alimento,	codigo,				nombre,
        costo_unitario,			id_unidad,						status)
	SELECT	varId_alimento,	varCodigo,			varNombre,
    varCosto,			varId_unidad,	"S";
    
 /*  IF NOT EXISTS (	SELECT	* 
					FROM	rancho_alimento
					WHERE	id_rancho	=	NEW.id_rancho
					AND		id_alimento	=	NEW.id_alimento) THEN 

		INSERT INTO rancho_alimento(
			id_rancho,		id_alimento, 		existencia,	existencia_inicial, costo_promedio, ultimo_costo) 
		SELECT	
			NEW.id_rancho, 	varId_alimento,	0,			0,					0.0 ,0.0;
 	END IF;*/
    
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarAlimentoReceta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarAlimentoReceta`(
		varIdReceta	CHAR(36),	varIdAlimento	CHAR(36),	varCantidad	DECIMAL(20,4), varImporteAlimento DECIMAL(20,2))
BEGIN

	
    DECLARE varPorcentajeCantidad DECIMAL(20,2);
    DECLARE varPorcentajeCosto DECIMAL(20,2);
    DECLARE varImporteReceta DECIMAL(20,2);
    DECLARE varCantidadReceta DECIMAL(20,2);
    
    set varPorcentajeCosto = 0;
    set varPorcentajeCantidad = 0;
    
    
    
    -- agregar porcentajes a receta-alimento
     
	/*SELECT (varCantidad / (cantidad + varCantidad)) * 100
    INTO varPorcentajeCantidad
    FROM receta
    WHERE id_receta = varIdReceta;
    
    SELECT (varImporteAlimento / (importe + varImporteAlimento)) * 100
    INTO varPorcentajeCosto
    FROM receta
    WHERE id_receta = varIdReceta;*/
    
    SELECT SUM(receta.cantidad) + varCantidad
    INTO varCantidadReceta
    FROM receta
    WHERE receta.id_receta = varIdReceta;
    
    -- actualizar importe a receta 
    SELECT SUM(receta.importe) + varImporteAlimento
    INTO varImporteReceta
    FROM receta
    WHERE receta.id_receta = varIdReceta;
    
    IF NOT EXISTS(	SELECT	* 
					FROM	alimento_receta
					WHERE	id_alimento		=	varIdAlimento 
					AND		id_receta	=	varIdReceta) THEN
		BEGIN

			 INSERT INTO alimento_receta (id_alimento, id_receta, cantidad, importe, porcentaje_cantidad, porcentaje_costo)
			SELECT	varIdAlimento, varIdReceta,	varCantidad , varImporteAlimento, varPorcentajeCantidad, varPorcentajeCosto;
		END;
	ELSE
		BEGIN			
            UPDATE	alimento_receta
            SET		cantidad = varCantidad, importe = varImporteAlimento, porcentaje_cantidad = varPorcentajeCantidad,
            porcentaje_costo = varPorcentajeCosto, status = 'S' 
			WHERE	id_alimento = varIdAlimento
			AND id_receta = varIdReceta;		
		END;
	END IF;
    
   /* INSERT INTO alimento_receta (id_alimento, id_receta, cantidad, importe, porcentaje_cantidad, porcentaje_costo)
	SELECT	varIdAlimento, varIdReceta,	varCantidad , varImporteAlimento, varPorcentajeCantidad, varPorcentajeCosto;*/
    
    UPDATE receta
    SET receta.importe = varImporteReceta, 
    receta.cantidad = varCantidadReceta
    WHERE receta.id_receta = varIdReceta;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarAnimal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarAnimal`(
    varIdRancho		CHAR(36),		varIdCorral     	CHAR(36),		varIdProveedor	CHAR(36),		
	varFechaCompra	DATETIME,		varCompra			CHAR(255),		varNumeroLote	CHAR(255),
	varPesoCompra	DECIMAL(20,4),	varIdSexo			CHAR(36),		varFechaIngreso	DATETIME,
	varAreteVisual	CHAR(255),		varAreteElectronico	CHAR(255),		varAreteSiniiga	CHAR(255),
	varAreteCampaña	CHAR(255),		varPesoActual		DECIMAL(20,4),	varTemperatura	DECIMAL(20,4),
	varEsSemental	CHAR(1),		varIdSemental		CHAR(36),		varIdRaza		CHAR(36),
	varStatus		CHAR(1),		varIdCria			CHAR(36),		varEsVientre	CHAR(1),
    varFechaNacimiento	DATETIME,	varEstadoVientre	CHAR(36),
    varIdTipo		CHAR(36),		varFolioAnimal		CHAR(255),		varCorralAcopio	CHAR(36),
    varCostoKilo	DECIMAL(20,4))
BEGIN
    DECLARE varIdAnimal,			varIdRecepcion CHAR(36);
	declare varPorcentajeMerma,		varCostoFlete,				varTotalAlimento,		varCostoAlimento,
			varPromedioAlimento,	varPromedioCostoAlimento, varGananciaPromedio,	/*	varPesoCompra,*/
			varPesoRecepcion,		varVecesAlimentado		DECIMAL(20,4);		

	declare	varAnimalesPendientes int(10);

	declare varFechaUltimaComida,varFechaRecepcion datetime;
    DECLARE varIdCorralAcopio	CHAR(36);
    DECLARE varTipoRecepcion, varOrdenCompra	varchar(45);
    DECLARE varCostoComision,	varOtrosCostos,	varCostoRevision  DECIMAL(20,4);
    
    DECLARE varIdEstadoVientre CHAR(36);

	SELECT UUID()
	INTO varIdAnimal;

	INSERT corral_animal
    (   id_rancho,    id_corral,    id_animal)
    SELECT
        varIdRancho, varIdCorral, varIdAnimal;

    INSERT animal
    (	id_animal,		id_proveedor,		fecha_compra,	compra,
		numero_lote,	peso_compra,		id_sexo,		fecha_ingreso,
		arete_visual,	arete_electronico,	arete_siniiga,	arete_campaña,
		peso_actual,	temperatura,		es_semental,	id_semental,
		id_raza,		status,				es_vientre,		fecha_nacimiento,
        estado_vientre,		id_tipoganado,	folio_animal,	id_corral_acopio,
        costo_kilo)
    SELECT
		varIdAnimal,	varIdProveedor,			varFechaCompra,		varCompra,
		varNumeroLote,	varPesoCompra,			varIdSexo,			varFechaIngreso,
		varAreteVisual,	varAreteElectronico,	varAreteSiniiga,	varAreteCampaña,
		varPesoActual,	varTemperatura,			varEsSemental,		varIdSemental,		
		varIdRaza,		varStatus,				varEsVientre,	varFechaNacimiento,
        varEstadoVientre,		varIdTipo,		varFolioAnimal,		varCorralAcopio,
		varCostoKilo;

	update	cria 
	set		id_animal	=	varIdAnimal
	where	id_cria		=	varIdCria;
	
    SELECT	tipo_recepcion, orden_compra
    INTO	varTipoRecepcion,	varOrdenCompra
    FROM 	recepcion
    where	numero_lote = varNumeroLote
    AND		animales_pendientes > 0; 
    
	

	-- obtener datos del animal base
		select	peso_compra,				fecha_recepcion,		peso_recepcion,		porcentaje_merma,
				costo_flete,				total_alimento,			costo_alimento,		promedio_alimento,
				promedio_costo_alimento,	fecha_ultima_comida,	ganancia_promedio,	costo_comision,
                otros_costos,				costo_revision
		into	varPesoCompra,				varFechaRecepcion,		varPesoRecepcion,	varPorcentajeMerma,		
				varCostoFlete,				varTotalAlimento,		varCostoAlimento,	varPromedioAlimento,
				varPromedioCostoAlimento, 	varFechaUltimaComida,	varGananciaPromedio,varCostoComision,
                varOtrosCostos,				varCostoRevision
		from	animal
		where 	numero_lote = varNumeroLote
		and		not exists (	select	* 
								from	corral_animal 
								where	corral_animal.id_animal = animal.id_animal	);

		-- set varPesoRecepcion = 1 + (varPesoActual / varPesoCompra)

		update animal set	peso_compra				=	varPesoCompra,
							fecha_recepcion			=	varFechaRecepcion,
							peso_recepcion			=	varPesoRecepcion,
							porcentaje_merma		=	varPorcentajeMerma,
							costo_flete				=	varCostoFlete,				
							total_alimento			=	varTotalAlimento,			
							costo_alimento			=	varCostoAlimento,
							promedio_alimento		=	varPromedioAlimento,	
							promedio_costo_alimento	=	varPromedioCostoAlimento,	
							fecha_ultima_comida		=	varFechaUltimaComida,
							ganancia_promedio		=	varGananciaPromedio,
                            costo_comision			=	varCostoComision,
                            otros_costos			=	varOtrosCostos,
                            costo_revision			=	varCostoRevision
		where	id_animal	=	varidAnimal;
        
	if varTipoRecepcion <> 'Local' THEN 
	/*
		set varMerma = varPesoOrigen - varPesoRecepcion;    
		set varPorcentajeMerma = ( varMerma * 100 ) / varPesoOrigen;
	  */
	  -- Peso actual mas el porcenta de merma de la recepcion para dar el peso inicial antes de la merma
		set varPesoRecepcion = varPesoActual * ( 1 + (varPorcentajeMerma / 100));
		
		
		-- agregar el nuevo peso de recepcion
		update animal set	peso_recepcion			=	varPesoActual, peso_compra = varPesoRecepcion
		where	id_animal	=	varidAnimal;
	  
		-- agregar peso de compra y peso de recepcion como registros de pesos
		-- call movimientoPeso( varIdRancho, varIdAnimal, varFechaCompra, varPesoCompra);
		call movimientoPeso( varIdRancho, varIdAnimal, varFechaRecepcion, varPesoRecepcion);
	ELSE 
		update animal set	peso_recepcion			=	varPesoActual, peso_compra = varPesoActual
		where	id_animal	=	varidAnimal;
	
	END if;
	call movimientoPeso( varIdRancho, varIdAnimal, varFechaIngreso, varPesoActual);
    
	
	
	-- disminuir el numero de animales en recepcion de animales
		select	id_recepcion,	animales_pendientes
		into	varIdRecepcion,	varAnimalesPendientes
		from	recepcion
		where	animales_pendientes > 0
		and 	numero_lote = varNumeroLote;
		
		update	recepcion
		set		animales_pendientes = animales_pendientes - 1
		where	id_recepcion = varIdRecepcion;
        
        update	corral_acopio_recepcion
		set		animales_pendientes = animales_pendientes - 1
		where	id_recepcion = varIdRecepcion;
    
		SELECT	id_corral_acopio
		INTO	varIdCorralAcopio
		from	corral_acopio_recepcion
		WHERE	id_recepcion = varIdRecepcion;
    
		UPDATE	corral_acopio
		SET		num_animales = num_animales - 1
		WHERE	id_corral_acopio = varIdCorralAcopio;
        

		-- si quedaba un solo animal pendiente, se elimina el animal base
		if varAnimalesPendientes = 1 then

			delete from animal
			where numero_lote = varNumeroLote
			and		not exists (	select	* 
								from	corral_animal 
								where	corral_animal.id_animal = animal.id_animal	);


		end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarAnimalGrupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarAnimalGrupo`(
	varIdRancho CHAR(36),	varIdUsuario	CHAR(36),
	varIdAnimal	CHAR(36),	vartipo			CHAR(255))
BEGIN

	IF NOT EXISTS	(	SELECT *				
						FROM	animal_grupo
						WHERE	id_rancho 	=	varIdRancho
						AND		id_usuario	=	varIdUsuario
						AND		id_animal	=	varIdAnimal
						AND		tipo		=	vartipo			)	THEN
		BEGIN

			INSERT animal_grupo
				(    id_rancho,		id_usuario,		id_animal,		tipo)
			SELECT
				varIdRancho, 	varIdUsuario,	varIdAnimal,	vartipo;
		END ;
	END if;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarAnimalGrupo1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarAnimalGrupo1`(
	varIdRancho CHAR(36),	varIdUsuario	CHAR(36),
	varIdAnimal	CHAR(36),	vartipo			CHAR(255),
    varPeso		DECIMAL(20,4),				varCosto		DECIMAL(20,4),
    varTipoGanado	VARCHAR(45))
BEGIN

	IF NOT EXISTS	(	SELECT *				
						FROM	animal_grupo
						WHERE	id_rancho 	=	varIdRancho
						AND		id_usuario	=	varIdUsuario
						AND		id_animal	=	varIdAnimal
						AND		tipo		=	vartipo			)	THEN
		BEGIN

			INSERT animal_grupo
				(    id_rancho,		id_usuario,		id_animal,		tipo,		peso,		costo_kilo, tipo_ganado)
			SELECT
				varIdRancho, 	varIdUsuario,	varIdAnimal,	vartipo,		varPeso,	varCosto,	varTipoGanado;
		END ;
	END if;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarCasetaSanitaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarCasetaSanitaria`(varCodigo CHAR(36), varDescripcion CHAR(45))
BEGIN

	
   DECLARE varIdCaseta	CHAR(36);
    
    SELECT	UUID()
    INTO	varIdCaseta;
    
    Insert caseta_sanitaria(id_caseta,		codigo, descripcion, status)
    SELECT			 varIdCaseta, varCodigo, varDescripcion, 'S';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarChofer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarChofer`(varCodigo CHAR(36), varDescripcion CHAR(45))
BEGIN

	
   DECLARE varIdChofer	CHAR(36);
    
    SELECT	UUID()
    INTO	varIdChofer;
    
    Insert chofer(id_chofer,		codigo, nombre, status)
    SELECT			 varIdChofer, varCodigo, varDescripcion, 'S';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarciudadDestino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarciudadDestino`(varIdEstado CHAR(36), varIdCiudad CHAR(36) , varCiudad VARCHAR(50))
BEGIN
INSERT	ciudaddestino
		(	id_estado,	id_ciudad, descripcion_ciudad)
	SELECT	varIdEstado, varIdCiudad , varCiudad					;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarciudadOrigen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarciudadOrigen`(varIdEstado CHAR(36),varIdCiudad CHAR(36) , varCiudad VARCHAR(50))
BEGIN
INSERT	ciudadorigen
		(	id_estado,	id_ciudad, descripcion_ciudad)
	SELECT	varIdEstado, varIdCiudad , varCiudad					;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarCliente`(	
								varCliente		CHAR(255), 	
	varIdPais		CHAR(36),	varIdEstado 	CHAR(36),
	varIdCiudad		CHAR(36),	varDireccion	CHAR(255),	
    varEmail		CHAR(45),	varTelefono		CHAR(20),
    varPFisicaMoral	CHAR(1), varConPago		CHAR(45), 
    varDiasCredito	INT)
BEGIN

	DECLARE	varIdCliente CHAR(36);

	SELECT	UUID()
	INTO	varIdCliente;

	INSERT	cliente
		(	id_cliente,		descripcion,	id_pais,	id_estado,		
			id_ciudad,		direccion,		email,		telefono,
            p_fisica_moral,		status, con_pago, dias_credito)
	SELECT	varIdCliente,	varCliente,		varIdPais,	varIdEstado,	
			varIdCiudad,	varDireccion,	varEmail,	varTelefono,
            varPFisicaMoral,	'A' , varConPago, varDiasCredito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarCompra`(	
	varIdRancho	CHAR(36),		varIdProveedor	CHAR(36),		varFecha	DATETIME,
    varFactura	VARCHAR(45), 	varOrden		VARCHAR(45),	varSubtotal	DECIMAL(20,4),
    varIva		DECIMAL(20,4),	varTotal		DECIMAL(20,4)	)
BEGIN

	DECLARE	varIdCompra CHAR(36);

	SELECT	UUID()
	INTO	varIdCompra;

	INSERT	compra
		(	id_compra,		id_rancho,		id_proveedor,	fecha,		
			factura,		orden, 			subtotal, 		iva, 
            total)
	SELECT	varidCompra,	varIdRancho,	varIdProveedor,	varFecha,	
			varFactura,		varOrden,		varSubtotal,	varIva,
            varTotal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarComprador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarComprador`(	
			varNumero	VARCHAR(45),	varNombre	VARCHAR(255))
BEGIN

	DECLARE varIdComprador	CHAR(36);
    
    SELECT	UUID()
    INTO	varIdComprador;
    
    Insert comprador(id_comprador,		numero,		nombre,		status)
    SELECT			 varIdComprador,	varNumero,	varNombre,	'S';
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarCorral` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarCorral`(
	varId_Rancho		CHAR(36),	varNombre				CHAR(255),	
	varLocalizacion		CHAR(255),	varAlimentoIngresado	DECIMAL(20,4),
	varObservaciones	CHAR(255))
BEGIN

DECLARE	varId_corral CHAR(36);

	SELECT	UUID()
	INTO	varId_corral;

	INSERT	corral
		(	id_rancho,				id_corral,		nombre,
			localizacion,			num_animales,	alimento_ingresado,
			observaciones)
	SELECT	varId_Rancho,			varId_corral,	varNombre,
			varLocalizacion,		0,				varAlimentoIngresado,	
			varObservaciones;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarCorralDatos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarCorralDatos`(
   varIdRancho		CHAR(36),		varIdCorral         CHAR(255),            
   varCategoria		CHAR(255),		varGanado_amedias   CHAR(255),
   varColor_arete	INT,			varFecha_nacimiento DATETIME,    
   varNumero_lote	CHAR(255),		varCompra           CHAR(255),        
   varPorcentaje	DECIMAL(20,4),	varIdProveedor		CHAR(36))
BEGIN
    
    INSERT corral_datos
    (	id_rancho,		id_corral,			categoria,		ganado_amedias,    
		color_arete,	fecha_nacimiento,	numero_lote,	compra,
		porcentaje,		id_proveedor)
    SELECT
		varIdRancho,    varIdCorral,         varCategoria,   varGanado_amedias,    
		varColor_arete, varFecha_nacimiento, varNumero_lote, varCompra,
		varPorcentaje,	varIdProveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarCria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarCria`(
    varIdRancho	CHAR(36),		varIdMadre			CHAR(36),            
    varArete	CHAR(255),		varFechaNacimiento	DATETIME,    
    varIdSexo	CHAR(36),		varIdRaza			CHAR(36),	
	varPeso		DECIMAL(20,4),	varIdTipoParto		CHAR(36),
    varNombre   CHAR(255),		varComentarios		VARCHAR(255),
    varIdCorral	CHAR(36))
BEGIN
    DECLARE varIdCria CHAR(36); /*,varIdCorral CHAR(36);*/

	SELECT	UUID()
    INTO	varIdCria;    
    
    INSERT cria
    (	id_rancho,		id_madre,			id_cria,
		arete,			fecha_nacimiento,	id_sexo,
		id_raza,		status,				peso,
		id_tipo_parto,	nombre_cria,				comentarios)
    SELECT
		varIdRancho,	varIdMadre,			varIdCria,        
		varArete,		varFechaNacimiento,	varIdSexo,    
		varIdRaza,		'A',				varPeso,
		varIdTipoParto, varNombre,			varComentarios;

	/*-- obtener Corral de la madre
	SELECT	id_corral
	INTO	varIdCorral
	FROM	corral_animal
	WHERE	id_rancho	=	varIdRancho
	AND		id_animal	=	varIdMadre;*/

	-- Agregar kardex de la Cria
	CALL agregarAnimal(
		varIdRancho,	varIdCorral,	NULL,
		NULL,			NULL,			NULL,
		NULL,			varIdSexo,		NOW(),
		varArete,		NULL,			NULL,
		NULL,			varPeso,		NULL,
		'N',			NULL,			varIdRaza,
		'A',			varIdCria,		'N',
        varFechaNacimiento,		'');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarDetalleCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarDetalleCompra`(
	varIdRancho	CHAR(36),		varIdCompra		CHAR(36),	varIdMedicina		CHAR(36), 
	varCantidad	INT(11),		varPresentacion	INT(11),	varPrecioUnitario	DECIMAL(20,4),
	varImporte	DECIMAL(20,4)
)
BEGIN

    
	DECLARE varIdDetalle CHAR(36);
    
    SELECT	UUID()
	INTO	varIdDetalle;
   /* SELECT	COALESCE(MAX(id_detalle), 0) + 1
	INTO	varIdDetalle
	FROM	detalle_compra;*/
        
    INSERT detalle_compra(
		id_rancho,			id_compra,			id_medicina, 	id_detalle,
		cantidad,		presentacion,		precio_unitario,	importe)
    SELECT
		varIdRancho,		varIdCompra,		varIdMedicina,	varIdDetalle, 
		varCantidad,	varPresentacion,	varPrecioUnitario,	varImporte;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarDetalleCompra_Alimentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarDetalleCompra_Alimentos`(
	varIdRancho	CHAR(36),		varIdCompra		CHAR(36),	varIdAlimento		CHAR(36), 
	varCantidad	INT(11),	varPrecioUnitario	DECIMAL(20,4),
	varImporte	DECIMAL(20,4))
BEGIN


	DECLARE varIdDetalle CHAR(36);
    
    SELECT	UUID()
	INTO	varIdDetalle;
 
    /*SELECT	COALESCE(MAX(id_detalle), 0) + 1
	INTO	varIdDetalle
	FROM	detalle_compra_alimento;*/
        
    INSERT detalle_compra_alimento(
		id_rancho,			id_compra,			id_alimento, 	id_detalle,
		cantidad,		precio_unitario,	importe)
    SELECT
		varIdRancho,		varIdCompra,		varIdAlimento,	varIdDetalle, 
		varCantidad,	varPrecioUnitario,	varImporte; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarDetalleGastos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarDetalleGastos`(
		varIdOrdenGanado CHAR(36), varIdGastos CHAR(36),	varCantidad DECIMAL(20,4), varImporte DECIMAL(20,4),
		varIva DECIMAL(20,4), varTotal DECIMAL(20,4), varReferencia CHAR(45) , varPago DECIMAL(20,4),
        varTipoGasto	varchar(45))
BEGIN
	DECLARE varIdDetalle CHAR(36);
    
	SELECT	UUID()
    INTO	varIdDetalle;
    
    Insert detalle_gastos_orden(id_detalle_gastos, id_orden, id_gastos,	cantidad, importe, iva, total, referencia, pago,
								tipo_gasto)
    SELECT			 varIdDetalle, varIdOrdenGanado,varIdGastos, varCantidad,varImporte, varIva, varTotal, varReferencia, varPago,
								varTipoGasto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarDetalleOrdenAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarDetalleOrdenAlimento`(
		varIdOrdenAlimento		CHAR(36),		varCantidad		DECIMAL(20,4),
		varPrecioUnitario		DECIMAL(20,4),	varImporte		DECIMAL(20,4),
		varUnidadMedida			CHAR(36),		varIdAlimento	CHAR(36), 
        varImpuestos			DECIMAL(20,4))
BEGIN

	DECLARE varIdDetalle	CHAR(36);
    SELECT	UUID()
	INTO	varIdDetalle;
    
    INSERT	detalle_orden_alimento (id_detalle,		id_orden_alimento,	cantidad,		precio_unitario,
								  importe,			unidad_medida,		id_alimento,	impuestos)
	SELECT						  varIdDetalle,		varIdOrdenAlimento,	varCantidad,	varPrecioUnitario,
								  varImporte,		varUnidadMedida,	varIdAlimento,	varImpuestos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarDetalleOrdenGanado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarDetalleOrdenGanado`(
				varIdOrdenGanado		CHAR(36),		varCantidad		DECIMAL(20,4),
                varPrecioUnitario		DECIMAL(20,4),	varImporte		DECIMAL(20,4),
                varUnidadMedida			CHAR(36),		varIdTipoGanado	CHAR(36),
                varIdSexo CHAR(36))
BEGIN
	
	DECLARE varIdDetalle	CHAR(36);
    SELECT	UUID()
	INTO	varIdDetalle;
    
    INSERT	detalle_orden_ganado (id_detalle,		id_orden_ganado,	cantidad,		precio_unitario,
								  importe,			unidad_medida,		id_tipoganado, id_sexo)
	SELECT						  varIdDetalle,		varIdOrdenGanado,	varCantidad,	varPrecioUnitario,
								  varImporte,		varUnidadMedida,	varIdTipoGanado, varIdSexo;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarDetalleOrdenMedicina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarDetalleOrdenMedicina`(
			varIdOrdenMedicina		CHAR(36),		varCantidad		DECIMAL(20,4),
			varPrecioUnitario		DECIMAL(20,4),	varImporte		DECIMAL(20,4),
			varUnidadMedida			CHAR(36),		varIdMedicina	CHAR(36),
            varPresentacion			DECIMAL(20,4))
BEGIN

	DECLARE varIdDetalle	CHAR(36);
    SELECT	UUID()
	INTO	varIdDetalle;
    
    INSERT	detalle_orden_medicina (id_detalle,		id_orden_medicina,	cantidad,		precio_unitario,
								  importe,			unidad_medida,		id_medicina,	presentacion)
	SELECT						  varIdDetalle,		varIdOrdenMedicina,	varCantidad,	varPrecioUnitario,
								  varImporte,		varUnidadMedida,	varIdMedicina,	varPresentacion;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarEstadoDestino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarEstadoDestino`(varIdEstado CHAR(36) , varEstado VARCHAR(50))
BEGIN

INSERT	estadodestino
		(	id_estado,	id_pais, descripcion)
	SELECT	varIdEstado, 1 , varEstado					;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarEstadoOrigen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarEstadoOrigen`(varIdEstado CHAR(36) , varEstado VARCHAR(50))
BEGIN

INSERT	estadoorigen
		(	id_estado,	id_pais, descripcion)
	SELECT	varIdEstado, 1 , varEstado					;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarFactura`(
			varFactura		varchar(45),	varOrdenCompra	VARCHAR(45),	varIdProveedor	CHAR(36),
            varFecha		DATETIME,		varIdOrigen		CHAR(36),		varSubtotal		DECIMAL(20,4),
            varIva			DECIMAL(20,4),	varTotal		DECIMAL(20,4),	varFolioCompra	VARCHAR(45)	)
BEGIN


	DECLARE varIdFactura	CHAR(36);
	SELECT	UUID()
    INTO	varIdFactura;
    
    INSERT	factura		 (id_factura,			factura,			orden_compra,		id_proveedor,		id_origen,
						  fecha,				subtotal,			iva,				total,
                          status,				folio_compra)
	SELECT				  varIdFactura,			varFactura,			varOrdenCompra,		varIdProveedor,		varIdOrigen,
						  varFecha,				varSubtotal,		varIva,				varTotal,
                          'S',					varFolioCompra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarFacturaOrden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarFacturaOrden`(
			varIdOrdenGanado		CHAR(36),			varFactura		varchar(45))
BEGIN

	DECLARE varIdFacturaOrden	CHAR(36);
    DECLARE	varOrden			varchar(45);
    
    SELECT	UUID()
    INTO	varIdFacturaOrden;
    
    INSERT	factura_orden (id_factura_orden,		id_orden_ganado,		factura)
    SELECT				   varIdFacturaOrden,		varIdOrdenGanado,		varFactura;
    
    SELECT	orden_compra
    INTO	varOrden
    FROM	orden_ganado
    WHERE	id_orden_ganado = varIdOrdenGanado;
    
    UPDATE	recepcion
    set		folio	=	varFactura
    WHERE	orden_compra = varOrden;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarGastosOrdenGanado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarGastosOrdenGanado`(
		varIdOrdenGanado	CHAR(36),		varSubtotal		DECIMAL(20,4),		varIva	DECIMAL(20,4),
        varTotal		DECIMAL(20,4))
BEGIN

	UPDATE	orden_ganado
    set		subtotal_gastos = varSubtotal,
			iva_gastos = varIva,
            total_gastos = varTotal
	WHERE	id_orden_ganado = varIdOrdenGanado;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarGastosTransportacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarGastosTransportacion`(
		varCodigo CHAR(36), varDescripcion CHAR(45))
BEGIN

	
   DECLARE varIdGastos	CHAR(36);
    
    SELECT	UUID()
    INTO	varIdGastos;
    
    Insert gastos_transportacion(id_gastos,		codigo, descripcion, status)
    SELECT			 varIdGastos, varCodigo, varDescripcion, 'S';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarInfoSanitaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarInfoSanitaria`(
			varNumero	varchar(45),		varFolioTB		varchar(45),		varFolioBR		varchar(45),
            varFolioUnico		varchar(45),	varFolioFleje	varchar(45))
BEGIN
	DECLARE varIdInfo CHAR(36);
    
    SELECT UUID()
    into	varIdInfo;
    
    INSERT	info_sanitaria (id_info_sanitaria,	numero_so_sanitaria,	folio_tbe,		folio_br,		folio_unico,	folio_flejes)
    SELECT					varIdInfo,			varNumero,				varFolioTB,		varFolioBR,		varFolioUnico,	varFolioFleje;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarIngresoAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarIngresoAlimento`(
    varNumeroLote	CHAR(255),		varIdCorral			CHAR(36),		varTotalAlimento	decimal(20,4),
    varFecha		DATETIME,		varCostoUnitario	DECIMAL(20,4),	varCostoTotal		DECIMAL(20,4),	
    varCarro		varchar(45), varValeMaterial varchar(45), varTextoCabecera varchar(45),
    varMaterial char(36), varPorcentajeAlimento DECIMAL(20,2), varIdRancho CHAR(36))
BEGIN
    DECLARE varIdIngresoAlimento char(36);
	
	SELECT	UUID()
	INTO	varIdIngresoAlimento;
     	
    INSERT ingreso_alimento
    (	id_ingreso_alimento,	numero_lote,	id_corral,		total_alimento,
		fecha,					costo_unitario,	costo_total, 	carro,
		vale_material,		texto_cabecera,		id_receta, porcentaje_alimento, id_rancho)
    SELECT
		varIdIngresoAlimento,	varNumeroLote,		varIdCorral,	varTotalAlimento,
        varFecha,				varCostoUnitario,	varCostoTotal,	varCarro,
        varValeMaterial,	varTextoCabecera,	varMaterial, varPorcentajeAlimento, varIdRancho;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarInseminador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarInseminador`(
				varCodigo CHAR(36),		varNombre		CHAR(36))
BEGIN

	DECLARE varIdInseminador	CHAR(36);
    
    SELECT	UUID()
    INTO	varIdInseminador;
    
    INSERT inseminador (id_inseminador,		codigo,		nombre,		status)
    SELECT varIdInseminador,	varCodigo,	varNombre,	'S';
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarInventarioAnimal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarInventarioAnimal`(
		varIdInventario char(36), varIdAnimal char(36) )
BEGIN

	DECLARE varIdInventarioAnimal char(36);
    Declare varConteo int(11);
    
    SELECT UUID()
    INTO varIdInventarioAnimal;
    
    INSERT inventario_animal
    (id_inventario_animal, id_inventario, id_animal)
    SELECT varIdInventarioAnimal, varIdInventario, varIdAnimal;
    
    
    
    SELECT COUNT(*)
    INTO varConteo
    FROM inventario;
    
    if varConteo > 2 then
    
    call eliminarInventarioAnimal();
    
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarInventarioGanado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarInventarioGanado`(
		varIdRancho char(36), varFecha DATETIME)
BEGIN

	DECLARE varIdInventario char(36);
    
    SELECT UUID()
    INTO varIdInventario;
    
    INSERT inventario 
    (id_inventario, id_rancho, fecha)
    SELECT varIdInventario, varIdRancho, varFecha;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarLab` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarLab`(varCodigo CHAR(36), varDescripcion CHAR(45))
BEGIN

	
   DECLARE varIdLab	CHAR(36);
    
    SELECT	UUID()
    INTO	varIdLab;
    
    Insert lab(id_lab,		codigo, descripcion, status)
    SELECT			 varIdLab, varCodigo, varDescripcion, 'S';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarMedicina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarMedicina`(
	varCodigo		INT,			varNombre			CHAR(255),
	varCosto		DECIMAL(20,4),	varId_unidad		INT,
	varPresentacion	DECIMAL(20,4), varIdRancho CHAR(36))
BEGIN

	DECLARE	varId_medicina CHAR(36);

	SELECT	UUID()
	INTO	varId_medicina;

	INSERT	medicina
		(	id_medicina,	codigo,				nombre,								costo,
			id_unidad,		presentacion,		costo_unitario,						status			)
	SELECT	varId_medicina,	varCodigo,			varNombre,							varCosto,
			varId_unidad,	varPresentacion,	varCosto / IFNULL(varPresentacion, 1),	"S";
		
        IF NOT EXISTS (	SELECT	* 
					FROM	rancho_medicina
					WHERE	id_rancho	=	varIdRancho
					AND		id_medicina	=	varId_medicina) THEN 

					INSERT INTO rancho_medicina(
					id_rancho,		id_medicina, 		existencia,	existencia_inicial, costo_promedio) 
					SELECT	varIdRancho, 	varId_medicina,	0,			0,					0.0 ;
 	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarMedicinaAnimal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarMedicinaAnimal`(
	varIdRancho CHAR(36),		varMedicina	CHAR(36),	varIdAnimal			CHAR(36),	
	varDosis	DECIMAL(20,4),	varFecha	DATETIME)
BEGIN
	
	DECLARE varIdMedicinaAnimal	CHAR(36);
	DECLARE	varCosto	DECIMAL(20,4);
	/*
	UPDATE	rancho
	SET		id_medicina_animal	=	ifNull(id_medicina_animal, 0) + 1
	where	id_rancho			=	varIdRancho;

	select	id_medicina_animal	
	INTO	varIdMedicinaAnimal
	from	rancho
	where	id_rancho	=	varIdRancho;
*/
	SELECT	rancho_medicina.costo_promedio
	INTO	varCosto
	FROM	rancho_medicina
	WHERE	rancho_medicina.id_rancho	=	varIdRancho
	AND		rancho_medicina.id_medicina	=	varMedicina;

	SELECT	UUID()
	INTO	varIdMedicinaAnimal;

	INSERT INTO medicina_animal(
			id_rancho,		id_medicina_animal,		id_medicina,	id_animal,		dosis,		fecha,		costo)
	select	varIdRancho,	varIdMedicinaAnimal,	varMedicina, 	varIdAnimal,	varDosis,	varFecha,	varCosto;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarMedicinaAnimalGrupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarMedicinaAnimalGrupo`(
	varIdRancho 	CHAR(36),		varMedicina	CHAR(36),	
	varDosis		DECIMAL(20,4),	varFecha	DATETIME, 
	varIdUsuario	CHAR(36))
BEGIN
	DECLARE vb_termina BOOL DEFAULT FALSE;
	DECLARE varIdMedicinaAnimal	CHAR(36);
	DECLARE	varIdAnimal			CHAR(36);
	
	DECLARE cur_animales CURSOR
	FOR	SELECT	id_animal                                
		FROM	animal_grupo
		WHERE	id_rancho 	=	varIdRancho
		AND		id_usuario	=	varIdUsuario		
		AND		tipo		=	'medicina';

	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;

	OPEN cur_animales;
	Recorre_Cursor: LOOP

		FETCH cur_animales INTO varIdAnimal;
		
		IF vb_termina THEN
            LEAVE Recorre_Cursor;
        END IF;

		SELECT	UUID()
		INTO	varIdMedicinaAnimal;

		INSERT INTO medicina_animal(
				id_rancho,		id_medicina_animal,		id_medicina,	
				id_animal,		dosis,					fecha)
		select	varIdRancho,	varIdMedicinaAnimal,	varMedicina,
				varIdAnimal,	varDosis,				varFecha;	

	END LOOP;
  
	CLOSE cur_animales;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarMedicinaAnimalHospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarMedicinaAnimalHospital`(
	varIdRancho CHAR(36),		varMedicina	CHAR(36),	varIdAnimal			CHAR(36),	
	varDosis	DECIMAL(20,4),	varFecha	DATETIME,	varCostoVerinario	DECIMAL(20,4),
    varDiagnostico		VARCHAR(45),		varIdHospital		CHAR(36))
BEGIN
	
	DECLARE varIdMedicinaAnimal	CHAR(36);
	DECLARE	varCosto	DECIMAL(20,4);
	/*
	UPDATE	rancho
	SET		id_medicina_animal	=	ifNull(id_medicina_animal, 0) + 1
	where	id_rancho			=	varIdRancho;

	select	id_medicina_animal	
	INTO	varIdMedicinaAnimal
	from	rancho
	where	id_rancho	=	varIdRancho;
*/
	SELECT	rancho_medicina.costo_promedio
	INTO	varCosto
	FROM	rancho_medicina
	WHERE	rancho_medicina.id_rancho	=	varIdRancho
	AND		rancho_medicina.id_medicina	=	varMedicina;

	SELECT	UUID()
	INTO	varIdMedicinaAnimal;

	INSERT INTO medicina_animal(
			id_rancho,		id_medicina_animal,		id_medicina,	id_animal,		dosis,		fecha,		costo,
            costo_veterinario,			diagnostico,		hospital)
	select	varIdRancho,	varIdMedicinaAnimal,	varMedicina, 	varIdAnimal,	varDosis,	varFecha,	varCosto,
			varCostoVerinario,		varDiagnostico,			'S';	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarMedicinas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarMedicinas`(
	varCodigo	INT,			varNombre		CHAR(255),
	varCosto	DECIMAL(20,4),	varId_unidad	CHAR(36))
BEGIN

	DECLARE	varId_medicina CHAR(36);

	SELECT	UUID()
	INTO	varId_medicina;

	INSERT	medicinas
		(	id_medicina,	codigo,	nombre,	costo,
			id_unidad,		status			)
	SELECT	varId_medicina,	varCodigo,	varNombre,	varCosto,
			varId_unidad,	"S";

	/*IF NOT EXISTS (	SELECT	* 
					FROM	rancho_medicina
					WHERE	id_rancho	=	NEW.id_rancho
					AND		id_medicina	=	NEW.id_medicina) THEN 

					INSERT INTO rancho_medicina(
					id_rancho,		id_medicina, 		existencia,	existencia_inicial, costo_promedio) 
					SELECT	NEW.id_rancho, 	NEW.id_medicina,	0,			0,					0.0 ;
 	END IF;*/

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarMedicinaTratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarMedicinaTratamiento`(
	varIdTratamiento	CHAR(36),	varIdMedicina	CHAR(36),	varDosis	DECIMAL(20,4))
BEGIN

	IF NOT EXISTS(	SELECT	* 
					FROM	medicina_tratamiento
					WHERE	id_medicina		=	varIdMedicina 
					AND		id_tratamiento	=	varIdTratamiento) THEN
		BEGIN

			INSERT INTO medicina_tratamiento (id_tratamiento, id_medicina, dosis)
			SELECT	varIdTratamiento,	varIdMedicina,	varDosis;
		END;
	ELSE
		BEGIN			
            UPDATE	medicina_tratamiento
            SET		dosis = varDosis, status = 'S' 
			WHERE	id_medicina = varIdMedicina
			AND id_tratamiento = varIdTratamiento;		
		END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarOrdenAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarOrdenAlimento`(
			varOrdenCompra	VARCHAR(45),	varIdProveedor	CHAR(36),		varFecha		DATETIME,
            varIdOrigen		CHAR(36),		varDir			CHAR(255),		varAutorizo		CHAR(255),
            varCondicion	varchar(45),    varIdComprador	CHAR(36),		varSubtotal		DECIMAL(20,4),
            varIva			DECIMAL(20,4),	varTotal		DECIMAL(20,4),	varFolioCompra	VARCHAR(45),
            varIdLab 		CHAR(36),		varIdOrigenM CHAR(36),			varIdChofer 	CHAR(36),
            varPlacasTrailer VARCHAR(45),	varPlacasR1		VARCHAR(45),	varPlacasR2		VARCHAR(45),
            varHoraSalida DATETIME, 		varMerma DECIMAL (20,4), 		varNumAlimentos Int
            )
BEGIN

	DECLARE varIdOrden		CHAR(36);
	SELECT	UUID()
    INTO	varIdOrden;
    
    INSERT	orden_alimento (id_orden_alimento,		orden_compra,		id_proveedor,		id_origen,
						  direccion,			autorizo,			condicion_pago,		id_comprador,
                          fecha,				subtotal,			iva,				total,
                          status,				folio_compra, 		id_lab,				id_ciudadorigen,
                          id_chofer, 			placas_trailer,		placas_remolque1, 	placas_remolque2,
                          hora_salida,			merma)
	SELECT				  varIdOrden,			varOrdenCompra,		varIdProveedor,		varIdOrigen,
						  varDir,				varAutorizo,		varCondicion,		varIdComprador,
                          varFecha,				varSubtotal,		varIva,				varTotal,
                          'S',					varFolioCompra,     varIdLab,		varIdOrigenM ,
                          varIdChofer,          varPlacasTrailer ,	varPlacasR1		,	varPlacasR2, 
                          varHoraSalida, 		varMerma, 			varNumAlimentos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarOrdenGanado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarOrdenGanado`(
			varOrdenCompra	VARCHAR(45),	varIdProveedor	CHAR(36),		varFecha		DATETIME,
            varIdOrigen		CHAR(36),		varDir			CHAR(255),		varAutorizo		CHAR(255),
            varCondicion	varchar(45),    varIdComprador	CHAR(36),		varSubtotal		DECIMAL(20,4),
            varIva			DECIMAL(20,4),	varTotal		DECIMAL(20,4),	varFolioCompra	VARCHAR(45),
            varHembras		INT(11),		varMachos		INT(11), 			varIdChofer VARCHAR(36),
            varPlacaTrailer VARCHAR(45),	varPlacaJaula 	VARCHAR(45),		varIdDestino CHAR(36), 
            varHoraSalida 	DATETIME,		varMerma		DECIMAL(20,4),		varIdCiudadOrigen	CHAR(36),
            varIdCiudadDestino	CHAR(36))
BEGIN

	DECLARE varIdOrden		CHAR(36);
	SELECT	UUID()
    INTO	varIdOrden;
    
    INSERT	orden_ganado (id_orden_ganado,		orden_compra,		id_proveedor,		id_origen,
						  direccion,			autorizo,			condicion_pago,		id_comprador,
                          fecha,				subtotal,			iva,				total,
                          status,				folio_compra,		hembras,			machos,
                          id_chofer,			placas_trailer,		placas_jaula,		id_destino,
                          hora_salida,			merma,				id_ciudad_destino,	id_ciudad_origen)
                          
	SELECT				  varIdOrden,			varOrdenCompra,		varIdProveedor,		varIdOrigen,
						  varDir,				varAutorizo,		varCondicion,		varIdComprador,
                          varFecha,				varSubtotal,		varIva,				varTotal,
                          'S',					varFolioCompra,		varHembras,			varMachos,
                          varIdChofer,			varPlacaTrailer,	varPlacaJaula,		varIdDestino,
                          varHoraSalida,		varMerma,			varIdCiudadDestino,	varIdCiudadOrigen;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarOrdenMedicina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarOrdenMedicina`(
			varOrdenCompra	VARCHAR(45),	varIdProveedor	CHAR(36),		varFecha		DATETIME,
            varIdOrigen		CHAR(36),		varDir			CHAR(255),		varAutorizo		CHAR(255),
            varCondicion	varchar(45),    varIdComprador	CHAR(36),		varSubtotal		DECIMAL(20,4),
            varIva			DECIMAL(20,4),	varTotal		DECIMAL(20,4),	varFolioCompra	VARCHAR(45))
BEGIN

	DECLARE varIdOrden		CHAR(36);
	SELECT	UUID()
    INTO	varIdOrden;
    
    INSERT	orden_medicina (id_orden_medicina,		orden_compra,		id_proveedor,		id_origen,
						  direccion,			autorizo,			condicion_pago,		id_comprador,
                          fecha,				subtotal,			iva,				total,
                          status,				folio_compra)
	SELECT				  varIdOrden,			varOrdenCompra,		varIdProveedor,		varIdOrigen,
						  varDir,				varAutorizo,		varCondicion,		varIdComprador,
                          varFecha,				varSubtotal,		varIva,				varTotal,
                          'S',					varFolioCompra;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarOtrosGastos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarOtrosGastos`(varCodigo CHAR(36), varDescripcion CHAR(45))
BEGIN

	
   DECLARE varIdGasto	CHAR(36);
    
    SELECT	UUID()
    INTO	varIdGasto;
    
    Insert otros_gastos(id_gastos,		codigo, descripcion, status)
    SELECT			 varIdGasto, varCodigo, varDescripcion, 'S';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarOtrosGastosOrden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarOtrosGastosOrden`(
		varIdOrdenGanado	CHAR(36),		varSubtotal		DECIMAL(20,4),		varIva	DECIMAL(20,4),
        varTotal		DECIMAL(20,4))
BEGIN

	UPDATE	orden_ganado
    set		subtotal_otros = varSubtotal,
			iva_otros = varIva,
            total_otros = varTotal
	WHERE	id_orden_ganado = varIdOrdenGanado;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarPajilla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarPajilla`(
				varCodigo VARCHAR(45),		varIdSemental CHAR(36),		varLineaG VARCHAR(45),
                varOrigen VARCHAR(45))
BEGIN

	DECLARE varIdPajilla	CHAR(36);
    
    SELECT	UUID()
    INTO	varIdPajilla;
    
    INSERT pajilla (id_pajilla,		codigo,		id_semental,		linea_genetica,		origen,		status)
    SELECT 			varIdPajilla,	varCodigo,	varIdSemental,		varLineaG,			varOrigen,	'S';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarProgramacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarProgramacion`(
			varIdRancho CHAR(36),	varIdHembra CHAR(36),		varIdReproductor1 CHAR(36),		varIdReproductor2 CHAR(36),
            varIdReproductor3 CHAR(36),varIdTipo1 CHAR(36),		varIdTipo2 CHAR(36), varIdTipo3 CHAR(36),	varFechaProgramacion1 DATETIME,
            varFechaProgramacion2 DATETIME,	varFechaProgramacion3 DATETIME, 
            varComentarios varchar(255))
BEGIN
	DECLARE varProgramacion CHAR(36);
    
    SELECT	UUID()
    INTO	varProgramacion;
    
    INSERT programacion (id_programacion,	id_rancho,		id_hembra,		id_reproductor,		fecha,
						 tipo_reproduccion,		comentarios, status)
    SELECT 				varProgramacion,	varIdRancho,	varIdHembra,	varIdReproductor1,	varFechaProgramacion1,
						varIdTipo1,		varComentarios,	'S';
                        
	SELECT	UUID()
    INTO	varProgramacion;
    
    INSERT programacion (id_programacion,	id_rancho,		id_hembra,		id_reproductor,		fecha,
						 tipo_reproduccion,		comentarios, status)
    SELECT 				varProgramacion,	varIdRancho,	varIdHembra,	varIdReproductor2,	varFechaProgramacion2,
						varIdTipo2,		varComentarios,	'S';
	
    SELECT	UUID()
    INTO	varProgramacion;
    
    
    INSERT programacion (id_programacion,	id_rancho,		id_hembra,		id_reproductor,		fecha,
						 tipo_reproduccion,		comentarios,	status)
    SELECT 				varProgramacion,	varIdRancho,	varIdHembra,	varIdReproductor3,	varFechaProgramacion3,
						varIdTipo3,		varComentarios,	'S';
    
    
    UPDATE animal set estado_vientre = '058db38b-317f-11e6-8267-10c37b693112'
    WHERE id_animal = varIdHembra;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarProveedor`(	
								varProveedor	CHAR(255), 	
	varIdPais		CHAR(36),	varIdEstado 	CHAR(36),
	varIdCiudad		CHAR(36),	varDireccion	CHAR(255),	
    varEmail		CHAR(45),	varTelefono		CHAR(20),
    varPFisicaMoral	CHAR(1),	varNumeroProveedor VARCHAR(45),
    varConPago		CHAR(45),   varDiasCredito	INT,
     varRFC		CHAR(45),	varCuenta		CHAR(45))
BEGIN

	DECLARE	varIdProveedor CHAR(36);

	SELECT	UUID()
	INTO	varIdProveedor;

	INSERT	proveedor
		(	id_proveedor,		descripcion,	id_pais,	id_estado,		
			id_ciudad,			direccion,		email,		telefono,
            p_fisica_moral,		status, numero_proveedor, con_pago, dias_credito, rfc, cuenta)
	SELECT	varIdProveedor,		varProveedor,	varIdPais,	varIdEstado,	
			varIdCiudad,		varDireccion,	varEmail,	varTelefono,
            varPFisicaMoral,	'A',	varNumeroProveedor, varConPago, varDiasCredito, varRFC, varCuenta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarPvie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarPvie`(varCodigo CHAR(36), varDescripcion CHAR(45))
BEGIN

	
   DECLARE varIdPvie	CHAR(36);
    
    SELECT	UUID()
    INTO	varIdPvie;
    
    Insert pvie(id_pvie,		codigo, descripcion, status)
    SELECT			 varIdPvie, varCodigo, varDescripcion, 'S';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarRancho` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarRancho`(
	varDescripcion	CHAR(255),	varActividad	CHAR(255),
	varEstado		CHAR(36),	varCiudad		CHAR(36))
BEGIN

	DECLARE	varIdRancho	,
			varIdCorral	CHAR(36);

	SELECT	UUID()
	INTO	varIdRancho;

	INSERT	rancho(
			id_rancho,		descripcion,	actividad,		id_estado,	id_ciudad,	status	)
	SELECT	varIdRancho,	varDescripcion,	varActividad,	varEstado,	varCiudad,	"A";

	CALL agregarCorral(varIdRancho, 'Hospital','', 0.00,'');
    
    UPDATE	corral
    SET		status		=	'E'
    WHERE	id_rancho	=	varIdRancho
	AND		nombre		=	'Hospital';
    
    SELECT	id_corral
    INTO 	varIdCorral
    FROM	corral
    WHERE	id_rancho	=	varIdRancho
	AND		nombre		=	'Hospital';

	INSERT INTO concepto_movimiento	SELECT varIdRancho,	UUID(),	'Muerte',			'Mrt',	'S';

	INSERT INTO concepto_movimiento	SELECT varIdRancho,	UUID(),	'Peso',				'Pso',	'N';

	INSERT INTO concepto_movimiento	SELECT varIdRancho,	UUID(),	'Traspaso Salida',	'Tsa',	'S';

	INSERT INTO concepto_movimiento	SELECT varIdRancho,	UUID(),	'Traspaso Entrada',	'Ten',	'E';

	INSERT INTO concepto_movimiento	SELECT varIdRancho,	UUID(),	'Salida',			'Sal',	'S';

    UPDATE rancho SET 
		id_corral_hospital	=	varIdCorral,
		con_muerte				=	(	SELECT	id_concepto	FROM concepto_movimiento	WHERE	descripcion	=	'Muerte' 			AND id_rancho	=	varIdRancho	),
		con_pesaje				=	(	SELECT	id_concepto	FROM concepto_movimiento	WHERE	descripcion	=	'Peso'				AND id_rancho	=	varIdRancho	),
		con_traspaso_salida		=	(	SELECT	id_concepto	FROM concepto_movimiento	WHERE	descripcion	=	'Traspaso Salida'	AND id_rancho	=	varIdRancho	),
		con_traspaso_entrada	=	(	SELECT	id_concepto	FROM concepto_movimiento	WHERE	descripcion	=	'Traspaso Entrada'	AND id_rancho	=	varIdRancho	),
		con_salida				=	(	SELECT	id_concepto	FROM concepto_movimiento	WHERE	descripcion	=	'Salida'			AND id_rancho	=	varIdRancho	)
	WHERE	id_rancho	=	varIdRancho; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarRaza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarRaza`(	
	varRaza	CHAR(255)	)
BEGIN

	DECLARE	varIdRaza CHAR(36);

	SELECT	UUID()
	INTO	varIdRaza;

	INSERT	raza
		(	id_raza,	descripcion, seleccionar, status)
	SELECT	varIdRaza,	varRaza, 'S', 'A'						;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarRecepcion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarRecepcion`(
    varIdProveedor		CHAR(36),		varIdOrigen			CHAR(36),		varFolio			CHAR(45),
    varFechaCompra		DATETIME,		varFechaRecepcion	DATETIME,		varAnimales			int(10),
	varPesoOrigen		DECIMAL(20,4),	varLimiteMerma		DECIMAL(20,4),	varMerma			decimal(20,5),
	varPorcentajeMerma	decimal(20,4),	varPesoRecepcion	DECIMAL(20,4),	varNumeroLote		char(255),	
	varCostoFlete		DECIMAL(20,4),	varDevoluciones		int(10),		varCausaDevolucion	varchar(45),
    varComisiones 		DECIMAL(20,2),	varOtrosCostos		DECIMAL(20,2),	varRevisionGanado	DECIMAL(20,2),
    varOrdenCompra		varchar(45),	varIdTipo			CHAR(36),		varIdCorralAcopio	CHAR(36),
    varTipoRecepcion	varchar(45),	varCostoCombustible	DECIMAL(20,4),	varRazonMerma		CHAR(255),
    varHoraLlegada		DATETIME,		varHorasTrayecto	varCHAR(45),	varAnimalesCaidos	INT(11),
    varAnimalesMuertos	INT(11),		varIdPvie			CHAR(36),		varIdSanitaria		CHAR(36)
    )
BEGIN
    DECLARE varIdRecepcion char(36);
	declare i int;
    DECLARE varIdAnimal CHAR(36);

	SELECT	UUID()
	INTO	varIdRecepcion;
     	
	set varMerma = varPesoOrigen - varPesoRecepcion;
    
    set varPorcentajeMerma = ( varMerma * 100 ) / varPesoOrigen;

    INSERT recepcion
    (	id_recepcion,	id_proveedor,		id_origen,			folio,
		fecha_compra,	fecha_recepcion,	animales,			animales_pendientes,
		peso_origen,	limite_merma,		merma,				porcentaje_merma,	
		peso_recepcion,	numero_lote,		costo_flete,		devoluciones,		
		causa_devolucion,	comision,	otros_costos,		revision_ganado,		orden_compra,
        tipoganado,			corral_acopio,		tipo_recepcion,		costo_combustible,
        razon_merma,		hora_llegada,		horas_trayecto,		animales_caidos,
        animales_muertos,	id_pvie,			id_info_sanitaria )
    SELECT
		varIdRecepcion,		varIdProveedor,		varIdOrigen,		varFolio,
		varFechaCompra,		varFechaRecepcion,	varAnimales,		varAnimales,
		varPesoOrigen,		varLimiteMerma,		varMerma,			varPorcentajeMerma,
		varPesoRecepcion,	varNumeroLote,		varCostoFlete,		varDevoluciones,	
		varCausaDevolucion,	varComisiones,		varOtrosCostos,	varRevisionGanado,	varOrdenCompra,
        varIdTipo,			varIdCorralAcopio,	varTipoRecepcion,	varCostoCombustible,
        varRazonMerma,		varHoraLlegada,		varHorasTrayecto,	varAnimalesCaidos,
		varAnimalesMuertos,	varIdPvie,			varIdSanitaria;
	
        
	if	varTipoRecepcion = 'Foránea' then
    INSERT corral_acopio_recepcion (id_corral_acopio,	id_recepcion,	animales_pendientes,	num_animales)
    SELECT							varIdCorralAcopio,	varIdRecepcion,	varAnimales,			varAnimales;
    
    UPDATE	corral_acopio set num_animales = num_animales + varAnimales
    WHERE	id_corral_acopio = varIdCorralAcopio;
    
	end if;
	-- set i = 0;
 
	-- while  i < varAnimales do

-- se agrega un animal base, para asignar alimento
/*
		SELECT UUID()
		INTO varIdAnimal;
    
		INSERT animal
		(	id_animal,			id_proveedor,	                fecha_compra,		compra,
			numero_lote,		peso_compra,	                fecha_recepcion,	peso_recepcion,
			porcentaje_merma,   costo_flete,
            status)
		SELECT
			varIdAnimal,		varIdProveedor,	                varFechaCompra,		varfolio,
			varNumeroLote,		varPesoOrigen / varAnimales,	varFechaRecepcion,	varPesoRecepcion / varAnimales,
			varPorcentajeMerma, varCostoFlete / varAnimales,
            'A';
*/    
	-- set i = i + 1;
    -- end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarRecepcionAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarRecepcionAlimento`(  varOrdenCompra CHAR(36) ,   varIdProveedor CHAR(36) ,   varIdEstadoOrigen CHAR(36) ,
  varIdCiudadOrigen CHAR(36) ,  varIdLab CHAR(36) ,   varHorasTrayecto VARCHAR(45) ,  varGDañado DECIMAL(20,4) ,
 varMatExtraña DECIMAL(20,4) ,  varDescMExtra DECIMAL(20,4) ,  varFolio VARCHAR(45) ,  varPesoOrigen DECIMAL(20,4) ,
  varMerma DECIMAL(20,4) ,  varPesoBruto DECIMAL(20,4) ,  varPesoTara DECIMAL(20,4) ,  varPesoNeto DECIMAL(20,4) ,
  varDescuentos DECIMAL(20,4) ,  varTotalDescuento DECIMAL(20,4) ,  varHumedad DECIMAL(20,4) ,  varDescHumedad DECIMAL(20,4) ,
  varDescSecado DECIMAL(20,4) ,  varCantLiquidar DECIMAL(20,4) ,  varPrecioTonelada DECIMAL(20,4) ,  varTotalPagar DECIMAL(20,4) ,
  varIdBodega CHAR(36) ,  varNumReporte VARCHAR(45), varLimiteMerma Decimal(20,4) , varPorcentajeMerma Decimal(20,4),
  varFecha DATETIME, varHoraLlegada DATETIME)
BEGIN
	
    DECLARE varIdRecepcion CHAR(36);
    SELECT	UUID()
    INTO	varIdRecepcion;
    
    insert recepcion_alimento(id_recepcion, ordencompra, id_proveedor, id_estadoorigen, id_ciudadorigen, horas_trayecto, g_dañado, mat_extraña,
    folio, peso_origen, merma, peso_bruto, peso_tara, peso_neto, descuentos, total_descuento, humedad, desc_humedad, desc_secado, cant_liquidar,
    precio_tonelada, total_pagar, id_bodega, num_reporte, limite_merma , porcentaje_merma, fecha_recepcion,hora_llegada)
    
    select varIdRecepcion, varOrdenCompra, varIdProveedor, varIdEstadoOrigen, varIdCiudadOrigen, varIdLab, varHorasTrayecto, varGDañado, varMateriaExtraña,
	varDescMExtra, varFolio, varPesoOrigen, varMerma, varPesoBruto, varPesoTara, varPesoNeto, varDescuentos, varTotalDescuento, varHumedad, varDescHumedad,
    varDescSecado, varCantLiquidar, varPrecioTonelada, varTotalPagar, varIdBodega, varNumReporte, varLimiteMerma, varPorcentajeMerma, varFecha , varHoraLlegada ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarRecepcion_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarRecepcion_2`(
    varIdProveedor		CHAR(36),		varIdOrigen			CHAR(36),		varFolio			CHAR(45),
    varFechaCompra		DATETIME,		varFechaRecepcion	DATETIME,		varAnimales			int(10),
	varPesoOrigen		DECIMAL(20,4),	varLimiteMerma		DECIMAL(20,4),	varMerma			decimal(20,5),
	varPorcentajeMerma	decimal(20,4),	varPesoRecepcion	DECIMAL(20,4),	varNumeroLote		char(255),	
	varCostoFlete		DECIMAL(20,4),	varDevoluciones		int(10),		varCausaDevolucion	varchar(45),
    varAnimalesPendientes		INT(10),		varTotalAlimento 	DECIMAL(20,4))
BEGIN
    DECLARE varIdRecepcion char(36);
	declare i int;
    DECLARE varIdAnimal CHAR(36);

	SELECT	UUID()
	INTO	varIdRecepcion;
     	
	set varMerma = varPesoOrigen - varPesoRecepcion;
    
    set varPorcentajeMerma = ( varMerma * 100 ) / varPesoOrigen;

    INSERT recepcion
    (	id_recepcion,	id_proveedor,		id_origen,			folio,
		fecha_compra,	fecha_recepcion,	animales,			animales_pendientes,
		peso_origen,	limite_merma,		merma,				porcentaje_merma,	
		peso_recepcion,	numero_lote,		costo_flete,		devoluciones,		
		causa_devolucion	)
    SELECT
		varIdRecepcion,		varIdProveedor,		varIdOrigen,		varFolio,
		varFechaCompra,		varFechaRecepcion,	varAnimales,		varAnimales,
		varPesoOrigen,		varLimiteMerma,		varMerma,			varPorcentajeMerma,
		varPesoRecepcion,	varNumeroLote,		varCostoFlete,		varDevoluciones,	
		varCausaDevolucion;	

	UPDATE recepcion set 
		animales_pendientes = varAnimalesPendientes, 
		total_alimento = varTotalAlimento
	WHERE id_recepcion = varIdRecepcion 
    AND id_proveedor = varIdProveedor 
    AND id_origen = varIdOrigen;
		

	-- set i = 0;
 
	-- while  i < varAnimales do

-- se agrega un animal base, para asignar alimento
		SELECT UUID()
		INTO varIdAnimal;
    
		INSERT animal
		(	id_animal,			id_proveedor,	                fecha_compra,		compra,
			numero_lote,		peso_compra,	                fecha_recepcion,	peso_recepcion,
			porcentaje_merma,   costo_flete,
            status)
		SELECT
			varIdAnimal,		varIdProveedor,	                varFechaCompra,		varfolio,
			varNumeroLote,		varPesoOrigen / varAnimales,	varFechaRecepcion,	varPesoRecepcion / varAnimales,
			varPorcentajeMerma, varCostoFlete / varAnimales,
            'A';
    
	-- set i = i + 1;
    -- end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarReceta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarReceta`(
	varCodigo	CHAR(45),	varNombre	CHAR(255))
BEGIN

	DECLARE varIdReceta CHAR(36);
    
    SELECT 	UUID()
	INTO	varIdReceta;
    
    INSERT INTO receta	
	(	id_receta,		codigo,		nombre,		status,	fecha, cantidad ,importe	)
	SELECT 
		varIdReceta,	varCodigo,	varNombre,	'A',	NOW(), 0, 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarRegistroEmpadre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarRegistroEmpadre`(
	varIdHembra		CHAR(36),	varIdSemental	CHAR(36))
BEGIN
    DECLARE varIdRegistroEmpadre CHAR(36);

	SELECT UUID()
	INTO varIdRegistroEmpadre;

	INSERT registro_empadre
    (   id_registro_empadre,    fecha,	id_hembra,		id_semental,	
		status_gestacional,		aborto, activo,			id_tipo_parto )
    SELECT
        varIdRegistroEmpadre,	NOW(),	varIdHembra,	varIdSemental,
		'N',					'N',	'S',			NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarServicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarServicio`(
			varIdRancho CHAR(36),		varIdHembra CHAR(36),		varFecha DATETIME,		varTipoReproduccion CHAR(36),
            varIdReproductor CHAR(36),	varIdInseminador CHAR(36),		varIdPajilla CHAR(36),		varNumeroPajillas INT(11))
BEGIN

	DECLARE varIdServicio CHAR(36);
    
    SELECT	UUID()
    INTO	varIdServicio;
    
    INSERT servicio (id_servicio,	id_rancho,	id_hembra,	fecha,	tipo_reproduccion,	id_reproductor,	id_inseminador,
					 id_pajilla,	numero_pajillas,	status)
	SELECT			 varIdServicio,	varIdRancho, varIdHembra, varFecha, varTipoReproduccion, varIdReproductor, varIdInseminador,
					 varIdPajilla, varNumeroPajillas,	'S';
                     
	UPDATE animal set estado_vientre = '1091ff56-317f-11e6-8267-10c37b693112'
    WHERE id_animal = varIdHembra;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarStatusGestacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarStatusGestacion`(
    varIdRegistroEmpadre	CHAR(36),	varStatus		CHAR(2),
	varFechaChequeo			DATETIME,	varIdTipoParto	CHAR(36)	)
BEGIN
	
	DECLARE varIdStatusGestacional CHAR(36);

	SELECT	UUID()
	INTO 	varIdStatusGestacional;

	INSERT INTO status_gestacional(
		id_status_gestacional,	id_registro_empadre,	status, 	fecha_chequeo, 		
		id_tipo_parto)
	SELECT
		varIdStatusGestacional,	varIdRegistroEmpadre,	varStatus,	varFechaChequeo,	
		varIdTipoParto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarTacto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarTacto`(
			varIdRancho CHAR(36),		varIdHembra CHAR(36),	varFecha DATETIME,		varIdHallazgo CHAR(36),
            varIdReproductor CHAR(36),	varObservacion VARCHAR(255),		varDiagnostico varCHAR(45),
            varDiasAbierto INT(11))
BEGIN

	DECLARE varIdTacto CHAR(36);
    
    SELECT UUID()
    INTO varIdTacto;
    
    INSERT tacto (id_tacto,		id_rancho,	id_hembra, 	id_hallazgo,	fecha,		id_reproductor,		observacion,
				  dias_abierto,		diagnostico, status)
	SELECT		  varIdTacto,	varIdRancho,	varIdHembra,	varIdHallazgo,	varFecha,	varIdReproductor,	varObservacion,
				  varDiasAbierto,	varDiagnostico, 'S';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarTratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarTratamiento`(
	varCodigo	CHAR(45),	varNombre	CHAR(255))
BEGIN

	DECLARE varIdTratamiento CHAR(36);
	
	SELECT 	UUID()
	INTO	varIdTratamiento;

	INSERT INTO tratamiento	
	(	id_tratamiento,		codigo,		nombre,		status,	fecha	)
	SELECT 
		varIdTratamiento,	varCodigo,	varNombre,	'A',	NOW();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarTratamientoAnimal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarTratamientoAnimal`(
	varIdRancho	CHAR(36),	varIdTratamiento	CHAR(36),	
	varIdAnimal	CHAR(36),	varDosisTratamiento	DECIMAL(20,4),
	varFecha			DATETIME)
BEGIN
	DECLARE	varIdMedicina 		CHAR(36);
	DECLARE	varDosisMedicinas	DECIMAL(20,4);
	DECLARE varDosisTotal		DECIMAL(20,4);
	
	DECLARE vb_termina BOOL DEFAULT FALSE;
	
	DECLARE curMedicina CURSOR
	FOR	SELECT mt.id_medicina,	mt.dosis        
		FROM   medicina_tratamiento mt,	medicina m                 
		WHERE  mt.id_medicina		=	m.id_medicina 
		AND		mt.id_tratamiento	=	varIdTratamiento
        AND		mt.status = 'S';
	
	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;	

	OPEN curMedicina;

	Recorre_Cursor: LOOP
	
		FETCH curMedicina INTO varIdMedicina, varDosisMedicinas;

		IF vb_termina THEN
        
			LEAVE Recorre_Cursor;
		END IF;
		
		SET	varDosisTotal = varDosisMedicinas * varDosisTratamiento;

		CALL agregarMedicinaAnimal(
			varIdRancho, 	varIdMedicina,	varIdAnimal,	
			varDosisTotal,	varFecha);

	END LOOP;
	
	CLOSE curMedicina;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarTratamientoAnimalHospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarTratamientoAnimalHospital`(
	varIdRancho	CHAR(36),	varIdTratamiento	CHAR(36),	
	varIdAnimal	CHAR(36),	varDosisTratamiento	DECIMAL(20,4),
	varFecha			DATETIME,	varCostoVerinario	DECIMAL(20,4),
    varDiagnostico		VARCHAR(45),		varIdHospital		CHAR(36))
BEGIN
	DECLARE	varIdMedicina 		CHAR(36);
	DECLARE	varDosisMedicinas	DECIMAL(20,4);
	DECLARE varDosisTotal		DECIMAL(20,4);
    
    DECLARE varCostoVeInd		DECIMAL(20,4);
    
    
	
	DECLARE vb_termina BOOL DEFAULT FALSE;
	
	DECLARE curMedicina CURSOR
	FOR	SELECT mt.id_medicina,	mt.dosis        
		FROM   medicina_tratamiento mt,	medicina m                 
		WHERE  mt.id_medicina		=	m.id_medicina 
		AND		mt.id_tratamiento	=	varIdTratamiento
        AND		mt.status = 'S';
	
	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;
	
  
	SELECT   varCostoVerinario / COUNT(*)
    INTO	varCostoVeInd
		FROM   medicina_tratamiento mt,	medicina m                 
		WHERE  mt.id_medicina		=	m.id_medicina 
		AND		mt.id_tratamiento	=	varIdTratamiento
        AND		mt.status = 'S';
    
	OPEN curMedicina;

	Recorre_Cursor: LOOP
	
		FETCH curMedicina INTO varIdMedicina, varDosisMedicinas;

		IF vb_termina THEN
        
			LEAVE Recorre_Cursor;
		END IF;
		
		SET	varDosisTotal = varDosisMedicinas * varDosisTratamiento;

		CALL agregarMedicinaAnimalHospital(
			varIdRancho, 	varIdMedicina,	varIdAnimal,	
			varDosisTotal,	varFecha,	varCostoVeInd,
            varDiagnostico,				varIdHospital);

	END LOOP;
	
	CLOSE curMedicina;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarUsuario`(
varLog CHAR(255), varPassword CHAR(255), 
varNombre CHAR(255), varApellido CHAR(255), 
varId_estado CHAR(36), varId_ciudad CHAR(36), 
varCorreo VARCHAR(255), varFecha varchar(36), varTelefono VARCHAR(10))
BEGIN
	DECLARE var_id_usuario	CHAR(36); 

/*		SET @QUERY = CONCAT_WS('','GRANT SELECT, INSERT, DELETE, UPDATE, EXECUTE on *.* TO ',CHAR(39) ,varLog,CHAR(39), '@', CHAR(39) , '%' , CHAR(39), ' IDENTIFIED BY', CHAR(39) , varPassword , CHAR(39), 'WITH GRANT OPTION');

		PREPARE stmt1 FROM @QUERY;	
		EXECUTE stmt1;
*/
	SELECT	UUID()
	INTO	var_id_usuario;

	INSERT INTO usuario
		(	id_usuario,
			log,
			password,
            nombre, 
            apellido,
            id_estado, 
            id_ciudad, 
            correo, 
            fecha_nacimiento, 
            telefono
            )
	SELECT	var_id_usuario, 
    varLog, 
    varPassword, 
    varNombre, 
	varApellido, 
    varId_estado, 
    varId_ciudad, 
	varCorreo, 
    varFecha, 
    varTelefono;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `animalesPorCorral` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `animalesPorCorral`(
	varIdCorral CHAR(36)	)
BEGIN
	
	UPDATE corral
	SET num_animales =	(	SELECT	count(	*	)
							FROM	animal, corral_animal
							WHERE	STATUS					=	'A'
							AND		corral_animal.id_corral	=	corral.id_corral
							and 	corral_animal.id_animal	=	animal.id_animal),
		
		total_kilos	=	(	SELECT	SUM(	peso_actual	) 
							FROM	animal, corral_animal
							WHERE	STATUS					=	'A'
							AND		corral_animal.id_corral	=	corral.id_corral
							and 	corral_animal.id_animal	=	animal.id_animal),
		
		peso_minimo	=	(	SELECT	MIN(	peso_actual	)
							FROM	animal, corral_animal
							WHERE	STATUS					=	'A'
							AND		corral_animal.id_corral	=	corral.id_corral
							and 	corral_animal.id_animal	=	animal.id_animal),
		
		peso_maximo	=	(	SELECT	MAX(	peso_actual	)
							FROM	animal, corral_animal
							WHERE	STATUS					=	'A'
							AND		corral_animal.id_corral	=	corral.id_corral
							and 	corral_animal.id_animal	=	animal.id_animal),
		
		peso_promedio	=	(	SELECT	AVG(	peso_actual	)
								FROM	animal, corral_animal
								WHERE	STATUS					=	'A'
								AND		corral_animal.id_corral	=	corral.id_corral
								and 	corral_animal.id_animal	=	animal.id_animal),

		peso_ganancia	=	(	SELECT	SUM(	peso_actual	) - SUM(	peso_compra) 
								FROM	animal, corral_animal
								WHERE	STATUS					=	'A'
								AND		corral_animal.id_corral	=	corral.id_corral
								and 	corral_animal.id_animal	=	animal.id_animal),

		id_raza			=	(	SELECT	CASE	WHEN a1.count = 1
												THEN id_raza
												ELSE a1.mixto
										END
								FROM	(	SELECT	id_raza,	COUNT(DISTINCT id_raza) AS count, 
											(	SELECT	id_raza	
												FROM	raza
												WHERE	descripcion = 'Mixto' ) mixto
											FROM	animal a, corral_animal ca
											WHERE	a.id_animal	=	ca.id_animal
											AND  	id_corral	=	varIdCorral		)	a1	),                                                                                      
		id_sexo			=	(	SELECT	CASE	WHEN a1.count = 1
												THEN id_sexo
												ELSE a1.mixto
										END
								FROM	(	SELECT	id_sexo,	COUNT(DISTINCT id_sexo) AS count, 
											(	SELECT	id_sexo	
												FROM	sexo
												WHERE	descripcion = 'Mixto' ) mixto
												FROM	animal a, corral_animal ca
												WHERE	a.id_animal = ca.id_animal
												AND		id_corral 	= varIdCorral	)	a1	),
		
        total_kilos_iniciales	=	(	SELECT	SUM(peso_compra)										
										FROM    corral_animal c, animal a
										WHERE   c.id_animal	=	a.id_animal
										AND     c.id_corral	=	corral.id_corral),
         
		total_costo_medicina	=	(	SELECT  SUM( ma.dosis * rm.costo_promedio)
										FROM 	corral_animal ca, medicina_animal ma, medicina m, rancho_medicina rm
										WHERE 	ma.id_medicina	=	m.id_medicina
                                        AND 	rm.id_medicina 	= 	m.id_medicina
                                        AND		ca.id_animal	=	ma.id_animal
										AND		ma.id_rancho	=	ca.id_rancho
										AND 	rm.id_rancho	= 	corral.id_rancho
                                        AND		ca.id_rancho	=	corral.id_rancho
										AND		ca.id_corral	=	corral.id_corral
                                        AND		ma.status = 'S'),
                                        
		ganancia_promedio	=	(	SELECT	AVG(	animal.ganancia_promedio		)
									FROM	animal, corral_animal
									WHERE	STATUS					=	'A'
									AND		corral_animal.id_corral	=	corral.id_corral
									and 	corral_animal.id_animal	=	animal.id_animal),
		
        promedio_alimento	=	(	SELECT	AVG(	animal.promedio_alimento		)
									FROM	animal, corral_animal
									WHERE	STATUS					=	'A'
									AND		corral_animal.id_corral	=	corral.id_corral
									and 	corral_animal.id_animal	=	animal.id_animal	),

		alimento_ingresado	=	(	SELECT	sum(	animal.total_alimento		)
									FROM	animal, corral_animal
									WHERE	STATUS					=	'A'
									AND		corral_animal.id_corral	=	corral.id_corral
									and 	corral_animal.id_animal	=	animal.id_animal	),
		
        conversion_alimenticia	=	(	SELECT corral.promedio_alimento / corral.ganancia_promedio 	),
        
        merma				=		(	SELECT     AVG(a.porcentaje_merma)
										FROM    animal a,    corral_animal ca
										WHERE    a.id_animal = ca.id_animal
											AND ca.id_corral = corral.id_corral	),
                                            
		medicina_promedio	=	(	SELECT total_costo_medicina / num_animales
										),
                                        
		total_costo_flete	=		(	SELECT	SUM(a.costo_flete) 
										FROM	animal a,	corral_animal ca
										WHERE	ca.id_animal = a.id_animal 	
                                        AND 	ca.id_corral = corral.id_corral	),
                                        
		dias_corral		=	(	SELECT ROUND(AVG(DATEDIFF(m.fecha, a.fecha_ingreso))) 
								FROM movimiento m
									LEFT OUTER JOIN clase_movimiento c ON m.id_clase_movimiento = c.id_clase_movimiento, 
									detalle_movimiento d, rancho r, animal a, corral_animal ca
								WHERE    m.id_rancho = r.id_rancho
									AND m.id_concepto = r.con_salida
									AND m.id_rancho = d.id_rancho
									AND m.id_movimiento = d.id_movimiento
									AND m.id_concepto = d.id_concepto
									AND d.id_animal = a.id_animal
									AND d.id_animal = ca.id_animal
									AND ca.id_corral = corral.id_corral
									AND a.status = 'A'),
		
        fecha_inicio			=		(	SELECT MIN(a.fecha_ingreso) 
										FROM animal a, corral_animal ca
										WHERE a.id_animal = ca.id_animal 
                                        AND corral.id_corral = ca.id_corral 	)
									
	WHERE corral.id_corral	=	varIdCorral;    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `animalesPorCorralCerrado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `animalesPorCorralCerrado`(
	varIdCorral CHAR(36)	)
BEGIN
	
	UPDATE corral
	SET num_animales =	(	SELECT	count(	*	)
							FROM	animal, corral_animal
							WHERE	STATUS					=	'V'
							AND		corral_animal.id_corral	=	corral.id_corral
							and 	corral_animal.id_animal	=	animal.id_animal),
		
        dias_corral		=	(	SELECT ROUND(AVG(DATEDIFF(m.fecha, a.fecha_ingreso))) 
								FROM movimiento m
									LEFT OUTER JOIN clase_movimiento c ON m.id_clase_movimiento = c.id_clase_movimiento, 
									detalle_movimiento d, rancho r, animal a, corral_animal ca
								WHERE    m.id_rancho = r.id_rancho
									AND m.id_concepto = r.con_salida
									AND m.id_rancho = d.id_rancho
									AND m.id_movimiento = d.id_movimiento
									AND m.id_concepto = d.id_concepto
									AND d.id_animal = a.id_animal
									AND d.id_animal = ca.id_animal
									AND ca.id_corral = corral.id_corral
									AND a.status = 'V'),
		
		total_kilos	=	(	SELECT	SUM(	peso_actual	) 
							FROM	animal, corral_animal
							WHERE	STATUS					=	'V'
							AND		corral_animal.id_corral	=	corral.id_corral
							and 	corral_animal.id_animal	=	animal.id_animal),
		
		peso_minimo	=	(	SELECT	MIN(	peso_actual	)
							FROM	animal, corral_animal
							WHERE	STATUS					=	'V'
							AND		corral_animal.id_corral	=	corral.id_corral
							and 	corral_animal.id_animal	=	animal.id_animal),
		
		peso_maximo	=	(	SELECT	MAX(	peso_actual	)
							FROM	animal, corral_animal
							WHERE	STATUS					=	'V'
							AND		corral_animal.id_corral	=	corral.id_corral
							and 	corral_animal.id_animal	=	animal.id_animal),
		
		peso_promedio	=	(	SELECT	AVG(	peso_actual	)
								FROM	animal, corral_animal
								WHERE	STATUS					=	'V'
								AND		corral_animal.id_corral	=	corral.id_corral
								and 	corral_animal.id_animal	=	animal.id_animal),

		peso_ganancia	=	(	SELECT	SUM(	peso_actual	) - SUM(	peso_compra) 
								FROM	animal, corral_animal
								WHERE	STATUS					=	'V'
								AND		corral_animal.id_corral	=	corral.id_corral
								and 	corral_animal.id_animal	=	animal.id_animal),

		id_raza			=	(	SELECT	CASE	WHEN a1.count = 1
												THEN id_raza
												ELSE a1.mixto
										END
								FROM	(	SELECT	id_raza,	COUNT(DISTINCT id_raza) AS count, 
											(	SELECT	id_raza	
												FROM	raza
												WHERE	descripcion = 'Mixto' ) mixto
											FROM	animal a, corral_animal ca
											WHERE	a.id_animal	=	ca.id_animal
											AND  	id_corral	=	varIdCorral		)	a1	),                                                                                      
		id_sexo			=	(	SELECT	CASE	WHEN a1.count = 1
												THEN id_sexo
												ELSE a1.mixto
										END
								FROM	(	SELECT	id_sexo,	COUNT(DISTINCT id_sexo) AS count, 
											(	SELECT	id_sexo	
												FROM	sexo
												WHERE	descripcion = 'Mixto' ) mixto
												FROM	animal a, corral_animal ca
												WHERE	a.id_animal = ca.id_animal
												AND		id_corral 	= varIdCorral	)	a1	),
		
        total_kilos_iniciales	=	(	SELECT	SUM(peso_compra)										
										FROM    corral_animal c, animal a
										WHERE   c.id_animal	=	a.id_animal
										AND     c.id_corral	=	corral.id_corral),
         
		total_costo_medicina	=	(	SELECT  SUM( ma.dosis * rm.costo_promedio)
										FROM 	corral_animal ca, medicina_animal ma, medicina m, rancho_medicina rm
										WHERE 	ma.id_medicina	=	m.id_medicina
                                        AND 	rm.id_medicina 	= 	m.id_medicina
                                        AND		ca.id_animal	=	ma.id_animal
										AND		ma.id_rancho	=	ca.id_rancho
										AND 	rm.id_rancho	= 	corral.id_rancho
                                        AND		ca.id_rancho	=	corral.id_rancho
										AND		ca.id_corral	=	corral.id_corral
                                        AND		ma.status = 'S'),
                                        
		total_costo_flete	=		(	SELECT	SUM(a.costo_flete) 
										FROM	animal a,	corral_animal ca
										WHERE	ca.id_animal = a.id_animal 	
                                        AND 	ca.id_corral = corral.id_corral	),
                                        
       fecha_inicio			=		(	SELECT MIN(a.fecha_ingreso) 
										FROM animal a, corral_animal ca
										WHERE a.id_animal = ca.id_animal 
                                        AND corral.id_corral = ca.id_corral 	),                                 
                                        
		ganancia_promedio	=	(	SELECT	AVG(	animal.ganancia_promedio		)
									FROM	animal, corral_animal
									WHERE	STATUS					=	'V'
									AND		corral_animal.id_corral	=	corral.id_corral
									and 	corral_animal.id_animal	=	animal.id_animal),
		
        promedio_alimento	=	(	SELECT	AVG(	animal.promedio_alimento		)
									FROM	animal, corral_animal
									WHERE	corral_animal.id_corral	=	corral.id_corral
									and 	corral_animal.id_animal	=	animal.id_animal	),
                                    
		medicina_promedio	=	(	SELECT total_costo_medicina / num_animales
										),

		alimento_ingresado	=	(	SELECT	sum(	animal.total_alimento		)
									FROM	animal, corral_animal
									WHERE	corral_animal.id_corral	=	corral.id_corral
									and 	corral_animal.id_animal	=	animal.id_animal	),
                                    
		conversion_alimenticia	=	(	SELECT corral.promedio_alimento / corral.ganancia_promedio 	),
                                        
		merma				=		(	SELECT     AVG(a.porcentaje_merma)
										FROM    animal a,    corral_animal ca
										WHERE    a.id_animal = ca.id_animal
											AND ca.id_corral = corral.id_corral	)
		
									
	WHERE corral.id_corral	=	varIdCorral;    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calcula_existencias_costos_medicna` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcula_existencias_costos_medicna`(
	varIdRancho	CHAR(36),	varIdMedicina	CHAR(36)	)
BEGIN
	
    -- Obtiene Existencia Inicial
	-- Suma Cantidades en Compras
    -- Suma Cantidades en Aplicaciones
	-- (	Existencia Inicial + Compras	)	-	Aplicaciones
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cierreCorral` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cierreCorral`(
varIdCorral CHAR(36), varIdRancho CHAR(36))
BEGIN

UPDATE corral c 
SET 
    status = 'C',
    c.fecha_cierre = NOW()
WHERE
    c.id_corral = varIdCorral
        AND c.id_rancho = varIdRancho;
        
CALL animalesPorCorralCerrado(varIdCorral);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `corralPesajesGrafica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `corralPesajesGrafica`(
	varIdRancho	CHAR(36),	varIdCorral CHAR(36))
BEGIN
	DECLARE	varfechaMin		DATETIME;
	DECLARE varPesoInicial	DECIMAL(20,4);
    DECLARE	varFechaMax		DATETIME;
        
	SELECT	MIN(fecha),		MAX(fecha) -- c.*, r.con_pesaje, fecha
    INTO	varfechaMin,	varFechaMax
	FROM	corral_animal c, rancho r, movimiento m, detalle_movimiento d 
	WHERE 	m.id_rancho 	=	d.id_rancho
	AND		m.id_movimiento	=	d.id_movimiento
	AND		m.id_concepto	=	d.id_concepto
	AND		c.id_animal		=	d.id_animal
	AND		r.con_pesaje	=	m.id_concepto
	AND		r.id_rancho		=	m.id_rancho
	AND		r.id_rancho 	= 	c.id_rancho
	AND		c.id_rancho 	= 	varIdRancho -- 'cb09a99b-0552-11e5-be6c-a4db30742c49'
	AND	  	c.id_corral 	= 	varIdCorral;	-- '7773887c-092a-11e5-8440-a4db30742c49';
/*    
	SELECT	 SUM(peso)
	INTO	varPesoInicial
	FROM	corral_animal c, rancho r, movimiento m, detalle_movimiento d 
	WHERE 	m.id_rancho 	=	d.id_rancho
	AND		m.id_movimiento	=	d.id_movimiento
	AND		m.id_concepto	=	d.id_concepto
	AND		c.id_animal		=	d.id_animal
	AND		r.con_pesaje	=	m.id_concepto
	AND		r.id_rancho		=	m.id_rancho
	AND		r.id_rancho		= c.id_rancho
	AND		c.id_rancho 	=  varIdRancho
	AND	  	c.id_corral 	= varIdCorral
	AND		CONVERT(m.fecha,  DATE) = CONVERT(varfechaMin, DATE);
*/

	IF varFechaMax = null then
		SET varFechaMax	= DATE_ADD(CONVERT(varfechaMin, DATE),INTERVAL 1 SECOND);
    END IF;

	SELECT	COALESCE(varfechaMin,'1900-01-01 00:00:00'), COALESCE(total_kilos_iniciales,0.0)
    FROM 	corral 
	WHERE 	id_rancho = varIdRancho -- 'cb09a99b-0552-11e5-be6c-a4db30742c49'
	AND	  	id_corral = varIdCorral
	UNION
	SELECT	COALESCE(CONVERT(varFechaMax, DATETIME),'1900-01-01 00:00:00'), COALESCE(total_kilos,0.0)
	FROM 	corral 
	WHERE 	id_rancho = varIdRancho -- 'cb09a99b-0552-11e5-be6c-a4db30742c49'
	AND	  	id_corral = varIdCorral;    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_usuario`(
	PARlogin	VARCHAR(45),	PARpassword	VARCHAR(45))
BEGIN
	DECLARE var_id_usuario	CHAR(36);

	IF	NOT	EXISTS(	SELECT	*
					FROM	usuario
					WHERE	log	=	PARlogin)
	THEN
		SET @QUERY = CONCAT_WS('','grant SELECT,INSERT,DELETE,UPDATE,EXECUTE on eon.* to `',CHAR(39) ,PARlogin,CHAR(39), '`@`', CHAR(39) , '%' , CHAR(39), '` identified by `', CHAR(39) , PARpassword , CHAR(39));

		PREPARE stmt1 FROM @QUERY;
		EXECUTE stmt1;
	END IF;

	SELECT	UUID()
	INTO	var_id_usuario;

	INSERT INTO usuario
		(	id_usuario,
			log,
			password	)
	SELECT	var_id_usuario,	
			PARlogin,
			PARpassword;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `duplicaMovimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `duplicaMovimiento`(
		varIdRancho			CHAR(36), 	varIdMovimientoOrigen	CHAR(36), 
		varConceptoOrigen	CHAR(36),	varIdRanchoDestino		CHAR(36),
		varConceptoDestino	CHAR(36)	)
BEGIN

	DECLARE	varIdMovimientoDestino CHAR(36);
	
	SELECT	UUID()
	INTO	varIdMovimientoDestino;

	INSERT INTO movimiento(
			id_rancho,				id_movimiento,			id_concepto,		fecha,					
			id_rancho_origen,		id_corral_origen,		id_rancho_destino,	id_corral_destino,
			id_clase_movimiento,	numero_pedido,			id_cliente,			necropcia,	
			dx_muerte,				etapa_reproductiva,		causa_entrada,		observacion,
			peso)
	SELECT	varIdRanchoDestino,		varIdMovimientoDestino,	varConceptoDestino,	fecha,			
			id_rancho,				id_corral_origen,		varIdRanchoDestino,	id_corral_destino,
			id_clase_movimiento,	numero_pedido,			id_cliente,			necropcia,
			dx_muerte,				etapa_reproductiva,		causa_entrada,		observacion,
			peso
	FROM	movimiento m2
	WHERE	m2.id_rancho		=	varIdRancho
	AND		m2.id_concepto		=	varConceptoOrigen
	AND		m2.id_movimiento	=	varIdMovimientoOrigen;

	INSERT	INTO detalle_movimiento(
			id_rancho,			id_movimiento,			id_concepto,		id_detalle,	
			id_animal)
	SELECT	varIdRanchoDestino,	varIdMovimientoDestino,	varConceptoDestino,	id_detalle,	
			id_animal
	FROM	detalle_movimiento d2
	WHERE	d2.id_rancho		=	varIdRancho	
	AND		d2.id_concepto		=	varConceptoOrigen
	AND		d2.id_movimiento	=	varIdMovimientoOrigen;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarAlimento`(
	varId_alimento CHAR(36))
BEGIN

	UPDATE alimento
	set status		=	'N'
	where id_alimento = varId_alimento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarAlimentoReceta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarAlimentoReceta`(
	varIdReceta	CHAR(36),	varIdAlimento	CHAR(36))
BEGIN

	DECLARE varImporteReceta DECIMAL(20,2);
    DECLARE varCantidadReceta DECIMAL(20,2);
	DECLARE varCantidad DECIMAL(20,2);
    DECLARE varImporteAlimento DECIMAL(20,2);
    
    SELECT cantidad
    INTO varCantidad
    FROM alimento_receta
    WHERE id_receta = varIdReceta 
    AND id_alimento = varIdAlimento;
    
    SELECT importe
    INTO varImporteAlimento
    FROM alimento_receta
    WHERE id_receta = varIdReceta 
    AND id_alimento = varIdAlimento;
	
    SELECT SUM(receta.cantidad) - varCantidad
    INTO varCantidadReceta
    FROM receta
    WHERE receta.id_receta = varIdReceta;
    
    -- actualizar importe a receta 
    SELECT SUM(receta.importe) - varImporteAlimento
    INTO varImporteReceta
    FROM receta
    WHERE receta.id_receta = varIdReceta;
    
    /*DELETE FROM alimento_receta
	WHERE	id_receta	=	varIdReceta
	AND		id_alimento		=	varIdAlimento;*/
    UPDATE alimento_receta
	set status		=	'N'
	where id_alimento = varIdAlimento
    AND	  id_receta = varIdReceta;
    
	UPDATE receta
    SET receta.importe = varImporteReceta, 
    receta.cantidad = varCantidadReceta
    WHERE receta.id_receta = varIdReceta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarAnimal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarAnimal`(	
	varIdAnimal	CHAR(36)	)
BEGIN
	
	UPDATE animal
	SET 	status	=	'E'
	WHERE	id_animal	=	varIdAnimal;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarAnimalGrupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarAnimalGrupo`(
	varIdRancho CHAR(36),	varIdUsuario	CHAR(36),
	varIdAnimal	CHAR(36),	varTipo			CHAR(255))
BEGIN

	DELETE FROM animal_grupo
	WHERE	id_rancho	=	varIdRancho
	AND		id_usuario	=	varIdUsuario
	AND		id_animal	=	varIdAnimal
	AND		tipo		=	vartipo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarAnimalGrupoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarAnimalGrupoUsuario`(
	varIdRancho CHAR(36),	varIdUsuario	CHAR(36),
	varTipo		CHAR(255)							)
BEGIN

	DELETE FROM animal_grupo
	WHERE	id_rancho	=	varIdRancho
	AND		id_usuario	=	varIdUsuario
	AND		tipo		=	vartipo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarCliente`(
	varIdCliente	CHAR(36))
BEGIN

	UPDATE	cliente
	SET		status		=	'E'
	WHERE	id_cliente	=	varIdCliente;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarCompraAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarCompraAlimento`(
				varIdCompra CHAR(36),	varIdRancho CHAR(36))
BEGIN

	Declare varCantidad INT(11);
    DECLARE varIdAlimento CHAR(36);
    DECLARE varPrecioUnitario2 Decimal(20,4);
    
    DECLARE vb_termina BOOL DEFAULT FALSE;
    
    DECLARE curDetalleCompra CURSOR
	FOR	SELECT dc.id_alimento, dc.cantidad, dc.precio_unitario        
		FROM   detalle_compra_alimento dc                
		WHERE  dc.id_compra =	varIdCompra;
        
	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;
    
    OPEN curDetalleCompra;

	Recorre_Cursor: LOOP
	
		FETCH curDetalleCompra INTO varIdAlimento, varCantidad, varPrecioUnitario2;

		IF vb_termina THEN
        
			LEAVE Recorre_Cursor;
		END IF;
        
        
        Begin
        
		DECLARE varUltimaCompra 		DATETIME;
		DECLARE	varCantidadRestar		INT(11);
		DECLARE	varPrecioUnitario		DECIMAL(20,4);
		DECLARE	varExistenciaActual		INT(11);
		DECLARE	varCostoPromedioActual	DECIMAL(20,4);
		DECLARE	varCostoPromedio		DECIMAL(20,4);
        
        
		DECLARE varPrecioUnitario1 Decimal(20,4);
        -- DECLARE varUltimaCompra DATETIME;
        
        SET		varCantidadRestar	=	varCantidad,
				varPrecioUnitario2	=	varPrecioUnitario2 ;
        
        Select 	c.fecha, dc.precio_unitario
        into	varUltimaCompra, varPrecioUnitario1
        FROM 	compra c, detalle_compra_alimento dc
        WHERE	c.id_compra = dc.id_compra
        AND		dc.id_alimento = varIdAlimento
        AND		c.id_compra <>	varIdCompra
        AND		c.status = 'S'
        AND		c.id_rancho = varIdRancho
		ORDER BY c.fecha DESC
        LIMIT 1;
        
        SELECT	existencia,				costo_promedio
		INTO	varExistenciaActual,	varCostoPromedioActual
		FROM	rancho_alimento
		WHERE	id_alimento 	=	varIdAlimento
		AND		id_rancho		=	varIdRancho;
        
        SET		varPrecioUnitario	=	varPrecioUnitario1;
        
        SET	varCostoPromedio	=	
		( ( varExistenciaActual * varCostoPromedioActual ) - ( varCantidadRestar * varPrecioUnitario2 ) )
														   / 
									 ( varExistenciaActual - varCantidadRestar ); -- falta revisar
        
        UPDATE	rancho_alimento
		SET		ultima_compra	=	varUltimaCompra,			
				ultimo_costo	=	varPrecioUnitario,
				costo_promedio	=	varCostoPromedio,
				existencia		=	existencia	-	varCantidadRestar
		WHERE	id_alimento 	=	varIdAlimento
		AND		id_rancho		=	varIdRancho;
        
        call actualizaCostosRecetas(varIdAlimento, varIdRancho);
        
	 	END;

	END LOOP;
	
	CLOSE curDetalleCompra;
    
    UPDATE compra SET status = 'N' WHERE id_compra = varIdCompra AND id_rancho = varIdRancho;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarCompraMedicamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarCompraMedicamento`(
				varIdCompra CHAR(36),	varIdRancho CHAR(36))
BEGIN

	Declare varCantidad INT(11);
    DECLARE varIdMedicina CHAR(36);
    DECLARE varPresentacion2, varPrecioUnitario2 Decimal(20,4);
    
    DECLARE vb_termina BOOL DEFAULT FALSE;
    
    DECLARE curDetalleCompra CURSOR
	FOR	SELECT dc.id_medicina, dc.cantidad, dc.presentacion, dc.precio_unitario        
		FROM   detalle_compra dc                
		WHERE  dc.id_compra =	varIdCompra;
        
	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;
    
    OPEN curDetalleCompra;

	Recorre_Cursor: LOOP
	
		FETCH curDetalleCompra INTO varIdMedicina, varCantidad, varPresentacion2, varPrecioUnitario2;

		IF vb_termina THEN
        
			LEAVE Recorre_Cursor;
		END IF;
        
        
        Begin
        
		DECLARE varUltimaCompra 		DATETIME;
		DECLARE	varCantidadRestar		INT(11);
		DECLARE	varPrecioUnitario		DECIMAL(20,4);
		DECLARE	varExistenciaActual		INT(11);
		DECLARE	varCostoPromedioActual	DECIMAL(20,4);
		DECLARE	varCostoPromedio		DECIMAL(20,4);
        
        
		DECLARE varPresentacion1, varPrecioUnitario1 Decimal(20,4);
        -- DECLARE varUltimaCompra DATETIME;
        
        SET		varCantidadRestar	=	varCantidad 		*	varPresentacion2,
				varPrecioUnitario2	=	(varPrecioUnitario2 /	varPresentacion2) *1.16;
        
        Select 	c.fecha,  dc.presentacion, dc.precio_unitario
        into	varUltimaCompra, varPresentacion1, varPrecioUnitario1
        FROM 	compra c, detalle_compra dc
        WHERE	c.id_compra = dc.id_compra
        AND		dc.id_medicina = varIdMedicina
        AND		c.id_compra <>	varIdCompra
        AND		c.status = 'S'
        AND		c.id_rancho = varIdRancho
        ORDER BY c.fecha DESC
        LIMIT 1;
        
        SELECT	existencia,				costo_promedio
		INTO	varExistenciaActual,	varCostoPromedioActual
		FROM	rancho_medicina
		WHERE	id_medicina 	=	varIdMedicina
		AND		id_rancho		=	varIdRancho;
        
        SET		varPrecioUnitario	=	(varPrecioUnitario1 /	varPresentacion1)*1.16;
        
        SET	varCostoPromedio	=	
		( ( varExistenciaActual * varCostoPromedioActual ) - ( varCantidadRestar * varPrecioUnitario2 ) )
														   / 
									 ( varExistenciaActual - varCantidadRestar ); -- falta revisar
        
        UPDATE	rancho_medicina
		SET		ultima_compra	=	varUltimaCompra,			
				ultimo_costo	=	varPrecioUnitario,
				costo_promedio	=	varCostoPromedio,
				existencia		=	existencia	-	varCantidadRestar
		WHERE	id_medicina 	=	varIdMedicina
		AND		id_rancho		=	varIdRancho;
        
	 	END;

	END LOOP;
	
	CLOSE curDetalleCompra;
    
    UPDATE compra SET status = 'N' WHERE id_compra = varIdCompra AND id_rancho = varIdRancho;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarCorral` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarCorral`(
	varIdRancho		CHAR(36),	varIdCorral	CHAR(36))
BEGIN

	UPDATE corral
    SET		status = 'E'
    WHERE   id_rancho 	=	varIdRancho
    AND		id_corral	=	varIdCorral;    	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarCria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarCria`(
	varIdRancho int,			varIdCria int)
BEGIN
	
	UPDATE cria
	set status = 'E'
	where	id_rancho	=	varIdRancho
	and		id_cria		=	varIdCria;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarDetalleGastosOrden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarDetalleGastosOrden`(
			varIdOrdenGanado		CHAR(36))
BEGIN
	
    UPDATE	detalle_gastos_orden
    set		status = 'N'
    where	id_orden = varIdOrdenGanado
    AND		tipo_gasto = 'Transportacion';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarDetalleOrdenAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarDetalleOrdenAlimento`(
		varIdOrdenAlimento		CHAR(36))
BEGIN
	
    UPDATE	detalle_orden_alimento
    set		status = 'N'
    where	id_orden_alimento = varIdOrdenAlimento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarDetalleOrdenGanado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarDetalleOrdenGanado`(
			varIdOrdenGanado		CHAR(36))
BEGIN
	
    UPDATE	detalle_orden_ganado
    set		status = 'N'
    where	id_orden_ganado = varIdOrdenGanado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarDetalleOrdenGastos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarDetalleOrdenGastos`(
			varIdOrdenGanado		CHAR(36))
BEGIN
	
    UPDATE	detalle_gastos_orden
    set		status = 'N'
    where	id_orden_ganado = varIdOrdenGanado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarDetalleOrdenMedicina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarDetalleOrdenMedicina`(
		varIdOrdenMedicina		CHAR(36))
BEGIN

	UPDATE	detalle_orden_medicina
    set		status = 'N'
    where	id_orden_medicina = varIdOrdenMedicina;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarDetalleOtrosGastosOrden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarDetalleOtrosGastosOrden`(
			varIdOrdenGanado		CHAR(36))
BEGIN
	
    UPDATE	detalle_gastos_orden
    set		status = 'N'
    where	id_orden = varIdOrdenGanado
    AND		tipo_gasto = 'Otros';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarInfoSanitaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarInfoSanitaria`(
			varIdInfo	CHAR(36))
BEGIN
	
	UPDATE	info_sanitaria
    SET		status = 'S'
	WHERE	id_info_sanitaria = varIdInfo; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarIngresoAlimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarIngresoAlimento`(
				varIdIngresoAlimento CHAR(36), varIdRancho CHAR(36))
BEGIN

	DECLARE varIdCorral,	varIdReceta, varIdAlimento CHAR(36);
    DECLARE varTotalAlimento, varPorcentajeAlimento,	varCostoTotal, varCantidadAlimento DECIMAL(20,4);
    DECLARE varNumeroLote VARCHAR(45);
    declare varAlimentoAnimal, varCostoAnimal decimal(20,4);
    DECLARE varUltimoIngreso DATETIME;
    
    DECLARE vb_termina BOOL DEFAULT FALSE;
	
	DECLARE curAlimento CURSOR
	FOR	SELECT ar.id_alimento,	ar.cantidad        
		FROM   alimento_receta ar                
		WHERE  ar.id_receta =	varIdReceta
        AND    ar.status = 'S';
        
	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;
        
    SELECT  id_corral,	id_receta,	total_alimento,	porcentaje_alimento, numero_lote
    INTO    varIdCorral,	varIdReceta,	varTotalAlimento,	varPorcentajeAlimento, varNumeroLote
    FROM	ingreso_alimento
    WHERE	id_ingreso_alimento = varIdIngresoAlimento
    AND		id_rancho = varIdRancho;
    
    OPEN curAlimento;

	Recorre_Cursor: LOOP
	
		FETCH curAlimento INTO varIdAlimento, varCantidadAlimento;

		IF vb_termina THEN
        
			LEAVE Recorre_Cursor;
		END IF;
		
		UPDATE rancho_alimento
		SET existencia = existencia + (varPorcentajeAlimento /100)*varCantidadAlimento
		WHERE id_alimento = varIdAlimento
        AND	  id_rancho = varIdRancho;

	END LOOP;
	
	CLOSE curAlimento;
    
     
    
    
    if varIdCorral = "" then 
    
		SELECT	fecha
        INTO	varUltimoIngreso
		FROM	ingreso_alimento
		WHERE	numero_lote = varNumeroLote
        AND		id_ingreso_alimento <> varIdIngresoAlimento
        ORDER BY	fecha DESC
        LIMIT 1;
        
        
        select 	varTotalAlimento / animales_pendientes, varCostoTotal / animales_pendientes
        into	varAlimentoAnimal, varCostoAnimal
        from   	recepcion
        where  	numero_lote = varNumeroLote;
     
		UPDATE animal 
		SET 
		total_alimento = COALESCE(total_alimento, 0.00) - varAlimentoAnimal,
		costo_alimento = COALESCE(costo_alimento, 0.00) - varCostoAnimal,
		fecha_ultima_comida = varUltimoIngreso
		WHERE
		numero_lote = varNumeroLote
        and		not exists (	select	* 
							from	corral_animal 
							where	corral_animal.id_animal = animal.id_animal	);

		UPDATE recepcion 
		SET 
		total_alimento = COALESCE(total_alimento, 0.00) - varTotalAlimento
		WHERE
		varNumeroLote = recepcion.numero_lote;
    end if;
    
    if varNumeroLote  = "" then 
    
		SELECT	fecha
        INTO	varUltimoIngreso
		FROM	ingreso_alimento
		WHERE	id_corral = varIdCorral
        AND		id_ingreso_alimento <> varIdIngresoAlimento
        ORDER BY	fecha DESC
        LIMIT 1;
		
        select 	varTotalAlimento / count(*), varCostoTotal / count(*)
        into	varAlimentoAnimal,  varCostoAnimal
        from   	animal, corral_animal
        where  	corral_animal.id_corral		=	varIdCorral
        and     corral_animal.id_animal		=	animal.id_animal
        and animal.status ='A';

		UPDATE animal 
		SET 
		total_alimento = COALESCE(total_alimento, 0.00) - varAlimentoAnimal,
		costo_alimento = COALESCE(costo_alimento, 0.00) - varCostoAnimal,
		fecha_ultima_comida = varUltimoIngreso
		WHERE
		id_animal IN (SELECT 
            id_animal
        FROM
            corral_animal
        WHERE
            corral_animal.id_corral = varIdCorral);

		call animalesPorCorral(varIdCorral);
		
    end if;
    
    UPDATE ingreso_alimento SET status = 'N'
    WHERE id_ingreso_alimento = varIdIngresoAlimento;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarInventarioAnimal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarInventarioAnimal`()
BEGIN
	
    
    DECLARE varPrimerInventario char(36);
    
    SELECT id_inventario
    INTO varPrimerInventario
    FROM inventario
    Order by fecha ASC
    Limit 1;
    
    DELETE FROM inventario_animal
    where id_inventario = varPrimerInventario;
    
    DELETE FROM inventario
    where id_inventario = varPrimerInventario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarMedicina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarMedicina`(
	varId_medicina CHAR(36))
BEGIN

	UPDATE medicina
	set status		=	'N'
	where id_medicina = varId_medicina;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarMedicinaAnimal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarMedicinaAnimal`(
	varIdRancho CHAR(36),			varIdMedicinaAnimal	CHAR(36))
BEGIN
	
	/*DELETE FROM	medicina_animal
	WHERE	id_rancho			=	varIdRancho
	AND		id_medicina_animal	=	varIdMedicinaAnimal;*/ 
    
    UPDATE medicina_animal
	set status		=	'N'
	where id_rancho = varIdRancho
    AND	  id_medicina_animal = varIdMedicinaAnimal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarMedicinaTratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarMedicinaTratamiento`(
	varIdTratamiento	CHAR(36),	varIdMedicina	CHAR(36))
BEGIN
	UPDATE medicina_tratamiento
	set status		=	'N'
	where id_medicina = varIdMedicina
    AND	  id_tratamiento = varIdTratamiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarOrdenGanado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarOrdenGanado`(
		varIdOrdenCompra	CHAR(36),		varIdRancho		CHAR(36))
BEGIN
	
    UPDATE orden_ganado set status = 'N'
    WHERE	id_orden_ganado = varIdOrdenCompra;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProveedor`(
	varIdProveedor	CHAR(36))
BEGIN

	UPDATE	proveedor
	SET		status			=	'E'
	WHERE	id_proveedor	=	varIdProveedor;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarRancho` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarRancho`(
	varIdRancho	CHAR(36))
BEGIN

	UPDATE	rancho
	SET		status	=	'E'
	WHERE	id_rancho	=	varIdRancho;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarRaza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarRaza`(
	varIdRaza	CHAR(36))
BEGIN

	UPDATE	raza
	SET		status	=	'E'
	WHERE	id_raza	=	varIdRaza;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarReceta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarReceta`(
	varIdReceta	CHAR(36))
BEGIN

	UPDATE	receta
	SET		status			=	'E'
	WHERE	id_receta	=	varIdReceta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarTratamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarTratamiento`(
	varIdTratamiento	CHAR(36))
BEGIN
	UPDATE	tratamiento
	SET		status			=	'E'
	WHERE	id_tratamiento	=	varIdTratamiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generarTraspasoSalida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generarTraspasoSalida`(
	varIdRancho			CHAR(36),	varConceptoTrasSalida	CHAR(36),	OUT varIdMovimiento		CHAR(36),
	varFecha			DATETIME,	varIdRanchoDestino		CHAR(36),		varIdCorralOrigen	CHAR(36),
	varIdCorralDestino	CHAR(36))
BEGIN
/*
	SELECT	con_traspaso_salida
	INTO	varConceptoTrasSalida
	FROM 	rancho
	WHERE	id_rancho	=	varIdRancho;
*/
	/*	SALIDA DEL CORRAL ORIGEN */
-- CALL nuevoIdMovimiento(	varIdRancho,	varConceptoTrasSalida,	@varIdMovimiento);
/*
	UPDATE	concepto_movimiento
	set		id_consecutivo	=	ifnull(id_consecutivo,0)	+	1
	where	id_rancho		=	varIdRancho
	and 	id_concepto		=	varConceptoTrasSalida;

	select	id_consecutivo
	INTO	varIdMovimiento
	from	concepto_movimiento
	where	id_rancho	=	varIdRancho
	and 	id_concepto	=	varConceptoTrasSalida;	
*/
	SELECT	UUID()
	INTO	varIdMovimiento;
	
	CALL insertarMovimiento(varIdRancho,		varIdMovimiento,	varConceptoTrasSalida,	
							varFecha,			varIdRancho,		varIdCorralOrigen,	
                            varIdRanchoDestino,	varIdCorralDestino,	NULL,
							NULL,				NULL,				NULL,	
                            NULL,				NULL,				NULL,				
                            NULL,				NULL);				
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingresoHospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresoHospital`(
	varIdRancho CHAR(36),	varIdAnimal			CHAR(36),		varFecha	DATETIME,
	varCausa	CHAR(255),	varObservaciones	CHAR(255))
BEGIN
	
	DECLARE varConceptoTrasSalida,
			varConceptoTrasEntrada,
			varIdMovimiento,
			varIdDetalle,
			varIdCorralOrigen,
			varIdCorralHospital	CHAR(36);
	
	SELECT	con_traspaso_entrada, 	con_traspaso_salida, 	id_corral_hospital
	INTO	varConceptoTrasEntrada,	varConceptoTrasSalida,	varIdCorralHospital
	FROM 	rancho
	WHERE	id_rancho	=	varIdRancho;

	SELECT	id_corral
	INTO	varIdCorralOrigen
	FROM	corral_animal
	WHERE	id_rancho	=	varIdRancho
	AND		id_animal	=	varIdAnimal;

	/*	SALIDA DEL CORRAL ORIGEN */
	SELECT	UUID()
	INTO	varIdMovimiento;
	
	CALL insertarMovimiento(
		varIdRancho,		varIdMovimiento,		varConceptoTrasSalida,	
		varFecha,			varIdRancho,			varIdCorralOrigen,	
		varIdRancho,		varIdCorralHospital,	NULL,
		NULL,				NULL,					NULL,
		NULL,				NULL,					varCausa,
		varObservaciones,	NULL);
			
	CALL insertarDetalleMovimiento(	
		varIdRancho,	varIdMovimiento,	varConceptoTrasSalida,
		varIdAnimal);	

	CALL duplicaMovimiento( 
		varIdRancho,	varIdMovimiento, 		varConceptoTrasSalida, 
		varIdRancho,	varConceptoTrasEntrada );
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarDetalleMovimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarDetalleMovimiento`(	
	varIdRancho				CHAR(36),	varIdMovimiento CHAR(36),	
	varConceptoMovimiento 	CHAR(36),	varIdAnimal		CHAR(36)	)
BEGIN

	DECLARE varIdDetalle INT;

	CALL nuevoIdDetalle(varIdRancho,varConceptoMovimiento, varIdMovimiento, @varIdDetalle);
	
	INSERT INTO detalle_movimiento(	
				id_rancho,		id_movimiento,		id_concepto,			id_detalle,		id_animal)
		values(	varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	@varIdDetalle,	varIdAnimal);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarMovimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarMovimiento`(
	varIdRancho			CHAR(36),	varIdMovimiento 		CHAR(36),		varConceptoMovimiento 	CHAR(36),		
	varFecha			DATETIME,	varIdRanchoOrigen		CHAR(36),		varIdCorralOrigen		CHAR(36),
	varIdRanchoDestino	CHAR(36),	varIdCorralDestino		CHAR(36),		varIdClaseMovimiento	CHAR(36),
	varNumeroPedido		CHAR(255),	varIdCliente			CHAR(36),		varNecropcia			CHAR(255),
	varDxMuerte			CHAR(255),	varEtapaReproductiva	CHAR(255),		varCausaEntrada			CHAR(255),
	varObservacion		CHAR(255),	varPeso					DECIMAL(12,4))
BEGIN

	INSERT INTO movimiento(	
		id_rancho,			id_movimiento,		id_concepto,			fecha,					id_rancho_origen,
		id_corral_origen,	id_rancho_destino,	id_corral_destino,		id_clase_movimiento,	numero_pedido,
		id_cliente,			necropcia,			dx_muerte,				etapa_reproductiva,		causa_entrada,
		observacion,		peso)
	VALUES(	
		varIdRancho,		varIdMovimiento,	varConceptoMovimiento,	varFecha,				varIdRanchoOrigen,
		varIdCorralOrigen,	varIdRanchoDestino,	varIdCorralDestino,		varIdClaseMovimiento,	varNumeroPedido,
		varIdCliente,		varNecropcia,		varDxMuerte,			varEtapaReproductiva,	varCausaEntrada,
		varObservacion,		varPeso);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movimientoMuerte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movimientoMuerte`(	
	varIdRancho 	CHAR(36),	varIdAnimal				CHAR(36),		
	varFechaMuerte	DATETIME,	varNecropcia			CHAR(255), 
	varDxMuerte 	CHAR(255), 	varEtapaReproductiva	CHAR(255))
BEGIN
	
	DECLARE varConceptoMovimiento,	
			varIdMovimiento,
			varIdDetalle	CHAR(36);
	
	SELECT	con_muerte
	INTO	varConceptoMovimiento
	FROM 	rancho
	WHERE 	id_rancho	=	varIdRancho;
	
	-- CALL nuevoIdMovimiento(varIdRancho,varConceptoMovimiento, @varIdMovimiento);
	SELECT	UUID()
	INTO	varIdMovimiento;

	CALL insertarMovimiento(varIdRancho,	varIdMovimiento,		varConceptoMovimiento,	
							varFechaMuerte,	NULL,					NULL,
                            NULL,			NULL,					NULL,
							NULL,			NULL,					varNecropcia,
                            varDxMuerte,	varEtapaReproductiva,	NULL,
                            NULL,			NULL);

	-- CALL nuevoIdDetalle(varIdRancho,varConceptoMovimiento, varIdMovimiento, @varIdDetalle);

	CALL insertarDetalleMovimiento(	
		varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	varIdAnimal);

	UPDATE	animal
	SET 	status		=	'M'
	WHERE	id_animal	=	varIdAnimal;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movimientoPeso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movimientoPeso`(	
	varIdRancho CHAR(36),	varIdAnimal	CHAR(36),		
	varFecha	DATETIME,	varPeso		DECIMAL(12,4))
BEGIN

	Declare varPesoActual, varPesoRecepcion, varPorcentajeMerma DECIMAL(20,4);
	
	DECLARE varConceptoMovimiento,	
			varIdMovimiento,
			varIdDetalle, varNumeroLote	CHAR(36);
	Declare varFechaRecepcion, varFechaIngreso DATETIME;
     DECLARE varTipoRecepcion, varOrdenCompra	varchar(45);
     DECLARE varCompra char(255);
	
	SELECT	con_pesaje	
	INTO	varConceptoMovimiento
	FROM 	rancho
	WHERE 	id_rancho	=	varIdRancho;
	
    IF NOT EXISTS(	SELECT	* 
					FROM 	movimiento m, detalle_movimiento d
					WHERE	m.id_rancho		=	d.id_rancho
                    AND		m.id_movimiento	=	d.id_movimiento
					AND		m.id_concepto	=	d.id_concepto
                    AND		m.id_rancho		=	varIdRancho
                    AND		d.id_animal		=	varIdAnimal
                    AND		m.fecha			=	varFecha
					AND		m.peso			=	varPeso) THEN
		BEGIN
				SELECT peso_actual, porcentaje_merma, fecha_ingreso, fecha_recepcion,numero_lote, compra
				INTO varPesoActual, varPorcentajeMerma, varFechaIngreso, varFechaRecepcion, varNumeroLote, varCompra
				FROM animal
				WHERE id_animal= varIdAnimal;
                
                SELECT	tipo_recepcion, orden_compra
				INTO	varTipoRecepcion,	varOrdenCompra
				FROM 	recepcion
				where	numero_lote = varNumeroLote
				AND		folio = varCompra;
			-- CALL nuevoIdMovimiento(varIdRancho,varConceptoMovimiento, @varIdMovimiento);
			IF varPeso <> 0.0000 THEN
				
				IF varTipoRecepcion <> 'Local' THEN 
				-- inicia captura de peso de animal de recepcion foranea
				   IF NOT EXISTS (SELECT	* 
						FROM 	movimiento m, detalle_movimiento d
						WHERE	m.id_rancho		=	d.id_rancho
						AND		m.id_movimiento	=	d.id_movimiento
						AND		m.id_concepto	=	d.id_concepto
						AND		m.id_rancho		=	varIdRancho
						AND		d.id_animal		=	varIdAnimal
						AND		m.fecha			=	varFechaRecepcion) THEN
						-- inicia guardar peso recepcion foranea en donde no hay peso de recepcion
                        IF varPesoActual = 0.0000 THEN
						-- inicia primer pesaje para recepcion foranea
							-- Peso actual mas el porcenta de merma de la recepcion para dar el peso inicial antes de la merma
							set varPesoRecepcion = varPeso * ( 1 + (varPorcentajeMerma / 100));
			
			
							-- agregar el nuevo peso de recepcion
							update animal set	peso_recepcion			=	varPeso, peso_compra = varPesoRecepcion
							where	id_animal	=	varidAnimal;
									
							SELECT	UUID()	
							INTO	varIdMovimiento;
			
							CALL insertarMovimiento(varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	
												varFechaRecepcion, 		NULL,				NULL,	
												NULL,			NULL,				NULL,	
												NULL,			NULL,				NULL,
												NULL,			NULL,				NULL,
												NULL,			varPesoRecepcion);
			
							CALL insertarDetalleMovimiento(	
								varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	
								varIdAnimal);
						-- termina primer pesaje para recepcion foranea	
						END IF;
						--	
						SELECT	UUID()	
						INTO	varIdMovimiento;
						
						CALL insertarMovimiento(varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	
											varFecha, 		NULL,				NULL,	
											NULL,			NULL,				NULL,	
											NULL,			NULL,				NULL,
											NULL,			NULL,				NULL,
											NULL,			varPeso);
		
						CALL insertarDetalleMovimiento(	
							varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	
							varIdAnimal);
						-- termina guardar peso recepcion foranea en donde no hay peso de recepcion
					ELSE 
                    -- inicia guardar peso recepcion foranea en donde si hay peso de recepcion
						SELECT	UUID()	
						INTO	varIdMovimiento;
						CALL insertarMovimiento(varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	
												varFecha, 		NULL,				NULL,	
												NULL,			NULL,				NULL,	
												NULL,			NULL,				NULL,
												NULL,			NULL,				NULL,
												NULL,			varPeso);
			
						CALL insertarDetalleMovimiento(	
							varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	
							varIdAnimal);
					-- termina guardar peso recepcion foranea en donde si hay peso de recepcion
					END IF;
				
				-- termina captura de peso de animal de recepcion foranea
				ELSE
                -- inicia captura de peso de animal de recepcion Local
					if	varPesoActual = 0.0000 THEN
						update animal set	peso_recepcion			=	varPeso, peso_compra = varPeso
						where	id_animal	=	varidAnimal;
					END IF;
                    
					SELECT	UUID()	
					INTO	varIdMovimiento;
					CALL insertarMovimiento(varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	
											varFecha, 		NULL,				NULL,	
											NULL,			NULL,				NULL,	
											NULL,			NULL,				NULL,
											NULL,			NULL,				NULL,
											NULL,			varPeso);
		
					CALL insertarDetalleMovimiento(	
						varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	
						varIdAnimal);
					-- inicia captura de peso de animal de recepcion Local
				END IF;
			END IF;
	
			UPDATE animal SET peso_actual	=	varPeso
			WHERE id_animal	=	varIdAnimal;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movimientoSalida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movimientoSalida`(	
	varIdRancho 		CHAR(36),		varIdAnimal				CHAR(36),		
	varFechaSalida		DATETIME,		varIdClaseMovimiento	CHAR(255), 
    varNumeroPedido		CHAR(255), 		varIdCliente			CHAR(255),
	varPesoActual		DECIMAL(20,4))
BEGIN
	
	DECLARE varConceptoMovimiento,	
			varIdMovimiento,
			varIdDetalle,
			varIdCorralOrigen	CHAR(36);
	
	SELECT 	id_corral
	INTO	varIdCorralOrigen
	FROM 	corral_animal
	WHERE 	id_animal	=	varIdAnimal;

	SELECT	con_salida
	INTO	varConceptoMovimiento
	FROM	rancho
	WHERE 	id_rancho	=	varIdRancho;
	
	-- CALL nuevoIdMovimiento(varIdRancho,varConceptoMovimiento, @varIdMovimiento);

	SELECT UUID()
    INTO	varIdMovimiento;

	CALL insertarMovimiento(
		varIdRancho,		varIdMovimiento,	varConceptoMovimiento,	
		varFechaSalida, 	NULL,				varIdCorralOrigen,	
		NULL,				NULL,				varIdClaseMovimiento,
        varNumeroPedido,	varIdCliente,		NULL,	
        NULL,				NULL,				NULL,	
        NULL,				varPesoActual);

	-- CALL nuevoIdDetalle(varIdRancho,varConceptoMovimiento, varIdMovimiento, @varIdDetalle);

	CALL insertarDetalleMovimiento(
		varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	varIdAnimal);

		-- Se inserta porque el movimiento genera un cambio de corral
	IF NOT EXISTS (	SELECT	* 
					FROM	corral_animal 
					WHERE	id_rancho	=	varIdRancho
					AND		id_corral	=	varIdCorralOrigen
                    AND		id_animal	=	varIdAnimal)
	THEN
     
		INSERT INTO corral_animal
		SELECT varIdRancho, varIdCorralOrigen, varIdAnimal;
	END IF;

	UPDATE animal
	SET status		=	'V',
		peso_actual	=	varPesoActual
	WHERE id_animal	=	varIdAnimal;
/*
    INSERT INTO corral_animal
	SELECT varIdRancho, varIdCorralOrigen, varIdAnimal;
*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movimientoSalidaGrupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movimientoSalidaGrupo`(	
	varIdRancho 			CHAR(36),	varFechaSalida	DATETIME,
	varIdClaseMovimiento	CHAR(255),	varNumeroPedido	CHAR(255),
	varIdCliente			CHAR(255),	varIdUsuario			CHAR(36),
    varFolio				CHAR(255),	varCostoFlete			DECIMAL(20,4),
    varCostoTotal			DECIMAL(20,4),	varKilosTotales		DECIMAL(20,4))
BEGIN
	
	DECLARE varIdAnimal,		varIdCorralOrigen,
			varIdDetalle,		varConceptoMovimiento,	
            varIdMovimiento		CHAR(36);

	DECLARE varPeso,		varCostoKilo, varFleteIndividual	DECIMAL(20,4);
    
    DECLARE varIdSalida,	varTipoGanado		CHAR(36);

	DECLARE vb_termina BOOL DEFAULT FALSE;
	
	DECLARE cur_animales CURSOR
	FOR	SELECT	animal_grupo.id_animal,	id_corral, animal_grupo.peso, animal_grupo.costo_kilo,	animal_grupo.tipo_ganado
		FROM	animal_grupo, corral_animal
		WHERE	animal_grupo.id_animal	=	corral_animal.id_animal
        AND		animal_grupo.id_rancho	=	varIdRancho
		AND		id_usuario				=	varIdUsuario		
		AND		tipo					=	'salida';

	DECLARE CONTINUE HANDLER 
	FOR SQLSTATE '02000'
	SET vb_termina = TRUE;	

	SELECT (varCostoFlete	/	(	SELECT COUNT(*)
									FROM	animal_grupo
									WHERE	id_rancho 	=	varIdRancho
									AND		id_usuario	=	varIdUsuario		
									AND		tipo		=	'salida') )
	INTO	varFleteIndividual;

	SELECT	con_salida
	INTO	varConceptoMovimiento
	FROM	rancho
	WHERE 	id_rancho	=	varIdRancho;
    
    -- Nuevo
    SELECT	UUID()
    INTO	varIdSalida;
    
    INSERT venta_ganado (id_venta_ganado,	fecha,		folio,		numero_pedido,		cliente,	id_clase_movimiento,
						 costo_total,		kilos_totales,		costo_flete,			id_rancho,			status)
	SELECT				 varIdSalida,		varFechaSalida,			varFolio,			varNumeroPedido,		varIdCliente,
						 varIdClaseMovimiento,		varCostoTotal, 	varKilosTotales,		varCostoFlete,		 varIdRancho, 'S';
    --

	OPEN cur_animales;

	Recorre_Cursor: LOOP
		
		FETCH cur_animales INTO varIdAnimal, varIdCorralOrigen,	varPeso,	varCostoKilo,	varTipoGanado;

		IF vb_termina THEN
        
            LEAVE Recorre_Cursor;
        END IF;

		SELECT UUID()
        INTO varIdMovimiento;    

		CALL insertarMovimiento(varIdRancho,		varIdMovimiento,	varConceptoMovimiento,	
								varFechaSalida,		NULL,				varIdCorralOrigen,	
                                NULL,				NULL,				varIdClaseMovimiento,
                                varNumeroPedido,	varIdCliente,		NULL,	
                                NULL,				NULL,				NULL,	
                                NULL,				varPeso);

		CALL insertarDetalleMovimiento(	varIdRancho,	varIdMovimiento,	varConceptoMovimiento,	varIdAnimal);

	-- Se inserta porque el movimiento genera un cambio de corral
		IF NOT EXISTS (SELECT * FROM corral_animal WHERE id_rancho = varIdRancho AND id_corral = varIdCorralOrigen AND id_animal = varIdAnimal)
		THEN
       
			INSERT INTO corral_animal
			SELECT varIdRancho, varIdCorralOrigen, varIdAnimal;
		END IF;

		UPDATE animal
		SET		status		=	'V',
				peso_actual	=	varPeso
		WHERE 	id_animal	=	varIdAnimal;
        
        -- Nuevo
        Insert venta_ganado_animal (id_venta,		id_animal,		id_movimiento,		peso,		costo_kilo,  tipo_ganado,		costo_flete)
		SELECT						varIdSalida,	varIdAnimal,	varIdMovimiento,	varPeso,	varCostoKilo,	varTipoGanado,		varFleteIndividual;
		-- 
	END LOOP;
  	CLOSE cur_animales;

	DELETE	FROM	animal_grupo
			WHERE	id_rancho 	=	varIdRancho
			AND		id_usuario	=	varIdUsuario
			AND		tipo		=	'salida';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movimientoTraspasoSalida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movimientoTraspasoSalida`(
	varIdRancho			CHAR(36),	varConceptoTrasSalida	CHAR(36),	OUT varIdMovimiento		CHAR(36),
	varFecha			DATETIME,	varIdRanchoDestino		CHAR(36),		varIdCorralOrigen	CHAR(36),
	varIdCorralDestino	CHAR(36))
BEGIN
/*
	SELECT	con_traspaso_salida
	INTO	varConceptoTrasSalida
	FROM 	rancho
	WHERE	id_rancho	=	varIdRancho;
*/
	/*	SALIDA DEL CORRAL ORIGEN */
-- CALL nuevoIdMovimiento(	varIdRancho,	varConceptoTrasSalida,	@varIdMovimiento);
/*
	UPDATE	concepto_movimiento
	set		id_consecutivo	=	ifnull(id_consecutivo,0)	+	1
	where	id_rancho		=	varIdRancho
	and 	id_concepto		=	varConceptoTrasSalida;

	select	id_consecutivo
	INTO	varIdMovimiento
	from	concepto_movimiento
	where	id_rancho	=	varIdRancho
	and 	id_concepto	=	varConceptoTrasSalida;	
*/
	SELECT	UUID()
	INTO	varIdMovimiento;
	
	CALL insertarMovimiento(varIdRancho,		varIdMovimiento,	varConceptoTrasSalida,	
							varFecha,			varIdRancho,		varIdCorralOrigen,	
                            varIdRanchoDestino,	varIdCorralDestino,	NULL,
							NULL,				NULL,				NULL,	
                            NULL,				NULL,				NULL,				
                            NULL,				NULL);				
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevoIdConcepto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoIdConcepto`(varIdRancho int, varIdConcepto int, out varIdConsecutivo int )
BEGIN
	
	UPDATE	concepto_movimiento
	set		id_concecutivo	=	ifnull(id_concecutivo,0)	+	1
	where	id_rancho		=	varIdRancho;

	select	id_concecutivo
	INTO	varIdConsecutivo
	from	concepto_movimiento
	where	id_rancho	=	varIdRancho;	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevoIdDetalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoIdDetalle`(
	varIdRancho		CHAR(36),		varIdConcepto	CHAR(36),	
	varIdMovimiento	CHAR(36),	OUT	varIdDetalle	INT)
BEGIN

	SELECT	COUNT(*) + 1
	INTO	varIdDetalle
	FROM	detalle_movimiento
	WHERE	id_rancho		=	varIdRancho
	AND		id_concepto		=	varIdConcepto
	AND		id_movimiento	=	varIdMovimiento;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevoIdMovimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoIdMovimiento`(
		varIdRancho		int,	varIdConcepto	int,
	out	varIdMovimiento	int )
BEGIN
	
	UPDATE	concepto_movimiento
	set		id_consecutivo	=	ifnull(id_consecutivo,0)	+	1
	where	id_rancho		=	varIdRancho
	and 	id_concepto		=	varIdConcepto;

	select	id_consecutivo
	INTO	varIdMovimiento
	from	concepto_movimiento
	where	id_rancho	=	varIdRancho
	and 	id_concepto	=	varIdConcepto;	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reactivarCorral` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reactivarCorral`(varIdCorral CHAR(36), varIdRancho CHAR(36))
BEGIN
UPDATE animal a 
SET 
    status = 'A'
WHERE
    (SELECT 
            ca.id_animal
        FROM
            corral_animal ca
        WHERE
            ca.id_corral = varIdCorral
                AND a.id_animal = ca.id_animal
                AND a.status = 'C') = a.id_animal;

UPDATE corral c 
SET 
    status = 'S'
WHERE
    c.id_corral = varIdCorral
        AND c.id_rancho = varIdRancho;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reinicia_bd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reinicia_bd`()
BEGIN
/*	DECLARE varIdRancho			,
			varIdCorralAnimal	CHAR(36);
	*/
    TRUNCATE TABLE alimento;
    TRUNCATE TABLE alimento_receta;
    TRUNCATE TABLE animal;
    TRUNCATE TABLE animal_grupo;
    TRUNCATE TABLE cliente;
    TRUNCATE TABLE compra;
    TRUNCATE TABLE corral;
    TRUNCATE TABLE corral_animal;
    TRUNCATE TABLE corral_datos;
    TRUNCATE TABLE compra;
    TRUNCATE TABLE concepto_movimiento;
    TRUNCATE TABLE cria;
    TRUNCATE TABLE detalle_compra;
    TRUNCATE TABLE detalle_compra_alimento;
    TRUNCATE TABLE detalle_movimiento;
    TRUNCATE TABLE genealogia;
    TRUNCATE TABLE ingreso_alimento;
    TRUNCATE TABLE medicina;
    TRUNCATE TABLE medicina_animal;
    TRUNCATE TABLE medicina_tratamiento;
    TRUNCATE TABLE movimiento;
    TRUNCATE TABLE movimiento_animal; 
    TRUNCATE TABLE proveedor;
    TRUNCATE TABLE recepcion;
    TRUNCATE TABLE receta;
    TRUNCATE TABLE rancho;
    TRUNCATE TABLE rancho_alimento;
    TRUNCATE TABLE rancho_medicina;
    TRUNCATE TABLE registro_empadre;
    TRUNCATE TABLE status_gestacion;
    TRUNCATE TABLE tratamiento;
    TRUNCATE TABLE usuario;
    TRUNCATE TABLE detalle_gastos_orden;
    
    TRUNCATE TABLE corral_acopio_recepcion;
	UPDATE		   corral_acopio
    SET			   total_alimento = 0,		num_animales = 0;
    TRUNCATE TABLE comprador;
    TRUNCATE TABLE orden_ganado;
    TRUNCATE TABLE detalle_orden_ganado;
    TRUNCATE TABLE factura_orden;
    TRUNCATE TABLE venta_ganado;
    TRUNCATE TABLE venta_ganado_animal;
    
    -- Nuevas tablas
    TRUNCATE TABLE aborto;
    TRUNCATE TABLE corral_acopio_recepcion;
    TRUNCATE TABLE inseminador;
    TRUNCATE TABLE pajilla;
    TRUNCATE TABLE programacion;
    TRUNCATE TABLE programacion_reproductor;
    TRUNCATE TABLE servicio;
    TRUNCATE TABLE tacto;
                
    TRUNCATE TABLE repl_alimento;
    TRUNCATE TABLE repl_alimento_receta;
    TRUNCATE TABLE repl_animal;
    TRUNCATE TABLE repl_cliente;
    TRUNCATE TABLE repl_compra;
    TRUNCATE TABLE repl_concepto_movimiento;
    TRUNCATE TABLE repl_control_gestacion;
    TRUNCATE TABLE repl_corral;    
    TRUNCATE TABLE repl_corral_animal;
    TRUNCATE TABLE repl_corral_datos;
    TRUNCATE TABLE repl_cria;
    TRUNCATE TABLE repl_detalle_compra;
    TRUNCATE TABLE repl_detalle_compra_alimento;
    TRUNCATE TABLE repl_detalle_movimiento;
    TRUNCATE TABLE repl_genealogia;
    TRUNCATE TABLE repl_ingreso_alimento;
    TRUNCATE TABLE repl_medicina;
    TRUNCATE TABLE repl_medicina_animal;
    TRUNCATE TABLE repl_medicina_tratamiento;
    TRUNCATE TABLE repl_movimiento;
    TRUNCATE TABLE repl_movimiento_animal;
    TRUNCATE TABLE repl_proveedor;
    TRUNCATE TABLE repl_rancho;
    TRUNCATE TABLE repl_rancho_medicina;
    TRUNCATE TABLE repl_rancho_alimento;
    TRUNCATE TABLE repl_raza;
    TRUNCATE TABLE repl_recepcion;
    TRUNCATE TABLE repl_receta;
    TRUNCATE TABLE repl_registro_empadre;
    TRUNCATE TABLE repl_status_gestacion;
    TRUNCATE TABLE repl_tratamiento;
    TRUNCATE TABLE repl_usuario;
    
    TRUNCATE TABLE repl_corral_acopio;
    TRUNCATE TABLE repl_corral_acopio_recepcion;
    TRUNCATE TABLE repl_comprador;
    TRUNCATE TABLE repl_orden_ganado;
    TRUNCATE TABLE repl_detalle_orden_ganado;
    
    INSERT INTO `usuario` (`id_usuario`, `log`, `password`) VALUES ('1', 'admin', 'admin');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateStatusReplica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateStatusReplica`(
	varStatusNuevo char(2),	varStatusAnterior	char(2))
BEGIN
	
	UPDATE	repl_animal
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;
	
	UPDATE	repl_concepto_movimiento
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;

	UPDATE	repl_corral
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;

	UPDATE	repl_corral_animal
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;
	
	UPDATE	repl_corral_datos
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;

	UPDATE	repl_cria
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;
		
	UPDATE	repl_detalle_movimiento
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;

	UPDATE	repl_medicina
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;
	
	UPDATE	repl_medicina_animal
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;
	
	UPDATE	repl_movimiento
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;	
	
	UPDATE	repl_proveedor
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;

	UPDATE	repl_raza
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;
    
    UPDATE	repl_cliente
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;

	UPDATE	repl_rancho
	SET		status = varStatusNuevo
	WHERE	status = varStatusAnterior;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-10 11:12:04
