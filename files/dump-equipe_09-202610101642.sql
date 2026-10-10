/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.2.2-MariaDB, for osx10.21 (arm64)
--
-- Host: localhost    Database: equipe_09
-- ------------------------------------------------------
-- Server version	12.2.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `p01_panorama_mt_por_ano`
--

DROP TABLE IF EXISTS `p01_panorama_mt_por_ano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p01_panorama_mt_por_ano` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_censo` int(11) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `ies` int(11) DEFAULT NULL,
  `vagas` int(11) DEFAULT NULL,
  `inscritos` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `matriculas` int(11) DEFAULT NULL,
  `concluintes` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `trancados` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p01_panorama_mt_por_ano_nu_ano_censo` (`nu_ano_censo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p01_panorama_mt_por_ano`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p01_panorama_mt_por_ano` WRITE;
/*!40000 ALTER TABLE `p01_panorama_mt_por_ano` DISABLE KEYS */;
INSERT INTO `p01_panorama_mt_por_ano` VALUES
(1,2021,2737,157,87669,143638,80284,176718,25671,46255,38614),
(2,2022,3234,165,84508,154239,97989,184666,24249,64607,38592),
(3,2023,3631,168,84628,173748,102176,191534,22708,71693,42783),
(4,2024,3890,170,82215,135247,99532,189869,22583,75263,45497);
/*!40000 ALTER TABLE `p01_panorama_mt_por_ano` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p01_panorama_rede_modalidade`
--

DROP TABLE IF EXISTS `p01_panorama_rede_modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p01_panorama_rede_modalidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_censo` int(11) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `modalidade` varchar(16) DEFAULT NULL,
  `matriculas` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `concluintes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p01_panorama_rede_modalidade_nu_ano_censo` (`nu_ano_censo`),
  KEY `ix_p01_panorama_rede_modalidade_rede` (`rede`),
  KEY `ix_p01_panorama_rede_modalidade_modalidade` (`modalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p01_panorama_rede_modalidade`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p01_panorama_rede_modalidade` WRITE;
/*!40000 ALTER TABLE `p01_panorama_rede_modalidade` DISABLE KEYS */;
INSERT INTO `p01_panorama_rede_modalidade` VALUES
(1,2021,'Privada','EAD',74370,52248,9011),
(2,2021,'Privada','Presencial',52014,17036,11908),
(3,2021,'Publica','EAD',4884,979,1017),
(4,2021,'Publica','Presencial',45450,10021,3735),
(5,2022,'Privada','EAD',85186,65589,8267),
(6,2022,'Privada','Presencial',49649,22571,9183),
(7,2022,'Publica','EAD',4125,553,823),
(8,2022,'Publica','Presencial',45706,9276,5976),
(9,2023,'Privada','EAD',94585,68872,9972),
(10,2023,'Privada','Presencial',49002,20101,8652),
(11,2023,'Publica','EAD',4222,2234,79),
(12,2023,'Publica','Presencial',43725,10969,4005),
(13,2024,'Privada','EAD',94507,65967,9607),
(14,2024,'Privada','Presencial',48542,19950,7240),
(15,2024,'Publica','EAD',4873,2007,185),
(16,2024,'Publica','Presencial',41947,11608,5551);
/*!40000 ALTER TABLE `p01_panorama_rede_modalidade` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p02_funil_por_coorte`
--

DROP TABLE IF EXISTS `p02_funil_por_coorte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p02_funil_por_coorte` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coorte` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `concluiram` int(11) DEFAULT NULL,
  `desistiram` int(11) DEFAULT NULL,
  `seguiam_2024` int(11) DEFAULT NULL,
  `falecidos` int(11) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  `pct_desistiu` decimal(6,2) DEFAULT NULL,
  `pct_seguia` decimal(6,2) DEFAULT NULL,
  `anos_de_acompanhamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p02_funil_por_coorte_coorte` (`coorte`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p02_funil_por_coorte`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p02_funil_por_coorte` WRITE;
/*!40000 ALTER TABLE `p02_funil_por_coorte` DISABLE KEYS */;
INSERT INTO `p02_funil_por_coorte` VALUES
(1,2015,41918,16253,25092,544,29,38.77,59.86,1.30,10),
(2,2016,45453,15389,29055,988,21,33.86,63.92,2.17,9),
(3,2017,44959,14604,28653,1686,16,32.48,63.73,3.75,8),
(4,2018,43223,14127,24981,4094,21,32.68,57.80,9.47,7),
(5,2019,41881,11483,24486,5897,15,27.42,58.47,14.08,6),
(6,2020,28985,6293,16384,6297,11,21.71,56.53,21.73,5);
/*!40000 ALTER TABLE `p02_funil_por_coorte` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p02_funil_rede_grau`
--

DROP TABLE IF EXISTS `p02_funil_rede_grau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p02_funil_rede_grau` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_ingresso` int(11) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `grau_academico` varchar(16) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `concluiram` int(11) DEFAULT NULL,
  `desistiram` int(11) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  `pct_desistiu` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p02_funil_rede_grau_nu_ano_ingresso` (`nu_ano_ingresso`),
  KEY `ix_p02_funil_rede_grau_rede` (`rede`),
  KEY `ix_p02_funil_rede_grau_grau_academico` (`grau_academico`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p02_funil_rede_grau`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p02_funil_rede_grau` WRITE;
/*!40000 ALTER TABLE `p02_funil_rede_grau` DISABLE KEYS */;
INSERT INTO `p02_funil_rede_grau` VALUES
(1,2015,'Privada','Bacharelado',25119,9164,15910,36.48,63.34),
(2,2015,'Privada','Licenciatura',1830,986,843,53.88,46.07),
(3,2015,'Privada','Tecnologico',3054,1287,1762,42.14,57.69),
(4,2015,'Publica','Bacharelado',8183,3599,4187,43.98,51.17),
(5,2015,'Publica','Licenciatura',3211,1067,2034,33.23,63.34),
(6,2015,'Publica','Tecnologico',521,150,356,28.79,68.33),
(7,2016,'Privada','Bacharelado',27806,8357,19368,30.05,69.65),
(8,2016,'Privada','Licenciatura',1853,816,1035,44.04,55.86),
(9,2016,'Privada','Tecnologico',3444,1196,2243,34.73,65.13),
(10,2016,'Publica','Bacharelado',8142,3525,3944,43.29,48.44),
(11,2016,'Publica','Licenciatura',3560,1266,2079,35.56,58.40),
(12,2016,'Publica','Tecnologico',648,229,386,35.34,59.57),
(13,2017,'Privada','Bacharelado',27598,8228,19209,29.81,69.60),
(14,2017,'Privada','Licenciatura',1510,599,908,39.67,60.13),
(15,2017,'Privada','Tecnologico',3367,1053,2296,31.27,68.19),
(16,2017,'Publica','Bacharelado',8175,3324,3776,40.66,46.19),
(17,2017,'Publica','Licenciatura',3557,1150,2012,32.33,56.56),
(18,2017,'Publica','Tecnologico',752,250,452,33.24,60.11),
(19,2018,'Privada','Bacharelado',26175,8466,17308,32.34,66.12),
(20,2018,'Privada','Licenciatura',1379,446,914,32.34,66.28),
(21,2018,'Privada','Tecnologico',3157,981,2165,31.07,68.58),
(22,2018,'Publica','Bacharelado',8410,3050,2776,36.27,33.01),
(23,2018,'Publica','Licenciatura',3354,966,1381,28.80,41.17),
(24,2018,'Publica','Tecnologico',748,218,437,29.14,58.42),
(25,2019,'Privada','Bacharelado',24266,6974,16398,28.74,67.58),
(26,2019,'Privada','Licenciatura',1352,396,938,29.29,69.38),
(27,2019,'Privada','Tecnologico',3594,943,2613,26.24,72.70),
(28,2019,'Publica','Bacharelado',8535,2304,2748,26.99,32.20),
(29,2019,'Publica','Licenciatura',3406,691,1417,20.29,41.60),
(30,2019,'Publica','Tecnologico',728,175,372,24.04,51.10),
(31,2020,'Privada','Bacharelado',17788,4487,11461,25.22,64.43),
(32,2020,'Privada','Licenciatura',648,167,448,25.77,69.14),
(33,2020,'Privada','Tecnologico',1973,453,1444,22.96,73.19),
(34,2020,'Publica','Bacharelado',5613,859,1627,15.30,28.99),
(35,2020,'Publica','Licenciatura',2239,272,933,12.15,41.67),
(36,2020,'Publica','Tecnologico',724,55,471,7.60,65.06);
/*!40000 ALTER TABLE `p02_funil_rede_grau` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p03_cursos_maior_volume_desistencia`
--

DROP TABLE IF EXISTS `p03_cursos_maior_volume_desistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p03_cursos_maior_volume_desistencia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_cine_rotulo` varchar(32) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `desistiram` int(11) DEFAULT NULL,
  `concluiram` int(11) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `pct_desistiu` decimal(6,2) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p03_cursos_maior_volume_desistencia`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p03_cursos_maior_volume_desistencia` WRITE;
/*!40000 ALTER TABLE `p03_cursos_maior_volume_desistencia` DISABLE KEYS */;
INSERT INTO `p03_cursos_maior_volume_desistencia` VALUES
(1,'Direito',45761,29032,15205,59,63.44,33.23),
(2,'Administração',14202,9265,3890,50,65.24,27.39),
(3,'Contabilidade',13458,8485,4209,41,63.05,31.28),
(4,'Engenharia civil',12325,7974,3819,27,64.70,30.99),
(5,'Agronomia',13143,7409,4386,29,56.37,33.37),
(6,'Enfermagem',11810,7247,3854,32,61.36,32.63),
(7,'Psicologia',10293,6349,3434,27,61.68,33.36),
(8,'Fisioterapia',8290,5461,2642,17,65.87,31.87),
(9,'Pedagogia',8271,4263,3634,33,51.54,43.94),
(10,'Arquitetura e urbanismo',5436,3542,1611,16,65.16,29.64),
(11,'Educação física',4442,3313,1055,14,74.58,23.75),
(12,'Sistemas de informação',4501,2995,997,26,66.54,22.15),
(13,'Nutrição',4217,2557,1518,14,60.64,36.00),
(14,'Farmácia',4657,2461,1978,16,52.85,42.47),
(15,'Biomedicina',3659,2337,1274,14,63.87,34.82);
/*!40000 ALTER TABLE `p03_cursos_maior_volume_desistencia` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p03_desistencia_por_ano_do_curso`
--

DROP TABLE IF EXISTS `p03_desistencia_por_ano_do_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p03_desistencia_por_ano_do_curso` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ano_curso` int(11) DEFAULT NULL,
  `desistencias` int(11) DEFAULT NULL,
  `pct_do_total` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p03_desistencia_por_ano_do_curso`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p03_desistencia_por_ano_do_curso` WRITE;
/*!40000 ALTER TABLE `p03_desistencia_por_ano_do_curso` DISABLE KEYS */;
INSERT INTO `p03_desistencia_por_ano_do_curso` VALUES
(1,1,41331,27.80),
(2,2,37078,24.94),
(3,3,21768,14.64),
(4,4,19735,13.28),
(5,5,14845,9.99),
(6,6,6142,4.13),
(7,7,4038,2.72),
(8,8,2423,1.63),
(9,9,1165,0.78),
(10,10,126,0.08);
/*!40000 ALTER TABLE `p03_desistencia_por_ano_do_curso` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p03_desistencia_por_area`
--

DROP TABLE IF EXISTS `p03_desistencia_por_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p03_desistencia_por_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_cine_area_geral` varchar(64) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `desistiram` int(11) DEFAULT NULL,
  `concluiram` int(11) DEFAULT NULL,
  `pct_desistiu` decimal(6,2) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p03_desistencia_por_area_no_cine_area_geral` (`no_cine_area_geral`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p03_desistencia_por_area`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p03_desistencia_por_area` WRITE;
/*!40000 ALTER TABLE `p03_desistencia_por_area` DISABLE KEYS */;
INSERT INTO `p03_desistencia_por_area` VALUES
(1,'Engenharia, produção e construção',32596,21301,8496,65.35,26.06),
(2,'Serviços',6196,4042,2012,65.24,32.47),
(3,'Computação e Tecnologias da Informação e Comunicação (TIC)',8146,5307,1824,65.15,22.39),
(4,'Negócios, administração e direito',83802,53114,26935,63.38,32.14),
(5,'Artes e humanidades',1528,958,453,62.70,29.65),
(6,'Ciências sociais, comunicação e informação',14105,8433,4337,59.79,30.75),
(7,'Saúde e bem-estar',48200,27901,17622,57.89,36.56),
(8,'Educação',27899,14942,8822,53.56,31.62),
(9,'Agricultura, silvicultura, pesca e veterinária',21535,11466,7069,53.24,32.83),
(10,'Ciências naturais, matemática e estatística',2412,1187,579,49.21,24.00);
/*!40000 ALTER TABLE `p03_desistencia_por_area` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p03_desistencia_por_curso`
--

DROP TABLE IF EXISTS `p03_desistencia_por_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p03_desistencia_por_curso` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_cine_rotulo` varchar(64) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `desistiram` int(11) DEFAULT NULL,
  `concluiram` int(11) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `pct_desistiu` decimal(7,2) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p03_desistencia_por_curso`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p03_desistencia_por_curso` WRITE;
/*!40000 ALTER TABLE `p03_desistencia_por_curso` DISABLE KEYS */;
INSERT INTO `p03_desistencia_por_curso` VALUES
(1,'Segurança pública',33,33,0,1,100.00,0.00),
(2,'Eletrotécnica industrial',181,163,9,2,90.06,4.97),
(3,'Engenharia ambiental',716,601,112,3,83.94,15.64),
(4,'Ciências aeronáuticas',553,453,98,2,81.92,17.72),
(5,'Fotografia',259,208,51,1,80.31,19.69),
(6,'Agronegócio',822,645,177,4,78.47,21.53),
(7,'Biocombustíveis',107,83,24,1,77.57,22.43),
(8,'Gestão da qualidade',74,57,17,1,77.03,22.97),
(9,'Engenharia de produção',2224,1699,484,13,76.39,21.76),
(10,'Educação física',4442,3313,1055,14,74.58,23.75),
(11,'Geoprocessamento',162,120,23,1,74.07,14.20),
(12,'Moda',240,177,62,1,73.75,25.83),
(13,'Segurança no trabalho',53,39,14,1,73.58,26.42),
(14,'Construção de edifícios',270,198,48,1,73.33,17.78),
(15,'Gestão financeira',268,196,72,3,73.13,26.87),
(16,'Gestão comercial',829,601,228,4,72.50,27.50),
(17,'Redes de computadores',853,613,194,7,71.86,22.74),
(18,'Radiologia',1080,770,308,3,71.30,28.52),
(19,'Ciências naturais formação de professor',286,203,58,2,70.98,20.28),
(20,'Engenharia mecânica',2328,1636,464,8,70.27,19.93),
(21,'Automação industrial',416,288,81,3,69.23,19.47),
(22,'Gestão da produção',162,111,50,2,68.52,30.86),
(23,'Estética e cosmética',3127,2139,978,12,68.40,31.28),
(24,'Agrocomputação',148,100,42,2,67.57,28.38),
(25,'Engenharia elétrica',2859,1925,658,10,67.33,23.02),
(26,'Sistemas de informação',4501,2995,997,26,66.54,22.15),
(27,'Matemática formação de professor',2617,1735,395,10,66.30,15.09),
(28,'Publicidade e propaganda',1056,697,276,5,66.00,26.14),
(29,'Fisioterapia',8290,5461,2642,17,65.87,31.87),
(30,'Design de interiores',508,332,176,2,65.35,34.65),
(31,'Agroindústria',239,156,52,3,65.27,21.76),
(32,'Administração',14202,9265,3890,50,65.24,27.39),
(33,'Arquitetura e urbanismo',5436,3542,1611,16,65.16,29.64),
(34,'Engenharia civil',12325,7974,3819,27,64.70,30.99),
(35,'Engenharia de computação',1164,745,174,4,64.00,14.95),
(36,'Biomedicina',3659,2337,1274,14,63.87,34.82),
(37,'Direito',45761,29032,15205,59,63.44,33.23),
(38,'Gestão de negócios',298,189,93,4,63.42,31.21),
(39,'Logística',576,365,194,5,63.37,33.68),
(40,'Contabilidade',13458,8485,4209,41,63.05,31.28),
(41,'Ciência da computação',2248,1417,430,10,63.03,19.13),
(42,'Engenharia de controle e automação',1214,764,195,5,62.93,16.06),
(43,'Engenharia de alimentos',860,535,214,6,62.21,24.88),
(44,'Marketing',504,313,190,3,62.10,37.70),
(45,'Psicologia',10293,6349,3434,27,61.68,33.36),
(46,'Gestão de pessoas',3613,2223,1337,18,61.53,37.01),
(47,'Enfermagem',11810,7247,3854,32,61.36,32.63),
(48,'Letras português inglês formação de professor',1166,714,322,6,61.23,27.62),
(49,'Nutrição',4217,2557,1518,14,60.64,36.00),
(50,'Jornalismo',1375,831,367,7,60.44,26.69),
(51,'Gestão do agronegócio',1420,842,546,7,59.30,38.45),
(52,'Biotecnologia',142,84,27,1,59.15,19.01),
(53,'Comércio exterior',168,98,70,1,58.33,41.67),
(54,'Física formação de professor',1123,651,162,6,57.97,14.43),
(55,'Serviço social',1330,769,391,6,57.82,29.40),
(56,'Gastronomia',1665,954,711,3,57.30,42.70),
(57,'Fonoaudiologia',194,111,78,1,57.22,40.21),
(58,'Física',380,216,51,1,56.84,13.42),
(59,'Educação física formação de professor',3866,2187,1239,19,56.57,32.05),
(60,'Agronomia',13143,7409,4386,29,56.37,33.37),
(61,'Controle de obras',246,138,35,1,56.10,14.23),
(62,'Teologia',250,140,106,2,56.00,42.40),
(63,'Química formação de professor',1033,574,205,5,55.57,19.85),
(64,'Turismo',765,424,211,4,55.42,27.58),
(65,'Letras português francês formação de professor',119,65,22,1,54.62,18.49),
(66,'Engenharia florestal',1445,779,319,5,53.91,22.08),
(67,'Gestão ambiental',410,220,153,2,53.66,37.32),
(68,'Gestão pública',946,506,364,6,53.49,38.48),
(69,'Geografia',325,172,61,1,52.92,18.77),
(70,'Ciências sociais',189,100,21,1,52.91,11.11),
(71,'Farmácia',4657,2461,1978,16,52.85,42.47),
(72,'Economia',1657,874,359,3,52.75,21.67),
(73,'Biologia',761,401,237,5,52.69,31.14),
(74,'Biologia formação de professor',3037,1582,792,14,52.09,26.08),
(75,'Pedagogia',8271,4263,3634,33,51.54,43.94),
(76,'Sistemas para internet',164,84,36,1,51.22,21.95),
(77,'Manejo da produção agrícola',123,63,40,1,51.22,32.52),
(78,'Geografia formação de professor',1643,823,426,7,50.09,25.93),
(79,'Letras português espanhol formação de professor',298,148,99,5,49.66,33.22),
(80,'Filosofia',161,79,24,1,49.07,14.91),
(81,'História formação de professor',1275,622,361,3,48.78,28.31),
(82,'Filosofia formação de professor',469,228,164,3,48.61,34.97),
(83,'Engenharia de transportes',346,164,56,1,47.40,16.18),
(84,'Alimentos',511,242,102,2,47.36,19.96),
(85,'Letras português formação de professor',1941,917,638,8,47.24,32.87),
(86,'Ciências sociais formação de professor',181,85,28,1,46.96,15.47),
(87,'Química',350,163,93,1,46.57,26.57),
(88,'Música formação de professor',108,50,17,1,46.30,15.74),
(89,'Saúde coletiva',497,221,109,1,44.47,21.93),
(90,'Rádio, TV e internet',87,38,48,1,43.68,55.17),
(91,'Medicina veterinária',2326,1009,1061,5,43.38,45.61),
(92,'Odontologia',4757,2036,2563,13,42.80,53.88),
(93,'Gestão da tecnologia da informação',232,98,125,2,42.24,53.88),
(94,'Engenharia de minas',256,107,51,1,41.80,19.92),
(95,'Zootecnia',2565,1057,793,10,41.21,30.92),
(96,'Engenharia agrícola',872,348,241,2,39.91,27.64),
(97,'Letras inglês formação de professor',149,58,53,1,38.93,35.57),
(98,'Engenharia ambiental e sanitária',381,145,100,1,38.06,26.25),
(99,'Engenharia química',330,124,98,1,37.58,29.70),
(100,'Estatística',376,137,51,1,36.44,13.56),
(101,'Biblioteconomia',163,53,47,1,32.52,28.83),
(102,'Secretariado',381,111,132,1,29.13,34.65),
(103,'Gestão de cooperativas',63,18,44,1,28.57,69.84),
(104,'Geologia',241,66,97,1,27.39,40.25),
(105,'Medicina',3267,618,1852,7,18.92,56.69),
(106,'Cinema e audiovisual',84,12,25,1,14.29,29.76),
(107,'Letras língua brasileira de sinais formação de professor',184,22,89,1,11.96,48.37),
(108,'Educação indígena formação de professor',115,11,104,2,9.57,90.43);
/*!40000 ALTER TABLE `p03_desistencia_por_curso` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p04_coorte_presencial_vs_ead`
--

DROP TABLE IF EXISTS `p04_coorte_presencial_vs_ead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p04_coorte_presencial_vs_ead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `escopo` varchar(32) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `pct_desistiu` decimal(6,2) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p04_coorte_presencial_vs_ead`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p04_coorte_presencial_vs_ead` WRITE;
/*!40000 ALTER TABLE `p04_coorte_presencial_vs_ead` DISABLE KEYS */;
INSERT INTO `p04_coorte_presencial_vs_ead` VALUES
(1,'Presencial MT (coorte)',246419,60.32,31.71),
(2,'EAD Brasil (coorte)',7784636,67.41,28.13);
/*!40000 ALTER TABLE `p04_coorte_presencial_vs_ead` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p04_modalidade_por_ano`
--

DROP TABLE IF EXISTS `p04_modalidade_por_ano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p04_modalidade_por_ano` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_censo` int(11) DEFAULT NULL,
  `modalidade` varchar(16) DEFAULT NULL,
  `matriculas` int(11) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `trancados` int(11) DEFAULT NULL,
  `concluintes` int(11) DEFAULT NULL,
  `taxa_desvinculacao_pct` decimal(6,2) DEFAULT NULL,
  `taxa_trancamento_pct` decimal(6,2) DEFAULT NULL,
  `share_das_desistencias_pct` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p04_modalidade_por_ano_nu_ano_censo` (`nu_ano_censo`),
  KEY `ix_p04_modalidade_por_ano_modalidade` (`modalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p04_modalidade_por_ano`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p04_modalidade_por_ano` WRITE;
/*!40000 ALTER TABLE `p04_modalidade_por_ano` DISABLE KEYS */;
INSERT INTO `p04_modalidade_por_ano` VALUES
(1,2021,'EAD',79254,134657,29231,15016,10028,21.71,11.15,63.20),
(2,2021,'Presencial',97464,153990,17024,23598,15643,11.06,15.32,36.80),
(3,2022,'EAD',89311,161530,46470,15662,9090,28.77,9.70,71.93),
(4,2022,'Presencial',95355,151762,18137,22930,15159,11.95,15.11,28.07),
(5,2023,'EAD',98807,178923,49361,19503,10051,27.59,10.90,68.85),
(6,2023,'Presencial',92727,151250,22332,23280,12657,14.76,15.39,31.15),
(7,2024,'EAD',99380,189996,59331,19986,9792,31.23,10.52,78.83),
(8,2024,'Presencial',90489,145100,15932,25511,12791,10.98,17.58,21.17);
/*!40000 ALTER TABLE `p04_modalidade_por_ano` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p04_modalidade_rede`
--

DROP TABLE IF EXISTS `p04_modalidade_rede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p04_modalidade_rede` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modalidade` varchar(16) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `matriculas` int(11) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `taxa_desvinculacao_pct` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p04_modalidade_rede_modalidade` (`modalidade`),
  KEY `ix_p04_modalidade_rede_rede` (`rede`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p04_modalidade_rede`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p04_modalidade_rede` WRITE;
/*!40000 ALTER TABLE `p04_modalidade_rede` DISABLE KEYS */;
INSERT INTO `p04_modalidade_rede` VALUES
(1,'EAD','Privada',348648,640771,182155,28.43),
(2,'EAD','Publica',18104,24335,2238,9.20),
(3,'Presencial','Privada',199207,324964,55443,17.06),
(4,'Presencial','Publica',176828,277138,17982,6.49);
/*!40000 ALTER TABLE `p04_modalidade_rede` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p05_desistencia_por_ano_calendario`
--

DROP TABLE IF EXISTS `p05_desistencia_por_ano_calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p05_desistencia_por_ano_calendario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_censo` int(11) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `matriculas` int(11) DEFAULT NULL,
  `taxa_desvinculacao_pct` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p05_desistencia_por_ano_cale_nu_ano_censo` (`nu_ano_censo`),
  KEY `ix_p05_desistencia_por_ano_cale_rede` (`rede`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p05_desistencia_por_ano_calendario`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p05_desistencia_por_ano_calendario` WRITE;
/*!40000 ALTER TABLE `p05_desistencia_por_ano_calendario` DISABLE KEYS */;
INSERT INTO `p05_desistencia_por_ano_calendario` VALUES
(1,2021,'Privada',216782,43669,126384,20.14),
(2,2021,'Publica',71865,2586,50334,3.60),
(3,2022,'Privada',238068,61704,134835,25.92),
(4,2022,'Publica',75224,2903,49831,3.86),
(5,2023,'Privada',251063,60272,143587,24.01),
(6,2023,'Publica',79110,11421,47947,14.44),
(7,2024,'Privada',259822,71953,143049,27.69),
(8,2024,'Publica',75274,3310,46820,4.40),
(9,2021,'Total MT',288647,46255,NULL,16.02),
(10,2022,'Total MT',313292,64607,NULL,20.62),
(11,2023,'Total MT',330173,71693,NULL,21.71),
(12,2024,'Total MT',335096,75263,NULL,22.46);
/*!40000 ALTER TABLE `p05_desistencia_por_ano_calendario` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p05_desistencia_por_ano_referencia`
--

DROP TABLE IF EXISTS `p05_desistencia_por_ano_referencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p05_desistencia_por_ano_referencia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_referencia` int(11) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `desistencias` int(11) DEFAULT NULL,
  `em_risco` int(11) DEFAULT NULL,
  `desistencias_total_ano` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p05_desistencia_por_ano_refe_nu_ano_referencia` (`nu_ano_referencia`),
  KEY `ix_p05_desistencia_por_ano_refe_rede` (`rede`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p05_desistencia_por_ano_referencia`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p05_desistencia_por_ano_referencia` WRITE;
/*!40000 ALTER TABLE `p05_desistencia_por_ano_referencia` DISABLE KEYS */;
INSERT INTO `p05_desistencia_por_ano_referencia` VALUES
(1,2015,'Privada',2271,27461,2871),
(2,2015,'Publica',600,11303,2871),
(3,2016,'Privada',12942,46670,15158),
(4,2016,'Publica',2216,21398,15158),
(5,2017,'Privada',16325,60519,19195),
(6,2017,'Publica',2870,30850,19195),
(7,2018,'Privada',15842,71018,20815),
(8,2018,'Publica',4973,37564,20815),
(9,2019,'Privada',23995,69550,29486),
(10,2019,'Publica',5491,41999,29486),
(11,2020,'Privada',20665,58910,23402),
(12,2020,'Publica',2737,45182,23402),
(13,2021,'Privada',11123,36730,12747),
(14,2021,'Publica',1624,39656,12747),
(15,2022,'Privada',7866,20924,8890),
(16,2022,'Publica',1024,33649,8890),
(17,2023,'Privada',3842,10349,11722),
(18,2023,'Publica',7880,22175,11722),
(19,2024,'Privada',2392,3580,4365),
(20,2024,'Publica',1973,15926,4365);
/*!40000 ALTER TABLE `p05_desistencia_por_ano_referencia` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p05_publica_x_privada_funil`
--

DROP TABLE IF EXISTS `p05_publica_x_privada_funil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p05_publica_x_privada_funil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rede` varchar(16) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `concluiram` int(11) DEFAULT NULL,
  `desistiram` int(11) DEFAULT NULL,
  `seguiam` int(11) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  `pct_desistiu` decimal(6,2) DEFAULT NULL,
  `pct_seguia` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p05_publica_x_privada_funil_rede` (`rede`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p05_publica_x_privada_funil`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p05_publica_x_privada_funil` WRITE;
/*!40000 ALTER TABLE `p05_publica_x_privada_funil` DISABLE KEYS */;
INSERT INTO `p05_publica_x_privada_funil` VALUES
(1,'Privada',175913,54999,117263,3580,31.26,66.66,2.04),
(2,'Publica',70506,23150,31388,15926,32.83,44.52,22.59);
/*!40000 ALTER TABLE `p05_publica_x_privada_funil` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p05_publica_x_privada_por_coorte`
--

DROP TABLE IF EXISTS `p05_publica_x_privada_por_coorte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p05_publica_x_privada_por_coorte` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rede` varchar(16) DEFAULT NULL,
  `nu_ano_ingresso` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `desistiram` int(11) DEFAULT NULL,
  `concluiram` int(11) DEFAULT NULL,
  `pct_desistiu` decimal(6,2) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p05_publica_x_privada_por_co_rede` (`rede`),
  KEY `ix_p05_publica_x_privada_por_co_nu_ano_ingresso` (`nu_ano_ingresso`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p05_publica_x_privada_por_coorte`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p05_publica_x_privada_por_coorte` WRITE;
/*!40000 ALTER TABLE `p05_publica_x_privada_por_coorte` DISABLE KEYS */;
INSERT INTO `p05_publica_x_privada_por_coorte` VALUES
(1,'Privada',2015,30003,18515,11437,61.71,38.12),
(2,'Privada',2016,33103,22646,10369,68.41,31.32),
(3,'Privada',2017,32475,22413,9880,69.02,30.42),
(4,'Privada',2018,30711,20387,9893,66.38,32.21),
(5,'Privada',2019,29212,19949,8313,68.29,28.46),
(6,'Privada',2020,20409,13353,5107,65.43,25.02),
(7,'Publica',2015,11915,6577,4816,55.20,40.42),
(8,'Publica',2016,12350,6409,5020,51.89,40.65),
(9,'Publica',2017,12484,6240,4724,49.98,37.84),
(10,'Publica',2018,12512,4594,4234,36.72,33.84),
(11,'Publica',2019,12669,4537,3170,35.81,25.02),
(12,'Publica',2020,8576,3031,1186,35.34,13.83);
/*!40000 ALTER TABLE `p05_publica_x_privada_por_coorte` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p06_anomalias_rede_modalidade`
--

DROP TABLE IF EXISTS `p06_anomalias_rede_modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p06_anomalias_rede_modalidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_censo` int(11) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `modalidade` varchar(16) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `taxa_evasao_pct` decimal(6,2) DEFAULT NULL,
  `media_do_grupo` decimal(8,4) DEFAULT NULL,
  `desvio_pp` decimal(7,4) DEFAULT NULL,
  `z` decimal(7,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p06_anomalias_rede_modalidad_nu_ano_censo` (`nu_ano_censo`),
  KEY `ix_p06_anomalias_rede_modalidad_rede` (`rede`),
  KEY `ix_p06_anomalias_rede_modalidad_modalidade` (`modalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p06_anomalias_rede_modalidade`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p06_anomalias_rede_modalidade` WRITE;
/*!40000 ALTER TABLE `p06_anomalias_rede_modalidade` DISABLE KEYS */;
INSERT INTO `p06_anomalias_rede_modalidade` VALUES
(1,2023,'Publica','EAD',5865,17.83,9.2805,8.5541,1.4766),
(2,2023,'Publica','Presencial',73245,14.16,6.3321,7.8327,1.4940),
(3,2021,'Privada','EAD',127990,22.44,28.0086,-5.5701,-1.3597),
(4,2024,'Privada','EAD',183688,32.12,28.0086,4.1133,1.0041),
(5,2024,'Publica','EAD',6308,5.18,9.2805,-4.0966,-0.7072),
(6,2021,'Publica','Presencial',65198,3.18,6.3321,-3.1510,-0.6010),
(7,2022,'Publica','EAD',5495,6.42,9.2805,-2.8565,-0.4931),
(8,2022,'Publica','Presencial',69729,3.66,6.3321,-2.6750,-0.5102),
(9,2024,'Publica','Presencial',68966,4.33,6.3321,-2.0067,-0.3828),
(10,2022,'Privada','Presencial',82033,19.00,17.0437,1.9572,1.2984),
(11,2023,'Privada','Presencial',78005,15.33,17.0437,-1.7152,-1.1379),
(12,2021,'Publica','EAD',6667,7.68,9.2805,-1.6009,-0.2764),
(13,2022,'Privada','EAD',156035,29.56,28.0086,1.5470,0.3776),
(14,2021,'Privada','Presencial',88792,16.84,17.0437,-0.2066,-0.1370),
(15,2023,'Privada','EAD',173058,27.92,28.0086,-0.0902,-0.0220),
(16,2024,'Privada','Presencial',76134,17.01,17.0437,-0.0355,-0.0235);
/*!40000 ALTER TABLE `p06_anomalias_rede_modalidade` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p06_desistencia_anual_coorte_presencial`
--

DROP TABLE IF EXISTS `p06_desistencia_anual_coorte_presencial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p06_desistencia_anual_coorte_presencial` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_referencia` int(11) DEFAULT NULL,
  `desistencias` int(11) DEFAULT NULL,
  `permanencia` int(11) DEFAULT NULL,
  `concluintes` int(11) DEFAULT NULL,
  `em_risco` int(11) DEFAULT NULL,
  `taxa_desistencia_ano_pct` decimal(6,2) DEFAULT NULL,
  `var_pp_ano_anterior` decimal(7,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p06_desistencia_anual_coorte_nu_ano_referencia` (`nu_ano_referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p06_desistencia_anual_coorte_presencial`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p06_desistencia_anual_coorte_presencial` WRITE;
/*!40000 ALTER TABLE `p06_desistencia_anual_coorte_presencial` DISABLE KEYS */;
INSERT INTO `p06_desistencia_anual_coorte_presencial` VALUES
(1,2021,12747,76386,14949,104082,12.25,NULL),
(2,2022,8890,54573,12915,76378,11.64,-0.6076),
(3,2023,11722,32524,10318,54564,21.48,9.8436),
(4,2024,4365,19506,8650,32521,13.42,-8.0609);
/*!40000 ALTER TABLE `p06_desistencia_anual_coorte_presencial` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p06_evasao_anual_rede_modalidade`
--

DROP TABLE IF EXISTS `p06_evasao_anual_rede_modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p06_evasao_anual_rede_modalidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_censo` int(11) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `modalidade` varchar(16) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `trancados` int(11) DEFAULT NULL,
  `matriculas` int(11) DEFAULT NULL,
  `taxa_evasao_pct` decimal(6,2) DEFAULT NULL,
  `taxa_evasao_ampla_pct` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p06_evasao_anual_rede_modali_nu_ano_censo` (`nu_ano_censo`),
  KEY `ix_p06_evasao_anual_rede_modali_rede` (`rede`),
  KEY `ix_p06_evasao_anual_rede_modali_modalidade` (`modalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p06_evasao_anual_rede_modalidade`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p06_evasao_anual_rede_modalidade` WRITE;
/*!40000 ALTER TABLE `p06_evasao_anual_rede_modalidade` DISABLE KEYS */;
INSERT INTO `p06_evasao_anual_rede_modalidade` VALUES
(1,2021,'Privada','EAD',127990,28719,14764,74370,22.44,33.97),
(2,2021,'Privada','Presencial',88792,14950,9784,52014,16.84,27.86),
(3,2021,'Publica','EAD',6667,512,252,4884,7.68,11.46),
(4,2021,'Publica','Presencial',65198,2074,13814,45450,3.18,24.37),
(5,2022,'Privada','EAD',156035,46117,15469,85186,29.56,39.47),
(6,2022,'Privada','Presencial',82033,15587,7445,49649,19.00,28.08),
(7,2022,'Publica','EAD',5495,353,193,4125,6.42,9.94),
(8,2022,'Publica','Presencial',69729,2550,15485,45706,3.66,25.86),
(9,2023,'Privada','EAD',173058,48315,18985,94585,27.92,38.89),
(10,2023,'Privada','Presencial',78005,11957,8146,49002,15.33,25.77),
(11,2023,'Publica','EAD',5865,1046,518,4222,17.83,26.67),
(12,2023,'Publica','Presencial',73245,10375,15134,43725,14.16,34.83),
(13,2024,'Privada','EAD',183688,59004,19065,94507,32.12,42.50),
(14,2024,'Privada','Presencial',76134,12949,7079,48542,17.01,26.31),
(15,2024,'Publica','EAD',6308,327,921,4873,5.18,19.78),
(16,2024,'Publica','Presencial',68966,2983,18432,41947,4.33,31.05);
/*!40000 ALTER TABLE `p06_evasao_anual_rede_modalidade` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p06_evasao_anual_total_mt`
--

DROP TABLE IF EXISTS `p06_evasao_anual_total_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p06_evasao_anual_total_mt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_censo` int(11) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `trancados` int(11) DEFAULT NULL,
  `matriculas` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `concluintes` int(11) DEFAULT NULL,
  `taxa_evasao_pct` decimal(6,2) DEFAULT NULL,
  `var_pp_ano_anterior` decimal(7,4) DEFAULT NULL,
  `var_pct_desvinculados` decimal(6,2) DEFAULT NULL,
  `desvio_pp` decimal(7,4) DEFAULT NULL,
  `z` decimal(7,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p06_evasao_anual_total_mt_nu_ano_censo` (`nu_ano_censo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p06_evasao_anual_total_mt`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p06_evasao_anual_total_mt` WRITE;
/*!40000 ALTER TABLE `p06_evasao_anual_total_mt` DISABLE KEYS */;
INSERT INTO `p06_evasao_anual_total_mt` VALUES
(1,2021,288647,46255,38614,176718,80284,25671,16.02,NULL,NULL,-4.1804,-1.4478),
(2,2022,313292,64607,38592,184666,97989,24249,20.62,4.5972,39.68,0.4168,0.1444),
(3,2023,330173,71693,42783,191534,102176,22708,21.71,1.0918,10.97,1.5086,0.5225),
(4,2024,335096,75263,45497,189869,99532,22583,22.46,0.7464,4.98,2.2550,0.7810);
/*!40000 ALTER TABLE `p06_evasao_anual_total_mt` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p07_privada_faixa_financiamento`
--

DROP TABLE IF EXISTS `p07_privada_faixa_financiamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p07_privada_faixa_financiamento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faixa_financ` varchar(32) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `pct_financ_medio` decimal(6,2) DEFAULT NULL,
  `taxa_evasao_pct` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p07_privada_faixa_financiame_faixa_financ` (`faixa_financ`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p07_privada_faixa_financiamento`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p07_privada_faixa_financiamento` WRITE;
/*!40000 ALTER TABLE `p07_privada_faixa_financiamento` DISABLE KEYS */;
INSERT INTO `p07_privada_faixa_financiamento` VALUES
(1,'Q1 menos financiado',303,111628,21148,1.06,18.95),
(2,'Q2',375,181566,35189,21.82,19.38),
(3,'Q3',282,202766,52356,57.60,25.82),
(4,'Q4 mais financiado',165,125921,31222,92.91,24.79);
/*!40000 ALTER TABLE `p07_privada_faixa_financiamento` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p07_privada_faixa_financiamento_por_modalidade`
--

DROP TABLE IF EXISTS `p07_privada_faixa_financiamento_por_modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p07_privada_faixa_financiamento_por_modalidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modalidade` varchar(16) DEFAULT NULL,
  `faixa_financ` varchar(32) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `pct_financ_medio` decimal(6,2) DEFAULT NULL,
  `taxa_evasao_pct` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p07_privada_faixa_financiame_modalidade` (`modalidade`),
  KEY `ix_p07_privada_faixa_financiame_faixa_financ` (`faixa_financ`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p07_privada_faixa_financiamento_por_modalidade`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p07_privada_faixa_financiamento_por_modalidade` WRITE;
/*!40000 ALTER TABLE `p07_privada_faixa_financiamento_por_modalidade` DISABLE KEYS */;
INSERT INTO `p07_privada_faixa_financiamento_por_modalidade` VALUES
(1,'EAD','Q1 menos financiado',127,55354,14371,1.08,25.96),
(2,'EAD','Q2',97,65540,17767,24.12,27.11),
(3,'EAD','Q3',102,85994,27376,56.69,31.83),
(4,'EAD','Q4 mais financiado',110,104781,27922,92.72,26.65),
(5,'Presencial','Q1 menos financiado',176,56274,6777,1.02,12.04),
(6,'Presencial','Q2',278,116026,17422,19.00,15.02),
(7,'Presencial','Q3',180,116772,24980,59.04,21.39),
(8,'Presencial','Q4 mais financiado',55,21140,3300,94.21,15.61);
/*!40000 ALTER TABLE `p07_privada_faixa_financiamento_por_modalidade` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p07_resumo_pago_x_gratuito`
--

DROP TABLE IF EXISTS `p07_resumo_pago_x_gratuito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p07_resumo_pago_x_gratuito` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cobranca` varchar(16) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `desistiram` int(11) DEFAULT NULL,
  `concluiram` int(11) DEFAULT NULL,
  `pct_desistiu` decimal(6,2) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  `desistencias` int(11) DEFAULT NULL,
  `tempo_medio_ate_desistir_anos` decimal(6,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p07_resumo_pago_x_gratuito_cobranca` (`cobranca`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p07_resumo_pago_x_gratuito`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p07_resumo_pago_x_gratuito` WRITE;
/*!40000 ALTER TABLE `p07_resumo_pago_x_gratuito` DISABLE KEYS */;
INSERT INTO `p07_resumo_pago_x_gratuito` VALUES
(1,'Gratuito',251,70506,31389,23148,44.52,32.83,31389,3.876),
(2,'Pago',466,168959,111672,53639,66.09,31.75,111672,2.653);
/*!40000 ALTER TABLE `p07_resumo_pago_x_gratuito` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p07_sobrevivencia_por_cobranca`
--

DROP TABLE IF EXISTS `p07_sobrevivencia_por_cobranca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p07_sobrevivencia_por_cobranca` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cobranca` varchar(16) DEFAULT NULL,
  `ano_curso` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `desistencia_acum` int(11) DEFAULT NULL,
  `permanencia` int(11) DEFAULT NULL,
  `concluinte_acum` int(11) DEFAULT NULL,
  `pct_ainda_vinculado` decimal(6,2) DEFAULT NULL,
  `pct_desistiu_acum` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p07_sobrevivencia_por_cobran_cobranca` (`cobranca`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p07_sobrevivencia_por_cobranca`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p07_sobrevivencia_por_cobranca` WRITE;
/*!40000 ALTER TABLE `p07_sobrevivencia_por_cobranca` DISABLE KEYS */;
INSERT INTO `p07_sobrevivencia_por_cobranca` VALUES
(1,'Gratuito',1,70506,4078,66373,51,94.22,5.78),
(2,'Gratuito',2,70506,11657,58620,219,83.47,16.53),
(3,'Gratuito',3,70506,15524,54255,708,77.98,22.02),
(4,'Gratuito',4,70506,20332,46168,3978,71.16,28.84),
(5,'Gratuito',5,70506,24484,34670,11317,65.27,34.73),
(6,'Gratuito',6,61930,23102,21754,17035,62.70,37.30),
(7,'Gratuito',7,49261,20866,11246,17111,57.64,42.36),
(8,'Gratuito',8,36749,18127,4506,14086,50.67,49.33),
(9,'Gratuito',9,24240,12875,1641,9701,46.89,53.11),
(10,'Gratuito',10,11890,6561,510,4807,44.82,55.18),
(11,'Pago',1,168959,35144,132447,1360,79.20,20.80),
(12,'Pago',2,168959,62972,100475,5483,62.73,37.27),
(13,'Pago',3,168959,79930,77698,11286,52.69,47.31),
(14,'Pago',4,168959,94439,52694,21770,44.11,55.89),
(15,'Pago',5,168959,104753,23004,41139,38.00,62.00),
(16,'Pago',6,148681,95952,6126,46543,35.46,64.54),
(17,'Pago',7,120041,78306,1870,39818,34.77,65.23),
(18,'Pago',8,89976,59088,569,30285,34.33,65.67),
(19,'Pago',9,58766,38007,158,20576,35.32,64.68),
(20,'Pago',10,27531,16940,34,10541,38.47,61.53);
/*!40000 ALTER TABLE `p07_sobrevivencia_por_cobranca` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p08_correlacoes`
--

DROP TABLE IF EXISTS `p08_correlacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p08_correlacoes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `indicador` varchar(16) DEFAULT NULL,
  `correlacao_com_desistencia` decimal(7,4) DEFAULT NULL,
  `n_registros` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p08_correlacoes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p08_correlacoes` WRITE;
/*!40000 ALTER TABLE `p08_correlacoes` DISABLE KEYS */;
INSERT INTO `p08_correlacoes` VALUES
(1,'cpc_continuo',-0.1816,2144),
(2,'enade_continuo',-0.3760,2144),
(3,'idd_continuo',-0.2124,2062);
/*!40000 ALTER TABLE `p08_correlacoes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p08_curso_nota_x_desistencia`
--

DROP TABLE IF EXISTS `p08_curso_nota_x_desistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p08_curso_nota_x_desistencia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `co_curso` int(11) DEFAULT NULL,
  `no_curso` varchar(64) DEFAULT NULL,
  `no_cine_rotulo` varchar(48) DEFAULT NULL,
  `no_cine_area_geral` varchar(64) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `modalidade` varchar(16) DEFAULT NULL,
  `grau_academico` varchar(16) DEFAULT NULL,
  `coorte` int(11) DEFAULT NULL,
  `qt_ingressante` int(11) DEFAULT NULL,
  `pct_desistiu` decimal(7,2) DEFAULT NULL,
  `pct_concluiu` decimal(6,2) DEFAULT NULL,
  `cpc_continuo` decimal(7,4) DEFAULT NULL,
  `cpc_faixa` int(11) DEFAULT NULL,
  `enade_continuo` decimal(6,3) DEFAULT NULL,
  `ano_cpc` int(11) DEFAULT NULL,
  `idd_continuo` decimal(7,4) DEFAULT NULL,
  `idd_faixa` int(11) DEFAULT NULL,
  `enade_faixa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p08_curso_nota_x_desistencia_co_curso` (`co_curso`),
  KEY `ix_p08_curso_nota_x_desistencia_no_cine_area_geral` (`no_cine_area_geral`),
  KEY `ix_p08_curso_nota_x_desistencia_rede` (`rede`),
  KEY `ix_p08_curso_nota_x_desistencia_modalidade` (`modalidade`),
  KEY `ix_p08_curso_nota_x_desistencia_grau_academico` (`grau_academico`),
  KEY `ix_p08_curso_nota_x_desistencia_coorte` (`coorte`),
  KEY `ix_p08_curso_nota_x_desistencia_cpc_faixa` (`cpc_faixa`)
) ENGINE=InnoDB AUTO_INCREMENT=2145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p08_curso_nota_x_desistencia`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p08_curso_nota_x_desistencia` WRITE;
/*!40000 ALTER TABLE `p08_curso_nota_x_desistencia` DISABLE KEYS */;
INSERT INTO `p08_curso_nota_x_desistencia` VALUES
(1,1330494,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,100,87.00,13.00,2.0030,3,1.168,2023,0.8558,1,2),
(2,1310955,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2018,81,50.62,29.63,2.5860,3,2.803,2021,2.1150,3,3),
(3,1160216,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,60,59.32,32.20,1.4070,2,0.643,2023,0.4469,1,1),
(4,1171800,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,30,50.00,50.00,2.3680,3,1.826,2023,NULL,NULL,2),
(5,123052,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2015,93,69.89,19.35,3.0518,4,1.590,2022,2.5343,3,2),
(6,111910,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,40,32.50,50.00,3.2020,4,3.003,2023,2.9256,3,4),
(7,36,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2018,52,23.08,44.23,3.0370,4,2.695,2021,2.4440,3,3),
(8,1168551,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,51,54.90,41.18,3.2150,4,3.185,2021,2.2770,3,4),
(9,16280,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,96,36.84,45.26,2.2529,3,2.683,2022,1.8506,2,3),
(10,1265414,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,116,27.59,56.90,2.9716,4,2.995,2022,3.1055,4,4),
(11,100358,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2020,39,48.72,51.28,2.8270,3,2.076,2021,2.7140,3,3),
(12,16265,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2018,81,37.04,49.38,2.1710,3,1.355,2021,1.5360,2,2),
(13,1303468,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,80,76.25,20.00,2.3930,3,1.076,2023,1.3379,2,2),
(14,1101170,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,37,32.43,67.57,2.0310,3,0.752,2023,2.5707,3,1),
(15,91391,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,127,46.46,44.88,2.6690,3,2.310,2022,2.8987,3,3),
(16,91369,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,59,8.47,54.24,2.0594,3,1.210,2022,1.8240,2,2),
(17,44,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,59,22.03,52.54,3.5070,4,4.191,2023,3.4881,4,5),
(18,1321981,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,91,40.66,51.65,2.6060,3,1.265,2023,1.5046,2,2),
(19,16281,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,90,52.22,28.89,2.6959,3,2.369,2022,2.4288,3,3),
(20,1270057,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,57,26.32,15.79,2.6350,3,2.089,2023,1.9379,2,3),
(21,1303435,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,100,71.00,26.00,1.9003,2,0.816,2022,1.2589,2,1),
(22,108710,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,45,53.33,44.44,3.0610,4,2.426,2023,3.3011,4,3),
(23,1135688,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,72,54.17,44.44,1.8390,2,1.000,2023,1.9193,2,2),
(24,1106707,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,230,69.57,29.13,2.0790,3,1.404,2023,0.8823,1,2),
(25,112846,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2020,33,21.21,9.09,3.1630,4,2.625,2021,2.9590,4,3),
(26,1365187,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,70,55.71,44.29,3.1710,4,1.785,2023,3.2725,4,2),
(27,1368246,'GESTÃO PÚBLICA','Gestão pública','Negócios, administração e direito','Publica','Presencial','Tecnologico',2017,40,55.00,45.00,1.4359,2,1.344,2022,0.2973,1,2),
(28,112770,'ENGENHARIA SANITARIA E AMBIENTAL','Engenharia ambiental e sanitária','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,57,14.04,7.02,2.8140,3,2.604,2023,2.3107,3,3),
(29,108694,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,100,82.00,15.00,2.7120,3,1.470,2023,2.4372,3,2),
(30,108710,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,64,39.06,35.94,3.0610,4,2.426,2023,3.3011,4,3),
(31,16817,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,1305,75.02,24.21,2.1387,3,1.550,2022,1.5667,2,2),
(32,116428,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,68,80.88,11.76,1.8070,2,0.493,2023,0.8619,1,1),
(33,1321982,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,63,35.48,58.06,2.2360,3,1.595,2023,1.3290,2,2),
(34,1134353,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,47,31.91,59.57,3.0640,4,2.836,2023,3.3057,4,3),
(35,1330831,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,34,67.65,32.35,2.0880,3,0.268,2023,1.4201,2,1),
(36,108756,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,75,72.00,28.00,2.3845,3,0.954,2022,1.3406,2,2),
(37,108694,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,370,70.81,29.19,2.7120,3,1.470,2023,2.4372,3,2),
(38,1103426,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,68,66.18,33.82,2.9360,3,2.433,2021,1.8100,2,3),
(39,1160215,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,62,77.42,22.58,1.9400,2,0.760,2023,1.9987,3,1),
(40,37,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,59,27.12,61.02,3.1090,4,3.599,2023,2.0795,3,4),
(41,16264,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2018,78,62.82,25.64,2.2280,3,1.340,2021,1.7220,2,2),
(42,115058,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2020,125,84.00,16.00,3.4750,4,2.322,2023,2.8534,3,3),
(43,104051,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,148,68.24,31.76,2.6810,3,1.394,2023,2.0509,3,2),
(44,1072168,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,40,67.50,32.50,2.6950,3,1.881,2023,2.7870,3,2),
(45,1269969,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2018,37,62.16,27.03,2.4150,3,1.401,2021,2.4000,3,2),
(46,1127343,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,55,27.27,12.73,3.0776,4,2.903,2022,3.3359,4,3),
(47,1305051,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,63,33.33,66.67,1.6615,2,0.490,2022,1.1612,2,1),
(48,109307,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,89,76.40,22.47,2.6850,3,1.817,2022,1.9422,2,2),
(49,104684,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,106,42.45,57.55,2.4119,3,2.257,2022,2.8242,3,3),
(50,1313190,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,34,38.24,29.41,2.4810,3,2.494,2023,2.1271,3,3),
(51,16274,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2018,41,48.78,31.71,2.3570,3,0.765,2021,1.9050,2,1),
(52,106050,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2015,37,83.78,16.22,2.8230,3,1.199,2021,2.3090,3,2),
(53,1121415,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,38,52.63,5.26,2.4800,3,2.694,2023,2.0129,3,3),
(54,1305050,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,68,22.39,76.12,1.2560,2,0.538,2023,0.5086,1,1),
(55,16270,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2018,89,58.43,34.83,2.4690,3,2.175,2021,2.4550,3,3),
(56,96134,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,47,97.87,2.13,3.6321,4,3.747,2022,3.2584,4,4),
(57,1161561,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,59,47.46,52.54,2.4839,3,1.487,2022,1.6460,2,2),
(58,1168453,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,36,36.11,55.56,2.0260,3,2.039,2023,1.4769,2,3),
(59,1313191,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2017,57,47.37,28.07,1.3921,2,1.269,2022,0.4620,1,2),
(60,1403526,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2017,44,75.00,25.00,1.9360,2,0.750,2021,1.4920,2,1),
(61,1166445,'AGRONEGÓCIO','Gestão do agronegócio','Negócios, administração e direito','Privada','Presencial','Tecnologico',2015,81,62.96,37.04,2.5350,3,3.213,2023,2.1585,3,4),
(62,96004,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,149,44.30,54.36,1.2821,2,0.808,2022,0.5904,1,1),
(63,109543,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,45,91.11,8.89,2.2960,3,1.042,2023,NULL,NULL,2),
(64,1268136,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,79,50.63,30.38,2.4720,3,2.072,2023,2.9001,3,3),
(65,1122943,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,60,56.67,35.00,3.2270,4,2.036,2023,2.0737,3,3),
(66,105575,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,82,59.76,31.71,3.2170,4,2.782,2023,3.4053,4,3),
(67,1122942,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,67,68.66,31.34,4.1230,5,3.668,2021,3.9700,5,4),
(68,1330683,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,45,91.11,8.89,1.9900,3,0.699,2021,0.0000,1,1),
(69,16272,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2018,80,85.00,11.25,2.4070,3,1.684,2021,2.5220,3,2),
(70,113559,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,39,48.72,12.82,2.8060,3,2.075,2023,1.8204,2,3),
(71,1310955,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2017,76,69.74,22.37,2.5860,3,2.803,2021,2.1150,3,3),
(72,16273,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2018,78,56.41,21.79,2.0970,3,1.244,2021,2.2300,3,2),
(73,1305051,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,45,53.33,46.67,1.6615,2,0.490,2022,1.1612,2,1),
(74,1330682,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,33,87.88,12.12,1.6980,2,0.957,2021,0.0000,1,2),
(75,407852,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,52,59.62,40.38,2.0740,3,1.354,2021,2.1910,3,2),
(76,123620,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,98,65.31,34.69,2.9970,4,2.771,2023,1.9984,3,3),
(77,113555,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,35,42.86,17.14,2.9682,4,2.506,2022,3.0174,4,3),
(78,16271,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2018,90,52.22,40.00,2.7030,3,2.282,2021,2.2960,3,3),
(79,106052,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2015,52,67.31,32.69,3.0530,4,2.573,2021,2.4040,3,3),
(80,1419552,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,40,50.00,37.50,3.2003,4,2.681,2022,3.1871,4,3),
(81,1128077,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2020,54,33.33,3.70,2.4810,3,1.844,2021,2.2840,3,2),
(82,1116939,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,85,64.71,32.94,1.6690,2,0.537,2023,NULL,NULL,1),
(83,115023,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,38,52.63,0.00,2.1110,3,1.216,2023,2.1075,3,2),
(84,1321429,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,31,70.97,25.81,3.3080,4,1.823,2023,2.8609,3,2),
(85,1270010,'ENGENHARIA QUÍMICA','Engenharia química','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,58,29.31,31.03,2.4290,3,2.399,2023,1.5565,2,3),
(86,16267,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,79,44.30,29.11,2.1360,3,0.866,2021,1.6900,2,1),
(87,123055,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,67,32.84,67.16,3.1590,4,3.171,2023,3.1264,4,4),
(88,1368260,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2017,41,60.98,24.39,1.9250,2,0.841,2021,2.2260,3,1),
(89,107564,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,157,75.80,23.57,1.6200,2,1.455,2023,1.0443,2,2),
(90,1404585,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2017,41,12.20,87.80,1.7030,2,0.930,2021,NULL,NULL,1),
(91,16276,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,79,53.16,21.52,2.7150,3,2.224,2021,2.6480,3,3),
(92,1305048,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,50,40.00,60.00,2.5850,3,1.539,2023,2.3623,3,2),
(93,1111393,'SECRETARIADO EXECUTIVO','Secretariado','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,39,28.21,0.00,1.6764,2,1.848,2022,0.4991,1,2),
(94,96633,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,41,48.78,9.76,2.8240,3,2.764,2023,2.4779,3,3),
(95,16266,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2018,81,65.43,16.05,2.7230,3,1.465,2021,2.6150,3,2),
(96,1053580,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,73,76.71,23.29,2.7846,3,1.501,2022,1.8664,2,2),
(97,1160424,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2015,31,77.42,12.90,1.9840,3,1.971,2021,1.9640,3,3),
(98,1132433,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,68,25.00,58.82,2.0020,3,1.460,2023,1.9380,2,2),
(99,96497,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,38,44.74,15.79,2.8030,3,2.200,2023,2.4848,3,3),
(100,1305050,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,53,26.42,73.58,1.2560,2,0.538,2023,0.5086,1,1),
(101,1269970,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2018,79,79.75,10.13,2.1540,3,1.121,2021,2.2300,3,2),
(102,1069962,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,50,78.00,22.00,2.2790,3,1.179,2023,2.4596,3,2),
(103,16269,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,81,48.15,25.93,2.8870,3,2.159,2021,2.7160,3,3),
(104,96415,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2020,34,67.65,5.88,2.6380,3,2.232,2021,2.6640,3,3),
(105,104530,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,84,53.57,46.43,1.6716,2,1.322,2022,0.9300,1,2),
(106,16275,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,75,54.67,25.33,2.6570,3,1.746,2021,2.5590,3,2),
(107,107088,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,101,57.00,43.00,1.9610,3,1.667,2022,2.2255,3,2),
(108,123389,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2015,100,61.00,39.00,3.5186,4,2.917,2022,3.8598,4,3),
(109,1313294,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,45,53.33,31.11,1.8580,2,1.341,2023,1.3920,2,2),
(110,1303764,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,53,56.60,43.40,3.1090,4,1.326,2023,2.5543,3,2),
(111,16268,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2018,80,73.75,6.25,2.4630,3,1.484,2021,2.3580,3,2),
(112,1266092,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,137,69.34,28.47,2.2850,3,1.199,2023,1.7751,2,2),
(113,123427,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,69,28.99,71.01,3.1982,4,3.708,2022,2.9815,4,4),
(114,118002,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2015,46,71.74,28.26,3.0430,4,2.983,2021,1.7960,2,4),
(115,1321982,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,57,29.82,52.63,2.2360,3,1.595,2023,1.3290,2,2),
(116,116662,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,46,36.96,63.04,2.9900,4,2.834,2023,1.7229,2,3),
(117,1284133,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,109,82.57,17.43,2.4770,3,1.800,2023,1.8513,2,2),
(118,8,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,86,11.63,52.33,3.1976,4,3.370,2022,2.5510,3,4),
(119,1285517,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2018,48,31.25,33.33,3.3740,4,3.116,2021,2.3300,3,4),
(120,1122943,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,571,76.67,23.16,3.2270,4,2.036,2023,2.0737,3,3),
(121,118888,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,62,62.90,37.10,3.6180,4,3.041,2023,3.6531,4,4),
(122,1105780,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,34,41.18,58.82,2.6970,3,2.131,2021,2.8500,3,3),
(123,116648,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,43,53.49,46.51,3.2310,4,2.647,2023,1.8811,2,3),
(124,9,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,87,19.54,42.53,3.4820,4,3.827,2023,3.3161,4,4),
(125,7,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,82,23.17,26.83,3.5840,4,3.421,2022,3.2561,4,4),
(126,116708,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2015,51,62.75,37.25,3.4547,4,3.037,2022,2.9902,4,4),
(127,1284137,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,164,71.95,26.83,1.9000,2,0.674,2023,1.2707,2,1),
(128,1122942,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,200,67.00,33.00,4.1230,5,3.668,2021,3.9700,5,4),
(129,5000953,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,186,38.71,61.29,1.6395,2,1.645,2022,1.9747,3,2),
(130,1106707,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,407,78.62,21.38,2.0790,3,1.404,2023,0.8823,1,2),
(131,1331390,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,34,61.76,35.29,1.3320,2,0.718,2023,0.6393,1,1),
(132,118852,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,73,68.49,31.51,1.9650,3,0.782,2023,1.5385,2,1),
(133,118380,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,120,82.50,17.50,2.8110,3,1.388,2021,2.3080,3,2),
(134,116690,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,50,76.00,18.00,2.5420,3,1.731,2021,1.9560,3,2),
(135,1322402,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,254,64.57,32.28,2.7710,3,2.411,2023,2.1160,3,3),
(136,118002,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2020,49,10.20,18.37,3.0430,4,2.983,2021,1.7960,2,4),
(137,5000750,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,48,29.17,70.83,1.9664,3,2.007,2022,2.8651,3,3),
(138,1322403,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,81,50.62,49.38,2.4780,3,1.880,2023,2.0410,3,2),
(139,1105676,'GESTÃO DA TECNOLOGIA DA INFORMAÇÃO','Gestão da tecnologia da informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2015,32,43.75,56.25,2.0190,3,1.222,2021,2.6490,3,2),
(140,1283961,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2018,58,44.83,55.17,1.7326,2,0.298,2022,NULL,NULL,1),
(141,1321981,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,83,42.17,44.58,2.6060,3,1.265,2023,1.5046,2,2),
(142,123389,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,48,75.00,10.42,3.5186,4,2.917,2022,3.8598,4,3),
(143,1330683,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,36,86.11,13.89,1.9900,3,0.699,2021,0.0000,1,1),
(144,12,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,76,1.32,86.84,2.7920,3,3.492,2023,1.9335,2,4),
(145,116428,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,110,50.00,50.00,1.8070,2,0.493,2023,0.8619,1,1),
(146,117488,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,37,43.24,18.92,1.7916,2,1.346,2022,2.1394,3,2),
(147,13,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,127,5.51,41.73,3.4073,4,3.726,2022,2.7725,3,4),
(148,1128077,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2015,81,59.26,19.75,2.4810,3,1.844,2021,2.2840,3,2),
(149,123427,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,59,13.56,50.85,3.1982,4,3.708,2022,2.9815,4,4),
(150,115058,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2015,167,69.46,30.54,3.4750,4,2.322,2023,2.8534,3,3),
(151,119816,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,32,50.00,50.00,3.3740,4,3.013,2022,4.1901,5,4),
(152,1299950,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,139,74.10,24.46,2.3631,3,1.375,2022,2.1006,3,2),
(153,1127343,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,115,50.43,30.43,3.0776,4,2.903,2022,3.3359,4,3),
(154,1322463,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,113,57.52,39.82,2.7550,3,2.430,2023,3.0791,4,3),
(155,10,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,83,36.14,20.48,3.0640,4,2.774,2023,2.6578,3,3),
(156,123052,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2020,61,34.43,19.67,3.0518,4,1.590,2022,2.5343,3,2),
(157,116560,'GEOGRAFIA','Geografia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2015,58,75.86,24.14,2.8730,3,1.282,2021,1.7780,2,2),
(158,1342611,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,32,46.88,40.62,2.1618,3,2.329,2022,2.4427,3,3),
(159,119062,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,42,40.48,59.52,2.5900,3,1.913,2023,2.4527,3,2),
(160,117604,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,73,47.95,38.36,1.7198,2,0.285,2022,1.5496,2,1),
(161,123055,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,47,14.89,25.53,3.1590,4,3.171,2023,3.1264,4,4),
(162,105575,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,39,53.85,7.69,3.2170,4,2.782,2023,3.4053,4,3),
(163,6,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2018,100,8.00,57.00,3.9550,4,4.803,2021,4.0850,5,5),
(164,100880,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,145,74.48,16.55,2.2827,3,1.100,2022,1.6480,2,2),
(165,5001033,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,174,9.20,89.66,3.2700,4,2.978,2023,3.2416,4,4),
(166,117604,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2015,74,51.35,48.65,1.7198,2,0.285,2022,1.5496,2,1),
(167,118852,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,59,74.58,22.03,1.9650,3,0.782,2023,1.5385,2,1),
(168,1108440,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,31,58.06,41.94,3.0370,4,1.764,2021,2.7390,3,2),
(169,101749,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,54,57.41,29.63,2.8570,3,2.474,2023,2.8461,3,3),
(170,5001172,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2017,96,70.83,20.83,2.6660,3,1.985,2021,2.5460,3,3),
(171,117488,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2015,73,57.53,41.10,1.7916,2,1.346,2022,2.1394,3,2),
(172,118380,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,173,73.84,26.16,2.8110,3,1.388,2021,2.3080,3,2),
(173,1111393,'SECRETARIADO EXECUTIVO','Secretariado','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,58,41.38,51.72,1.6764,2,1.848,2022,0.4991,1,2),
(174,118888,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,50,78.00,14.00,3.6180,4,3.041,2023,3.6531,4,4),
(175,102021,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2020,52,67.31,30.77,4.4560,5,4.412,2023,4.5831,5,5),
(176,1116939,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,179,78.21,21.79,1.6690,2,0.537,2023,NULL,NULL,1),
(177,1284570,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,75,53.33,45.33,2.1870,3,2.122,2023,2.1823,3,3),
(178,104051,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,128,74.22,20.31,2.6810,3,1.394,2023,2.0509,3,2),
(179,118659,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,56,48.21,51.79,2.8870,3,1.736,2023,3.0612,4,2),
(180,118764,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,59,47.46,47.46,1.5370,2,0.712,2023,0.7657,1,1),
(181,1322401,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,111,85.59,14.41,2.1950,3,1.102,2021,0.9240,1,2),
(182,3,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,53,20.75,47.17,3.4290,4,4.352,2023,4.2072,5,5),
(183,2,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2018,120,25.83,25.00,2.5657,3,1.772,2022,1.2492,2,2),
(184,1121415,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,45,44.44,42.22,2.4800,3,2.694,2023,2.0129,3,3),
(185,101119,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,147,79.59,15.65,2.5297,3,1.928,2022,2.2027,3,2),
(186,116720,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,79,63.29,35.44,3.7570,4,3.105,2023,3.3625,4,4),
(187,118764,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,78,39.74,60.26,1.5370,2,0.712,2023,0.7657,1,1),
(188,122749,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,40,55.00,10.00,2.6090,3,2.465,2023,2.6489,3,3),
(189,118762,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2015,57,47.37,52.63,1.2740,2,1.751,2021,1.4590,2,2),
(190,117242,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,61,44.26,55.74,1.6010,2,0.530,2023,1.5117,2,1),
(191,1284880,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,56,41.07,57.14,1.6010,2,1.117,2023,0.8721,1,2),
(192,1,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,100,8.00,72.00,3.8894,4,4.788,2022,3.3165,4,5),
(193,122150,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2020,36,75.00,13.89,1.9670,3,1.762,2021,1.7810,2,2),
(194,117004,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2015,87,17.44,70.93,3.1972,4,3.628,2022,2.6472,3,4),
(195,1332677,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,34,23.53,76.47,1.7270,2,1.414,2021,NULL,NULL,2),
(196,1342448,'GESTÃO PÚBLICA','Gestão pública','Negócios, administração e direito','Publica','Presencial','Tecnologico',2017,68,52.94,45.59,2.9185,3,2.983,2022,3.5316,4,4),
(197,1332350,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,54,46.30,46.30,1.0816,2,1.469,2022,1.4209,2,2),
(198,5001171,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2017,67,60.61,34.85,2.8582,3,2.650,2022,2.7859,3,3),
(199,1321984,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,56,53.57,25.00,2.9930,4,1.268,2023,2.2025,3,2),
(200,1120548,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,118,62.71,37.29,3.3163,4,1.864,2022,2.5916,3,2),
(201,118659,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,43,32.56,65.12,2.8870,3,1.736,2023,3.0612,4,2),
(202,1342612,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2017,41,78.05,14.63,2.6630,3,3.528,2021,2.8440,3,4),
(203,1330475,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,129,65.89,33.33,2.4670,3,1.607,2023,1.3775,2,2),
(204,1342445,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,42,45.24,47.62,2.1879,3,2.437,2022,2.4227,3,3),
(205,111910,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,50,44.00,56.00,3.2020,4,3.003,2023,2.9256,3,4),
(206,26,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2018,56,21.43,33.93,2.8750,3,2.055,2021,2.1040,3,3),
(207,1103709,'FILOSOFIA','Filosofia','Artes e humanidades','Publica','Presencial','Bacharelado',2015,36,80.56,19.44,3.2690,4,3.220,2021,2.1620,3,4),
(208,100772,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,65,13.85,3.08,2.8500,3,2.188,2023,2.9070,3,3),
(209,1313191,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2018,66,45.45,28.79,1.3921,2,1.269,2022,0.4620,1,2),
(210,27,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2018,88,32.95,10.23,2.6910,3,2.024,2021,1.2910,2,3),
(211,1300369,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,41,70.73,29.27,1.7030,2,1.024,2023,NULL,NULL,2),
(212,1103710,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2020,84,16.67,15.48,3.2530,4,2.717,2021,2.6210,3,3),
(213,110842,'GESTÃO AMBIENTAL','Gestão ambiental','Engenharia, produção e construção','Publica','Presencial','Tecnologico',2015,78,52.56,46.15,2.5470,3,2.344,2023,1.9473,3,3),
(214,1322402,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,304,70.07,29.93,2.7710,3,2.411,2023,2.1160,3,3),
(215,122749,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,74,37.84,54.05,2.6090,3,2.465,2023,2.6489,3,3),
(216,112846,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2015,42,76.19,23.81,3.1630,4,2.625,2021,2.9590,4,3),
(217,1322463,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,140,50.71,42.86,2.7550,3,2.430,2023,3.0791,4,3),
(218,1322403,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,108,54.63,43.52,2.4780,3,1.880,2023,2.0410,3,2),
(219,1103708,'FILOSOFIA','Filosofia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,32,9.38,9.38,2.9800,4,1.998,2021,2.1440,3,3),
(220,112770,'ENGENHARIA SANITARIA E AMBIENTAL','Engenharia ambiental e sanitária','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,67,58.21,32.84,2.8140,3,2.604,2023,2.3107,3,3),
(221,107564,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,54,52.83,35.85,1.6200,2,1.455,2023,1.0443,2,2),
(222,1438391,'CIÊNCIAS DA NATUREZA - BIOLOGIA','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,32,37.50,53.12,2.3310,3,1.354,2021,2.5300,3,2),
(223,1322401,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,107,82.24,17.76,2.1950,3,1.102,2021,0.9240,1,2),
(224,1153376,'ENGENHARIA DE PRODUÇÃO','Engenharia de produção','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,44,84.09,15.91,2.9660,4,0.635,2023,2.2361,3,1),
(225,108443,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,43,44.19,55.81,2.3420,3,1.101,2023,1.8048,2,2),
(226,1300430,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,233,75.97,23.61,2.9400,3,1.591,2023,2.6746,3,2),
(227,1154375,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,43,48.84,25.58,1.9060,2,2.016,2023,1.8658,2,3),
(228,1364370,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,48,62.50,37.50,1.5880,2,0.712,2023,0.3102,1,1),
(229,109282,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,32,31.25,68.75,1.4310,2,1.076,2023,1.2937,2,2),
(230,100763,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,61,19.67,26.23,3.0800,4,3.358,2023,3.1726,4,4),
(231,1103701,'CIÊNCIAS SOCIAIS','Ciências sociais formação de professor','Educação','Publica','Presencial','Licenciatura',2015,40,80.00,15.00,2.9390,3,3.144,2021,1.9480,3,4),
(232,1270062,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,61,31.15,27.87,2.1750,3,1.888,2023,0.7438,1,2),
(233,34,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2018,56,32.14,28.57,2.1800,3,1.409,2021,1.2970,2,2),
(234,1279788,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2018,84,72.62,27.38,2.6110,3,1.511,2023,NULL,NULL,2),
(235,100768,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,45,17.78,6.67,2.6660,3,1.957,2023,2.2493,3,3),
(236,116662,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,39,5.26,26.32,2.9900,4,2.834,2023,1.7229,2,3),
(237,108441,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,32,46.88,40.62,3.3010,4,2.703,2023,3.3721,4,3),
(238,1103711,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2020,48,35.42,2.08,3.4390,4,2.651,2021,3.1990,4,3),
(239,100770,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,38,15.79,15.79,3.5340,4,3.003,2023,2.9029,3,4),
(240,1436021,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,47,44.68,51.06,3.0670,4,1.850,2021,3.2170,4,2),
(241,109543,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,89,49.44,50.56,2.2960,3,1.042,2023,NULL,NULL,2),
(242,1330485,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,38,92.11,7.89,1.9020,2,0.433,2023,NULL,NULL,1),
(243,29,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,40,12.50,62.50,3.2630,4,2.751,2021,2.4700,3,3),
(244,1103708,'FILOSOFIA','Filosofia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,73,76.71,23.29,2.9800,4,1.998,2021,2.1440,3,3),
(245,32,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,32,34.38,31.25,2.5390,3,1.686,2021,1.7520,2,2),
(246,1103712,'QUÍMICA','Química','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2020,47,23.40,6.38,2.5590,3,1.033,2021,1.9800,3,2),
(247,109307,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,139,40.29,59.71,2.6850,3,1.817,2022,1.9422,2,2),
(248,1103710,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2015,117,64.10,35.04,3.2530,4,2.717,2021,2.6210,3,3),
(249,24,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,46,32.61,23.91,2.9150,3,2.424,2021,3.0670,4,3),
(250,17,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,58,25.86,51.72,3.7840,4,3.846,2023,3.5623,4,4),
(251,100802,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,40,22.50,0.00,2.6010,3,2.434,2023,2.2270,3,3),
(252,117004,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2020,89,11.24,30.34,3.1972,4,3.628,2022,2.6472,3,4),
(253,1132433,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,66,46.97,53.03,2.0020,3,1.460,2023,1.9380,2,2),
(254,1330475,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,148,52.70,46.62,2.4670,3,1.607,2023,1.3775,2,2),
(255,1103712,'QUÍMICA','Química','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2015,52,68.63,31.37,2.5590,3,1.033,2021,1.9800,3,2),
(256,19,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2018,55,27.27,25.45,3.3830,4,2.807,2021,2.3240,3,3),
(257,1134353,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,42,54.76,45.24,3.0640,4,2.836,2023,3.3057,4,3),
(258,1327250,'PROCESSOS GERENCIAIS','Gestão de negócios','Negócios, administração e direito','Publica','Presencial','Tecnologico',2018,37,54.05,37.84,1.7551,2,1.867,2022,0.9698,2,2),
(259,114388,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2015,30,76.67,16.67,2.3590,3,1.663,2021,3.0660,4,2),
(260,1321429,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,49,65.31,34.69,3.3080,4,1.823,2023,2.8609,3,2),
(261,1128666,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2015,79,60.76,39.24,2.6550,3,2.158,2021,2.3810,3,3),
(262,1103742,'CIÊNCIAS SOCIAIS','Ciências sociais','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2015,40,87.50,12.50,2.8290,3,1.973,2021,2.1640,3,3),
(263,123620,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,78,12.82,6.41,2.9970,4,2.771,2023,1.9984,3,3),
(264,117242,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,40,57.50,35.00,1.6010,2,0.530,2023,1.5117,2,1),
(265,16,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,83,28.92,19.28,4.2420,5,4.180,2023,4.4036,5,5),
(266,1330486,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,72,83.33,16.67,2.5830,3,1.477,2023,2.6123,3,2),
(267,116560,'GEOGRAFIA','Geografia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2020,50,24.00,14.00,2.8730,3,1.282,2021,1.7780,2,2),
(268,1069962,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,57,63.16,35.09,2.2790,3,1.179,2023,2.4596,3,2),
(269,1135690,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,51,82.35,17.65,1.6300,2,0.358,2023,1.3913,2,1),
(270,116720,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,38,18.42,23.68,3.7570,4,3.105,2023,3.3625,4,4),
(271,23,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2018,53,28.30,47.17,3.4810,4,3.102,2021,2.6060,3,4),
(272,113529,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,54,75.93,22.22,2.1040,3,0.382,2023,2.6177,3,1),
(273,1313294,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,38,52.63,21.05,1.8580,2,1.341,2023,1.3920,2,2),
(274,1452469,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Publica','Presencial','Tecnologico',2017,31,12.90,87.10,1.7487,2,0.848,2022,1.7370,2,1),
(275,1299961,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,30,60.00,36.67,2.9870,4,1.021,2023,2.6389,3,2),
(276,1103426,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,48,16.67,20.83,2.9360,3,2.433,2021,1.8100,2,3),
(277,1351681,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,48,64.58,35.42,1.8819,2,1.370,2022,2.0752,3,2),
(278,1327250,'PROCESSOS GERENCIAIS','Gestão de negócios','Negócios, administração e direito','Publica','Presencial','Tecnologico',2017,34,52.94,44.12,1.7551,2,1.867,2022,0.9698,2,2),
(279,1135688,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,267,87.59,12.41,1.8390,2,1.000,2023,1.9193,2,2),
(280,20,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,59,23.73,44.07,3.4700,4,3.985,2023,3.0226,4,5),
(281,106052,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2020,39,10.26,12.82,3.0530,4,2.573,2021,2.4040,3,3),
(282,1299960,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,92,75.00,22.83,2.0440,3,1.155,2023,1.0624,2,2),
(283,1072168,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,51,37.25,45.10,2.6950,3,1.881,2023,2.7870,3,2),
(284,113555,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,91,63.74,29.67,2.9682,4,2.506,2022,3.0174,4,3),
(285,100778,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,70,5.71,18.57,2.8220,3,2.822,2023,1.7005,2,3),
(286,1103711,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2015,55,87.27,12.73,3.4390,4,2.651,2021,3.1990,4,3),
(287,21,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,88,22.73,30.68,2.1204,3,1.731,2022,1.0823,2,2),
(288,1330471,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,53,83.02,11.32,2.9180,3,2.693,2023,2.5670,3,3),
(289,113559,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,83,39.76,51.81,2.8060,3,2.075,2023,1.8204,2,3),
(290,1305048,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,48,45.83,54.17,2.5850,3,1.539,2023,2.3623,3,2),
(291,1342611,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,35,22.86,68.57,2.1618,3,2.329,2022,2.4427,3,3),
(292,102021,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2015,116,65.22,34.78,4.4560,5,4.412,2023,4.5831,5,5),
(293,1134353,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,30,30.00,66.67,3.0640,4,2.836,2023,3.3057,4,3),
(294,20474,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,48,18.75,75.00,1.9711,3,1.464,2022,1.4744,2,2),
(295,91391,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,351,50.43,48.72,2.6690,3,2.310,2022,2.8987,3,3),
(296,1132433,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,47,27.66,68.09,2.0020,3,1.460,2023,1.9380,2,2),
(297,92153,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,148,29.05,70.27,2.5545,3,1.406,2022,1.8497,2,2),
(298,1364187,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,37,70.27,16.22,2.4880,3,1.235,2023,1.9712,3,2),
(299,20472,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,118,25.42,74.58,2.3700,3,1.649,2021,2.4980,3,2),
(300,1128666,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2018,32,50.00,50.00,2.6550,3,2.158,2021,2.3810,3,3),
(301,1364370,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,65,69.23,26.15,1.5880,2,0.712,2023,0.3102,1,1),
(302,95405,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,40,41.03,48.72,1.1194,2,0.967,2022,1.6417,2,2),
(303,1128077,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2018,73,46.58,5.48,2.4810,3,1.844,2021,2.2840,3,2),
(304,20144,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,95,51.58,48.42,3.6630,4,3.422,2023,2.9431,3,4),
(305,1365187,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,109,83.49,15.60,3.1710,4,1.785,2023,3.2725,4,2),
(306,1127343,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,88,22.73,23.86,3.0776,4,2.903,2022,3.3359,4,3),
(307,91360,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,57,36.84,49.12,2.5180,3,1.046,2023,1.3243,2,2),
(308,1342612,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2020,46,80.43,0.00,2.6630,3,3.528,2021,2.8440,3,4),
(309,89778,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,74,77.03,22.97,2.4910,3,1.331,2023,2.7149,3,2),
(310,1349525,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,33,60.61,36.36,2.4710,3,1.730,2023,2.4736,3,2),
(311,89780,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,104,75.96,21.15,3.0180,4,1.598,2023,3.0138,4,2),
(312,89824,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,260,78.08,21.15,3.2315,4,2.579,2022,2.8681,3,3),
(313,21552,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,33,63.64,36.36,1.7087,2,0.034,2022,NULL,NULL,1),
(314,90004,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,73,45.21,27.40,2.6970,3,2.040,2023,3.1013,4,3),
(315,21442,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,42,52.38,47.62,2.7540,3,2.090,2023,1.8970,2,3),
(316,91358,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,33,27.27,63.64,2.2660,3,0.699,2023,1.1217,2,1),
(317,1135688,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,59,66.10,33.90,1.8390,2,1.000,2023,1.9193,2,2),
(318,20757,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,340,63.24,36.76,2.9345,3,1.990,2022,3.0966,4,3),
(319,91369,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,107,20.56,64.49,2.0594,3,1.210,2022,1.8240,2,2),
(320,96004,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,318,50.31,49.69,1.2821,2,0.808,2022,0.5904,1,1),
(321,1368246,'GESTÃO PÚBLICA','Gestão pública','Negócios, administração e direito','Publica','Presencial','Tecnologico',2020,40,27.50,5.00,1.4359,2,1.344,2022,0.2973,1,2),
(322,100763,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,79,8.86,63.29,3.0800,4,3.358,2023,3.1726,4,4),
(323,19595,'SISTEMA DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2015,61,70.49,29.51,4.5090,5,3.651,2021,5.0000,5,4),
(324,100768,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,66,36.36,10.61,2.6660,3,1.957,2023,2.2493,3,3),
(325,1116939,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,108,75.93,22.22,1.6690,2,0.537,2023,NULL,NULL,1),
(326,1386004,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,118,33.05,17.80,2.0657,3,1.508,2022,1.8911,2,2),
(327,19594,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,51,72.55,27.45,3.8750,4,2.545,2021,4.1430,5,3),
(328,100770,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,39,30.77,35.90,3.5340,4,3.003,2023,2.9029,3,4),
(329,19592,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,32,28.12,71.88,1.2208,2,0.807,2022,0.7976,1,1),
(330,100772,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,92,18.68,19.78,2.8500,3,2.188,2023,2.9070,3,3),
(331,1111393,'SECRETARIADO EXECUTIVO','Secretariado','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,70,22.86,41.43,1.6764,2,1.848,2022,0.4991,1,2),
(332,18473,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,208,76.92,23.08,2.4090,3,1.612,2023,2.0737,3,2),
(333,18472,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,75,13.33,86.67,2.4880,3,2.439,2023,2.8389,3,3),
(334,1108440,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2018,51,78.43,21.57,3.0370,4,1.764,2021,2.7390,3,2),
(335,1386527,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,169,58.58,23.67,2.5502,3,1.737,2022,2.2457,3,2),
(336,18471,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,310,74.19,25.81,2.2890,3,1.523,2023,1.4595,2,2),
(337,18354,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2015,43,88.37,11.63,2.8950,3,1.924,2021,2.3470,3,2),
(338,100778,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,98,7.14,43.88,2.8220,3,2.822,2023,1.7005,2,3),
(339,1122943,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,179,62.92,33.71,3.2270,4,2.036,2023,2.0737,3,3),
(340,20016,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,164,32.32,67.07,3.7000,4,2.954,2023,3.2672,4,4),
(341,96134,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,99,80.81,19.19,3.6321,4,3.747,2022,3.2584,4,4),
(342,1368260,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2020,40,47.50,0.00,1.9250,2,0.841,2021,2.2260,3,1),
(343,19934,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,53,73.58,26.42,2.6368,3,1.517,2022,1.5683,2,2),
(344,96415,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2018,79,43.04,26.58,2.6380,3,2.232,2021,2.6640,3,3),
(345,1122942,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,87,67.82,32.18,4.1230,5,3.668,2021,3.9700,5,4),
(346,96497,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,84,32.14,48.81,2.8030,3,2.200,2023,2.4848,3,3),
(347,1383033,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,237,54.01,37.55,1.8722,2,1.475,2022,1.5039,2,2),
(348,96633,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,83,45.78,42.17,2.8240,3,2.764,2023,2.4779,3,3),
(349,19759,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,36,30.56,69.44,2.9060,3,1.545,2021,2.1000,3,2),
(350,1121415,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,37,43.24,21.62,2.4800,3,2.694,2023,2.0129,3,3),
(351,1385206,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,35,40.00,60.00,2.1380,3,0.641,2023,1.4050,2,1),
(352,19730,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,360,71.94,28.06,2.2080,3,2.069,2022,NULL,NULL,3),
(353,100010,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2018,42,78.57,21.43,2.5600,3,1.499,2021,2.0430,3,2),
(354,100356,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2018,56,82.14,17.86,2.4100,3,1.461,2021,NULL,NULL,2),
(355,1385207,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,34,35.29,61.76,2.2580,3,1.697,2023,1.6650,2,2),
(356,1120548,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,93,83.87,16.13,3.3163,4,1.864,2022,2.5916,3,2),
(357,100358,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2018,152,81.58,18.42,2.8270,3,2.076,2021,2.7140,3,3),
(358,51615,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,108,72.22,27.78,3.4216,4,2.947,2022,3.6105,4,4),
(359,79932,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,82,64.63,32.93,2.9860,4,2.218,2023,2.1226,3,3),
(360,51613,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,99,26.53,68.37,3.0190,4,2.531,2023,2.0488,3,3),
(361,51611,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,90,66.67,33.33,2.6185,3,2.065,2022,NULL,NULL,3),
(362,1330475,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,94,77.66,17.02,2.4670,3,1.607,2023,1.3775,2,2),
(363,51609,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,75,42.67,56.00,2.9280,3,2.232,2023,2.3183,3,3),
(364,1166445,'AGRONEGÓCIO','Gestão do agronegócio','Negócios, administração e direito','Privada','Presencial','Tecnologico',2018,38,73.68,26.32,2.5350,3,3.213,2023,2.1585,3,4),
(365,51558,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,87,56.32,37.93,3.4470,4,3.326,2023,4.0345,5,4),
(366,80291,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,134,58.96,38.81,2.8015,3,2.206,2022,2.4449,3,3),
(367,1161561,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,34,58.82,41.18,2.4839,3,1.487,2022,1.6460,2,2),
(368,80358,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,52,80.77,15.38,2.4730,3,1.642,2023,1.6794,2,2),
(369,1330494,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,41,68.29,26.83,2.0030,3,1.168,2023,0.8558,1,2),
(370,49094,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,226,64.16,34.96,1.7320,2,1.229,2023,0.1963,1,2),
(371,80360,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,65,84.62,13.85,2.8240,3,2.145,2021,1.9960,3,3),
(372,49045,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,97,61.86,38.14,2.2739,3,1.445,2022,2.2226,3,2),
(373,80362,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,48,58.33,41.67,3.1520,4,1.807,2023,2.9224,3,2),
(374,1327250,'PROCESSOS GERENCIAIS','Gestão de negócios','Negócios, administração e direito','Publica','Presencial','Tecnologico',2020,38,71.05,7.89,1.7551,2,1.867,2022,0.9698,2,2),
(375,1168453,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,38,65.79,23.68,2.0260,3,2.039,2023,1.4769,2,3),
(376,52216,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,221,64.71,35.29,4.1820,5,3.614,2023,4.1758,5,4),
(377,73084,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2018,63,80.95,19.05,2.9890,4,1.566,2021,1.8150,2,2),
(378,51770,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,85,61.18,38.82,3.0425,4,3.605,2022,2.9067,3,4),
(379,1182266,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,85,70.24,28.57,2.2123,3,0.615,2022,1.4714,2,1),
(380,51719,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,97,70.10,29.90,2.6929,3,1.331,2022,1.8773,2,2),
(381,75096,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,289,68.17,31.83,3.6220,4,2.965,2023,3.6037,4,4),
(382,1322401,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,69,91.30,5.80,2.1950,3,1.102,2021,0.9240,1,2),
(383,51648,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,55,72.73,25.45,2.9660,4,1.196,2023,2.5331,3,2),
(384,75099,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,253,74.70,24.11,2.6990,3,1.579,2023,2.1426,3,2),
(385,1322402,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,132,77.27,15.91,2.7710,3,2.411,2023,2.1160,3,3),
(386,51638,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,70,37.14,61.43,2.9800,4,1.971,2023,2.2701,3,3),
(387,1322403,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,111,58.56,36.04,2.4780,3,1.880,2023,2.0410,3,2),
(388,79552,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,181,61.88,36.46,2.1620,3,1.867,2023,1.7523,2,2),
(389,1168551,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,57,50.88,31.58,3.2150,4,3.185,2021,2.2770,3,4),
(390,1322463,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,82,54.88,28.05,2.7550,3,2.430,2023,3.0791,4,3),
(391,51622,'ENGENHARIA DE PRODUÇÃO AGROINDUSTRIAL','Engenharia de produção','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,71,56.34,38.03,3.3310,4,1.630,2023,3.4620,4,2),
(392,51618,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2015,73,72.60,27.40,2.4143,3,1.468,2022,2.0968,3,2),
(393,1342611,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,41,65.85,0.00,2.1618,3,2.329,2022,2.4427,3,3),
(394,48385,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,85,45.88,54.12,1.5291,2,0.395,2022,NULL,NULL,1),
(395,40677,'COMUNICAÇÃO SOCIAL - PUBLICIDADE E PROPAGANDA','Publicidade e propaganda','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,53,71.70,28.30,3.6742,4,3.667,2022,3.3610,4,4),
(396,87358,'GASTRONOMIA','Gastronomia','Serviços','Privada','Presencial','Tecnologico',2018,209,61.72,38.28,1.8755,2,0.442,2022,NULL,NULL,1),
(397,1342445,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,42,54.76,2.38,2.1879,3,2.437,2022,2.4227,3,3),
(398,1342447,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,34,41.18,2.94,1.5210,2,1.083,2023,1.4061,2,2),
(399,1154375,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,40,35.00,25.00,1.9060,2,2.016,2023,1.8658,2,3),
(400,1342448,'GESTÃO PÚBLICA','Gestão pública','Negócios, administração e direito','Publica','Presencial','Tecnologico',2020,73,75.34,12.33,2.9185,3,2.983,2022,3.5316,4,4),
(401,25949,'LETRAS - LÍNGUA PORTUGUESA E LITERATURAS DE LíNGUA PORTUGUESA','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2015,51,58.82,41.18,2.8810,3,2.724,2021,1.9680,3,3),
(402,88488,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,79,56.96,41.77,2.6960,3,1.233,2023,2.6529,3,2),
(403,41690,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,43,86.05,13.95,2.8850,3,2.355,2021,2.1300,3,3),
(404,84854,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2018,39,15.79,63.16,3.3416,4,3.601,2022,3.0681,4,4),
(405,48302,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,99,28.28,62.63,2.4333,3,2.695,2022,2.4556,3,3),
(406,80922,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2018,69,39.13,39.13,1.8150,2,1.006,2021,1.5930,2,2),
(407,1330683,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,35,80.00,14.29,1.9900,3,0.699,2021,0.0000,1,1),
(408,48299,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,91,50.00,47.78,1.9702,3,1.894,2022,1.5406,2,2),
(409,1160424,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2018,30,63.33,10.00,1.9840,3,1.971,2021,1.9640,3,3),
(410,81399,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,74,52.70,41.89,1.4535,2,1.344,2022,1.8962,2,2),
(411,47922,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,91,54.95,45.05,3.0141,4,1.925,2022,2.3408,3,2),
(412,1160216,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,39,64.10,15.38,1.4070,2,0.643,2023,0.4469,1,1),
(413,1330831,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,46,60.87,19.57,2.0880,3,0.268,2023,1.4201,2,1),
(414,46972,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2015,62,74.19,25.81,1.6670,2,1.111,2021,1.3650,2,2),
(415,83372,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,75,69.33,30.67,2.5500,3,1.645,2023,2.8494,3,2),
(416,83374,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,130,70.00,30.00,2.6550,3,1.701,2023,1.8171,2,2),
(417,1160215,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,52,59.62,19.23,1.9400,2,0.760,2023,1.9987,3,1),
(418,44461,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,87,50.57,37.93,3.0520,4,2.339,2022,3.0818,4,3),
(419,83376,'ENGENHARIA DE PRODUÇÃO','Engenharia de produção','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,31,80.65,16.13,2.6010,3,1.214,2023,2.1469,3,2),
(420,43044,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2015,80,78.75,12.50,2.0600,3,1.171,2021,2.6150,3,2),
(421,1332350,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,39,7.69,46.15,1.0816,2,1.469,2022,1.4209,2,2),
(422,43037,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2015,67,86.57,10.45,2.5450,3,1.227,2021,2.4430,3,2),
(423,1332677,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2020,34,82.35,17.65,1.7270,2,1.414,2021,NULL,NULL,2),
(424,18281,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,58,70.69,29.31,1.6464,2,1.657,2022,1.2596,2,2),
(425,123052,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2018,60,25.00,30.00,3.0518,4,1.590,2022,2.5343,3,2),
(426,113529,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,57,71.93,14.04,2.1040,3,0.382,2023,2.6177,3,1),
(427,36,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2015,46,47.83,47.83,3.0370,4,2.695,2021,2.4440,3,3),
(428,113555,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,84,54.76,16.67,2.9682,4,2.506,2022,3.0174,4,3),
(429,34,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2015,37,70.27,16.22,2.1800,3,1.409,2021,1.2970,2,2),
(430,113559,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,81,45.68,25.93,2.8060,3,2.075,2023,1.8204,2,3),
(431,32,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,31,25.81,48.39,2.5390,3,1.686,2021,1.7520,2,2),
(432,29,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,40,67.50,30.00,3.2630,4,2.751,2021,2.4700,3,3),
(433,1452469,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Publica','Presencial','Tecnologico',2020,36,36.11,8.33,1.7487,2,0.848,2022,1.7370,2,1),
(434,27,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2015,98,71.43,25.51,2.6910,3,2.024,2021,1.2910,2,3),
(435,1453735,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,138,84.06,12.32,2.9330,3,1.796,2023,2.5585,3,2),
(436,26,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2015,47,73.91,26.09,2.8750,3,2.055,2021,2.1040,3,3),
(437,115023,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,36,47.22,33.33,2.1110,3,1.216,2023,2.1075,3,2),
(438,115058,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2018,293,73.04,26.96,3.4750,4,2.322,2023,2.8534,3,3),
(439,25,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2015,31,48.39,45.16,3.3000,4,2.436,2021,3.0120,4,3),
(440,37,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,60,35.00,63.33,3.1090,4,3.599,2023,2.0795,3,4),
(441,24,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,39,69.23,25.64,2.9150,3,2.424,2021,3.0670,4,3),
(442,44,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,61,44.26,55.74,3.5070,4,4.191,2023,3.4881,4,5),
(443,16270,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2015,96,60.42,37.50,2.4690,3,2.175,2021,2.4550,3,3),
(444,109307,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,96,75.00,25.00,2.6850,3,1.817,2022,1.9422,2,2),
(445,16269,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,61,45.90,49.18,2.8870,3,2.159,2021,2.7160,3,3),
(446,123620,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,86,26.74,26.74,2.9970,4,2.771,2023,1.9984,3,3),
(447,16268,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2015,72,90.28,6.94,2.4630,3,1.484,2021,2.3580,3,2),
(448,109543,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,78,71.79,26.92,2.2960,3,1.042,2023,NULL,NULL,2),
(449,123427,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,67,7.46,71.64,3.1982,4,3.708,2022,2.9815,4,4),
(450,16267,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,67,49.25,47.76,2.1360,3,0.866,2021,1.6900,2,1),
(451,110842,'GESTÃO AMBIENTAL','Gestão ambiental','Engenharia, produção e construção','Publica','Presencial','Tecnologico',2018,35,34.29,60.00,2.5470,3,2.344,2023,1.9473,3,3),
(452,1438391,'CIÊNCIAS DA NATUREZA - BIOLOGIA','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,36,44.44,16.67,2.3310,3,1.354,2021,2.5300,3,2),
(453,16266,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2015,62,67.74,27.42,2.7230,3,1.465,2021,2.6150,3,2),
(454,111910,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,51,35.29,58.82,3.2020,4,3.003,2023,2.9256,3,4),
(455,123389,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,121,78.51,19.83,3.5186,4,2.917,2022,3.8598,4,3),
(456,16265,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2015,79,45.57,51.90,2.1710,3,1.355,2021,1.5360,2,2),
(457,112770,'ENGENHARIA SANITARIA E AMBIENTAL','Engenharia ambiental e sanitária','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,66,22.73,19.70,2.8140,3,2.604,2023,2.3107,3,3),
(458,16264,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2015,79,45.57,44.30,2.2280,3,1.340,2021,1.7220,2,2),
(459,112846,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2018,46,13.04,23.91,3.1630,4,2.625,2021,2.9590,4,3),
(460,123055,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,65,18.46,46.15,3.1590,4,3.171,2023,3.1264,4,4),
(461,16271,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2015,92,38.04,61.96,2.7030,3,2.282,2021,2.2960,3,3),
(462,116428,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,117,72.65,27.35,1.8070,2,0.493,2023,0.8619,1,1),
(463,5000953,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,120,84.17,14.17,1.6395,2,1.645,2022,1.9747,3,2),
(464,10,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,84,58.33,41.67,3.0640,4,2.774,2023,2.6578,3,3),
(465,117242,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,36,50.00,50.00,1.6010,2,0.530,2023,1.5117,2,1),
(466,5001033,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,145,20.69,5.52,3.2700,4,2.978,2023,3.2416,4,4),
(467,9,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,85,37.65,62.35,3.4820,4,3.827,2023,3.3161,4,4),
(468,5001171,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2020,54,72.22,12.96,2.8582,3,2.650,2022,2.7859,3,3),
(469,8,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,86,41.86,56.98,3.1976,4,3.370,2022,2.5510,3,4),
(470,117604,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,88,57.95,42.05,1.7198,2,0.285,2022,1.5496,2,1),
(471,5001172,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2020,56,71.43,8.93,2.6660,3,1.985,2021,2.5460,3,3),
(472,7,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,81,65.43,30.86,3.5840,4,3.421,2022,3.2561,4,4),
(473,119816,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,45,71.11,28.89,3.3740,4,3.013,2022,4.1901,5,4),
(474,6,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2015,107,40.19,58.88,3.9550,4,4.803,2021,4.0850,5,5),
(475,118002,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2018,52,7.69,26.92,3.0430,4,2.983,2021,1.7960,2,4),
(476,118380,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,300,74.33,25.00,2.8110,3,1.388,2021,2.3080,3,2),
(477,5001274,'LOGÍSTICA','Logística','Negócios, administração e direito','Privada','Presencial','Tecnologico',2020,60,62.71,30.51,2.4533,3,1.781,2022,2.0435,3,2),
(478,3,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,53,37.74,60.38,3.4290,4,4.352,2023,4.2072,5,5),
(479,118888,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,92,85.87,10.87,3.6180,4,3.041,2023,3.6531,4,4),
(480,2,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2015,111,70.27,27.03,2.5657,3,1.772,2022,1.2492,2,2),
(481,118659,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,32,31.25,65.62,2.8870,3,1.736,2023,3.0612,4,2),
(482,118762,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2018,37,64.86,32.43,1.2740,2,1.751,2021,1.4590,2,2),
(483,1,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,98,17.53,80.41,3.8894,4,4.788,2022,3.3165,4,5),
(484,118852,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,92,68.48,31.52,1.9650,3,0.782,2023,1.5385,2,1),
(485,117004,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2018,85,15.48,63.10,3.1972,4,3.628,2022,2.6472,3,4),
(486,5000750,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,78,46.15,42.31,1.9664,3,2.007,2022,2.8651,3,3),
(487,23,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2015,54,27.78,68.52,3.4810,4,3.102,2021,2.6060,3,4),
(488,21,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,86,47.67,31.40,2.1204,3,1.731,2022,1.0823,2,2),
(489,116560,'GEOGRAFIA','Geografia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2018,52,39.22,9.80,2.8730,3,1.282,2021,1.7780,2,2),
(490,122749,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,55,27.27,38.18,2.6090,3,2.465,2023,2.6489,3,3),
(491,20,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,61,21.31,73.77,3.4700,4,3.985,2023,3.0226,4,5),
(492,116648,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,44,31.82,65.91,3.2310,4,2.647,2023,1.8811,2,3),
(493,19,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2015,53,62.26,35.85,3.3830,4,2.807,2021,2.3240,3,3),
(494,116662,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,44,6.82,52.27,2.9900,4,2.834,2023,1.7229,2,3),
(495,17,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,58,34.48,65.52,3.7840,4,3.846,2023,3.5623,4,4),
(496,116690,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,48,8.33,31.25,2.5420,3,1.731,2021,1.9560,3,2),
(497,16,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,83,53.01,36.14,4.2420,5,4.180,2023,4.4036,5,5),
(498,116708,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2018,42,16.67,38.10,3.4547,4,3.037,2022,2.9902,4,4),
(499,122150,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2018,32,75.00,15.62,1.9670,3,1.762,2021,1.7810,2,2),
(500,116720,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,68,14.71,47.06,3.7570,4,3.105,2023,3.3625,4,4),
(501,13,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,147,56.46,41.50,3.4073,4,3.726,2022,2.7725,3,4),
(502,121537,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2018,37,77.14,11.43,1.8680,2,0.896,2021,2.2560,3,1),
(503,12,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,79,11.39,88.61,2.7920,3,3.492,2023,1.9335,2,4),
(504,108710,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,46,32.61,63.04,3.0610,4,2.426,2023,3.3011,4,3),
(505,1404315,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,58,31.03,50.00,3.0370,4,1.730,2023,2.6852,3,2),
(506,101119,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,227,75.77,22.91,2.5297,3,1.928,2022,2.2027,3,2),
(507,1103711,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2018,62,46.77,22.58,3.4390,4,2.651,2021,3.1990,4,3),
(508,16946,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,162,81.48,18.52,3.5303,4,2.914,2022,2.7639,3,3),
(509,101184,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2018,30,26.67,10.00,2.8570,3,2.109,2021,2.3230,3,3),
(510,16945,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,220,73.06,26.94,3.8245,4,3.284,2022,3.4286,4,4),
(511,1103710,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2018,103,31.07,36.89,3.2530,4,2.717,2021,2.6210,3,3),
(512,101253,'ENGENHARIA AMBIENTAL','Engenharia ambiental','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,88,79.55,19.32,2.4720,3,1.288,2023,1.5502,2,2),
(513,16868,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,75,62.67,37.33,1.7597,2,1.112,2022,0.5776,1,2),
(514,101749,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,66,42.42,57.58,2.8570,3,2.474,2023,2.8461,3,3),
(515,1404730,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,51,76.47,23.53,1.9000,2,1.306,2023,1.3783,2,2),
(516,16863,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,36,27.78,72.22,2.3930,3,0.975,2021,2.2530,3,2),
(517,1103708,'FILOSOFIA','Filosofia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,35,22.86,22.86,2.9800,4,1.998,2021,2.1440,3,3),
(518,1404731,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,54,70.37,27.78,2.1400,3,0.561,2023,1.6399,2,1),
(519,16860,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,441,74.60,25.40,2.1231,3,1.450,2022,1.6690,2,2),
(520,1103712,'QUÍMICA','Química','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2018,48,37.50,29.17,2.5590,3,1.033,2021,1.9800,3,2),
(521,102021,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2018,66,74.24,24.24,4.4560,5,4.412,2023,4.5831,5,5),
(522,1403526,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2020,33,63.64,36.36,1.9360,2,0.750,2021,1.4920,2,1),
(523,1387135,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,31,38.71,16.13,1.8189,2,2.068,2022,2.4852,3,3),
(524,17594,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,799,54.64,45.36,3.4163,4,2.721,2022,3.2756,4,3),
(525,100802,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,83,34.94,12.05,2.6010,3,2.434,2023,2.2270,3,3),
(526,1387311,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,91,19.78,23.08,2.8352,3,2.687,2022,2.1802,3,3),
(527,17313,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,150,59.33,40.67,1.4885,2,1.093,2022,1.5671,2,2),
(528,1106707,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,504,60.52,37.90,2.0790,3,1.404,2023,0.8823,1,2),
(529,100804,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,31,32.26,48.39,4.1610,5,4.409,2023,4.7327,5,5),
(530,100880,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,129,70.54,28.68,2.2827,3,1.100,2022,1.6480,2,2),
(531,1105676,'GESTÃO DA TECNOLOGIA DA INFORMAÇÃO','Gestão da tecnologia da informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2018,31,74.19,25.81,2.0190,3,1.222,2021,2.6490,3,2),
(532,17056,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2015,82,53.66,39.02,2.5210,3,1.701,2021,2.0410,3,2),
(533,100920,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,31,22.58,32.26,2.6070,3,1.142,2023,1.6500,2,2),
(534,1103742,'CIÊNCIAS SOCIAIS','Ciências sociais','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2018,33,21.21,6.06,2.8290,3,1.973,2021,2.1640,3,3),
(535,1399738,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,42,71.43,14.29,1.9560,3,1.106,2021,2.1240,3,2),
(536,17053,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,94,56.38,34.04,3.0555,4,2.672,2022,2.7769,3,3),
(537,100928,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,30,3.33,76.67,3.1120,4,3.025,2023,2.7511,3,4),
(538,17052,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,187,62.57,33.16,3.0568,4,2.491,2022,2.9790,4,3),
(539,108756,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,41,48.78,48.78,2.3845,3,0.954,2022,1.3406,2,2),
(540,1404781,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,117,82.91,16.24,2.5240,3,2.142,2023,2.5294,3,3),
(541,1103701,'CIÊNCIAS SOCIAIS','Ciências sociais formação de professor','Educação','Publica','Presencial','Licenciatura',2018,32,15.62,18.75,2.9390,3,3.144,2021,1.9480,3,4),
(542,16817,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,1549,79.15,20.85,2.1387,3,1.550,2022,1.5667,2,2),
(543,107088,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,63,63.49,28.57,1.9610,3,1.667,2022,2.2255,3,2),
(544,16281,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,60,58.33,36.67,2.6959,3,2.369,2022,2.4288,3,3),
(545,107564,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,43,55.81,44.19,1.6200,2,1.455,2023,1.0443,2,2),
(546,16280,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,89,25.84,71.91,2.2529,3,2.683,2022,1.8506,2,3),
(547,16276,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,67,68.66,23.88,2.7150,3,2.224,2021,2.6480,3,3),
(548,108441,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,65,66.15,32.31,3.3010,4,2.703,2023,3.3721,4,3),
(549,16275,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,80,75.00,23.75,2.6570,3,1.746,2021,2.5590,3,2),
(550,108443,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,53,47.17,52.83,2.3420,3,1.101,2023,1.8048,2,2),
(551,16274,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2015,71,52.11,42.25,2.3570,3,0.765,2021,1.9050,2,1),
(552,108694,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,148,66.22,33.11,2.7120,3,1.470,2023,2.4372,3,2),
(553,1419552,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2020,34,67.65,2.94,3.2003,4,2.681,2022,3.1871,4,3),
(554,16273,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2015,62,83.87,16.13,2.0970,3,1.244,2021,2.2300,3,2),
(555,16272,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2015,78,89.74,10.26,2.4070,3,1.684,2021,2.5220,3,2),
(556,106052,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2018,51,5.88,25.49,3.0530,4,2.573,2021,2.4040,3,3),
(557,16859,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,82,70.73,29.27,2.3188,3,0.741,2022,1.5061,2,1),
(558,16819,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,94,61.70,38.30,3.0510,4,2.640,2021,2.6950,3,3),
(559,16834,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,181,60.77,39.23,2.2030,3,1.755,2023,1.2878,2,2),
(560,104051,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,168,75.00,23.21,2.6810,3,1.394,2023,2.0509,3,2),
(561,1404937,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,31,67.74,29.03,2.1970,3,0.437,2023,0.6552,1,1),
(562,16830,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,217,62.67,37.33,2.7471,3,1.815,2022,2.4941,3,2),
(563,1103426,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,61,18.03,29.51,2.9360,3,2.433,2021,1.8100,2,3),
(564,16829,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,202,66.83,33.17,2.9769,4,2.303,2022,2.7083,3,3),
(565,104530,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,38,68.42,28.95,1.6716,2,1.322,2022,0.9300,1,2),
(566,1405507,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,39,58.97,20.51,1.6130,2,2.137,2023,1.2836,2,3),
(567,1405555,'DESIGN DE INTERIORES','Design de interiores','Artes e humanidades','Privada','Presencial','Tecnologico',2020,36,66.67,33.33,3.9544,5,4.648,2022,NULL,NULL,5),
(568,16827,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,271,31.00,69.00,2.5500,3,1.471,2023,1.6626,2,2),
(569,104684,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,59,66.10,32.20,2.4119,3,2.257,2022,2.8242,3,3),
(570,16826,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,92,63.04,36.96,2.2910,3,1.362,2023,1.3638,2,2),
(571,105575,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,73,26.03,46.58,3.2170,4,2.782,2023,3.4053,4,3),
(572,16825,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,297,78.11,21.55,2.5830,3,1.721,2023,1.7672,2,2),
(573,1072168,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,40,37.50,57.50,2.6950,3,1.881,2023,2.7870,3,2),
(574,16824,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2015,309,77.67,22.33,2.0710,3,1.417,2022,1.1927,2,2),
(575,1182767,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,53,22.64,77.36,2.9160,3,2.718,2023,2.2982,3,3),
(576,52233,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,75,56.00,44.00,3.6620,4,3.348,2023,2.6687,3,4),
(577,1190666,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,34,50.00,50.00,2.1510,3,0.574,2023,1.7712,2,1),
(578,1207267,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,43,62.79,37.21,2.4870,3,1.158,2023,2.1369,3,2),
(579,20472,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2018,86,43.02,56.98,2.3700,3,1.649,2021,2.4980,3,2),
(580,1191488,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2020,52,51.92,46.15,3.8250,4,3.382,2023,4.6443,5,4),
(581,1207265,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,63,53.97,44.44,2.3560,3,1.240,2023,1.6329,2,2),
(582,92153,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,166,62.65,37.35,2.5545,3,1.406,2022,1.8497,2,2),
(583,20474,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,40,33.33,38.46,1.9711,3,1.464,2022,1.4744,2,2),
(584,1192255,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,52,61.54,25.00,3.1210,4,2.553,2023,2.3668,3,3),
(585,91391,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,217,41.94,57.60,2.6690,3,2.310,2022,2.8987,3,3),
(586,1192256,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,53,49.06,49.06,3.9940,5,4.105,2023,3.4549,4,5),
(587,91369,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,93,30.43,69.57,2.0594,3,1.210,2022,1.8240,2,2),
(588,20757,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,280,71.07,28.21,2.9345,3,1.990,2022,3.0966,4,3),
(589,1207123,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,39,71.79,28.21,2.3990,3,1.549,2022,1.5700,2,2),
(590,1192257,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,66,40.91,56.06,3.9100,4,2.808,2023,4.0056,5,3),
(591,91360,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,34,41.18,52.94,2.5180,3,1.046,2023,1.3243,2,2),
(592,1199602,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,46,36.96,54.35,1.7421,2,0.961,2022,1.6090,2,2),
(593,91358,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,65,32.31,64.62,2.2660,3,0.699,2023,1.1217,2,1),
(594,1207269,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2018,39,56.41,43.59,2.6560,3,1.869,2021,2.0830,3,2),
(595,96415,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2015,67,47.76,46.27,2.6380,3,2.232,2021,2.6640,3,3),
(596,1257749,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,42,73.81,23.81,3.1000,4,2.181,2021,3.1790,4,3),
(597,1188550,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2020,38,23.68,2.63,2.8220,3,2.251,2021,3.8510,4,3),
(598,1188620,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2020,36,88.89,0.00,1.7610,2,1.700,2021,1.8940,2,2),
(599,96134,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,65,81.54,18.46,3.6321,4,3.747,2022,3.2584,4,4),
(600,1257748,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,50,50.00,46.00,3.2550,4,2.685,2023,3.0050,4,3),
(601,96004,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,63,50.79,49.21,1.2821,2,0.808,2022,0.5904,1,1),
(602,1188880,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2020,31,12.90,51.61,3.0390,4,2.996,2021,2.6440,3,4),
(603,1207554,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,51,54.90,41.18,1.9160,2,0.227,2023,1.4397,2,1),
(604,1189695,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,56,76.79,14.29,2.6540,3,2.021,2023,1.9847,3,3),
(605,20016,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,128,27.34,72.66,3.7000,4,2.954,2023,3.2672,4,4),
(606,1189782,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,56,82.14,14.29,2.4190,3,1.176,2023,1.6133,2,2),
(607,95405,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2015,53,35.85,56.60,1.1194,2,0.967,2022,1.6417,2,2),
(608,1207552,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,39,71.79,28.21,2.0950,3,1.635,2023,2.0340,3,2),
(609,1189857,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,37,40.54,16.22,2.5340,3,2.380,2023,2.4218,3,3),
(610,20144,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,109,39.45,56.88,3.6630,4,3.422,2023,2.9431,3,4),
(611,19759,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2018,35,71.43,28.57,2.9060,3,1.545,2021,2.1000,3,2),
(612,1205926,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,37,40.54,32.43,2.2050,3,1.215,2023,1.4051,2,2),
(613,30537,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Privada','Presencial','Licenciatura',2018,31,64.52,35.48,4.0870,5,2.436,2021,4.1710,5,3),
(614,87358,'GASTRONOMIA','Gastronomia','Serviços','Privada','Presencial','Tecnologico',2015,286,36.36,63.64,1.8755,2,0.442,2022,NULL,NULL,1),
(615,1205640,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,79,83.54,16.46,2.6850,3,1.773,2023,2.1630,3,2),
(616,40677,'COMUNICAÇÃO SOCIAL - PUBLICIDADE E PROPAGANDA','Publicidade e propaganda','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,35,62.86,34.29,3.6742,4,3.667,2022,3.3610,4,4),
(617,1207265,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,47,42.55,38.30,2.3560,3,1.240,2023,1.6329,2,2),
(618,84854,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2015,42,23.81,71.43,3.3416,4,3.601,2022,3.0681,4,4),
(619,41690,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,49,12.24,14.29,2.8850,3,2.355,2021,2.1300,3,3),
(620,43037,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2018,69,62.32,15.94,2.5450,3,1.227,2021,2.4430,3,2),
(621,1207552,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,39,56.41,33.33,2.0950,3,1.635,2023,2.0340,3,2),
(622,43044,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2018,54,55.56,22.22,2.0600,3,1.171,2021,2.6150,3,2),
(623,1207554,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,45,55.56,40.00,1.9160,2,0.227,2023,1.4397,2,1),
(624,1205640,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,58,86.21,12.07,2.6850,3,1.773,2023,2.1630,3,2),
(625,25949,'LETRAS - LÍNGUA PORTUGUESA E LITERATURAS DE LíNGUA PORTUGUESA','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2018,47,12.77,48.94,2.8810,3,2.724,2021,1.9680,3,3),
(626,21442,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,46,13.04,50.00,2.7540,3,2.090,2023,1.8970,2,3),
(627,90004,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,81,50.00,48.75,2.6970,3,2.040,2023,3.1013,4,3),
(628,22118,'LETRAS PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2018,31,9.68,22.58,3.0940,4,3.513,2021,1.9110,2,4),
(629,89824,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,306,62.75,36.93,3.2315,4,2.579,2022,2.8681,3,3),
(630,1204533,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,75,37.33,54.67,2.8400,3,2.351,2023,2.3363,3,3),
(631,89780,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,91,72.53,27.47,3.0180,4,1.598,2023,3.0138,4,2),
(632,1204534,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,41,46.34,36.59,2.3800,3,2.377,2023,1.5804,2,3),
(633,89778,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,213,58.69,41.31,2.4910,3,1.331,2023,2.7149,3,2),
(634,1204537,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,38,47.37,39.47,2.8030,3,2.381,2023,2.5131,3,3),
(635,88488,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,50,60.00,40.00,2.6960,3,1.233,2023,2.6529,3,2),
(636,88486,'ENGENHARIA DE PRODUÇÃO','Engenharia de produção','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,67,76.12,23.88,2.8520,3,2.221,2023,2.3310,3,3),
(637,1205926,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,32,65.62,28.12,2.2050,3,1.215,2023,1.4051,2,2),
(638,83376,'ENGENHARIA DE PRODUÇÃO','Engenharia de produção','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,80,75.00,25.00,2.6010,3,1.214,2023,2.1469,3,2),
(639,96497,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,90,35.56,60.00,2.8030,3,2.200,2023,2.4848,3,3),
(640,1257972,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,30,50.00,40.00,1.9150,2,1.017,2023,1.1169,2,2),
(641,16859,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,101,84.16,15.84,2.3188,3,0.741,2022,1.5061,2,1),
(642,16860,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,464,69.33,29.37,2.1231,3,1.450,2022,1.6690,2,2),
(643,1160425,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,38,65.79,2.63,2.1360,3,1.933,2021,2.2220,3,2),
(644,100928,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,30,50.00,50.00,3.1120,4,3.025,2023,2.7511,3,4),
(645,16863,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2018,116,41.38,57.76,2.3930,3,0.975,2021,2.2530,3,2),
(646,1261972,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,56,12.50,55.36,2.6600,3,3.434,2023,1.9027,2,4),
(647,100920,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,39,69.23,30.77,2.6070,3,1.142,2023,1.6500,2,2),
(648,16867,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,48,39.58,58.33,2.4256,3,1.215,2022,2.0866,3,2),
(649,16868,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,58,68.97,27.59,1.7597,2,1.112,2022,0.5776,1,2),
(650,1261971,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,36,22.22,27.78,3.3260,4,4.416,2023,3.3481,4,5),
(651,100880,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2015,236,60.17,39.83,2.2827,3,1.100,2022,1.6480,2,2),
(652,16945,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,88,69.32,30.68,3.8245,4,3.284,2022,3.4286,4,4),
(653,100804,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,38,26.32,68.42,4.1610,5,4.409,2023,4.7327,5,5),
(654,16946,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,85,68.24,31.76,3.5303,4,2.914,2022,2.7639,3,3),
(655,1168453,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,40,45.00,0.00,2.0260,3,2.039,2023,1.4769,2,3),
(656,100802,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,84,32.14,44.05,2.6010,3,2.434,2023,2.2270,3,3),
(657,1168551,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,42,42.86,14.29,3.2150,4,3.185,2021,2.2770,3,4),
(658,101098,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,49,48.98,51.02,3.5367,4,2.398,2022,2.9655,4,3),
(659,1160216,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,36,75.00,0.00,1.4070,2,0.643,2023,0.4469,1,1),
(660,101119,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,320,70.31,29.69,2.5297,3,1.928,2022,2.2027,3,2),
(661,16819,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2018,236,75.42,24.58,3.0510,4,2.640,2021,2.6950,3,3),
(662,102019,'ENGENHARIA AMBIENTAL E SANITÁRIA','Engenharia ambiental','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,64,89.06,10.94,3.3450,4,2.586,2023,2.1567,3,3),
(663,1265365,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,91,35.16,53.85,2.7505,3,2.650,2022,2.6744,3,3),
(664,16824,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,347,72.62,26.80,2.0710,3,1.417,2022,1.1927,2,2),
(665,16825,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,358,74.30,25.42,2.5830,3,1.721,2023,1.7672,2,2),
(666,1265319,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,90,23.33,62.22,2.0500,3,2.326,2022,1.8632,2,3),
(667,16826,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,167,67.66,32.34,2.2910,3,1.362,2023,1.3638,2,2),
(668,101749,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,85,52.94,47.06,2.8570,3,2.474,2023,2.8461,3,3),
(669,16827,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,169,55.62,44.38,2.5500,3,1.471,2023,1.6626,2,2),
(670,1154375,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,40,67.50,2.50,1.9060,2,2.016,2023,1.8658,2,3),
(671,16829,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,281,88.61,10.68,2.9769,4,2.303,2022,2.7083,3,3),
(672,101253,'ENGENHARIA AMBIENTAL','Engenharia ambiental','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,111,86.49,13.51,2.4720,3,1.288,2023,1.5502,2,2),
(673,1262725,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,30,33.33,66.67,3.1880,4,1.747,2023,3.7216,4,2),
(674,101184,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2015,36,77.78,22.22,2.8570,3,2.109,2021,2.3230,3,3),
(675,16830,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,356,82.58,16.85,2.7471,3,1.815,2022,2.4941,3,2),
(676,16834,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,182,61.54,35.71,2.2030,3,1.755,2023,1.2878,2,2),
(677,1160215,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,40,75.00,0.00,1.9400,2,0.760,2023,1.9987,3,1),
(678,1262723,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,31,58.06,38.71,1.9321,2,0.213,2022,1.4679,2,1),
(679,1188548,'GESTÃO AMBIENTAL','Gestão ambiental','Engenharia, produção e construção','Publica','Presencial','Tecnologico',2020,37,75.68,2.70,1.9190,2,1.862,2023,1.7352,2,2),
(680,100356,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,52,59.62,40.38,2.4100,3,1.461,2021,NULL,NULL,2),
(681,18471,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,250,78.80,19.20,2.2890,3,1.523,2023,1.4595,2,2),
(682,1258779,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,39,51.28,48.72,2.0750,3,1.004,2023,2.5969,3,2),
(683,100010,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2015,161,55.28,44.72,2.5600,3,1.499,2021,2.0430,3,2),
(684,18472,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,158,25.95,70.89,2.4880,3,2.439,2023,2.8389,3,3),
(685,18473,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,485,83.09,15.88,2.4090,3,1.612,2023,2.0737,3,2),
(686,1185902,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,39,51.28,25.64,2.2162,3,1.647,2022,1.5711,2,2),
(687,19592,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,33,36.36,63.64,1.2208,2,0.807,2022,0.7976,1,1),
(688,1185942,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,80,31.25,60.00,2.2223,3,1.418,2022,3.4673,4,2),
(689,19594,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2018,40,57.50,40.00,3.8750,4,2.545,2021,4.1430,5,3),
(690,1188463,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,34,61.76,11.76,2.4800,3,1.787,2023,1.8872,2,2),
(691,98760,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,32,43.75,53.12,0.4640,1,0.000,2023,NULL,NULL,1),
(692,19595,'SISTEMA DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2018,33,90.91,9.09,4.5090,5,3.651,2021,5.0000,5,4),
(693,1188508,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,36,55.56,0.00,1.9490,3,1.715,2023,1.3649,2,2),
(694,1257973,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,35,71.43,28.57,1.6280,2,1.424,2023,0.9546,2,2),
(695,1188509,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,40,60.00,2.50,2.2970,3,1.572,2023,2.0815,3,2),
(696,96633,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,107,42.99,54.21,2.8240,3,2.764,2023,2.4779,3,3),
(697,19730,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,229,94.76,4.80,2.2080,3,2.069,2022,NULL,NULL,3),
(698,1185732,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,38,71.05,2.63,2.4730,3,3.017,2021,1.8410,2,4),
(699,16964,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,40,57.50,42.50,2.8690,3,2.136,2022,2.2635,3,3),
(700,1184754,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,73,34.25,46.58,2.2450,3,1.810,2023,2.0185,3,2),
(701,100778,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,99,46.46,49.49,2.8220,3,2.822,2023,1.7005,2,3),
(702,17052,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,126,31.20,48.00,3.0568,4,2.491,2022,2.9790,4,3),
(703,17053,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,81,48.15,33.33,3.0555,4,2.672,2022,2.7769,3,3),
(704,1182266,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,69,78.26,18.84,2.2123,3,0.615,2022,1.4714,2,1),
(705,17056,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2018,75,56.00,25.33,2.5210,3,1.701,2021,2.0410,3,2),
(706,17313,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,131,56.49,41.98,1.4885,2,1.093,2022,1.5671,2,2),
(707,1182802,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,65,23.08,43.08,2.2540,3,1.484,2023,2.4116,3,2),
(708,100772,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,93,58.06,38.71,2.8500,3,2.188,2023,2.9070,3,3),
(709,100770,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,33,54.55,42.42,3.5340,4,3.003,2023,2.9029,3,4),
(710,17594,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,765,44.37,54.71,3.4163,4,2.721,2022,3.2756,4,3),
(711,100768,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,58,60.34,39.66,2.6660,3,1.957,2023,2.2493,3,3),
(712,1183196,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,44,77.27,18.18,2.2570,3,1.513,2023,1.7704,2,2),
(713,100763,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,100,35.00,65.00,3.0800,4,3.358,2023,3.1726,4,4),
(714,18281,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,41,70.73,29.27,1.6464,2,1.657,2022,1.2596,2,2),
(715,100358,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,43,34.88,65.12,2.8270,3,2.076,2021,2.7140,3,3),
(716,72818,'RADIOLOGIA','Radiologia','Saúde e bem-estar','Privada','Presencial','Tecnologico',2018,159,76.10,23.90,2.4280,3,0.879,2023,NULL,NULL,1),
(717,1204537,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,82,48.78,48.78,2.8030,3,2.381,2023,2.5131,3,3),
(718,83374,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,131,59.54,40.46,2.6550,3,1.701,2023,1.8171,2,2),
(719,63516,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,210,53.59,44.02,3.6565,4,2.315,2022,3.8273,4,3),
(720,1284622,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2020,41,68.29,29.27,1.9610,3,1.424,2021,2.0890,3,2),
(721,1284880,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,35,38.24,35.29,1.6010,2,1.117,2023,0.8721,1,2),
(722,65471,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,269,20.82,78.81,3.4236,4,2.795,2022,4.3180,5,3),
(723,65471,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,312,42.12,56.91,3.4236,4,2.795,2022,4.3180,5,3),
(724,1284937,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,38,42.11,36.84,2.4150,3,1.077,2023,2.9064,3,2),
(725,64734,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2015,43,76.74,23.26,3.3430,4,2.056,2021,2.5780,3,3),
(726,1188509,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,55,43.64,1.82,2.2970,3,1.572,2023,2.0815,3,2),
(727,66080,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,680,91.47,8.53,2.3908,3,1.778,2022,NULL,NULL,2),
(728,1285517,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2020,34,5.88,17.65,3.3740,4,3.116,2021,2.3300,3,4),
(729,63516,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2015,270,67.78,32.22,3.6565,4,2.315,2022,3.8273,4,3),
(730,1188508,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,55,61.82,7.27,1.9490,3,1.715,2023,1.3649,2,2),
(731,1299950,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,110,79.09,18.18,2.3631,3,1.375,2022,2.1006,3,2),
(732,63140,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,43,37.21,62.79,1.8488,2,1.489,2022,1.1947,2,2),
(733,66381,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,121,76.03,22.31,3.5073,4,3.233,2022,3.4975,4,4),
(734,1188463,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,76,60.53,30.26,2.4800,3,1.787,2023,1.8872,2,2),
(735,1299960,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,33,78.79,21.21,2.0440,3,1.155,2023,1.0624,2,2),
(736,66080,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,464,53.88,46.12,2.3908,3,1.778,2022,NULL,NULL,2),
(737,68063,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,76,39.47,39.47,2.7800,3,1.203,2023,1.8800,2,2),
(738,1284570,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,34,55.88,38.24,2.1870,3,2.122,2023,2.1823,3,3),
(739,63140,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,53,52.83,47.17,1.8488,2,1.489,2022,1.1947,2,2),
(740,1188849,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,73,9.59,90.41,2.0040,3,2.847,2023,1.6363,2,3),
(741,1283961,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2020,35,57.14,42.86,1.7326,2,0.298,2022,NULL,NULL,1),
(742,60582,'FONOAUDIOLOGIA','Fonoaudiologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,32,75.00,18.75,3.2210,4,2.731,2023,2.1621,3,3),
(743,1188620,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2018,30,66.67,26.67,1.7610,2,1.700,2021,1.8940,2,2),
(744,1284133,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,59,71.19,27.12,2.4770,3,1.800,2023,1.8513,2,2),
(745,68918,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,259,56.76,43.24,2.0485,3,1.626,2022,1.8404,2,2),
(746,60584,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2018,35,68.57,31.43,4.5240,5,3.593,2021,5.0000,5,4),
(747,1284137,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,111,80.18,13.51,1.9000,2,0.674,2023,1.2707,2,1),
(748,68114,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,111,61.26,36.04,2.6989,3,1.927,2022,2.1645,3,2),
(749,62906,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,68,35.29,25.00,3.0050,4,2.181,2023,2.9290,3,3),
(750,1188616,'COMÉRCIO EXTERIOR','Comércio exterior','Negócios, administração e direito','Publica','Presencial','Tecnologico',2018,34,58.82,41.18,1.0009,2,0.202,2022,0.0000,1,1),
(751,68063,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,62,45.16,46.77,2.7800,3,1.203,2023,1.8800,2,2),
(752,66893,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,239,6.28,93.72,2.3070,3,1.526,2021,2.4810,3,2),
(753,1188550,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2018,44,75.00,11.36,2.8220,3,2.251,2021,3.8510,4,3),
(754,62940,'COMUNICAÇÃO SOCIAL - PUBLICIDADE E PROPAGANDA','Publicidade e propaganda','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,39,7.69,28.21,3.2310,4,2.795,2022,2.3007,3,3),
(755,66381,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,148,70.95,29.05,3.5073,4,3.233,2022,3.4975,4,4),
(756,1188880,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2018,36,41.67,38.89,3.0390,4,2.996,2021,2.6440,3,4),
(757,62906,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,64,40.62,46.88,3.0050,4,2.181,2023,2.9290,3,3),
(758,58508,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,127,73.23,21.26,2.6929,3,2.565,2022,2.5101,3,3),
(759,1305051,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,32,59.38,34.38,1.6615,2,0.490,2022,1.1612,2,1),
(760,58506,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,69,75.36,20.29,3.0000,4,2.491,2021,2.9690,4,3),
(761,1183196,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,97,75.26,19.59,2.2570,3,1.513,2023,1.7704,2,2),
(762,56912,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2015,85,40.00,60.00,2.5300,3,1.425,2021,2.1220,3,2),
(763,71939,'MARKETING','Marketing','Negócios, administração e direito','Privada','Presencial','Tecnologico',2018,73,78.08,21.92,2.7948,3,2.864,2022,2.9851,4,3),
(764,1310955,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2020,37,51.35,10.81,2.5860,3,2.803,2021,2.1150,3,3),
(765,1313190,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,40,42.50,0.00,2.4810,3,2.494,2023,2.1271,3,3),
(766,1313191,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2020,41,43.90,4.88,1.3921,2,1.269,2022,0.4620,1,2),
(767,1182802,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,31,16.13,83.87,2.2540,3,1.484,2023,2.4116,3,2),
(768,1313294,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,37,62.16,0.00,1.8580,2,1.341,2023,1.3920,2,2),
(769,53352,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,76,47.37,52.63,2.7616,3,2.004,2022,2.3554,3,3),
(770,1184754,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,107,32.71,63.55,2.2450,3,1.810,2023,2.0185,3,2),
(771,58512,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2015,46,73.33,24.44,2.6115,3,1.398,2022,2.3485,3,2),
(772,68114,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,102,59.80,34.31,2.6989,3,1.927,2022,2.1645,3,2),
(773,1300369,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,33,81.82,15.15,1.7030,2,1.024,2023,NULL,NULL,2),
(774,60584,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2015,66,68.18,31.82,4.5240,5,3.593,2021,5.0000,5,4),
(775,68918,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,253,64.03,34.39,2.0485,3,1.626,2022,1.8404,2,2),
(776,1185902,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,66,50.00,34.85,2.2162,3,1.647,2022,1.5711,2,2),
(777,1300430,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,81,79.01,13.58,2.9400,3,1.591,2023,2.6746,3,2),
(778,60582,'FONOAUDIOLOGIA','Fonoaudiologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,45,75.56,24.44,3.2210,4,2.731,2023,2.1621,3,3),
(779,1303435,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,87,68.97,21.84,1.9003,2,0.816,2022,1.2589,2,1),
(780,1303468,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,79,79.75,17.72,2.3930,3,1.076,2023,1.3379,2,2),
(781,59116,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,118,79.66,20.34,1.4660,2,0.827,2023,1.2061,2,1),
(782,70338,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,190,62.11,36.32,3.7740,4,3.250,2023,3.2708,4,4),
(783,71115,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2018,71,40.85,40.85,2.4960,3,1.870,2021,2.4080,3,2),
(784,1185732,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,77,61.04,24.68,2.4730,3,3.017,2021,1.8410,2,4),
(785,70338,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,167,69.46,30.54,3.7740,4,3.250,2023,3.2708,4,4),
(786,59116,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,133,61.65,38.35,1.4660,2,0.827,2023,1.2061,2,1),
(787,80358,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,94,72.34,27.66,2.4730,3,1.642,2023,1.6794,2,2),
(788,51549,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,60,65.00,35.00,2.9466,4,2.666,2022,3.1516,4,3),
(789,80291,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,89,55.68,44.32,2.8015,3,2.206,2022,2.4449,3,3),
(790,51558,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2018,83,37.35,38.55,3.4470,4,3.326,2023,4.0345,5,4),
(791,51609,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,82,37.80,45.12,2.9280,3,2.232,2023,2.3183,3,3),
(792,1261971,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,47,23.40,8.51,3.3260,4,4.416,2023,3.3481,4,5),
(793,51611,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,50,84.00,16.00,2.6185,3,2.065,2022,NULL,NULL,3),
(794,1261972,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,61,13.11,0.00,2.6600,3,3.434,2023,1.9027,2,4),
(795,79932,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,99,60.61,39.39,2.9860,4,2.218,2023,2.1226,3,3),
(796,51613,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,85,32.94,43.53,3.0190,4,2.531,2023,2.0488,3,3),
(797,1199602,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,55,33.33,61.11,1.7421,2,0.961,2022,1.6090,2,2),
(798,51615,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,78,70.51,26.92,3.4216,4,2.947,2022,3.6105,4,4),
(799,79552,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,93,60.22,39.78,2.1620,3,1.867,2023,1.7523,2,2),
(800,1192257,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,47,57.45,40.43,3.9100,4,2.808,2023,4.0056,5,3),
(801,51618,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2018,106,78.30,11.32,2.4143,3,1.468,2022,2.0968,3,2),
(802,51622,'ENGENHARIA DE PRODUÇÃO AGROINDUSTRIAL','Engenharia de produção','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,43,51.16,27.91,3.3310,4,1.630,2023,3.4620,4,2),
(803,1265319,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,40,30.00,30.00,2.0500,3,2.326,2022,1.8632,2,3),
(804,80360,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,47,68.09,31.91,2.8240,3,2.145,2021,1.9960,3,3),
(805,44461,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,82,41.46,18.29,3.0520,4,2.339,2022,3.0818,4,3),
(806,46972,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2018,42,83.33,14.29,1.6670,2,1.111,2021,1.3650,2,2),
(807,83372,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,58,41.38,58.62,2.5500,3,1.645,2023,2.8494,3,2),
(808,47922,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,105,77.14,21.90,3.0141,4,1.925,2022,2.3408,3,2),
(809,81399,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,103,24.51,74.51,1.4535,2,1.344,2022,1.8962,2,2),
(810,1204534,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,98,51.02,46.94,2.3800,3,2.377,2023,1.5804,2,3),
(811,80922,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2015,82,39.02,59.76,1.8150,2,1.006,2021,1.5930,2,2),
(812,48299,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,77,35.06,42.86,1.9702,3,1.894,2022,1.5406,2,2),
(813,1204533,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,115,31.30,67.83,2.8400,3,2.351,2023,2.3363,3,3),
(814,48302,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,79,15.19,67.09,2.4333,3,2.695,2022,2.4556,3,3),
(815,48385,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,66,77.27,22.73,1.5291,2,0.395,2022,NULL,NULL,1),
(816,80362,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,51,54.90,45.10,3.1520,4,1.807,2023,2.9224,3,2),
(817,49045,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,114,79.82,20.18,2.2739,3,1.445,2022,2.2226,3,2),
(818,49094,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2018,347,75.79,22.48,1.7320,2,1.229,2023,0.1963,1,2),
(819,75099,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,328,84.76,14.94,2.6990,3,1.579,2023,2.1426,3,2),
(820,1265365,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,38,31.58,23.68,2.7505,3,2.650,2022,2.6744,3,3),
(821,1190506,'AGRONEGÓCIO','Gestão do agronegócio','Negócios, administração e direito','Privada','Presencial','Tecnologico',2018,31,67.74,32.26,0.9440,1,0.376,2023,0.0000,1,1),
(822,56912,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2018,70,72.86,27.14,2.5300,3,1.425,2021,2.1220,3,2),
(823,1270057,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,50,24.00,0.00,2.6350,3,2.089,2023,1.9379,2,3),
(824,58506,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,75,64.00,14.67,3.0000,4,2.491,2021,2.9690,4,3),
(825,1189857,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,94,36.17,44.68,2.5340,3,2.380,2023,2.4218,3,3),
(826,1270062,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,55,10.91,1.82,2.1750,3,1.888,2023,0.7438,1,2),
(827,58508,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,105,60.00,29.52,2.6929,3,2.565,2022,2.5101,3,3),
(828,1279788,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2020,58,82.76,17.24,2.6110,3,1.511,2023,NULL,NULL,2),
(829,1189782,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,111,81.08,18.92,2.4190,3,1.176,2023,1.6133,2,2),
(830,58512,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2018,56,62.50,23.21,2.6115,3,1.398,2022,2.3485,3,2),
(831,71466,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2015,61,68.85,31.15,1.9844,3,0.881,2022,0.8721,1,1),
(832,1189695,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,81,77.78,19.75,2.6540,3,2.021,2023,1.9847,3,3),
(833,71115,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2015,87,45.98,44.83,2.4960,3,1.870,2021,2.4080,3,2),
(834,1192256,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,107,60.75,37.38,3.9940,5,4.105,2023,3.4549,4,5),
(835,1190666,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,53,62.26,37.74,2.1510,3,0.574,2023,1.7712,2,1),
(836,1270010,'ENGENHARIA QUÍMICA','Engenharia química','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,39,23.08,0.00,2.4290,3,2.399,2023,1.5565,2,3),
(837,75096,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,175,71.43,28.57,3.6220,4,2.965,2023,3.6037,4,4),
(838,51638,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,84,35.71,55.95,2.9800,4,1.971,2023,2.2701,3,3),
(839,1265414,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,39,28.21,35.90,2.9716,4,2.995,2022,3.1055,4,4),
(840,1192255,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,104,64.42,33.65,3.1210,4,2.553,2023,2.3668,3,3),
(841,51648,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,64,68.75,9.38,2.9660,4,1.196,2023,2.5331,3,2),
(842,1266092,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,62,80.65,14.52,2.2850,3,1.199,2023,1.7751,2,2),
(843,73084,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2015,61,70.49,29.51,2.9890,4,1.566,2021,1.8150,2,2),
(844,51719,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,73,80.82,17.81,2.6929,3,1.331,2022,1.8773,2,2),
(845,51770,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,74,58.11,41.89,3.0425,4,3.605,2022,2.9067,3,4),
(846,1191488,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2018,36,38.89,61.11,3.8250,4,3.382,2023,4.6443,5,4),
(847,1268136,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,37,59.46,8.11,2.4720,3,2.072,2023,2.9001,3,3),
(848,72818,'RADIOLOGIA','Radiologia','Saúde e bem-estar','Privada','Presencial','Tecnologico',2015,89,60.67,39.33,2.4280,3,0.879,2023,NULL,NULL,1),
(849,52216,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,103,67.96,31.07,4.1820,5,3.614,2023,4.1758,5,4),
(850,1269969,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2020,47,40.43,2.13,2.4150,3,1.401,2021,2.4000,3,2),
(851,52233,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,56,44.64,53.57,3.6620,4,3.348,2023,2.6687,3,4),
(852,1190677,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2018,62,80.65,19.35,1.1720,2,0.381,2023,1.7018,2,1),
(853,1269970,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2020,36,41.67,0.00,2.1540,3,1.121,2021,2.2300,3,2),
(854,53352,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,39,66.67,33.33,2.7616,3,2.004,2022,2.3554,3,3),
(855,1182767,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,91,26.37,73.63,2.9160,3,2.718,2023,2.2982,3,3),
(856,5001274,'LOGÍSTICA','Logística','Negócios, administração e direito','Privada','Presencial','Tecnologico',2015,55,50.00,46.30,2.4533,3,1.781,2022,2.0435,3,2),
(857,1284570,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,56,44.64,51.79,2.1870,3,2.122,2023,2.1823,3,3),
(858,66080,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,846,77.66,22.34,2.3908,3,1.778,2022,NULL,NULL,2),
(859,1284622,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2019,47,85.11,14.89,1.9610,3,1.424,2021,2.0890,3,2),
(860,119062,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,46,30.43,67.39,2.5900,3,1.913,2023,2.4527,3,2),
(861,75099,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,202,80.69,17.33,2.6990,3,1.579,2023,2.1426,3,2),
(862,118888,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,109,77.06,22.94,3.6180,4,3.041,2023,3.6531,4,4),
(863,1284880,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,34,35.29,64.71,1.6010,2,1.117,2023,0.8721,1,2),
(864,66381,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,156,78.21,21.79,3.5073,4,3.233,2022,3.4975,4,4),
(865,75096,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,190,76.84,19.47,3.6220,4,2.965,2023,3.6037,4,4),
(866,118852,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,86,66.28,33.72,1.9650,3,0.782,2023,1.5385,2,1),
(867,1285517,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2019,50,20.00,20.00,3.3740,4,3.116,2021,2.3300,3,4),
(868,118762,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2016,57,56.14,43.86,1.2740,2,1.751,2021,1.4590,2,2),
(869,68063,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,50,56.00,38.00,2.7800,3,1.203,2023,1.8800,2,2),
(870,118659,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,43,44.19,55.81,2.8870,3,1.736,2023,3.0612,4,2),
(871,68114,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,103,66.99,32.04,2.6989,3,1.927,2022,2.1645,3,2),
(872,1299950,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,118,83.05,16.95,2.3631,3,1.375,2022,2.1006,3,2),
(873,118380,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,302,82.78,17.22,2.8110,3,1.388,2021,2.3080,3,2),
(874,68918,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,354,79.10,20.90,2.0485,3,1.626,2022,1.8404,2,2),
(875,73084,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2019,62,90.32,9.68,2.9890,4,1.566,2021,1.8150,2,2),
(876,66893,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,50,34.00,66.00,2.3070,3,1.526,2021,2.4810,3,2),
(877,65471,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,244,33.61,65.57,3.4236,4,2.795,2022,4.3180,5,3),
(878,80232,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2019,33,27.27,45.45,1.8310,2,0.783,2021,1.5670,2,1),
(879,62906,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,70,30.00,40.00,3.0050,4,2.181,2023,2.9290,3,3),
(880,1283961,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2019,51,43.14,56.86,1.7326,2,0.298,2022,NULL,NULL,1),
(881,62936,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,33,39.39,57.58,3.3613,4,3.420,2022,2.6401,3,4),
(882,62940,'COMUNICAÇÃO SOCIAL - PUBLICIDADE E PROPAGANDA','Publicidade e propaganda','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,39,41.03,46.15,3.2310,4,2.795,2022,2.3007,3,3),
(883,1284133,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,107,70.09,25.23,2.4770,3,1.800,2023,1.8513,2,2),
(884,122749,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,54,20.37,72.22,2.6090,3,2.465,2023,2.6489,3,3),
(885,63140,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,57,50.88,49.12,1.8488,2,1.489,2022,1.1947,2,2),
(886,1284137,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,140,81.43,17.86,1.9000,2,0.674,2023,1.2707,2,1),
(887,79932,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,46,78.26,17.39,2.9860,4,2.218,2023,2.1226,3,3),
(888,63516,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,157,57.69,41.67,3.6565,4,2.315,2022,3.8273,4,3),
(889,122150,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2016,36,58.33,38.89,1.9670,3,1.762,2021,1.7810,2,2),
(890,121537,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2016,33,69.70,21.21,1.8680,2,0.896,2021,2.2560,3,1),
(891,79552,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,175,74.86,23.43,2.1620,3,1.867,2023,1.7523,2,2),
(892,118002,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2016,51,72.55,25.49,3.0430,4,2.983,2021,1.7960,2,4),
(893,1299960,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,49,91.84,8.16,2.0440,3,1.155,2023,1.0624,2,2),
(894,117604,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,66,42.42,56.06,1.7198,2,0.285,2022,1.5496,2,1),
(895,1305048,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,38,26.32,73.68,2.5850,3,1.539,2023,2.3623,3,2),
(896,116428,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,123,74.80,24.39,1.8070,2,0.493,2023,0.8619,1,1),
(897,115058,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2016,231,80.09,19.91,3.4750,4,2.322,2023,2.8534,3,3),
(898,1305050,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,35,42.86,57.14,1.2560,2,0.538,2023,0.5086,1,1),
(899,115023,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,33,27.27,60.61,2.1110,3,1.216,2023,2.1075,3,2),
(900,1305051,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,46,45.65,50.00,1.6615,2,0.490,2022,1.1612,2,1),
(901,114388,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2016,33,78.79,12.12,2.3590,3,1.663,2021,3.0660,4,2),
(902,71115,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2019,77,51.95,19.48,2.4960,3,1.870,2021,2.4080,3,2),
(903,113559,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,73,42.47,49.32,2.8060,3,2.075,2023,1.8204,2,3),
(904,72818,'RADIOLOGIA','Radiologia','Saúde e bem-estar','Privada','Presencial','Tecnologico',2017,149,84.56,15.44,2.4280,3,0.879,2023,NULL,NULL,1),
(905,70338,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,146,67.81,29.45,3.7740,4,3.250,2023,3.2708,4,4),
(906,113555,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,78,50.00,35.90,2.9682,4,2.506,2022,3.0174,4,3),
(907,73084,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2017,61,83.61,16.39,2.9890,4,1.566,2021,1.8150,2,2),
(908,113529,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,56,75.00,19.64,2.1040,3,0.382,2023,2.6177,3,1),
(909,60584,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2017,30,66.67,33.33,4.5240,5,3.593,2021,5.0000,5,4),
(910,116560,'GEOGRAFIA','Geografia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2016,53,84.91,15.09,2.8730,3,1.282,2021,1.7780,2,2),
(911,72818,'RADIOLOGIA','Radiologia','Saúde e bem-estar','Privada','Presencial','Tecnologico',2019,178,82.58,16.85,2.4280,3,0.879,2023,NULL,NULL,1),
(912,117488,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,55,56.36,43.64,1.7916,2,1.346,2022,2.1394,3,2),
(913,117242,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,35,74.29,25.71,1.6010,2,0.530,2023,1.5117,2,1),
(914,1300369,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,36,72.22,22.22,1.7030,2,1.024,2023,NULL,NULL,2),
(915,117004,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2016,87,29.89,63.22,3.1972,4,3.628,2022,2.6472,3,4),
(916,70338,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,144,65.28,33.33,3.7740,4,3.250,2023,3.2708,4,4),
(917,1300430,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,176,77.84,17.61,2.9400,3,1.591,2023,2.6746,3,2),
(918,116720,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,66,57.58,39.39,3.7570,4,3.105,2023,3.3625,4,4),
(919,71115,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2017,80,46.25,41.25,2.4960,3,1.870,2021,2.4080,3,2),
(920,1303435,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,88,76.14,21.59,1.9003,2,0.816,2022,1.2589,2,1),
(921,116708,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2016,43,60.47,39.53,3.4547,4,3.037,2022,2.9902,4,4),
(922,1303468,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,77,85.71,10.39,2.3930,3,1.076,2023,1.3379,2,2),
(923,116690,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,47,70.21,21.28,2.5420,3,1.731,2021,1.9560,3,2),
(924,1303764,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,35,71.43,28.57,3.1090,4,1.326,2023,2.5543,3,2),
(925,116662,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,42,38.10,59.52,2.9900,4,2.834,2023,1.7229,2,3),
(926,116648,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,43,37.21,62.79,3.2310,4,2.647,2023,1.8811,2,3),
(927,71939,'MARKETING','Marketing','Negócios, administração e direito','Privada','Presencial','Tecnologico',2017,34,41.18,58.82,2.7948,3,2.864,2022,2.9851,4,3),
(928,80291,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,131,62.60,32.82,2.8015,3,2.206,2022,2.4449,3,3),
(929,1108440,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,52,80.77,19.23,3.0370,4,1.764,2021,2.7390,3,2),
(930,51618,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,105,77.14,16.19,2.4143,3,1.468,2022,2.0968,3,2),
(931,1261971,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,41,21.95,0.00,3.3260,4,4.416,2023,3.3481,4,5),
(932,51622,'ENGENHARIA DE PRODUÇÃO AGROINDUSTRIAL','Engenharia de produção','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,65,36.92,50.77,3.3310,4,1.630,2023,3.4620,4,2),
(933,1261972,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,54,12.96,7.41,2.6600,3,3.434,2023,1.9027,2,4),
(934,1106707,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,440,80.91,19.09,2.0790,3,1.404,2023,0.8823,1,2),
(935,1105780,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,34,47.06,52.94,2.6970,3,2.131,2021,2.8500,3,3),
(936,51638,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,82,31.71,58.54,2.9800,4,1.971,2023,2.2701,3,3),
(937,1103742,'CIÊNCIAS SOCIAIS','Ciências sociais','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2016,30,90.00,10.00,2.8290,3,1.973,2021,2.1640,3,3),
(938,51648,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,47,51.06,40.43,2.9660,4,1.196,2023,2.5331,3,2),
(939,87358,'GASTRONOMIA','Gastronomia','Serviços','Privada','Presencial','Tecnologico',2019,213,75.12,24.88,1.8755,2,0.442,2022,NULL,NULL,1),
(940,1103712,'QUÍMICA','Química','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2016,63,53.97,41.27,2.5590,3,1.033,2021,1.9800,3,2),
(941,51719,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,72,73.61,26.39,2.6929,3,1.331,2022,1.8773,2,2),
(942,1103711,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2016,110,67.27,30.91,3.4390,4,2.651,2021,3.1990,4,3),
(943,1103710,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2016,147,55.10,42.86,3.2530,4,2.717,2021,2.6210,3,3),
(944,88488,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,42,66.67,33.33,2.6960,3,1.233,2023,2.6529,3,2),
(945,1265319,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,82,26.83,57.32,2.0500,3,2.326,2022,1.8632,2,3),
(946,51615,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,56,62.50,37.50,3.4216,4,2.947,2022,3.6105,4,4),
(947,48385,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,87,82.76,16.09,1.5291,2,0.395,2022,NULL,NULL,1),
(948,90004,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,82,45.12,12.20,2.6970,3,2.040,2023,3.1013,4,3),
(949,49045,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,111,81.08,18.92,2.2739,3,1.445,2022,2.2226,3,2),
(950,1122943,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,299,71.24,28.43,3.2270,4,2.036,2023,2.0737,3,3),
(951,89824,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,194,71.13,26.80,3.2315,4,2.579,2022,2.8681,3,3),
(952,1122942,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,150,68.67,31.33,4.1230,5,3.668,2021,3.9700,5,4),
(953,49094,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,406,74.63,25.12,1.7320,2,1.229,2023,0.1963,1,2),
(954,89780,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,67,85.07,13.43,3.0180,4,1.598,2023,3.0138,4,2),
(955,1121415,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,48,47.92,41.67,2.4800,3,2.694,2023,2.0129,3,3),
(956,89778,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,60,83.33,16.67,2.4910,3,1.331,2023,2.7149,3,2),
(957,1120548,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,99,82.83,17.17,3.3163,4,1.864,2022,2.5916,3,2),
(958,51609,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,79,40.51,41.77,2.9280,3,2.232,2023,2.3183,3,3),
(959,51611,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,60,63.33,36.67,2.6185,3,2.065,2022,NULL,NULL,3),
(960,1116939,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,161,84.47,15.53,1.6690,2,0.537,2023,NULL,NULL,1),
(961,51613,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,81,29.63,56.79,3.0190,4,2.531,2023,2.0488,3,3),
(962,1111393,'SECRETARIADO EXECUTIVO','Secretariado','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,70,44.29,38.57,1.6764,2,1.848,2022,0.4991,1,2),
(963,51770,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,64,57.81,40.62,3.0425,4,3.605,2022,2.9067,3,4),
(964,84854,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,30,36.67,26.67,3.3416,4,3.601,2022,3.0681,4,4),
(965,1270010,'ENGENHARIA QUÍMICA','Engenharia química','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,69,24.64,11.59,2.4290,3,2.399,2023,1.5565,2,3),
(966,58508,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,100,57.00,36.00,2.6929,3,2.565,2022,2.5101,3,3),
(967,80922,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2019,84,40.48,38.10,1.8150,2,1.006,2021,1.5930,2,2),
(968,58512,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2017,63,76.19,22.22,2.6115,3,1.398,2022,2.3485,3,2),
(969,1053580,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,92,92.39,7.61,2.7846,3,1.501,2022,1.8664,2,2),
(970,407852,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,36,47.22,52.78,2.0740,3,1.354,2021,2.1910,3,2),
(971,1270057,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,56,17.86,7.14,2.6350,3,2.089,2023,1.9379,2,3),
(972,80362,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,34,61.76,38.24,3.1520,4,1.807,2023,2.9224,3,2),
(973,123620,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,97,54.64,40.21,2.9970,4,2.771,2023,1.9984,3,3),
(974,59116,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,90,61.11,38.89,1.4660,2,0.827,2023,1.2061,2,1),
(975,1270062,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,56,21.43,10.71,2.1750,3,1.888,2023,0.7438,1,2),
(976,123427,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,66,30.30,68.18,3.1982,4,3.708,2022,2.9815,4,4),
(977,80360,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,53,77.36,22.64,2.8240,3,2.145,2021,1.9960,3,3),
(978,1279788,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2019,73,78.08,21.92,2.6110,3,1.511,2023,NULL,NULL,2),
(979,123389,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,86,77.91,22.09,3.5186,4,2.917,2022,3.8598,4,3),
(980,123055,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,65,38.46,61.54,3.1590,4,3.171,2023,3.1264,4,4),
(981,80358,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,39,69.23,30.77,2.4730,3,1.642,2023,1.6794,2,2),
(982,123052,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2016,94,41.49,27.66,3.0518,4,1.590,2022,2.5343,3,2),
(983,60582,'FONOAUDIOLOGIA','Fonoaudiologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,34,38.24,61.76,3.2210,4,2.731,2023,2.1621,3,3),
(984,81399,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,37,54.05,40.54,1.4535,2,1.344,2022,1.8962,2,2),
(985,1269970,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2019,67,56.72,7.46,2.1540,3,1.121,2021,2.2300,3,2),
(986,1265365,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,92,29.35,53.26,2.7505,3,2.650,2022,2.6744,3,3),
(987,1103708,'FILOSOFIA','Filosofia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,80,83.75,13.75,2.9800,4,1.998,2021,2.1440,3,3),
(988,52216,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,122,56.56,43.44,4.1820,5,3.614,2023,4.1758,5,4),
(989,1265414,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,86,22.09,47.67,2.9716,4,2.995,2022,3.1055,4,4),
(990,52233,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,37,45.95,54.05,3.6620,4,3.348,2023,2.6687,3,4),
(991,1103426,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,62,61.29,33.87,2.9360,3,2.433,2021,1.8100,2,3),
(992,53352,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,30,70.00,30.00,2.7616,3,2.004,2022,2.3554,3,3),
(993,1266092,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,114,71.93,26.32,2.2850,3,1.199,2023,1.7751,2,2),
(994,83374,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,63,66.67,28.57,2.6550,3,1.701,2023,1.8171,2,2),
(995,1072168,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,44,50.00,50.00,2.6950,3,1.881,2023,2.7870,3,2),
(996,83372,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,46,58.70,39.13,2.5500,3,1.645,2023,2.8494,3,2),
(997,1268136,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,78,58.97,17.95,2.4720,3,2.072,2023,2.9001,3,3),
(998,56912,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,128,76.56,23.44,2.5300,3,1.425,2021,2.1220,3,2),
(999,1269969,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2019,30,40.00,20.00,2.4150,3,1.401,2021,2.4000,3,2),
(1000,1069962,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,44,56.82,43.18,2.2790,3,1.179,2023,2.4596,3,2),
(1001,58506,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,87,59.77,20.69,3.0000,4,2.491,2021,2.9690,4,3),
(1002,1342445,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,32,50.00,3.12,2.1879,3,2.437,2022,2.4227,3,3),
(1003,100356,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,55,65.45,34.55,2.4100,3,1.461,2021,NULL,NULL,2),
(1004,51719,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,72,84.72,15.28,2.6929,3,1.331,2022,1.8773,2,2),
(1005,1342447,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,36,44.44,0.00,1.5210,2,1.083,2023,1.4061,2,2),
(1006,100010,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2016,154,69.48,30.52,2.5600,3,1.499,2021,2.0430,3,2),
(1007,51648,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,76,78.95,9.21,2.9660,4,1.196,2023,2.5331,3,2),
(1008,1342448,'GESTÃO PÚBLICA','Gestão pública','Negócios, administração e direito','Publica','Presencial','Tecnologico',2019,63,42.86,41.27,2.9185,3,2.983,2022,3.5316,4,4),
(1009,95405,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,45,51.11,44.44,1.1194,2,0.967,2022,1.6417,2,2),
(1010,51638,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,80,30.00,43.75,2.9800,4,1.971,2023,2.2701,3,3),
(1011,98760,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,40,30.00,70.00,0.4640,1,0.000,2023,NULL,NULL,1),
(1012,96633,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,81,35.00,60.00,2.8240,3,2.764,2023,2.4779,3,3),
(1013,1342611,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,35,31.43,25.71,2.1618,3,2.329,2022,2.4427,3,3),
(1014,96497,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,87,24.14,66.67,2.8030,3,2.200,2023,2.4848,3,3),
(1015,51622,'ENGENHARIA DE PRODUÇÃO AGROINDUSTRIAL','Engenharia de produção','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,57,63.16,19.30,3.3310,4,1.630,2023,3.4620,4,2),
(1016,96004,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,172,50.00,50.00,1.2821,2,0.808,2022,0.5904,1,1),
(1017,96415,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2016,85,62.35,28.24,2.6380,3,2.232,2021,2.6640,3,3),
(1018,96134,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,62,91.94,8.06,3.6321,4,3.747,2022,3.2584,4,4),
(1019,100358,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,90,73.33,26.67,2.8270,3,2.076,2021,2.7140,3,3),
(1020,51618,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,102,80.39,12.75,2.4143,3,1.468,2022,2.0968,3,2),
(1021,51770,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,81,66.67,32.10,3.0425,4,3.605,2022,2.9067,3,4),
(1022,100802,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,80,36.25,40.00,2.6010,3,2.434,2023,2.2270,3,3),
(1023,90004,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,69,33.33,47.83,2.6970,3,2.040,2023,3.1013,4,3),
(1024,56912,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2019,91,86.81,13.19,2.5300,3,1.425,2021,2.1220,3,2),
(1025,100778,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,94,42.55,50.00,2.8220,3,2.822,2023,1.7005,2,3),
(1026,1332350,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,52,36.54,50.00,1.0816,2,1.469,2022,1.4209,2,2),
(1027,91360,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,43,37.21,58.14,2.5180,3,1.046,2023,1.3243,2,2),
(1028,53352,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,55,58.18,41.82,2.7616,3,2.004,2022,2.3554,3,3),
(1029,91369,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,97,16.49,76.29,2.0594,3,1.210,2022,1.8240,2,2),
(1030,100772,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,92,69.23,26.37,2.8500,3,2.188,2023,2.9070,3,3),
(1031,52233,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,36,52.78,44.44,3.6620,4,3.348,2023,2.6687,3,4),
(1032,100770,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,38,55.26,44.74,3.5340,4,3.003,2023,2.9029,3,4),
(1033,91391,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,248,41.13,58.87,2.6690,3,2.310,2022,2.8987,3,3),
(1034,52216,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,83,56.63,40.96,4.1820,5,3.614,2023,4.1758,5,4),
(1035,100768,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,72,68.06,27.78,2.6660,3,1.957,2023,2.2493,3,3),
(1036,92153,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,134,79.10,20.90,2.5545,3,1.406,2022,1.8497,2,2),
(1037,100763,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,79,27.85,68.35,3.0800,4,3.358,2023,3.1726,4,4),
(1038,58506,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,85,56.47,12.94,3.0000,4,2.491,2021,2.9690,4,3),
(1039,96134,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,91,81.32,18.68,3.6321,4,3.747,2022,3.2584,4,4),
(1040,49094,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,247,74.90,23.48,1.7320,2,1.229,2023,0.1963,1,2),
(1041,1364187,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,35,85.71,8.57,2.4880,3,1.235,2023,1.9712,3,2),
(1042,91391,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,218,45.41,54.59,2.6690,3,2.310,2022,2.8987,3,3),
(1043,100768,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,68,72.06,19.12,2.6660,3,1.957,2023,2.2493,3,3),
(1044,91369,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,106,17.92,72.64,2.0594,3,1.210,2022,1.8240,2,2),
(1045,49045,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,126,74.60,25.40,2.2739,3,1.445,2022,2.2226,3,2),
(1046,91360,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,67,55.22,37.31,2.5180,3,1.046,2023,1.3243,2,2),
(1047,100770,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,42,47.62,50.00,3.5340,4,3.003,2023,2.9029,3,4),
(1048,1364369,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,46,80.43,19.57,2.8610,3,2.248,2023,2.5555,3,3),
(1049,100772,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,93,64.52,26.88,2.8500,3,2.188,2023,2.9070,3,3),
(1050,91358,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,41,34.15,58.54,2.2660,3,0.699,2023,1.1217,2,1),
(1051,48385,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,70,84.29,12.86,1.5291,2,0.395,2022,NULL,NULL,1),
(1052,1364370,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,67,73.13,26.87,1.5880,2,0.712,2023,0.3102,1,1),
(1053,48302,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,88,32.95,42.05,2.4333,3,2.695,2022,2.4556,3,3),
(1054,1364739,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,30,53.33,30.00,2.1650,3,1.689,2023,2.2171,3,2),
(1055,90004,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,69,30.43,57.97,2.6970,3,2.040,2023,3.1013,4,3),
(1056,48299,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,78,35.90,28.21,1.9702,3,1.894,2022,1.5406,2,2),
(1057,1365187,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,146,78.08,21.92,3.1710,4,1.785,2023,3.2725,4,2),
(1058,89824,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,364,72.25,27.75,3.2315,4,2.579,2022,2.8681,3,3),
(1059,100778,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,100,51.00,35.00,2.8220,3,2.822,2023,1.7005,2,3),
(1060,89780,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,71,88.73,11.27,3.0180,4,1.598,2023,3.0138,4,2),
(1061,47922,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,61,80.33,18.03,3.0141,4,1.925,2022,2.3408,3,2),
(1062,100763,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,80,17.50,75.00,3.0800,4,3.358,2023,3.1726,4,4),
(1063,92153,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,115,79.13,20.87,2.5545,3,1.406,2022,1.8497,2,2),
(1064,51549,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,47,65.96,34.04,2.9466,4,2.666,2022,3.1516,4,3),
(1065,96415,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2017,79,55.70,21.52,2.6380,3,2.232,2021,2.6640,3,3),
(1066,51615,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,52,61.54,34.62,3.4216,4,2.947,2022,3.6105,4,4),
(1067,96004,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,131,48.09,51.91,1.2821,2,0.808,2022,0.5904,1,1),
(1068,96497,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,77,41.56,44.16,2.8030,3,2.200,2023,2.4848,3,3),
(1069,51613,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,79,36.71,29.11,3.0190,4,2.531,2023,2.0488,3,3),
(1070,96633,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,83,42.17,53.01,2.8240,3,2.764,2023,2.4779,3,3),
(1071,1350832,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,38,68.42,26.32,2.5060,3,1.500,2021,1.5820,2,2),
(1072,98760,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,34,14.71,85.29,0.4640,1,0.000,2023,NULL,NULL,1),
(1073,95405,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,44,45.45,40.91,1.1194,2,0.967,2022,1.6417,2,2),
(1074,1351681,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,37,70.27,27.03,1.8819,2,1.370,2022,2.0752,3,2),
(1075,51609,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,80,45.00,26.25,2.9280,3,2.232,2023,2.3183,3,3),
(1076,100010,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2017,86,83.72,16.28,2.5600,3,1.499,2021,2.0430,3,2),
(1077,51558,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,79,44.30,21.52,3.4470,4,3.326,2023,4.0345,5,4),
(1078,100356,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,58,81.03,18.97,2.4100,3,1.461,2021,NULL,NULL,2),
(1079,1353460,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,46,32.61,67.39,2.0570,3,1.552,2023,1.4055,2,2),
(1080,100358,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,68,39.71,60.29,2.8270,3,2.076,2021,2.7140,3,3),
(1081,89824,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,351,78.35,21.65,3.2315,4,2.579,2022,2.8681,3,3),
(1082,108694,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,270,79.63,20.37,2.7120,3,1.470,2023,2.4372,3,2),
(1083,80291,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,135,45.93,54.07,2.8015,3,2.206,2022,2.4449,3,3),
(1084,108443,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,41,41.46,56.10,2.3420,3,1.101,2023,1.8048,2,2),
(1085,66080,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,807,91.33,8.67,2.3908,3,1.778,2022,NULL,NULL,2),
(1086,108441,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,33,48.48,51.52,3.3010,4,2.703,2023,3.3721,4,3),
(1087,80358,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,62,74.19,24.19,2.4730,3,1.642,2023,1.6794,2,2),
(1088,80360,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,87,88.51,11.49,2.8240,3,2.145,2021,1.9960,3,3),
(1089,1322401,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,150,86.00,13.33,2.1950,3,1.102,2021,0.9240,1,2),
(1090,107564,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,77,66.23,33.77,1.6200,2,1.455,2023,1.0443,2,2),
(1091,65471,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,269,36.06,52.79,3.4236,4,2.795,2022,4.3180,5,3),
(1092,107088,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,57,70.18,29.82,1.9610,3,1.667,2022,2.2255,3,2),
(1093,80362,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,40,75.00,25.00,3.1520,4,1.807,2023,2.9224,3,2),
(1094,1322402,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,190,65.79,32.11,2.7710,3,2.411,2023,2.1160,3,3),
(1095,106052,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2016,49,57.14,40.82,3.0530,4,2.573,2021,2.4040,3,3),
(1096,1322403,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,124,54.03,41.13,2.4780,3,1.880,2023,2.0410,3,2),
(1097,106050,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2016,37,72.97,27.03,2.8230,3,1.199,2021,2.3090,3,2),
(1098,80922,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2017,85,41.18,41.18,1.8150,2,1.006,2021,1.5930,2,2),
(1099,63516,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,217,48.61,46.76,3.6565,4,2.315,2022,3.8273,4,3),
(1100,1322463,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,86,67.06,29.41,2.7550,3,2.430,2023,3.0791,4,3),
(1101,105575,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,70,58.57,31.43,3.2170,4,2.782,2023,3.4053,4,3),
(1102,81399,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,85,35.29,62.35,1.4535,2,1.344,2022,1.8962,2,2),
(1103,104684,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,52,65.38,34.62,2.4119,3,2.257,2022,2.8242,3,3),
(1104,1321984,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,42,30.95,40.48,2.9930,4,1.268,2023,2.2025,3,2),
(1105,63140,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,35,60.00,40.00,1.8488,2,1.489,2022,1.1947,2,2),
(1106,108710,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,45,44.44,53.33,3.0610,4,2.426,2023,3.3011,4,3),
(1107,112846,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2016,47,85.11,12.77,3.1630,4,2.625,2021,2.9590,4,3),
(1108,75096,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,372,79.84,19.89,3.6220,4,2.965,2023,3.6037,4,4),
(1109,1310955,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2019,88,71.59,12.50,2.5860,3,2.803,2021,2.1150,3,3),
(1110,112770,'ENGENHARIA SANITARIA E AMBIENTAL','Engenharia ambiental e sanitária','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,64,53.12,40.62,2.8140,3,2.604,2023,2.3107,3,3),
(1111,75099,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,359,83.29,16.43,2.6990,3,1.579,2023,2.1426,3,2),
(1112,1313190,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,35,40.00,17.14,2.4810,3,2.494,2023,2.1271,3,3),
(1113,111910,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,73,38.36,61.64,3.2020,4,3.003,2023,2.9256,3,4),
(1114,68918,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,232,72.41,25.43,2.0485,3,1.626,2022,1.8404,2,2),
(1115,110842,'GESTÃO AMBIENTAL','Gestão ambiental','Engenharia, produção e construção','Publica','Presencial','Tecnologico',2016,45,60.00,40.00,2.5470,3,2.344,2023,1.9473,3,3),
(1116,1313191,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2019,59,10.17,28.81,1.3921,2,1.269,2022,0.4620,1,2),
(1117,109543,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,110,70.91,29.09,2.2960,3,1.042,2023,NULL,NULL,2),
(1118,68114,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,100,60.00,24.00,2.6989,3,1.927,2022,2.1645,3,2),
(1119,79552,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,255,68.63,31.37,2.1620,3,1.867,2023,1.7523,2,2),
(1120,109307,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,106,63.21,36.79,2.6850,3,1.817,2022,1.9422,2,2),
(1121,68063,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,77,51.95,32.47,2.7800,3,1.203,2023,1.8800,2,2),
(1122,1321429,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,38,76.32,21.05,3.3080,4,1.823,2023,2.8609,3,2),
(1123,109282,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,31,54.84,45.16,1.4310,2,1.076,2023,1.2937,2,2),
(1124,79932,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,79,73.42,26.58,2.9860,4,2.218,2023,2.1226,3,3),
(1125,1321981,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,38,31.58,39.47,2.6060,3,1.265,2023,1.5046,2,2),
(1126,66893,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2019,39,51.28,48.72,2.3070,3,1.526,2021,2.4810,3,2),
(1127,108756,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,98,80.61,19.39,2.3845,3,0.954,2022,1.3406,2,2),
(1128,1321982,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,35,20.59,64.71,2.2360,3,1.595,2023,1.3290,2,2),
(1129,66381,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,96,87.50,8.33,3.5073,4,3.233,2022,3.4975,4,4),
(1130,100804,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,41,26.83,51.22,4.1610,5,4.409,2023,4.7327,5,5),
(1131,104530,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,55,76.36,23.64,1.6716,2,1.322,2022,0.9300,1,2),
(1132,1330496,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,31,83.87,9.68,3.5300,4,2.386,2023,2.8050,3,3),
(1133,59116,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,82,67.07,31.71,1.4660,2,0.827,2023,1.2061,2,1),
(1134,101119,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,307,72.64,27.36,2.5297,3,1.928,2022,2.2027,3,2),
(1135,88486,'ENGENHARIA DE PRODUÇÃO','Engenharia de produção','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,37,91.89,8.11,2.8520,3,2.221,2023,2.3310,3,3),
(1136,101098,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,40,57.50,42.50,3.5367,4,2.398,2022,2.9655,4,3),
(1137,101054,'LETRAS - LíNGUA E LITERATURAS DE LíNGUA INGLESA','Letras inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2016,31,35.48,54.84,3.2300,4,2.865,2021,2.8580,3,3),
(1138,1330683,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,37,86.49,13.51,1.9900,3,0.699,2021,0.0000,1,1),
(1139,88488,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,69,72.46,26.09,2.6960,3,1.233,2023,2.6529,3,2),
(1140,100928,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,30,60.00,36.67,3.1120,4,3.025,2023,2.7511,3,4),
(1141,100920,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,41,65.85,34.15,2.6070,3,1.142,2023,1.6500,2,2),
(1142,58512,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2019,76,78.95,5.26,2.6115,3,1.398,2022,2.3485,3,2),
(1143,1330831,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,69,72.46,26.09,2.0880,3,0.268,2023,1.4201,2,1),
(1144,89778,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,117,76.92,21.37,2.4910,3,1.331,2023,2.7149,3,2),
(1145,58508,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,108,65.74,17.59,2.6929,3,2.565,2022,2.5101,3,3),
(1146,100880,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,180,76.11,23.33,2.2827,3,1.100,2022,1.6480,2,2),
(1147,89780,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,120,78.33,20.83,3.0180,4,1.598,2023,3.0138,4,2),
(1148,101253,'ENGENHARIA AMBIENTAL','Engenharia ambiental','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,127,85.04,14.96,2.4720,3,1.288,2023,1.5502,2,2),
(1149,83372,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,52,59.62,40.38,2.5500,3,1.645,2023,2.8494,3,2),
(1150,62940,'COMUNICAÇÃO SOCIAL - PUBLICIDADE E PROPAGANDA','Publicidade e propaganda','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,39,12.82,30.77,3.2310,4,2.795,2022,2.3007,3,3),
(1151,1330471,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,46,89.13,4.35,2.9180,3,2.693,2023,2.5670,3,3),
(1152,104051,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,177,76.27,23.73,2.6810,3,1.394,2023,2.0509,3,2),
(1153,83374,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,85,77.65,22.35,2.6550,3,1.701,2023,1.8171,2,2),
(1154,62936,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,42,14.29,45.24,3.3613,4,3.420,2022,2.6401,3,4),
(1155,83376,'ENGENHARIA DE PRODUÇÃO','Engenharia de produção','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,56,89.29,10.71,2.6010,3,1.214,2023,2.1469,3,2),
(1156,62906,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,67,20.90,19.40,3.0050,4,2.181,2023,2.9290,3,3),
(1157,1330475,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,95,70.53,22.11,2.4670,3,1.607,2023,1.3775,2,2),
(1158,102021,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2016,84,64.29,35.71,4.4560,5,4.412,2023,4.5831,5,5),
(1159,84854,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,40,15.00,80.00,3.3416,4,3.601,2022,3.0681,4,4),
(1160,102019,'ENGENHARIA AMBIENTAL E SANITÁRIA','Engenharia ambiental','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,51,90.20,9.80,3.3450,4,2.586,2023,2.1567,3,3),
(1161,101749,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,97,56.70,43.30,2.8570,3,2.474,2023,2.8461,3,3),
(1162,1330494,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,73,89.04,8.22,2.0030,3,1.168,2023,0.8558,1,2),
(1163,87358,'GASTRONOMIA','Gastronomia','Serviços','Privada','Presencial','Tecnologico',2017,261,67.05,32.95,1.8755,2,0.442,2022,NULL,NULL,1),
(1164,1127343,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,107,39.25,31.78,3.0776,4,2.903,2022,3.3359,4,3),
(1165,90361,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2019,33,60.61,15.15,2.2480,3,2.389,2021,2.2680,3,3),
(1166,1128077,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2016,92,45.65,18.48,2.4810,3,1.844,2021,2.2840,3,2),
(1167,44,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,60,25.00,63.33,3.5070,4,4.191,2023,3.4881,4,5),
(1168,1270062,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,53,52.83,45.28,2.1750,3,1.888,2023,0.7438,1,2),
(1169,112846,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2019,36,8.33,11.11,3.1630,4,2.625,2021,2.9590,4,3),
(1170,1122943,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,119,59.66,36.13,3.2270,4,2.036,2023,2.0737,3,3),
(1171,16264,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2017,84,48.81,42.86,2.2280,3,1.340,2021,1.7220,2,2),
(1172,1270057,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,57,59.65,33.33,2.6350,3,2.089,2023,1.9379,2,3),
(1173,16265,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2017,87,37.93,52.87,2.1710,3,1.355,2021,1.5360,2,2),
(1174,112770,'ENGENHARIA SANITARIA E AMBIENTAL','Engenharia ambiental e sanitária','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,64,18.75,26.56,2.8140,3,2.604,2023,2.3107,3,3),
(1175,1127343,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,100,34.00,15.00,3.0776,4,2.903,2022,3.3359,4,3),
(1176,16266,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2017,79,60.76,29.11,2.7230,3,1.465,2021,2.6150,3,2),
(1177,1128077,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2019,69,18.84,10.14,2.4810,3,1.844,2021,2.2840,3,2),
(1178,111910,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,34,26.47,64.71,3.2020,4,3.003,2023,2.9256,3,4),
(1179,1270010,'ENGENHARIA QUÍMICA','Engenharia química','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,56,46.43,51.79,2.4290,3,2.399,2023,1.5565,2,3),
(1180,16267,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,80,56.25,26.25,2.1360,3,0.866,2021,1.6900,2,1),
(1181,110842,'GESTÃO AMBIENTAL','Gestão ambiental','Engenharia, produção e construção','Publica','Presencial','Tecnologico',2019,31,35.48,25.81,2.5470,3,2.344,2023,1.9473,3,3),
(1182,16268,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2017,62,64.52,27.42,2.4630,3,1.484,2021,2.3580,3,2),
(1183,1132433,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,39,20.51,79.49,2.0020,3,1.460,2023,1.9380,2,2),
(1184,1269970,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2016,80,81.25,8.75,2.1540,3,1.121,2021,2.2300,3,2),
(1185,16269,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,72,37.50,41.67,2.8870,3,2.159,2021,2.7160,3,3),
(1186,1269969,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2016,43,86.05,11.63,2.4150,3,1.401,2021,2.4000,3,2),
(1187,109543,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,75,77.33,21.33,2.2960,3,1.042,2023,NULL,NULL,2),
(1188,1134353,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,33,27.27,69.70,3.0640,4,2.836,2023,3.3057,4,3),
(1189,16270,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2017,81,55.56,33.33,2.4690,3,2.175,2021,2.4550,3,3),
(1190,109307,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,99,83.84,14.14,2.6850,3,1.817,2022,1.9422,2,2),
(1191,1122942,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,72,68.06,29.17,4.1230,5,3.668,2021,3.9700,5,4),
(1192,1135688,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,45,66.67,31.11,1.8390,2,1.000,2023,1.9193,2,2),
(1193,1279788,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2016,61,60.66,39.34,2.6110,3,1.511,2023,NULL,NULL,2),
(1194,1284137,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,219,82.19,17.35,1.9000,2,0.674,2023,1.2707,2,1),
(1195,25,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2017,41,29.27,39.02,3.3000,4,2.436,2021,3.0120,4,3),
(1196,1108440,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2019,41,82.93,17.07,3.0370,4,1.764,2021,2.7390,3,2),
(1197,1284133,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,150,78.67,20.67,2.4770,3,1.800,2023,1.8513,2,2),
(1198,26,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2017,80,80.00,18.75,2.8750,3,2.055,2021,2.1040,3,3),
(1199,1111393,'SECRETARIADO EXECUTIVO','Secretariado','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,74,14.86,18.92,1.6764,2,1.848,2022,0.4991,1,2),
(1200,27,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2017,112,77.68,14.29,2.6910,3,2.024,2021,1.2910,2,3),
(1201,1283961,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2016,50,32.00,68.00,1.7326,2,0.298,2022,NULL,NULL,1),
(1202,1116939,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,96,79.17,19.79,1.6690,2,0.537,2023,NULL,NULL,1),
(1203,29,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,40,62.50,37.50,3.2630,4,2.751,2021,2.4700,3,3),
(1204,1280520,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,87,77.01,22.99,2.7600,3,0.362,2023,2.2731,3,1),
(1205,113559,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,72,38.89,25.00,2.8060,3,2.075,2023,1.8204,2,3),
(1206,1280519,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,56,89.29,10.71,2.1980,3,0.258,2023,NULL,NULL,1),
(1207,32,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,52,36.54,32.69,2.5390,3,1.686,2021,1.7520,2,2),
(1208,113555,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,68,45.59,13.24,2.9682,4,2.506,2022,3.0174,4,3),
(1209,1120548,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,83,83.13,15.66,3.3163,4,1.864,2022,2.5916,3,2),
(1210,34,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2017,60,56.67,21.67,2.1800,3,1.409,2021,1.2970,2,2),
(1211,36,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2017,52,38.46,53.85,3.0370,4,2.695,2021,2.4440,3,3),
(1212,1121415,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,38,31.58,7.89,2.4800,3,2.694,2023,2.0129,3,3),
(1213,37,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,61,26.23,72.13,3.1090,4,3.599,2023,2.0795,3,4),
(1214,1268136,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,81,39.51,54.32,2.4720,3,2.072,2023,2.9001,3,3),
(1215,1160215,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,43,67.44,6.98,1.9400,2,0.760,2023,1.9987,3,1),
(1216,16819,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,172,85.47,14.53,3.0510,4,2.640,2021,2.6950,3,3),
(1217,16824,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,545,82.57,16.88,2.0710,3,1.417,2022,1.1927,2,2),
(1218,107088,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,57,63.16,29.82,1.9610,3,1.667,2022,2.2255,3,2),
(1219,1258890,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,39,87.18,12.82,2.8730,3,0.587,2023,2.5876,3,1),
(1220,16825,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,470,82.13,17.87,2.5830,3,1.721,2023,1.7672,2,2),
(1221,106052,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2019,43,9.30,20.93,3.0530,4,2.573,2021,2.4040,3,3),
(1222,1258779,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,69,62.32,37.68,2.0750,3,1.004,2023,2.5969,3,2),
(1223,16826,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,187,69.52,30.48,2.2910,3,1.362,2023,1.3638,2,2),
(1224,106050,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2019,37,27.03,18.92,2.8230,3,1.199,2021,2.3090,3,2),
(1225,16827,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,159,59.12,40.88,2.5500,3,1.471,2023,1.6626,2,2),
(1226,16829,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,304,84.21,15.79,2.9769,4,2.303,2022,2.7083,3,3),
(1227,1257973,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,68,44.12,55.88,1.6280,2,1.424,2023,0.9546,2,2),
(1228,16830,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,309,82.52,17.48,2.7471,3,1.815,2022,2.4941,3,2),
(1229,105575,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,85,24.71,25.88,3.2170,4,2.782,2023,3.4053,4,3),
(1230,1257972,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,91,48.35,49.45,1.9150,2,1.017,2023,1.1169,2,2),
(1231,16834,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,144,70.14,29.17,2.2030,3,1.755,2023,1.2878,2,2),
(1232,107564,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,77,71.43,28.57,1.6200,2,1.455,2023,1.0443,2,2),
(1233,16271,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2017,79,43.04,55.70,2.7030,3,2.282,2021,2.2960,3,3),
(1234,1266092,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,92,92.39,7.61,2.2850,3,1.199,2023,1.7751,2,2),
(1235,16272,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2017,97,92.78,5.15,2.4070,3,1.684,2021,2.5220,3,2),
(1236,16273,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2017,73,68.49,21.92,2.0970,3,1.244,2021,2.2300,3,2),
(1237,1265414,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,80,36.25,55.00,2.9716,4,2.995,2022,3.1055,4,4),
(1238,16274,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2017,41,63.41,24.39,2.3570,3,0.765,2021,1.9050,2,1),
(1239,108710,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,38,18.42,73.68,3.0610,4,2.426,2023,3.3011,4,3),
(1240,1265365,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,94,26.60,65.96,2.7505,3,2.650,2022,2.6744,3,3),
(1241,16275,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,78,73.08,24.36,2.6570,3,1.746,2021,2.5590,3,2),
(1242,1265319,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,93,32.26,65.59,2.0500,3,2.326,2022,1.8632,2,3),
(1243,108694,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,110,75.45,24.55,2.7120,3,1.470,2023,2.4372,3,2),
(1244,1261972,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,60,11.67,88.33,2.6600,3,3.434,2023,1.9027,2,4),
(1245,16276,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,70,38.57,31.43,2.7150,3,2.224,2021,2.6480,3,3),
(1246,1154375,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,36,47.22,25.00,1.9060,2,2.016,2023,1.8658,2,3),
(1247,16280,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,89,20.22,62.92,2.2529,3,2.683,2022,1.8506,2,3),
(1248,1261971,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,40,27.50,67.50,3.3260,4,4.416,2023,3.3481,4,5),
(1249,108443,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,65,33.85,63.08,2.3420,3,1.101,2023,1.8048,2,2),
(1250,16281,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,78,56.41,33.33,2.6959,3,2.369,2022,2.4288,3,3),
(1251,108441,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,54,61.11,35.19,3.3010,4,2.703,2023,3.3721,4,3),
(1252,1260665,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,48,29.17,70.83,3.0690,4,1.547,2021,3.2880,4,2),
(1253,16817,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,1436,83.07,16.79,2.1387,3,1.550,2022,1.5667,2,2),
(1254,115023,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,31,25.81,0.00,2.1110,3,1.216,2023,2.1075,3,2),
(1255,24,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,50,52.00,26.00,2.9150,3,2.424,2021,3.0670,4,3),
(1256,5001033,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,154,20.13,79.87,3.2700,4,2.978,2023,3.2416,4,4),
(1257,123052,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,75,21.33,22.67,3.0518,4,1.590,2022,2.5343,3,2),
(1258,1322403,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,86,65.12,34.88,2.4780,3,1.880,2023,2.0410,3,2),
(1259,5001171,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2016,59,50.85,49.15,2.8582,3,2.650,2022,2.7859,3,3),
(1260,1322402,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,122,69.67,29.51,2.7710,3,2.411,2023,2.1160,3,3),
(1261,123055,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,58,15.52,20.69,3.1590,4,3.171,2023,3.1264,4,4),
(1262,1322401,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,39,79.49,20.51,2.1950,3,1.102,2021,0.9240,1,2),
(1263,5001172,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2016,50,84.00,14.00,2.6660,3,1.985,2021,2.5460,3,3),
(1264,123389,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,99,82.83,15.15,3.5186,4,2.917,2022,3.8598,4,3),
(1265,118380,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,269,82.16,17.47,2.8110,3,1.388,2021,2.3080,3,2),
(1266,123427,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,65,10.77,70.77,3.1982,4,3.708,2022,2.9815,4,4),
(1267,1321982,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,48,35.42,60.42,2.2360,3,1.595,2023,1.3290,2,2),
(1268,5001274,'LOGÍSTICA','Logística','Negócios, administração e direito','Privada','Presencial','Tecnologico',2016,61,52.46,42.62,2.4533,3,1.781,2022,2.0435,3,2),
(1269,118002,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2019,52,23.08,26.92,3.0430,4,2.983,2021,1.7960,2,4),
(1270,1321429,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,48,87.50,12.50,3.3080,4,1.823,2023,2.8609,3,2),
(1271,123620,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,91,23.08,24.18,2.9970,4,2.771,2023,1.9984,3,3),
(1272,5001296,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2016,44,84.09,15.91,1.9830,3,2.111,2021,1.0260,2,3),
(1273,1313294,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,38,76.32,21.05,1.8580,2,1.341,2023,1.3920,2,2),
(1274,117604,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,45,73.33,26.67,1.7198,2,0.285,2022,1.5496,2,1),
(1275,1053580,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,38,78.95,21.05,2.7846,3,1.501,2022,1.8664,2,2),
(1276,1313191,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2016,72,44.44,41.67,1.3921,2,1.269,2022,0.4620,1,2),
(1277,1,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,95,12.63,81.05,3.8894,4,4.788,2022,3.3165,4,5),
(1278,1313190,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,33,39.39,54.55,2.4810,3,2.494,2023,2.1271,3,3),
(1279,1322463,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,87,43.68,56.32,2.7550,3,2.430,2023,3.0791,4,3),
(1280,117488,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,34,64.71,32.35,1.7916,2,1.346,2022,2.1394,3,2),
(1281,1342612,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2016,38,63.16,21.05,2.6630,3,3.528,2021,2.8440,3,4),
(1282,122150,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2019,31,51.61,29.03,1.9670,3,1.762,2021,1.7810,2,2),
(1283,1342448,'GESTÃO PÚBLICA','Gestão pública','Negócios, administração e direito','Publica','Presencial','Tecnologico',2016,59,32.20,67.80,2.9185,3,2.983,2022,3.5316,4,4),
(1284,119816,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,37,64.86,32.43,3.3740,4,3.013,2022,4.1901,5,4),
(1285,122749,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,48,27.08,12.50,2.6090,3,2.465,2023,2.6489,3,3),
(1286,1342445,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,36,38.89,61.11,2.1879,3,2.437,2022,2.4227,3,3),
(1287,118888,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,76,78.95,18.42,3.6180,4,3.041,2023,3.6531,4,4),
(1288,1341062,'GASTRONOMIA','Gastronomia','Serviços','Privada','Presencial','Tecnologico',2016,34,38.24,61.76,3.1965,4,3.001,2022,2.1427,3,4),
(1289,1330683,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,30,93.33,6.67,1.9900,3,0.699,2021,0.0000,1,1),
(1290,118852,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,80,76.25,22.50,1.9650,3,0.782,2023,1.5385,2,1),
(1291,1330475,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,74,58.11,41.89,2.4670,3,1.607,2023,1.3775,2,2),
(1292,5000750,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,63,47.62,52.38,1.9664,3,2.007,2022,2.8651,3,3),
(1293,5000953,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,153,44.44,54.25,1.6395,2,1.645,2022,1.9747,3,2),
(1294,118764,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,57,31.58,63.16,1.5370,2,0.712,2023,0.7657,1,1),
(1295,1284292,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,48,27.08,72.92,2.1310,3,1.255,2023,2.0558,3,2),
(1296,1310955,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2016,40,75.00,17.50,2.5860,3,2.803,2021,2.1150,3,3),
(1297,2,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,113,70.80,26.55,2.5657,3,1.772,2022,1.2492,2,2),
(1298,1299960,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,165,86.67,13.33,2.0440,3,1.155,2023,1.0624,2,2),
(1299,1103711,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2019,76,39.47,11.84,3.4390,4,2.651,2021,3.1990,4,3),
(1300,116648,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,35,11.43,68.57,3.2310,4,2.647,2023,1.8811,2,3),
(1301,1299950,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,178,73.03,26.97,2.3631,3,1.375,2022,2.1006,3,2),
(1302,16,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,83,24.10,42.17,4.2420,5,4.180,2023,4.4036,5,5),
(1303,1103712,'QUÍMICA','Química','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2019,66,25.76,18.18,2.5590,3,1.033,2021,1.9800,3,2),
(1304,1285517,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2016,41,53.66,43.90,3.3740,4,3.116,2021,2.3300,3,4),
(1305,17,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,59,28.81,62.71,3.7840,4,3.846,2023,3.5623,4,4),
(1306,116560,'GEOGRAFIA','Geografia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,48,25.00,14.58,2.8730,3,1.282,2021,1.7780,2,2),
(1307,1103742,'CIÊNCIAS SOCIAIS','Ciências sociais','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,32,18.75,12.50,2.8290,3,1.973,2021,2.1640,3,3),
(1308,1284937,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,42,57.14,42.86,2.4150,3,1.077,2023,2.9064,3,2),
(1309,19,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2017,55,70.91,25.45,3.3830,4,2.807,2021,2.3240,3,3),
(1310,1284880,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,75,42.67,57.33,1.6010,2,1.117,2023,0.8721,1,2),
(1311,20,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,63,9.52,60.32,3.4700,4,3.985,2023,3.0226,4,5),
(1312,116428,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,97,85.57,14.43,1.8070,2,0.493,2023,0.8619,1,1),
(1313,21,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,96,47.92,25.00,2.1204,3,1.731,2022,1.0823,2,2),
(1314,1106707,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,402,68.41,30.35,2.0790,3,1.404,2023,0.8823,1,2),
(1315,23,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2017,54,27.78,53.70,3.4810,4,3.102,2021,2.6060,3,4),
(1316,115058,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2019,272,75.74,24.26,3.4750,4,2.322,2023,2.8534,3,3),
(1317,1103710,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2019,108,15.74,23.15,3.2530,4,2.717,2021,2.6210,3,3),
(1318,1069962,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,51,45.10,52.94,2.2790,3,1.179,2023,2.4596,3,2),
(1319,116662,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,52,13.46,40.38,2.9900,4,2.834,2023,1.7229,2,3),
(1320,1299961,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,53,88.68,11.32,2.9870,4,1.021,2023,2.6389,3,2),
(1321,1072168,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,44,29.55,54.55,2.6950,3,1.881,2023,2.7870,3,2),
(1322,3,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,55,49.09,43.64,3.4290,4,4.352,2023,4.2072,5,5),
(1323,1305051,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,60,20.00,80.00,1.6615,2,0.490,2022,1.1612,2,1),
(1324,117004,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,86,10.47,47.67,3.1972,4,3.628,2022,2.6472,3,4),
(1325,1305050,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,60,26.67,73.33,1.2560,2,0.538,2023,0.5086,1,1),
(1326,6,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2017,99,39.39,57.58,3.9550,4,4.803,2021,4.0850,5,5),
(1327,1305048,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,45,57.78,42.22,2.5850,3,1.539,2023,2.3623,3,2),
(1328,7,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,81,67.90,24.69,3.5840,4,3.421,2022,3.2561,4,4),
(1329,8,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,86,37.21,58.14,3.1976,4,3.370,2022,2.5510,3,4),
(1330,1103426,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,55,20.00,25.45,2.9360,3,2.433,2021,1.8100,2,3),
(1331,116720,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,57,12.28,33.33,3.7570,4,3.105,2023,3.3625,4,4),
(1332,9,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,87,36.78,47.13,3.4820,4,3.827,2023,3.3161,4,4),
(1333,1303435,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,147,75.51,24.49,1.9003,2,0.816,2022,1.2589,2,1),
(1334,116708,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,36,36.11,13.89,3.4547,4,3.037,2022,2.9902,4,4),
(1335,1300369,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,34,70.59,29.41,1.7030,2,1.024,2023,NULL,NULL,2),
(1336,1103708,'FILOSOFIA','Filosofia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,37,18.92,8.11,2.9800,4,1.998,2021,2.1440,3,3),
(1337,10,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,82,57.32,32.93,3.0640,4,2.774,2023,2.6578,3,3),
(1338,12,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,89,5.62,91.01,2.7920,3,3.492,2023,1.9335,2,4),
(1339,116690,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,43,16.28,18.60,2.5420,3,1.731,2021,1.9560,3,2),
(1340,1103709,'FILOSOFIA','Filosofia','Artes e humanidades','Publica','Presencial','Bacharelado',2019,34,20.59,14.71,3.2690,4,3.220,2021,2.1620,3,4),
(1341,13,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,125,52.80,42.40,3.4073,4,3.726,2022,2.7725,3,4),
(1342,89778,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,159,82.39,17.61,2.4910,3,1.331,2023,2.7149,3,2),
(1343,1182802,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,38,28.95,71.05,2.2540,3,1.484,2023,2.4116,3,2),
(1344,1204533,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,121,34.71,58.68,2.8400,3,2.351,2023,2.3363,3,3),
(1345,1182767,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,59,30.51,69.49,2.9160,3,2.718,2023,2.2982,3,3),
(1346,1204534,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,76,48.68,35.53,2.3800,3,2.377,2023,1.5804,2,3),
(1347,21442,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,44,54.55,40.91,2.7540,3,2.090,2023,1.8970,2,3),
(1348,96633,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,84,52.38,28.57,2.8240,3,2.764,2023,2.4779,3,3),
(1349,1204536,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2019,32,71.88,28.12,2.8420,3,2.208,2021,2.3520,3,3),
(1350,21552,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,45,86.67,13.33,1.7087,2,0.034,2022,NULL,NULL,1),
(1351,1171800,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,90,56.18,41.57,2.3680,3,1.826,2023,NULL,NULL,2),
(1352,1204537,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,84,55.95,36.90,2.8030,3,2.381,2023,2.5131,3,3),
(1353,96497,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,81,27.16,48.15,2.8030,3,2.200,2023,2.4848,3,3),
(1354,1168551,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,54,57.41,38.89,3.2150,4,3.185,2021,2.2770,3,4),
(1355,96415,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2019,81,45.68,19.75,2.6380,3,2.232,2021,2.6640,3,3),
(1356,1205640,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,76,78.95,17.11,2.6850,3,1.773,2023,2.1630,3,2),
(1357,1168453,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,32,62.50,28.12,2.0260,3,2.039,2023,1.4769,2,3),
(1358,96134,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,81,83.95,16.05,3.6321,4,3.747,2022,3.2584,4,4),
(1359,20757,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,350,73.07,26.07,2.9345,3,1.990,2022,3.0966,4,3),
(1360,100772,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,81,17.28,12.35,2.8500,3,2.188,2023,2.9070,3,3),
(1361,1192255,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,79,59.49,35.44,3.1210,4,2.553,2023,2.3668,3,3),
(1362,1185942,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,45,42.22,53.33,2.2223,3,1.418,2022,3.4673,4,2),
(1363,20144,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,97,50.52,49.48,3.6630,4,3.422,2023,2.9431,3,4),
(1364,1185902,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,78,56.41,42.31,2.2162,3,1.647,2022,1.5711,2,2),
(1365,100770,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,35,11.43,42.86,3.5340,4,3.003,2023,2.9029,3,4),
(1366,1192256,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,80,56.96,41.77,3.9940,5,4.105,2023,3.4549,4,5),
(1367,1185850,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,58,34.48,65.52,1.1040,2,1.096,2023,0.9567,2,2),
(1368,1192257,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,61,65.57,34.43,3.9100,4,2.808,2023,4.0056,5,3),
(1369,100768,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,46,26.09,10.87,2.6660,3,1.957,2023,2.2493,3,3),
(1370,20472,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,120,41.67,58.33,2.3700,3,1.649,2021,2.4980,3,2),
(1371,100763,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,72,6.94,40.28,3.0800,4,3.358,2023,3.1726,4,4),
(1372,1184754,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,153,26.80,72.55,2.2450,3,1.810,2023,2.0185,3,2),
(1373,1183196,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,134,79.85,20.15,2.2570,3,1.513,2023,1.7704,2,2),
(1374,100358,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2019,72,48.61,50.00,2.8270,3,2.076,2021,2.7140,3,3),
(1375,20474,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,42,45.24,38.10,1.9711,3,1.464,2022,1.4744,2,2),
(1376,1188463,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,79,59.49,36.71,2.4800,3,1.787,2023,1.8872,2,2),
(1377,1205926,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,37,43.24,54.05,2.2050,3,1.215,2023,1.4051,2,2),
(1378,43037,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2017,66,65.15,27.27,2.5450,3,1.227,2021,2.4430,3,2),
(1379,91391,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,335,51.04,47.76,2.6690,3,2.310,2022,2.8987,3,3),
(1380,1207267,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,57,36.84,61.40,2.4870,3,1.158,2023,2.1369,3,2),
(1381,43044,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2017,70,70.00,15.71,2.0600,3,1.171,2021,2.6150,3,2),
(1382,1207269,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2019,39,84.62,15.38,2.6560,3,1.869,2021,2.0830,3,2),
(1383,91369,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,88,20.45,45.45,2.0594,3,1.210,2022,1.8240,2,2),
(1384,44461,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,83,54.22,24.10,3.0520,4,2.339,2022,3.0818,4,3),
(1385,1207552,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,61,67.21,29.51,2.0950,3,1.635,2023,2.0340,3,2),
(1386,46972,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2017,85,77.65,22.35,1.6670,2,1.111,2021,1.3650,2,2),
(1387,1135690,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,37,94.59,5.41,1.6300,2,0.358,2023,1.3913,2,1),
(1388,91360,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,47,41.30,39.13,2.5180,3,1.046,2023,1.3243,2,2),
(1389,1207554,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,84,50.00,46.43,1.9160,2,0.227,2023,1.4397,2,1),
(1390,1135688,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,207,92.27,7.73,1.8390,2,1.000,2023,1.9193,2,2),
(1391,47922,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,111,73.87,26.13,3.0141,4,1.925,2022,2.3408,3,2),
(1392,1134353,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,38,31.58,68.42,3.0640,4,2.836,2023,3.3057,4,3),
(1393,1257748,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,39,41.03,56.41,3.2550,4,2.685,2023,3.0050,4,3),
(1394,1132433,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,62,56.45,43.55,2.0020,3,1.460,2023,1.9380,2,2),
(1395,1257749,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,36,55.56,38.89,3.1000,4,2.181,2021,3.1790,4,3),
(1396,1128666,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2016,66,56.06,43.94,2.6550,3,2.158,2021,2.3810,3,3),
(1397,48299,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,73,46.58,34.25,1.9702,3,1.894,2022,1.5406,2,2),
(1398,48302,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,77,25.97,54.55,2.4333,3,2.695,2022,2.4556,3,3),
(1399,1207265,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,100,49.00,44.00,2.3560,3,1.240,2023,1.6329,2,2),
(1400,96004,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,188,51.87,44.92,1.2821,2,0.808,2022,0.5904,1,1),
(1401,92153,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,183,43.17,54.64,2.5545,3,1.406,2022,1.8497,2,2),
(1402,41690,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,43,74.42,23.26,2.8850,3,2.355,2021,2.1300,3,3),
(1403,1166445,'AGRONEGÓCIO','Gestão do agronegócio','Negócios, administração e direito','Privada','Presencial','Tecnologico',2016,52,73.08,26.92,2.5350,3,3.213,2023,2.1585,3,4),
(1404,25949,'LETRAS - LÍNGUA PORTUGUESA E LITERATURAS DE LíNGUA PORTUGUESA','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2017,68,55.88,41.18,2.8810,3,2.724,2021,1.9680,3,3),
(1405,1161561,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,47,70.21,29.79,2.4839,3,1.487,2022,1.6460,2,2),
(1406,1160425,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,36,40.00,42.86,2.1360,3,1.933,2021,2.2220,3,2),
(1407,1160424,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2016,37,78.38,10.81,1.9840,3,1.971,2021,1.9640,3,3),
(1408,95405,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,31,41.94,25.81,1.1194,2,0.967,2022,1.6417,2,2),
(1409,1160216,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,38,71.05,23.68,1.4070,2,0.643,2023,0.4469,1,1),
(1410,1160215,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,32,40.62,53.12,1.9400,2,0.760,2023,1.9987,3,1),
(1411,1207123,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,45,77.78,17.78,2.3990,3,1.549,2022,1.5700,2,2),
(1412,1154375,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,39,48.72,38.46,1.9060,2,2.016,2023,1.8658,2,3),
(1413,104684,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,48,77.08,18.75,2.4119,3,2.257,2022,2.8242,3,3),
(1414,1188508,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,61,70.49,13.11,1.9490,3,1.715,2023,1.3649,2,2),
(1415,17052,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,184,63.04,26.63,3.0568,4,2.491,2022,2.9790,4,3),
(1416,101749,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,63,42.86,57.14,2.8570,3,2.474,2023,2.8461,3,3),
(1417,1204537,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,178,46.63,52.81,2.8030,3,2.381,2023,2.5131,3,3),
(1418,1183196,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,71,80.28,18.31,2.2570,3,1.513,2023,1.7704,2,2),
(1419,17053,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,93,52.69,35.48,3.0555,4,2.672,2022,2.7769,3,3),
(1420,1184754,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,88,25.00,73.86,2.2450,3,1.810,2023,2.0185,3,2),
(1421,1204534,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,84,52.38,46.43,2.3800,3,2.377,2023,1.5804,2,3),
(1422,17056,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2017,75,48.00,34.67,2.5210,3,1.701,2021,2.0410,3,2),
(1423,1185732,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,75,73.33,13.33,2.4730,3,3.017,2021,1.8410,2,4),
(1424,1204533,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,53,33.96,66.04,2.8400,3,2.351,2023,2.3363,3,3),
(1425,17313,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,114,57.02,42.98,1.4885,2,1.093,2022,1.5671,2,2),
(1426,101119,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,180,77.22,20.56,2.5297,3,1.928,2022,2.2027,3,2),
(1427,1204474,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,49,30.61,69.39,1.8070,2,0.915,2023,1.3100,2,1),
(1428,1185902,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,85,61.18,22.35,2.2162,3,1.647,2022,1.5711,2,2),
(1429,1185942,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,58,31.03,62.07,2.2223,3,1.418,2022,3.4673,4,2),
(1430,17594,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,663,48.42,50.83,3.4163,4,2.721,2022,3.2756,4,3),
(1431,1182802,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,53,13.21,73.58,2.2540,3,1.484,2023,2.4116,3,2),
(1432,16859,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,189,79.89,20.11,2.3188,3,0.741,2022,1.5061,2,1),
(1433,16860,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,623,74.64,24.88,2.1231,3,1.450,2022,1.6690,2,2),
(1434,104530,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,33,75.76,24.24,1.6716,2,1.322,2022,0.9300,1,2),
(1435,1168453,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,34,29.41,26.47,2.0260,3,2.039,2023,1.4769,2,3),
(1436,16863,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,157,17.20,82.80,2.3930,3,0.975,2021,2.2530,3,2),
(1437,104051,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,156,83.97,15.38,2.6810,3,1.394,2023,2.0509,3,2),
(1438,1168551,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,56,57.14,16.07,3.2150,4,3.185,2021,2.2770,3,4),
(1439,16868,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,94,37.23,60.64,1.7597,2,1.112,2022,0.5776,1,2),
(1440,16945,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,96,67.71,31.25,3.8245,4,3.284,2022,3.4286,4,4),
(1441,102021,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2019,83,69.88,30.12,4.4560,5,4.412,2023,4.5831,5,5),
(1442,1182266,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,90,76.67,22.22,2.2123,3,0.615,2022,1.4714,2,1),
(1443,1205926,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,44,97.73,2.27,2.2050,3,1.215,2023,1.4051,2,2),
(1444,16946,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,50,72.00,28.00,3.5303,4,2.914,2022,2.7639,3,3),
(1445,1205656,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,49,97.96,2.04,2.5210,3,1.642,2023,1.7652,2,2),
(1446,1182767,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,45,55.56,42.22,2.9160,3,2.718,2023,2.2982,3,3),
(1447,1205640,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,95,82.11,17.89,2.6850,3,1.773,2023,2.1630,3,2),
(1448,1188463,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,70,67.14,10.00,2.4800,3,1.787,2023,1.8872,2,2),
(1449,1199602,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,52,30.77,67.31,1.7421,2,0.961,2022,1.6090,2,2),
(1450,1189695,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,72,68.06,31.94,2.6540,3,2.021,2023,1.9847,3,3),
(1451,100802,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,65,21.54,9.23,2.6010,3,2.434,2023,2.2270,3,3),
(1452,1188880,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2019,38,34.21,18.42,3.0390,4,2.996,2021,2.6440,3,4),
(1453,1188880,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2016,36,44.44,41.67,3.0390,4,2.996,2021,2.6440,3,4),
(1454,19759,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,45,73.33,26.67,2.9060,3,1.545,2021,2.1000,3,2),
(1455,1189695,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,102,81.37,16.67,2.6540,3,2.021,2023,1.9847,3,3),
(1456,1188849,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,65,33.85,66.15,2.0040,3,2.847,2023,1.6363,2,3),
(1457,1189782,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,120,78.33,20.00,2.4190,3,1.176,2023,1.6133,2,2),
(1458,1188620,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2016,38,67.57,29.73,1.7610,2,1.700,2021,1.8940,2,2),
(1459,100778,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,90,8.89,28.89,2.8220,3,2.822,2023,1.7005,2,3),
(1460,1188616,'COMÉRCIO EXTERIOR','Comércio exterior','Negócios, administração e direito','Publica','Presencial','Tecnologico',2016,34,52.94,47.06,1.0009,2,0.202,2022,0.0000,1,1),
(1461,1189857,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,83,37.35,32.53,2.5340,3,2.380,2023,2.4218,3,3),
(1462,1188550,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2016,33,54.55,36.36,2.8220,3,2.251,2021,3.8510,4,3),
(1463,118764,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,35,40.00,60.00,1.5370,2,0.712,2023,0.7657,1,1),
(1464,1190666,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,44,31.82,68.18,2.1510,3,0.574,2023,1.7712,2,1),
(1465,19934,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,65,64.62,35.38,2.6368,3,1.517,2022,1.5683,2,2),
(1466,1190677,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,32,78.12,21.88,1.1720,2,0.381,2023,1.7018,2,1),
(1467,1188509,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,44,84.09,0.00,2.2970,3,1.572,2023,2.0815,3,2),
(1468,20016,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,115,39.13,60.87,3.7000,4,2.954,2023,3.2672,4,4),
(1469,1191488,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2019,39,35.90,64.10,3.8250,4,3.382,2023,4.6443,5,4),
(1470,19730,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,539,79.78,20.22,2.2080,3,2.069,2022,NULL,NULL,3),
(1471,18281,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,60,66.67,33.33,1.6464,2,1.657,2022,1.2596,2,2),
(1472,1189782,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,159,81.13,18.87,2.4190,3,1.176,2023,1.6133,2,2),
(1473,18354,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2017,44,79.55,18.18,2.8950,3,1.924,2021,2.3470,3,2),
(1474,1188508,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,39,41.03,7.69,1.9490,3,1.715,2023,1.3649,2,2),
(1475,1192257,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,54,44.44,55.56,3.9100,4,2.808,2023,4.0056,5,3),
(1476,18471,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,270,86.67,12.22,2.2890,3,1.523,2023,1.4595,2,2),
(1477,1188509,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,58,39.66,0.00,2.2970,3,1.572,2023,2.0815,3,2),
(1478,1192256,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,71,30.99,69.01,3.9940,5,4.105,2023,3.4549,4,5),
(1479,1192255,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,120,67.50,31.67,3.1210,4,2.553,2023,2.3668,3,3),
(1480,18472,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,136,44.85,54.41,2.4880,3,2.439,2023,2.8389,3,3),
(1481,18473,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,529,80.53,19.28,2.4090,3,1.612,2023,2.0737,3,2),
(1482,1191488,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2016,38,42.11,57.89,3.8250,4,3.382,2023,4.6443,5,4),
(1483,19592,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,34,52.94,47.06,1.2208,2,0.807,2022,0.7976,1,1),
(1484,1188550,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2019,39,35.90,7.69,2.8220,3,2.251,2021,3.8510,4,3),
(1485,1190677,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,56,80.36,19.64,1.1720,2,0.381,2023,1.7018,2,1),
(1486,1190666,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,100,58.00,42.00,2.1510,3,0.574,2023,1.7712,2,1),
(1487,19594,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,43,46.51,53.49,3.8750,4,2.545,2021,4.1430,5,3),
(1488,1188616,'COMÉRCIO EXTERIOR','Comércio exterior','Negócios, administração e direito','Publica','Presencial','Tecnologico',2019,34,70.59,29.41,1.0009,2,0.202,2022,0.0000,1,1),
(1489,100880,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,162,75.31,21.60,2.2827,3,1.100,2022,1.6480,2,2),
(1490,1190506,'AGRONEGÓCIO','Gestão do agronegócio','Negócios, administração e direito','Privada','Presencial','Tecnologico',2016,37,35.14,64.86,0.9440,1,0.376,2023,0.0000,1,1),
(1491,19595,'SISTEMA DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2017,30,73.33,26.67,4.5090,5,3.651,2021,5.0000,5,4),
(1492,1188620,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2019,37,83.78,2.70,1.7610,2,1.700,2021,1.8940,2,2),
(1493,1189857,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,94,35.11,56.38,2.5340,3,2.380,2023,2.4218,3,3),
(1494,1188849,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,68,5.88,92.65,2.0040,3,2.847,2023,1.6363,2,3),
(1495,1368246,'GESTÃO PÚBLICA','Gestão pública','Negócios, administração e direito','Publica','Presencial','Tecnologico',2019,40,5.00,57.50,1.4359,2,1.344,2022,0.2973,1,2),
(1496,46972,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2019,56,78.57,19.64,1.6670,2,1.111,2021,1.3650,2,2),
(1497,1188880,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2017,33,33.33,54.55,3.0390,4,2.996,2021,2.6440,3,4),
(1498,25949,'LETRAS - LÍNGUA PORTUGUESA E LITERATURAS DE LíNGUA PORTUGUESA','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2020,33,18.18,36.36,2.8810,3,2.724,2021,1.9680,3,3),
(1499,12,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,86,4.65,95.35,2.7920,3,3.492,2023,1.9335,2,4),
(1500,1189695,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,166,75.30,24.10,2.6540,3,2.021,2023,1.9847,3,3),
(1501,1442539,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,41,9.76,82.93,2.8440,3,2.139,2023,1.8663,2,3),
(1502,10,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,84,53.57,39.29,3.0640,4,2.774,2023,2.6578,3,3),
(1503,1189782,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,128,76.56,23.44,2.4190,3,1.176,2023,1.6133,2,2),
(1504,9,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,85,49.41,43.53,3.4820,4,3.827,2023,3.3161,4,4),
(1505,1438391,'CIÊNCIAS DA NATUREZA - BIOLOGIA','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2018,32,28.12,65.62,2.3310,3,1.354,2021,2.5300,3,2),
(1506,1189857,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,86,45.35,43.02,2.5340,3,2.380,2023,2.4218,3,3),
(1507,13,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,125,55.20,36.80,3.4073,4,3.726,2022,2.7725,3,4),
(1508,8,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,87,45.98,51.72,3.1976,4,3.370,2022,2.5510,3,4),
(1509,7,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,82,59.76,37.80,3.5840,4,3.421,2022,3.2561,4,4),
(1510,1190666,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,60,33.33,65.00,2.1510,3,0.574,2023,1.7712,2,1),
(1511,41690,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,34,24.24,6.06,2.8850,3,2.355,2021,2.1300,3,3),
(1512,6,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2016,98,46.94,50.00,3.9550,4,4.803,2021,4.0850,5,5),
(1513,1190677,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,83,65.06,34.94,1.1720,2,0.381,2023,1.7018,2,1),
(1514,43037,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2020,37,48.65,10.81,2.5450,3,1.227,2021,2.4430,3,2),
(1515,3,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,56,33.93,58.93,3.4290,4,4.352,2023,4.2072,5,5),
(1516,1191488,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2017,53,37.74,62.26,3.8250,4,3.382,2023,4.6443,5,4),
(1517,43044,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2020,37,32.43,8.11,2.0600,3,1.171,2021,2.6150,3,2),
(1518,2,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2016,104,71.15,23.08,2.5657,3,1.772,2022,1.2492,2,2),
(1519,1188849,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,65,10.77,89.23,2.0040,3,2.847,2023,1.6363,2,3),
(1520,25,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2016,42,40.48,28.57,3.3000,4,2.436,2021,3.0120,4,3),
(1521,1188508,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,53,69.81,9.43,1.9490,3,1.715,2023,1.3649,2,2),
(1522,24,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,46,41.30,39.13,2.9150,3,2.424,2021,3.0670,4,3),
(1523,1473094,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2018,53,69.81,7.55,2.1250,3,1.415,2021,1.1840,2,2),
(1524,20757,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,185,71.89,22.16,2.9345,3,1.990,2022,3.0966,4,3),
(1525,23,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2016,49,26.53,48.98,3.4810,4,3.102,2021,2.6060,3,4),
(1526,1188509,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,36,44.44,11.11,2.2970,3,1.572,2023,2.0815,3,2),
(1527,21442,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,30,13.33,36.67,2.7540,3,2.090,2023,1.8970,2,3),
(1528,21,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,103,30.10,33.98,2.1204,3,1.731,2022,1.0823,2,2),
(1529,1468981,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2018,51,13.73,66.67,2.8870,3,2.542,2023,2.1343,3,3),
(1530,20,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,68,13.24,79.41,3.4700,4,3.985,2023,3.0226,4,5),
(1531,1188550,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2017,38,57.89,23.68,2.8220,3,2.251,2021,3.8510,4,3),
(1532,19,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2016,56,71.43,28.57,3.3830,4,2.807,2021,2.3240,3,3),
(1533,1452469,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Publica','Presencial','Tecnologico',2018,37,32.43,67.57,1.7487,2,0.848,2022,1.7370,2,1),
(1534,17,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,58,36.21,62.07,3.7840,4,3.846,2023,3.5623,4,4),
(1535,1188616,'COMÉRCIO EXTERIOR','Comércio exterior','Negócios, administração e direito','Publica','Presencial','Tecnologico',2017,30,46.67,53.33,1.0009,2,0.202,2022,0.0000,1,1),
(1536,16,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,79,30.38,44.30,4.2420,5,4.180,2023,4.4036,5,5),
(1537,1188620,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2017,35,77.14,22.86,1.7610,2,1.700,2021,1.8940,2,2),
(1538,44461,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,38,44.74,7.89,3.0520,4,2.339,2022,3.0818,4,3),
(1539,1,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,91,20.88,70.33,3.8894,4,4.788,2022,3.3165,4,5),
(1540,1404731,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,37,83.78,16.22,2.1400,3,0.561,2023,1.6399,2,1),
(1541,1204533,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,58,24.14,75.86,2.8400,3,2.351,2023,2.3363,3,3),
(1542,1204534,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,53,45.28,50.94,2.3800,3,2.377,2023,1.5804,2,3),
(1543,1404730,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,37,78.38,21.62,1.9000,2,1.306,2023,1.3783,2,2),
(1544,51613,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,40,35.00,10.00,3.0190,4,2.531,2023,2.0488,3,3),
(1545,51615,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,31,48.39,38.71,3.4216,4,2.947,2022,3.6105,4,4),
(1546,1321429,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,55,89.09,10.91,3.3080,4,1.823,2023,2.8609,3,2),
(1547,1204537,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,96,42.71,57.29,2.8030,3,2.381,2023,2.5131,3,3),
(1548,1313294,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,43,58.14,37.21,1.8580,2,1.341,2023,1.3920,2,2),
(1549,51622,'ENGENHARIA DE PRODUÇÃO AGROINDUSTRIAL','Engenharia de produção','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,31,70.97,9.68,3.3310,4,1.630,2023,3.4620,4,2),
(1550,1313191,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2015,63,41.27,58.73,1.3921,2,1.269,2022,0.4620,1,2),
(1551,1403526,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2018,92,79.35,20.65,1.9360,2,0.750,2021,1.4920,2,1),
(1552,1313190,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2015,35,48.57,48.57,2.4810,3,2.494,2023,2.1271,3,3),
(1553,1205640,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,84,82.14,17.86,2.6850,3,1.773,2023,2.1630,3,2),
(1554,1205656,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,32,34.38,65.62,2.5210,3,1.642,2023,1.7652,2,2),
(1555,51638,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,37,32.43,43.24,2.9800,4,1.971,2023,2.2701,3,3),
(1556,1310955,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2015,76,77.63,22.37,2.5860,3,2.803,2021,2.1150,3,3),
(1557,51609,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,36,27.78,25.00,2.9280,3,2.232,2023,2.3183,3,3),
(1558,1481722,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2018,46,67.39,6.52,2.3500,3,1.385,2021,1.8850,2,2),
(1559,51558,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,40,35.00,15.00,3.4470,4,3.326,2023,4.0345,5,4),
(1560,1192255,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,93,68.82,31.18,3.1210,4,2.553,2023,2.3668,3,3),
(1561,46972,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2020,50,70.00,24.00,1.6670,2,1.111,2021,1.3650,2,2),
(1562,5001296,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2015,34,79.41,20.59,1.9830,3,2.111,2021,1.0260,2,3),
(1563,121537,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2019,35,62.86,8.57,1.8680,2,0.896,2021,2.2560,3,1),
(1564,1192256,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,94,56.38,43.62,3.9940,5,4.105,2023,3.4549,4,5),
(1565,1192257,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,43,41.86,58.14,3.9100,4,2.808,2023,4.0056,5,3),
(1566,48299,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,37,45.95,18.92,1.9702,3,1.894,2022,1.5406,2,2),
(1567,1419552,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2018,87,50.57,25.29,3.2003,4,2.681,2022,3.1871,4,3),
(1568,48302,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,40,17.50,50.00,2.4333,3,2.695,2022,2.4556,3,3),
(1569,1199602,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,73,42.47,50.68,1.7421,2,0.961,2022,1.6090,2,2),
(1570,48385,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,36,80.56,13.89,1.5291,2,0.395,2022,NULL,NULL,1),
(1571,5001172,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2015,50,70.00,30.00,2.6660,3,1.985,2021,2.5460,3,3),
(1572,49045,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,98,93.88,5.10,2.2739,3,1.445,2022,2.2226,3,2),
(1573,1404937,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,40,47.50,52.50,2.1970,3,0.437,2023,0.6552,1,1),
(1574,49094,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,246,80.08,13.82,1.7320,2,1.229,2023,0.1963,1,2),
(1575,5001033,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,134,15.15,84.85,3.2700,4,2.978,2023,3.2416,4,4),
(1576,5000953,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2015,173,64.74,34.68,1.6395,2,1.645,2022,1.9747,3,2),
(1577,1204474,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,43,79.07,20.93,1.8070,2,0.915,2023,1.3100,2,1),
(1578,1404781,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,224,68.30,31.25,2.5240,3,2.142,2023,2.5294,3,3),
(1579,5000750,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2015,42,38.10,61.90,1.9664,3,2.007,2022,2.8651,3,3),
(1580,1188463,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,81,66.67,28.40,2.4800,3,1.787,2023,1.8872,2,2),
(1581,26,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2016,61,78.69,19.67,2.8750,3,2.055,2021,2.1040,3,3),
(1582,3,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,52,25.00,36.54,3.4290,4,4.352,2023,4.2072,5,5),
(1583,16826,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,139,74.10,25.18,2.2910,3,1.362,2023,1.3638,2,2),
(1584,16825,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,424,82.55,17.22,2.5830,3,1.721,2023,1.7672,2,2),
(1585,2,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,115,23.48,16.52,2.5657,3,1.772,2022,1.2492,2,2),
(1586,17052,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,73,57.53,10.96,3.0568,4,2.491,2022,2.9790,4,3),
(1587,16824,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,504,82.54,17.46,2.0710,3,1.417,2022,1.1927,2,2),
(1588,1161561,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,45,75.56,22.22,2.4839,3,1.487,2022,1.6460,2,2),
(1589,1166445,'AGRONEGÓCIO','Gestão do agronegócio','Negócios, administração e direito','Privada','Presencial','Tecnologico',2017,39,78.95,21.05,2.5350,3,3.213,2023,2.1585,3,4),
(1590,17053,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,39,38.46,25.64,3.0555,4,2.672,2022,2.7769,3,3),
(1591,16819,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,139,72.66,27.34,3.0510,4,2.640,2021,2.6950,3,3),
(1592,1,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,90,5.56,74.44,3.8894,4,4.788,2022,3.3165,4,5),
(1593,17056,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2020,37,54.05,13.51,2.5210,3,1.701,2021,2.0410,3,2),
(1594,16817,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,2102,88.11,11.85,2.1387,3,1.550,2022,1.5667,2,2),
(1595,16281,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,84,57.14,36.90,2.6959,3,2.369,2022,2.4288,3,3),
(1596,16280,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,85,29.41,62.35,2.2529,3,2.683,2022,1.8506,2,3),
(1597,1168453,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,37,32.43,51.35,2.0260,3,2.039,2023,1.4769,2,3),
(1598,16276,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,80,56.25,32.50,2.7150,3,2.224,2021,2.6480,3,3),
(1599,1168551,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,52,69.23,28.85,3.2150,4,3.185,2021,2.2770,3,4),
(1600,17313,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,67,47.76,46.27,1.4885,2,1.093,2022,1.5671,2,2),
(1601,1160425,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,33,51.52,24.24,2.1360,3,1.933,2021,2.2220,3,2),
(1602,16275,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,80,68.75,27.50,2.6570,3,1.746,2021,2.5590,3,2),
(1603,16827,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,222,47.30,52.70,2.5500,3,1.471,2023,1.6626,2,2),
(1604,6,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2019,99,9.09,46.46,3.9550,4,4.803,2021,4.0850,5,5),
(1605,12,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,73,1.37,1.37,2.7920,3,3.492,2023,1.9335,2,4),
(1606,16830,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,148,85.81,12.16,2.7471,3,1.815,2022,2.4941,3,2),
(1607,16945,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,97,72.16,26.80,3.8245,4,3.284,2022,3.4286,4,4),
(1608,16834,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,194,54.64,25.77,2.2030,3,1.755,2023,1.2878,2,2),
(1609,16868,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,52,63.46,36.54,1.7597,2,1.112,2022,0.5776,1,2),
(1610,10,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,94,26.60,7.45,3.0640,4,2.774,2023,2.6578,3,3),
(1611,16859,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,135,88.89,10.37,2.3188,3,0.741,2022,1.5061,2,1),
(1612,16863,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,76,11.84,88.16,2.3930,3,0.975,2021,2.2530,3,2),
(1613,1154375,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,35,28.57,31.43,1.9060,2,2.016,2023,1.8658,2,3),
(1614,9,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,81,12.35,25.93,3.4820,4,3.827,2023,3.3161,4,4),
(1615,16860,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,224,83.93,10.27,2.1231,3,1.450,2022,1.6690,2,2),
(1616,16860,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,585,73.16,26.84,2.1231,3,1.450,2022,1.6690,2,2),
(1617,16863,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2020,61,68.85,29.51,2.3930,3,0.975,2021,2.2530,3,2),
(1618,16859,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,141,76.60,23.40,2.3188,3,0.741,2022,1.5061,2,1),
(1619,8,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,83,15.66,49.40,3.1976,4,3.370,2022,2.5510,3,4),
(1620,16834,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,176,72.16,27.84,2.2030,3,1.755,2023,1.2878,2,2),
(1621,1160215,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,53,66.04,16.98,1.9400,2,0.760,2023,1.9987,3,1),
(1622,7,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,100,17.00,16.00,3.5840,4,3.421,2022,3.2561,4,4),
(1623,16868,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,49,55.10,36.73,1.7597,2,1.112,2022,0.5776,1,2),
(1624,16830,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,281,82.92,17.08,2.7471,3,1.815,2022,2.4941,3,2),
(1625,1160216,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,34,61.76,38.24,1.4070,2,0.643,2023,0.4469,1,1),
(1626,16945,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,64,68.75,29.69,3.8245,4,3.284,2022,3.4286,4,4),
(1627,16829,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,602,64.78,35.22,2.9769,4,2.303,2022,2.7083,3,3),
(1628,1160424,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2017,32,78.12,0.00,1.9840,3,1.971,2021,1.9640,3,3),
(1629,16946,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,55,74.55,21.82,3.5303,4,2.914,2022,2.7639,3,3),
(1630,1205926,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,38,44.74,55.26,2.2050,3,1.215,2023,1.4051,2,2),
(1631,17594,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,498,54.53,40.24,3.4163,4,2.721,2022,3.2756,4,3),
(1632,5001171,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2018,47,80.43,19.57,2.8582,3,2.650,2022,2.7859,3,3),
(1633,19730,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,111,97.30,2.70,2.2080,3,2.069,2022,NULL,NULL,3),
(1634,16264,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2016,81,53.09,40.74,2.2280,3,1.340,2021,1.7220,2,2),
(1635,1183196,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,87,83.91,16.09,2.2570,3,1.513,2023,1.7704,2,2),
(1636,44,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,61,39.34,54.10,3.5070,4,4.191,2023,3.4881,4,5),
(1637,1184754,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,85,21.18,74.12,2.2450,3,1.810,2023,2.0185,3,2),
(1638,5001033,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,132,21.97,78.03,3.2700,4,2.978,2023,3.2416,4,4),
(1639,37,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,60,28.33,70.00,3.1090,4,3.599,2023,2.0795,3,4),
(1640,36,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2016,52,48.08,42.31,3.0370,4,2.695,2021,2.4440,3,3),
(1641,1185732,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,39,61.54,33.33,2.4730,3,3.017,2021,1.8410,2,4),
(1642,5000953,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,137,64.23,33.58,1.6395,2,1.645,2022,1.9747,3,2),
(1643,19934,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,33,78.79,18.18,2.6368,3,1.517,2022,1.5683,2,2),
(1644,34,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2016,56,66.07,14.29,2.1800,3,1.409,2021,1.2970,2,2),
(1645,20016,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,111,40.54,55.86,3.7000,4,2.954,2023,3.2672,4,4),
(1646,5000750,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2018,74,43.24,56.76,1.9664,3,2.007,2022,2.8651,3,3),
(1647,1185850,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,33,36.36,63.64,1.1040,2,1.096,2023,0.9567,2,2),
(1648,20144,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,54,51.85,35.19,3.6630,4,3.422,2023,2.9431,3,4),
(1649,29,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,42,45.24,50.00,3.2630,4,2.751,2021,2.4700,3,3),
(1650,1185902,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,80,43.75,51.25,2.2162,3,1.647,2022,1.5711,2,2),
(1651,1485029,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2018,36,11.11,88.89,1.8100,2,0.108,2023,0.9711,2,1),
(1652,27,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2016,78,83.33,15.38,2.6910,3,2.024,2021,1.2910,2,3),
(1653,1185942,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,50,44.00,56.00,2.2223,3,1.418,2022,3.4673,4,2),
(1654,16265,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2016,86,47.67,47.67,2.1710,3,1.355,2021,1.5360,2,2),
(1655,16274,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2016,61,60.66,31.15,2.3570,3,0.765,2021,1.9050,2,1),
(1656,16273,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2016,77,80.52,18.18,2.0970,3,1.244,2021,2.2300,3,2),
(1657,16272,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2016,76,86.84,10.53,2.4070,3,1.684,2021,2.5220,3,2),
(1658,16271,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2016,81,40.74,55.56,2.7030,3,2.282,2021,2.2960,3,3),
(1659,1182266,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,104,70.19,29.81,2.2123,3,0.615,2022,1.4714,2,1),
(1660,18471,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,146,76.71,15.07,2.2890,3,1.523,2023,1.4595,2,2),
(1661,16270,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2016,91,62.64,37.36,2.4690,3,2.175,2021,2.4550,3,3),
(1662,5001296,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2018,37,78.38,21.62,1.9830,3,2.111,2021,1.0260,2,3),
(1663,18472,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,243,23.87,3.29,2.4880,3,2.439,2023,2.8389,3,3),
(1664,16269,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,80,70.00,23.75,2.8870,3,2.159,2021,2.7160,3,3),
(1665,1182767,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,32,25.00,75.00,2.9160,3,2.718,2023,2.2982,3,3),
(1666,1182802,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,62,53.23,46.77,2.2540,3,1.484,2023,2.4116,3,2),
(1667,18473,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,257,82.49,12.45,2.4090,3,1.612,2023,2.0737,3,2),
(1668,16268,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2016,79,81.01,16.46,2.4630,3,1.484,2021,2.3580,3,2),
(1669,5001274,'LOGÍSTICA','Logística','Negócios, administração e direito','Privada','Presencial','Tecnologico',2018,39,69.23,25.64,2.4533,3,1.781,2022,2.0435,3,2),
(1670,16267,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,67,43.28,47.76,2.1360,3,0.866,2021,1.6900,2,1),
(1671,16266,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2016,82,60.98,35.37,2.7230,3,1.465,2021,2.6150,3,2),
(1672,1206020,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,34,44.12,55.88,1.8330,2,1.868,2023,1.7986,2,2),
(1673,51719,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,47,87.23,12.77,2.6929,3,1.331,2022,1.8773,2,2),
(1674,1285517,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2015,37,56.76,43.24,3.3740,4,3.116,2021,2.3300,3,4),
(1675,1192256,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,192,64.58,35.42,3.9940,5,4.105,2023,3.4549,4,5),
(1676,1349525,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,65,56.92,41.54,2.4710,3,1.730,2023,2.4736,3,2),
(1677,1192255,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,228,73.68,26.32,3.1210,4,2.553,2023,2.3668,3,3),
(1678,1342612,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2018,32,81.25,9.38,2.6630,3,3.528,2021,2.8440,3,4),
(1679,80291,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,99,73.74,12.12,2.8015,3,2.206,2022,2.4449,3,3),
(1680,80358,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,39,58.97,33.33,2.4730,3,1.642,2023,1.6794,2,2),
(1681,1191488,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2015,44,43.18,56.82,3.8250,4,3.382,2023,4.6443,5,4),
(1682,1280519,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,43,76.74,23.26,2.1980,3,0.258,2023,NULL,NULL,1),
(1683,1342611,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,34,52.94,29.41,2.1618,3,2.329,2022,2.4427,3,3),
(1684,1190506,'AGRONEGÓCIO','Gestão do agronegócio','Negócios, administração e direito','Privada','Presencial','Tecnologico',2015,30,40.00,60.00,0.9440,1,0.376,2023,0.0000,1,1),
(1685,1280520,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,84,77.38,22.62,2.7600,3,0.362,2023,2.2731,3,1),
(1686,80362,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,30,60.00,30.00,3.1520,4,1.807,2023,2.9224,3,2),
(1687,1189857,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,99,34.34,60.61,2.5340,3,2.380,2023,2.4218,3,3),
(1688,1283961,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2017,60,40.00,60.00,1.7326,2,0.298,2022,NULL,NULL,1),
(1689,1188880,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2015,30,43.33,53.33,3.0390,4,2.996,2021,2.6440,3,4),
(1690,80922,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2020,40,55.00,20.00,1.8150,2,1.006,2021,1.5930,2,2),
(1691,1188849,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,65,20.00,80.00,2.0040,3,2.847,2023,1.6363,2,3),
(1692,1284133,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,113,76.11,23.89,2.4770,3,1.800,2023,1.8513,2,2),
(1693,81399,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,44,29.55,52.27,1.4535,2,1.344,2022,1.8962,2,2),
(1694,1192257,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,152,53.29,46.71,3.9100,4,2.808,2023,4.0056,5,3),
(1695,1350251,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,52,32.69,67.31,2.2190,3,1.861,2023,2.0995,3,2),
(1696,1269969,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2017,41,78.05,14.63,2.4150,3,1.401,2021,2.4000,3,2),
(1697,1353460,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,54,44.44,53.70,2.0570,3,1.552,2023,1.4055,2,2),
(1698,1269970,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2017,49,55.10,28.57,2.1540,3,1.121,2021,2.2300,3,2),
(1699,1204537,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,138,44.20,55.07,2.8030,3,2.381,2023,2.5131,3,3),
(1700,1270010,'ENGENHARIA QUÍMICA','Engenharia química','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,51,52.94,39.22,2.4290,3,2.399,2023,1.5565,2,3),
(1701,75096,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,100,79.00,20.00,3.6220,4,2.965,2023,3.6037,4,4),
(1702,75099,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,164,75.61,15.85,2.6990,3,1.579,2023,2.1426,3,2),
(1703,1204534,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,95,50.00,50.00,2.3800,3,2.377,2023,1.5804,2,3),
(1704,1351681,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,61,78.69,21.31,1.8819,2,1.370,2022,2.0752,3,2),
(1705,1204533,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,92,40.22,59.78,2.8400,3,2.351,2023,2.3363,3,3),
(1706,1270057,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,60,68.33,16.67,2.6350,3,2.089,2023,1.9379,2,3),
(1707,79552,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2020,120,67.50,26.67,2.1620,3,1.867,2023,1.7523,2,2),
(1708,1204474,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,61,31.15,68.85,1.8070,2,0.915,2023,1.3100,2,1),
(1709,1350832,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,45,68.89,31.11,2.5060,3,1.500,2021,1.5820,2,2),
(1710,1270062,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,61,63.93,27.87,2.1750,3,1.888,2023,0.7438,1,2),
(1711,1279788,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2017,67,82.09,17.91,2.6110,3,1.511,2023,NULL,NULL,2),
(1712,79932,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,38,63.16,28.95,2.9860,4,2.218,2023,2.1226,3,3),
(1713,1188620,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2015,35,74.29,20.00,1.7610,2,1.700,2021,1.8940,2,2),
(1714,1342448,'GESTÃO PÚBLICA','Gestão pública','Negócios, administração e direito','Publica','Presencial','Tecnologico',2018,72,54.17,40.28,2.9185,3,2.983,2022,3.5316,4,4),
(1715,1299950,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,112,81.25,16.96,2.3631,3,1.375,2022,2.1006,3,2),
(1716,1185732,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2015,79,73.42,26.58,2.4730,3,3.017,2021,1.8410,2,4),
(1717,1332350,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,39,56.41,23.08,1.0816,2,1.469,2022,1.4209,2,2),
(1718,89778,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2020,46,76.09,19.57,2.4910,3,1.331,2023,2.7149,3,2),
(1719,1299960,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,182,80.77,18.13,2.0440,3,1.155,2023,1.0624,2,2),
(1720,89780,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,35,80.00,17.14,3.0180,4,1.598,2023,3.0138,4,2),
(1721,1184754,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,136,28.68,71.32,2.2450,3,1.810,2023,2.0185,3,2),
(1722,1299961,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,45,84.44,15.56,2.9870,4,1.021,2023,2.6389,3,2),
(1723,89824,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,160,71.88,18.12,3.2315,4,2.579,2022,2.8681,3,3),
(1724,1183196,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,164,73.78,25.61,2.2570,3,1.513,2023,1.7704,2,2),
(1725,90004,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,36,52.78,0.00,2.6970,3,2.040,2023,3.1013,4,3),
(1726,1331390,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,32,46.88,53.12,1.3320,2,0.718,2023,0.6393,1,1),
(1727,1300369,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,72,76.39,23.61,1.7030,2,1.024,2023,NULL,NULL,2),
(1728,90361,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2020,30,66.67,10.00,2.2480,3,2.389,2021,2.2680,3,3),
(1729,1303435,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,216,74.54,24.54,1.9003,2,0.816,2022,1.2589,2,1),
(1730,1303468,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,200,77.00,21.50,2.3930,3,1.076,2023,1.3379,2,2),
(1731,1182802,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,48,33.33,66.67,2.2540,3,1.484,2023,2.4116,3,2),
(1732,1284137,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,227,77.97,21.59,1.9000,2,0.674,2023,1.2707,2,1),
(1733,1285517,'CIÊNCIAS BIOLÓGICAS','Biologia','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2017,45,42.22,51.11,3.3740,4,3.116,2021,2.3300,3,4),
(1734,1188616,'COMÉRCIO EXTERIOR','Comércio exterior','Negócios, administração e direito','Publica','Presencial','Tecnologico',2015,36,61.11,38.89,1.0009,2,0.202,2022,0.0000,1,1),
(1735,83374,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,46,65.22,21.74,2.6550,3,1.701,2023,1.8171,2,2),
(1736,1342445,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2018,54,40.74,33.33,2.1879,3,2.437,2022,2.4227,3,3),
(1737,1284570,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,76,47.37,51.32,2.1870,3,2.122,2023,2.1823,3,3),
(1738,1188508,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,51,78.43,13.73,1.9490,3,1.715,2023,1.3649,2,2),
(1739,87358,'GASTRONOMIA','Gastronomia','Serviços','Privada','Presencial','Tecnologico',2020,121,89.26,10.74,1.8755,2,0.442,2022,NULL,NULL,1),
(1740,1188463,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,83,56.63,38.55,2.4800,3,1.787,2023,1.8872,2,2),
(1741,1284880,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,76,43.42,55.26,1.6010,2,1.117,2023,0.8721,1,2),
(1742,1284937,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,58,62.07,37.93,2.4150,3,1.077,2023,2.9064,3,2),
(1743,1341062,'GASTRONOMIA','Gastronomia','Serviços','Privada','Presencial','Tecnologico',2018,39,41.03,58.97,3.1965,4,3.001,2022,2.1427,3,4),
(1744,1185902,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,91,58.24,41.76,2.2162,3,1.647,2022,1.5711,2,2),
(1745,16946,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,74,67.57,32.43,3.5303,4,2.914,2022,2.7639,3,3),
(1746,59116,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,47,74.47,17.02,1.4660,2,0.827,2023,1.2061,2,1),
(1747,1270062,'ENGENHARIA DE COMPUTAÇÃO','Engenharia de computação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,61,67.21,32.79,2.1750,3,1.888,2023,0.7438,1,2),
(1748,1270057,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,54,53.70,37.04,2.6350,3,2.089,2023,1.9379,2,3),
(1749,1207552,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,60,70.00,25.00,2.0950,3,1.635,2023,2.0340,3,2),
(1750,1386004,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,162,50.62,43.83,2.0657,3,1.508,2022,1.8911,2,2),
(1751,1207554,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,36,52.78,47.22,1.9160,2,0.227,2023,1.4397,2,1),
(1752,62906,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,55,29.09,12.73,3.0050,4,2.181,2023,2.9290,3,3),
(1753,1270010,'ENGENHARIA QUÍMICA','Engenharia química','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,57,49.12,40.35,2.4290,3,2.399,2023,1.5565,2,3),
(1754,62936,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2020,38,15.79,21.05,3.3613,4,3.420,2022,2.6401,3,4),
(1755,1269970,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2015,66,81.82,15.15,2.1540,3,1.121,2021,2.2300,3,2),
(1756,1257972,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,41,60.98,39.02,1.9150,2,1.017,2023,1.1169,2,2),
(1757,62940,'COMUNICAÇÃO SOCIAL - PUBLICIDADE E PROPAGANDA','Publicidade e propaganda','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,37,16.22,18.92,3.2310,4,2.795,2022,2.3007,3,3),
(1758,1269969,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2015,71,80.28,12.68,2.4150,3,1.401,2021,2.4000,3,2),
(1759,63140,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,30,63.33,36.67,1.8488,2,1.489,2022,1.1947,2,2),
(1760,1268136,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2015,81,38.27,56.79,2.4720,3,2.072,2023,2.9001,3,3),
(1761,1257973,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,52,57.69,40.38,1.6280,2,1.424,2023,0.9546,2,2),
(1762,63516,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,179,58.66,32.40,3.6565,4,2.315,2022,3.8273,4,3),
(1763,1207267,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,52,42.31,57.69,2.4870,3,1.158,2023,2.1369,3,2),
(1764,51770,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,48,68.75,31.25,3.0425,4,3.605,2022,2.9067,3,4),
(1765,52216,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,52,51.92,44.23,4.1820,5,3.614,2023,4.1758,5,4),
(1766,53352,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,31,61.29,38.71,2.7616,3,2.004,2022,2.3554,3,3),
(1767,56912,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2020,60,100.00,0.00,2.5300,3,1.425,2021,2.1220,3,2),
(1768,1284137,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,110,74.55,24.55,1.9000,2,0.674,2023,1.2707,2,1),
(1769,58506,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,37,67.57,5.41,3.0000,4,2.491,2021,2.9690,4,3),
(1770,1284133,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,33,78.79,21.21,2.4770,3,1.800,2023,1.8513,2,2),
(1771,1280520,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,64,65.62,34.38,2.7600,3,0.362,2023,2.2731,3,1),
(1772,1387135,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,36,13.89,77.78,1.8189,2,2.068,2022,2.4852,3,3),
(1773,1207123,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,30,76.67,23.33,2.3990,3,1.549,2022,1.5700,2,2),
(1774,58512,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2020,33,66.67,6.06,2.6115,3,1.398,2022,2.3485,3,2),
(1775,1280519,'ENGENHARIA DE CONTROLE E AUTOMAÇÃO','Engenharia de controle e automação','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,91,76.67,23.33,2.1980,3,0.258,2023,NULL,NULL,1),
(1776,1207265,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,56,42.86,57.14,2.3560,3,1.240,2023,1.6329,2,2),
(1777,1268136,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,80,60.76,20.25,2.4720,3,2.072,2023,2.9001,3,3),
(1778,1266092,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,127,86.61,13.39,2.2850,3,1.199,2023,1.7751,2,2),
(1779,1258890,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,51,82.35,17.65,2.8730,3,0.587,2023,2.5876,3,1),
(1780,1261971,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,40,27.50,65.00,3.3260,4,4.416,2023,3.3481,4,5),
(1781,1261972,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,60,8.47,88.14,2.6600,3,3.434,2023,1.9027,2,4),
(1782,70338,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,167,59.28,32.34,3.7740,4,3.250,2023,3.2708,4,4),
(1783,1257973,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,65,58.46,40.00,1.6280,2,1.424,2023,0.9546,2,2),
(1784,1364739,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,51,43.14,52.94,2.1650,3,1.689,2023,2.2171,3,2),
(1785,71115,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2020,37,56.76,5.41,2.4960,3,1.870,2021,2.4080,3,2),
(1786,1257972,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,57,52.63,47.37,1.9150,2,1.017,2023,1.1169,2,2),
(1787,1265319,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,87,21.84,63.22,2.0500,3,2.326,2022,1.8632,2,3),
(1788,1265365,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,94,30.85,58.51,2.7505,3,2.650,2022,2.6744,3,3),
(1789,71466,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,54,87.04,11.11,1.9844,3,0.881,2022,0.8721,1,1),
(1790,1257749,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,69,53.62,46.38,3.1000,4,2.181,2021,3.1790,4,3),
(1791,1364370,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,106,65.09,33.96,1.5880,2,0.712,2023,0.3102,1,1),
(1792,1257748,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,48,87.50,12.50,3.2550,4,2.685,2023,3.0050,4,3),
(1793,1265414,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,87,20.69,64.37,2.9716,4,2.995,2022,3.1055,4,4),
(1794,1364369,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,35,54.29,45.71,2.8610,3,2.248,2023,2.5555,3,3),
(1795,1206020,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2015,36,50.00,50.00,1.8330,2,1.868,2023,1.7986,2,2),
(1796,1205926,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2015,41,29.27,70.73,2.2050,3,1.215,2023,1.4051,2,2),
(1797,1266092,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,105,83.81,13.33,2.2850,3,1.199,2023,1.7751,2,2),
(1798,1205640,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2015,54,64.81,35.19,2.6850,3,1.773,2023,2.1630,3,2),
(1799,72818,'RADIOLOGIA','Radiologia','Saúde e bem-estar','Privada','Presencial','Tecnologico',2020,64,89.06,10.94,2.4280,3,0.879,2023,NULL,NULL,1),
(1800,1365187,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2018,156,73.08,26.92,3.1710,4,1.785,2023,3.2725,4,2),
(1801,1383033,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2018,163,55.83,42.33,1.8722,2,1.475,2022,1.5039,2,2),
(1802,65471,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,170,37.28,42.60,3.4236,4,2.795,2022,4.3180,5,3),
(1803,1265414,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,86,29.07,67.44,2.9716,4,2.995,2022,3.1055,4,4),
(1804,1265365,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,86,33.72,62.79,2.7505,3,2.650,2022,2.6744,3,3),
(1805,1258779,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,65,47.69,50.77,2.0750,3,1.004,2023,2.5969,3,2),
(1806,66080,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,418,92.82,7.18,2.3908,3,1.778,2022,NULL,NULL,2),
(1807,1265319,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2015,91,32.97,63.74,2.0500,3,2.326,2022,1.8632,2,3),
(1808,1258890,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,33,96.97,3.03,2.8730,3,0.587,2023,2.5876,3,1),
(1809,66381,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,79,79.75,16.46,3.5073,4,3.233,2022,3.4975,4,4),
(1810,1261972,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,61,15.00,85.00,2.6600,3,3.434,2023,1.9027,2,4),
(1811,1259035,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2017,47,55.32,44.68,2.3180,3,1.102,2021,2.8690,3,2),
(1812,1261971,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2015,40,23.08,76.92,3.3260,4,4.416,2023,3.3481,4,5),
(1813,1368260,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2018,39,69.23,17.95,1.9250,2,0.841,2021,2.2260,3,1),
(1814,68063,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,38,55.26,18.42,2.7800,3,1.203,2023,1.8800,2,2),
(1815,68114,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,47,57.45,17.02,2.6989,3,1.927,2022,2.1645,3,2),
(1816,1368246,'GESTÃO PÚBLICA','Gestão pública','Negócios, administração e direito','Publica','Presencial','Tecnologico',2018,34,14.71,55.88,1.4359,2,1.344,2022,0.2973,1,2),
(1817,68918,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,153,72.55,22.22,2.0485,3,1.626,2022,1.8404,2,2),
(1818,16829,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,158,87.97,9.49,2.9769,4,2.303,2022,2.7083,3,3),
(1819,13,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,120,10.83,36.67,3.4073,4,3.726,2022,2.7725,3,4),
(1820,68063,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,64,59.38,40.62,2.7800,3,1.203,2023,1.8800,2,2),
(1821,111910,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,71,53.52,43.66,3.2020,4,3.003,2023,2.9256,3,4),
(1822,112770,'ENGENHARIA SANITARIA E AMBIENTAL','Engenharia ambiental e sanitária','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,63,58.73,28.57,2.8140,3,2.604,2023,2.3107,3,3),
(1823,1404937,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,69,78.26,18.84,2.1970,3,0.437,2023,0.6552,1,1),
(1824,66893,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,154,7.14,92.86,2.3070,3,1.526,2021,2.4810,3,2),
(1825,66381,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,161,69.57,30.43,3.5073,4,3.233,2022,3.4975,4,4),
(1826,112846,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2017,49,83.67,12.24,3.1630,4,2.625,2021,2.9590,4,3),
(1827,19730,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,256,91.80,8.20,2.2080,3,2.069,2022,NULL,NULL,3),
(1828,66080,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,578,68.51,31.49,2.3908,3,1.778,2022,NULL,NULL,2),
(1829,1405507,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,48,56.25,33.33,1.6130,2,2.137,2023,1.2836,2,3),
(1830,1405555,'DESIGN DE INTERIORES','Design de interiores','Artes e humanidades','Privada','Presencial','Tecnologico',2019,50,36.00,64.00,3.9544,5,4.648,2022,NULL,NULL,5),
(1831,65471,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,215,27.57,71.96,3.4236,4,2.795,2022,4.3180,5,3),
(1832,113529,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,41,60.98,31.71,2.1040,3,0.382,2023,2.6177,3,1),
(1833,19594,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2019,32,68.75,31.25,3.8750,4,2.545,2021,4.1430,5,3),
(1834,113555,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,85,56.47,17.65,2.9682,4,2.506,2022,3.0174,4,3),
(1835,19592,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,46,71.74,28.26,1.2208,2,0.807,2022,0.7976,1,1),
(1836,63516,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,182,62.98,37.02,3.6565,4,2.315,2022,3.8273,4,3),
(1837,113559,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,81,49.38,43.21,2.8060,3,2.075,2023,1.8204,2,3),
(1838,1405628,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,31,61.29,22.58,1.4830,2,2.033,2023,1.5923,2,3),
(1839,63140,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,91,49.45,50.55,1.8488,2,1.489,2022,1.1947,2,2),
(1840,110842,'GESTÃO AMBIENTAL','Gestão ambiental','Engenharia, produção e construção','Publica','Presencial','Tecnologico',2017,54,59.26,31.48,2.5470,3,2.344,2023,1.9473,3,3),
(1841,20144,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,63,53.97,41.27,3.6630,4,3.422,2023,2.9431,3,4),
(1842,108694,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,188,71.81,27.66,2.7120,3,1.470,2023,2.4372,3,2),
(1843,108710,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,57,43.86,52.63,3.0610,4,2.426,2023,3.3011,4,3),
(1844,71466,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2016,89,78.65,21.35,1.9844,3,0.881,2022,0.8721,1,1),
(1845,108756,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,56,87.50,12.50,2.3845,3,0.954,2022,1.3406,2,2),
(1846,20016,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,142,32.39,66.90,3.7000,4,2.954,2023,3.2672,4,4),
(1847,71115,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2016,79,64.56,25.32,2.4960,3,1.870,2021,2.4080,3,2),
(1848,70338,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,201,57.21,42.29,3.7740,4,3.250,2023,3.2708,4,4),
(1849,19934,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,42,69.05,30.95,2.6368,3,1.517,2022,1.5683,2,2),
(1850,109282,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,31,22.58,77.42,1.4310,2,1.076,2023,1.2937,2,2),
(1851,1404730,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,48,66.67,33.33,1.9000,2,1.306,2023,1.3783,2,2),
(1852,109307,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,101,75.25,24.75,2.6850,3,1.817,2022,1.9422,2,2),
(1853,1404731,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,66,78.79,21.21,2.1400,3,0.561,2023,1.6399,2,1),
(1854,109543,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,110,76.36,23.64,2.2960,3,1.042,2023,NULL,NULL,2),
(1855,68918,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,297,70.71,29.29,2.0485,3,1.626,2022,1.8404,2,2),
(1856,1404781,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,153,75.82,20.92,2.5240,3,2.142,2023,2.5294,3,3),
(1857,68114,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,107,59.81,37.38,2.6989,3,1.927,2022,2.1645,3,2),
(1858,18473,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,460,81.52,17.17,2.4090,3,1.612,2023,2.0737,3,2),
(1859,1406034,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,46,26.09,50.00,2.0320,3,0.020,2023,0.4074,1,1),
(1860,58508,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,101,62.00,30.00,2.6929,3,2.565,2022,2.5101,3,3),
(1861,116690,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,54,66.67,24.07,2.5420,3,1.731,2021,1.9560,3,2),
(1862,17594,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,703,45.44,51.99,3.4163,4,2.721,2022,3.2756,4,3),
(1863,58506,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,73,68.49,30.14,3.0000,4,2.491,2021,2.9690,4,3),
(1864,116708,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,47,68.09,23.40,3.4547,4,3.037,2022,2.9902,4,4),
(1865,56912,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,99,62.63,37.37,2.5300,3,1.425,2021,2.1220,3,2),
(1866,17313,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,83,61.45,36.14,1.4885,2,1.093,2022,1.5671,2,2),
(1867,116720,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,75,52.00,41.33,3.7570,4,3.105,2023,3.3625,4,4),
(1868,17056,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2019,83,57.83,16.87,2.5210,3,1.701,2021,2.0410,3,2),
(1869,1452469,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Publica','Presencial','Tecnologico',2019,36,25.00,63.89,1.7487,2,0.848,2022,1.7370,2,1),
(1870,117004,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,86,9.30,69.77,3.1972,4,3.628,2022,2.6472,3,4),
(1871,17053,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,90,34.44,40.00,3.0555,4,2.672,2022,2.7769,3,3),
(1872,53352,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,78,66.67,33.33,2.7616,3,2.004,2022,2.3554,3,3),
(1873,1453735,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,54,87.04,12.96,2.9330,3,1.796,2023,2.5585,3,2),
(1874,52233,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,33,54.55,45.45,3.6620,4,3.348,2023,2.6687,3,4),
(1875,17052,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,215,59.07,21.40,3.0568,4,2.491,2022,2.9790,4,3),
(1876,1473094,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2019,42,50.00,4.76,2.1250,3,1.415,2021,1.1840,2,2),
(1877,52216,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,84,51.19,48.81,4.1820,5,3.614,2023,4.1758,5,4),
(1878,117488,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,43,58.14,39.53,1.7916,2,1.346,2022,2.1394,3,2),
(1879,51770,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,75,70.67,29.33,3.0425,4,3.605,2022,2.9067,3,4),
(1880,62940,'COMUNICAÇÃO SOCIAL - PUBLICIDADE E PROPAGANDA','Publicidade e propaganda','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,30,50.00,43.33,3.2310,4,2.795,2022,2.3007,3,3),
(1881,116662,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,43,41.86,53.49,2.9900,4,2.834,2023,1.7229,2,3),
(1882,114388,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2017,31,83.87,12.90,2.3590,3,1.663,2021,3.0660,4,2),
(1883,18472,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,174,23.56,50.00,2.4880,3,2.439,2023,2.8389,3,3),
(1884,1419552,'JORNALISMO','Jornalismo','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2019,83,60.24,14.46,3.2003,4,2.681,2022,3.1871,4,3),
(1885,62906,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,60,49.15,25.42,3.0050,4,2.181,2023,2.9290,3,3),
(1886,115023,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,40,42.50,35.00,2.1110,3,1.216,2023,2.1075,3,2),
(1887,18471,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2019,199,82.41,12.56,2.2890,3,1.523,2023,1.4595,2,2),
(1888,60584,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2016,56,60.71,39.29,4.5240,5,3.593,2021,5.0000,5,4),
(1889,60582,'FONOAUDIOLOGIA','Fonoaudiologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,33,42.42,57.58,3.2210,4,2.731,2023,2.1621,3,3),
(1890,115058,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2017,234,77.78,21.79,3.4750,4,2.322,2023,2.8534,3,3),
(1891,18354,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2019,36,16.67,13.89,2.8950,3,1.924,2021,2.3470,3,2),
(1892,116428,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,110,69.09,30.91,1.8070,2,0.493,2023,0.8619,1,1),
(1893,59116,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,79,63.29,36.71,1.4660,2,0.827,2023,1.2061,2,1),
(1894,116560,'GEOGRAFIA','Geografia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,64,61.90,31.75,2.8730,3,1.282,2021,1.7780,2,2),
(1895,18279,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,42,85.71,14.29,2.1529,3,0.283,2022,1.6999,2,1),
(1896,116648,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,45,37.78,62.22,3.2310,4,2.647,2023,1.8811,2,3),
(1897,1438391,'CIÊNCIAS DA NATUREZA - BIOLOGIA','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,35,48.57,8.57,2.3310,3,1.354,2021,2.5300,3,2),
(1898,58512,'TURISMO','Turismo','Serviços','Publica','Presencial','Bacharelado',2016,58,86.21,13.79,2.6115,3,1.398,2022,2.3485,3,2),
(1899,1481722,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2019,41,56.10,7.32,2.3500,3,1.385,2021,1.8850,2,2),
(1900,1404315,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,40,12.50,52.50,3.0370,4,1.730,2023,2.6852,3,2),
(1901,83376,'ENGENHARIA DE PRODUÇÃO','Engenharia de produção','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,80,85.00,15.00,2.6010,3,1.214,2023,2.1469,3,2),
(1902,101054,'LETRAS - LíNGUA E LITERATURAS DE LíNGUA INGLESA','Letras inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2017,33,33.33,42.42,3.2300,4,2.865,2021,2.8580,3,3),
(1903,40677,'COMUNICAÇÃO SOCIAL - PUBLICIDADE E PROPAGANDA','Publicidade e propaganda','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,33,69.70,27.27,3.6742,4,3.667,2022,3.3610,4,4),
(1904,83374,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,142,74.65,24.65,2.6550,3,1.701,2023,1.8171,2,2),
(1905,1385206,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,48,45.83,50.00,2.1380,3,0.641,2023,1.4050,2,1),
(1906,83372,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,88,65.91,34.09,2.5500,3,1.645,2023,2.8494,3,2),
(1907,101119,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,301,83.06,16.94,2.5297,3,1.928,2022,2.2027,3,2),
(1908,1385207,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,47,46.81,51.06,2.2580,3,1.697,2023,1.6650,2,2),
(1909,81399,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,89,19.10,80.90,1.4535,2,1.344,2022,1.8962,2,2),
(1910,1385209,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,59,47.46,52.54,1.4050,2,0.543,2023,0.8708,1,1),
(1911,80922,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2016,106,23.58,72.64,1.8150,2,1.006,2021,1.5930,2,2),
(1912,101253,'ENGENHARIA AMBIENTAL','Engenharia ambiental','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,135,91.11,8.89,2.4720,3,1.288,2023,1.5502,2,2),
(1913,101749,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,59,66.10,33.90,2.8570,3,2.474,2023,2.8461,3,3),
(1914,25949,'LETRAS - LÍNGUA PORTUGUESA E LITERATURAS DE LíNGUA PORTUGUESA','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2019,54,11.11,29.63,2.8810,3,2.724,2021,1.9680,3,3),
(1915,80362,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,49,63.27,36.73,3.1520,4,1.807,2023,2.9224,3,2),
(1916,1386004,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,139,48.92,38.85,2.0657,3,1.508,2022,1.8911,2,2),
(1917,80360,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,72,70.83,29.17,2.8240,3,2.145,2021,1.9960,3,3),
(1918,100802,'ENGENHARIA MECÂNICA','Engenharia mecânica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,80,27.85,27.85,2.6010,3,2.434,2023,2.2270,3,3),
(1919,88488,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,57,75.44,24.56,2.6960,3,1.233,2023,2.6529,3,2),
(1920,100804,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,41,39.02,48.78,4.1610,5,4.409,2023,4.7327,5,5),
(1921,88486,'ENGENHARIA DE PRODUÇÃO','Engenharia de produção','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,51,80.39,19.61,2.8520,3,2.221,2023,2.3310,3,3),
(1922,100880,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,151,70.86,28.48,2.2827,3,1.100,2022,1.6480,2,2),
(1923,44461,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,91,47.25,23.08,3.0520,4,2.339,2022,3.0818,4,3),
(1924,43044,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2019,54,62.96,14.81,2.0600,3,1.171,2021,2.6150,3,2),
(1925,87358,'GASTRONOMIA','Gastronomia','Serviços','Privada','Presencial','Tecnologico',2016,309,55.34,44.66,1.8755,2,0.442,2022,NULL,NULL,1),
(1926,43037,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2019,62,59.68,22.58,2.5450,3,1.227,2021,2.4430,3,2),
(1927,100920,'ENGENHARIA DE ALIMENTOS','Engenharia de alimentos','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,48,72.92,27.08,2.6070,3,1.142,2023,1.6500,2,2),
(1928,41690,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,35,20.00,22.86,2.8850,3,2.355,2021,2.1300,3,3),
(1929,1383033,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,204,48.53,48.04,1.8722,2,1.475,2022,1.5039,2,2),
(1930,84854,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2016,40,25.00,65.00,3.3416,4,3.601,2022,3.0681,4,4),
(1931,108443,'BIOMEDICINA','Biomedicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,30,30.00,70.00,2.3420,3,1.101,2023,1.8048,2,2),
(1932,80358,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,75,76.00,24.00,2.4730,3,1.642,2023,1.6794,2,2),
(1933,20757,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,287,75.26,21.95,2.9345,3,1.990,2022,3.0966,4,3),
(1934,105953,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2017,35,40.00,54.29,2.0160,3,1.107,2021,2.3170,3,2),
(1935,73084,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2016,90,74.44,25.56,2.9890,4,1.566,2021,1.8150,2,2),
(1936,106050,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2017,42,71.43,26.19,2.8230,3,1.199,2021,2.3090,3,2),
(1937,20474,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,38,13.51,35.14,1.9711,3,1.464,2022,1.4744,2,2),
(1938,72818,'RADIOLOGIA','Radiologia','Saúde e bem-estar','Privada','Presencial','Tecnologico',2016,125,69.60,30.40,2.4280,3,0.879,2023,NULL,NULL,1),
(1939,106052,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2017,45,48.89,40.00,3.0530,4,2.573,2021,2.4040,3,3),
(1940,107088,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,62,70.97,24.19,1.9610,3,1.667,2022,2.2255,3,2),
(1941,20472,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2019,45,31.11,68.89,2.3700,3,1.649,2021,2.4980,3,2),
(1942,107564,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,59,49.15,49.15,1.6200,2,1.455,2023,1.0443,2,2),
(1943,1403526,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2019,38,84.21,15.79,1.9360,2,0.750,2021,1.4920,2,1),
(1944,108441,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,45,51.11,48.89,3.3010,4,2.703,2023,3.3721,4,3),
(1945,105575,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2017,69,34.78,50.72,3.2170,4,2.782,2023,3.4053,4,3),
(1946,1386427,'ENGENHARIA AGRONÔMICA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,33,60.61,36.36,1.8660,2,1.194,2023,1.7286,2,2),
(1947,21442,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,40,7.50,45.00,2.7540,3,2.090,2023,1.8970,2,3),
(1948,80291,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,89,50.00,50.00,2.8015,3,2.206,2022,2.4449,3,3),
(1949,102021,'ESTÉTICA E COSMÉTICA','Estética e cosmética','Serviços','Privada','Presencial','Tecnologico',2017,75,61.33,38.67,4.4560,5,4.412,2023,4.5831,5,5),
(1950,1386527,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,93,62.37,31.18,2.5502,3,1.737,2022,2.2457,3,2),
(1951,79932,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,93,74.19,25.81,2.9860,4,2.218,2023,2.1226,3,3),
(1952,104051,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,185,73.51,26.49,2.6810,3,1.394,2023,2.0509,3,2),
(1953,79552,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,173,80.35,19.08,2.1620,3,1.867,2023,1.7523,2,2),
(1954,1387135,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,70,27.14,50.00,1.8189,2,2.068,2022,2.4852,3,3),
(1955,104530,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,43,81.40,18.60,1.6716,2,1.322,2022,0.9300,1,2),
(1956,1387311,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,75,18.67,22.67,2.8352,3,2.687,2022,2.1802,3,3),
(1957,75099,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,358,85.20,14.80,2.6990,3,1.579,2023,2.1426,3,2),
(1958,104684,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,42,61.90,38.10,2.4119,3,2.257,2022,2.8242,3,3),
(1959,75096,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,282,79.43,19.50,3.6220,4,2.965,2023,3.6037,4,4),
(1960,117604,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,77,46.75,53.25,1.7198,2,0.285,2022,1.5496,2,1),
(1961,118002,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2017,54,74.07,22.22,3.0430,4,2.983,2021,1.7960,2,4),
(1962,27,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2020,74,24.32,0.00,2.6910,3,2.024,2021,1.2910,2,3),
(1963,19934,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,74,83.78,16.22,2.6368,3,1.517,2022,1.5683,2,2),
(1964,44,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,63,19.05,50.79,3.5070,4,4.191,2023,3.4881,4,5),
(1965,29,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,35,22.86,17.14,3.2630,4,2.751,2021,2.4700,3,3),
(1966,1103712,'QUÍMICA','Química','Ciências naturais, matemática e estatística','Publica','Presencial','Bacharelado',2017,74,64.86,29.73,2.5590,3,1.033,2021,1.9800,3,2),
(1967,37,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2019,56,25.00,44.64,3.1090,4,3.599,2023,2.0795,3,4),
(1968,1103742,'CIÊNCIAS SOCIAIS','Ciências sociais','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,32,71.88,15.62,2.8290,3,1.973,2021,2.1640,3,3),
(1969,34,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2020,47,29.79,12.77,2.1800,3,1.409,2021,1.2970,2,2),
(1970,36,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2019,52,13.46,30.77,3.0370,4,2.695,2021,2.4440,3,3),
(1971,36,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2020,42,28.57,30.95,3.0370,4,2.695,2021,2.4440,3,3),
(1972,19759,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,43,60.47,39.53,2.9060,3,1.545,2021,2.1000,3,2),
(1973,34,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2019,55,34.55,21.82,2.1800,3,1.409,2021,1.2970,2,2),
(1974,37,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,56,28.57,10.71,3.1090,4,3.599,2023,2.0795,3,4),
(1975,19730,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,502,75.30,24.70,2.2080,3,2.069,2022,NULL,NULL,3),
(1976,1106707,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,491,70.06,29.94,2.0790,3,1.404,2023,0.8823,1,2),
(1977,44,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,56,7.14,28.57,3.5070,4,4.191,2023,3.4881,4,5),
(1978,32,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,31,22.58,38.71,2.5390,3,1.686,2021,1.7520,2,2),
(1979,16264,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2020,35,48.57,8.57,2.2280,3,1.340,2021,1.7220,2,2),
(1980,16265,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2020,37,48.65,24.32,2.1710,3,1.355,2021,1.5360,2,2),
(1981,1103711,'QUÍMICA','Química formação de professor','Educação','Publica','Presencial','Licenciatura',2017,75,76.00,22.67,3.4390,4,2.651,2021,3.1990,4,3),
(1982,20016,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,90,25.56,74.44,3.7000,4,2.954,2023,3.2672,4,4),
(1983,16264,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2019,81,48.15,18.52,2.2280,3,1.340,2021,1.7220,2,2),
(1984,16269,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,82,50.00,15.85,2.8870,3,2.159,2021,2.7160,3,3),
(1985,16,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,70,14.29,12.86,4.2420,5,4.180,2023,4.4036,5,5),
(1986,20474,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,63,46.03,49.21,1.9711,3,1.464,2022,1.4744,2,2),
(1987,17,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,54,18.52,14.81,3.7840,4,3.846,2023,3.5623,4,4),
(1988,16268,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2019,67,61.19,16.42,2.4630,3,1.484,2021,2.3580,3,2),
(1989,19,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2020,49,12.24,10.20,3.3830,4,2.807,2021,2.3240,3,3),
(1990,20472,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,120,42.50,57.50,2.3700,3,1.649,2021,2.4980,3,2),
(1991,1103426,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,57,56.14,31.58,2.9360,3,2.433,2021,1.8100,2,3),
(1992,20,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,54,7.41,16.67,3.4700,4,3.985,2023,3.0226,4,5),
(1993,16267,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,85,55.29,18.82,2.1360,3,0.866,2021,1.6900,2,1),
(1994,21,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,71,36.62,11.27,2.1204,3,1.731,2022,1.0823,2,2),
(1995,1103701,'CIÊNCIAS SOCIAIS','Ciências sociais formação de professor','Educação','Publica','Presencial','Licenciatura',2017,30,56.67,23.33,2.9390,3,3.144,2021,1.9480,3,4),
(1996,16266,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2019,82,57.32,17.07,2.7230,3,1.465,2021,2.6150,3,2),
(1997,23,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2020,30,26.67,13.33,3.4810,4,3.102,2021,2.6060,3,4),
(1998,20144,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,90,45.56,54.44,3.6630,4,3.422,2023,2.9431,3,4),
(1999,1103708,'FILOSOFIA','Filosofia formação de professor','Educação','Publica','Presencial','Licenciatura',2017,44,68.18,27.27,2.9800,4,1.998,2021,2.1440,3,3),
(2000,24,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,38,28.95,2.63,2.9150,3,2.424,2021,3.0670,4,3),
(2001,16265,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2019,84,36.90,41.67,2.1710,3,1.355,2021,1.5360,2,2),
(2002,1103710,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2017,97,75.26,19.59,3.2530,4,2.717,2021,2.6210,3,3),
(2003,26,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2020,55,25.45,10.91,2.8750,3,2.055,2021,2.1040,3,3),
(2004,20757,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,348,69.25,30.75,2.9345,3,1.990,2022,3.0966,4,3),
(2005,29,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,38,23.68,34.21,3.2630,4,2.751,2021,2.4700,3,3),
(2006,16276,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,35,62.86,0.00,2.7150,3,2.224,2021,2.6480,3,3),
(2007,20,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,58,12.07,56.90,3.4700,4,3.985,2023,3.0226,4,5),
(2008,16280,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,42,16.67,66.67,2.2529,3,2.683,2022,1.8506,2,3),
(2009,1128077,'SISTEMAS DE INFORMAÇÃO','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2017,92,37.36,13.19,2.4810,3,1.844,2021,2.2840,3,2),
(2010,19,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Publica','Presencial','Licenciatura',2019,54,16.67,16.67,3.3830,4,2.807,2021,2.3240,3,3),
(2011,16281,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,35,54.29,14.29,2.6959,3,2.369,2022,2.4288,3,3),
(2012,1128666,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2017,42,69.05,30.95,2.6550,3,2.158,2021,2.3810,3,3),
(2013,16817,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2020,787,82.21,13.47,2.1387,3,1.550,2022,1.5667,2,2),
(2014,1132433,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,63,38.10,61.90,2.0020,3,1.460,2023,1.9380,2,2),
(2015,17,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2019,67,17.91,47.76,3.7840,4,3.846,2023,3.5623,4,4),
(2016,16819,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2020,100,88.00,9.00,3.0510,4,2.640,2021,2.6950,3,3),
(2017,17056,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2016,73,50.68,46.58,2.5210,3,1.701,2021,2.0410,3,2),
(2018,1134353,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,41,48.78,51.22,3.0640,4,2.836,2023,3.3057,4,3),
(2019,16,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2019,81,17.28,25.93,4.2420,5,4.180,2023,4.4036,5,5),
(2020,16824,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2020,234,74.36,18.80,2.0710,3,1.417,2022,1.1927,2,2),
(2021,17053,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,89,64.04,30.34,3.0555,4,2.672,2022,2.7769,3,3),
(2022,1135688,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,103,89.32,9.71,1.8390,2,1.000,2023,1.9193,2,2),
(2023,16825,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,223,73.99,18.39,2.5830,3,1.721,2023,1.7672,2,2),
(2024,17052,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,167,63.47,29.34,3.0568,4,2.491,2022,2.9790,4,3),
(2025,16826,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,81,69.14,24.69,2.2910,3,1.362,2023,1.3638,2,2),
(2026,16827,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2020,175,61.14,35.43,2.5500,3,1.471,2023,1.6626,2,2),
(2027,1127343,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,104,40.78,24.27,3.0776,4,2.903,2022,3.3359,4,3),
(2028,16266,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2020,35,62.86,5.71,2.7230,3,1.465,2021,2.6150,3,2),
(2029,17313,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,128,55.47,44.53,1.4885,2,1.093,2022,1.5671,2,2),
(2030,21,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,79,24.05,15.19,2.1204,3,1.731,2022,1.0823,2,2),
(2031,1108440,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2017,58,72.41,27.59,3.0370,4,1.764,2021,2.7390,3,2),
(2032,27,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2019,99,28.28,10.10,2.6910,3,2.024,2021,1.2910,2,3),
(2033,16267,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,36,69.44,11.11,2.1360,3,0.866,2021,1.6900,2,1),
(2034,19594,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2016,40,60.00,40.00,3.8750,4,2.545,2021,4.1430,5,3),
(2035,1111393,'SECRETARIADO EXECUTIVO','Secretariado','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,70,25.71,45.71,1.6764,2,1.848,2022,0.4991,1,2),
(2036,16268,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2020,39,58.97,17.95,2.4630,3,1.484,2021,2.3580,3,2),
(2037,19592,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,41,34.15,65.85,1.2208,2,0.807,2022,0.7976,1,1),
(2038,26,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2019,87,24.14,17.24,2.8750,3,2.055,2021,2.1040,3,3),
(2039,1116939,'ENGENHARIA ELÉTRICA','Engenharia elétrica','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,164,85.37,14.02,1.6690,2,0.537,2023,NULL,NULL,1),
(2040,16269,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,37,45.95,5.41,2.8870,3,2.159,2021,2.7160,3,3),
(2041,18473,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,376,82.18,17.55,2.4090,3,1.612,2023,2.0737,3,2),
(2042,16270,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2020,37,51.35,21.62,2.4690,3,2.175,2021,2.4550,3,3),
(2043,18472,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2016,110,34.55,65.45,2.4880,3,2.439,2023,2.8389,3,3),
(2044,25,'HISTÓRIA','História formação de professor','Educação','Publica','Presencial','Licenciatura',2019,34,32.35,11.76,3.3000,4,2.436,2021,3.0120,4,3),
(2045,16271,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2020,39,66.67,12.82,2.7030,3,2.282,2021,2.2960,3,3),
(2046,18471,'ARQUITETURA E URBANISMO','Arquitetura e urbanismo','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2016,346,80.64,18.79,2.2890,3,1.523,2023,1.4595,2,2),
(2047,1120548,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,99,89.90,10.10,3.3163,4,1.864,2022,2.5916,3,2),
(2048,24,'GEOGRAFIA','Geografia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,51,31.37,15.69,2.9150,3,2.424,2021,3.0670,4,3),
(2049,16272,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2020,37,83.78,0.00,2.4070,3,1.684,2021,2.5220,3,2),
(2050,18354,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2016,45,84.44,15.56,2.8950,3,1.924,2021,2.3470,3,2),
(2051,1121415,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,48,33.33,54.17,2.4800,3,2.694,2023,2.0129,3,3),
(2052,16273,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2020,35,77.14,2.86,2.0970,3,1.244,2021,2.2300,3,2),
(2053,18281,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,49,46.94,53.06,1.6464,2,1.657,2022,1.2596,2,2),
(2054,23,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2019,46,26.09,47.83,3.4810,4,3.102,2021,2.6060,3,4),
(2055,1122942,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,101,73.27,26.73,4.1230,5,3.668,2021,3.9700,5,4),
(2056,16274,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2020,40,65.00,17.50,2.3570,3,0.765,2021,1.9050,2,1),
(2057,17594,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,739,50.81,48.78,3.4163,4,2.721,2022,3.2756,4,3),
(2058,1122943,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Privada','Presencial','Bacharelado',2017,204,68.63,30.39,3.2270,4,2.036,2023,2.0737,3,3),
(2059,16275,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2020,38,73.68,13.16,2.6570,3,1.746,2021,2.5590,3,2),
(2060,16859,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,169,86.98,11.24,2.3188,3,0.741,2022,1.5061,2,1),
(2061,5000750,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,103,49.51,45.63,1.9664,3,2.007,2022,2.8651,3,3),
(2062,120771,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,41,41.46,58.54,2.3050,3,1.506,2021,2.6820,3,2),
(2063,16834,'MEDICINA VETERINÁRIA','Medicina veterinária','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2019,206,57.56,37.07,2.2030,3,1.755,2023,1.2878,2,2),
(2064,5000953,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,101,89.11,6.93,1.6395,2,1.645,2022,1.9747,3,2),
(2065,49094,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2016,365,68.22,31.78,1.7320,2,1.229,2023,0.1963,1,2),
(2066,121537,'FÍSICA','Física formação de professor','Educação','Publica','Presencial','Licenciatura',2017,36,75.00,11.11,1.8680,2,0.896,2021,2.2560,3,1),
(2067,5001033,'MEDICINA','Medicina','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,156,23.72,39.74,3.2700,4,2.978,2023,3.2416,4,4),
(2068,49045,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,136,76.30,23.70,2.2739,3,1.445,2022,2.2226,3,2),
(2069,16830,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,256,86.72,12.50,2.7471,3,1.815,2022,2.4941,3,2),
(2070,48385,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,103,77.45,22.55,1.5291,2,0.395,2022,NULL,NULL,1),
(2071,122150,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Tecnologico',2017,30,66.67,30.00,1.9670,3,1.762,2021,1.7810,2,2),
(2072,5001171,'GESTÃO DE RECURSOS HUMANOS','Gestão de pessoas','Negócios, administração e direito','Privada','Presencial','Tecnologico',2019,56,78.18,14.55,2.8582,3,2.650,2022,2.7859,3,3),
(2073,48302,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,78,20.51,73.08,2.4333,3,2.695,2022,2.4556,3,3),
(2074,16829,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,256,92.19,7.42,2.9769,4,2.303,2022,2.7083,3,3),
(2075,5001172,'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS','Sistemas de informação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2019,59,64.41,27.12,2.6660,3,1.985,2021,2.5460,3,3),
(2076,48299,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,79,36.71,49.37,1.9702,3,1.894,2022,1.5406,2,2),
(2077,122749,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,53,28.30,58.49,2.6090,3,2.465,2023,2.6489,3,3),
(2078,16827,'ODONTOLOGIA','Odontologia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,238,52.94,46.22,2.5500,3,1.471,2023,1.6626,2,2),
(2079,47922,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,89,68.54,31.46,3.0141,4,1.925,2022,2.3408,3,2),
(2080,46972,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Bacharelado',2016,65,83.08,16.92,1.6670,2,1.111,2021,1.3650,2,2),
(2081,16826,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,117,79.49,16.24,2.2910,3,1.362,2023,1.3638,2,2),
(2082,51558,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,81,55.56,38.27,3.4470,4,3.326,2023,4.0345,5,4),
(2083,5001274,'LOGÍSTICA','Logística','Negócios, administração e direito','Privada','Presencial','Tecnologico',2019,72,72.22,25.00,2.4533,3,1.781,2022,2.0435,3,2),
(2084,119816,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2017,31,38.71,61.29,3.3740,4,3.013,2022,4.1901,5,4),
(2085,16946,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,94,68.09,29.79,3.5303,4,2.914,2022,2.7639,3,3),
(2086,51719,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,82,79.27,20.73,2.6929,3,1.331,2022,1.8773,2,2),
(2087,118380,'EDUCAÇÃO FÍSICA','Educação física','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,307,85.34,14.66,2.8110,3,1.388,2021,2.3080,3,2),
(2088,51648,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,63,61.90,34.92,2.9660,4,1.196,2023,2.5331,3,2),
(2089,16945,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,84,63.10,35.71,3.8245,4,3.284,2022,3.4286,4,4),
(2090,51638,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,78,28.21,69.23,2.9800,4,1.971,2023,2.2701,3,3),
(2091,118659,'FARMÁCIA','Farmácia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,52,44.23,55.77,2.8870,3,1.736,2023,3.0612,4,2),
(2092,16868,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,84,60.71,35.71,1.7597,2,1.112,2022,0.5776,1,2),
(2093,118762,'EDUCAÇÃO FÍSICA','Educação física formação de professor','Educação','Privada','Presencial','Licenciatura',2017,34,67.65,32.35,1.2740,2,1.751,2021,1.4590,2,2),
(2094,51622,'ENGENHARIA DE PRODUÇÃO AGROINDUSTRIAL','Engenharia de produção','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2016,69,78.26,21.74,3.3310,4,1.630,2023,3.4620,4,2),
(2095,16867,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,40,62.50,35.00,2.4256,3,1.215,2022,2.0866,3,2),
(2096,51618,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2016,93,69.89,23.66,2.4143,3,1.468,2022,2.0968,3,2),
(2097,51615,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,94,77.66,22.34,3.4216,4,2.947,2022,3.6105,4,4),
(2098,118852,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,99,67.68,32.32,1.9650,3,0.782,2023,1.5385,2,1),
(2099,16863,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2019,182,47.80,52.20,2.3930,3,0.975,2021,2.2530,3,2),
(2100,51613,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,85,30.95,55.95,3.0190,4,2.531,2023,2.0488,3,3),
(2101,118888,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,117,80.34,18.80,3.6180,4,3.041,2023,3.6531,4,4),
(2102,51611,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,69,52.17,47.83,2.6185,3,2.065,2022,NULL,NULL,3),
(2103,16860,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,290,82.07,17.59,2.1231,3,1.450,2022,1.6690,2,2),
(2104,119062,'NUTRIÇÃO','Nutrição','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,45,37.78,62.22,2.5900,3,1.913,2023,2.4527,3,2),
(2105,51609,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2016,84,41.67,52.38,2.9280,3,2.232,2023,2.3183,3,3),
(2106,16270,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2019,75,61.33,24.00,2.4690,3,2.175,2021,2.4550,3,3),
(2107,16825,'FISIOTERAPIA','Fisioterapia','Saúde e bem-estar','Privada','Presencial','Bacharelado',2019,297,71.38,24.24,2.5830,3,1.721,2023,1.7672,2,2),
(2108,16275,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,78,67.95,8.97,2.6570,3,1.746,2021,2.5590,3,2),
(2109,3,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2020,49,16.33,20.41,3.4290,4,4.352,2023,4.2072,5,5),
(2110,6,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2020,89,12.36,41.57,3.9550,4,4.803,2021,4.0850,5,5),
(2111,16274,'LETRAS','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2019,34,58.82,20.59,2.3570,3,0.765,2021,1.9050,2,1),
(2112,7,'SERVIÇO SOCIAL','Serviço social','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,71,11.27,18.31,3.5840,4,3.421,2022,3.2561,4,4),
(2113,16273,'LETRAS - PORTUGUÊS E INGLÊS','Letras português inglês formação de professor','Educação','Publica','Presencial','Licenciatura',2019,79,72.15,16.46,2.0970,3,1.244,2021,2.2300,3,2),
(2114,8,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,73,16.44,38.36,3.1976,4,3.370,2022,2.5510,3,4),
(2115,9,'AGRONOMIA','Agronomia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,76,17.11,7.89,3.4820,4,3.827,2023,3.3161,4,4),
(2116,21552,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,53,81.13,18.87,1.7087,2,0.034,2022,NULL,NULL,1),
(2117,16272,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2019,76,81.58,6.58,2.4070,3,1.684,2021,2.5220,3,2),
(2118,10,'ENGENHARIA FLORESTAL','Engenharia florestal','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2020,75,16.00,4.00,3.0640,4,2.774,2023,2.6578,3,3),
(2119,21442,'FARMÁCIA','Farmácia','Saúde e bem-estar','Publica','Presencial','Bacharelado',2016,40,55.00,42.50,2.7540,3,2.090,2023,1.8970,2,3),
(2120,1069962,'ENFERMAGEM','Enfermagem','Saúde e bem-estar','Privada','Presencial','Bacharelado',2017,56,71.43,28.57,2.2790,3,1.179,2023,2.4596,3,2),
(2121,16271,'PEDAGOGIA','Pedagogia','Educação','Publica','Presencial','Licenciatura',2019,83,66.27,21.69,2.7030,3,2.282,2021,2.2960,3,3),
(2122,12,'MEDICINA','Medicina','Saúde e bem-estar','Publica','Presencial','Bacharelado',2020,73,5.48,0.00,2.7920,3,3.492,2023,1.9335,2,4),
(2123,1072168,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Privada','Presencial','Bacharelado',2017,34,58.82,38.24,2.6950,3,1.881,2023,2.7870,3,2),
(2124,13,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,116,13.79,34.48,3.4073,4,3.726,2022,2.7725,3,4),
(2125,2,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2020,118,12.71,16.10,2.5657,3,1.772,2022,1.2492,2,2),
(2126,44461,'ADMINISTRAÇÃO','Administração','Negócios, administração e direito','Publica','Presencial','Bacharelado',2016,80,53.75,37.50,3.0520,4,2.339,2022,3.0818,4,3),
(2127,16276,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2019,78,56.41,10.26,2.7150,3,2.224,2021,2.6480,3,3),
(2128,1,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2020,100,7.00,59.00,3.8894,4,4.788,2022,3.3165,4,5),
(2129,5001296,'REDES DE COMPUTADORES','Redes de computadores','Computação e Tecnologias da Informação e Comunicação (TIC)','Privada','Presencial','Tecnologico',2019,52,88.46,11.54,1.9830,3,2.111,2021,1.0260,2,3),
(2130,43044,'CIÊNCIA DA COMPUTAÇÃO','Ciência da computação','Computação e Tecnologias da Informação e Comunicação (TIC)','Publica','Presencial','Bacharelado',2016,77,77.92,12.99,2.0600,3,1.171,2021,2.6150,3,2),
(2131,16824,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2019,354,83.05,16.95,2.0710,3,1.417,2022,1.1927,2,2),
(2132,43037,'MATEMÁTICA','Matemática formação de professor','Educação','Publica','Presencial','Licenciatura',2016,68,64.71,29.41,2.5450,3,1.227,2021,2.4430,3,2),
(2133,41690,'CIÊNCIAS BIOLÓGICAS','Biologia formação de professor','Educação','Publica','Presencial','Licenciatura',2016,43,81.40,18.60,2.8850,3,2.355,2021,2.1300,3,3),
(2134,16819,'PEDAGOGIA','Pedagogia','Educação','Privada','Presencial','Licenciatura',2019,300,85.67,14.33,3.0510,4,2.640,2021,2.6950,3,3),
(2135,123052,'CIÊNCIAS ECONÔMICAS','Economia','Ciências sociais, comunicação e informação','Publica','Presencial','Bacharelado',2017,94,46.81,28.72,3.0518,4,1.590,2022,2.5343,3,2),
(2136,123055,'ENGENHARIA CIVIL','Engenharia civil','Engenharia, produção e construção','Publica','Presencial','Bacharelado',2017,65,35.38,56.92,3.1590,4,3.171,2023,3.1264,4,4),
(2137,40677,'COMUNICAÇÃO SOCIAL - PUBLICIDADE E PROPAGANDA','Publicidade e propaganda','Negócios, administração e direito','Privada','Presencial','Bacharelado',2016,35,62.86,37.14,3.6742,4,3.667,2022,3.3610,4,4),
(2138,16817,'DIREITO','Direito','Negócios, administração e direito','Privada','Presencial','Bacharelado',2019,1108,81.86,16.97,2.1387,3,1.550,2022,1.5667,2,2),
(2139,123389,'PSICOLOGIA','Psicologia','Ciências sociais, comunicação e informação','Privada','Presencial','Bacharelado',2017,81,83.95,16.05,3.5186,4,2.917,2022,3.8598,4,3),
(2140,16281,'CIÊNCIAS CONTÁBEIS','Contabilidade','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,77,38.96,28.57,2.6959,3,2.369,2022,2.4288,3,3),
(2141,123427,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2017,65,35.38,64.62,3.1982,4,3.708,2022,2.9815,4,4),
(2142,16280,'DIREITO','Direito','Negócios, administração e direito','Publica','Presencial','Bacharelado',2019,83,25.30,49.40,2.2529,3,2.683,2022,1.8506,2,3),
(2143,123620,'ZOOTECNIA','Zootecnia','Agricultura, silvicultura, pesca e veterinária','Publica','Presencial','Bacharelado',2017,89,57.30,38.20,2.9970,4,2.771,2023,1.9984,3,3),
(2144,25949,'LETRAS - LÍNGUA PORTUGUESA E LITERATURAS DE LíNGUA PORTUGUESA','Letras português formação de professor','Educação','Publica','Presencial','Licenciatura',2016,49,37.50,58.33,2.8810,3,2.724,2021,1.9680,3,3);
/*!40000 ALTER TABLE `p08_curso_nota_x_desistencia` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p08_desistencia_por_faixa_cpc`
--

DROP TABLE IF EXISTS `p08_desistencia_por_faixa_cpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p08_desistencia_por_faixa_cpc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cpc_faixa` int(11) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `pct_desistiu_medio` decimal(6,2) DEFAULT NULL,
  `pct_concluiu_medio` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p08_desistencia_por_faixa_cp_cpc_faixa` (`cpc_faixa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p08_desistencia_por_faixa_cpc`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p08_desistencia_por_faixa_cpc` WRITE;
/*!40000 ALTER TABLE `p08_desistencia_por_faixa_cpc` DISABLE KEYS */;
INSERT INTO `p08_desistencia_por_faixa_cpc` VALUES
(1,1,2,204,37.75,61.76),
(2,2,77,23150,59.88,35.51),
(3,3,254,118666,63.52,29.33),
(4,4,118,52768,52.13,36.78),
(5,5,10,3473,57.02,36.30);
/*!40000 ALTER TABLE `p08_desistencia_por_faixa_cpc` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p08_faixa_cpc_por_coorte`
--

DROP TABLE IF EXISTS `p08_faixa_cpc_por_coorte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p08_faixa_cpc_por_coorte` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coorte` int(11) DEFAULT NULL,
  `cpc_faixa` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `pct_desistiu_medio` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p08_faixa_cpc_por_coorte_coorte` (`coorte`),
  KEY `ix_p08_faixa_cpc_por_coorte_cpc_faixa` (`cpc_faixa`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p08_faixa_cpc_por_coorte`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p08_faixa_cpc_por_coorte` WRITE;
/*!40000 ALTER TABLE `p08_faixa_cpc_por_coorte` DISABLE KEYS */;
INSERT INTO `p08_faixa_cpc_por_coorte` VALUES
(1,2015,1,62,41.94),
(2,2015,2,3594,58.31),
(3,2015,3,18938,60.78),
(4,2015,4,9973,57.51),
(5,2015,5,977,63.32),
(6,2016,1,77,32.47),
(7,2016,2,4175,59.53),
(8,2016,3,22499,67.26),
(9,2016,4,9616,57.13),
(10,2016,5,565,51.50),
(11,2017,1,34,14.71),
(12,2017,2,4591,59.62),
(13,2017,3,22827,66.70),
(14,2017,4,9004,55.84),
(15,2017,5,576,55.56),
(16,2018,1,31,67.74),
(17,2018,2,4319,59.84),
(18,2018,3,21449,60.79),
(19,2018,4,9576,48.01),
(20,2018,5,576,60.94),
(21,2019,2,3537,60.66),
(22,2019,3,20096,62.12),
(23,2019,4,8886,47.32),
(24,2019,5,449,51.57),
(25,2020,2,2934,61.79),
(26,2020,3,12857,62.13),
(27,2020,4,5713,42.87),
(28,2020,5,330,50.91);
/*!40000 ALTER TABLE `p08_faixa_cpc_por_coorte` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p08_modelo_cpc_controlado`
--

DROP TABLE IF EXISTS `p08_modelo_cpc_controlado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p08_modelo_cpc_controlado` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `termo` varchar(32) DEFAULT NULL,
  `coeficiente` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p08_modelo_cpc_controlado`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p08_modelo_cpc_controlado` WRITE;
/*!40000 ALTER TABLE `p08_modelo_cpc_controlado` DISABLE KEYS */;
INSERT INTO `p08_modelo_cpc_controlado` VALUES
(1,'intercepto',75.5517),
(2,'cpc_continuo',-3.7409),
(3,'rede_Publica',-22.2062),
(4,'grau_academico_Licenciatura',4.9430),
(5,'grau_academico_Tecnologico',3.6141),
(6,'r2',0.2395),
(7,'n',2144.0000);
/*!40000 ALTER TABLE `p08_modelo_cpc_controlado` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p09_cursos_mt_enade2025`
--

DROP TABLE IF EXISTS `p09_cursos_mt_enade2025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p09_cursos_mt_enade2025` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ano` int(11) DEFAULT NULL,
  `co_area` int(11) DEFAULT NULL,
  `area_avaliacao` varchar(32) DEFAULT NULL,
  `grau_academico` varchar(16) DEFAULT NULL,
  `co_ies` int(11) DEFAULT NULL,
  `no_ies` varchar(80) DEFAULT NULL,
  `sg_ies` varchar(32) DEFAULT NULL,
  `organizacao_academica` varchar(64) DEFAULT NULL,
  `categoria_administrativa` varchar(32) DEFAULT NULL,
  `co_curso` int(11) DEFAULT NULL,
  `modalidade` varchar(32) DEFAULT NULL,
  `co_municipio` int(11) DEFAULT NULL,
  `municipio` varchar(48) DEFAULT NULL,
  `sg_uf` varchar(16) DEFAULT NULL,
  `concluintes_inscritos` int(11) DEFAULT NULL,
  `concluintes_participantes` int(11) DEFAULT NULL,
  `concluintes_acima_corte` int(11) DEFAULT NULL,
  `pct_acima_corte` decimal(7,2) DEFAULT NULL,
  `enade_faixa` int(11) DEFAULT NULL,
  `cebas` varchar(16) DEFAULT NULL,
  `modalidade_norm` varchar(16) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `uf_alvo` tinyint(1) DEFAULT NULL,
  `conjunto` varchar(16) DEFAULT NULL,
  `em_mt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p09_cursos_mt_enade2025_grau_academico` (`grau_academico`),
  KEY `ix_p09_cursos_mt_enade2025_co_ies` (`co_ies`),
  KEY `ix_p09_cursos_mt_enade2025_co_curso` (`co_curso`),
  KEY `ix_p09_cursos_mt_enade2025_modalidade` (`modalidade`),
  KEY `ix_p09_cursos_mt_enade2025_modalidade_norm` (`modalidade_norm`),
  KEY `ix_p09_cursos_mt_enade2025_rede` (`rede`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p09_cursos_mt_enade2025`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p09_cursos_mt_enade2025` WRITE;
/*!40000 ALTER TABLE `p09_cursos_mt_enade2025` DISABLE KEYS */;
INSERT INTO `p09_cursos_mt_enade2025` VALUES
(1,2025,702,'MATEMÁTICA','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',114388,'Presencial',5102637,'Campo Novo do Parecis','MT',5,2,2,100.00,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(2,2025,1402,'FÍSICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',100777,'Presencial',5107909,'Sinop','MT',3,3,3,100.00,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(3,2025,1502,'QUÍMICA','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',1368260,'Presencial',5107040,'Primavera do Leste','MT',7,4,4,100.00,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(4,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',41690,'Presencial',5106653,'Pontal do Araguaia','MT',3,3,3,100.00,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(5,2025,3502,'EDUCAÇÃO FÍSICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',19,'Presencial',5103403,'Cuiabá','MT',27,8,8,100.00,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(6,2025,5402,'CIÊNCIAS SOCIAIS','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',1103701,'Presencial',5103403,'Cuiabá','MT',13,10,10,100.00,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(7,2025,3002,'GEOGRAFIA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',1103426,'Presencial',5103403,'Cuiabá','MT',33,24,23,95.80,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(8,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',29,'Presencial',5103403,'Cuiabá','MT',27,23,22,95.70,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(9,2025,2001,'PEDAGOGIA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',6,'Presencial',5103403,'Cuiabá','MT',77,68,64,94.10,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(10,2025,906,'LETRAS-PORTUGUÊS E ESPANHOL','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',26025,'Presencial',5103403,'Cuiabá','MT',16,14,13,92.90,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(11,2025,2402,'HISTÓRIA','LICENCIATURA',25352,'Universidade Federal de Rondonópolis','UFR','Universidade','Pública Federal',25,'Presencial',5107602,'Rondonópolis','MT',18,13,12,92.30,5,'Não','Presencial','Publica',1,'Licenciaturas',1),
(12,2025,3002,'GEOGRAFIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1185732,'Presencial',5107909,'Sinop','MT',16,16,14,87.50,4,'Não','Presencial','Publica',1,'Licenciaturas',1),
(13,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',58506,'Presencial',5107958,'Tangará da Serra','MT',49,15,13,86.70,4,'Não','Presencial','Publica',1,'Licenciaturas',1),
(14,2025,905,'LETRAS-PORTUGUÊS E INGLÊS','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',22118,'Presencial',5103403,'Cuiabá','MT',18,18,15,83.30,4,'Não','Presencial','Publica',1,'Licenciaturas',1),
(15,2025,2001,'PEDAGOGIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16271,'Presencial',5107909,'Sinop','MT',22,21,17,81.00,4,'Não','Presencial','Publica',1,'Licenciaturas',1),
(16,2025,2001,'PEDAGOGIA','LICENCIATURA',3303,'Centro Universitário Invest','UNIVEST','Centro Universitário','Privada com fins lucrativos​',16863,'Presencial',5103403,'Cuiabá','MT',7,5,4,80.00,4,'Não','Presencial','Privada',1,'Licenciaturas',1),
(17,2025,2001,'PEDAGOGIA','LICENCIATURA',5670,'CENTRO UNIVERSITÁRIO DO VALE DO ARAGUAIA','UNIVAR','Centro Universitário','Privada com fins lucrativos​',17120,'Presencial',5101803,'Barra do Garças','MT',18,15,12,80.00,4,'Não','Presencial','Privada',1,'Licenciaturas',1),
(18,2025,2402,'HISTÓRIA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',1103710,'Presencial',5103403,'Cuiabá','MT',61,50,40,80.00,4,'Não','Presencial','Publica',1,'Licenciaturas',1),
(19,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16276,'Presencial',5100250,'Alta Floresta','MT',30,13,10,76.90,4,'Não','Presencial','Publica',1,'Licenciaturas',1),
(20,2025,904,'LETRAS-PORTUGUÊS','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',25903,'Presencial',5103403,'Cuiabá','MT',16,12,9,75.00,4,'Não','Presencial','Publica',1,'Licenciaturas',1),
(21,2025,2001,'PEDAGOGIA','LICENCIATURA',794,'CENTRO UNIVERSITÁRIO DE VÁRZEA GRANDE','UNIVAG','Centro Universitário','Privada sem fins lucrativos​',19594,'Presencial',5108402,'Várzea Grande','MT',5,4,3,75.00,4,'Não','Presencial','Privada',1,'Licenciaturas',1),
(22,2025,2001,'PEDAGOGIA','LICENCIATURA',1936,'CENTRO UNIVERSITÁRIO LA SALLE','UNILASALLE - LUCAS','Centro Universitário','Privada sem fins lucrativos​',1105780,'Presencial',5105259,'Lucas do Rio Verde','MT',5,4,3,75.00,4,'Sim','Presencial','Privada',1,'Licenciaturas',1),
(23,2025,2001,'PEDAGOGIA','LICENCIATURA',25352,'Universidade Federal de Rondonópolis','UFR','Universidade','Pública Federal',23,'Presencial',5107602,'Rondonópolis','MT',21,19,14,73.70,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(24,2025,904,'LETRAS-PORTUGUÊS','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',25949,'Presencial',5101803,'Barra do Garças','MT',27,26,19,73.10,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(25,2025,702,'MATEMÁTICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',26,'Presencial',5103403,'Cuiabá','MT',13,11,8,72.70,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(26,2025,702,'MATEMÁTICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',100775,'Presencial',5107909,'Sinop','MT',8,7,5,71.40,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(27,2025,3502,'EDUCAÇÃO FÍSICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',106052,'Presencial',5106653,'Pontal do Araguaia','MT',17,14,10,71.40,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(28,2025,3002,'GEOGRAFIA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',116690,'Presencial',5101803,'Barra do Garças','MT',18,16,11,68.80,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(29,2025,1402,'FÍSICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',101184,'Presencial',5106653,'Pontal do Araguaia','MT',3,3,2,66.70,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(30,2025,1502,'QUÍMICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',1103711,'Presencial',5103403,'Cuiabá','MT',6,6,4,66.70,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(31,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',25352,'Universidade Federal de Rondonópolis','UFR','Universidade','Pública Federal',32,'Presencial',5107602,'Rondonópolis','MT',17,15,10,66.70,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(32,2025,3502,'EDUCAÇÃO FÍSICA','LICENCIATURA',1936,'CENTRO UNIVERSITÁRIO LA SALLE','UNILASALLE - LUCAS','Centro Universitário','Privada sem fins lucrativos​',1128666,'Presencial',5105259,'Lucas do Rio Verde','MT',6,3,2,66.70,3,'Sim','Presencial','Privada',1,'Licenciaturas',1),
(33,2025,4301,'MÚSICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',94331,'Presencial',5103403,'Cuiabá','MT',11,8,5,62.50,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(34,2025,904,'LETRAS-PORTUGUÊS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1606861,'Presencial',5105101,'Juara','MT',13,13,8,61.50,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(35,2025,2001,'PEDAGOGIA','LICENCIATURA',19635,'Faculdade de Ensino Superior Pelegrino Cipriani','FASPEC','Faculdade','Privada sem fins lucrativos​',1416631,'EaD',5103403,'Cuiabá','MT',17,13,8,61.50,3,'Não','EAD','Privada',1,'Licenciaturas',1),
(36,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16269,'Presencial',5102504,'Cáceres','MT',39,31,19,61.30,3,'Não','Presencial','Publica',1,'Licenciaturas',1),
(37,2025,906,'LETRAS-PORTUGUÊS E ESPANHOL','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1385357,'EaD',5102504,'Cáceres','MT',64,22,13,59.10,2,'Não','EAD','Publica',1,'Licenciaturas',1),
(38,2025,2001,'PEDAGOGIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1621182,'Presencial',5107602,'Rondonópolis','MT',19,19,11,57.90,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(39,2025,1502,'QUÍMICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',100776,'Presencial',5107909,'Sinop','MT',7,7,4,57.10,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(40,2025,1502,'QUÍMICA','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',1576514,'Presencial',5102504,'Cáceres','MT',9,7,4,57.10,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(41,2025,3202,'FILOSOFIA','LICENCIATURA',15433,'FACULDADE CATÓLICA DE MATO GROSSO','FACC-MT','Faculdade','Privada sem fins lucrativos​',1259107,'Presencial',5108402,'Várzea Grande','MT',17,15,8,53.30,2,'Não','Presencial','Privada',1,'Licenciaturas',1),
(42,2025,3502,'EDUCAÇÃO FÍSICA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',96415,'Presencial',5102504,'Cáceres','MT',105,45,24,53.30,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(43,2025,2001,'PEDAGOGIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1680853,'Presencial',5104500,'Indiavaí','MT',31,29,15,51.70,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(44,2025,905,'LETRAS-PORTUGUÊS E INGLÊS','LICENCIATURA',794,'CENTRO UNIVERSITÁRIO DE VÁRZEA GRANDE','UNIVAG','Centro Universitário','Privada sem fins lucrativos​',30537,'Presencial',5108402,'Várzea Grande','MT',4,2,1,50.00,2,'Não','Presencial','Privada',1,'Licenciaturas',1),
(45,2025,1502,'QUÍMICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',106050,'Presencial',5106653,'Pontal do Araguaia','MT',2,2,1,50.00,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(46,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',1160425,'Presencial',5105150,'Juína','MT',37,2,1,50.00,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(47,2025,3002,'GEOGRAFIA','LICENCIATURA',25352,'Universidade Federal de Rondonópolis','UFR','Universidade','Pública Federal',24,'Presencial',5107602,'Rondonópolis','MT',11,10,5,50.00,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(48,2025,3202,'FILOSOFIA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',1103708,'Presencial',5103403,'Cuiabá','MT',5,4,2,50.00,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(49,2025,3502,'EDUCAÇÃO FÍSICA','LICENCIATURA',1374,'FACULDADE DE GUARANTÃ DO NORTE','UNIFAMA','Faculdade','Privada com fins lucrativos​',1466182,'Presencial',5104104,'Guarantã do Norte','MT',2,2,1,50.00,2,'Não','Presencial','Privada',1,'Licenciaturas',1),
(50,2025,6407,'Letras - Inglês','LICENCIATURA',25352,'Universidade Federal de Rondonópolis','UFR','Universidade','Pública Federal',101054,'Presencial',5107602,'Rondonópolis','MT',10,10,5,50.00,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(51,2025,904,'LETRAS-PORTUGUÊS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',17056,'Presencial',5107958,'Tangará da Serra','MT',44,33,16,48.50,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(52,2025,904,'LETRAS-PORTUGUÊS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1481722,'Presencial',5107602,'Rondonópolis','MT',32,21,10,47.60,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(53,2025,2001,'PEDAGOGIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16265,'Presencial',5102504,'Cáceres','MT',22,21,10,47.60,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(54,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16275,'Presencial',5106257,'Nova Xavantina','MT',30,15,7,46.70,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(55,2025,3502,'EDUCAÇÃO FÍSICA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',71115,'Presencial',5103502,'Diamantino','MT',30,26,12,46.20,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(56,2025,2001,'PEDAGOGIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1385361,'EaD',5102504,'Cáceres','MT',20,9,4,44.40,2,'Não','EAD','Publica',1,'Licenciaturas',1),
(57,2025,2001,'PEDAGOGIA','LICENCIATURA',15382,'FACULDADE AJES','AJES','Faculdade','Privada com fins lucrativos​',1396156,'EaD',5105150,'Juína','MT',21,18,8,44.40,2,'Não','EAD','Privada',1,'Licenciaturas',1),
(58,2025,3502,'EDUCAÇÃO FÍSICA','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',1484336,'Presencial',5103403,'Cuiabá','MT',21,14,6,42.90,2,'Não','Presencial','Publica',1,'Licenciaturas',1),
(59,2025,2001,'PEDAGOGIA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',105652,'EaD',5103403,'Cuiabá','MT',12,12,5,41.70,2,'Não','EAD','Publica',1,'Licenciaturas',1),
(60,2025,3502,'EDUCAÇÃO FÍSICA','LICENCIATURA',3303,'Centro Universitário Invest','UNIVEST','Centro Universitário','Privada com fins lucrativos​',1386599,'Presencial',5103403,'Cuiabá','MT',6,5,2,40.00,2,'Não','Presencial','Privada',1,'Licenciaturas',1),
(61,2025,702,'MATEMÁTICA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16272,'Presencial',5107909,'Sinop','MT',9,8,3,37.50,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(62,2025,1502,'QUÍMICA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1621218,'Presencial',5107602,'Rondonópolis','MT',17,16,6,37.50,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(63,2025,2001,'PEDAGOGIA','LICENCIATURA',1952,'CENTRO UNIVERSITÁRIO CATHEDRAL',NULL,'Centro Universitário','Privada com fins lucrativos​',1551266,'EaD',5101803,'Barra do Garças','MT',15,11,4,36.40,1,'Não','EAD','Privada',1,'Licenciaturas',1),
(64,2025,3002,'GEOGRAFIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1404231,'EaD',5102504,'Cáceres','MT',43,11,4,36.40,1,'Não','EAD','Publica',1,'Licenciaturas',1),
(65,2025,1402,'FÍSICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',27,'Presencial',5103403,'Cuiabá','MT',25,20,7,35.00,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(66,2025,2001,'PEDAGOGIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',80922,'Presencial',5105101,'Juara','MT',30,26,9,34.60,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(67,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',1342497,'Presencial',5103353,'Confresa','MT',9,3,1,33.30,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(68,2025,1602,'CIÊNCIAS BIOLÓGICAS','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',1438391,'Presencial',5104807,'Jaciara','MT',7,6,2,33.30,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(69,2025,2402,'HISTÓRIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16266,'Presencial',5102504,'Cáceres','MT',50,39,13,33.30,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(70,2025,2501,'ARTES VISUAIS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1404229,'EaD',5102504,'Cáceres','MT',16,9,3,33.30,1,'Não','EAD','Publica',1,'Licenciaturas',1),
(71,2025,905,'LETRAS-PORTUGUÊS E INGLÊS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16270,'Presencial',5107909,'Sinop','MT',45,34,11,32.40,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(72,2025,904,'LETRAS-PORTUGUÊS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16264,'Presencial',5102504,'Cáceres','MT',68,29,9,31.00,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(73,2025,3002,'GEOGRAFIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16267,'Presencial',5102504,'Cáceres','MT',36,29,9,31.00,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(74,2025,2001,'PEDAGOGIA','LICENCIATURA',1162,'FACULDADE DE ALTA FLORESTA','FAF','Faculdade','Privada sem fins lucrativos​',1407981,'EaD',5100250,'Alta Floresta','MT',23,21,6,28.60,1,'Não','EAD','Privada',1,'Licenciaturas',1),
(75,2025,2001,'PEDAGOGIA','LICENCIATURA',15433,'FACULDADE CATÓLICA DE MATO GROSSO','FACC-MT','Faculdade','Privada sem fins lucrativos​',1332677,'Presencial',5108402,'Várzea Grande','MT',18,18,5,27.80,1,'Não','Presencial','Privada',1,'Licenciaturas',1),
(76,2025,2001,'PEDAGOGIA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1676991,'Presencial',5105507,'Vila Bela da Santíssima Trindade','MT',29,29,8,27.60,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(77,2025,904,'LETRAS-PORTUGUÊS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16274,'Presencial',5100300,'Alto Araguaia','MT',37,15,4,26.70,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(78,2025,904,'LETRAS-PORTUGUÊS','LICENCIATURA',25352,'Universidade Federal de Rondonópolis','UFR','Universidade','Pública Federal',22837,'Presencial',5107602,'Rondonópolis','MT',4,4,1,25.00,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(79,2025,702,'MATEMÁTICA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',43037,'Presencial',5101704,'Barra do Bugres','MT',26,17,4,23.50,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(80,2025,702,'MATEMÁTICA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1676716,'Presencial',5108055,'Terra Nova do Norte','MT',15,15,3,20.00,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(81,2025,1502,'QUÍMICA','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',1160759,'Presencial',5103353,'Confresa','MT',5,5,1,20.00,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(82,2025,904,'LETRAS-PORTUGUÊS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1675036,'Presencial',5104807,'Jaciara','MT',27,26,5,19.20,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(83,2025,702,'MATEMÁTICA','LICENCIATURA',25352,'Universidade Federal de Rondonópolis','UFR','Universidade','Pública Federal',34,'Presencial',5107602,'Rondonópolis','MT',7,6,1,16.70,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(84,2025,702,'MATEMÁTICA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16268,'Presencial',5102504,'Cáceres','MT',32,20,3,15.00,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(85,2025,905,'LETRAS-PORTUGUÊS E INGLÊS','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',16273,'Presencial',5106752,'Pontes e Lacerda','MT',9,8,1,12.50,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(86,2025,702,'MATEMÁTICA','LICENCIATURA',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1472818,'EaD',5102504,'Cáceres','MT',13,6,0,0.00,1,'Não','EAD','Publica',1,'Licenciaturas',1),
(87,2025,702,'MATEMÁTICA','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',1442126,'EaD',5103403,'Cuiabá','MT',4,3,0,0.00,1,'Não','EAD','Publica',1,'Licenciaturas',1),
(88,2025,1402,'FÍSICA','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',121537,'Presencial',5106752,'Pontes e Lacerda','MT',9,7,0,0.00,1,'Não','Presencial','Publica',1,'Licenciaturas',1),
(89,2025,2001,'PEDAGOGIA','LICENCIATURA',780,'UNIVERSIDADE DE CUIABÁ','UNIC/UNIME','Universidade','Privada com fins lucrativos​',16819,'Presencial',5103403,'Cuiabá','MT',6,3,0,0.00,1,'Não','Presencial','Privada',1,'Licenciaturas',1),
(90,2025,2001,'PEDAGOGIA','LICENCIATURA',1374,'FACULDADE DE GUARANTÃ DO NORTE','UNIFAMA','Faculdade','Privada com fins lucrativos​',20472,'Presencial',5104104,'Guarantã do Norte','MT',2,2,0,0.00,1,'Não','Presencial','Privada',1,'Licenciaturas',1),
(91,2025,2001,'PEDAGOGIA','LICENCIATURA',3303,'Centro Universitário Invest','UNIVEST','Centro Universitário','Privada com fins lucrativos​',1386222,'EaD',5103403,'Cuiabá','MT',13,2,0,0.00,1,'Não','EAD','Privada',1,'Licenciaturas',1),
(92,2025,702,'MATEMÁTICA','LICENCIATURA',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',18354,'Presencial',5106653,'Pontal do Araguaia','MT',1,1,0,NULL,NULL,'Não','Presencial','Publica',1,'Licenciaturas',1),
(93,2025,702,'MATEMÁTICA','LICENCIATURA',3164,'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO','IFMT','Instituto Federal de Educação, Ciência e Tecnologia','Pública Federal',1160424,'Presencial',5105150,'Juína','MT',11,1,0,NULL,NULL,'Não','Presencial','Publica',1,'Licenciaturas',1),
(94,2025,12,'MEDICINA','Bacharelado',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',1261972,'Educação Presencial',5107909,'Sinop','MT',59,58,52,89.70,4,'NÃO','Presencial','Publica',1,'Medicina',1),
(95,2025,12,'MEDICINA','Bacharelado',25352,'Universidade Federal de Rondonópolis','UFR','Universidade','Pública Federal',1261971,'Educação Presencial',5107602,'Rondonópolis','MT',33,31,27,87.10,4,'NÃO','Presencial','Publica',1,'Medicina',1),
(96,2025,12,'MEDICINA','Bacharelado',1,'UNIVERSIDADE FEDERAL DE MATO GROSSO','UFMT','Universidade','Pública Federal',12,'Educação Presencial',5103403,'Cuiabá','MT',75,75,64,85.30,4,'NÃO','Presencial','Publica',1,'Medicina',1),
(97,2025,12,'MEDICINA','Bacharelado',794,'CENTRO UNIVERSITÁRIO DE VÁRZEA GRANDE','UNIVAG','Centro Universitário','Privada sem fins lucrativos',5001033,'Educação Presencial',5108402,'Várzea Grande','MT',124,123,85,69.10,3,'NÃO','Presencial','Privada',1,'Medicina',1),
(98,2025,12,'MEDICINA','Bacharelado',719,'Universidade do Estado de Mato Grosso Carlos Alberto Reyes Maldonado - UNEMAT','UNEMAT','Universidade','Pública Estadual',1188849,'Educação Presencial',5102504,'Cáceres','MT',61,60,38,63.30,3,'NÃO','Presencial','Publica',1,'Medicina',1),
(99,2025,12,'MEDICINA','Bacharelado',780,'UNIVERSIDADE DE CUIABÁ','UNIC/UNIME','Universidade','Privada com fins lucrativos',18472,'Educação Presencial',5103403,'Cuiabá','MT',167,164,75,45.70,2,'NÃO','Presencial','Privada',1,'Medicina',1),
(100,2025,12,'MEDICINA','Bacharelado',2961,'Centro Universitário Estácio do Pantanal','Unipantanal','Centro Universitário','Privada com fins lucrativos',1457707,'Educação Presencial',5102504,'Cáceres','MT',27,26,4,15.40,1,'NÃO','Presencial','Privada',1,'Medicina',1);
/*!40000 ALTER TABLE `p09_cursos_mt_enade2025` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p09_funil_licenciaturas_mt`
--

DROP TABLE IF EXISTS `p09_funil_licenciaturas_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p09_funil_licenciaturas_mt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `etapa` varchar(64) DEFAULT NULL,
  `pessoas` decimal(11,4) DEFAULT NULL,
  `pct_dos_ingressantes` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p09_funil_licenciaturas_mt`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p09_funil_licenciaturas_mt` WRITE;
/*!40000 ALTER TABLE `p09_funil_licenciaturas_mt` DISABLE KEYS */;
INSERT INTO `p09_funil_licenciaturas_mt` VALUES
(1,'ingressaram (coortes 2015-2020, licenciatura presencial MT)',27899.0000,100.00),
(2,'concluiram',8822.0000,31.62),
(3,'concluintes acima do corte (aplicando a taxa do Enade 2025 MT)',4822.2511,17.28);
/*!40000 ALTER TABLE `p09_funil_licenciaturas_mt` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p09_proficiencia_mt_por_area`
--

DROP TABLE IF EXISTS `p09_proficiencia_mt_por_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p09_proficiencia_mt_por_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conjunto` varchar(16) DEFAULT NULL,
  `area_avaliacao` varchar(32) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `concluintes_participantes` int(11) DEFAULT NULL,
  `acima_do_corte` int(11) DEFAULT NULL,
  `pct_acima_do_corte` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p09_proficiencia_mt_por_area`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p09_proficiencia_mt_por_area` WRITE;
/*!40000 ALTER TABLE `p09_proficiencia_mt_por_area` DISABLE KEYS */;
INSERT INTO `p09_proficiencia_mt_por_area` VALUES
(1,'Licenciaturas','CIÊNCIAS SOCIAIS',1,10,10,100.00),
(2,'Licenciaturas','LETRAS-PORTUGUÊS E ESPANHOL',2,36,26,72.22),
(3,'Licenciaturas','CIÊNCIAS BIOLÓGICAS',10,126,88,69.84),
(4,'Medicina','MEDICINA',7,537,345,64.25),
(5,'Licenciaturas','HISTÓRIA',3,102,65,63.73),
(6,'Licenciaturas','MÚSICA',1,8,5,62.50),
(7,'Licenciaturas','GEOGRAFIA',6,106,66,62.26),
(8,'Licenciaturas','PEDAGOGIA',22,369,210,56.91),
(9,'Licenciaturas','EDUCAÇÃO FÍSICA',8,117,65,55.56),
(10,'Licenciaturas','FILOSOFIA',2,19,10,52.63),
(11,'Licenciaturas','QUÍMICA',7,47,24,51.06),
(12,'Licenciaturas','Letras - Inglês',1,10,5,50.00),
(13,'Licenciaturas','LETRAS-PORTUGUÊS',9,179,81,45.25),
(14,'Licenciaturas','LETRAS-PORTUGUÊS E INGLÊS',4,62,28,45.16),
(15,'Licenciaturas','FÍSICA',4,33,12,36.36),
(16,'Licenciaturas','ARTES VISUAIS',1,9,3,33.33),
(17,'Licenciaturas','MATEMÁTICA',12,97,29,29.90);
/*!40000 ALTER TABLE `p09_proficiencia_mt_por_area` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p09_proficiencia_mt_rede_modalidade`
--

DROP TABLE IF EXISTS `p09_proficiencia_mt_rede_modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p09_proficiencia_mt_rede_modalidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conjunto` varchar(16) DEFAULT NULL,
  `rede` varchar(16) DEFAULT NULL,
  `modalidade_norm` varchar(16) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `concluintes_participantes` int(11) DEFAULT NULL,
  `acima_do_corte` int(11) DEFAULT NULL,
  `pct_acima_do_corte` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p09_proficiencia_mt_rede_mod_rede` (`rede`),
  KEY `ix_p09_proficiencia_mt_rede_mod_modalidade_norm` (`modalidade_norm`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p09_proficiencia_mt_rede_modalidade`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p09_proficiencia_mt_rede_modalidade` WRITE;
/*!40000 ALTER TABLE `p09_proficiencia_mt_rede_modalidade` DISABLE KEYS */;
INSERT INTO `p09_proficiencia_mt_rede_modalidade` VALUES
(1,'Licenciaturas','Privada','EAD',5,65,26,40.00),
(2,'Licenciaturas','Privada','Presencial',12,78,41,52.56),
(3,'Licenciaturas','Publica','EAD',7,72,29,40.28),
(4,'Licenciaturas','Publica','Presencial',69,1115,631,56.59),
(5,'Medicina','Privada','Presencial',3,313,164,52.40),
(6,'Medicina','Publica','Presencial',4,224,181,80.80);
/*!40000 ALTER TABLE `p09_proficiencia_mt_rede_modalidade` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p09_proficiencia_mt_x_brasil`
--

DROP TABLE IF EXISTS `p09_proficiencia_mt_x_brasil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p09_proficiencia_mt_x_brasil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conjunto` varchar(16) DEFAULT NULL,
  `recorte` varchar(16) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `concluintes_participantes` int(11) DEFAULT NULL,
  `acima_do_corte` int(11) DEFAULT NULL,
  `pct_acima_do_corte` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p09_proficiencia_mt_x_brasil`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p09_proficiencia_mt_x_brasil` WRITE;
/*!40000 ALTER TABLE `p09_proficiencia_mt_x_brasil` DISABLE KEYS */;
INSERT INTO `p09_proficiencia_mt_x_brasil` VALUES
(1,'Licenciaturas','Mato Grosso',93,1330,727,54.66),
(2,'Licenciaturas','Resto do Brasil',4690,194729,112389,57.72),
(3,'Medicina','Mato Grosso',7,537,345,64.25),
(4,'Medicina','Resto do Brasil',344,38720,26005,67.16);
/*!40000 ALTER TABLE `p09_proficiencia_mt_x_brasil` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p10_apoio_entre_ingressantes_e_concluintes`
--

DROP TABLE IF EXISTS `p10_apoio_entre_ingressantes_e_concluintes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p10_apoio_entre_ingressantes_e_concluintes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_censo` int(11) DEFAULT NULL,
  `pct_ing_com_apoio` decimal(5,2) DEFAULT NULL,
  `pct_conc_com_apoio` decimal(6,2) DEFAULT NULL,
  `pct_mat_fies_prouni` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p10_apoio_entre_ingressantes_nu_ano_censo` (`nu_ano_censo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p10_apoio_entre_ingressantes_e_concluintes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p10_apoio_entre_ingressantes_e_concluintes` WRITE;
/*!40000 ALTER TABLE `p10_apoio_entre_ingressantes_e_concluintes` DISABLE KEYS */;
INSERT INTO `p10_apoio_entre_ingressantes_e_concluintes` VALUES
(1,2021,2.18,13.24,8.52),
(2,2022,3.30,11.00,6.70),
(3,2023,1.88,8.60,5.50),
(4,2024,2.33,4.64,4.79);
/*!40000 ALTER TABLE `p10_apoio_entre_ingressantes_e_concluintes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p10_cobertura_fies_prouni_mt`
--

DROP TABLE IF EXISTS `p10_cobertura_fies_prouni_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p10_cobertura_fies_prouni_mt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nu_ano_censo` int(11) DEFAULT NULL,
  `matriculas` int(11) DEFAULT NULL,
  `mat_fies` int(11) DEFAULT NULL,
  `mat_prouni` int(11) DEFAULT NULL,
  `mat_prouni_parcial` int(11) DEFAULT NULL,
  `mat_financ` int(11) DEFAULT NULL,
  `ing_fies_prouni` int(11) DEFAULT NULL,
  `conc_fies_prouni` int(11) DEFAULT NULL,
  `ingressantes` int(11) DEFAULT NULL,
  `concluintes` int(11) DEFAULT NULL,
  `pct_mat_fies_prouni` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p10_cobertura_fies_prouni_mt_nu_ano_censo` (`nu_ano_censo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p10_cobertura_fies_prouni_mt`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p10_cobertura_fies_prouni_mt` WRITE;
/*!40000 ALTER TABLE `p10_cobertura_fies_prouni_mt` DISABLE KEYS */;
INSERT INTO `p10_cobertura_fies_prouni_mt` VALUES
(1,2021,126384,4204,5981,585,51854,1510,2770,69284,20919,8.52),
(2,2022,134835,2593,5975,463,59111,2912,1920,88160,17450,6.70),
(3,2023,143587,4712,2772,411,63961,1673,1601,88973,18624,5.50),
(4,2024,143049,2056,4523,271,60990,2000,781,85917,16847,4.79);
/*!40000 ALTER TABLE `p10_cobertura_fies_prouni_mt` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p10_com_x_sem_apoio_por_modalidade`
--

DROP TABLE IF EXISTS `p10_com_x_sem_apoio_por_modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p10_com_x_sem_apoio_por_modalidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tem_apoio` varchar(16) DEFAULT NULL,
  `modalidade` varchar(16) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `taxa_evasao_pct` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p10_com_x_sem_apoio_por_moda_modalidade` (`modalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p10_com_x_sem_apoio_por_modalidade`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p10_com_x_sem_apoio_por_modalidade` WRITE;
/*!40000 ALTER TABLE `p10_com_x_sem_apoio_por_modalidade` DISABLE KEYS */;
INSERT INTO `p10_com_x_sem_apoio_por_modalidade` VALUES
(1,'Com FIES/ProUni','EAD',161,205152,55871,27.23),
(2,'Com FIES/ProUni','Presencial',343,272305,47723,17.53),
(3,'Sem FIES/ProUni','EAD',276,106628,31665,29.70),
(4,'Sem FIES/ProUni','Presencial',166,37979,4828,12.71);
/*!40000 ALTER TABLE `p10_com_x_sem_apoio_por_modalidade` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p10_evasao_por_faixa_de_cobertura`
--

DROP TABLE IF EXISTS `p10_evasao_por_faixa_de_cobertura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p10_evasao_por_faixa_de_cobertura` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faixa_cobertura` varchar(32) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `matriculas` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `trancados` int(11) DEFAULT NULL,
  `cobertura_media_pct` decimal(6,2) DEFAULT NULL,
  `taxa_evasao_pct` decimal(6,2) DEFAULT NULL,
  `taxa_trancamento_pct` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p10_evasao_por_faixa_de_cobe_faixa_cobertura` (`faixa_cobertura`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p10_evasao_por_faixa_de_cobertura`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p10_evasao_por_faixa_de_cobertura` WRITE;
/*!40000 ALTER TABLE `p10_evasao_por_faixa_de_cobertura` DISABLE KEYS */;
INSERT INTO `p10_evasao_por_faixa_de_cobertura` VALUES
(1,'Sem apoio (0%)',441,144424,80075,36321,16844,0.00,25.15,11.66),
(2,'Baixa (ate 5%)',266,186982,115323,45720,12048,2.77,24.45,6.44),
(3,'Media (5-15%)',297,145873,88395,29659,12129,8.73,20.33,8.31),
(4,'Alta (acima de 15%)',205,144602,86292,28215,12356,24.49,19.51,8.54);
/*!40000 ALTER TABLE `p10_evasao_por_faixa_de_cobertura` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p10_evasao_por_faixa_dentro_da_modalidade`
--

DROP TABLE IF EXISTS `p10_evasao_por_faixa_dentro_da_modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p10_evasao_por_faixa_dentro_da_modalidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modalidade` varchar(16) DEFAULT NULL,
  `faixa_cobertura` varchar(32) DEFAULT NULL,
  `cursos` int(11) DEFAULT NULL,
  `vinculos` int(11) DEFAULT NULL,
  `desvinculados` int(11) DEFAULT NULL,
  `cobertura_media_pct` decimal(6,2) DEFAULT NULL,
  `taxa_evasao_pct` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_p10_evasao_por_faixa_dentro__modalidade` (`modalidade`),
  KEY `ix_p10_evasao_por_faixa_dentro__faixa_cobertura` (`faixa_cobertura`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p10_evasao_por_faixa_dentro_da_modalidade`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p10_evasao_por_faixa_dentro_da_modalidade` WRITE;
/*!40000 ALTER TABLE `p10_evasao_por_faixa_dentro_da_modalidade` DISABLE KEYS */;
INSERT INTO `p10_evasao_por_faixa_dentro_da_modalidade` VALUES
(1,'EAD','Sem apoio (0%)',275,106517,31565,0.00,29.63),
(2,'EAD','Baixa (ate 5%)',141,148108,41364,2.78,27.93),
(3,'EAD','Media (5-15%)',99,53879,13883,7.68,25.77),
(4,'EAD','Alta (acima de 15%)',19,3165,624,19.17,19.72),
(5,'Presencial','Sem apoio (0%)',166,37907,4756,0.00,12.55),
(6,'Presencial','Baixa (ate 5%)',125,38874,4356,2.75,11.21),
(7,'Presencial','Media (5-15%)',198,91994,15776,9.80,17.15),
(8,'Presencial','Alta (acima de 15%)',186,141437,27591,24.93,19.51);
/*!40000 ALTER TABLE `p10_evasao_por_faixa_dentro_da_modalidade` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `p10_modelo_apoio_controlado`
--

DROP TABLE IF EXISTS `p10_modelo_apoio_controlado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `p10_modelo_apoio_controlado` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `termo` varchar(32) DEFAULT NULL,
  `coeficiente` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p10_modelo_apoio_controlado`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `p10_modelo_apoio_controlado` WRITE;
/*!40000 ALTER TABLE `p10_modelo_apoio_controlado` DISABLE KEYS */;
INSERT INTO `p10_modelo_apoio_controlado` VALUES
(1,'intercepto',25.2258),
(2,'pct_mat_fies_prouni',0.1357),
(3,'modalidade_Presencial',-12.7166),
(4,'ds_grau_academico_Licenciatura',-4.7103),
(5,'ds_grau_academico_Tecnológico',3.6647),
(6,'nu_ano_censo_2022',3.9332),
(7,'nu_ano_censo_2023',1.4439),
(8,'nu_ano_censo_2024',4.5647),
(9,'r2',0.2176),
(10,'n',4007.0000),
(11,'correlacao_simples_ponderada',-0.1928);
/*!40000 ALTER TABLE `p10_modelo_apoio_controlado` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping routines for database 'equipe_09'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-10-10 16:42:10
