CREATE DATABASE  IF NOT EXISTS `coffeeshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coffeeshop`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: coffeeshop
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Temporary view structure for view `porderandproductandamount`
--

DROP TABLE IF EXISTS `porderandproductandamount`;
/*!50001 DROP VIEW IF EXISTS `porderandproductandamount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `porderandproductandamount` AS SELECT 
 1 AS `porderno`,
 1 AS `membername`,
 1 AS `phone`,
 1 AS `address`,
 1 AS `employname`,
 1 AS `productname`,
 1 AS `amount`,
 1 AS `sum`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `productnameandamount`
--

DROP TABLE IF EXISTS `productnameandamount`;
/*!50001 DROP VIEW IF EXISTS `productnameandamount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productnameandamount` AS SELECT 
 1 AS `porderno`,
 1 AS `productname`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `porderandproductandamount`
--

/*!50001 DROP VIEW IF EXISTS `porderandproductandamount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `porderandproductandamount` AS select `porder`.`porderno` AS `porderno`,`member`.`name` AS `membername`,`member`.`phone` AS `phone`,`member`.`address` AS `address`,`employ`.`name` AS `employname`,`product`.`productname` AS `productname`,`porder`.`amount` AS `amount`,(`porder`.`amount` * `product`.`price`) AS `sum` from (((`porder` join `member` on((`porder`.`memberno` = `member`.`memberno`))) join `employ` on((`porder`.`employno` = `employ`.`employno`))) join `product` on((`porder`.`productno` = `product`.`productno`))) order by `porder`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productnameandamount`
--

/*!50001 DROP VIEW IF EXISTS `productnameandamount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productnameandamount` AS select `porder`.`porderno` AS `porderno`,`product`.`productname` AS `productname`,`porder`.`amount` AS `amount` from (`porder` join `product`) where (`product`.`productno` = `porder`.`productno`) */;
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

-- Dump completed on 2025-02-24  9:39:33
