-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sistema_oyentes
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'plugin::upload.read',NULL,'{}','[]','2023-02-16 07:10:46.696000','2023-02-16 07:10:46.696000',NULL,NULL),(2,'plugin::upload.configure-view',NULL,'{}','[]','2023-02-16 07:10:46.703000','2023-02-16 07:10:46.703000',NULL,NULL),(3,'plugin::upload.assets.create',NULL,'{}','[]','2023-02-16 07:10:46.710000','2023-02-16 07:10:46.710000',NULL,NULL),(4,'plugin::upload.assets.update',NULL,'{}','[]','2023-02-16 07:10:46.717000','2023-02-16 07:10:46.717000',NULL,NULL),(5,'plugin::upload.assets.download',NULL,'{}','[]','2023-02-16 07:10:46.722000','2023-02-16 07:10:46.722000',NULL,NULL),(6,'plugin::upload.assets.copy-link',NULL,'{}','[]','2023-02-16 07:10:46.729000','2023-02-16 07:10:46.729000',NULL,NULL),(7,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2023-02-16 07:10:46.737000','2023-02-16 07:10:46.737000',NULL,NULL),(8,'plugin::upload.configure-view',NULL,'{}','[]','2023-02-16 07:10:46.743000','2023-02-16 07:10:46.743000',NULL,NULL),(9,'plugin::upload.assets.create',NULL,'{}','[]','2023-02-16 07:10:46.748000','2023-02-16 07:10:46.748000',NULL,NULL),(10,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2023-02-16 07:10:46.754000','2023-02-16 07:10:46.754000',NULL,NULL),(11,'plugin::upload.assets.download',NULL,'{}','[]','2023-02-16 07:10:46.759000','2023-02-16 07:10:46.759000',NULL,NULL),(12,'plugin::upload.assets.copy-link',NULL,'{}','[]','2023-02-16 07:10:46.764000','2023-02-16 07:10:46.764000',NULL,NULL),(13,'plugin::content-manager.explorer.create','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2023-02-16 07:10:46.794000','2023-02-16 07:10:46.794000',NULL,NULL),(14,'plugin::content-manager.explorer.read','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2023-02-16 07:10:46.799000','2023-02-16 07:10:46.799000',NULL,NULL),(15,'plugin::content-manager.explorer.update','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2023-02-16 07:10:46.804000','2023-02-16 07:10:46.804000',NULL,NULL),(16,'plugin::content-manager.explorer.delete','plugin::users-permissions.user','{}','[]','2023-02-16 07:10:46.809000','2023-02-16 07:10:46.809000',NULL,NULL),(17,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2023-02-16 07:10:46.814000','2023-02-16 07:10:46.814000',NULL,NULL),(18,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2023-02-16 07:10:46.821000','2023-02-16 07:10:46.821000',NULL,NULL),(19,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2023-02-16 07:10:46.827000','2023-02-16 07:10:46.827000',NULL,NULL),(20,'plugin::content-type-builder.read',NULL,'{}','[]','2023-02-16 07:10:46.833000','2023-02-16 07:10:46.833000',NULL,NULL),(21,'plugin::email.settings.read',NULL,'{}','[]','2023-02-16 07:10:46.838000','2023-02-16 07:10:46.838000',NULL,NULL),(22,'plugin::upload.read',NULL,'{}','[]','2023-02-16 07:10:46.842000','2023-02-16 07:10:46.842000',NULL,NULL),(23,'plugin::upload.assets.create',NULL,'{}','[]','2023-02-16 07:10:46.850000','2023-02-16 07:10:46.850000',NULL,NULL),(24,'plugin::upload.assets.update',NULL,'{}','[]','2023-02-16 07:10:46.856000','2023-02-16 07:10:46.856000',NULL,NULL),(25,'plugin::upload.assets.download',NULL,'{}','[]','2023-02-16 07:10:46.861000','2023-02-16 07:10:46.861000',NULL,NULL),(26,'plugin::upload.assets.copy-link',NULL,'{}','[]','2023-02-16 07:10:46.868000','2023-02-16 07:10:46.868000',NULL,NULL),(27,'plugin::upload.configure-view',NULL,'{}','[]','2023-02-16 07:10:46.874000','2023-02-16 07:10:46.874000',NULL,NULL),(28,'plugin::upload.settings.read',NULL,'{}','[]','2023-02-16 07:10:46.880000','2023-02-16 07:10:46.880000',NULL,NULL),(29,'plugin::users-permissions.roles.create',NULL,'{}','[]','2023-02-16 07:10:46.886000','2023-02-16 07:10:46.886000',NULL,NULL),(30,'plugin::users-permissions.roles.read',NULL,'{}','[]','2023-02-16 07:10:46.892000','2023-02-16 07:10:46.892000',NULL,NULL),(31,'plugin::users-permissions.roles.update',NULL,'{}','[]','2023-02-16 07:10:46.897000','2023-02-16 07:10:46.897000',NULL,NULL),(32,'plugin::users-permissions.roles.delete',NULL,'{}','[]','2023-02-16 07:10:46.902000','2023-02-16 07:10:46.902000',NULL,NULL),(33,'plugin::users-permissions.providers.read',NULL,'{}','[]','2023-02-16 07:10:46.907000','2023-02-16 07:10:46.907000',NULL,NULL),(34,'plugin::users-permissions.providers.update',NULL,'{}','[]','2023-02-16 07:10:46.912000','2023-02-16 07:10:46.912000',NULL,NULL),(35,'plugin::users-permissions.email-templates.read',NULL,'{}','[]','2023-02-16 07:10:46.918000','2023-02-16 07:10:46.918000',NULL,NULL),(36,'plugin::users-permissions.email-templates.update',NULL,'{}','[]','2023-02-16 07:10:46.923000','2023-02-16 07:10:46.923000',NULL,NULL),(37,'plugin::users-permissions.advanced-settings.read',NULL,'{}','[]','2023-02-16 07:10:46.927000','2023-02-16 07:10:46.927000',NULL,NULL),(38,'plugin::users-permissions.advanced-settings.update',NULL,'{}','[]','2023-02-16 07:10:46.932000','2023-02-16 07:10:46.932000',NULL,NULL),(39,'plugin::i18n.locale.create',NULL,'{}','[]','2023-02-16 07:10:46.936000','2023-02-16 07:10:46.936000',NULL,NULL),(40,'plugin::i18n.locale.read',NULL,'{}','[]','2023-02-16 07:10:46.941000','2023-02-16 07:10:46.941000',NULL,NULL),(41,'plugin::i18n.locale.update',NULL,'{}','[]','2023-02-16 07:10:46.945000','2023-02-16 07:10:46.945000',NULL,NULL),(42,'plugin::i18n.locale.delete',NULL,'{}','[]','2023-02-16 07:10:46.950000','2023-02-16 07:10:46.950000',NULL,NULL),(43,'admin::marketplace.read',NULL,'{}','[]','2023-02-16 07:10:46.955000','2023-02-16 07:10:46.955000',NULL,NULL),(44,'admin::marketplace.plugins.install',NULL,'{}','[]','2023-02-16 07:10:46.959000','2023-02-16 07:10:46.959000',NULL,NULL),(45,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2023-02-16 07:10:46.964000','2023-02-16 07:10:46.964000',NULL,NULL),(46,'admin::webhooks.create',NULL,'{}','[]','2023-02-16 07:10:46.969000','2023-02-16 07:10:46.969000',NULL,NULL),(47,'admin::webhooks.read',NULL,'{}','[]','2023-02-16 07:10:46.976000','2023-02-16 07:10:46.976000',NULL,NULL),(48,'admin::webhooks.update',NULL,'{}','[]','2023-02-16 07:10:46.982000','2023-02-16 07:10:46.982000',NULL,NULL),(49,'admin::webhooks.delete',NULL,'{}','[]','2023-02-16 07:10:46.987000','2023-02-16 07:10:46.987000',NULL,NULL),(50,'admin::users.create',NULL,'{}','[]','2023-02-16 07:10:46.991000','2023-02-16 07:10:46.991000',NULL,NULL),(51,'admin::users.read',NULL,'{}','[]','2023-02-16 07:10:46.996000','2023-02-16 07:10:46.996000',NULL,NULL),(52,'admin::users.update',NULL,'{}','[]','2023-02-16 07:10:47.001000','2023-02-16 07:10:47.001000',NULL,NULL),(53,'admin::users.delete',NULL,'{}','[]','2023-02-16 07:10:47.007000','2023-02-16 07:10:47.007000',NULL,NULL),(54,'admin::roles.create',NULL,'{}','[]','2023-02-16 07:10:47.012000','2023-02-16 07:10:47.012000',NULL,NULL),(55,'admin::roles.read',NULL,'{}','[]','2023-02-16 07:10:47.019000','2023-02-16 07:10:47.019000',NULL,NULL),(56,'admin::roles.update',NULL,'{}','[]','2023-02-16 07:10:47.024000','2023-02-16 07:10:47.024000',NULL,NULL),(57,'admin::roles.delete',NULL,'{}','[]','2023-02-16 07:10:47.029000','2023-02-16 07:10:47.029000',NULL,NULL),(58,'admin::api-tokens.access',NULL,'{}','[]','2023-02-16 07:10:47.035000','2023-02-16 07:10:47.035000',NULL,NULL),(59,'admin::api-tokens.create',NULL,'{}','[]','2023-02-16 07:10:47.040000','2023-02-16 07:10:47.040000',NULL,NULL),(60,'admin::api-tokens.read',NULL,'{}','[]','2023-02-16 07:10:47.045000','2023-02-16 07:10:47.045000',NULL,NULL),(61,'admin::api-tokens.update',NULL,'{}','[]','2023-02-16 07:10:47.050000','2023-02-16 07:10:47.050000',NULL,NULL),(62,'admin::api-tokens.regenerate',NULL,'{}','[]','2023-02-16 07:10:47.055000','2023-02-16 07:10:47.055000',NULL,NULL),(63,'admin::api-tokens.delete',NULL,'{}','[]','2023-02-16 07:10:47.060000','2023-02-16 07:10:47.060000',NULL,NULL),(64,'admin::project-settings.update',NULL,'{}','[]','2023-02-16 07:10:47.065000','2023-02-16 07:10:47.065000',NULL,NULL),(65,'admin::project-settings.read',NULL,'{}','[]','2023-02-16 07:10:47.069000','2023-02-16 07:10:47.069000',NULL,NULL),(69,'plugin::content-manager.explorer.delete','api::carrera.carrera','{}','[]','2023-02-17 03:22:55.432000','2023-02-17 03:22:55.432000',NULL,NULL),(79,'plugin::content-manager.explorer.delete','api::plan.plan','{}','[]','2023-02-17 11:57:45.966000','2023-02-17 11:57:45.966000',NULL,NULL),(88,'plugin::content-manager.explorer.create','api::carrera.carrera','{\"fields\": [\"Clave\", \"Fecha_del_acuerdo\", \"Nombre\", \"RVOE\"]}','[]','2023-02-22 11:17:14.201000','2023-02-22 11:17:14.201000',NULL,NULL),(89,'plugin::content-manager.explorer.read','api::carrera.carrera','{\"fields\": [\"Clave\", \"Fecha_del_acuerdo\", \"Nombre\", \"RVOE\"]}','[]','2023-02-22 11:17:14.208000','2023-02-22 11:17:14.208000',NULL,NULL),(90,'plugin::content-manager.explorer.update','api::carrera.carrera','{\"fields\": [\"Clave\", \"Fecha_del_acuerdo\", \"Nombre\", \"RVOE\"]}','[]','2023-02-22 11:17:14.213000','2023-02-22 11:17:14.213000',NULL,NULL),(91,'plugin::content-manager.explorer.delete','api::carrera.carrera','{}','[]','2023-02-22 11:17:14.222000','2023-02-22 11:17:14.222000',NULL,NULL),(92,'plugin::content-manager.explorer.create','api::plan.plan','{\"fields\": [\"Anio\", \"Fecha_de_actualizacion\"]}','[]','2023-02-22 11:17:14.228000','2023-03-10 12:52:48.155000',NULL,NULL),(93,'plugin::content-manager.explorer.read','api::plan.plan','{\"fields\": [\"Anio\", \"Fecha_de_actualizacion\"]}','[]','2023-02-22 11:17:14.237000','2023-03-10 12:52:48.155000',NULL,NULL),(94,'plugin::content-manager.explorer.update','api::plan.plan','{\"fields\": [\"Anio\", \"Fecha_de_actualizacion\"]}','[]','2023-02-22 11:17:14.243000','2023-03-10 12:52:48.155000',NULL,NULL),(95,'plugin::content-manager.explorer.delete','api::plan.plan','{}','[]','2023-02-22 11:17:14.250000','2023-02-22 11:17:14.250000',NULL,NULL),(111,'plugin::content-manager.explorer.create','api::carrera.carrera','{\"fields\": [\"Nombre\", \"Fecha_del_acuerdo\", \"Clave\", \"RVOE\", \"ClaveUID\", \"Planes\"]}','[]','2023-03-10 12:52:48.038000','2023-03-10 12:52:48.038000',NULL,NULL),(112,'plugin::content-manager.explorer.create','api::plan.plan','{\"fields\": [\"Anio\", \"Fecha_de_actualizacion\", \"Carrera\"]}','[]','2023-03-10 12:52:48.050000','2023-03-10 12:52:48.050000',NULL,NULL),(113,'plugin::content-manager.explorer.read','api::carrera.carrera','{\"fields\": [\"Nombre\", \"Fecha_del_acuerdo\", \"Clave\", \"RVOE\", \"ClaveUID\", \"Planes\"]}','[]','2023-03-10 12:52:48.059000','2023-03-10 12:52:48.059000',NULL,NULL),(114,'plugin::content-manager.explorer.read','api::plan.plan','{\"fields\": [\"Anio\", \"Fecha_de_actualizacion\", \"Carrera\"]}','[]','2023-03-10 12:52:48.067000','2023-03-10 12:52:48.067000',NULL,NULL),(115,'plugin::content-manager.explorer.update','api::carrera.carrera','{\"fields\": [\"Nombre\", \"Fecha_del_acuerdo\", \"Clave\", \"RVOE\", \"ClaveUID\", \"Planes\"]}','[]','2023-03-10 12:52:48.076000','2023-03-10 12:52:48.076000',NULL,NULL),(116,'plugin::content-manager.explorer.update','api::plan.plan','{\"fields\": [\"Anio\", \"Fecha_de_actualizacion\", \"Carrera\"]}','[]','2023-03-10 12:52:48.086000','2023-03-10 12:52:48.086000',NULL,NULL),(120,'plugin::content-manager.explorer.delete','api::alumno.alumno','{}','[]','2023-03-10 12:58:13.515000','2023-03-10 12:58:13.515000',NULL,NULL),(121,'plugin::content-manager.explorer.create','api::alumno.alumno','{\"fields\": [\"Matricula\"]}','[]','2023-03-13 03:09:55.382000','2023-03-13 03:09:55.382000',NULL,NULL),(122,'plugin::content-manager.explorer.read','api::alumno.alumno','{\"fields\": [\"Matricula\"]}','[]','2023-03-13 03:09:55.405000','2023-03-13 03:09:55.405000',NULL,NULL),(123,'plugin::content-manager.explorer.update','api::alumno.alumno','{\"fields\": [\"Matricula\"]}','[]','2023-03-13 03:09:55.417000','2023-03-13 03:09:55.417000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-26 10:07:38