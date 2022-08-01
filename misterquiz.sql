-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: misterquiz
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `question_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answer_question_id_foreign` (`question_id`),
  CONSTRAINT `answer_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,'1923',0,1,NULL,NULL),(2,'1938',0,1,NULL,NULL),(3,'1917',0,1,NULL,NULL),(4,'1914',1,1,NULL,NULL),(5,'France',0,2,NULL,NULL),(6,'Germany',0,2,NULL,NULL),(7,'Austria',1,2,NULL,NULL),(8,'Hungary',0,2,NULL,NULL),(9,'New York',0,3,NULL,NULL),(10,'Austin',0,3,NULL,NULL),(11,'Dallas',1,3,NULL,NULL),(12,'Miami',0,3,NULL,NULL),(13,'Andrew Jackson',1,4,NULL,NULL),(14,'Arthur Wellsley',0,4,NULL,NULL),(15,'Otto von Bismarck',0,4,NULL,NULL),(16,'Napoleon',0,4,NULL,NULL),(17,'Bull Halsey',0,5,NULL,NULL),(18,'George Patton',0,5,NULL,NULL),(19,'Douglas MacArthur',1,5,NULL,NULL),(20,'Omar Bradley',0,5,NULL,NULL),(21,'France',0,6,NULL,NULL),(22,'Austria',0,6,NULL,NULL),(23,'Italy',0,6,NULL,NULL),(24,'England',1,6,NULL,NULL),(25,'Johannes Gutenberg',1,7,NULL,NULL),(26,'Benjamin Franklin',0,7,NULL,NULL),(27,'Sir Isaac Newton',0,7,NULL,NULL),(28,'Martin Luther',0,7,NULL,NULL),(29,'The White Death',0,8,NULL,NULL),(30,'The Black Plague',0,8,NULL,NULL),(31,'Smallpox',0,8,NULL,NULL),(32,'The Bubonic Plague',1,8,NULL,NULL),(33,'Italy and Carthage',0,9,NULL,NULL),(34,'England and Germany',0,9,NULL,NULL),(35,'France and England',1,9,NULL,NULL),(36,'Spain and France',0,9,NULL,NULL),(37,'Martin Luther',1,10,NULL,NULL),(38,'Saint Augustus',0,10,NULL,NULL),(39,'Henry David Thoreau',0,10,NULL,NULL),(40,'Voltaire',0,10,NULL,NULL),(41,'Hannibal',0,11,NULL,NULL),(42,'Julius Caesar',0,11,NULL,NULL),(43,'William the Conqueror',0,11,NULL,NULL),(44,'Attila the Hun',1,11,NULL,NULL),(45,'Henry Repeating Rifle',0,12,NULL,NULL),(46,'Colt Peacemaker',0,12,NULL,NULL),(47,'Winchester Model 1873',1,12,NULL,NULL),(48,'Remington Army Revolver',0,12,NULL,NULL),(49,'Sylvia Plath',0,13,NULL,NULL),(50,'Virginia Woolf',0,13,NULL,NULL),(51,'John Steinbeck',0,13,NULL,NULL),(52,'William Shakespeare',1,13,NULL,NULL),(53,'The Three Musketeers',0,14,NULL,NULL),(54,'The Bible',1,14,NULL,NULL),(55,'Quotations from Chairman Mao Tse-tung',0,14,NULL,NULL),(56,'Quran',0,14,NULL,NULL),(57,'Barley glass',0,15,NULL,NULL),(58,'Sugar cup',1,15,NULL,NULL),(59,'Synthetic glass',0,15,NULL,NULL),(60,'Vinegar glass',0,15,NULL,NULL),(61,'Windmill',0,16,NULL,NULL),(62,'Hospital',0,16,NULL,NULL),(63,'Asylum',1,16,NULL,NULL),(64,'Hotel',0,16,NULL,NULL),(65,'Franz Liszt',0,17,NULL,NULL),(66,'Richard Wagner',0,17,NULL,NULL),(67,'Frédéric Chopin',1,17,NULL,NULL),(68,'Antonín Dvorak',0,17,NULL,NULL),(69,'Marilyn Monroe',0,18,NULL,NULL),(70,'Lady Gaga',1,18,NULL,NULL),(71,'Alicia Keys',0,18,NULL,NULL),(72,'Lana Del Rey',0,18,NULL,NULL),(73,'Pierre-Auguste Renoir',1,19,NULL,NULL),(74,'Pablo Picasso',0,19,NULL,NULL),(75,'Claude Monet',0,19,NULL,NULL),(76,'Miguel Ângelo',0,19,NULL,NULL),(77,'Meisje met de parel',0,20,NULL,NULL),(78,'Whistler\'s Mother',0,20,NULL,NULL),(79,'The Princesse de Broglie',0,20,NULL,NULL),(80,'Mona Lisa',1,20,NULL,NULL),(81,'\"Philadelphia\" and \"Forrest Gump\"',1,21,NULL,NULL),(82,'\"Philadelphia\" and \"Salving Private Ryan\"',0,21,NULL,NULL),(83,'\"Salving Private Ryan\" and \"Cast Away\"',0,21,NULL,NULL),(84,'\"Cast Away\" and \"Forrest Gump\"',0,21,NULL,NULL),(85,'Charlize Theron',0,22,NULL,NULL),(86,'Nicole Kidman',0,22,NULL,NULL),(87,'Angelina Jolie',1,22,NULL,NULL),(88,'Cameron Diaz',0,22,NULL,NULL),(89,'The Beatles',0,23,NULL,NULL),(90,'Madonna',0,23,NULL,NULL),(91,'Elvis Presley',1,23,NULL,NULL),(92,'Ed Sheeran',0,23,NULL,NULL),(93,'Baby One More Time',1,24,NULL,NULL),(94,'Toxic',0,24,NULL,NULL),(95,'Lucky',0,24,NULL,NULL),(96,'Born to Make You Happy',0,24,NULL,NULL),(97,'K2',0,25,NULL,NULL),(98,'Mount Everest',1,25,NULL,NULL),(99,'Mount Fuji',0,25,NULL,NULL),(100,'Kilimanjaro',0,25,NULL,NULL),(101,'184',0,26,NULL,NULL),(102,'10363',0,26,NULL,NULL),(103,'5290',0,26,NULL,NULL),(104,'7641',1,26,NULL,NULL),(105,'South Africa',1,27,NULL,NULL),(106,'Slovenia',0,27,NULL,NULL),(107,'Vietnam',0,27,NULL,NULL),(108,'Curaçao',0,27,NULL,NULL),(109,'Egypt',0,28,NULL,NULL),(110,'Mexico',1,28,NULL,NULL),(111,'Guatemala',0,28,NULL,NULL),(112,'Turkey',0,28,NULL,NULL),(113,'Hosted the first US Marshall Service',0,29,NULL,NULL),(114,'In honor of a famous Marshall',0,29,NULL,NULL),(115,'Due to the outline of the islands in the form of a great star',0,29,NULL,NULL),(116,'Were named after British explorer John Marshall',1,29,NULL,NULL),(117,'Tugela falls',1,30,NULL,NULL),(118,'Browne falls',0,30,NULL,NULL),(119,'Yosemite falls',0,30,NULL,NULL),(120,'James Bruce falls',0,30,NULL,NULL),(121,'Salvador',0,31,NULL,NULL),(122,'Rio de Janeiro',1,31,NULL,NULL),(123,'Brasília',0,31,NULL,NULL),(124,'São Paulo',0,31,NULL,NULL),(125,'Sydney',0,32,NULL,NULL),(126,'Melbourne',0,32,NULL,NULL),(127,'Adelaide',0,32,NULL,NULL),(128,'Camberra',1,32,NULL,NULL),(129,'Vatican',1,33,NULL,NULL),(130,'Monaco',0,33,NULL,NULL),(131,'Nauru',0,33,NULL,NULL),(132,'Tuvalu',0,33,NULL,NULL),(133,'Green Lantern',0,34,NULL,NULL),(134,'Batman',1,34,NULL,NULL),(135,'Wolverine',0,34,NULL,NULL),(136,'Spiderman',0,34,NULL,NULL),(137,'Madagascar',0,35,NULL,NULL),(138,'Zimbabwe',1,35,NULL,NULL),(139,'Kenya',0,35,NULL,NULL),(140,'Rwanda',0,35,NULL,NULL),(141,'California',0,36,NULL,NULL),(142,'Texas',0,36,NULL,NULL),(143,'Alaska',1,36,NULL,NULL),(144,'Washington',0,36,NULL,NULL),(145,'Eyelids',1,37,NULL,NULL),(146,'Feet soles',0,37,NULL,NULL),(147,'Hands',0,37,NULL,NULL),(148,'Arms',0,37,NULL,NULL),(149,'Dichloromethane',0,38,NULL,NULL),(150,'Acetone',1,38,NULL,NULL),(151,'Formalin',0,38,NULL,NULL),(152,'Butanol',0,38,NULL,NULL),(153,'Throat',1,39,NULL,NULL),(154,'Intestine',0,39,NULL,NULL),(155,'Ear',0,39,NULL,NULL),(156,'Eye',0,39,NULL,NULL),(157,'28',0,40,NULL,NULL),(158,'32',1,40,NULL,NULL),(159,'38',0,40,NULL,NULL),(160,'40',0,40,NULL,NULL),(161,'Giraffe',0,41,NULL,NULL),(162,'Elephant',1,41,NULL,NULL),(163,'Bison',0,41,NULL,NULL),(164,'Camel',0,41,NULL,NULL),(165,'Jellyfish',0,42,NULL,NULL),(166,'Blue whale',0,42,NULL,NULL),(167,'Octopus',1,42,NULL,NULL),(168,'Hippopotamus',0,42,NULL,NULL),(169,'Marie Curie',1,43,NULL,NULL),(170,'Sigrid Undset',0,43,NULL,NULL),(171,'Lorne Schindler',0,43,NULL,NULL),(172,'Irene Hemmingway',0,43,NULL,NULL),(173,'Foot',0,44,NULL,NULL),(174,'Hand',0,44,NULL,NULL),(175,'Chest',0,44,NULL,NULL),(176,'Ear',1,44,NULL,NULL),(177,'Luminous spots that we see when rubbing our eyes closed',1,45,NULL,NULL),(178,'A lung disease',0,45,NULL,NULL),(179,'An additive to increase the carbonation of a drink',0,45,NULL,NULL),(180,'Small openings in the solar ring',0,45,NULL,NULL),(181,'Trema Orientalis',0,46,NULL,NULL),(182,'Carpobrotus Chilensis',0,46,NULL,NULL),(183,'Acer Buergerianum',0,46,NULL,NULL),(184,'Gingko Biloba',1,46,NULL,NULL),(185,'Oxytocin',0,47,NULL,NULL),(186,'Insulin',1,47,NULL,NULL),(187,'Adrenaline',0,47,NULL,NULL),(188,'Epinephrine',0,47,NULL,NULL),(189,'Octopus',0,48,NULL,NULL),(190,'Seahorse',1,48,NULL,NULL),(191,'Jellyfish',0,48,NULL,NULL),(192,'Hermit Crab',0,48,NULL,NULL),(193,'1986',1,49,NULL,NULL),(194,'1967',0,49,NULL,NULL),(195,'1978',0,49,NULL,NULL),(196,'1990',0,49,NULL,NULL),(197,'90',0,50,NULL,NULL),(198,'80',1,50,NULL,NULL),(199,'70',0,50,NULL,NULL),(200,'60',0,50,NULL,NULL),(201,'Greece',1,51,NULL,NULL),(202,'Italy',0,51,NULL,NULL),(203,'France',0,51,NULL,NULL),(204,'China',0,51,NULL,NULL),(205,'3',0,52,NULL,NULL),(206,'1',0,52,NULL,NULL),(207,'5',1,52,NULL,NULL),(208,'6',0,52,NULL,NULL),(209,'Lance Armstrong',0,53,NULL,NULL),(210,'Bernard Hinault',0,53,NULL,NULL),(211,'Fausto Coppi',0,53,NULL,NULL),(212,'Eddy Merckx',1,53,NULL,NULL),(213,'Italy',0,54,NULL,NULL),(214,'Belgium',0,54,NULL,NULL),(215,'Brazil',1,54,NULL,NULL),(216,'Germany',0,54,NULL,NULL),(217,'Santiago Barnabéu',0,55,NULL,NULL),(218,'La Cartuja',0,55,NULL,NULL),(219,'RCDE Stadium',0,55,NULL,NULL),(220,'Camp Nou',1,55,NULL,NULL),(221,'Yoga',0,56,NULL,NULL),(222,'Pilates',1,56,NULL,NULL),(223,'Crossfit',0,56,NULL,NULL),(224,'Parkour',0,56,NULL,NULL),(225,'9',0,57,NULL,NULL),(226,'10',0,57,NULL,NULL),(227,'7',1,57,NULL,NULL),(228,'5',0,57,NULL,NULL),(229,'Judo',0,58,NULL,NULL),(230,'Sumo Wrestling',1,58,NULL,NULL),(231,'Karate',0,58,NULL,NULL),(232,'Akido',0,58,NULL,NULL),(233,'Ferrrari',0,59,NULL,NULL),(234,'HRT (Hispania Racing Team)',0,59,NULL,NULL),(235,'Renault',1,59,NULL,NULL),(236,'Lotus',0,59,NULL,NULL),(237,'Mark Selby',0,60,NULL,NULL),(238,'Ronnie O\'Sullivan',1,60,NULL,NULL),(239,'Judd Trump',0,60,NULL,NULL),(240,'Neil Robertson',0,60,NULL,NULL);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_03_16_160502_add_attributes_to_users_table',1),(6,'2021_03_17_105310_create_questions_table',1),(7,'2021_03_17_112752_create_answers_table',1),(8,'2021_03_22_103501_create_quiz_table',1),(9,'2022_07_12_163630_create_question_quizzes_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xp` int NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'World War I began in which year?',25,'History',NULL,NULL),(2,'Adolf Hitler was born in which country?',25,'History',NULL,NULL),(3,'John F. Kennedy was assassinated in:',25,'History',NULL,NULL),(4,'Who fought in the war of 1812?',75,'History',NULL,NULL),(5,'Which general famously stated \"I shall return?\"',25,'History',NULL,NULL),(6,'The Magna Carta was published by the King of which country?',25,'History',NULL,NULL),(7,'The first successful printing press was developed by this man.',25,'History',NULL,NULL),(8,'The disease that ravaged and killed a third of Europe\'s population in the 14th century is known as:',75,'History',NULL,NULL),(9,'The Hundred Years War was fought between what two countries?',25,'History',NULL,NULL),(10,'Which man wrote a document known as the 95 Theses?',25,'History',NULL,NULL),(11,'What famous 5th century A.D conqueror was known as \"The Scourge of God?\"',25,'History',NULL,NULL),(12,'What famous rifle is known in America as \"The Gun that Won the West?\"',75,'History',NULL,NULL),(13,'Who wrote \"To be, or not to be, that is the question\"?',25,'Art',NULL,NULL),(14,'According to Guinness world records, what is the best selling book of all time?',25,'Art',NULL,NULL),(15,'What type of glass is used in movies and TV special effects to break, without harming the actors?',25,'Art',NULL,NULL),(16,'Van Gogh\'s \"The Starry Night\" illustrates the view from the window of which building',75,'Art',NULL,NULL),(17,'Which composer had his heart buried in Poland and his body buried in France?',75,'Art',NULL,NULL),(18,'Who is Stefani Joanne Angelina Germanotta?',75,'Art',NULL,NULL),(19,'Which painter continued his work despite having crippling arthritis?',75,'Art',NULL,NULL),(20,'La Giaconda is better known as what?',25,'Art',NULL,NULL),(21,'Tom Hanks won two consecutive Oscars in 1994 and 1995. Which films were they for?',75,'Art',NULL,NULL),(22,'Who played the lead role in the 2001 movie Lara Croft: Tomb Raider?',25,'Art',NULL,NULL),(23,'Which singer has the most UK Number One singles ever?',75,'Art',NULL,NULL),(24,'What was Britney Spears\' first single called?',75,'Art',NULL,NULL),(25,'What is the highest mountain in the world?',25,'Geography',NULL,NULL),(26,'How many islands belong to the Philippines?',75,'Geography',NULL,NULL),(27,'Which one of these countries has more than one capital?',25,'Geography',NULL,NULL),(28,'Where is the largest pyramid in the world?',25,'Geography',NULL,NULL),(29,'How did the Marshall Islands get its name?',75,'Geography',NULL,NULL),(30,'What\'s the name of the second biggest waterfall in the world, located in South Africa?',75,'Geography',NULL,NULL),(31,'In which city is located the statue \"Christ the Redeemer\"?',25,'Geography',NULL,NULL),(32,'Which city is the capital of Australia?',25,'Geography',NULL,NULL),(33,'What is the smallest state in the world?',25,'Geography',NULL,NULL),(34,'Which Turkish city has the name of a cartoon character?',75,'Geography',NULL,NULL),(35,'Which country did once have the name Rhodesia?',75,'Geography',NULL,NULL),(36,'What is the largest state of the United States?',75,'Geography',NULL,NULL),(37,'Which part of the body has the thinnest skin?',25,'Science',NULL,NULL),(38,'which of these chemicals is often found in nail polish remover?',25,'Science',NULL,NULL),(39,'Where in the human body is the pharynx?',25,'Science',NULL,NULL),(40,'How many teeth does an adult human have?',25,'Science',NULL,NULL),(41,'Which creature has the longest pregnancy?',75,'Science',NULL,NULL),(42,'Which animal has more than one heart?',25,'Science',NULL,NULL),(43,'Who was the first woman to win the Nobel Prize?',75,'Science',NULL,NULL),(44,'Where is the smallest bone of the human body?',25,'Science',NULL,NULL),(45,'What are phosphenes?',75,'Science',NULL,NULL),(46,'Which plant, known as \"the bearer of hope\", survived the atomic bomb of Hiroshima in 1945?',75,'Science',NULL,NULL),(47,'Which hormone causes cells to absorb glucose from the blood?',25,'Science',NULL,NULL),(48,'Which marine animal is the only male creature that reproduces through the female\'s ovulation?',75,'Science',NULL,NULL),(49,'In which year did Maradona score a goal with his hand?',75,'Sports',NULL,NULL),(50,'How many minutes is a rugby match?',75,'Sports',NULL,NULL),(51,'In which country were the first Olympic Games held?',25,'Sports',NULL,NULL),(52,'How many matches did Mohammed Ali lose in his career?',75,'Sports',NULL,NULL),(53,'Which cyclist was also called \"The Cannibal\"?',75,'Sports',NULL,NULL),(54,'In which country is the Interlagos F1-circuit?',75,'Sports',NULL,NULL),(55,'What is the name of the Barcelona FC football stadium?',25,'Sports',NULL,NULL),(56,'Which popular fitness method was invented by a German?',75,'Sports',NULL,NULL),(57,'How many times has Michael Schumacher been a Formula 1 champion?',75,'Sports',NULL,NULL),(58,'What is the national sport in Japan?',25,'Sports',NULL,NULL),(59,'With which car did Fernando Alonso won his first tittle in Formula 1?',75,'Sports',NULL,NULL),(60,'Which snooker player is nicknamed as \"The Rocket\"?',25,'Sports',NULL,NULL);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_quizzes`
--

DROP TABLE IF EXISTS `question_quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_quizzes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `quizzes_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_quizzes`
--

LOCK TABLES `question_quizzes` WRITE;
/*!40000 ALTER TABLE `question_quizzes` DISABLE KEYS */;
INSERT INTO `question_quizzes` VALUES (1,12,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(2,11,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(3,7,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(4,3,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(5,15,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(6,17,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(7,22,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(8,13,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(9,27,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(10,30,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(11,28,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(12,34,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(13,40,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(14,42,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(15,37,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(16,44,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(17,51,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(18,57,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(19,53,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(20,49,2,'2022-07-15 01:06:59','2022-07-15 01:06:59'),(21,8,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(22,3,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(23,11,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(24,12,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(25,17,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(26,23,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(27,14,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(28,15,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(29,26,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(30,32,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(31,30,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(32,25,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(33,42,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(34,47,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(35,37,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(36,44,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(37,51,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(38,49,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(39,53,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(40,54,3,'2022-07-15 01:14:23','2022-07-15 01:14:23'),(41,5,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(42,9,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(43,1,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(44,4,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(45,15,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(46,14,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(47,18,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(48,24,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(49,26,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(50,28,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(51,32,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(52,33,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(53,48,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(54,38,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(55,47,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(56,37,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(57,56,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(58,54,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(59,50,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(60,51,4,'2022-07-15 01:43:33','2022-07-15 01:43:33'),(61,3,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(62,10,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(63,9,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(64,2,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(65,14,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(66,24,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(67,19,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(68,20,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(69,36,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(70,28,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(71,33,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(72,34,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(73,44,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(74,42,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(75,40,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(76,47,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(77,56,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(78,60,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(79,57,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(80,51,5,'2022-07-15 10:28:25','2022-07-15 10:28:25'),(81,1,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(82,2,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(83,12,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(84,8,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(85,23,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(86,19,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(87,22,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(88,14,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(89,26,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(90,35,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(91,27,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(92,31,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(93,47,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(94,42,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(95,40,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(96,46,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(97,53,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(98,56,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(99,54,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(100,59,6,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(101,2,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(102,8,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(103,10,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(104,11,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(105,17,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(106,21,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(107,15,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(108,13,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(109,36,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(110,26,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(111,32,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(112,28,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(113,47,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(114,46,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(115,41,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(116,45,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(117,57,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(118,54,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(119,56,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(120,51,7,'2022-07-15 13:34:02','2022-07-15 13:34:02'),(121,1,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(122,11,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(123,8,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(124,6,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(125,21,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(126,13,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(127,18,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(128,20,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(129,25,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(130,30,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(131,27,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(132,36,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(133,41,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(134,47,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(135,42,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(136,46,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(137,58,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(138,57,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(139,56,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(140,59,8,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(141,1,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(142,3,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(143,9,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(144,11,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(145,14,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(146,24,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(147,17,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(148,13,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(149,32,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(150,28,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(151,31,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(152,26,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(153,40,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(154,42,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(155,47,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(156,38,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(157,60,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(158,58,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(159,57,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(160,51,9,'2022-07-15 18:06:58','2022-07-15 18:06:58'),(161,11,10,'2022-07-15 18:16:12','2022-07-15 18:16:12'),(162,2,10,'2022-07-15 18:16:12','2022-07-15 18:16:12'),(163,8,10,'2022-07-15 18:16:12','2022-07-15 18:16:12'),(164,4,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(165,19,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(166,22,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(167,13,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(168,17,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(169,27,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(170,28,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(171,29,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(172,34,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(173,40,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(174,43,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(175,39,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(176,37,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(177,50,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(178,57,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(179,58,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(180,54,10,'2022-07-15 18:16:13','2022-07-15 18:16:13'),(181,2,11,'2022-07-15 22:03:20','2022-07-15 22:03:20'),(182,11,11,'2022-07-15 22:03:20','2022-07-15 22:03:20'),(183,12,11,'2022-07-15 22:03:20','2022-07-15 22:03:20'),(184,3,11,'2022-07-15 22:03:20','2022-07-15 22:03:20'),(185,21,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(186,24,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(187,23,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(188,14,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(189,36,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(190,33,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(191,31,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(192,29,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(193,41,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(194,40,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(195,46,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(196,43,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(197,59,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(198,50,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(199,56,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(200,60,11,'2022-07-15 22:03:21','2022-07-15 22:03:21'),(201,5,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(202,8,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(203,12,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(204,11,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(205,17,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(206,24,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(207,21,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(208,16,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(209,36,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(210,29,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(211,33,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(212,32,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(213,41,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(214,39,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(215,46,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(216,45,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(217,59,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(218,57,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(219,56,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(220,58,12,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(221,2,13,'2022-07-16 21:26:20','2022-07-16 21:26:20'),(222,11,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(223,1,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(224,12,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(225,18,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(226,15,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(227,17,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(228,21,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(229,31,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(230,26,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(231,28,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(232,29,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(233,39,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(234,41,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(235,38,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(236,46,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(237,51,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(238,60,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(239,54,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(240,50,13,'2022-07-16 21:26:21','2022-07-16 21:26:21'),(241,6,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(242,3,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(243,2,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(244,5,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(245,18,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(246,17,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(247,14,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(248,24,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(249,25,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(250,34,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(251,33,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(252,29,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(253,45,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(254,48,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(255,41,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(256,40,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(257,58,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(258,59,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(259,49,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(260,60,14,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(261,2,15,'2022-07-17 15:51:18','2022-07-17 15:51:18'),(262,1,15,'2022-07-17 15:51:18','2022-07-17 15:51:18'),(263,10,15,'2022-07-17 15:51:18','2022-07-17 15:51:18'),(264,8,15,'2022-07-17 15:51:18','2022-07-17 15:51:18'),(265,16,15,'2022-07-17 15:51:18','2022-07-17 15:51:18'),(266,20,15,'2022-07-17 15:51:18','2022-07-17 15:51:18'),(267,17,15,'2022-07-17 15:51:18','2022-07-17 15:51:18'),(268,23,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(269,25,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(270,30,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(271,27,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(272,31,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(273,48,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(274,40,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(275,44,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(276,39,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(277,60,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(278,54,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(279,52,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(280,56,15,'2022-07-17 15:51:19','2022-07-17 15:51:19'),(281,7,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(282,11,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(283,4,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(284,1,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(285,14,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(286,15,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(287,22,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(288,24,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(289,27,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(290,31,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(291,26,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(292,33,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(293,46,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(294,44,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(295,40,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(296,38,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(297,51,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(298,60,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(299,57,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(300,56,16,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(301,9,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(302,10,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(303,4,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(304,12,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(305,20,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(306,19,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(307,14,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(308,16,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(309,34,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(310,35,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(311,32,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(312,30,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(313,40,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(314,37,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(315,44,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(316,41,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(317,55,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(318,60,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(319,50,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(320,57,17,'2022-07-17 21:04:49','2022-07-17 21:04:49'),(321,8,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(322,2,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(323,11,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(324,1,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(325,18,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(326,23,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(327,17,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(328,16,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(329,26,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(330,33,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(331,29,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(332,31,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(333,41,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(334,38,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(335,45,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(336,40,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(337,57,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(338,49,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(339,55,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(340,60,18,'2022-07-17 21:22:59','2022-07-17 21:22:59'),(341,8,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(342,4,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(343,7,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(344,3,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(345,23,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(346,19,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(347,13,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(348,24,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(349,28,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(350,34,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(351,25,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(352,35,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(353,43,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(354,39,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(355,40,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(356,47,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(357,58,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(358,51,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(359,57,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(360,52,19,'2022-07-17 21:34:21','2022-07-17 21:34:21'),(361,2,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(362,7,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(363,8,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(364,11,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(365,16,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(366,24,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(367,20,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(368,13,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(369,34,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(370,27,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(371,33,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(372,35,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(373,48,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(374,46,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(375,45,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(376,47,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(377,51,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(378,59,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(379,49,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(380,55,20,'2022-07-17 21:42:34','2022-07-17 21:42:34'),(381,9,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(382,2,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(383,12,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(384,4,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(385,15,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(386,24,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(387,21,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(388,19,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(389,30,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(390,33,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(391,26,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(392,31,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(393,44,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(394,37,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(395,38,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(396,47,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(397,49,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(398,52,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(399,55,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(400,54,21,'2022-07-17 21:49:41','2022-07-17 21:49:41'),(401,7,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(402,11,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(403,2,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(404,1,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(405,16,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(406,21,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(407,15,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(408,19,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(409,31,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(410,32,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(411,36,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(412,30,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(413,37,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(414,42,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(415,40,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(416,41,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(417,49,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(418,54,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(419,59,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(420,58,22,'2022-07-17 22:03:42','2022-07-17 22:03:42'),(421,8,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(422,9,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(423,10,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(424,12,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(425,19,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(426,13,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(427,23,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(428,22,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(429,26,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(430,31,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(431,30,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(432,33,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(433,38,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(434,43,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(435,45,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(436,42,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(437,55,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(438,60,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(439,59,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(440,58,23,'2022-07-21 05:20:52','2022-07-21 05:20:52'),(441,8,24,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(442,9,24,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(443,3,24,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(444,4,24,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(445,21,24,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(446,20,24,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(447,23,24,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(448,15,24,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(449,29,24,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(450,33,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(451,31,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(452,30,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(453,42,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(454,48,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(455,41,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(456,46,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(457,59,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(458,50,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(459,57,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(460,49,24,'2022-07-21 18:19:07','2022-07-21 18:19:07'),(461,12,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(462,5,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(463,9,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(464,11,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(465,15,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(466,22,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(467,14,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(468,18,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(469,35,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(470,25,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(471,36,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(472,33,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(473,44,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(474,40,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(475,41,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(476,48,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(477,53,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(478,58,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(479,49,25,'2022-07-23 16:42:23','2022-07-23 16:42:23'),(480,50,25,'2022-07-23 16:42:23','2022-07-23 16:42:23');
/*!40000 ALTER TABLE `question_quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quizzes_user_id_foreign` (`user_id`),
  CONSTRAINT `quizzes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (1,1,1,'2022-07-15 01:05:18','2022-07-15 01:05:28'),(2,1,1,'2022-07-15 01:06:59','2022-07-15 01:14:03'),(3,1,1,'2022-07-15 01:14:23','2022-07-15 01:43:10'),(4,1,1,'2022-07-15 01:43:33','2022-07-15 01:44:14'),(5,1,2,'2022-07-15 10:28:25','2022-07-15 10:29:16'),(6,0,2,'2022-07-15 10:29:27','2022-07-15 10:29:27'),(7,1,3,'2022-07-15 13:34:02','2022-07-15 13:35:22'),(8,0,3,'2022-07-15 13:38:32','2022-07-15 13:38:32'),(9,1,4,'2022-07-15 18:06:58','2022-07-15 18:12:24'),(10,1,4,'2022-07-15 18:16:12','2022-07-15 18:22:24'),(11,1,5,'2022-07-15 22:03:20','2022-07-15 22:06:13'),(12,0,5,'2022-07-15 22:06:31','2022-07-15 22:06:31'),(13,1,6,'2022-07-16 21:26:20','2022-07-16 21:27:40'),(14,0,6,'2022-07-16 21:28:38','2022-07-16 21:28:38'),(15,1,7,'2022-07-17 15:51:18','2022-07-17 15:55:03'),(16,0,7,'2022-07-17 15:55:20','2022-07-17 15:55:20'),(17,1,8,'2022-07-17 21:04:49','2022-07-17 21:21:58'),(18,1,8,'2022-07-17 21:22:59','2022-07-17 21:33:39'),(19,1,8,'2022-07-17 21:34:21','2022-07-17 21:41:51'),(20,1,8,'2022-07-17 21:42:34','2022-07-17 21:48:19'),(21,1,8,'2022-07-17 21:49:41','2022-07-17 22:03:30'),(22,1,8,'2022-07-17 22:03:42','2022-07-17 22:05:35'),(23,1,1,'2022-07-21 05:20:52','2022-07-21 05:22:08'),(24,0,1,'2022-07-21 18:19:06','2022-07-21 18:19:06'),(25,0,10,'2022-07-23 16:42:23','2022-07-23 16:42:23');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `xp` int NOT NULL DEFAULT '0',
  `art` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0/0',
  `geography` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0/0',
  `history` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0/0',
  `science` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0/0',
  `sports` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0/0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'recyclebin','recyclebin@mail.ru',NULL,'$2y$10$oi828qBAsMZJBGz1.z/C6udG6Gzduxup1OQcgjfuNzARrMzmL.RXW',NULL,'2022-07-15 00:44:31','2022-07-21 05:22:08',950,'6/20','3/20','6/20','4/20','3/20'),(2,'abdu1234','tanatar_abdurahman@mail.ru',NULL,'$2y$10$Ee0ByLiT0dsrVHjU82DYBeq1yhvKkVMfUbQAtQ57gHl8AX98ZZcPi',NULL,'2022-07-15 10:28:21','2022-07-15 10:29:16',125,'0/4','2/4','1/4','2/4','0/4'),(3,'asd','asd@dsa.ru',NULL,'$2y$10$y/NngzUNMGNptIAd.G5XWepBP5Aod.ge1qo4XubBsLbSpkFhpPl32',NULL,'2022-07-15 13:33:33','2022-07-15 13:35:22',200,'1/4','0/4','1/4','1/4','1/4'),(4,'rshezarr','rshezarr@gmail.com',NULL,'$2y$10$zxpnngP8fA2GgbsTnkwVG.pSvvc7HSCpT9CttnBOODepUG3mB91Wq',NULL,'2022-07-15 18:06:56','2022-07-15 18:22:24',875,'6/8','3/8','5/8','7/8','4/8'),(5,'user','user@mail.com',NULL,'$2y$10$pkUBNaGuYK5o/V8/Ce2oUeRHIxx.9askRiTS9m.SL7gM.rQiKFll6',NULL,'2022-07-15 22:02:21','2022-07-15 22:06:13',550,'2/4','4/4','3/4','2/4','1/4'),(6,'quejey','tamer@mail.ru',NULL,'$2y$10$m7EKnYItMD9yslaAJEq9XuwE0eQAHYT0JLaoXp2l5JvZFsD4bOsPm',NULL,'2022-07-16 21:26:13','2022-07-16 21:27:40',125,'1/4','1/4','1/4','0/4','0/4'),(7,'acool','pastapappie23@gmail.com',NULL,'$2y$10$keo91mwLLKinSQpOSGKk0ezjlXj8IfsDR4H7Sgbp5V4ZlsSvfTEZW',NULL,'2022-07-17 15:51:11','2022-07-17 15:55:03',375,'1/4','3/4','2/4','2/4','1/4'),(8,'Aidar','mixturegg@enu.kz',NULL,'$2y$10$/QGKoN.6Q0Lyl5RTxlfPbekXmvncls3LUBYtwBwPP6X91IpH8NOoa',NULL,'2022-07-17 21:04:45','2022-07-17 22:05:35',5550,'23/24','24/24','21/24','24/24','22/24'),(9,'21321','2312312@mixsda.com',NULL,'$2y$10$flW4mlgXJMZOVRiRZnPlPOmOCQ9xKUAIsvelxrFheOcT.771K4Dqq',NULL,'2022-07-18 23:14:03','2022-07-18 23:14:03',0,'0/0','0/0','0/0','0/0','0/0'),(10,'fara','dsfdsf@dssfds',NULL,'$2y$10$F1Z2Dg9fzc1qhqg4qgd1c.00L6Tiw1O.0VwSDzPU9Tcrebh6aZOzO',NULL,'2022-07-23 16:42:17','2022-07-23 16:42:17',0,'0/0','0/0','0/0','0/0','0/0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-01  1:36:41
