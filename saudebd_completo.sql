-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `atendimento`
--

DROP TABLE IF EXISTS `atendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atendimento` (
  `id_atendimento` int NOT NULL,
  `id_paciente` int NOT NULL,
  `id_funcionario` int NOT NULL,
  `data_atendimento` datetime NOT NULL,
  `tipo_atendimento` varchar(100) NOT NULL,
  PRIMARY KEY (`id_atendimento`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_funcionario` (`id_funcionario`),
  CONSTRAINT `Atendimento_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `usuario` (`id_paciente`),
  CONSTRAINT `Atendimento_ibfk_2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendimento`
--

LOCK TABLES `atendimento` WRITE;
/*!40000 ALTER TABLE `atendimento` DISABLE KEYS */;
INSERT INTO `atendimento` VALUES (1,1,2,'2024-01-10 08:00:00','Consulta Clínica Geral'),(2,3,5,'2024-01-11 10:30:00','Retorno Médico'),(3,2,1,'2024-02-01 14:15:00','Avaliação Psicológica'),(4,4,3,'2024-02-12 09:00:00','Consulta Cardiológica'),(5,5,7,'2024-03-05 13:30:00','Consulta Ginecológica'),(6,6,2,'2024-03-10 08:45:00','Retorno Exames'),(7,7,4,'2024-03-15 11:00:00','Consulta Ortopédica'),(8,8,6,'2024-03-20 16:00:00','Consulta Pediátrica'),(9,9,5,'2024-03-25 09:30:00','Avaliação Nutricional'),(10,10,8,'2024-04-01 10:00:00','Retorno Nutricional'),(11,11,2,'2024-04-05 14:00:00','Consulta Psiquiátrica'),(12,12,9,'2024-04-10 15:45:00','Consulta Oftalmológica'),(13,13,10,'2024-04-15 08:30:00','Consulta Clínica Geral'),(14,14,11,'2024-05-01 11:15:00','Consulta Cardiológica'),(15,15,3,'2024-05-08 09:00:00','Retorno Médico'),(16,16,12,'2024-05-20 10:45:00','Consulta Dermatológica'),(17,17,13,'2024-05-25 13:00:00','Consulta Clínica Geral'),(18,18,14,'2024-06-01 08:15:00','Consulta Psiquiátrica'),(19,19,15,'2024-06-10 15:00:00','Avaliação Psicológica'),(20,20,6,'2024-06-20 09:45:00','Consulta Ginecológica'),(21,1,5,'2024-07-01 14:30:00','Consulta Cardiológica'),(22,2,1,'2024-07-05 10:15:00','Retorno Dermatológico'),(23,3,2,'2024-07-10 11:45:00','Consulta Geriátrica'),(24,4,3,'2024-07-15 16:15:00','Consulta Pediátrica'),(25,5,4,'2024-08-01 09:30:00','Consulta Clínica Geral'),(26,6,5,'2024-08-10 13:15:00','Retorno Médico'),(27,7,6,'2024-08-15 08:00:00','Consulta Ortopédica'),(28,8,7,'2024-08-20 15:45:00','Consulta Ginecológica'),(29,9,8,'2024-08-25 10:00:00','Consulta Cardiológica'),(30,10,9,'2024-09-01 11:30:00','Retorno Clínico'),(31,11,10,'2024-09-10 09:00:00','Avaliação Nutricional'),(32,12,11,'2024-09-15 14:45:00','Consulta Dermatológica'),(33,13,12,'2024-09-20 08:30:00','Consulta Clínica Geral'),(34,14,13,'2024-10-01 10:15:00','Retorno Médico'),(35,15,14,'2024-10-05 11:00:00','Consulta Neurológica'),(36,16,15,'2024-10-10 09:30:00','Consulta Ginecológica'),(37,17,1,'2024-10-15 13:00:00','Consulta Endocrinológica'),(38,18,2,'2024-11-01 15:15:00','Consulta Psiquiátrica'),(39,19,3,'2024-11-05 08:00:00','Consulta Geriátrica'),(40,20,4,'2024-11-10 14:00:00','Avaliação Psicológica'),(41,1,5,'2024-11-15 10:45:00','Consulta Ginecológica'),(42,2,6,'2024-12-01 09:15:00','Consulta Clínica Geral'),(43,3,7,'2024-12-05 13:45:00','Retorno Médico'),(44,4,8,'2024-12-10 08:30:00','Consulta Nutricional'),(45,5,9,'2024-12-15 14:00:00','Consulta Cardiológica'),(46,6,10,'2025-01-05 11:15:00','Consulta Psiquiátrica'),(47,7,11,'2025-01-10 10:30:00','Consulta Ortopédica'),(48,8,12,'2025-01-15 09:00:00','Avaliação Psicológica'),(49,9,13,'2025-01-20 14:45:00','Consulta Clínica Geral'),(50,10,14,'2025-01-25 08:15:00','Retorno Médico');
/*!40000 ALTER TABLE `atendimento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:29
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `id_consulta` int NOT NULL,
  `id_paciente` int NOT NULL,
  `id_funcionario` int NOT NULL,
  `data_agendada` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_funcionario` (`id_funcionario`),
  CONSTRAINT `Consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `usuario` (`id_paciente`),
  CONSTRAINT `Consulta_ibfk_2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,5,2,'2024-07-01 09:00:00','Agendada'),(2,3,1,'2024-07-02 10:30:00','Realizada'),(3,8,4,'2024-07-03 14:15:00','Cancelada'),(4,6,2,'2024-07-04 13:00:00','Realizada'),(5,2,5,'2024-07-05 11:00:00','Agendada'),(6,4,3,'2024-07-06 15:30:00','Cancelada'),(7,9,1,'2024-07-07 08:45:00','Realizada'),(8,7,4,'2024-07-08 10:15:00','Agendada'),(9,1,2,'2024-07-09 09:30:00','Cancelada'),(10,10,5,'2024-07-10 11:45:00','Realizada'),(11,3,1,'2024-07-11 14:00:00','Agendada'),(12,8,3,'2024-07-12 13:15:00','Cancelada'),(13,5,2,'2024-07-13 10:00:00','Realizada'),(14,6,4,'2024-07-14 09:15:00','Agendada'),(15,2,5,'2024-07-15 15:00:00','Realizada'),(16,7,3,'2024-07-16 11:30:00','Cancelada'),(17,9,1,'2024-07-17 10:45:00','Agendada'),(18,4,2,'2024-07-18 14:30:00','Realizada'),(19,1,4,'2024-07-19 13:00:00','Cancelada'),(20,10,5,'2024-07-20 09:00:00','Realizada'),(21,3,2,'2024-07-21 10:30:00','Agendada'),(22,8,3,'2024-07-22 11:15:00','Cancelada'),(23,5,1,'2024-07-23 14:45:00','Realizada'),(24,6,4,'2024-07-24 13:30:00','Agendada'),(25,2,2,'2024-07-25 15:15:00','Cancelada'),(26,7,5,'2024-07-26 08:00:00','Realizada'),(27,9,3,'2024-07-27 09:30:00','Agendada'),(28,4,2,'2024-07-28 10:00:00','Cancelada'),(29,1,1,'2024-07-29 14:00:00','Realizada'),(30,10,4,'2024-07-30 11:30:00','Agendada'),(31,3,5,'2024-07-31 10:45:00','Cancelada'),(32,8,1,'2024-08-01 13:15:00','Realizada'),(33,5,2,'2024-08-02 14:30:00','Agendada'),(34,6,4,'2024-08-03 09:00:00','Realizada'),(35,2,3,'2024-08-04 08:30:00','Cancelada'),(36,7,1,'2024-08-05 10:15:00','Agendada'),(37,9,2,'2024-08-06 11:00:00','Realizada'),(38,4,5,'2024-08-07 13:45:00','Cancelada'),(39,1,3,'2024-08-08 15:00:00','Realizada'),(40,10,4,'2024-08-09 09:30:00','Agendada'),(41,3,2,'2024-08-10 10:00:00','Realizada'),(42,8,1,'2024-08-11 11:45:00','Cancelada'),(43,5,5,'2024-08-12 14:15:00','Realizada'),(44,6,2,'2024-08-13 08:45:00','Agendada'),(45,2,4,'2024-08-14 10:30:00','Cancelada'),(46,7,3,'2024-08-15 09:15:00','Realizada'),(47,9,1,'2024-08-16 13:00:00','Agendada'),(48,4,2,'2024-08-17 14:45:00','Cancelada'),(49,1,5,'2024-08-18 11:00:00','Realizada'),(50,10,3,'2024-08-19 10:30:00','Agendada');
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:30
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `convenio`
--

DROP TABLE IF EXISTS `convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenio` (
  `id_convenio` int NOT NULL,
  `nome_convenio` varchar(100) NOT NULL,
  PRIMARY KEY (`id_convenio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenio`
--

LOCK TABLES `convenio` WRITE;
/*!40000 ALTER TABLE `convenio` DISABLE KEYS */;
INSERT INTO `convenio` VALUES (1,'Unimed'),(2,'Bradesco Saúde'),(3,'Amil'),(4,'SulAmérica'),(5,'NotreDame Intermédica'),(6,'Porto Saúde'),(7,'Hapvida'),(8,'Cassi'),(9,'Mediservice'),(10,'Assim Saúde'),(11,'Blue Life'),(12,'Golden Cross'),(13,'Prevent Senior'),(14,'Greenline'),(15,'Biovida Saúde'),(16,'Santa Helena'),(17,'Doctor Clin'),(18,'São Francisco Saúde'),(19,'Ideal Saúde'),(20,'Viva Saúde'),(21,'Life Saúde'),(22,'Clinipam'),(23,'Master Clin'),(24,'Allianz Saúde'),(25,'Care Plus'),(26,'Amparo Saúde'),(27,'Bem Estar Saúde'),(28,'Premium Saúde'),(29,'Alpha Saúde'),(30,'Real Saúde'),(31,'TopMed'),(32,'Saúde Total'),(33,'QualiVida'),(34,'Plena Saúde'),(35,'Viver Bem'),(36,'Uni Saúde'),(37,'MediPlan'),(38,'Vitalmed'),(39,'Vida e Saúde'),(40,'SaúdeVip'),(41,'Confiar Saúde'),(42,'Medprev'),(43,'ProVida'),(44,'Vitallis'),(45,'Medsênior'),(46,'Mais Saúde'),(47,'Grupo São Lucas'),(48,'Avante Saúde'),(49,'Platinum Saúde'),(50,'Essencial Saúde');
/*!40000 ALTER TABLE `convenio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:30
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento` (
  `id_equipamento` int NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  PRIMARY KEY (`id_equipamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` VALUES (1,'Estetoscópio'),(2,'Esfigmomanômetro'),(3,'Monitor Cardíaco'),(4,'Oxímetro de Pulso'),(5,'Bisturi Elétrico'),(6,'Eletrocardiógrafo'),(7,'Ventilador Mecânico'),(8,'Desfibrilador'),(9,'Termômetro Digital'),(10,'Balança Antropométrica'),(11,'Centrífuga Laboratorial'),(12,'Bomba de Infusão'),(13,'Autoclave'),(14,'Cadeira Ginecológica'),(15,'Colposcópio'),(16,'Microscópio Óptico'),(17,'Incubadora Neonatal'),(18,'Aparelho de Ultrassom'),(19,'Aparelho de Raio-X'),(20,'Mesa Cirúrgica'),(21,'Foco Cirúrgico'),(22,'Eletroencefalógrafo'),(23,'Mesa para Curativos'),(24,'Negatoscópio'),(25,'Aparelho de Endoscopia'),(26,'Cadeira de Rodas'),(27,'Cama Hospitalar Motorizada'),(28,'Aparelho de Hemodiálise'),(29,'Laringoscópio'),(30,'Aparelho de Fisioterapia TENS'),(31,'Aspirador Cirúrgico'),(32,'Mesa de Exames Clínicos'),(33,'Lupa Iluminada'),(34,'Oxigenador Portátil'),(35,'Detector Fetal'),(36,'Aparelho de Pressão de Pulso Manual'),(37,'Nebulizador'),(38,'Banco de Sangue Refrigerado'),(39,'Balança de Precaução Pediátrica'),(40,'Seringa Automática'),(41,'Carrinho de Emergência'),(42,'Carrinho de Medicação'),(43,'Bisturi de Alta Frequência'),(44,'Aparelho de Laser Dermatológico'),(45,'Fotóforo Cirúrgico'),(46,'Aparelho de Espirometria'),(47,'Aparelho de Audiometria'),(48,'Lanterna Clínica'),(49,'Sistema de Videolaparoscopia'),(50,'Câmara Fria Laboratorial');
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:30
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade` (
  `id_especialidade` int NOT NULL,
  `nome_especialidade` varchar(100) NOT NULL,
  PRIMARY KEY (`id_especialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES (1,'Cardiologia'),(2,'Dermatologia'),(3,'Endocrinologia'),(4,'Gastroenterologia'),(5,'Neurologia'),(6,'Oftalmologia'),(7,'Ortopedia'),(8,'Pediatria'),(9,'Psiquiatria'),(10,'Urologia'),(11,'Ginecologia'),(12,'Imunologia'),(13,'Nefrologia'),(14,'Pneumologia'),(15,'Radiologia'),(16,'Reumatologia'),(17,'Cirurgia Geral'),(18,'Otorrinolaringologia'),(19,'Hematologia'),(20,'Oncologia'),(21,'Endoscopia'),(22,'Anestesiologia'),(23,'Medicina do Trabalho'),(24,'Medicina Esportiva'),(25,'Medicina Intensiva'),(26,'Genética Médica'),(27,'Toxicologia'),(28,'Patologia'),(29,'Fisiatria'),(30,'Cirurgia Plástica'),(31,'Cirurgia Vascular'),(32,'Cirurgia Torácica'),(33,'Cirurgia Cardiovascular'),(34,'Medicina Legal'),(35,'Medicina Nuclear'),(36,'Neurocirurgia'),(37,'Psiquiatria Infantil'),(38,'Radioterapia'),(39,'Terapia Intensiva'),(40,'Transplantes'),(41,'Terapia Ocupacional'),(42,'Alergologia'),(43,'Cirurgia Pediátrica'),(44,'Infectologia'),(45,'Neonatologia'),(46,'Uroginocologia'),(47,'Medicina da Família'),(48,'Neuropsiquiatria'),(49,'Hepatologia'),(50,'Geriatria');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:29
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `exame`
--

DROP TABLE IF EXISTS `exame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exame` (
  `id_exame` int NOT NULL,
  `id_paciente` int NOT NULL,
  `id_consulta` int NOT NULL,
  `tipo_exame` varchar(100) NOT NULL,
  `data_realizacao` date NOT NULL,
  `resultado` text,
  PRIMARY KEY (`id_exame`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_consulta` (`id_consulta`),
  CONSTRAINT `Exame_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `usuario` (`id_paciente`),
  CONSTRAINT `Exame_ibfk_2` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exame`
--

LOCK TABLES `exame` WRITE;
/*!40000 ALTER TABLE `exame` DISABLE KEYS */;
INSERT INTO `exame` VALUES (1,2,1,'Hemograma','2024-01-10','Resultados normais'),(2,4,2,'Raio-X','2024-01-12','Sem alterações ósseas'),(3,6,3,'Urina 1','2024-02-01','Leucócitos aumentados'),(4,1,4,'Glicemia','2024-02-15','Glicose normal'),(5,3,5,'Colesterol Total','2024-02-20','LDL alto'),(6,5,6,'Triglicerídeos','2024-02-25','Triglicerídeos elevados'),(7,7,7,'TSH','2024-03-01','Normal'),(8,8,8,'Ultrassonografia','2024-03-05','Fígado aumentado'),(9,9,9,'Exame de fezes','2024-03-07','Presença de ameba'),(10,10,10,'Eletrocardiograma','2024-03-10','Ritmo sinusal'),(11,2,11,'Hemograma','2024-03-15','Hemoglobina baixa'),(12,3,12,'Urina 1','2024-03-20','Cristais de oxalato'),(13,4,13,'Glicemia','2024-03-25','Glicose elevada'),(14,5,14,'Raio-X','2024-04-01','Infiltrado pulmonar'),(15,6,15,'TSH','2024-04-05','TSH elevado'),(16,7,16,'Ultrassonografia','2024-04-07','Vesícula sem alterações'),(17,8,17,'Colesterol Total','2024-04-10','HDL baixo'),(18,9,18,'Triglicerídeos','2024-04-12','Normal'),(19,10,19,'Eletrocardiograma','2024-04-15','Arritmia detectada'),(20,1,20,'Exame de fezes','2024-04-18','Negativo para parasitas'),(21,2,21,'Hemograma','2024-04-20','Normal'),(22,3,22,'Raio-X','2024-04-25','Fratura na costela'),(23,4,23,'Urina 1','2024-05-01','Sem alterações'),(24,5,24,'Glicemia','2024-05-05','Pré-diabetes'),(25,6,25,'TSH','2024-05-10','Normal'),(26,7,26,'Ultrassonografia','2024-05-15','Rim direito com cálculo'),(27,8,27,'Eletrocardiograma','2024-05-20','Normal'),(28,9,28,'Triglicerídeos','2024-05-25','Alta concentração'),(29,10,29,'Colesterol Total','2024-05-30','Total elevado'),(30,1,30,'Hemograma','2024-06-01','Leve anemia'),(31,2,31,'Urina 1','2024-06-03','Normal'),(32,3,32,'Raio-X','2024-06-07','Lesão antiga no joelho'),(33,4,33,'TSH','2024-06-10','Levemente alterado'),(34,5,34,'Glicemia','2024-06-13','Normal'),(35,6,35,'Ultrassonografia','2024-06-16','Sem alterações'),(36,7,36,'Eletrocardiograma','2024-06-20','Ritmo sinusal'),(37,8,37,'Colesterol Total','2024-06-22','LDL elevado'),(38,9,38,'Triglicerídeos','2024-06-25','Normal'),(39,10,39,'Hemograma','2024-06-28','Plaquetas elevadas'),(40,1,40,'Urina 1','2024-07-01','Normal'),(41,2,41,'Raio-X','2024-07-03','Pulmões limpos'),(42,3,42,'TSH','2024-07-06','Normal'),(43,4,43,'Ultrassonografia','2024-07-09','Esteatose grau I'),(44,5,44,'Glicemia','2024-07-11','Glicemia normal'),(45,6,45,'Eletrocardiograma','2024-07-14','Sem alterações'),(46,7,46,'Exame de fezes','2024-07-17','Negativo'),(47,8,47,'Hemograma','2024-07-20','Hemoglobina normal'),(48,9,48,'TSH','2024-07-23','T3 e T4 normais'),(49,10,49,'Colesterol Total','2024-07-26','Desequilíbrio lipídico'),(50,1,50,'Raio-X','2024-07-29','Desvio leve de septo');
/*!40000 ALTER TABLE `exame` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:29
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `faturamento`
--

DROP TABLE IF EXISTS `faturamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faturamento` (
  `id_faturamento` int NOT NULL,
  `id_consulta` int NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_faturamento` date NOT NULL,
  `status_pagamento` varchar(50) NOT NULL,
  PRIMARY KEY (`id_faturamento`),
  KEY `id_consulta` (`id_consulta`),
  CONSTRAINT `Faturamento_ibfk_1` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturamento`
--

LOCK TABLES `faturamento` WRITE;
/*!40000 ALTER TABLE `faturamento` DISABLE KEYS */;
INSERT INTO `faturamento` VALUES (1,1,150.00,'2024-08-01','Pago'),(2,2,220.50,'2024-08-02','Pendente'),(3,3,300.00,'2024-08-03','Pago'),(4,4,175.75,'2024-08-04','Cancelado'),(5,5,480.90,'2024-08-05','Pago'),(6,6,250.00,'2024-08-06','Pendente'),(7,7,310.10,'2024-08-07','Pago'),(8,8,100.00,'2024-08-08','Pendente'),(9,9,400.00,'2024-08-09','Pago'),(10,10,199.99,'2024-08-10','Em processamento'),(11,11,150.00,'2024-08-11','Pago'),(12,12,185.00,'2024-08-12','Pendente'),(13,13,600.00,'2024-08-13','Pago'),(14,14,330.00,'2024-08-14','Cancelado'),(15,15,220.00,'2024-08-15','Em processamento'),(16,16,450.50,'2024-08-16','Pago'),(17,17,290.00,'2024-08-17','Pendente'),(18,18,110.00,'2024-08-18','Pago'),(19,19,550.00,'2024-08-19','Pago'),(20,20,205.25,'2024-08-20','Cancelado'),(21,21,120.00,'2024-08-21','Em processamento'),(22,22,640.00,'2024-08-22','Pago'),(23,23,310.00,'2024-08-23','Pendente'),(24,24,190.50,'2024-08-24','Pago'),(25,25,130.00,'2024-08-25','Cancelado'),(26,26,320.00,'2024-08-26','Pago'),(27,27,410.00,'2024-08-27','Pendente'),(28,28,299.99,'2024-08-28','Pago'),(29,29,150.00,'2024-08-29','Em processamento'),(30,30,700.00,'2024-08-30','Pago'),(31,31,100.00,'2024-09-01','Cancelado'),(32,32,250.00,'2024-09-02','Pendente'),(33,33,330.00,'2024-09-03','Pago'),(34,34,210.50,'2024-09-04','Pago'),(35,35,390.00,'2024-09-05','Pendente'),(36,36,499.00,'2024-09-06','Pago'),(37,37,185.75,'2024-09-07','Pago'),(38,38,415.25,'2024-09-08','Em processamento'),(39,39,230.00,'2024-09-09','Cancelado'),(40,40,275.00,'2024-09-10','Pago'),(41,41,360.00,'2024-09-11','Pendente'),(42,42,240.00,'2024-09-12','Pago'),(43,43,190.00,'2024-09-13','Pendente'),(44,44,660.00,'2024-09-14','Pago'),(45,45,340.50,'2024-09-15','Em processamento'),(46,46,275.25,'2024-09-16','Pago'),(47,47,410.00,'2024-09-17','Pago'),(48,48,220.00,'2024-09-18','Cancelado'),(49,49,160.00,'2024-09-19','Pendente'),(50,50,305.00,'2024-09-20','Pago');
/*!40000 ALTER TABLE `faturamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:30
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_especialidade` int NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `id_especialidade` (`id_especialidade`),
  CONSTRAINT `Funcionario_ibfk_1` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id_especialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Carlos Menezes','123.456.789-00','carlos.menezes@example.com',1),(2,'Ana Paula Santos','234.567.890-11','ana.santos@example.com',2),(3,'Marcos Oliveira','345.678.901-22','marcos.oliveira@example.com',3),(4,'Fernanda Ribeiro','456.789.012-33','fernanda.ribeiro@example.com',4),(5,'Rafael Costa','567.890.123-44','rafael.costa@example.com',5),(6,'Juliana Lima','678.901.234-55','juliana.lima@example.com',6),(7,'Pedro Fernandes','789.012.345-66','pedro.fernandes@example.com',7),(8,'Beatriz Souza','890.123.456-77','beatriz.souza@example.com',8),(9,'Lucas Almeida','901.234.567-88','lucas.almeida@example.com',9),(10,'Mariana Barbosa','012.345.678-99','mariana.barbosa@example.com',10),(11,'Tiago Silva','112.233.445-00','tiago.silva@example.com',11),(12,'Carla Santos','223.344.556-11','carla.santos@example.com',12),(13,'Eduardo Oliveira','334.455.667-22','eduardo.oliveira@example.com',13),(14,'Patrícia Ribeiro','445.566.778-33','patricia.ribeiro@example.com',14),(15,'Gustavo Costa','556.677.889-44','gustavo.costa@example.com',15),(16,'Larissa Lima','667.788.990-55','larissa.lima@example.com',16),(17,'André Fernandes','778.899.001-66','andre.fernandes@example.com',17),(18,'Júlia Souza','889.900.112-77','julia.souza@example.com',18),(19,'Rômulo Almeida','990.011.223-88','romulo.almeida@example.com',19),(20,'Fernanda Barbosa','101.112.233-99','fernanda.barbosa@example.com',20),(21,'Paulo Silva','111.222.333-44','paulo.silva@example.com',21),(22,'Monica Santos','222.333.444-55','monica.santos@example.com',22),(23,'Ricardo Oliveira','333.444.555-66','ricardo.oliveira@example.com',23),(24,'Letícia Ribeiro','444.555.666-77','leticia.ribeiro@example.com',24),(25,'Felipe Costa','555.666.777-88','felipe.costa@example.com',25),(26,'Marina Lima','666.777.888-99','marina.lima@example.com',26),(27,'Claudio Fernandes','777.888.999-00','claudio.fernandes@example.com',27),(28,'Natália Souza','888.999.000-11','natalia.souza@example.com',28),(29,'Vagner Almeida','999.000.111-22','vagner.almeida@example.com',29),(30,'Priscila Barbosa','000.111.222-33','priscila.barbosa@example.com',30),(31,'Marcos Silva','121.212.121-12','marcos.silva@example.com',31),(32,'Renata Santos','232.323.232-23','renata.santos@example.com',32),(33,'Carlos Oliveira','343.434.343-34','carlos.oliveira@example.com',33),(34,'Aline Ribeiro','454.545.454-45','aline.ribeiro@example.com',34),(35,'João Costa','565.656.565-56','joao.costa@example.com',35),(36,'Carolina Lima','676.767.676-67','carolina.lima@example.com',36),(37,'Pedro Fernandes','787.878.787-78','pedro.fernandes@example.com',37),(38,'Ana Souza','898.989.898-89','ana.souza@example.com',38),(39,'Lucas Almeida','909.090.909-90','lucas.almeida@example.com',39),(40,'Marina Barbosa','010.101.010-10','marina.barbosa@example.com',40),(41,'Felipe Silva','111.121.131-41','felipe.silva@example.com',41),(42,'Isabela Santos','222.232.242-52','isabela.santos@example.com',42),(43,'Rafael Oliveira','333.343.353-63','rafael.oliveira@example.com',43),(44,'Amanda Ribeiro','444.454.464-74','amanda.ribeiro@example.com',44),(45,'Thiago Costa','555.565.575-85','thiago.costa@example.com',45),(46,'Renata Lima','666.676.686-96','renata.lima@example.com',46),(47,'Daniel Fernandes','777.787.797-07','daniel.fernandes@example.com',47),(48,'Julia Souza','888.898.908-18','julia.souza@example.com',48),(49,'Victor Almeida','999.909.919-29','victor.almeida@example.com',49),(50,'Marina Barbosa','000.010.020-39','marina.barbosa2@example.com',50);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:29
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `horario_disponivel`
--

DROP TABLE IF EXISTS `horario_disponivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario_disponivel` (
  `id_horario` int NOT NULL,
  `id_funcionario` int NOT NULL,
  `data_disponivel` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fim` time NOT NULL,
  PRIMARY KEY (`id_horario`),
  KEY `id_funcionario` (`id_funcionario`),
  CONSTRAINT `Horario_Disponivel_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_disponivel`
--

LOCK TABLES `horario_disponivel` WRITE;
/*!40000 ALTER TABLE `horario_disponivel` DISABLE KEYS */;
INSERT INTO `horario_disponivel` VALUES (1,1,'2024-08-01','08:00:00','09:00:00'),(2,2,'2024-08-02','09:00:00','10:30:00'),(3,3,'2024-08-03','14:00:00','15:00:00'),(4,4,'2024-08-04','13:30:00','15:00:00'),(5,5,'2024-08-05','10:00:00','11:00:00'),(6,6,'2024-08-06','15:00:00','16:00:00'),(7,7,'2024-08-07','08:30:00','10:00:00'),(8,8,'2024-08-08','11:00:00','12:00:00'),(9,9,'2024-08-09','13:00:00','14:00:00'),(10,10,'2024-08-10','14:30:00','15:30:00'),(11,11,'2024-08-11','09:00:00','10:00:00'),(12,12,'2024-08-12','10:30:00','11:30:00'),(13,13,'2024-08-13','08:00:00','09:30:00'),(14,14,'2024-08-14','15:00:00','16:30:00'),(15,15,'2024-08-15','13:00:00','14:00:00'),(16,1,'2024-08-16','09:00:00','10:00:00'),(17,2,'2024-08-17','10:00:00','11:00:00'),(18,3,'2024-08-18','14:00:00','15:00:00'),(19,4,'2024-08-19','08:30:00','10:00:00'),(20,5,'2024-08-20','13:30:00','15:00:00'),(21,6,'2024-08-21','15:00:00','16:00:00'),(22,7,'2024-08-22','09:30:00','10:30:00'),(23,8,'2024-08-23','10:00:00','11:00:00'),(24,9,'2024-08-24','11:00:00','12:30:00'),(25,10,'2024-08-25','13:00:00','14:30:00'),(26,11,'2024-08-26','14:00:00','15:00:00'),(27,12,'2024-08-27','15:30:00','16:30:00'),(28,13,'2024-08-28','08:00:00','09:00:00'),(29,14,'2024-08-29','09:30:00','10:30:00'),(30,15,'2024-08-30','10:00:00','11:30:00'),(31,1,'2024-09-01','14:00:00','15:00:00'),(32,2,'2024-09-02','13:00:00','14:00:00'),(33,3,'2024-09-03','09:00:00','10:00:00'),(34,4,'2024-09-04','08:30:00','09:30:00'),(35,5,'2024-09-05','15:00:00','16:00:00'),(36,6,'2024-09-06','10:30:00','11:30:00'),(37,7,'2024-09-07','13:00:00','14:00:00'),(38,8,'2024-09-08','14:30:00','15:30:00'),(39,9,'2024-09-09','09:00:00','10:00:00'),(40,10,'2024-09-10','10:00:00','11:00:00'),(41,11,'2024-09-11','13:00:00','14:30:00'),(42,12,'2024-09-12','08:00:00','09:00:00'),(43,13,'2024-09-13','09:00:00','10:30:00'),(44,14,'2024-09-14','14:00:00','15:00:00'),(45,15,'2024-09-15','15:00:00','16:00:00'),(46,1,'2024-09-16','10:30:00','12:00:00'),(47,2,'2024-09-17','08:00:00','09:00:00'),(48,3,'2024-09-18','13:30:00','14:30:00'),(49,4,'2024-09-19','11:00:00','12:00:00'),(50,5,'2024-09-20','09:30:00','11:00:00');
/*!40000 ALTER TABLE `horario_disponivel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:29
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento` (
  `id_medicamento` int NOT NULL,
  `id_prescricao` int NOT NULL,
  `nome_medicamento` varchar(100) NOT NULL,
  `dosagem` varchar(50) NOT NULL,
  `frequencia` varchar(50) NOT NULL,
  PRIMARY KEY (`id_medicamento`),
  KEY `id_prescricao` (`id_prescricao`),
  CONSTRAINT `Medicamento_ibfk_1` FOREIGN KEY (`id_prescricao`) REFERENCES `prescricao` (`id_prescricao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (1,1,'Paracetamol','500mg','8/8h'),(2,2,'Amoxicilina','250mg','12/12h'),(3,3,'Ibuprofeno','400mg','8/8h'),(4,4,'Dipirona','1g','6/6h'),(5,5,'Omeprazol','20mg','1x/dia'),(6,6,'Losartana','50mg','1x/dia'),(7,7,'Simvastatina','20mg','1x/noite'),(8,8,'Hidroclorotiazida','25mg','1x/dia'),(9,9,'Metformina','850mg','2x/dia'),(10,10,'Azitromicina','500mg','1x/dia'),(11,11,'Cetirizina','10mg','1x/dia'),(12,12,'Prednisona','20mg','12/12h'),(13,13,'Salbutamol','100mcg','4x/dia'),(14,14,'Clonazepam','2mg','1x/noite'),(15,15,'Lorazepam','1mg','1x/noite'),(16,16,'Ranitidina','150mg','12/12h'),(17,17,'Fluconazol','150mg','dose única'),(18,18,'Albendazol','400mg','1x/dia'),(19,19,'Levofloxacino','500mg','1x/dia'),(20,20,'Ciprofloxacino','500mg','12/12h'),(21,21,'Claritromicina','500mg','12/12h'),(22,22,'Nimesulida','100mg','12/12h'),(23,23,'Meloxicam','15mg','1x/dia'),(24,24,'Cetoprofeno','150mg','12/12h'),(25,25,'Dexametasona','4mg','1x/dia'),(26,26,'Furosemida','40mg','1x/dia'),(27,27,'AAS','100mg','1x/dia'),(28,28,'Insulina NPH','10UI','2x/dia'),(29,29,'Insulina Regular','6UI','antes das refeições'),(30,30,'Carbamazepina','200mg','8/8h'),(31,31,'Valproato de sódio','500mg','12/12h'),(32,32,'Sertralina','50mg','1x/dia'),(33,33,'Escitalopram','10mg','1x/dia'),(34,34,'Risperidona','2mg','12/12h'),(35,35,'Quetiapina','50mg','1x/noite'),(36,36,'Topiramato','100mg','1x/dia'),(37,37,'Lamotrigina','25mg','12/12h'),(38,38,'Bupropiona','150mg','1x/dia'),(39,39,'Venlafaxina','75mg','1x/dia'),(40,40,'Duloxetina','60mg','1x/dia'),(41,41,'Pantoprazol','40mg','1x/dia'),(42,42,'Loratadina','10mg','1x/dia'),(43,43,'Montelucaste','10mg','1x/noite'),(44,44,'Clindamicina','300mg','6/6h'),(45,45,'Ivermectina','6mg','1x/dia'),(46,46,'Hidroxicloroquina','400mg','1x/dia'),(47,47,'Isotretinoína','20mg','1x/dia'),(48,48,'Espironolactona','100mg','1x/dia'),(49,49,'Desloratadina','5mg','1x/dia'),(50,50,'Tiamina','300mg','1x/dia');
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:29
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `prescricao`
--

DROP TABLE IF EXISTS `prescricao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescricao` (
  `id_prescricao` int NOT NULL,
  `id_consulta` int NOT NULL,
  `data_prescricao` date NOT NULL,
  PRIMARY KEY (`id_prescricao`),
  KEY `id_consulta` (`id_consulta`),
  CONSTRAINT `Prescricao_ibfk_1` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescricao`
--

LOCK TABLES `prescricao` WRITE;
/*!40000 ALTER TABLE `prescricao` DISABLE KEYS */;
INSERT INTO `prescricao` VALUES (1,1,'2024-07-01'),(2,2,'2024-07-02'),(3,3,'2024-07-03'),(4,4,'2024-07-04'),(5,5,'2024-07-05'),(6,6,'2024-07-06'),(7,7,'2024-07-07'),(8,8,'2024-07-08'),(9,9,'2024-07-09'),(10,10,'2024-07-10'),(11,11,'2024-07-11'),(12,12,'2024-07-12'),(13,13,'2024-07-13'),(14,14,'2024-07-14'),(15,15,'2024-07-15'),(16,16,'2024-07-16'),(17,17,'2024-07-17'),(18,18,'2024-07-18'),(19,19,'2024-07-19'),(20,20,'2024-07-20'),(21,21,'2024-07-21'),(22,22,'2024-07-22'),(23,23,'2024-07-23'),(24,24,'2024-07-24'),(25,25,'2024-07-25'),(26,26,'2024-07-26'),(27,27,'2024-07-27'),(28,28,'2024-07-28'),(29,29,'2024-07-29'),(30,30,'2024-07-30'),(31,31,'2024-07-31'),(32,32,'2024-08-01'),(33,33,'2024-08-02'),(34,34,'2024-08-03'),(35,35,'2024-08-04'),(36,36,'2024-08-05'),(37,37,'2024-08-06'),(38,38,'2024-08-07'),(39,39,'2024-08-08'),(40,40,'2024-08-09'),(41,41,'2024-08-10'),(42,42,'2024-08-11'),(43,43,'2024-08-12'),(44,44,'2024-08-13'),(45,45,'2024-08-14'),(46,46,'2024-08-15'),(47,47,'2024-08-16'),(48,48,'2024-08-17'),(49,49,'2024-08-18'),(50,50,'2024-08-19');
/*!40000 ALTER TABLE `prescricao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:29
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `id_sala` int NOT NULL,
  `nome_sala` varchar(100) NOT NULL,
  `localizacao` varchar(100) NOT NULL,
  PRIMARY KEY (`id_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,'Sala 101','Bloco A - Térreo'),(2,'Sala 102','Bloco A - Térreo'),(3,'Sala 103','Bloco A - Térreo'),(4,'Sala 104','Bloco A - 1º Andar'),(5,'Sala 105','Bloco A - 1º Andar'),(6,'Sala 106','Bloco A - 2º Andar'),(7,'Sala 107','Bloco A - 2º Andar'),(8,'Sala 108','Bloco A - 3º Andar'),(9,'Sala 109','Bloco A - 3º Andar'),(10,'Sala 110','Bloco A - 4º Andar'),(11,'Sala de Exames 1','Bloco B - Subsolo'),(12,'Sala de Exames 2','Bloco B - Subsolo'),(13,'Sala de Radiologia','Bloco B - Térreo'),(14,'Sala de Tomografia','Bloco B - 1º Andar'),(15,'Sala de Ultrassom','Bloco B - 1º Andar'),(16,'Consultório 1','Bloco C - Térreo'),(17,'Consultório 2','Bloco C - Térreo'),(18,'Consultório 3','Bloco C - Térreo'),(19,'Consultório 4','Bloco C - 1º Andar'),(20,'Consultório 5','Bloco C - 1º Andar'),(21,'Consultório 6','Bloco C - 2º Andar'),(22,'Consultório 7','Bloco C - 2º Andar'),(23,'Consultório 8','Bloco C - 3º Andar'),(24,'Consultório 9','Bloco C - 3º Andar'),(25,'Consultório 10','Bloco C - 4º Andar'),(26,'Sala de Coleta 1','Bloco D - Laboratório'),(27,'Sala de Coleta 2','Bloco D - Laboratório'),(28,'Sala de Coleta 3','Bloco D - Laboratório'),(29,'Sala de Pequenos Procedimentos','Bloco E - Térreo'),(30,'Sala de Curativos','Bloco E - Térreo'),(31,'Sala de Emergência 1','Bloco F - Pronto Atendimento'),(32,'Sala de Emergência 2','Bloco F - Pronto Atendimento'),(33,'Sala de Observação','Bloco F - Pronto Atendimento'),(34,'Sala de Estabilização','Bloco F - Pronto Atendimento'),(35,'Sala de Reunião 1','Bloco G - Administrativo'),(36,'Sala de Reunião 2','Bloco G - Administrativo'),(37,'Sala de TI','Bloco G - Administrativo'),(38,'Sala de Arquivo','Bloco G - Subsolo'),(39,'Auditório Principal','Bloco H'),(40,'Sala de Treinamento 1','Bloco H'),(41,'Sala de Treinamento 2','Bloco H'),(42,'Sala de Espera 1','Bloco A - Térreo'),(43,'Sala de Espera 2','Bloco C - Térreo'),(44,'Sala de Espera 3','Bloco F - Entrada'),(45,'Sala de Administração','Bloco G - 1º Andar'),(46,'Sala de Diretoria','Bloco G - 2º Andar'),(47,'Sala de Enfermagem','Bloco F - 1º Andar'),(48,'Sala de Farmácia','Bloco E - Subsolo'),(49,'Sala de Esterilização','Bloco E - Subsolo'),(50,'Sala de Procedimentos 2','Bloco B - 2º Andar');
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:30
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_paciente` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `data_nascimento` date NOT NULL,
  `sexo` char(1) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'João Silva','123.456.789-01','1980-05-12','M','(11) 91234-5678','joao.silva@example.com','Rua das Flores, 123, São Paulo - SP'),(2,'Maria Oliveira','234.567.890-12','1975-08-23','F','(21) 99876-5432','maria.oliveira@example.com','Av. Brasil, 456, Rio de Janeiro - RJ'),(3,'Carlos Pereira','345.678.901-23','1990-01-05','M','(31) 98765-4321','carlos.pereira@example.com','Rua Minas Gerais, 789, Belo Horizonte - MG'),(4,'Ana Souza','456.789.012-34','1988-11-11','F','(41) 93456-7890','ana.souza@example.com','Rua XV de Novembro, 321, Curitiba - PR'),(5,'Lucas Lima','567.890.123-45','1995-09-19','M','(51) 96543-2109','lucas.lima@example.com','Av. Ipiranga, 852, Porto Alegre - RS'),(6,'Patrícia Costa','678.901.234-56','1983-02-28','F','(61) 91234-5678','patricia.costa@example.com','SQS 102, Bloco B, Brasília - DF'),(7,'Fernando Rocha','789.012.345-67','1979-07-14','M','(62) 99876-5432','fernando.rocha@example.com','Rua Goiás, 432, Goiânia - GO'),(8,'Juliana Martins','890.123.456-78','1987-12-01','F','(82) 98765-4321','juliana.martins@example.com','Rua do Sol, 88, Maceió - AL'),(9,'Ricardo Almeida','901.234.567-89','1992-03-20','M','(71) 93456-7890','ricardo.almeida@example.com','Av. Sete de Setembro, 300, Salvador - BA'),(10,'Vanessa Ramos','012.345.678-90','1985-06-15','F','(81) 96543-2109','vanessa.ramos@example.com','Rua Imperial, 45, Recife - PE'),(11,'André Ferreira','123.987.654-32','1978-09-25','M','(84) 91234-5678','andre.ferreira@example.com','Av. Prudente de Morais, 1200, Natal - RN'),(12,'Bianca Mendes','234.876.543-21','1993-11-30','F','(92) 99876-5432','bianca.mendes@example.com','Rua Manaus Moderna, 55, Manaus - AM'),(13,'Rafael Barbosa','345.765.432-10','1982-01-08','M','(95) 98765-4321','rafael.barbosa@example.com','Av. das Comunicações, 10, Boa Vista - RR'),(14,'Camila Duarte','456.654.321-09','1996-10-04','F','(96) 93456-7890','camila.duarte@example.com','Rua Macapá, 300, Macapá - AP'),(15,'Eduardo Teixeira','567.543.210-98','1971-04-18','M','(98) 96543-2109','eduardo.teixeira@example.com','Av. Litorânea, 700, São Luís - MA'),(16,'Larissa Nogueira','678.432.109-87','1994-08-10','F','(47) 91234-5678','larissa.nogueira@example.com','Rua Blumenau, 222, Joinville - SC'),(17,'Felipe Araújo','789.321.098-76','1986-06-01','M','(48) 99876-5432','felipe.araujo@example.com','Av. Beira Mar, 144, Florianópolis - SC'),(18,'Tatiane Lima','890.210.987-65','1991-12-22','F','(85) 98765-4321','tatiane.lima@example.com','Rua Fortaleza, 600, Fortaleza - CE'),(19,'Bruno Gomes','901.109.876-54','1984-03-13','M','(86) 93456-7890','bruno.gomes@example.com','Av. Frei Serafim, 111, Teresina - PI'),(20,'Débora Reis','012.098.765-43','1997-07-27','F','(91) 96543-2109','debora.reis@example.com','Rua Belém, 77, Belém - PA'),(21,'Henrique Castro','321.987.654-00','1983-05-03','M','(65) 91234-5678','henrique.castro@example.com','Rua das Palmeiras, 50, Cuiabá - MT'),(22,'Amanda Farias','432.876.543-11','1990-10-19','F','(66) 99876-5432','amanda.farias@example.com','Av. das Torres, 300, Rondonópolis - MT'),(23,'Marcos Tavares','543.765.432-22','1987-02-02','M','(69) 98765-4321','marcos.tavares@example.com','Rua Porto Velho, 80, Porto Velho - RO'),(24,'Priscila Rocha','654.654.321-33','1993-11-09','F','(63) 93456-7890','priscila.rocha@example.com','Av. JK, 400, Palmas - TO'),(25,'Leonardo Pinto','765.543.210-44','1976-09-29','M','(67) 96543-2109','leonardo.pinto@example.com','Rua Campo Grande, 60, Campo Grande - MS'),(26,'Raquel Dias','876.432.109-55','1989-07-17','F','(64) 91234-5678','raquel.dias@example.com','Rua das Laranjeiras, 77, Anápolis - GO'),(27,'Igor Santana','987.321.098-66','1996-01-25','M','(53) 99876-5432','igor.santana@example.com','Av. Bento Gonçalves, 1200, Pelotas - RS'),(28,'Beatriz Correia','098.210.987-77','1981-06-14','F','(54) 98765-4321','beatriz.correia@example.com','Rua das Acácias, 300, Caxias do Sul - RS'),(29,'Diego Matos','109.109.876-88','1977-04-05','M','(55) 93456-7890','diego.matos@example.com','Av. Farrapos, 999, Santa Maria - RS'),(30,'Renata Azevedo','210.098.765-99','1992-12-31','F','(56) 96543-2109','renata.azevedo@example.com','Rua General Osório, 15, Passo Fundo - RS'),(31,'Thiago Moreira','321.654.987-10','1988-03-08','M','(27) 91234-5678','thiago.moreira@example.com','Av. Vitória, 500, Vitória - ES'),(32,'Isabela Barros','432.543.876-21','1995-07-26','F','(27) 99876-5432','isabela.barros@example.com','Rua Santa Clara, 220, Vila Velha - ES'),(33,'Rodrigo Ribeiro','543.432.765-32','1981-09-11','M','(62) 98765-4321','rodrigo.ribeiro@example.com','Av. T-63, 333, Goiânia - GO'),(34,'Luana Fernandes','654.321.654-43','1984-01-20','F','(19) 93456-7890','luana.fernandes@example.com','Rua Campinas, 80, Campinas - SP'),(35,'Vitor Monteiro','765.210.543-54','1990-10-15','M','(11) 96543-2109','vitor.monteiro@example.com','Av. Paulista, 5000, São Paulo - SP'),(36,'Érica Almeida','876.109.432-65','1986-04-12','F','(21) 91234-5678','erica.almeida@example.com','Rua da Glória, 75, Rio de Janeiro - RJ'),(37,'Daniel Lopes','987.098.321-76','1973-06-18','M','(31) 99876-5432','daniel.lopes@example.com','Av. Amazonas, 1200, Belo Horizonte - MG'),(38,'Simone Batista','098.987.210-87','1982-08-03','F','(85) 98765-4321','simone.batista@example.com','Rua Dragão do Mar, 200, Fortaleza - CE'),(39,'Bruno Henrique','109.876.109-98','1993-02-27','M','(92) 93456-7890','bruno.henrique@example.com','Av. Eduardo Ribeiro, 321, Manaus - AM'),(40,'Natália Castro','210.765.098-09','1991-11-09','F','(71) 96543-2109','natalia.castro@example.com','Rua Chile, 89, Salvador - BA'),(41,'Gustavo Silva','321.654.789-12','1987-05-16','M','(11) 91234-1111','gustavo.silva@example.com','Rua Augusta, 200, São Paulo - SP'),(42,'Larissa Mendes','432.543.876-23','1994-08-25','F','(21) 99876-2222','larissa.mendes@example.com','Av. Copacabana, 300, Rio de Janeiro - RJ'),(43,'Marcelo Gonçalves','543.432.765-34','1979-12-12','M','(31) 98765-3333','marcelo.goncalves@example.com','Rua Savassi, 50, Belo Horizonte - MG'),(44,'Fabiana Ribeiro','654.321.654-45','1983-07-29','F','(41) 93456-4444','fabiana.ribeiro@example.com','Rua das Flores, 75, Curitiba - PR'),(45,'Thiago Santos','765.210.543-56','1992-03-19','M','(51) 96543-5555','thiago.santos@example.com','Av. Borges de Medeiros, 123, Porto Alegre - RS'),(46,'Camila Barbosa','876.109.432-67','1985-11-11','F','(61) 91234-6666','camila.barbosa@example.com','SQS 102, Bloco A, Brasília - DF'),(47,'Felipe Almeida','987.098.321-78','1978-01-01','M','(62) 99876-7777','felipe.almeida@example.com','Rua Goiás, 88, Goiânia - GO'),(48,'Renata Souza','098.987.210-89','1991-09-09','F','(82) 98765-8888','renata.souza@example.com','Rua do Sol, 150, Maceió - AL'),(49,'Diego Oliveira','109.876.109-90','1980-04-04','M','(71) 93456-9999','diego.oliveira@example.com','Av. Sete de Setembro, 400, Salvador - BA'),(50,'Juliana Santos','210.765.098-01','1986-12-21','F','(81) 96543-1010','juliana.santos@example.com','Rua Imperial, 500, Recife - PE');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:30
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: saudebd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `usuario_convenio`
--

DROP TABLE IF EXISTS `usuario_convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_convenio` (
  `id_paciente` int NOT NULL,
  `id_convenio` int NOT NULL,
  `numero_carteira` varchar(50) NOT NULL,
  `data_validade` date NOT NULL,
  PRIMARY KEY (`id_paciente`,`id_convenio`),
  KEY `id_convenio` (`id_convenio`),
  CONSTRAINT `Usuario_Convenio_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `usuario` (`id_paciente`),
  CONSTRAINT `Usuario_Convenio_ibfk_2` FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id_convenio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_convenio`
--

LOCK TABLES `usuario_convenio` WRITE;
/*!40000 ALTER TABLE `usuario_convenio` DISABLE KEYS */;
INSERT INTO `usuario_convenio` VALUES (1,2,'CART123456','2026-05-15'),(1,11,'CART111222','2027-09-10'),(1,39,'CART852258','2026-11-11'),(2,4,'CART654321','2025-11-30'),(2,13,'CART333444','2026-02-20'),(2,40,'CART963369','2027-12-12'),(3,1,'CART987654','2027-03-01'),(3,20,'CART555666','2025-07-17'),(3,41,'CART147741','2026-01-13'),(4,7,'CART321654','2026-12-12'),(4,22,'CART777888','2027-06-12'),(4,42,'CART258852','2025-02-14'),(5,10,'CART852741','2025-09-20'),(5,23,'CART999000','2026-03-21'),(5,43,'CART369963','2027-03-15'),(6,12,'CART147258','2027-07-14'),(6,24,'CART000111','2026-12-01'),(6,44,'CART741147','2026-04-16'),(7,5,'CART963852','2026-01-01'),(7,25,'CART222333','2027-10-01'),(7,45,'CART852258','2026-05-17'),(8,8,'CART753159','2026-10-10'),(8,26,'CART444555','2025-06-15'),(8,46,'CART963369','2027-06-18'),(9,6,'CART456123','2025-08-25'),(9,27,'CART666777','2026-07-01'),(9,47,'CART321123','2026-07-19'),(10,9,'CART159357','2027-04-30'),(10,28,'CART888999','2026-05-05'),(10,48,'CART654456','2026-08-20'),(11,3,'CART789456','2026-11-01'),(11,29,'CART123321','2027-08-08'),(11,49,'CART987789','2027-09-21'),(12,14,'CART369258','2026-06-30'),(12,30,'CART456654','2025-09-09'),(12,50,'CART111333','2026-10-22'),(13,15,'CART123789','2026-09-19'),(13,31,'CART789987','2026-11-11'),(14,16,'CART951753','2027-05-25'),(14,32,'CART321123','2026-02-02'),(15,17,'CART852963','2025-12-31'),(15,33,'CART654456','2027-03-03'),(16,18,'CART741852','2026-08-15'),(16,34,'CART987789','2026-04-04'),(17,19,'CART147369','2027-01-01'),(17,35,'CART159951','2026-06-06'),(18,20,'CART258963','2026-04-04'),(18,36,'CART753357','2027-07-07'),(19,37,'CART456654','2025-08-08'),(20,38,'CART789987','2026-10-10');
/*!40000 ALTER TABLE `usuario_convenio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 16:09:29
