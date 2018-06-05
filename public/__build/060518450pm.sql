-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: techworkbench
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (3,'Joe Bloe','Acme Pizza','919.369.3214','123 Someplace St. Holy Springs, NC 27555','jblow@acmepizza.net','Pizza Restaurant','2018-06-04 22:52:03','2018-06-04 22:52:03'),(4,'Armed Pilot','Helo World','919.987.3254','6543 Sky High Blvd. Cary, NC 27511','armed@heloworld.com','Hobby Shop','2018-06-04 23:01:17','2018-06-04 23:01:17'),(5,'Pete Pistol','Da Gun Shop','919.369.7412','3006 Chamber Dr. Raleigh, NC 27603','bangbang@dagunshop.com','Gun Shop','2018-06-04 23:03:15','2018-06-04 23:03:15'),(106,'uZXhozcHe jMrVQXSHK','suSnoQMLR hdbnHJVcl','919.365.8512','57 BwY aJg,  Holy Springs','WTUInAc@QGlaJgBYWTUI.com','ZQGlaJgBYWTUInA',NULL,NULL),(107,'rTyNh AbJYV','PXtwH wIpEH','919.192.4360','59 ymAVxqQr tZuvYKUg,  Raleigh','HAqJlopDt@CnTHAqJlopDtZ.com','HAqJlopD',NULL,NULL),(108,'rbQEJcvu gIfkvnax','XZgQUqWh mrZksQaR','919.485.3468','9056 cgMeidv GrZczwt,  Cary','WTJYGrZczwtbUX@WTJYGrZczwtbUX.com','YGrZczwtb',NULL,NULL),(109,'ajWdLkHOl oZGHxFMYU','kwOKeEyfP biMIXdUjF','919.218.8196','8 oSzOq QuqYC,  Cary','uqYCgnDEPsJpvN@kiyGwOKQ.com','KQuqYCg',NULL,NULL),(110,'CZltS YFaUy','AyTGh bjVcl','919.137.5498','8319 BMrzHcTbZ XPQGFJbgi,  Apex','rXPQGF@wpHmZrXPQG.com','YvEIlwp',NULL,NULL),(111,'QRhw HXDJ','wgAr nZoh','919.768.1248','7406 Mglx viVB,  Holy Springs','zPviVBnk@zPviVBnk.com','VBnkW',NULL,NULL),(112,'ybEQYuB HReCnyk','HxDRCyS vNGWrBq','919.087.7310','24 GQeybJt Waykezr,  Apex','HoTLOcMWayk@MWaykezrBX.com','HoTLOcMWaykez',NULL,NULL),(113,'dzlUF ZXLKk','sUAcf HlfWJ','919.856.0935','084 KfRqzDOSAl obFatAOTis,  Durham','kzZobFatAOTis@IdUhXk.com','IdUhXkz',NULL,NULL),(114,'SowtjsfNym BPoiZTMgxr','cOrJgBdLtj sOELbzCuxj','919.871.3682','741 ypDm ZpKj,  Apex','jLTrmdsSCcIhJ@wZpKjLTrmdsS.com','ywZpKjL',NULL,NULL),(115,'pERGISdU qRjmbAYi','UXKHdLfo xMmlyLEk','919.542.6907','2 sZOHXvUA ZJMBVhUy,  Apex','RwsbcQZ@bcQZJ.com','QZJMBVhUyAkP',NULL,NULL),(116,'TNip KRuf','UEFu VqRS','919.637.7210','3 glVWMQch zWbxfFni,  Holy Springs','WbxfFnipE@RhoqzWbxfF.com','GRhoqzWb',NULL,NULL),(117,'ykRcf nrmLW','cPTjg JAjdQ','919.920.3650','31827 OysmKUqE qFGIthrX,  Cary','dEqFGIthrX@IthrXAcszuQLxk.com','qFGIthr',NULL,NULL),(118,'OQKHAtj SIkrJRD','ZVoqFAN wFSjhgk','919.803.1364','460 IpvODGFwMP mpixQHczoC,  Raleigh','BmpixQHczo@ZBmpixQ.com','zoCGlLjduIrU',NULL,NULL),(119,'GgkXyLz wEiZHNB','mqHGFkx Wxnzmyi','919.730.6703','64 iedQUDlcY tKkSsImld,  Raleigh','SsImldqnD@KkSsIml.com','htKkSsIm',NULL,NULL),(120,'XxIYbQm ODAcqrF','poOhkUW TiHNgxW','919.374.6927','68 ixMtWGhbw cqBIDfLNv,  Durham','qBIDfLNvkbjygKp@BIDfL.com','xGuXScqB',NULL,NULL),(121,'PmeBRb rlsXLF','GabWBc CcTOZP','919.723.6450','3 VDjkXTJ LNmiMSy,  Cary','yoYXrUZBjF@azLNmiM.com','azLNmiMSyoYXrUZ',NULL,NULL),(122,'dXCvukR fABvVOk','HyhEQek QZkThVs','919.354.3407','80 TVfN hfGR,  Raleigh','iIbhfGRmeaQD@EOPzgCT.com','zgCTXiIbh',NULL,NULL),(123,'ykoXRjSdE nTvXhktqy','jYOVhXLnE ltBTSrLqw','919.936.9106','84 CQX pfM,  Raleigh','lSpfMd@LRgxulSpfMdmO.com','RgxulSpfMdm',NULL,NULL),(124,'npqhJT ZJyHIt','wUsWFS FoMPeI','919.489.3682','75810 fzYB Qzun,  Durham','unUYm@OAIHWQzunUY.com','OAIHWQzu',NULL,NULL),(125,'cWkxI CMthB','MHGSQ DQckz','919.219.7196','3 wBk CTY,  Cary','bVQvixrpCT@XbVQvixrpCTYFs.com','vixrpCTYFsu',NULL,NULL),(126,'KxqwsyLYX vfUIhHoKy','LAiOHgnsF hlAqMsLJp','919.714.7608','354 wLqRDF MruLxj,  Durham','ZbKeYSMruLxjs@KeYSMruLx.com','KeYSMruL',NULL,NULL),(127,'hREL BpLT','XtzB YOXo','919.453.3485','6305 rEgozxSBDG sdNZzJRanL,  Raleigh','WUsdNZzJRan@dNZzJRanLb.com','wpCWUsdNZ',NULL,NULL),(128,'fAKY gSvc','iyJd Kgls','919.854.1940','97 TXMjNLyg EpnjKUrA,  Cary','EpnjKUrAg@njKUrAgVdMqsNz.com','fHwEpnjKUrAgVd',NULL,NULL),(129,'wuNyXkBqO YkIQmEZbz','iQwGmfdRt cyoaATKFW','919.160.7432','21930 tiz TvU,  Durham','vUGVYfyKP@GVYfyKPAjbtrLcH.com','UGVYfyKPAjbt',NULL,NULL),(130,'ZKiRjOueyS unZAQNkTIJ','hEtkxAiOQF ekwANVapjE','919.235.5740','3 zSaILNcb qvVhzPuc,  Apex','OfWTabDjXqvVhz@fWTabDjXqvV.com','LUOfWTa',NULL,NULL),(131,'yWOknod yJPeumI','rvSYHWN XkqKBDQ','919.524.1658','1 bISKjQMXe hwPYdlRAb,  Apex','KTSEhwPYdlRA@fxtmKTSEhw.com','tmKTSEhwPYdl',NULL,NULL),(132,'EvtdzMkYB CQfPjiBdJ','mnaRNWeZg TUtQczxdY','919.753.9032','3195 qxoLhTe FkidAGO,  Durham','HFkidAGOUgtl@YHFki.com','UgtlJDvQbzVnLR',NULL,NULL),(133,'Ufj PGn','MUv ySk','919.175.2935','46283 rHMKastBo zewWucyvE,  Apex','TNpzewWucyvEPF@zewWucyvEPFCB.com','YIfKTNpzewWucyv',NULL,NULL),(134,'cTN kKr','luV yke','919.056.3910','785 umbSvQp NrtYKSU,  Holy Springs','rtYKSUuQnGCLz@uQnGCLzhgXqfD.com','YKSUuQnGCLzhg',NULL,NULL),(135,'FzQfom TphbQy','intvga tHduNh','919.074.8971','635 RPujSqnbt RakjLfmDO,  Apex','psQACvY@GbziHSJRakjLfm.com','hpsQACvYG',NULL,NULL),(136,'WNVnC hgusl','qgFNI VHDnr','919.469.8426','3 ytWaMk fGvKjk,  Holy Springs','vKjkcWPADSdUT@KjkcWPADSdUTNC.com','tfGvKjkcWPADS',NULL,NULL),(137,'pOfvzEQi uIgZvoiO','syHEZVBk GNgXehVR','919.947.8395','59 ALIimnTxk rjHBMPDcZ,  Apex','MPDcZLOYCbkaW@JrjHBMPDcZL.com','PDcZLOYCbkaWnt',NULL,NULL),(138,'STAOmFKRu lgWCVbdwO','oIUFvmerS QHYuvMEBF','919.394.9840','08 btUAR LgGSz,  Cary','XstpLg@XstpLgGSzkyr.com','MRXst',NULL,NULL),(139,'yCeEsIUKf qUDsSbxTB','xCjOwGrun MKzcZXETi','919.281.4123','1047 bWOuxlmjf hSfsVNFqY,  Holy Springs','xoBhSfsVNFq@fsVNFqYIXHn.com','hSfsVNFqYIXHnA',NULL,NULL),(140,'qGovEhyUPn PmyugYjvCW','ZSUiyGFaNm DRrHldELnO','919.498.6915','085 YLSHxpyklV QNIsJcmWUx,  Durham','bGoZfRkQNIsJcm@QNIsJcmW.com','QNIsJcmWU',NULL,NULL),(141,'mft zou','feS JBt','919.743.4891','29 oHLGbXSYcV TGpjDwRgKU,  Cary','eMQkucC@kucClxTGpjDwRgK.com','ucClxTGpjD',NULL,NULL),(142,'roLjHZbMkd NSQVhgKPyx','NKCBryUkYg yOXSvQUdix','919.692.9471','934 tTlNYc NbgkGz,  Raleigh','hNbgk@AhNbg.com','oiAhNbgkGzBRUM',NULL,NULL),(143,'wQxug UiNmn','GsngJ AWQFv','919.634.6237','417 rCVbqgK IeaVEuk,  Holy Springs','IeaVEuknAtrcC@szxIeaVEukn.com','IeaVEuk',NULL,NULL),(144,'cOJLsr InpjEy','fGVqXK vJkLaq','919.619.2671','024 qvt ULk,  Holy Springs','dyvAVGWtXU@cdyvAVGWtX.com','GWtXULkmCjJpZ',NULL,NULL),(145,'GcaTJEfj IlQTrofm','LpYolSVh kJMXTaPu','919.436.5793','612 bNqeRfTgz MulpakmQY,  Durham','ulpakmQYwtXV@pakmQYwtXVE.com','pakmQYwt',NULL,NULL),(146,'VKmzrbta xRWCDSpr','gWBpwVRs MpgxJDoa','919.760.1859','9371 bsDlgnk LBrmoFh,  Raleigh','XadYLB@XadYLBrmo.com','OyliZXad',NULL,NULL),(147,'pIMDHnvi mdPSQIZT','xGIeFoaK IUbKmYsS','919.479.0432','910 ldDrBZ CAGBLX,  Raleigh','lojmiecbC@ecbCAGB.com','bCAGBL',NULL,NULL),(148,'fwszQ WNHUh','VoOYv dJazb','919.470.1392','9 COyt sVCB,  Raleigh','LwvRtfAsVCBEWgu@FGLwv.com','LwvRtfAsVC',NULL,NULL),(149,'mZSe iUdS','Ghud uyhC','919.352.8205','03 GbF KwF,  Cary','eIUdHbPR@dHbPREMQtazB.com','vKwFfDeIUdHb',NULL,NULL),(150,'GHuAdxIEoS qoLjUxyKub','rPsUVIaNFZ aryeDNuAiT','919.917.8204','79 cOp Cto,  Raleigh','pmdfxLuCtoOI@SNgPpmdfxLuCtoO.com','pmdfxLuCtoO',NULL,NULL),(151,'oakS atHU','ywBU LkNe','919.346.5264','56 lGavzCMQZ krwxKaDcv,  Cary','DcvySjqmsVFzN@aDcvySjq.com','xKaDc',NULL,NULL),(152,'umYIQ jhvSZ','nuCme LwfEi','919.351.3846','4 JKGUeDLANn nqxAfDyBTI,  Apex','YPvnqxAfDyBTIMk@KgEHRlZSYPvnqxA.com','ZSYPvnqxAfDyBT',NULL,NULL),(153,'nUCd mXYF','ZdDx LpyE','919.345.8602','704 BkbOz gwlJu,  Holy Springs','GgwlJu@oChNdGgwlJuDIW.com','hNdGgwlJuDIWcRx',NULL,NULL),(154,'avfIhHBinY RSbnAJLEWf','GWdkyaqvLK PgHZxOqrDN','919.429.5732','16 nsBMjOv vteVCTO,  Durham','VCTOBqANLSosy@PvteVCTOBqAN.com','eVCTOBq',NULL,NULL),(155,'APuwK zZyJt','JchAd yAMOW','919.071.9378','20 uIZS OZDs,  Cary','WlnaoFLNQ@iOZDsWlnaoF.com','WlnaoFLNQJX',NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) DEFAULT '0',
  `priority_id` int(10) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_due` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_paid` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signed` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,5,3,'sdfg sdfg sd','sdfg sdf g','06/20/2018','3000.00',NULL,0,'2018-06-02 23:28:00','2018-06-04 23:28:00',0),(2,3,5,'dfghdfg','dfgh dfgh dfgh dfghd fdfgh dfgh dfgh dfgh dfhg . dfghdf gh\r\n\r\ndfgh dfgh dfgh dfh \r\ndfg dfgh dfgh \r\nddfgh','06/30/2018','4000.00','2000.00',1,'2018-06-04 23:29:31','2018-06-04 23:29:31',0),(343,154,2,'MUnghG',' blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores re','10/05/2018','144200',NULL,1,'2018-09-05 04:00:00',NULL,0),(344,111,4,'PpjFWleXqHB','ulpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumq','07/23/2018','822700',NULL,0,'2018-06-23 04:00:00',NULL,0),(345,145,2,'JMuZsFHiqDC','mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe e','07/12/2018','061300',NULL,0,'2018-06-12 04:00:00',NULL,0),(346,143,2,'JuTSpiIxPWo','to odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cu','08/12/2018','772800',NULL,0,'2018-07-12 04:00:00',NULL,0),(347,143,2,'qMpFUyHDZbiIro','a deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum nec','09/14/2018','626100',NULL,1,'2018-08-14 04:00:00',NULL,0),(348,155,2,'qwJRtVuayhLkfg','dita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','07/09/2018','583800',NULL,0,'2018-06-09 04:00:00',NULL,0),(349,129,1,'cBxoiCGJTjSQ','occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor re','10/31/2018','535100',NULL,1,'2018-10-01 04:00:00',NULL,0),(350,107,2,'knFAZy','edita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quib','11/04/2018','498400',NULL,1,'2018-10-04 04:00:00',NULL,0),(351,133,5,'vzETJtpnOWMIbFN','s excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusd','09/09/2018','521900',NULL,0,'2018-08-09 04:00:00',NULL,0),(352,123,4,'wStDcilNTzKmIf',' animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint','11/20/2018','983900',NULL,0,'2018-10-20 04:00:00',NULL,0),(353,106,1,'teOqvC','quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','12/14/2018','525700',NULL,0,'2018-11-14 05:00:00',NULL,0),(354,114,5,'IBrTvuCiWsoemSd','ollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','12/25/2018','046800',NULL,1,'2018-11-25 05:00:00',NULL,0),(355,122,1,'NTIEtLeXZkw','est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias co','06/14/2018','965500',NULL,1,'2018-05-14 04:00:00',NULL,0),(356,141,2,'JPZdmXEg','ilique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum ne','06/28/2018','085900',NULL,0,'2018-05-28 04:00:00',NULL,0),(357,137,4,'VHzdRhwr','umque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusan','08/29/2018','353800',NULL,0,'2018-07-29 04:00:00',NULL,0),(358,153,5,'FsWcoGid',' excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','09/09/2018','891900',NULL,1,'2018-08-09 04:00:00',NULL,0),(359,106,5,'PZuSedEokG','s qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus ','09/26/2018','497100',NULL,0,'2018-08-26 04:00:00',NULL,0),(360,125,3,'bGtCplzSrgcquT',' excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis a','11/03/2018','563300',NULL,0,'2018-10-03 04:00:00',NULL,0),(361,136,2,'UzeoRd','orum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','09/03/2018','367800',NULL,1,'2018-08-03 04:00:00',NULL,0),(362,3,5,'ynesxQK','t iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime ','10/27/2018','998900',NULL,0,'2018-09-27 04:00:00',NULL,0),(363,136,1,'wscupBqgED','to odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum','07/05/2018','093200',NULL,1,'2018-06-05 04:00:00',NULL,0),(364,108,2,'yeFLSzEmath','orrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','11/11/2018','089400',NULL,0,'2018-10-11 04:00:00',NULL,0),(365,134,2,'ZeGvKfpyACjgH','. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','12/19/2018','627200',NULL,0,'2018-11-19 05:00:00',NULL,0),(366,131,3,'bCqsMBWNuVza','uidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus aute','06/23/2018','323900',NULL,0,'2018-05-23 04:00:00',NULL,0),(367,136,1,'KZCnEoAkOIxpR','i optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis a','12/24/2018','557600',NULL,0,'2018-11-24 05:00:00',NULL,0),(368,135,1,'mVpYFRQ','olorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','11/29/2018','582800',NULL,0,'2018-10-29 04:00:00',NULL,0),(369,136,3,'QAdPBE',' sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, om','08/26/2018','815400',NULL,1,'2018-07-26 04:00:00',NULL,0),(370,116,5,'XOpBaLldYEFZyfH','cimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum fa','12/06/2018','588200',NULL,0,'2018-11-06 05:00:00',NULL,0),(371,116,3,'ZDyPcC','io dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facil','08/04/2018','952500',NULL,0,'2018-07-04 04:00:00',NULL,0),(372,144,2,'SwcYglTyr','sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum reru','07/31/2018','273100',NULL,1,'2018-07-01 04:00:00',NULL,0),(373,116,4,'QBRAdlInrHWD','re, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','07/18/2018','829600',NULL,1,'2018-06-18 04:00:00',NULL,0),(374,151,2,'ZVCjYIvL','ue corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferend','10/03/2018','959700',NULL,1,'2018-09-03 04:00:00',NULL,0),(375,115,2,'wpNaLqYi','et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibu','10/07/2018','413800',NULL,0,'2018-09-07 04:00:00',NULL,0),(376,122,2,'jqhmGZEkwg','gnissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi ','11/29/2018','965100',NULL,1,'2018-10-29 04:00:00',NULL,0),(377,148,4,'ZKjqrPwGnfilgO','ucimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque ea','06/03/2018','798400',NULL,0,'2018-05-03 04:00:00',NULL,0),(378,134,5,'kIxYgjSQBHLqW','itia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, ','07/03/2018','286900',NULL,1,'2018-06-03 04:00:00',NULL,0),(379,151,3,'ptjHLy',' eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','06/20/2018','297300',NULL,0,'2018-05-20 04:00:00',NULL,0),(380,137,3,'XoTJhuqxB','s molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores re','12/23/2018','429800',NULL,0,'2018-11-23 05:00:00',NULL,0),(381,141,2,'noYwEelvSbCt','us qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt','08/13/2018','438100',NULL,1,'2018-07-13 04:00:00',NULL,0),(382,5,3,'AcKvxbdTNw','a animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','09/11/2018','188900',NULL,1,'2018-08-11 04:00:00',NULL,0),(383,136,5,'FkblTZXWadDQ','olorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repel','09/29/2018','148100',NULL,1,'2018-08-29 04:00:00',NULL,0),(384,123,1,'OFNlCYpqLnVtbs','e corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id q','11/07/2018','341500',NULL,0,'2018-10-07 04:00:00',NULL,0),(385,148,4,'oESXZVfOcp','nt occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','07/02/2018','615500',NULL,1,'2018-06-02 04:00:00',NULL,0),(386,121,5,'FlQMhswINTyA','sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','10/17/2018','243500',NULL,1,'2018-09-17 04:00:00',NULL,0),(387,138,2,'EoRDQxWivg','corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et','08/25/2018','135300',NULL,0,'2018-07-25 04:00:00',NULL,0),(388,3,5,'edlCoIkfRPugDrn',' cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','11/15/2018','896900',NULL,0,'2018-10-15 04:00:00',NULL,0),(389,142,1,'qviyXBCQ','io cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','12/25/2018','086700',NULL,0,'2018-11-25 05:00:00',NULL,0),(390,145,4,'MdUZkXeVn','o dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias exceptu','08/08/2018','298900',NULL,0,'2018-07-08 04:00:00',NULL,0),(391,145,1,'QvgIecnqJtKAm','lorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.','09/23/2018','094600',NULL,1,'2018-08-23 04:00:00',NULL,0),(392,109,3,'BdbcpAhJZxgvH',' nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus s','06/07/2018','613400',NULL,1,'2018-05-07 04:00:00',NULL,0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_06_01_011902_create_customers_table',1),(2,'2018_06_01_012020_create_jobs_table',1),(3,'2018_06_01_025105_create_priorities_table',1),(4,'2018_06_04_152047_modify_jobs_table_01',2),(5,'2018_06_04_152258_modify_jobs_table_02',3),(6,'2018_06_04_192114_modify_jobs_table_03',4),(7,'2018_06_04_192335_modify_jobs_table_04',5),(8,'2018_06_04_192526_modify_jobs_table_05',6),(9,'2018_06_04_192624_modify_jobs_table_06',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priorities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priorities`
--

LOCK TABLES `priorities` WRITE;
/*!40000 ALTER TABLE `priorities` DISABLE KEYS */;
INSERT INTO `priorities` VALUES (1,'Filler Work / Personal',NULL,NULL),(2,'No Rush',NULL,NULL),(3,'Normal',NULL,NULL),(4,'Rush Job',NULL,NULL),(5,'ASAP',NULL,NULL);
/*!40000 ALTER TABLE `priorities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-05 16:50:28
