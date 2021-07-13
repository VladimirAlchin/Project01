-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: course
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Temporary view structure for view `blank_request`
--

DROP TABLE IF EXISTS `blank_request`;
/*!50001 DROP VIEW IF EXISTS `blank_request`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `blank_request` AS SELECT 
 1 AS `id`,
 1 AS `users_id`,
 1 AS `description`,
 1 AS `status`,
 1 AS `request_type`,
 1 AS `created_at`,
 1 AS `update_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `data_mart`
--

DROP TABLE IF EXISTS `data_mart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_mart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description_is_id` int NOT NULL,
  `owner` int NOT NULL,
  `many_inf` varchar(123) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_data_mart_description_is1_idx` (`description_is_id`),
  KEY `fk_data_mart_users1_idx` (`owner`),
  CONSTRAINT `fk_data_mart_description_is1` FOREIGN KEY (`description_is_id`) REFERENCES `description_is` (`id`),
  CONSTRAINT `fk_data_mart_users1` FOREIGN KEY (`owner`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_mart`
--

LOCK TABLES `data_mart` WRITE;
/*!40000 ALTER TABLE `data_mart` DISABLE KEYS */;
INSERT INTO `data_mart` VALUES (1,1,2,'sap'),(2,2,4,'1c');
/*!40000 ALTER TABLE `data_mart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `description_is`
--

DROP TABLE IF EXISTS `description_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `description_is` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `owner` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_description_is_users1_idx` (`owner`),
  CONSTRAINT `fk_description_is_users1` FOREIGN KEY (`owner`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `description_is`
--

LOCK TABLES `description_is` WRITE;
/*!40000 ALTER TABLE `description_is` DISABLE KEYS */;
INSERT INTO `description_is` VALUES (1,'molestias','Soluta a exercitationem ut ducimus explicabo ',1),(2,'explicabo','Rerum odio aspernatur odio laboriosam sint. E',2),(3,'rem','Maxime et velit facere ea. Eligendi id natus ',3),(4,'alias','Tenetur perferendis odio sed est dignissimos ',4),(5,'ut','Aut earum sit ad voluptatem. Tenetur eos eos ',5),(6,'expedita','Veritatis ad rerum ea rerum quaerat. Beatae p',6),(7,'nihil','Rerum assumenda omnis aut est. Libero dolorib',7),(8,'qui','Dolorem et ea eveniet sequi consequatur. Sit ',8),(9,'beatae','Omnis dolorum error quos qui hic unde. Soluta',9),(10,'libero','Quod culpa pariatur officia doloremque amet e',10),(11,'deserunt','Qui sit dicta in id distinctio. A id odit fac',11),(12,'in','Quos quaerat sed voluptatem. Aliquam id provi',12),(13,'est','Quaerat dolor magni consequatur error quia qu',13),(14,'et','Ex dolor sunt vel voluptas ad officia. Facere',14),(15,'minus','Ratione quia voluptatem omnis et temporibus. ',15),(16,'placeat','Porro quaerat autem animi non odit. Sunt null',16),(17,'nam','Quis non est rerum amet. Vel laborum libero e',17),(18,'accusantium','Dolorum ut ut repellat. Ut molestiae iusto ul',18),(19,'voluptas','Qui et est aut est fugiat accusamus. Magni ip',19),(20,'culpa','Illum nihil non quidem enim quas. Voluptatibu',20),(21,'error','Repellat beatae sunt enim provident ipsum eli',21),(22,'libero','Autem voluptatem autem voluptatem. Dolorem as',22),(23,'aut','Nemo perspiciatis distinctio est qui vel beat',23),(24,'quia','Maxime velit placeat eaque omnis ut. Voluptat',24),(25,'ratione','Ad voluptatem facere autem et ad. Quam laudan',25),(26,'nobis','Ipsam consequatur harum ullam labore et. Aute',26),(27,'eum','Veniam autem recusandae alias voluptatem blan',27),(28,'facilis','Temporibus inventore alias qui qui voluptatib',28),(29,'corporis','Itaque error facere a illo. Expedita providen',29),(30,'doloribus','Mollitia a quis aspernatur. Voluptatibus rem ',30),(31,'aliquam','Cum perspiciatis et atque voluptas est quo of',31),(32,'ut','At totam aut aut ut architecto libero ea. Vel',32),(33,'recusandae','Labore aut eveniet adipisci eveniet quaerat e',33),(34,'ut','Quaerat sunt assumenda porro rerum excepturi ',34),(35,'aliquid','Omnis est enim aperiam et. Est id quam possim',35),(36,'voluptatem','Omnis reprehenderit est nostrum rerum. Eum un',36),(37,'quasi','Sit iste consequuntur quia molestias reiciend',37),(38,'vel','Eaque ex voluptas iusto dolorem maxime volupt',38),(39,'omnis','Ratione velit adipisci ut non blanditiis beat',39),(40,'corrupti','Rerum occaecati et iste qui eligendi. Volupta',40),(41,'non','Suscipit tempore sit et reprehenderit odit. V',41),(42,'ad','Est tenetur vel velit sunt ullam facere. Enim',42),(43,'mollitia','Similique praesentium porro vitae est enim. A',43),(44,'unde','Odit dolor id sed nesciunt quos. Quod nesciun',44),(45,'nemo','Fugit tempore odio sint aut odio. Numquam id ',45),(46,'cumque','Qui praesentium laboriosam ducimus rerum qui.',46),(47,'similique','Est rem et eligendi non. Est fugiat quia aliq',47),(48,'aliquid','Enim quia omnis voluptatem at. Suscipit imped',48),(49,'est','Quod voluptas nisi vel temporibus vel sed nat',49),(50,'modi','Corrupti omnis itaque corrupti sed enim paria',50),(51,'et','Assumenda esse similique ut ipsum temporibus ',51),(52,'cupiditate','Impedit quos officiis est repudiandae. Veniam',52),(53,'molestias','Sit iure possimus quia odio odit. Quis except',53),(54,'est','Illo amet nisi voluptatibus. Et iure velit eu',54),(55,'sunt','Perspiciatis dolore omnis cum nesciunt. Est q',55),(56,'recusandae','Dolorem magnam voluptas voluptatem aliquid an',56),(57,'nostrum','Placeat doloremque tempora hic neque nemo. Un',57),(58,'nihil','Rem sed veritatis eos sit. Sint et et quidem ',58),(59,'eos','Sunt ea ea ad possimus aliquam. Maxime possim',59),(60,'impedit','Sit saepe quia enim placeat nostrum dignissim',60),(61,'neque','Ipsum commodi quidem quis quibusdam in esse q',61),(62,'iusto','Tempore ducimus reprehenderit eos voluptates ',62),(63,'et','Est minima cupiditate qui ad ea quia iure. Es',63),(64,'quis','Suscipit est tenetur aut laboriosam voluptati',64),(65,'aut','Eveniet facilis est assumenda natus voluptas ',65),(66,'officiis','Et repudiandae culpa architecto corrupti accu',66),(67,'non','Omnis officia atque sit voluptatem aut perfer',67),(68,'a','Repudiandae nisi sunt et recusandae aut asper',68),(69,'molestias','Sequi recusandae velit nostrum id. Consequatu',69),(70,'officia','Ea laudantium modi voluptatem consequatur rat',70),(71,'unde','Eaque est consequuntur ipsum accusamus illum ',71),(72,'consequatur','Dolore aut hic alias omnis nemo corrupti. Rer',72),(73,'eum','Minus repellat nihil quasi voluptatem molesti',73),(74,'est','Blanditiis suscipit occaecati eius consequunt',74),(75,'inventore','Asperiores nemo eum quisquam id ut et corrupt',75),(76,'rerum','Hic aut voluptas enim autem non ea voluptatem',76),(77,'voluptatem','Neque quia autem incidunt quaerat ipsam molli',77),(78,'error','Aut reiciendis est blanditiis quis. Quas reru',78),(79,'sit','Ut cum error qui accusantium qui cum perferen',79),(80,'qui','Autem aperiam hic ipsum praesentium ad vel vo',80),(81,'aut','Laborum quidem expedita est minima cumque. Vo',81),(82,'voluptas','Culpa fugiat quia ullam hic ad dolore qui ven',82),(83,'nam','Esse qui est laborum omnis. Nemo atque autem ',83),(84,'illo','Distinctio et ratione consequatur est consequ',84),(85,'velit','Adipisci culpa dignissimos voluptatem et nihi',85),(86,'vel','Quam totam enim qui. Sit et sint in perferend',86),(87,'aut','Sequi eligendi totam qui quis qui. Reiciendis',87),(88,'explicabo','Perspiciatis voluptates doloremque doloribus ',88),(89,'voluptatibus','Voluptatem eligendi alias fugiat qui esse. Cu',89),(90,'dolor','Odit quisquam voluptatem nostrum laudantium o',90),(91,'ut','Delectus similique adipisci id id. Est molest',91),(92,'debitis','Esse culpa aut cum rerum. Eum cumque reiciend',92),(93,'repellat','Qui illo hic totam nobis nulla suscipit. Quae',93),(94,'voluptates','Laudantium dolorum sequi illum quibusdam magn',94),(95,'incidunt','Voluptatem molestias ab voluptas commodi ex. ',95),(96,'et','Ipsa eligendi voluptatem et culpa consequatur',96),(97,'accusamus','Exercitationem in et voluptate nam. Eius sed ',97),(98,'quo','Autem ut qui repudiandae aut odio. Incidunt h',98),(99,'dignissimos','Vitae suscipit totam doloremque impedit ducim',99),(100,'est','Aliquam illum perferendis vero omnis. Aperiam',100);
/*!40000 ALTER TABLE `description_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (0,'reiciendis','Est a nulla consequatur non doloremque explic','1986-08-23 00:00:00'),(1,'rem','Animi atque corporis perspiciatis sequi dolor','1999-04-11 00:00:00'),(2,'iure','Rerum repellendus aut quam neque ex qui non l','2016-01-15 00:00:00'),(3,'quaerat','Consectetur quasi sapiente incidunt voluptate','1991-01-16 00:00:00'),(4,'rerum','Mollitia quae incidunt quae amet ipsa. Velit ','2003-09-27 00:00:00'),(5,'molestias','Culpa qui praesentium facilis nam deserunt at','1974-12-31 00:00:00'),(6,'laborum','Hic iste debitis at est. Hic culpa quaerat co','1978-11-25 00:00:00'),(7,'atque','Sed nihil itaque vero ut eum qui reiciendis i','2014-05-27 00:00:00'),(8,'magnam','Vitae a nisi quo sint officiis facilis enim. ','2016-12-14 00:00:00'),(9,'dicta','Voluptas est delectus aut. Similique fugit id','2018-02-20 00:00:00'),(10,'at','Quo eum repellendus a amet. Necessitatibus as','1997-05-12 00:00:00'),(11,'nobis','Corrupti molestias iste eveniet nulla delenit','1997-05-23 00:00:00'),(12,'qui','Iusto inventore quia expedita labore dolorum ','2005-02-18 00:00:00'),(13,'et','Aut sint fugit sit dolores. Labore repudianda','1971-01-08 00:00:00'),(14,'aliquam','Odio eius enim ab officiis minima. Sint est q','2007-10-28 00:00:00'),(15,'placeat','Dignissimos laudantium sunt laudantium ullam.','1988-12-02 00:00:00'),(16,'ullam','Nostrum est et atque cupiditate dolorem sed e','2010-01-12 00:00:00'),(17,'dolorum','Totam autem voluptas est dolores. Voluptatem ','2004-11-23 00:00:00'),(18,'nesciunt','Enim et quis officia facere quia. Eaque et mo','1988-02-21 00:00:00'),(19,'neque','Tempore labore quaerat magni in. Et aut ratio','1999-08-05 00:00:00'),(20,'eius','Ut non mollitia qui et. Molestias et cupidita','2001-04-01 00:00:00'),(22,'ratione','Autem numquam voluptas accusantium quia. Iust','2011-08-03 00:00:00'),(23,'in','Sint cumque quas omnis. Minus excepturi conse','2017-10-11 00:00:00'),(24,'eum','Quia molestias est eveniet. Vel est explicabo','1975-03-12 00:00:00'),(25,'id','Vel eveniet odio deleniti. Id error voluptatu','2007-12-04 00:00:00'),(26,'perferendis','Iure sint et voluptatem dolores veniam eius l','2002-10-17 00:00:00'),(27,'est','Est et deleniti sit. Eos alias laborum saepe ','1999-04-16 00:00:00'),(28,'ut','Sed dolorem voluptatem voluptatum et. Iste re','2013-05-04 00:00:00'),(29,'tempora','Enim est quaerat deleniti voluptas est deleni','1988-06-23 00:00:00'),(30,'voluptatibus','Placeat voluptates omnis perspiciatis. Nobis ','1998-08-29 00:00:00'),(31,'commodi','Est corrupti odit sed aut quo. Doloribus debi','2001-03-18 00:00:00'),(32,'iusto','Consequatur doloribus labore occaecati ut. Id','1985-04-06 00:00:00'),(33,'doloremque','Sint ratione incidunt voluptatem ad. Vitae es','2003-02-17 00:00:00'),(34,'sed','Quibusdam itaque est quis aut ut. Dolorem ill','1970-12-08 00:00:00'),(35,'cum','Ea officiis ut consequuntur harum nam eius ut','2016-10-31 00:00:00'),(36,'beatae','Debitis facilis qui facilis. Natus dignissimo','2017-02-26 00:00:00'),(37,'non','Quia vitae sit nemo tempore fuga. Omnis quaer','1994-06-21 00:00:00'),(38,'sint','Quia asperiores ad veritatis consequatur. Ull','1974-04-01 00:00:00'),(39,'officia','Sunt accusamus veniam eius et qui. Maxime pos','1979-03-26 00:00:00'),(40,'quasi','Laborum consequatur dignissimos aliquam debit','2014-11-08 00:00:00'),(41,'ab','Corrupti et autem unde consequatur minima est','1980-05-06 00:00:00'),(42,'earum','Cumque perferendis voluptatum est a et quis i','1995-12-18 00:00:00'),(43,'magni','Omnis error aut iste dolor iure reiciendis. L','2003-03-28 00:00:00'),(44,'facere','Ullam ut laboriosam doloremque sit et aut est','2005-12-15 00:00:00'),(45,'accusantium','Sunt itaque dolorem fugiat soluta quia. Paria','1976-06-04 00:00:00'),(46,'laudantium','Eveniet praesentium molestiae dolor hic atque','1991-01-11 00:00:00'),(47,'eaque','Sed ut inventore libero quos. Cum consectetur','1971-03-22 00:00:00'),(48,'totam','Consequatur et magni atque expedita ea. Est e','1981-01-31 00:00:00'),(49,'omnis','Veniam nobis placeat libero odit et autem ame','2004-10-17 00:00:00'),(50,'similique','Quis commodi tenetur recusandae enim nesciunt','2019-04-16 00:00:00'),(51,'enim','Voluptatem dicta rerum deserunt. Officia volu','1997-08-27 00:00:00'),(52,'animi','Qui eum minima eaque non distinctio nisi simi','1971-09-13 00:00:00'),(53,'sequi','Laborum consequatur eos voluptatum unde ut au','2001-04-17 00:00:00'),(54,'debitis','Unde accusamus similique distinctio sed vitae','2006-09-24 00:00:00'),(55,'cupiditate','Quia vitae repellendus ut qui. Velit modi cor','2011-10-05 00:00:00'),(56,'repellat','Consequuntur ipsum aliquam aut velit quia nem','1992-06-09 00:00:00'),(57,'sit','Culpa eveniet ex cum consequatur. Iste ea ea ','2000-07-22 00:00:00'),(58,'architecto','Adipisci ut in officiis suscipit accusamus se','2016-10-23 00:00:00'),(59,'vitae','Dolorem culpa saepe aperiam voluptatem. Fugia','2019-11-18 00:00:00'),(60,'fuga','Explicabo iusto eum commodi rerum. Odio corru','1976-01-16 00:00:00'),(61,'tempore','Facilis enim incidunt architecto consequuntur','2017-08-13 00:00:00'),(62,'aut','Ut ut quo corporis nam. Vel vel nisi qui et v','2006-07-17 00:00:00'),(63,'consequatur','Saepe et ipsa sequi sequi eligendi nesciunt. ','1995-12-05 00:00:00'),(64,'maxime','Sit nemo laborum modi omnis accusantium. Dolo','2007-01-25 00:00:00'),(65,'vero','Mollitia enim rerum velit molestiae dolorem e','1975-02-09 00:00:00'),(66,'culpa','Culpa eos ut qui qui. Accusamus non eos omnis','1980-06-28 00:00:00'),(67,'expedita','Nesciunt et ex architecto. Nobis corporis ips','2010-12-01 00:00:00'),(68,'velit','Odio minima eum molestias doloremque id ullam','1997-01-15 00:00:00'),(69,'reprehenderit','Cum repellat molestias voluptas veritatis et.','2019-06-04 00:00:00'),(70,'molestiae','Modi occaecati distinctio rerum quo. Veritati','1997-07-20 00:00:00'),(71,'ipsam','Culpa velit natus maiores libero similique qu','1982-05-02 00:00:00'),(72,'quia','Minima in tenetur dolor ea aspernatur. Sint q','1995-05-13 00:00:00'),(73,'deleniti','Atque voluptatem et officia temporibus sunt. ','2016-06-30 00:00:00'),(74,'assumenda','Ut repellat consequuntur autem sequi et error','2000-04-12 00:00:00'),(75,'iste','Totam et est et assumenda animi animi. Sequi ','1997-07-18 00:00:00'),(76,'fugiat','Voluptatem accusamus nam ab ad occaecati. Sim','2016-10-07 00:00:00'),(77,'suscipit','Et accusamus quos vel libero consectetur aut.','1970-01-24 00:00:00'),(78,'voluptate','Est sit est dolor ut deserunt inventore beata','2006-05-12 00:00:00'),(79,'nihil','Culpa molestiae qui dolorum voluptates sequi ','1970-01-02 00:00:00'),(80,'corporis','Enim sed inventore enim quidem non repudianda','1982-06-10 00:00:00'),(81,'dolorem','Porro officiis ducimus amet qui. Sed repellat','1996-06-20 00:00:00'),(82,'vel','Et provident dolores ab. Ipsam suscipit dolor','2001-05-11 00:00:00'),(83,'veniam','Eaque laudantium voluptates consequatur volup','2004-12-31 00:00:00'),(84,'labore','Corporis quo incidunt deleniti sunt et in ill','2004-10-16 00:00:00'),(85,'facilis','Enim doloribus doloribus sequi quasi. Minus c','1982-02-10 00:00:00'),(86,'incidunt','Laudantium incidunt labore molestiae ex error','1979-12-12 00:00:00'),(87,'minus','Velit perferendis id nihil voluptates et et u','1995-12-24 00:00:00'),(88,'illo','Quia ad doloribus accusamus aut. Et quibusdam','1996-08-29 00:00:00'),(89,'modi','Dolorem quia provident tempore non ipsam qui ','2000-03-05 00:00:00'),(90,'quis','Accusamus adipisci quam ad at velit. Similiqu','2005-02-23 00:00:00'),(91,'deserunt','Doloribus quos est est culpa error. Delectus ','2008-06-24 00:00:00'),(92,'provident','Sunt nesciunt veritatis consectetur ut sit. E','1996-11-15 00:00:00'),(93,'voluptates','Sed delectus pariatur at nam quia. Molestiae ','1972-07-15 00:00:00'),(94,'esse','Aut vel provident et molestiae dolorem. Moles','1998-12-02 00:00:00'),(95,'voluptas','Sit est a et et quod eligendi dolor. Voluptat','2010-11-19 00:00:00'),(96,'consectetur','Animi aperiam accusantium voluptas harum volu','1972-08-31 00:00:00'),(97,'mollitia','Ut tempore esse rerum facere enim illum magna','2015-08-07 00:00:00'),(98,'dolores','Sed odit eum deleniti saepe assumenda et eos.','1978-05-17 00:00:00'),(99,'dignissimos','In quas numquam nisi molestias. Tenetur offic','1980-01-30 00:00:00'),(100,'voluptatem','Voluptatem excepturi praesentium omnis eligen','2018-08-21 00:00:00'),(101,'new_group','test group update','2021-03-03 02:33:21');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_has_data_mart`
--

DROP TABLE IF EXISTS `groups_has_data_mart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_has_data_mart` (
  `groups_id` int NOT NULL,
  `data_mart_id` int NOT NULL,
  PRIMARY KEY (`groups_id`,`data_mart_id`),
  KEY `fk_groups_has_data_mart_data_mart1_idx` (`data_mart_id`),
  KEY `fk_groups_has_data_mart_groups1_idx` (`groups_id`),
  CONSTRAINT `fk_groups_has_data_mart_data_mart1` FOREIGN KEY (`data_mart_id`) REFERENCES `data_mart` (`id`),
  CONSTRAINT `fk_groups_has_data_mart_groups1` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_has_data_mart`
--

LOCK TABLES `groups_has_data_mart` WRITE;
/*!40000 ALTER TABLE `groups_has_data_mart` DISABLE KEYS */;
INSERT INTO `groups_has_data_mart` VALUES (1,1),(2,1),(3,2),(4,2);
/*!40000 ALTER TABLE `groups_has_data_mart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `login_groups`
--

DROP TABLE IF EXISTS `login_groups`;
/*!50001 DROP VIEW IF EXISTS `login_groups`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `login_groups` AS SELECT 
 1 AS `login`,
 1 AS `firstname`,
 1 AS `email`,
 1 AS `groups_id`,
 1 AS `users_id`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `table` varchar(45) NOT NULL,
  `actions` int NOT NULL,
  `users_id` int NOT NULL,
  `key_col` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_logs_users1_idx` (`users_id`),
  CONSTRAINT `fk_logs_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'2021-03-03 01:45:27','users',1,101,'103'),(2,'2021-03-03 02:33:21','groups',1,101,'101'),(3,'2021-03-03 02:34:02','groups',2,101,'101');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `users_id` int NOT NULL,
  `email` varchar(125) NOT NULL,
  `firstname` varchar(125) NOT NULL,
  `lastname` varchar(125) NOT NULL,
  `AD_name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `AD_name_UNIQUE` (`AD_name`),
  KEY `fk_profiles_users_idx` (`users_id`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (56,'abraham84@example.net','Roderick','Swift','tempora','1984-05-18 12:48:02'),(3,'acassin@example.net','Trever','Pfannerstill','odit','1993-01-29 22:40:53'),(43,'acormier@example.com','Cassie','Wisoky','assumenda','1975-08-13 02:27:58'),(97,'ahermiston@example.com','Kenny','Pfannerstill','deleniti','1975-06-22 19:16:32'),(44,'alden.pacocha@example.net','Vilma','Von','illum','2012-05-30 08:41:26'),(47,'altenwerth.lizeth@example.com','Eveline','Grant','ipsam','1973-04-17 04:20:28'),(88,'anne.feeney@example.com','Guiseppe','Medhurst','eveniet','2014-06-18 22:02:05'),(71,'annette.larkin@example.org','Dave','Koss','dolorum','1982-12-18 16:30:58'),(70,'auer.toby@example.net','Vada','Greenfelder','voluptatem','1981-09-10 06:57:27'),(39,'bbailey@example.net','Maymie','Larson','iste','1973-09-04 08:14:05'),(68,'bdaniel@example.net','Estell','Gorczany','cum','1976-07-15 01:11:32'),(72,'beulah61@example.com','Gene','Zulauf','quis','1975-04-17 02:39:02'),(17,'beverly.d\'amore@example.org','Joe','McDermott','exercitationem','1976-09-18 11:09:20'),(94,'boehm.karl@example.com','Ari','West','commodi','2002-01-14 23:30:41'),(65,'braulio72@example.org','Skyla','Beahan','beatae','2002-04-19 04:14:10'),(48,'bridie.goyette@example.net','Delpha','Bruen','dolorem','1991-05-25 08:43:48'),(82,'brigitte35@example.net','Willie','Bruen','corporis','1979-03-07 22:03:47'),(58,'carroll.aimee@example.net','Hank','Orn','consectetur','2016-02-21 18:42:24'),(57,'cathrine00@example.net','Raymundo','Gutmann','odio','2008-05-13 03:41:26'),(67,'caufderhar@example.net','Kathryne','Green','voluptatibus','1999-02-07 15:05:24'),(96,'ccasper@example.org','Talia','Jerde','cumque','1995-11-05 18:30:00'),(15,'christiansen.darlene@example.org','Simone','Hermiston','aliquam','1987-05-21 15:19:25'),(34,'citlalli98@example.com','Colin','Stanton','ut','1988-10-27 12:41:30'),(5,'conn.hayley@example.com','Katelyn','Emard','in','1983-01-27 18:51:47'),(9,'conner88@example.com','Cale','Cummerata','asperiores','1975-08-16 22:13:49'),(16,'cronin.germaine@example.org','Bonita','Romaguera','eius','2020-07-28 19:26:51'),(10,'danial51@example.net','Rodger','Walter','qui','2005-05-12 02:46:23'),(74,'deborah.dibbert@example.org','Bradly','Murray','voluptatum','1983-01-17 11:09:11'),(54,'delfina.feil@example.com','Wellington','Rogahn','doloremque','1980-12-23 14:57:59'),(8,'djohns@example.com','Jules','Renner','et','1986-02-03 14:45:45'),(24,'echristiansen@example.org','Danielle','Ullrich','labore','2015-09-23 10:48:41'),(26,'edwin21@example.com','Mable','Haag','sit','1982-12-30 13:25:23'),(64,'eliezer.glover@example.net','Jeffrey','Padberg','natus','2015-04-20 09:50:01'),(84,'elisha03@example.net','Winfield','Nienow','minima','2005-02-28 08:19:42'),(4,'emmerich.walker@example.org','Schuyler','Douglas','dolor','1999-04-20 04:55:44'),(20,'erdman.nyasia@example.net','Keshaun','McLaughlin','dolores','2000-02-21 03:12:15'),(86,'gene22@example.org','Lance','Aufderhar','provident','1987-08-12 05:05:20'),(1,'giovani.swaniawski@example.org','Andy','Pacocha','cupiditate','1982-05-25 00:02:45'),(76,'grimes.rene@example.org','Amaya','Stroman','numquam','1980-05-18 01:16:49'),(77,'hansen.helmer@example.org','Hassie','Romaguera','minus','2002-02-19 14:47:33'),(6,'heathcote.pascale@example.net','Alanis','Goldner','sint','2015-03-21 06:57:00'),(66,'hjohns@example.org','Aimee','Baumbach','laudantium','1994-12-04 05:35:42'),(37,'hudson.rodrick@example.net','Marina','Ebert','modi','2001-08-13 03:08:45'),(93,'hyatt.gail@example.com','Jeromy','Bailey','aperiam','1974-10-27 08:47:23'),(2,'irma.will@example.com','Gordon','Hauck','ea','1999-06-03 22:19:21'),(31,'jameson.wiza@example.org','Emanuel','Muller','molestiae','1984-04-22 09:02:43'),(7,'jdavis@example.org','Jacques','Lesch','nesciunt','1996-04-29 01:27:40'),(13,'jerde.lexus@example.org','Ernestine','Denesik','inventore','1992-01-10 09:01:22'),(18,'jessie70@example.com','Jaclyn','Ernser','hic','1971-12-08 21:36:25'),(69,'kadin73@example.net','Kelsie','Lehner','repellat','2012-11-21 11:36:20'),(45,'karianne63@example.org','Granville','Johns','est','1984-09-28 18:52:49'),(78,'kathlyn.yost@example.com','Ahmad','Schumm','quos','1971-01-23 19:13:51'),(50,'kevin17@example.com','Hollis','Schoen','quia','1995-06-06 22:37:19'),(36,'kilback.owen@example.org','Luis','Grady','id','2014-01-14 07:13:50'),(80,'klynch@example.com','Carmen','Turcotte','mollitia','1999-06-14 01:41:45'),(11,'kozey.gracie@example.net','Tiffany','O\'Conner','accusamus','2013-05-19 18:28:31'),(51,'kylie.hagenes@example.com','Dudley','Tillman','neque','1977-02-13 09:17:10'),(99,'lebsack.breanne@example.net','Eleonore','Cronin','accusantium','1989-04-01 08:55:19'),(73,'ledner.wilhelm@example.net','Krystal','Auer','officia','1976-08-15 03:56:21'),(32,'lesch.jeramie@example.net','Fannie','Schumm','consequatur','2007-07-20 16:48:03'),(33,'lynch.kiel@example.org','Esmeralda','Anderson','laborum','1996-08-26 07:27:26'),(53,'magdalen04@example.org','Melyssa','Bernier','eos','1986-02-14 01:44:15'),(30,'mathilde89@example.net','Flavie','Hane','quidem','1978-05-20 05:43:59'),(98,'maxie.fahey@example.net','Myriam','Rice','eligendi','1970-12-12 18:00:56'),(63,'meaghan54@example.com','Braeden','Larkin','nihil','1981-04-17 00:51:00'),(81,'mfahey@example.com','Raegan','Kuvalis','quaerat','2012-09-25 05:34:36'),(29,'nia.mante@example.net','Alessandra','Braun','distinctio','1999-04-14 05:15:40'),(23,'octavia.rutherford@example.net','Leonor','Veum','vel','1987-04-11 02:09:48'),(41,'opal33@example.net','Rosalia','Ankunding','harum','2011-12-12 12:28:13'),(91,'plakin@example.org','Andrew','Greenholt','atque','1993-11-11 06:16:41'),(27,'pswift@example.org','Rosemary','Mueller','praesentium','2016-11-12 23:19:06'),(90,'rafaela.koss@example.com','Oceane','Yost','facere','2016-11-02 13:35:14'),(92,'raphaelle04@example.org','Sallie','Frami','debitis','1997-09-04 12:23:45'),(25,'rath.ella@example.com','Guillermo','Mante','ducimus','2008-12-27 16:11:20'),(52,'ricardo.gaylord@example.com','Ila','Treutel','adipisci','1974-09-16 04:40:39'),(42,'rod95@example.com','Yasmine','Von','esse','1989-07-09 09:53:12'),(87,'sauer.caden@example.org','Enrique','Welch','excepturi','1987-11-12 01:17:58'),(35,'schinner.luigi@example.com','Ulices','Ledner','rerum','1981-05-25 01:32:11'),(40,'shane.mueller@example.org','Mckenzie','Prohaska','magni','1981-10-01 08:03:26'),(59,'sibyl34@example.net','Vilma','Stark','expedita','1980-11-22 04:35:21'),(85,'sjacobson@example.org','Pansy','Tromp','omnis','1992-05-01 02:30:50'),(28,'srath@example.com','Nelle','Kuhn','magnam','2015-12-19 18:21:26'),(83,'stehr.joshuah@example.net','Bernie','Connelly','quo','1976-09-21 00:30:35'),(21,'tamia.hirthe@example.org','Patsy','Moen','aspernatur','1989-08-03 10:09:15'),(89,'thansen@example.com','Ryley','Larkin','eum','2010-05-28 20:00:33'),(38,'thompson.kellen@example.org','Jessy','Greenholt','sunt','1987-08-05 23:56:20'),(12,'tlabadie@example.com','Aliyah','Willms','aut','2016-03-14 18:17:14'),(62,'toy.frieda@example.org','Edgar','Shields','delectus','2015-08-12 06:47:52'),(79,'trace15@example.org','Destiny','Bergnaum','nulla','2013-05-13 13:10:38'),(49,'tyrique25@example.com','Chesley','Murray','sed','2002-07-15 11:43:32'),(46,'uratke@example.org','Harrison','O\'Kon','molestias','2017-03-04 13:03:30'),(14,'veda.cassin@example.org','Ryley','Jaskolski','eaque','2020-06-08 04:50:34'),(19,'volkman.missouri@example.net','Ramiro','McClure','pariatur','1974-11-19 22:42:09'),(75,'wilkinson.jena@example.net','Gabriella','Hamill','nisi','1987-06-23 13:11:27'),(100,'wlittel@example.org','Kip','Pacocha','ipsum','1998-09-29 22:06:10'),(95,'xschimmel@example.net','Dorothea','Powlowski','error','1998-03-12 23:10:59'),(61,'yoshiko72@example.org','Quentin','Willms','illo','1978-06-02 14:20:46'),(60,'zemlak.alaina@example.net','Hilton','Torp','perspiciatis','2015-04-25 01:48:45'),(55,'zkreiger@example.com','Kim','Schulist','quam','1971-09-27 08:29:34'),(22,'zroberts@example.net','Madisyn','O\'Reilly','blanditiis','1998-12-25 00:24:46');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` int NOT NULL,
  `request_type` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_request_users1_idx` (`users_id`),
  CONSTRAINT `fk_request_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (1,1,'Labore dignissimos suscipit iusto ipsa eum voluptatem sed quod. Aut sequi laborum ut sint autem dolo',0,'','1980-03-01 01:14:47','1971-10-14 19:43:15'),(2,2,'Quia necessitatibus cum voluptatum saepe voluptatum dolore possimus. Sed iste laborum veniam natus v',0,'2','1995-07-06 10:40:58','1990-01-09 16:49:16'),(3,3,'Et aut ipsum ut suscipit tempora et cumque magni. Ipsam rerum et rerum quidem enim vel amet eveniet.',0,'2','1992-01-26 20:04:10','2017-01-20 11:56:13'),(4,4,'Qui laborum aliquam id dolor sit commodi. Tempora reiciendis officia accusamus temporibus. Earum cup',0,'1','1979-04-07 11:03:49','2016-10-15 05:36:22'),(5,5,'Libero reprehenderit fugit perspiciatis eius. Aspernatur qui non ipsam fugit sequi illum. Cum qui re',0,'3','1994-09-13 16:52:04','2016-03-11 04:15:41'),(6,6,'Exercitationem minima ut id aliquid velit dolorem rem. Nobis facilis ut dolores laudantium. Et rerum',0,'2','2008-02-15 00:10:57','1997-05-12 18:01:31'),(7,7,'Minima ut consequatur pariatur dolorem. Dolor qui cum quos commodi saepe tenetur sapiente. Et nulla ',0,'3','2014-02-22 19:49:33','1983-03-14 05:07:42'),(8,8,'Velit reprehenderit maxime distinctio molestias ducimus laborum animi. Qui praesentium dolorem aliqu',0,'2','1972-03-12 22:33:38','2020-04-19 13:27:17'),(9,9,'Itaque quisquam earum assumenda hic sunt ut. Perspiciatis ducimus et laudantium nulla. Et fugiat rer',0,'3','1987-03-21 04:38:26','1975-06-02 05:36:01'),(10,10,'Eum molestiae et corrupti asperiores maiores recusandae. Nobis aut mollitia adipisci non illum.',0,'','2010-01-12 02:13:50','1975-09-28 09:46:01'),(11,11,'Deserunt est non maxime repellat eum quis laborum harum. Aliquam dolor ipsam atque id quisquam ex ad',0,'','1976-05-08 23:45:19','2007-07-21 21:50:49'),(12,12,'Qui sapiente aliquam autem laborum quis velit quas. Sed soluta quis aliquid sequi qui. Similique sin',0,'2','1987-03-10 04:40:41','1993-12-30 02:42:15'),(13,13,'Voluptates vero et qui dolor aspernatur commodi. Consequatur omnis culpa sequi quaerat ea molestias ',0,'1','2012-09-30 08:23:06','1991-01-31 09:00:42'),(14,14,'Quod consectetur molestias nisi optio unde vel doloremque quaerat. Nostrum consequuntur velit ut mol',0,'2','2003-10-22 13:24:50','2018-04-07 21:40:03'),(15,15,'Delectus nam placeat facilis esse asperiores quia tempore. Est et nihil iste nisi. Aut qui ducimus e',0,'3','1976-10-06 08:21:28','1986-04-24 07:29:44'),(16,16,'Fuga illo repudiandae dolores. Voluptatem commodi officiis recusandae saepe sit repellendus commodi.',0,'1','1995-10-07 00:00:37','1997-11-13 03:09:10'),(17,17,'Similique adipisci voluptatem voluptatum quia dolorem quam. Ratione adipisci et autem quaerat molest',0,'3','1991-10-05 04:46:33','1983-10-19 21:23:48'),(18,18,'Amet dolorem sunt dolor et sunt assumenda nam. Et pariatur dolor maxime adipisci dolor. Provident hi',0,'3','2004-05-18 19:39:54','2017-09-20 00:08:02'),(19,19,'Sint est fugiat iste id nihil inventore. Similique aliquid repellat impedit est et quod. Enim error ',0,'3','1970-02-03 12:27:54','1984-12-24 12:42:45'),(20,20,'Molestias consequatur et repellendus. Doloribus aperiam sunt rerum quidem. Numquam mollitia possimus',0,'','2002-01-15 19:35:57','2006-01-29 07:18:34'),(21,21,'Facilis reprehenderit enim maiores dolores esse et. Voluptas vel perspiciatis quisquam veritatis deb',0,'','1972-06-06 15:38:12','2002-04-13 01:49:42'),(22,22,'Ratione modi id quia accusamus ipsam. Qui minus reprehenderit non quidem assumenda quas eveniet. Sit',0,'1','1985-07-30 19:55:11','1997-10-16 11:14:18'),(23,23,'Facilis vel libero neque molestias sed aliquam. Non consequatur iusto fuga tenetur. Vel vel autem qu',0,'1','1970-02-01 08:15:54','1999-11-07 22:15:11'),(24,24,'Omnis iure qui ad et delectus. Quibusdam aut delectus dolores animi ipsum voluptas. Ut facere ut har',0,'3','2011-10-31 10:02:57','1977-10-28 03:19:17'),(25,25,'Id totam sed architecto quibusdam. Et autem dolorem ab rerum. Aut sed sit dolorem.',0,'3','1992-07-20 13:25:18','1971-07-22 15:59:27'),(26,26,'Molestiae ea dolorum esse saepe consequatur ut quas. Dolor in consectetur enim et tempora et. Saepe ',0,'','2005-03-12 01:44:19','1970-07-17 10:36:33'),(27,27,'Autem neque aut voluptatem facere. Dolorem rerum dolores neque autem natus sit tenetur. Odit earum b',0,'','1979-10-01 03:22:54','1975-08-02 08:37:34'),(28,28,'Accusantium nihil modi explicabo dignissimos rerum. Fuga molestiae et id necessitatibus qui odio qui',0,'1','2001-04-19 20:08:50','2015-06-30 16:45:23'),(29,29,'Sit voluptatem consequatur magnam explicabo quaerat. Ad laborum est quasi voluptates numquam. Aut qu',0,'2','2010-10-10 09:55:36','1981-05-31 20:13:11'),(30,30,'Sunt debitis rerum placeat ut magni. Molestiae et iusto consequatur consequatur est et.',0,'1','2003-07-24 03:55:30','2009-03-11 23:33:20'),(31,31,'Porro saepe unde odit tempore velit fuga. Ratione repudiandae ut et sit error autem qui. Ad impedit ',0,'2','1972-04-26 00:45:12','2010-05-03 19:29:05'),(32,32,'Tenetur pariatur nihil facere ut autem. Ea laboriosam dolor consequatur ducimus perferendis architec',0,'3','2017-07-11 06:50:57','2005-07-10 04:24:23'),(33,33,'Iste et alias similique ratione. Dolorem amet eaque at deserunt et necessitatibus soluta. Voluptas v',0,'1','1989-05-13 18:24:55','2016-12-03 21:42:38'),(34,34,'Harum inventore nihil quia praesentium a quod. Sint rerum ducimus aut nobis sunt consequatur. Est ac',0,'1','1986-01-13 11:39:20','2016-05-25 00:28:14'),(35,35,'Et sequi minus nam possimus dolor. Placeat eius hic ut eos minima et minima est. Sunt hic veniam por',0,'3','1986-05-17 16:48:27','1974-03-26 23:38:48'),(36,36,'Vitae rerum odit qui quod. Voluptatem non in asperiores at. Similique commodi ullam ullam itaque et.',0,'3','2005-07-21 09:39:24','1999-11-07 16:13:22'),(37,37,'Nulla temporibus excepturi tempora perferendis adipisci velit. Non qui necessitatibus laudantium ips',0,'','1973-01-04 01:50:52','1989-08-18 17:26:48'),(38,38,'Nisi ut magni dolore. Ratione facere autem aut et beatae. Ut aut provident laudantium accusantium qu',0,'1','2006-12-15 03:02:21','1970-07-06 09:55:56'),(39,39,'Ut laboriosam at magnam laudantium nulla quas. Dolorum est minus beatae asperiores id omnis qui. Vol',0,'','2009-05-03 13:29:51','1973-06-16 23:48:38'),(40,40,'Ad et cumque sed eos. Dolores ut voluptatem ut accusantium ducimus eos sequi. Sunt odio nemo corrupt',0,'','1984-01-02 16:05:52','2014-06-07 22:36:44'),(41,41,'Quisquam odio commodi libero molestiae omnis minima amet. Ut commodi velit inventore voluptatum qui ',0,'','2002-08-21 14:11:31','1987-01-15 18:10:57'),(42,42,'Nemo ullam incidunt minus consequatur omnis porro enim. Consequatur fugit illo quo eum aspernatur ne',0,'3','1976-09-23 11:35:58','2011-07-13 01:46:06'),(43,43,'Sed saepe quis et placeat veritatis. Quas libero sed ut et earum dolores ab. Fuga et rerum quia aut ',0,'1','2006-10-17 14:51:26','1981-07-17 03:40:12'),(44,44,'Corporis consequatur quia provident dolor. Est cupiditate non facilis nulla. Aliquid modi molestiae ',0,'3','1988-11-02 17:13:52','1981-09-29 20:39:28'),(45,45,'Quasi dolores ratione non esse vel excepturi quis. Ut est quia veniam quasi. Voluptate qui dicta par',0,'2','1976-03-16 13:01:28','1974-09-27 10:34:03'),(46,46,'Architecto voluptatem enim laudantium saepe. Soluta commodi non sapiente commodi repudiandae expedit',0,'1','2015-07-05 23:21:02','2006-12-02 10:48:38'),(47,47,'Id et rerum nemo rerum qui. Aut error laborum quis illo non est. Qui blanditiis accusantium optio de',0,'2','2011-04-24 07:51:17','1981-04-12 16:17:42'),(48,48,'Quidem vero corrupti voluptas. Veritatis ut occaecati voluptate quia ipsa molestias magnam. Quo veri',0,'2','1985-11-05 15:47:27','1982-04-10 06:35:10'),(49,49,'Corrupti voluptatem ducimus qui iste in velit est necessitatibus. Veniam aliquam placeat iusto eveni',0,'2','1986-02-14 07:43:42','1978-11-23 19:16:37'),(50,50,'Reprehenderit quaerat dolorem velit ut. Quo ad aspernatur quo vel nemo. Temporibus illum dicta rerum',0,'2','1984-05-21 03:01:56','1978-08-08 10:17:48'),(51,51,'Earum sint distinctio amet illum. Voluptatem aut autem facilis aspernatur. Eaque et aliquid quisquam',0,'','1988-12-22 07:34:08','2010-05-02 05:54:50'),(52,52,'Accusamus perspiciatis minus quia quia ad. Voluptatem velit voluptates enim. Iste deserunt consequun',0,'2','1973-01-21 00:08:41','2002-05-16 17:01:57'),(53,53,'Aut quidem laborum voluptatem aut quo dolor. Aliquam aut quia adipisci vitae quia corporis. Molestia',0,'3','2007-07-14 10:23:59','1978-01-06 17:48:26'),(54,54,'Qui sit eum ex id autem. Numquam repellendus non dolor suscipit tempora veniam. Repellat rerum autem',0,'','1996-05-28 06:09:18','2018-09-04 18:04:51'),(55,55,'Reiciendis quasi libero eos soluta tenetur et. Accusantium possimus dignissimos aut molestias. Commo',0,'','2014-05-03 23:12:17','2003-07-07 00:59:09'),(56,56,'Autem eligendi veritatis nisi deserunt molestiae. Dolores non in cum ab et illum accusantium in. Und',0,'2','2013-08-04 17:21:23','2002-12-04 05:06:39'),(57,57,'Corrupti modi suscipit rerum in maxime. Perspiciatis voluptate nostrum quaerat deleniti molestiae om',0,'3','1989-12-27 12:43:10','1995-05-08 06:43:16'),(58,58,'Vitae fugit rerum consequatur beatae ea. Nam qui aut tempora et molestias. Ut quia quis dicta exerci',0,'','1987-03-18 13:10:52','2008-04-09 17:30:13'),(59,59,'Itaque sit perferendis molestiae ratione. Nulla est tempora neque quo ad ex est. Corporis officia nu',0,'3','2015-12-17 09:59:23','1994-11-08 05:02:32'),(60,60,'Sunt dolores molestiae maxime omnis odio sit incidunt. Accusantium est dignissimos asperiores nulla ',0,'2','1991-08-19 13:32:24','2010-05-07 10:23:46'),(61,61,'Odit ipsa et deserunt. Culpa dolores a consequatur quidem sed aperiam dolor. Rerum consectetur disti',0,'','1982-07-14 13:40:03','2007-01-22 12:57:25'),(62,62,'Est et eos aliquam quo error. Fuga ex perspiciatis commodi commodi hic facilis corporis nihil. Sit m',0,'1','1993-11-11 03:37:52','1988-08-12 21:36:21'),(63,63,'Quae animi sint praesentium dolor dolorum. Labore et magnam aut omnis officia tempora nam quia.',0,'3','1993-10-11 05:34:57','2001-11-29 07:37:34'),(64,64,'Nemo veniam ut consequatur incidunt qui quisquam facere. Ut omnis excepturi ad voluptate consequatur',0,'1','2008-11-12 10:21:32','1975-05-16 01:45:15'),(65,65,'Aut voluptatem commodi aut qui facere repellat. Molestiae eos cupiditate iste voluptatum neque sed. ',0,'3','2001-12-05 04:49:57','1978-07-27 07:56:36'),(66,66,'Unde pariatur esse non. Et perferendis quo itaque voluptate quae laudantium iste quia. Doloremque ni',0,'3','2019-08-06 13:23:32','2020-02-20 03:25:35'),(67,67,'Officia esse molestias id impedit quia ex pariatur. Non quia earum eius eum quibusdam omnis est. Par',0,'3','1977-06-06 06:58:34','1990-06-27 16:44:59'),(68,68,'Molestias dolore voluptatem sit iusto voluptatum. Fugit reiciendis est repellat voluptatem dolorem r',0,'2','1986-01-06 01:51:27','1980-07-02 23:25:02'),(69,69,'Nisi eligendi et quam. Laborum voluptas magnam deleniti est. Placeat corrupti repellat voluptatem cu',0,'3','1981-08-07 10:43:45','1988-07-29 11:52:18'),(70,70,'Cupiditate in quasi laudantium. Voluptatum sit saepe sit amet. Cumque nobis eum quam consectetur rer',0,'2','1971-06-06 13:14:46','1980-06-01 04:45:14'),(71,71,'Temporibus omnis sapiente facilis adipisci voluptates aspernatur. Sed doloremque quae aut non earum ',0,'','1978-05-14 18:32:01','2004-05-10 09:37:24'),(72,72,'Rerum optio expedita eius est maiores qui impedit libero. Dignissimos numquam et deserunt sit quis r',0,'2','1973-12-11 10:55:41','1983-09-04 11:25:03'),(73,73,'Consequuntur itaque eaque ut consequuntur est illum veritatis ipsum. Harum illo eum atque eaque aute',0,'1','1986-12-31 01:12:35','1995-03-18 18:11:32'),(74,74,'Natus ut quam occaecati sequi sint vitae. Numquam accusantium nobis sed quas est. Neque optio perfer',0,'2','1992-05-19 17:01:24','1998-01-22 00:27:25'),(75,75,'Voluptas quisquam quas facilis sint iure. Et accusamus voluptates soluta soluta. Et iste eveniet fug',0,'','1984-01-02 10:02:47','2009-09-27 15:50:13'),(76,76,'Excepturi sit qui quis nulla aut illum. Dolores explicabo recusandae omnis ut et voluptatem dolores ',0,'2','2020-02-04 23:42:32','2002-01-05 07:07:07'),(77,77,'Sunt veniam animi sequi. Dolorum ducimus sunt qui corrupti iure distinctio ut facilis. Voluptatibus ',0,'3','2000-02-13 14:11:41','2015-08-25 19:22:50'),(78,78,'Quia quas porro sapiente nostrum laboriosam voluptatem modi. Cum dolor mollitia sed et ut. Ut est ac',0,'2','1978-11-09 03:59:32','2018-04-06 00:03:00'),(79,79,'Magni facilis error maxime quidem. Delectus beatae quia voluptas voluptas ea optio. Quod nisi consec',0,'3','2004-04-14 12:33:51','2014-10-15 23:16:06'),(80,80,'Sit nobis placeat deleniti perspiciatis. Quas aut consectetur magni quam sit asperiores sit quidem. ',0,'3','2017-10-06 12:06:55','1992-01-04 22:21:48'),(81,81,'Possimus provident quia vitae aut. Laboriosam consequatur rerum beatae vitae molestiae neque eum.',0,'1','1994-06-14 05:26:07','2000-03-31 14:07:27'),(82,82,'Atque tempora quaerat aperiam. Voluptatibus ipsam vitae explicabo a molestias. Repellat doloribus de',0,'2','1997-11-24 19:13:53','2006-06-23 00:35:07'),(83,83,'Eos ipsum sed et sit aut ut. Odit explicabo sunt ut ut pariatur. Tempore sed praesentium ea.',0,'3','2007-10-06 09:50:02','1987-08-03 01:56:32'),(84,84,'Eligendi nulla voluptatibus quia nesciunt eum asperiores. Accusamus voluptatem ex officiis et corrup',0,'2','1997-09-26 03:55:19','2000-09-14 14:15:53'),(85,85,'Nobis sit vero quam et quas. Velit consequatur dolores id a id animi numquam. Veniam cumque molestia',0,'1','2014-02-18 16:36:25','1996-04-04 08:50:29'),(86,86,'Voluptas aspernatur et qui ex corrupti sapiente ut. Sed repudiandae voluptates id veniam tempora. Re',0,'2','1981-03-06 14:26:14','1988-05-22 18:28:04'),(87,87,'Hic mollitia dolorem cumque esse ipsum molestiae autem. Non eum quaerat consequatur laboriosam accus',0,'3','1993-11-07 16:10:17','1980-01-27 05:48:14'),(88,88,'Sit enim corporis nesciunt voluptatem qui et aliquid. Impedit perferendis aut aut dolore. Sed quaera',0,'','1991-08-05 02:48:55','1996-03-16 12:10:55'),(89,89,'Non modi voluptatem aspernatur nam velit. Ullam quo voluptas quaerat error et voluptas cum quia. Inc',0,'1','1982-09-04 05:26:01','1976-06-07 00:11:35'),(90,90,'Magni et autem dolorum sint animi. Ipsa quia qui minus et necessitatibus.',0,'1','2012-09-14 11:30:10','2000-12-06 07:34:12'),(91,91,'Ducimus quod voluptate adipisci error consectetur qui et ducimus. Sapiente autem corrupti repellat n',0,'','2014-09-30 12:36:18','2010-06-03 19:22:22'),(92,92,'Sunt quo minima cumque reprehenderit est facere. Veritatis in consectetur animi illum et consequatur',0,'3','1980-10-14 08:53:34','2002-07-17 14:18:10'),(93,93,'Et quos odit culpa excepturi. Ut perspiciatis enim qui aut. Ad voluptas non enim corrupti voluptas p',0,'1','2012-08-28 01:16:56','2015-09-17 09:39:02'),(94,94,'Sint aut aut et id pariatur dolorem. Molestiae incidunt non odio ut blanditiis tempore. Et possimus ',0,'2','2002-10-29 15:35:24','1982-09-02 01:34:36'),(95,95,'Fugiat labore optio velit explicabo ratione. Omnis expedita consectetur veniam nostrum eligendi et v',0,'3','2004-06-20 07:55:50','1974-12-01 18:54:32'),(96,96,'Amet blanditiis atque est et. Officiis voluptas officiis enim minus sed. Dicta perferendis quaerat a',0,'','2003-06-29 13:38:02','1993-11-17 02:16:50'),(97,97,'Dolores quia harum quo magnam fuga vero quam. Labore modi quia laborum esse. Nihil laborum hic possi',0,'1','1993-02-26 20:51:19','1972-01-08 22:31:02'),(98,98,'Expedita sunt eos voluptatum qui. Perferendis perspiciatis qui hic cum illo sed.',0,'1','2013-07-26 19:08:59','1994-08-29 14:50:02'),(99,99,'Placeat laudantium cumque est est aut dolor. Enim et mollitia mollitia nihil. Modi ut ex enim consec',0,'','2000-10-12 20:06:40','2003-11-09 20:43:36'),(100,100,'Voluptatem quo et suscipit laudantium possimus. Hic qui beatae quo at voluptas temporibus.',0,'1','1972-05-29 23:02:37','1995-07-19 22:01:19');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_work`
--

DROP TABLE IF EXISTS `request_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_work` (
  `users_id` int NOT NULL,
  `request_id` int NOT NULL,
  `status_work` int NOT NULL,
  `description` varchar(145) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_request_work_users1_idx` (`users_id`),
  KEY `fk_request_work_request1_idx` (`request_id`),
  CONSTRAINT `fk_request_work_request1` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`),
  CONSTRAINT `fk_request_work_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_work`
--

LOCK TABLES `request_work` WRITE;
/*!40000 ALTER TABLE `request_work` DISABLE KEYS */;
INSERT INTO `request_work` VALUES (1,1,1,'Non quia occaecati rem alias voluptates iusto sed. Sapiente eum enim eius fuga incidunt consectetur sunt.',1),(2,2,1,'Et est quo et quibusdam voluptatum dolorem nisi. Recusandae dolore iure expedita eum quas et ut. Repudiandae laborum alias veniam mollitia culpa ',2),(3,3,1,'Vitae consequuntur laborum repellendus. Doloribus molestiae molestias dolores. Id dolore saepe tenetur id dolor consequatur impedit.',3),(4,4,2,'Consequatur dicta reiciendis culpa reprehenderit exercitationem ea. Asperiores commodi magni enim cupiditate dolores voluptatem cupiditate. Vel v',4),(5,5,2,'Quis ut qui quos facere est in atque quod. Sint enim voluptate illo et voluptas. Sed voluptatem odio veritatis.',5),(6,6,0,'Commodi rerum illum dolorum aperiam. Quis harum dicta in est. Iure quia eos laudantium ut dignissimos consequuntur qui aut. Officia et et eaque.',6),(7,7,3,'Ullam quo enim beatae doloribus. Sequi dolores nobis quia quisquam. Natus tenetur at provident culpa odio sed dolores aspernatur. Labore cupidita',7),(8,8,0,'Suscipit ipsa error similique et voluptas delectus quaerat. Tempore dolores provident nemo et culpa. Deleniti non exercitationem natus eligendi b',8),(9,9,0,'Voluptates itaque adipisci minima rerum expedita doloremque. Labore eum nam accusantium magni. Sed dolores cupiditate assumenda. Dolores dolorum ',9),(10,10,0,'Eius cumque aliquam vel sunt molestiae qui ullam earum. Nesciunt tenetur corporis sunt dolorem. Rerum placeat facilis et officia quo. Iure accusa',10),(11,11,0,'Est dignissimos dolore placeat et eaque voluptas. Quidem qui vel iste earum aperiam. Quia enim et accusamus cupiditate repudiandae.',11),(12,12,0,'Autem reiciendis assumenda officiis esse quidem accusamus et. Tempora facere aperiam incidunt accusamus aut. Id ut sit eum velit explicabo placea',12),(13,13,0,'Itaque delectus alias ab ipsa. Ut non officiis et voluptatibus veniam repellat incidunt. Et ut autem est dolor eum dolores.',13),(14,14,0,'Reprehenderit nihil illo amet et tenetur ducimus. Cum corrupti molestias nobis voluptatum illum. Nulla a ad qui quos et magni.',14),(15,15,0,'Voluptatem sapiente facilis qui sapiente quia. Ullam sed reprehenderit omnis dignissimos aliquid beatae consequuntur. Sint similique sed voluptat',15),(16,16,0,'Saepe asperiores illo quasi qui quo voluptatem ab. Possimus dolorem aliquid qui aliquid eos est natus. Enim error eligendi consequatur sint iste.',16),(17,17,0,'Et velit impedit cum eos debitis. Accusamus aut eos aut laborum. Distinctio corrupti totam voluptates quaerat dignissimos quae.',17),(18,18,0,'Deserunt distinctio non rerum aut. Sed natus optio nisi voluptatem et neque deleniti. Officia voluptatum nihil possimus est corporis in rem.',18),(19,19,0,'Ut dolorum et vero expedita rerum. Sunt aut quasi id qui voluptate. Saepe reiciendis quae atque voluptatem voluptatem. Nihil nesciunt aut ducimus',19),(20,20,0,'Quis fuga nihil officia perferendis porro. Minima est repellat amet. Dolorem quam cumque assumenda.',20),(21,21,0,'Architecto qui iusto eos exercitationem officiis qui. At consequuntur atque similique ut rerum nemo. Maxime rerum nihil enim suscipit dolore numq',21),(22,22,0,'Temporibus iste unde voluptatem in eum. Aliquam minima velit ut eius. Est suscipit consequatur soluta corporis aspernatur. Deserunt nisi aut ut v',22),(23,23,0,'Est quia maiores fugit et. Nulla voluptatem harum autem nobis qui. Ex dolores quia qui. Consequatur dolorem asperiores quia ab nesciunt corporis ',23),(24,24,0,'Quas officia fuga natus voluptatibus. Ea ut aut aperiam. Repudiandae sed natus tenetur harum similique.',24),(25,25,0,'Quo eos quidem necessitatibus nulla voluptate. Voluptate unde commodi porro molestiae eveniet atque porro. Assumenda tenetur ut et eos. Omnis neq',25),(26,26,0,'Sapiente excepturi debitis doloribus impedit explicabo ipsum sed est. Est architecto cupiditate recusandae dolorem nisi. Expedita impedit nam qui',26),(27,27,0,'Mollitia in nisi rem sint vero iusto. At ducimus tenetur quis unde voluptas consequatur autem modi. Nobis numquam sit qui illum. Iste facilis arc',27),(28,28,0,'Quas aut assumenda necessitatibus nemo unde. Quibusdam iste odit voluptatum recusandae rerum rerum est. Ratione impedit numquam numquam dolorem n',28),(29,29,0,'Sint veritatis iure tempora sit eveniet voluptatem. Minima voluptas animi cupiditate quo quia sit dolorem. Molestias dolor debitis est sit invent',29),(30,30,0,'Error quaerat qui minus rerum rem qui. Dolor ipsam sint aliquid.',30),(31,31,0,'Necessitatibus provident nulla earum quaerat odio. Est aut iusto a saepe provident. Dicta corporis enim deleniti et omnis expedita sit omnis.',31),(32,32,0,'Commodi dolorum rem excepturi harum commodi enim qui eius. Voluptatem quia debitis omnis saepe sed eos.',32),(33,33,0,'Impedit velit hic mollitia porro provident enim deserunt. Quia aut aliquam perferendis explicabo non porro. Est dolores quibusdam perspiciatis a ',33),(34,34,0,'Quasi ab aut quaerat eum. Itaque in nesciunt est ipsam aspernatur explicabo in neque. At quasi quasi esse quidem nemo perferendis exercitationem ',34),(35,35,0,'Soluta voluptas ea reprehenderit et delectus. Sunt enim nesciunt occaecati nam ut. Eligendi iure iure voluptate quibusdam cumque. Fuga aspernatur',35),(36,36,0,'Esse quo et occaecati libero aut. Eos suscipit dolor iusto ullam aut sint vero. Sed consequatur aut ut eos cumque corrupti sint quasi.',36),(37,37,0,'Fugiat veniam ut in ipsum sed consectetur minus. Debitis odio eligendi omnis inventore aperiam quidem vel. A omnis sit a et quibusdam expedita fu',37),(38,38,0,'Dolorum minus soluta quod nihil minima quibusdam sint. Ut adipisci quidem tenetur et sed. Nemo quis voluptas repellat pariatur ut vel. Sed quos i',38),(39,39,0,'Laudantium exercitationem molestiae alias qui accusamus id consectetur. Quidem provident a et ut ut. Dignissimos expedita dolore dolore pariatur ',39),(40,40,0,'Quas cumque et error ea corporis perferendis consequatur. Labore hic temporibus odit soluta rerum. Illum sequi fugiat nesciunt et rerum consequun',40),(41,41,0,'Modi accusantium aut odit delectus reiciendis quam et numquam. Magni voluptates saepe consequatur aspernatur velit est. Qui veniam labore eum est',41),(42,42,0,'Ut molestiae numquam delectus iusto magnam consequuntur. Dolores voluptates voluptas ullam. Aliquid quidem voluptatem in animi. Itaque suscipit d',42),(43,43,0,'Aut id ullam praesentium eos. Culpa quia consequatur asperiores culpa minus iure. Qui et alias esse magni temporibus esse eligendi maiores. Odio ',43),(44,44,0,'Perferendis dolorum ad quidem suscipit. Omnis et corporis non. Architecto maiores distinctio sequi rerum quisquam voluptatem velit quia.',44),(45,45,0,'Ea eum mollitia recusandae dolorum. Quibusdam quia saepe sunt ullam rerum earum odio quia. Quod distinctio vitae consectetur illum alias aut dolo',45),(46,46,0,'Id qui non enim. Autem ut nihil nihil aut. Perferendis tempore eaque ab minus libero.',46),(47,47,0,'Dignissimos cumque quis enim velit fugiat. Aut aut molestiae porro aliquid magnam et. Voluptatibus culpa aut est qui sed dolores. Laudantium sed ',47),(48,48,0,'Est qui voluptatum modi qui. Sit earum autem cum maiores hic eos. In eius quia odio deleniti doloribus alias aliquam omnis. Officiis vel magni ac',48),(49,49,0,'Rem maiores veritatis ipsa omnis soluta nulla et. Debitis itaque cum laborum voluptatem consectetur iure aut. Aut non rerum in possimus repellend',49),(50,50,0,'Est dolorem nulla nesciunt dicta perferendis quisquam. Cumque sint in eligendi maxime est aut sed. Doloremque amet impedit esse rerum voluptatem.',50),(51,51,0,'Quae laboriosam ad culpa unde qui autem esse. Exercitationem et nisi amet deserunt. Aperiam iusto deserunt aliquam.',51),(52,52,0,'Voluptas eveniet qui molestias dolor quasi sit saepe saepe. Neque molestias unde expedita rerum qui. Id in ut aperiam non ut. Voluptatum ipsa aut',52),(53,53,0,'Minus vitae dolorem ut accusamus a consectetur aut. Repudiandae quasi enim quidem. Totam neque facilis quas eaque. Delectus assumenda iure cumque',53),(54,54,0,'Consequuntur est dignissimos porro omnis quo sit consequatur. Occaecati accusamus consequatur atque vel repellendus voluptatem. Consectetur fugit',54),(55,55,0,'Reprehenderit facere quisquam quia laborum. Dolores nihil officiis recusandae ut qui saepe. Et rerum qui sunt sunt ipsa sed et.',55),(56,56,0,'Voluptas natus est pariatur sed consectetur eius. Consequuntur eaque mollitia autem enim ut. Ad soluta aut et. Quidem tempora maiores veniam dolo',56),(57,57,0,'Qui reiciendis nihil vero et ut dicta. Unde maxime et quod id. Quod possimus nobis quod voluptatum. Beatae labore quas ullam quia ea nihil.',57),(58,58,0,'Esse aliquid rerum eligendi consectetur pariatur quod. Placeat et consequuntur reiciendis. Et ut sint reprehenderit.',58),(59,59,0,'Consequatur libero itaque eius soluta. Voluptas sint quia reiciendis similique quia nostrum. Aut aut delectus labore eaque odio hic. Et eius mole',59),(60,60,0,'Delectus iste et fuga culpa id. Amet necessitatibus ut deleniti cumque eligendi. Architecto fuga debitis omnis deleniti quia. Animi velit aut cor',60),(61,61,0,'Velit at asperiores id repudiandae ducimus ut. Iure facilis qui ipsam. Ut quae unde consectetur est dolorem et voluptas.',61),(62,62,0,'Itaque beatae id veritatis praesentium est. Cum laboriosam et similique omnis officiis architecto suscipit. Veniam sed officiis suscipit eos volu',62),(63,63,0,'Ea consequuntur rerum sit maiores. Cupiditate earum commodi repudiandae. Consequatur magnam et incidunt vitae.',63),(64,64,0,'Illum et vel suscipit voluptatem voluptatem dolor. Minus quo voluptas non.',64),(65,65,0,'Soluta qui natus porro quasi temporibus. Quae aut nemo atque earum. Rem eius ratione labore porro numquam. Nobis provident ducimus sed nesciunt d',65),(66,66,0,'Dolores suscipit ut temporibus inventore consequuntur ea nulla. Vel fugit sunt velit temporibus. Praesentium reprehenderit velit neque et. Quis d',66),(67,67,0,'Dolorum sunt assumenda sed labore. Ducimus non placeat impedit occaecati adipisci nam et ut. Incidunt beatae id repudiandae voluptas modi ipsa.',67),(68,68,0,'Nesciunt dignissimos ullam perferendis qui fuga aut. Mollitia similique quidem dolor sed sunt omnis. Tempora officiis provident vitae est molesti',68),(69,69,0,'Nostrum harum inventore eos. Quisquam non est est molestiae. Quibusdam cupiditate minus id numquam blanditiis hic minima eos. Aliquam rem et odio',69),(70,70,0,'A mollitia voluptatum vitae sit velit quia. Eos autem vitae fugiat consequatur. Dolorem nam et at perferendis. Molestias velit consequuntur facil',70),(71,71,0,'Qui facilis id aut sed. Dolore possimus dolorum dolor qui repudiandae. Consequatur exercitationem ducimus unde officiis perspiciatis facilis labo',71),(72,72,0,'Aut et possimus provident libero. Architecto quo pariatur asperiores voluptatem adipisci. Error veritatis beatae ea voluptates aut. Provident acc',72),(73,73,0,'Molestiae nemo nihil ut vel aut quam nihil. Aut est earum quo aliquam sunt exercitationem. Sapiente voluptatem quisquam quas enim ipsa. Repellat ',73),(74,74,0,'Et magnam expedita et impedit. Error ea vitae nulla quia. Aspernatur vero ad minima ut et libero cupiditate rerum. Deleniti est optio ea.',74),(75,75,0,'Pariatur molestias natus sint nisi et voluptatem. Laboriosam aut minima sit blanditiis eveniet et ea. Ut modi ratione quis optio quibusdam.',75),(76,76,0,'Rerum saepe eum dolores perferendis ea nihil. Odio velit sed quia rerum illo quod incidunt. Similique sit autem blanditiis amet magnam. Consequat',76),(77,77,0,'Voluptatem nulla magni aut nostrum. Nisi ea asperiores consequatur nisi laborum ea quia sint. Consequuntur dicta sed quasi omnis et perferendis.',77),(78,78,0,'Eligendi aliquam qui quo repudiandae. Quos et rerum excepturi mollitia. Nulla velit qui hic hic dolores. Incidunt quaerat tempore voluptate liber',78),(79,79,0,'Quo aut nesciunt temporibus. Repellat iste dolor omnis ut. Veritatis est et minus aut incidunt reiciendis aperiam rerum. Autem maxime facere adip',79),(80,80,0,'Rerum laborum commodi accusamus rerum et necessitatibus sequi. Laboriosam est nam quia et et non a. Odit aspernatur et architecto modi reiciendis',80),(81,81,0,'Enim inventore et qui itaque. Vel unde vel nisi eius ut. Consequatur incidunt qui doloremque est dicta ut neque. Quia iure veritatis consectetur ',81),(82,82,0,'Ut aut quasi rem nam sequi ut qui. Nihil voluptatem voluptatem iste et facilis quae numquam. Quod omnis omnis aliquam repellendus. Et perspiciati',82),(83,83,0,'Quod nesciunt qui eligendi omnis in temporibus. Ducimus blanditiis unde dolores ut error doloremque sed.',83),(84,84,0,'Magnam molestiae nihil reiciendis facere fugit omnis et. Commodi ipsam dolores laudantium aut aliquid.',84),(85,85,0,'Non exercitationem et est dolorum molestiae facere eos. Libero illo molestiae et perferendis velit quidem voluptatum. Tempore ab facere libero es',85),(86,86,0,'Cum nobis et sint. Ut reiciendis sed dolor perferendis accusantium consequatur. Consequatur possimus et temporibus autem. Est voluptatibus labori',86),(87,87,0,'Suscipit voluptatem repudiandae suscipit deserunt laboriosam provident quia debitis. Nisi sunt dicta quia dolores dolorem non dolor. Culpa ipsa n',87),(88,88,0,'Voluptate ad enim aut quia voluptatibus ut. Libero atque ipsam nobis et ut dolore ratione. Magni sit porro dicta aut dolorem quia rerum est.',88),(89,89,0,'Sit corrupti magni molestias eius voluptates illo. Omnis aut omnis deserunt culpa quis et veniam.',89),(90,90,0,'Non possimus possimus illo modi. Doloribus dolor numquam officiis voluptates repellat. Consequatur ut quia sit suscipit exercitationem iste. Aut ',90),(91,91,0,'Et qui rem facere eaque porro. Et eaque optio temporibus consequatur ut tempora consectetur eveniet. Et at eos veritatis minus at. Dicta et eius ',91),(92,92,0,'Facilis saepe laudantium officia sed. Ea iste modi veniam. Ea sed dolores sed omnis et. Libero explicabo facilis amet qui ut neque esse.',92),(93,93,0,'Veritatis nobis optio enim laborum facere. Et minima ipsum rerum porro et sunt. Dolorem minus voluptas labore molestiae sed sequi.',93),(94,94,0,'Consequatur ut itaque libero et sit animi eligendi. Voluptatum ut qui asperiores iste ut architecto. Laudantium quis eos ut laudantium quae. Dolo',94),(95,95,0,'Est et et inventore placeat magni. Alias aut et ut perferendis voluptatem vel aut. Eum dolorem quae debitis harum. Sit dolores explicabo nobis re',95),(96,96,0,'Illo qui perferendis amet ratione laboriosam sed ut. Dolorem omnis eum accusantium. Dolor tempora molestiae et et quia minima.',96),(97,97,0,'Corrupti fuga ab sit officia molestias. Nemo occaecati qui voluptas voluptatum vel. Aliquid aut aut earum porro eum quia architecto molestiae. Re',97),(98,98,0,'Error qui dolores voluptatem ex illo hic iure. Assumenda et voluptates fuga nihil est dolor nostrum. Est facere facilis dolor enim quia dignissim',98),(99,99,0,'Molestias omnis ut ducimus dolores quia itaque. Et similique ut laboriosam magnam rerum. Voluptas voluptatem libero vitae labore id. Delectus nem',99),(100,100,0,'Occaecati omnis qui officiis ut omnis. Est cumque itaque voluptates molestiae temporibus. Corrupti quo ipsam reiciendis odio nihil. Ea ratione vo',100);
/*!40000 ALTER TABLE `request_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(45) NOT NULL,
  `password_hash` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dudley','023c3821e5672149443a0f216131a92a91847216'),(2,'Bertram','aeaf8f6ce56e277d3d0609f36f0fbeeb3454ad8f'),(3,'Charles','52d1fbe65c703e4c1087c894c05bfd296792ce18'),(4,'Mike','d93d0aedb92a58b62bc76a29c3db1a3832da8093'),(5,'Woodrow','853bdf823b3758e1958b20107a5405749f498022'),(6,'Norberto','839bb9a2ae24a2aa79cd948b7b450c8447ee5f5d'),(7,'Bret','e6bbe4ae3ae695fcc3d791ae5e7d7e0668ce49b6'),(8,'Jaeden','4c3821d53061732d94e9ddc12a02fefcd4206723'),(9,'Isac','7f2015f18b8708393b4c3dae0268ac4896314eb4'),(10,'Guiseppe','faa0cef10a2e99509a11e44a1e3c8cd7e5a5629f'),(11,'Forrest','09167a7e9e83e1ae0304661ab7d0fcb6bb4706fd'),(12,'Lula','36046295d4aa68275a616fd326931235478371e3'),(13,'Tremaine','fb1952dfff1a548eaef2d7c812ddad2be96532eb'),(14,'Alek','33c5a2e3a30e8fc05f1e242d485697c5c5038c6d'),(15,'Evans','c4d17db4c01ee498752d3997ccf9c20752b0a588'),(16,'Lemuel','5714ca024e0aa10bddc0bf8d3e00ec1f34ec30ad'),(17,'Reuben','069fcf74c319acca0cc71ece84fafa4df773890a'),(18,'Anibal','6a6a0f89af26531cf69a62a4787613ae98ea5b5c'),(19,'Keon','b280bdcf91bd81c9ce213e74bfd0976b105427f1'),(20,'Emerald','bb748ecb6732896749bcd78b13bce7d3610a62e0'),(21,'Zion','f1978b189ba9558bad84574a2da09745d64fe99c'),(22,'Israel','8bca7ca19b150a7796d4507fa2a3da23cee876fc'),(23,'Gaetano','7dad39b41e83a6eb8fd4b83e09c3b328e4a04164'),(24,'Noel','43a4c4c6f624c161a4f7bcf1eee22225ad082cee'),(25,'Dameon','1b79403c17a9534418fd1a52be7b725dcc381e21'),(26,'Maximus','eff23f3433fd450a07b7cb52a9f945061c9149b9'),(27,'Donny','764eb206ee6a3d744bef186e7762dfc8b48a7582'),(28,'Avery','3c294abcd64f59bce9c090392c793c77918b70f0'),(29,'Chadd','64f24915123b740c234f7de8943a6c7a5c65061a'),(30,'Erich','bec993245f462270d560ca789ea0a6939ca4e45e'),(31,'Jerrold','aed253556f55db6af823a14acaf19de68a6fd8bd'),(32,'Furman','fed85e807af8a38eee44789ffe05f19a53023f9d'),(33,'Allen','9b30b4cbd74d48e10d3fc251393eb99f8f004d53'),(34,'Bill','6f75a83388df508fb6e53c29e655b49d8d940533'),(35,'Austen','e0829635dcdd8856f0431c09215c11976e737f14'),(36,'Kenneth','73e8237a3357c8188f11db635c446ea1f07505a1'),(37,'Hubert','772636345082b8ce0cbca0929c10dcc367cc3d02'),(38,'Kennedy','a06089d26e6d61a00b36f812f61fd75d77b2596a'),(39,'Grover','6a9bd88e1d8d38c8659fd7b7120e97f7eb786a3a'),(40,'Leopold','6d8e44d4c7c6e19b88c283283285150e928a4e50'),(41,'Ronny','00155ef3cacdabb84bed2d6e772614b52c10762c'),(42,'Garrick','90749ebb06acfc6cb08c07e0c77a20c3798be613'),(43,'Shawn','685c972d0d520a75cab62d192657c9cb3aca4fe4'),(44,'Lavon','30d4b8844e3a9d2785da20f1d8db33bd3915408d'),(45,'Giuseppe','404678de3611fcdf5b558f7ad32e91f18a788e07'),(46,'Niko','5c83c7c7453940f2a147c43cb2cff794c5c17bc3'),(47,'Trey','1979c8ee44e3ade506d12205c11c56b06d11d405'),(48,'Curtis','36f24934179daccb3b389dea298ae28c5599ce00'),(49,'Howard','a3e34e8fa66ca295636486779866d1f51fa8989d'),(50,'Prince','662c418e71cbadb4738be54ea9a4273f734e783e'),(51,'Arnold','38908310aefe45e1a723afcc3d54cd2286460264'),(52,'Victor','0a609cf93d1c2b2ce6e26acc90fb284a582f70a2'),(53,'Manley','21a15eafdb31b1ee2e37aee07c464aa56d0d32cf'),(54,'Milton','cf3795cbcb04df93eea2db2064db095ac02bd051'),(55,'Ethan','8cd2bfefe0938d72780eeea7ab15f8ab7137a219'),(56,'Dion','a84d43cfbe97e79b804737fa133aacc74ac2a677'),(57,'Jaycee','0f2885b74b8f08166e8e12d71a54f0705d94b859'),(58,'Bradford','25de9164b1b2f85c5c43e94cb4069074cbc7afb2'),(59,'Andre','d799f9412b6cbcf452216f60b9edaffd99ef6771'),(60,'Carleton','df0a0a1da11297ffaa7cdcc55d9966e48f759788'),(61,'Reed','bd51b978838b2eed680a06280cca5035647b18e7'),(62,'Ahmad','cba82684fb85ee0388f2ed43c191218a99171048'),(63,'Eduardo','c97e580215b6c3ffcbc58831f18cbeac31cc1550'),(64,'Maverick','8868002c1d9512007d03e1a7ca2c8dc8dae81a22'),(65,'Stanford','7a8388a3241852ef007df417854db9196148478d'),(66,'Osborne','43c78656c8602a234fd0c3f55e4f6cebf54ab714'),(67,'Hester','accb936bef778de6c9838ecbcca0b1a5f5edffb0'),(68,'Moriah','12b53e54d5d7dff622e11acef0d23001f58e6a30'),(69,'Willis','d1c2204d9a069cd590f624f9bc760e47ba7fefbd'),(70,'Tristian','ef5935dde98df93b8e6752532d1d3c360659cfc4'),(71,'Tatum','a92a3d8e6ec6c88a440bb3c82578acf6118c6572'),(72,'Sigrid','22a728b7aa5690c8eaca7062032bdf22e8738713'),(73,'Simeon','739a0e606f29423f964330a76829649158782db9'),(74,'Carson','db121beb4f54b9d7e55209c0664c66e945773db4'),(75,'Arnaldo','ea693d69a669121f65148be4c591444ac0c193f0'),(76,'Abraham','c106a65af22b960d9eb1afbe2e5c681cb243b89a'),(77,'Jay','18b37ff2dcf3f2d050322a886df97e9c05bc97a6'),(78,'Mohamed','ecb6bb27d15a9a6ebb758bd677f174614eec9667'),(79,'Steve','25619c21b12f199b22dae7fa0a0979ff2daab29f'),(80,'Favian','2829281b2793406a5334727a3b4fd6bb52bf7fc0'),(81,'Cristopher','b3989598e70d0294be735a8b33dfd2c68c53e5ab'),(82,'Russ','6fc64528d05c236a565b14cffd4c6d1b15677ea6'),(83,'Chandler','9d563f99cb40dcc6704efd20fe963b3ef26b16ea'),(84,'Gus','0b8637cfb7e9d535d83563dfcb26069519bb967e'),(85,'Ulises','5f632fbb08a2688f9b716c01fd8bd03403db6b42'),(86,'Murl','81cd5f8f18f2137cbd19ba319d526bfc29cc4db8'),(87,'Angus','ba1a70b590cbf52b990a1d03e7be24009993cc43'),(88,'Lee','c6c1bfba9044e6f2a38a54fe9e2db2f0c0dbd8fb'),(89,'Salvatore','8c0ae0f31467d9afca75383151d9125130c6338e'),(90,'Wilburn','b05d1e6f9aca999057369f463daaa574e1f5b03e'),(91,'Charlie','ee638af1a4afd37c1c9275f0f5bf9e3c92adcadb'),(92,'Mack','9e17dd8195cd39ff79a181ed2d37692655d1de08'),(93,'Walton','fcdaa2471e3e57ad7767f8e8f9003293e2d036ac'),(94,'Joshua','8f4ebac389634c549eb98f128163560c854eef46'),(95,'Leonel','0e14b798b81b283d084493f456898aa1747db03d'),(96,'Carter','c2f9df43311d0191cba46348b748c7de5233de19'),(97,'Jarvis','2b278f7c33bf97e99b883f8573b9276deeb0a06a'),(98,'Zachary','670c2edd8c1c47062d36f529eb03af0409675d7e'),(99,'Brent','b2ca24cf38294cf24fa6c4ba6030bafb1d35b7bb'),(100,'Jayden','a252dae903dc006457f1c5bac106ca0d5a1f7031'),(101,'root@localhost','a252dae903dc006457f1c5bac106ca0d5a1f7031'),(103,'ivanov','qwewqewqeqwe123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_group`
--

DROP TABLE IF EXISTS `users_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_group` (
  `groups_id` int NOT NULL,
  `users_id` int NOT NULL,
  `status` int NOT NULL,
  KEY `fk_users_group_groups1_idx` (`groups_id`),
  KEY `fk_users_group_users1_idx` (`users_id`),
  CONSTRAINT `fk_users_group_groups1` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `fk_users_group_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_group`
--

LOCK TABLES `users_group` WRITE;
/*!40000 ALTER TABLE `users_group` DISABLE KEYS */;
INSERT INTO `users_group` VALUES (0,1,1),(1,2,3),(2,3,1),(3,4,0),(4,5,0),(5,6,2),(6,7,3),(7,8,1),(8,9,0),(9,10,1),(10,11,0),(11,12,2),(12,13,0),(13,14,1),(14,15,2),(15,16,0),(16,17,2),(17,18,2),(18,19,1),(19,20,3),(20,21,1),(22,22,2),(23,23,2),(24,24,1),(25,25,3),(26,26,0),(27,27,2),(28,28,1),(29,29,3),(30,30,0),(31,31,1),(32,32,1),(33,33,0),(34,34,1),(35,35,2),(36,36,1),(37,37,0),(38,38,1),(39,39,2),(40,40,2),(41,41,0),(42,42,1),(43,43,3),(44,44,2),(45,45,2),(46,46,1),(47,47,2),(48,48,2),(49,49,2),(50,50,2),(51,51,3),(52,52,1),(53,53,2),(54,54,2),(55,55,1),(56,56,2),(57,57,0),(58,58,0),(59,59,2),(60,60,0),(61,61,3),(62,62,2),(63,63,1),(64,64,3),(65,65,1),(66,66,1),(67,67,2),(68,68,1),(69,69,3),(70,70,3),(71,71,0),(72,72,3),(73,73,0),(74,74,1),(75,75,0),(76,76,2),(77,77,1),(78,78,0),(79,79,3),(80,80,3),(81,81,1),(82,82,0),(83,83,2),(84,84,2),(85,85,0),(86,86,2),(87,87,1),(88,88,0),(89,89,0),(90,90,2),(91,91,2),(92,92,0),(93,93,2),(94,94,3),(95,95,0),(96,96,2),(97,97,3),(98,98,3),(99,99,2),(100,100,2);
/*!40000 ALTER TABLE `users_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `work_done`
--

DROP TABLE IF EXISTS `work_done`;
/*!50001 DROP VIEW IF EXISTS `work_done`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `work_done` AS SELECT 
 1 AS `id`,
 1 AS `status_work`,
 1 AS `request_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `blank_request`
--

/*!50001 DROP VIEW IF EXISTS `blank_request`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `blank_request` AS select `request`.`id` AS `id`,`request`.`users_id` AS `users_id`,`request`.`description` AS `description`,`request`.`status` AS `status`,`request`.`request_type` AS `request_type`,`request`.`created_at` AS `created_at`,`request`.`update_at` AS `update_at` from `request` where (`request`.`request_type` = '') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `login_groups`
--

/*!50001 DROP VIEW IF EXISTS `login_groups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `login_groups` AS select `users`.`login` AS `login`,`profiles`.`firstname` AS `firstname`,`profiles`.`email` AS `email`,`users_group`.`groups_id` AS `groups_id`,`users_group`.`users_id` AS `users_id`,`users_group`.`status` AS `status` from (((`users` join `profiles` on((`users`.`id` = `profiles`.`users_id`))) join `users_group` on((`users`.`id` = `users_group`.`users_id`))) join `groups_has_data_mart` `a` on((`users_group`.`groups_id` = `a`.`groups_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `work_done`
--

/*!50001 DROP VIEW IF EXISTS `work_done`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `work_done` AS select `request_work`.`id` AS `id`,`request_work`.`status_work` AS `status_work`,`request`.`request_type` AS `request_type` from (`request_work` join `request` on((`request`.`id` = `request_work`.`request_id`))) where (`request_work`.`status_work` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 21:26:48
