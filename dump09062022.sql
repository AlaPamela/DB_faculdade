-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `cpf` char(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nome_mae` char(50) DEFAULT NULL,
  `nome_pai` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `whatsapp` char(20) DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  `fk_cod_turma` int DEFAULT NULL,
  `fk_cod_endereco` int DEFAULT NULL,
  PRIMARY KEY (`RA`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `fk_cod_turma` (`fk_cod_turma`),
  KEY `fk_cod_endereco` (`fk_cod_endereco`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`fk_cod_turma`) REFERENCES `turma` (`cod_turma`),
  CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`fk_cod_endereco`) REFERENCES `endereco` (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Emerson','Caetano','07182674190',1,'M','Claudia','Emerson','emerson@gmail.com','183647283',12,9,1),(2,'Antonio','Martins','03826219382',2,'M','Maria','Roberto','antonio@gmail.com','222222222',NULL,NULL,2),(3,'Thais','Lima','84637285935',1,'F','Lurdes','Carlos','thais@gmail.com','548309139',12,10,3),(4,'Andreia','Martins','27489235471',1,'F','Leticia','João','andreia@gmail.com','994827362',11,11,4),(5,'Ala','Pamela','96745388473',2,'F','Civirina','Roberto','ala@gmail.com','884627351',NULL,NULL,5),(6,'Maria','Neve','66472849373',1,'F','Simone',NULL,'maria@gmail.com','463748593',11,12,7),(7,'João','Pimentel','00773232503',1,'M','Rute','Davi','jãozinho@gmail.com','948572904',13,13,7),(8,'Arthur','Dultra','94503629591',1,'M','Esther','Tião','chaulinmatadodeporco@gmail.com','746283648',14,14,6),(9,'Pedro','Cabral','04759274196',1,'M','Adriana',NULL,'pedro@gmail.com','12346743',15,15,8),(10,'Igor','Figueredo','82648925376',1,'M','Rosane','Ramon','igor@gmail.com','860741578',16,16,9),(11,'Ivonete','Cardoso','64826385851',1,'F','Cristina','Ricardo','ivonete@gmail.com','456654564',15,9,10),(12,'Roberto','Silva','56403781309',1,'M','Barbara','Bruno','roberto@gmail.com','121212121',17,10,11),(13,'Arthur','Lima','94716390254',1,'M','Rita','Flavio','arthur@gmail.com','131313131',13,11,12),(14,'Rodrigo','Fernandes','95782109441',1,'M','Rosaria','Antonio','rodrigo@gmail.com','141414141',14,12,13),(15,'Esther','Costa','04947313804',1,'F','Maria','Thiago','esther@gmail.com','123321231',12,13,14),(16,'Juliana','Caetano','40284395325',2,'F','Claudia','Emerson','juliana@gmail.com','789987897',NULL,NULL,15),(17,'Juvenal','Ribeiro','24234582376',1,'M','Barbara','Breno','juvenal@gmail.com','680086806',18,14,16),(18,'Brunna','Pinheiro','12341516545',1,'F','Simaria',NULL,'bruninha@gmail.com','181818181',13,15,17),(19,'Flavio','Cardoso','12364356456',1,'M','Damares','Roberto','flavioDaXJ@gmail.com','579975795',16,16,18),(20,'Vinicios','Roriz','54345474546',1,'M','Divina','Lucas','Dinossalro@gmail.com','357753573',18,9,19);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_disciplina` (
  `fk_cod_disciplina` int NOT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`fk_RA`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_disciplina` VALUES (31,1),(32,3),(33,4),(34,6),(35,7),(36,8),(37,9),(38,10),(39,11),(40,12),(41,13),(42,14),(43,15),(44,17),(45,18),(46,19),(47,20),(48,1),(49,3),(50,4),(51,6),(52,7),(53,8),(54,9),(55,10),(56,11),(57,12),(58,13),(59,14),(60,15);
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` char(20) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (11,'Enge de softwarer',5),(12,'Analise de sistemas',5),(13,'Biologia',3),(14,'Historia',1),(15,'Matematica',2),(16,'Engenharia eletrica',4),(17,'Pscicologia',1),(18,'Medicina',3),(19,'Farmacia',3),(20,'Direito',1);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `fk_cod_curso` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_curso`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
INSERT INTO `curso_disciplina` VALUES (11,31),(12,32),(13,33),(14,34),(15,35),(16,36),(17,37),(18,38),(19,39),(20,40),(11,41),(12,42),(13,43),(14,44),(15,45),(16,46),(17,47),(18,48),(19,49),(20,50),(11,51),(12,52),(13,53),(14,54),(15,55),(16,56),(17,57),(18,58),(19,59),(20,60);
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `cod_departamento` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` char(30) NOT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Ciencias Humanas'),(2,'Matematica'),(3,'Biologicas'),(4,'Estagio'),(5,'Tecnologia Informação');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `cod_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` char(20) DEFAULT NULL,
  `descricao` char(50) DEFAULT NULL,
  `num_alunos` int NOT NULL,
  `carga_horaria` int NOT NULL,
  `fk_cod_departamento` int NOT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (31,'Raciocinio logico','Estudar logica',20,150,2),(32,'Pscicologia cogni','Estudar a mente',27,100,1),(33,'Eletronica digital','Estudar os computadores',30,125,2),(34,'Programação em C','Estudar codigo C',15,200,5),(35,'Sociologia','Estudar as pessoas',60,112,1),(36,'Calculo','Estudar matematica',17,140,2),(37,'Historia','Estudar livros infantis',37,100,3),(38,'Geografia','Estudar as pedras',35,111,1),(39,'Direito civil','Estudar os crimes',21,293,3),(40,'Portugues','ler tirinha da Mafalda',29,190,1),(41,'Balela','fazer nada',50,50,4),(42,'Banco de dados','como ser um DBA',30,200,5),(43,'Culinaria','fazer comida',26,135,4),(44,'quimica','virar o walter white',32,170,3),(45,'Corpo humano','estudar o corpo',12,220,1),(46,'Ninjitsu','virar um ninja',5,400,4),(47,'Roubo','não pode, é feio',7,99,4),(48,'Biologia','virus e umas coisas',28,225,2),(49,'fisica','acho pior que matematica',25,200,2),(50,'matematida descreta','tipo matematica, so que introvertida',18,200,2),(51,'literatura','ler livro',23,150,1),(52,'Mecanica','montar carro',28,150,4),(53,'Artesanato','fazer porta lapis',10,90,4),(54,'PHP','eu gosto',36,175,5),(55,'Java','eu não gosto',32,175,5),(56,'Patinhos','quack',20,100,3),(57,'Logica','pensar',21,200,2),(58,'estrategia','como dominar o mundo?',35,210,2),(59,'Box','dar porrada',24,100,4),(60,'xadres','os cambito da rainha',13,100,2);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_professor`
--

DROP TABLE IF EXISTS `disciplina_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_professor` (
  `fk_cod_professor` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_professor`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `disciplina_professor_ibfk_1` FOREIGN KEY (`fk_cod_professor`) REFERENCES `professor` (`cod_professor`),
  CONSTRAINT `disciplina_professor_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_professor`
--

LOCK TABLES `disciplina_professor` WRITE;
/*!40000 ALTER TABLE `disciplina_professor` DISABLE KEYS */;
INSERT INTO `disciplina_professor` VALUES (1,31),(2,32),(3,33),(6,34),(7,35),(9,36),(10,37),(1,38),(2,39),(3,40),(6,41),(7,42),(9,43),(10,44),(1,45),(2,46),(3,47),(6,48),(7,49),(9,50),(10,51),(1,52),(2,53),(3,54),(6,55),(7,56),(9,57),(10,58),(1,59),(2,60);
/*!40000 ALTER TABLE `disciplina_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cod_endereco` int NOT NULL AUTO_INCREMENT,
  `nome_rua` char(50) NOT NULL,
  `numero_rua` int NOT NULL,
  `complemento` char(20) DEFAULT NULL,
  `CEP` char(8) NOT NULL,
  `fk_cod_tipo_logradoura` int NOT NULL,
  PRIMARY KEY (`cod_endereco`),
  KEY `fk_cod_tipo_logradoura` (`fk_cod_tipo_logradoura`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_cod_tipo_logradoura`) REFERENCES `tipo_logradoura` (`cod_tipo_logradoura`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'QNL',5,'perto daqui','12345678',1),(2,'QNJ',15,'perto dali','87654321',1),(3,'QNQ',3,'perto dila','23415783',2),(4,'QNR',1,'perto daquilo','95639324',3),(5,'Ceilandia',43,'perto dacula','74256548',4),(6,'Rute',2,'perto disso','75836481',1),(7,'Don joão',21,'longe daqui','22462864',2),(8,'Pinheiros',12,'padaria pão bom','87463281',3),(9,'EPTG',32,'perto da estatua','86774245',3),(10,'Alameda',7,'condominio aiai','75638356',4),(11,'Comencial',31,'pedio grande','75278431',5),(12,'Itapu',35,'dinossauro','12345643',5),(13,'Tokyo',38,'rugido','66677788',2),(14,'Elio',32,'balão','23465498',1),(15,'Capitapuaba',53,'bomba','44239863',3),(16,'Capivarinha',47,'cocorico','11234631',3),(17,'Coqueiro',42,'galo','67381263',2),(18,'Roberto piris',4,'festa','68235317',2),(19,'Agusto lima',7,'ebaa','74827646',1),(20,'QNL',5,'perto daqui','12345678',1),(21,'QNJ',15,'perto dali','87654321',1),(22,'QNQ',3,'perto dila','23415783',2),(23,'QNR',1,'perto daquilo','95639324',3),(24,'Ceilandia',43,'perto dacula','74256548',4),(25,'Rute',2,'perto disso','75836481',1),(26,'Don joão',21,'longe daqui','22462864',2),(27,'Pinheiros',12,'padaria pão bom','87463281',3),(28,'EPTG',32,'perto da estatua','86774245',3),(29,'Alameda',7,'condominio aiai','75638356',4),(30,'Comencial',31,'pedio grande','75278431',5),(31,'Itapu',35,'dinossauro','12345643',5),(32,'Tokyo',38,'rugido','66677788',2),(33,'Elio',32,'balão','23465498',1),(34,'Capitapuaba',53,'bomba','44239863',3),(35,'Capivarinha',47,'cocorico','11234631',3),(36,'Coqueiro',42,'galo','67381263',2),(37,'Roberto piris',4,'festa','68235317',2),(38,'Agusto lima',7,'ebaa','74827646',1);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod_historico` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`cod_historico`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,'2020-02-01','2021-08-29',1),(2,'2020-03-02','2021-07-28',2),(3,'2020-01-03','2021-06-27',3),(4,'2020-06-04','2021-05-26',4),(5,'2020-07-05','2021-04-25',5),(6,'2020-04-06','2021-03-24',6),(7,'2020-12-07','2021-02-23',7),(8,'2020-04-08','2021-01-22',8),(9,'2020-08-09','2021-12-21',9),(10,'2020-11-10','2021-11-20',10),(11,'2020-03-11','2021-10-19',11),(12,'2020-07-12','2021-09-18',12),(13,'2020-04-13','2021-08-17',13),(14,'2020-03-14','2021-07-16',14),(15,'2020-09-15','2021-06-15',15),(16,'2020-10-16','2021-05-14',16),(17,'2020-11-17','2021-04-13',17),(18,'2020-06-18','2021-03-12',18),(19,'2020-07-19','2021-02-11',19),(20,'2020-08-20','2021-01-10',20);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_disciplina`
--

DROP TABLE IF EXISTS `historico_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_disciplina` (
  `fk_cod_disciplina` int NOT NULL,
  `fk_cod_historico` int NOT NULL,
  `nota` float DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
  PRIMARY KEY (`fk_cod_disciplina`,`fk_cod_historico`),
  KEY `fk_cod_historico` (`fk_cod_historico`),
  CONSTRAINT `historico_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`),
  CONSTRAINT `historico_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_historico`) REFERENCES `historico` (`cod_historico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_disciplina`
--

LOCK TABLES `historico_disciplina` WRITE;
/*!40000 ALTER TABLE `historico_disciplina` DISABLE KEYS */;
INSERT INTO `historico_disciplina` VALUES (31,1,6.2,3),(32,2,6.5,0),(33,3,7.1,6),(34,4,10,5),(35,5,3.5,5),(36,6,5.5,1),(37,7,7,2),(38,8,6,3),(39,9,10,0),(40,10,9.5,0),(41,11,4.1,4),(42,12,1.3,0),(43,13,5.4,7),(44,14,8.4,0),(45,15,8.9,3),(46,16,9.9,4),(47,17,10,5),(48,18,6,10),(49,19,7.4,2),(50,20,6.9,1),(51,1,2,1),(52,2,0,4),(53,3,7.6,4),(54,4,8.5,0),(55,5,9.1,4),(56,6,4.9,0),(57,7,6.5,6),(58,8,6.8,8),(59,9,7.5,1),(60,10,8.3,5);
/*!40000 ALTER TABLE `historico_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `cod_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` char(20) NOT NULL,
  `sobrenome_professor` char(50) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fk_cod_departamento` int NOT NULL,
  PRIMARY KEY (`cod_professor`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Luciano','Martins',1,1),(2,'Antonio','Lopes',1,2),(3,'Flavia','Pires',1,3),(4,'Bruno','Pinheiro',0,4),(5,'Pedro','Whegner',0,5),(6,'Julia','Matos',1,1),(7,'Ivonete','Cardoso',1,2),(8,'Rebeca','Solsa',0,3),(9,'Valdernei','Diney',1,4),(10,'Leandro','Lima',1,5);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `cod_telefone` int NOT NULL AUTO_INCREMENT,
  `num_telefone` char(20) DEFAULT NULL,
  `fk_cod_tipo` int DEFAULT NULL,
  PRIMARY KEY (`cod_telefone`),
  KEY `fk_cod_tipo` (`fk_cod_tipo`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fk_cod_tipo`) REFERENCES `tipo_telefone` (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'222222222',10),(2,'121212121',10),(3,'141414141',10),(4,'181818181',10),(5,'765213456',12),(6,'124356578',11),(7,'234654634',12),(8,'876342355',11),(9,'134556467',10),(10,'857625484',12),(11,'123321231',11),(12,'456654564',10),(13,'789987897',11),(14,'680086806',12),(15,'579975795',10),(16,'357753573',10),(17,'246642462',11),(18,'135531351',12),(19,'485632348',10),(20,'094642360',11),(21,'054387521',12),(22,'435476547',10),(23,'846728124',11),(24,'813764513',12),(25,'131313131',10);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_aluno`
--

DROP TABLE IF EXISTS `telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_aluno` (
  `cod_tel_aluno` int NOT NULL AUTO_INCREMENT,
  `fk_cod_telefone` int NOT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`cod_tel_aluno`),
  KEY `fk_RA` (`fk_RA`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
INSERT INTO `telefone_aluno` VALUES (1,5,1),(2,1,2),(3,6,4),(4,7,5),(5,8,6),(6,9,7),(7,10,9),(8,11,10),(9,2,12),(10,12,13),(11,3,14),(12,14,16),(13,15,17),(14,16,18),(15,4,19),(16,17,20),(17,18,1),(18,19,1),(19,20,1),(20,21,5),(21,22,5),(22,23,5),(23,24,9),(24,25,9),(25,13,9);
/*!40000 ALTER TABLE `telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_logradoura`
--

DROP TABLE IF EXISTS `tipo_logradoura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_logradoura` (
  `cod_tipo_logradoura` int NOT NULL AUTO_INCREMENT,
  `tipo_logradoura` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_logradoura`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_logradoura`
--

LOCK TABLES `tipo_logradoura` WRITE;
/*!40000 ALTER TABLE `tipo_logradoura` DISABLE KEYS */;
INSERT INTO `tipo_logradoura` VALUES (1,'rua'),(2,'alameda'),(3,'avenida'),(4,'campo'),(5,'chácara'),(6,'rua'),(7,'alameda'),(8,'avenida'),(9,'campo'),(10,'chácara');
/*!40000 ALTER TABLE `tipo_logradoura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefone` (
  `cod_tipo` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` char(8) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (10,'celular'),(11,'residen'),(12,'comercio');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `cod_turma` int NOT NULL AUTO_INCREMENT,
  `periodo` char(8) DEFAULT NULL,
  `num_alunos` int DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (9,'Matutino',25,'2020-03-01','2020-06-01',11),(10,'Vesper',31,'2020-06-01','2020-12-01',12),(11,'Matutino',27,'2020-03-01','2020-06-01',13),(12,'Vesper',29,'2020-06-01','2020-12-01',14),(13,'Matutino',25,'2020-03-01','2020-06-01',15),(14,'Vesper',23,'2020-06-01','2020-12-01',16),(15,'Noturno',30,'2020-03-01','2020-06-01',17),(16,'Noturno',20,'2020-06-01','2020-12-01',18);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 14:45:00
