/*
 Navicat Premium Data Transfer

 Source Server         : MySQL - localhost
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : pohovory

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 27/11/2021 15:09:38
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actions
-- ----------------------------
DROP TABLE IF EXISTS `actions`;
CREATE TABLE `actions`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PositionID` int(11) NULL DEFAULT NULL,
  `Date` datetime(0) NULL DEFAULT NULL,
  `Activity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of actions
-- ----------------------------

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Web` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HR` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES (1, '1.PF', 'Služská 1865/15, Praha 8 - Kobylisy', 'https://www.1pf.cz/', 0);
INSERT INTO `companies` VALUES (2, 'ABRA Software a.s.', 'Jeremiášova 1422/7b, Praha 13 – Stodůlky', 'https://www.abra.eu/en/', 0);
INSERT INTO `companies` VALUES (3, 'Absa Technology Praha, s.r.o.', 'Milevská 5, Praha 4 - Podolí', 'http://www.absa.cz/', 0);
INSERT INTO `companies` VALUES (4, 'Accolade, Inc.', 'Rohanské nábř. 27, Praha 8 - Karlín', 'https://accolade.eu/', 0);
INSERT INTO `companies` VALUES (5, 'Adecco EMEA business solutions, s.r.o.', 'Pikrtova 1737/1a, Praha 4 - Nusle ', 'https://www.adecco.cz/en/', 0);
INSERT INTO `companies` VALUES (6, 'AdminIT s.r.o.', 'Drahobejlova 1452/54, Praha 9 – Českomoravská', 'https://www.adminit.cz/', 0);
INSERT INTO `companies` VALUES (7, 'AHOLD (Albert)', 'Radlická 520/117, Praha 5 - Jinonice', 'https://www.albert.cz/', 0);
INSERT INTO `companies` VALUES (8, 'AKKA Czech Republic s.r.o.', 'Siemensova 2717/4, Praha 5 - Butovice', 'https://akka.jobs.cz/o-nas/', 0);
INSERT INTO `companies` VALUES (9, 'Albert Česká republika, s.r.o.', 'Radlická 520/117, Praha 5 - Jinonice', 'https://www.albert.cz/', 0);
INSERT INTO `companies` VALUES (10, 'ALEF Distribution CZ, s.r.o.', 'Pernerova 691/42, Praha 8 - Karlín', 'https://www.alef.com/cz/', 0);
INSERT INTO `companies` VALUES (11, 'Alef Nula', 'Pernerova 691/42, Praha 8 - Karlín', 'https://www.alefnula.com/', 0);
INSERT INTO `companies` VALUES (12, 'Alef Support', 'Pernerova 691/42, Praha 8 - Karlín', 'https://www.alef.com/cz/', 0);
INSERT INTO `companies` VALUES (13, 'Algotech a.s.', 'Sokolovská 668/136 D, Praha 8 - Invalidovna', 'https://www.algotech.cz/', 0);
INSERT INTO `companies` VALUES (14, 'Allianz pojišťovna, a.s.', 'Ke Štvanici 656/3, Praha 8 - Karlín', 'https://www.allianz.cz/cs_CZ/pojisteni/vse-o-allianz/kariera.html', 0);
INSERT INTO `companies` VALUES (15, 'ANECT a.s.', 'Lomnického 1742/2a, Praha 4 - Pankrác', 'https://www.anect.cz', 0);
INSERT INTO `companies` VALUES (17, 'ARBES Technologies, a.s', 'Plzeňská 345/5, Praha 5 – Smíchov', 'http://www.arbes.com/', 0);
INSERT INTO `companies` VALUES (18, 'Atos IT Solutions and Services, s.r.o.', 'Doudlebská 1699/5, Praha 4 - Nusle', 'https://atos.net/cs/ceska-republika', 0);
INSERT INTO `companies` VALUES (19, 'Avast', 'Pikrtova 1737/1A, Praha 4-Nusle', 'https://www.avast.cz', 0);
INSERT INTO `companies` VALUES (20, 'BARTON Consulting s.r.o.', 'V Jámě 699, Praha 1 - Nové Město', 'https://www.bartonconsulting.cz/', 1);
INSERT INTO `companies` VALUES (21, 'BNP PARIBAS CARDIF', 'Boudníkova 2506/1, Praha 8 - Libeň', 'http://www.cardif.cz/', 0);
INSERT INTO `companies` VALUES (22, 'BNP Paribas Personal Finance SA, odštěpný závod', 'Karla Engliše 3208, Praha 5 - Smíchov', 'https://www.hellobank.cz/', 0);
INSERT INTO `companies` VALUES (23, 'Capacita s.r.o.', 'Na Moráni 1957/5, Praha 2 - Nové Město', 'https://www.capacita.cz/en/', 0);
INSERT INTO `companies` VALUES (24, 'CDN77', 'Na Šafránce 27, Praha 10', 'https://www.cdn77.com/network', 0);
INSERT INTO `companies` VALUES (25, 'CGI CS&EE', 'Laurinova 2800/4, Praha 13 – Stodůlky', 'http://www.cgi.com/en/ceska-republika', 0);
INSERT INTO `companies` VALUES (26, 'CISCO', 'Karlovo nám. 2097/10, Praha 2 - Nové Město', 'https://www.cisco.com', 0);
INSERT INTO `companies` VALUES (27, 'Citrix', 'Rohanské nábř. 693/10, Praha 8 - Karlín', 'https://www.citrix.com/', 0);
INSERT INTO `companies` VALUES (28, 'ComAp a.s.', 'Praha 7 - Holešovice', 'https://www.comap-control.com/', 0);
INSERT INTO `companies` VALUES (29, 'CoolPeople s.r.o.', 'Na Strži 2102/61a, Praha 4 - Krč', 'https://www.cooljobs.eu/cz', 1);
INSERT INTO `companies` VALUES (30, 'Corpus Solutions a.s.', 'Štětkova 1638/18, Praha 4-Nusle', 'http://www.corpus.cz/', 0);
INSERT INTO `companies` VALUES (31, 'CPL Jobs s.r.o.', 'Praha 1 - Nové Město', 'https://cpljobs.com/cz/', 1);
INSERT INTO `companies` VALUES (32, 'Curium Netherlands Holding B.V., odštěpný závod', 'Prosecká 852/66, Praha 9 - Prosek', 'https://www.curiumpharma.com/', 0);
INSERT INTO `companies` VALUES (33, 'CZECH PROMOTION group, s.r.o.', 'Thámova 289/13, Praha 8 – Karlín', 'http://www.promotion.cz/', 0);
INSERT INTO `companies` VALUES (34, 'Česká spořitelna, a. s.', 'Vinohradská 1632/180, Praha 2 - Vinohrady', 'https://www.csas.cz', 0);
INSERT INTO `companies` VALUES (35, 'ČEZ ICT Services', 'Duhová 1/425, Praha 4 - Michle', 'https://www.cez.cz', 0);
INSERT INTO `companies` VALUES (36, 'ČEZ, a. s.', 'Duhová 1/425, Praha 4 - Michle', 'https://www.cez.cz', 0);
INSERT INTO `companies` VALUES (37, 'ČSOB Československá obchodní banka, a. s.', 'Radlická 333/150, Praha 5 - Smíchov', 'https://www.csob.cz/', 0);
INSERT INTO `companies` VALUES (38, 'Deckard&Penfield', 'Jankovcova 1037/49, Praha - Holešovice', 'http://www.deckardpenfield.cz', 0);
INSERT INTO `companies` VALUES (39, 'Dedoles', 'Butovice, Zličín, Chodov?', 'https://www.dedoles.cz/', 0);
INSERT INTO `companies` VALUES (40, 'Deloitte', 'Italská 2581/67, Praha 2 - Vinohrady', 'https://www.deloitte.com', 0);
INSERT INTO `companies` VALUES (41, 'Deutsche Börse Group', 'Sokolovská 662/136b, 18600, Praha - Karlín', 'https://deutsche-boerse.com/dbg-en/', 0);
INSERT INTO `companies` VALUES (42, 'Deutsche Börse Services s.r.o.', 'Sokolovská 662, Praha 8-Invalidovna', 'https://deutsche-boerse.com/dbg-en/', 0);
INSERT INTO `companies` VALUES (43, 'DHL Information Services (Europe) s.r.o.', 'V parku 2308/10, Praha – Chodov', 'http://www.dhl.cz/cs.html', 0);
INSERT INTO `companies` VALUES (44, 'Digiteq Automotive s.r.o.', 'Novodvorská 994/138, Praha 4 - Lhotka', 'http://www.digiteqautomotive.com/', 0);
INSERT INTO `companies` VALUES (45, 'Dr.Max ', 'Na Florenci 2116/15, Praha - Nové Město', 'https://www.drmax.cz/', 0);
INSERT INTO `companies` VALUES (46, 'E.ON CZ', 'Bozděchova 2, Praha 5 - Smíchov', 'https://www.eon.cz', 0);
INSERT INTO `companies` VALUES (47, 'ElasticON Global', 'Praha', 'https://www.elastic.co/', 0);
INSERT INTO `companies` VALUES (48, 'Equa bank a.s.', 'Karolinská 661/4, Praha 8 - Karlín', 'https://www.equabank.cz/', 0);
INSERT INTO `companies` VALUES (49, 'Europ Assistance s.r.o.', 'Na Pankráci 1658/121, Praha 4 - Pankrác', 'http://www.europ-assistance.cz/', 0);
INSERT INTO `companies` VALUES (50, 'Experis', 'Na Florenci 2116/15, Praha 8 - Florenc', 'https://www.experis.cz', 1);
INSERT INTO `companies` VALUES (51, 'Experis IT Czech Republic', 'Na Florenci 2116/15, Praha 8 - Florenc', 'https://www.experis.cz', 1);
INSERT INTO `companies` VALUES (52, 'FORTUNA GAME a.s.', 'Italská 2584/69, Praha – Vinohrady', 'http://www.ifortuna.cz/', 0);
INSERT INTO `companies` VALUES (53, 'GasNet, s.r.o.', 'Prosecká 855/68, Praha 9 - Prosek', 'https://www.gasnet.cz/cs/index/', 0);
INSERT INTO `companies` VALUES (54, 'Geetoo', 'Klecandova 2380/1, Praha 4 - Chodov', 'https://www.geetoo.com/', 0);
INSERT INTO `companies` VALUES (55, 'Generali Česká pojišťovna a.s.', 'Na Pankráci 1658/121, Praha 4 - Nusle', 'https://www.generaliceska.cz/', 0);
INSERT INTO `companies` VALUES (56, 'GIT Consult Czech s.r.o.', 'Fügnerovo nám. 1808/3, Praha 2 - Nové Město', 'https://www.gitisit.cz/', 1);
INSERT INTO `companies` VALUES (57, 'Grafton Consulting', 'Na Poříčí 1079/3a, Praha 1 - Nové Město', 'https://www.grafton.cz', 1);
INSERT INTO `companies` VALUES (58, 'GuideVision, s.r.o. ', 'Türkova 2319/5b, Praha 4 – Chodov', 'https://guidevision.cz/', 0);
INSERT INTO `companies` VALUES (59, 'HCL a.s.', 'Praha', 'https://www.hcltech.com/', 0);
INSERT INTO `companies` VALUES (60, 'HEUREKA Group a.s.', 'Karolinská 650/1, Praha 8 - Karlín', 'https://www.heureka.cz/', 0);
INSERT INTO `companies` VALUES (61, 'Hewlett Packard', 'Vyskočilova 1410/1, Praha 4 - Michle', 'https://www.hp.com', 0);
INSERT INTO `companies` VALUES (62, 'Homecredit', 'Evropská 2690, Praha 6 - Dejvice', 'https://www.talentica.cz', 0);
INSERT INTO `companies` VALUES (63, 'Infinity Pro', 'UK, Paigton', 'https://www.infinitypro.com/', 0);
INSERT INTO `companies` VALUES (64, 'INFOMATIC s.r.o.', 'Bucharova 1186/16, Praha – Stodůlky', 'https://www.infomatic.cz/cz/', 0);
INSERT INTO `companies` VALUES (65, 'Integromat', 'Voctářova 5, Praha 8 - Palmovka', 'https://www.integromat.com/en', 0);
INSERT INTO `companies` VALUES (66, 'J&T SERVICES ČR, a.s.', 'Sokolovská 700/113a, Praha 8', 'https://www.jtbank.cz', 0);
INSERT INTO `companies` VALUES (67, 'Jobs Contact Consulting, s.r.o.', 'Praha 2 – Nové Město', 'https://www.jobscontact.cz/', 1);
INSERT INTO `companies` VALUES (68, 'Kapsch BusinessCom IoT Solutions s.r.o.', 'Opletalova 1535/4, Praha - Nové Město', 'https://www.kapsch.net/en', 0);
INSERT INTO `companies` VALUES (69, 'Kaspersky', 'Nádražní 344/23, Praha 5 - Smíchov', 'https://www.kaspersky.com/', 0);
INSERT INTO `companies` VALUES (70, 'Komerční Banka, a.s.', 'náměstí Junkových 2772/1, Praha 5 - Stodůlky', 'https://www.kb.cz/', 0);
INSERT INTO `companies` VALUES (71, 'Konica Minolta Business Solutions Czech, spol. s r.o.', 'Evropská 846/176a, Praha 6', 'https://www.konicaminolta.cz/cs-cz', 0);
INSERT INTO `companies` VALUES (72, 'Lidl Česká republika v.o.s.', 'Nárožní 1359/11, Praha 5 – Stodůlky', 'https://www.lidl.com/', 0);
INSERT INTO `companies` VALUES (73, 'Mainstream / EUSPA', 'Janovského 438, Praha 7-Holešovice', 'https://www.euspa.europa.eu/', 0);
INSERT INTO `companies` VALUES (74, 'ManpowerGroup s.r.o.', 'Na Florenci 2116/15, Nové Město', 'https://www.manpower.cz', 0);
INSERT INTO `companies` VALUES (75, 'MARIMEX CZ, s.r.o.', 'Libušská 221/264a, Praha – Libuš', 'https://www.marimex.cz/', 0);
INSERT INTO `companies` VALUES (76, 'mBlue Czech, s.r.o.', 'Řeporyjská 490/17, Praha – Jinonice', 'https://mblue.cz/', 1);
INSERT INTO `companies` VALUES (77, 'McKinsey & Company, Inc. Prague - organizační složka', 'Milevská 2095/5, Praha 4 - Krč', 'https://www.mckinsey.com/cz/overview', 0);
INSERT INTO `companies` VALUES (78, 'Mikenopa a.s.', 'Rohanské nábřeží 671/15, Praha 8 – Karlín', 'https://www.mikenopa.com/', 0);
INSERT INTO `companies` VALUES (79, 'MyCom Solutions, s.r.o.', 'Prosecká 851/64, Praha 9 - Prosek', 'https://mycom.cz/', 0);
INSERT INTO `companies` VALUES (80, 'NET4GAS, s.r.o.', 'Na hřebenech II 1718/8, Praha – Nusle', 'http://www.net4gas.cz/', 0);
INSERT INTO `companies` VALUES (81, 'Netskope', 'Praha', 'https://www.netskope.com/', 0);
INSERT INTO `companies` VALUES (82, 'NNIT Czech Republic s.r.o.', 'Bucharova 2641/14, Praha 5 - Nové Butovice', 'https://www.nnit.com/', 0);
INSERT INTO `companies` VALUES (83, 'NTT Czech Republic s.r.o.', 'Milevská 2095/5, Praha 4-Krč', 'https://hello.global.ntt/', 0);
INSERT INTO `companies` VALUES (84, 'O2 Czech Republic a.s.', 'Za Brumlovkou 2', 'https://www.o2.cz', 0);
INSERT INTO `companies` VALUES (85, 'Oracle', 'U Trezorky 921/2, Praha 5 - Jinonice', 'https://www.oracle.com/cz/index.html', 0);
INSERT INTO `companies` VALUES (86, 'Oracle Czech s.r.o.', 'U Trezorky 921/2, Praha 5 - Jinonice', 'https://www.oracle.com/cz', 0);
INSERT INTO `companies` VALUES (87, 'People Consulting s.r.o.', 'Praha 8 - Karlín', 'http://www.peopleconsulting.cz/', 1);
INSERT INTO `companies` VALUES (88, 'PPF Banka a.s.', 'Evropská 2690/17, Praha 6 - Dejvice', 'http://www.ppfbanka.cz/', 0);
INSERT INTO `companies` VALUES (89, 'Profinit EU, s.r.o.', 'Tychonova 2, Praha 6 - Hradčany', 'http://www.profinit.eu/', 0);
INSERT INTO `companies` VALUES (90, 'PŘEDVÝBĚR.CZ s.r.o.', 'Na Kozačce 1289/7, Praha 2 - Vinohrady', 'https://www.predvyber.cz/', 0);
INSERT INTO `companies` VALUES (91, 'PWC', 'Hvězdova 1734/2c, Praha 4-Nusle', 'https://www.pwc.com/cz/cs.html', 0);
INSERT INTO `companies` VALUES (92, 'Raiffeisenbank a.s.', 'Hvězdova 1716/2b, Praha – Nusle', 'https://www.rb.cz/', 0);
INSERT INTO `companies` VALUES (93, 'Randstad HR Solutions s.r.o.', 'Americká 525/23, Praha 2 - Vinohrady', 'https://www.randstad.cz/', 1);
INSERT INTO `companies` VALUES (94, 'Red Hat', 'Národní 135, Praha 1 - Staré Město', 'https://www.redhat.com/en/global/czech-republic?oh=redhat.cz', 0);
INSERT INTO `companies` VALUES (95, 'Ricardo Prague s.r.o.', 'Thámova 289/11-13, Praha 8 - Karlín', 'http://www.ricardo.com/', 0);
INSERT INTO `companies` VALUES (96, 'S&T a.s.', 'U Stavoservisu 527/1, Praha - Malešice', 'https://www.sntcz.cz/', 0);
INSERT INTO `companies` VALUES (97, 'S&T CZ s.r.o.', 'Na strži 1702/65,, Praha - Nusle', 'https://www.sntcz.cz/', 0);
INSERT INTO `companies` VALUES (98, 'Seznam.cz, a.s.', 'Radlická 3294/10, Praha - Smíchov', 'https://www.seznam.cz', 0);
INSERT INTO `companies` VALUES (99, 'Siemens Advanta', 'Siemensova 2715, Praha 13-Stodůlky', 'https://new.siemens.com/cz/cs.html', 0);
INSERT INTO `companies` VALUES (100, 'Siemens Mobility', 'Siemensova 2715, Praha 13-Stodůlky', 'https://new.siemens.com/cz/cs.html', 0);
INSERT INTO `companies` VALUES (101, 'Skupina Citfin', 'Radlická 751/113e, Praha – Jinonice', 'https://www.citfin.cz', 0);
INSERT INTO `companies` VALUES (102, 'Sodexo Benefity', 'Radlická 608/2, Praha 5 - Smíchov', 'https://www.sodexo.cz/', 0);
INSERT INTO `companies` VALUES (103, 'Sodexo Pass', 'Radlická 608/2, Praha 5 - Smíchov', 'http://sodexo.cz/', 0);
INSERT INTO `companies` VALUES (104, 'Stora Enso Wood Products Ždírec s.r.o.', 'Nádražní 66, Ždírec nad Doubravou', 'http://www.storaenso.com/', 0);
INSERT INTO `companies` VALUES (105, 'teamIT s.r.o.', 'Argentinská 1610/4, Praha – Holešovice', 'https://teamit.cz/', 1);
INSERT INTO `companies` VALUES (106, 'Thales DIS Czech Republic s.r.o.', 'Želetavská 1448, Praha 4 - Michle', 'https://www.thalesgroup.com/en/markets/digital-identity-and-security', 0);
INSERT INTO `companies` VALUES (107, 'THEIN - net.pointers Ltd.', 'Pernerova 697/35, Praha 8 - Karlín', 'https://net.pointers.cz/en', 0);
INSERT INTO `companies` VALUES (108, 'ThreatMark', 'Praha - bez detailů', 'https://www.threatmark.com/', 0);
INSERT INTO `companies` VALUES (109, 'TietoEvry', 'Remote', 'https://www.tietoevry.com/cz/', 0);
INSERT INTO `companies` VALUES (110, 'TipSport a.s.', 'Politických vězňů 156/21, Beroun, Beroun-Centrum', 'https://www.tipsport.cz', 0);
INSERT INTO `companies` VALUES (111, 'T-Mobile', 'Tomíčkova 2144/1, Praha 4 - Roztyly', 'http://t-mobile.cz/', 0);
INSERT INTO `companies` VALUES (112, 'TOTAL SERVICE a.s.', 'U Uranie 954, Praha 7-Holešovice', 'https://www.totalservice.cz/', 0);
INSERT INTO `companies` VALUES (113, 'Universal Production Partners, a.s.', 'Žitomírská 489/7, Praha – Vršovice', 'https://www.upp.cz/', 0);
INSERT INTO `companies` VALUES (114, 'VAMED MEDITERRA a.s.', 'Škrétova 490/12, Praha 2 - Vinohrady', 'https://www.vamed-mediterra.cz/', 0);
INSERT INTO `companies` VALUES (115, 'W.A.G. payment solutions, a.s.', 'Na Vítězné pláni 1719/4, Praha 4 – Nusle', 'https://www.eurowag.com/', 0);
INSERT INTO `companies` VALUES (116, 'Workday CZ s.r.o.', 'Italská 2584/69, Praha 2 - Vinohrady', 'https://www.deloittece.com', 0);
INSERT INTO `companies` VALUES (117, 'xITee k.s.', 'Rybná 682/14, Praha 1 – Staré Město', 'https://www.xitee.com/', 0);
INSERT INTO `companies` VALUES (118, 'Zásilkovna s.r.o.', 'Lihovarská 1060/12, Praha 9 - Vysočany', 'https://www.zasilkovna.cz', 0);

-- ----------------------------
-- Table structure for personalists
-- ----------------------------
DROP TABLE IF EXISTS `personalists`;
CREATE TABLE `personalists`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyID` int(11) NULL DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `EMail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personalists
-- ----------------------------
INSERT INTO `personalists` VALUES (1, 1, 'Markéta Kaňka ', 'marketa.kanka@1pf.cz', NULL);
INSERT INTO `personalists` VALUES (2, 13, 'Šárka Cerovská', 'sarka@cerovska.com ', '+420 604 665 792‬');
INSERT INTO `personalists` VALUES (3, 14, 'Lucia Kočišová', NULL, NULL);
INSERT INTO `personalists` VALUES (4, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (5, 21, 'Martina Řehořová', 'martina.rehorova@cardif.com', NULL);
INSERT INTO `personalists` VALUES (6, 34, 'Tereza Němečková', NULL, NULL);
INSERT INTO `personalists` VALUES (7, 39, 'Zuzana Kassaiova', NULL, NULL);
INSERT INTO `personalists` VALUES (8, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (9, 44, 'Andrea Březinová', NULL, NULL);
INSERT INTO `personalists` VALUES (10, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (11, 64, 'Jakub Kadeřábek', NULL, NULL);
INSERT INTO `personalists` VALUES (12, 66, 'Jan Znamenáček', NULL, NULL);
INSERT INTO `personalists` VALUES (13, 88, 'Monika Kulhánková', NULL, NULL);
INSERT INTO `personalists` VALUES (14, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (15, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (16, 111, 'Petr Vobecký', NULL, NULL);
INSERT INTO `personalists` VALUES (17, 115, 'Sandra Kastakova', NULL, NULL);
INSERT INTO `personalists` VALUES (18, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (19, 11, 'Jana Pardušová', NULL, NULL);
INSERT INTO `personalists` VALUES (20, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (21, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (22, 34, 'Klára Pomyjová', NULL, NULL);
INSERT INTO `personalists` VALUES (23, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (24, 6, 'Luboš Matějka', NULL, NULL);
INSERT INTO `personalists` VALUES (25, 20, 'Jitka Panáková', NULL, NULL);
INSERT INTO `personalists` VALUES (26, 26, 'Lee Foster', NULL, NULL);
INSERT INTO `personalists` VALUES (27, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (28, 31, 'Michaela Nováková', NULL, NULL);
INSERT INTO `personalists` VALUES (29, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (30, 49, 'Jana Volková', NULL, NULL);
INSERT INTO `personalists` VALUES (31, 60, 'Michaela Bičišťová', NULL, NULL);
INSERT INTO `personalists` VALUES (32, 67, 'Kateřina Vybíhalová', NULL, NULL);
INSERT INTO `personalists` VALUES (33, 78, 'Marco Šimonek', NULL, NULL);
INSERT INTO `personalists` VALUES (34, 79, 'Zuzana Labancová', NULL, NULL);
INSERT INTO `personalists` VALUES (35, 117, 'Victor Mádl', NULL, NULL);
INSERT INTO `personalists` VALUES (36, 107, 'Kamila Dunděrová', NULL, NULL);
INSERT INTO `personalists` VALUES (37, 5, 'Miroslava Hodáňová', NULL, NULL);
INSERT INTO `personalists` VALUES (38, 9, 'Monika Groesbeek', NULL, NULL);
INSERT INTO `personalists` VALUES (39, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (40, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (41, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (42, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (43, 29, 'Kateřina Novotná', NULL, NULL);
INSERT INTO `personalists` VALUES (44, 29, 'Michal Toušek', NULL, NULL);
INSERT INTO `personalists` VALUES (45, 34, 'Michaela Skalníková', NULL, NULL);
INSERT INTO `personalists` VALUES (46, 48, 'Monika Musilová', NULL, NULL);
INSERT INTO `personalists` VALUES (47, 52, 'Denisa Laurinová', NULL, NULL);
INSERT INTO `personalists` VALUES (48, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (49, 82, 'Denisa Hovorková', NULL, NULL);
INSERT INTO `personalists` VALUES (50, 96, 'Sandra Svobodová', NULL, NULL);
INSERT INTO `personalists` VALUES (51, 8, 'Kateřina Novotná', NULL, NULL);
INSERT INTO `personalists` VALUES (52, 38, 'Martina Svobodová', NULL, NULL);
INSERT INTO `personalists` VALUES (53, 53, 'Linda Becková', NULL, NULL);
INSERT INTO `personalists` VALUES (54, 73, 'Monika Erbenová', NULL, NULL);
INSERT INTO `personalists` VALUES (55, 20, 'Jitka Panáková', NULL, NULL);
INSERT INTO `personalists` VALUES (56, 76, 'Tomáš Hilgard', NULL, NULL);
INSERT INTO `personalists` VALUES (57, 76, 'Tomáš Hilgard', NULL, NULL);
INSERT INTO `personalists` VALUES (58, 105, 'Jana Hercíková', NULL, NULL);
INSERT INTO `personalists` VALUES (59, 110, 'Kristýna Langerová', NULL, NULL);
INSERT INTO `personalists` VALUES (60, 2, 'Markéta Kaštánková', NULL, NULL);
INSERT INTO `personalists` VALUES (61, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (62, 23, 'Jiří Jaroševský', NULL, NULL);
INSERT INTO `personalists` VALUES (63, 33, 'Simona Vacková', NULL, NULL);
INSERT INTO `personalists` VALUES (64, 37, 'Barbora Popelková', NULL, NULL);
INSERT INTO `personalists` VALUES (65, 45, 'Lucie Plachá', NULL, NULL);
INSERT INTO `personalists` VALUES (66, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (67, 66, 'Veronika Morávková', NULL, NULL);
INSERT INTO `personalists` VALUES (68, 68, 'Šárka Škodová', 'sarka.skodova@kapsch.net', '+420 733 117 649');
INSERT INTO `personalists` VALUES (69, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (70, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (71, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (72, 112, 'Jana Hančurová', NULL, NULL);
INSERT INTO `personalists` VALUES (73, 113, 'Martina Šrámková', NULL, NULL);
INSERT INTO `personalists` VALUES (74, 7, 'Jan Trávníček (LinkedIn)', NULL, NULL);
INSERT INTO `personalists` VALUES (75, 50, 'Iuliia Zorina', NULL, NULL);
INSERT INTO `personalists` VALUES (76, 50, 'Adéla Pudil', 'adela.pudil@experis.cz', '+420 734 765 828');
INSERT INTO `personalists` VALUES (77, 15, 'Sabina Zavřelová', NULL, NULL);
INSERT INTO `personalists` VALUES (78, 72, 'Katarína Belančinová', NULL, NULL);
INSERT INTO `personalists` VALUES (79, 82, 'Veronika Kasalová', NULL, NULL);
INSERT INTO `personalists` VALUES (80, 97, 'Lucie Štičková', NULL, NULL);
INSERT INTO `personalists` VALUES (81, 19, 'Rebecca Grattan', NULL, NULL);
INSERT INTO `personalists` VALUES (82, 29, 'Katarína Kojtalová', NULL, NULL);
INSERT INTO `personalists` VALUES (83, 29, 'David Kriška', 'david.kriska@coolpeople.cz', '+420 605 078 565');
INSERT INTO `personalists` VALUES (84, 29, 'Vanesa Absolonová', NULL, NULL);
INSERT INTO `personalists` VALUES (85, 29, 'Marta Hartmanová', NULL, NULL);
INSERT INTO `personalists` VALUES (86, 41, 'Mia Margorinova', 'mia.margorinova@clearstream.com', NULL);
INSERT INTO `personalists` VALUES (87, 43, 'Martina Hrbková', 'martina.hrbkova@dhl.com', NULL);
INSERT INTO `personalists` VALUES (88, 43, 'Dominika Formanová', NULL, NULL);
INSERT INTO `personalists` VALUES (89, 43, 'Marie Nunhardtová', NULL, NULL);
INSERT INTO `personalists` VALUES (90, 43, 'Lukáš Mandžikievič', NULL, NULL);
INSERT INTO `personalists` VALUES (91, 43, 'Lukáš Mandžikievič', NULL, NULL);
INSERT INTO `personalists` VALUES (92, 44, 'Kateřina Ritterová', NULL, NULL);
INSERT INTO `personalists` VALUES (93, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (94, 70, 'Václav Kotyk', NULL, NULL);
INSERT INTO `personalists` VALUES (95, 70, 'Petr Zajíček', NULL, NULL);
INSERT INTO `personalists` VALUES (96, 71, 'Lenka Šedá', NULL, NULL);
INSERT INTO `personalists` VALUES (97, 75, 'Petra Ashby', NULL, NULL);
INSERT INTO `personalists` VALUES (98, 81, 'Adrian Donaghy', NULL, NULL);
INSERT INTO `personalists` VALUES (99, 85, 'Lucie Doležalová', NULL, NULL);
INSERT INTO `personalists` VALUES (100, 25, 'Erika Mihulová', NULL, NULL);
INSERT INTO `personalists` VALUES (101, 25, 'Lenka Skalická', NULL, NULL);
INSERT INTO `personalists` VALUES (102, 25, 'Erika Mihulová', NULL, NULL);
INSERT INTO `personalists` VALUES (103, 18, 'Pavlína Dobrovická', NULL, NULL);
INSERT INTO `personalists` VALUES (104, 18, 'Pavlína Dobrovická', NULL, NULL);
INSERT INTO `personalists` VALUES (105, 32, 'Linda Žáková', NULL, NULL);
INSERT INTO `personalists` VALUES (106, 89, 'Jana Vlčková', NULL, NULL);
INSERT INTO `personalists` VALUES (107, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (108, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (109, 115, 'Sandra Kastakova', NULL, NULL);
INSERT INTO `personalists` VALUES (110, 30, 'Vojtěch Zuzanák', NULL, NULL);
INSERT INTO `personalists` VALUES (111, 30, 'Vojtěch Zuzanák', NULL, NULL);
INSERT INTO `personalists` VALUES (112, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (113, 82, 'Veronika Cihan', NULL, NULL);
INSERT INTO `personalists` VALUES (114, 102, 'Jan Przybyla', NULL, NULL);
INSERT INTO `personalists` VALUES (115, 112, 'Radim Navrátil', NULL, NULL);
INSERT INTO `personalists` VALUES (116, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (117, 34, 'Michaela Skalníková', NULL, NULL);
INSERT INTO `personalists` VALUES (118, 50, 'Iuliia Zorina', NULL, NULL);
INSERT INTO `personalists` VALUES (119, 82, 'Veronika Kasalová', NULL, NULL);
INSERT INTO `personalists` VALUES (120, 82, 'Veronika Kasalová', NULL, NULL);
INSERT INTO `personalists` VALUES (121, 98, 'Lucia Mikuľáková', NULL, NULL);
INSERT INTO `personalists` VALUES (122, 98, 'Lucia Mikuľáková', NULL, NULL);
INSERT INTO `personalists` VALUES (123, 80, 'Lenka Tothova', NULL, NULL);
INSERT INTO `personalists` VALUES (124, 87, 'Vanessa Schmidt', NULL, NULL);
INSERT INTO `personalists` VALUES (125, 97, 'Lucie Štičková', NULL, NULL);
INSERT INTO `personalists` VALUES (126, 108, 'Martin Fekiač', NULL, NULL);
INSERT INTO `personalists` VALUES (127, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (128, 4, 'Jiří Herodek', NULL, NULL);
INSERT INTO `personalists` VALUES (129, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (130, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (131, 34, 'Silvie Hrozová', NULL, NULL);
INSERT INTO `personalists` VALUES (132, 35, 'Lenka Krúpová', NULL, NULL);
INSERT INTO `personalists` VALUES (133, 36, 'Aneta Juricová', 'aneta.juricova.cezas.umndz3frq0g@teamio.eu', NULL);
INSERT INTO `personalists` VALUES (134, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (135, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (136, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (137, 51, 'David Veverka', NULL, NULL);
INSERT INTO `personalists` VALUES (138, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (139, 97, 'Lucie Štičková', NULL, NULL);
INSERT INTO `personalists` VALUES (140, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (141, 10, 'Barbora Glöcknerová', 'barbora.glocknerova@alef.com', NULL);
INSERT INTO `personalists` VALUES (142, 22, 'Rudolf Špachta', NULL, NULL);
INSERT INTO `personalists` VALUES (144, 84, 'Zora Válová', NULL, NULL);
INSERT INTO `personalists` VALUES (146, 41, 'Mia Margorinova', 'mia.margorinova@clearstream.com', NULL);
INSERT INTO `personalists` VALUES (147, 54, 'Michaela Kališová', NULL, NULL);
INSERT INTO `personalists` VALUES (148, 109, 'Markéta Říhová', NULL, NULL);
INSERT INTO `personalists` VALUES (149, 62, 'Barbara Čapková', 'barbara.capkova@talentica.cz', NULL);
INSERT INTO `personalists` VALUES (150, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (151, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (152, 52, 'Denisa Laurinová', NULL, NULL);
INSERT INTO `personalists` VALUES (153, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (154, 67, 'Pavel Fiala', NULL, NULL);
INSERT INTO `personalists` VALUES (155, 104, 'Alena Stešnerová', NULL, NULL);
INSERT INTO `personalists` VALUES (156, 42, 'Mia Margorinová', 'mia.margorinova@clearstream.com', NULL);
INSERT INTO `personalists` VALUES (157, 3, 'Petr Lukašík', NULL, NULL);
INSERT INTO `personalists` VALUES (158, 82, 'Denisa Hovorková', NULL, NULL);
INSERT INTO `personalists` VALUES (159, 43, 'Ivona Kalousková', NULL, NULL);
INSERT INTO `personalists` VALUES (160, 55, 'Helena Hamouzová', NULL, NULL);
INSERT INTO `personalists` VALUES (161, 55, 'Helena Hamouzová', NULL, NULL);
INSERT INTO `personalists` VALUES (162, 116, 'Gabriela Faltusová', NULL, NULL);
INSERT INTO `personalists` VALUES (163, 57, 'Kašparová Nikola', NULL, NULL);
INSERT INTO `personalists` VALUES (164, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (165, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (166, 95, 'Marcela Martínková', NULL, NULL);
INSERT INTO `personalists` VALUES (167, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (168, 82, 'Denisa Hovorková', NULL, NULL);
INSERT INTO `personalists` VALUES (169, 83, 'Kadeřávková Iva', NULL, NULL);
INSERT INTO `personalists` VALUES (170, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (171, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (172, 42, 'Ryvola Martin', NULL, NULL);
INSERT INTO `personalists` VALUES (173, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (174, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (175, 46, 'Jarmila Grulová', NULL, NULL);
INSERT INTO `personalists` VALUES (176, NULL, '-', NULL, NULL);
INSERT INTO `personalists` VALUES (177, 114, 'Jakub Švejda', 'jakub.svejda@mediterra.cz', NULL);
INSERT INTO `personalists` VALUES (178, 64, 'Tomáš Dolejš', NULL, '+420 602 329 637');
INSERT INTO `personalists` VALUES (179, 92, 'Marie Dastychová', 'marie.dastychova@rb.cz', '+420 727 813 771');
INSERT INTO `personalists` VALUES (180, 92, 'Tomáš Rybáček', 'tomas.rybacek@rb.cz', NULL);
INSERT INTO `personalists` VALUES (181, 11, 'Barbora Glocknerová', NULL, NULL);

-- ----------------------------
-- Table structure for positions
-- ----------------------------
DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PositionURL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Date` datetime(0) NULL DEFAULT NULL,
  `PositionName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PersonalistID` int(11) NULL DEFAULT NULL,
  `HRAgency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Wage` int(11) NULL DEFAULT NULL,
  `Note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ActionID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of positions
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
