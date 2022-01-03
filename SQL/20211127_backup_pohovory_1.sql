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

 Date: 27/11/2021 16:06:27
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
INSERT INTO `personalists` VALUES (4, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (5, 21, 'Martina Řehořová', 'martina.rehorova@cardif.com', NULL);
INSERT INTO `personalists` VALUES (6, 34, 'Tereza Němečková', NULL, NULL);
INSERT INTO `personalists` VALUES (7, 39, 'Zuzana Kassaiova', NULL, NULL);
INSERT INTO `personalists` VALUES (8, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (9, 44, 'Andrea Březinová', NULL, NULL);
INSERT INTO `personalists` VALUES (10, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (11, 64, 'Jakub Kadeřábek', NULL, NULL);
INSERT INTO `personalists` VALUES (12, 66, 'Jan Znamenáček', NULL, NULL);
INSERT INTO `personalists` VALUES (13, 88, 'Monika Kulhánková', NULL, NULL);
INSERT INTO `personalists` VALUES (14, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (15, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (16, 111, 'Petr Vobecký', NULL, NULL);
INSERT INTO `personalists` VALUES (17, 115, 'Sandra Kastakova', NULL, NULL);
INSERT INTO `personalists` VALUES (18, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (19, 11, 'Jana Pardušová', NULL, NULL);
INSERT INTO `personalists` VALUES (20, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (21, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (22, 34, 'Klára Pomyjová', NULL, NULL);
INSERT INTO `personalists` VALUES (23, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (24, 6, 'Luboš Matějka', NULL, NULL);
INSERT INTO `personalists` VALUES (25, 20, 'Jitka Panáková', NULL, NULL);
INSERT INTO `personalists` VALUES (26, 26, 'Lee Foster', NULL, NULL);
INSERT INTO `personalists` VALUES (27, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (28, 31, 'Michaela Nováková', NULL, NULL);
INSERT INTO `personalists` VALUES (29, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (30, 49, 'Jana Volková', NULL, NULL);
INSERT INTO `personalists` VALUES (31, 60, 'Michaela Bičišťová', NULL, NULL);
INSERT INTO `personalists` VALUES (32, 67, 'Kateřina Vybíhalová', NULL, NULL);
INSERT INTO `personalists` VALUES (33, 78, 'Marco Šimonek', NULL, NULL);
INSERT INTO `personalists` VALUES (34, 79, 'Zuzana Labancová', NULL, NULL);
INSERT INTO `personalists` VALUES (35, 117, 'Victor Mádl', NULL, NULL);
INSERT INTO `personalists` VALUES (36, 107, 'Kamila Dunděrová', NULL, NULL);
INSERT INTO `personalists` VALUES (37, 5, 'Miroslava Hodáňová', NULL, NULL);
INSERT INTO `personalists` VALUES (38, 9, 'Monika Groesbeek', NULL, NULL);
INSERT INTO `personalists` VALUES (39, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (40, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (41, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (42, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (43, 29, 'Kateřina Novotná', NULL, NULL);
INSERT INTO `personalists` VALUES (44, 29, 'Michal Toušek', NULL, NULL);
INSERT INTO `personalists` VALUES (45, 34, 'Michaela Skalníková', NULL, NULL);
INSERT INTO `personalists` VALUES (46, 48, 'Monika Musilová', NULL, NULL);
INSERT INTO `personalists` VALUES (47, 52, 'Denisa Laurinová', NULL, NULL);
INSERT INTO `personalists` VALUES (48, NULL, ' [neuvedeno] ', NULL, NULL);
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
INSERT INTO `personalists` VALUES (61, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (62, 23, 'Jiří Jaroševský', NULL, NULL);
INSERT INTO `personalists` VALUES (63, 33, 'Simona Vacková', NULL, NULL);
INSERT INTO `personalists` VALUES (64, 37, 'Barbora Popelková', NULL, NULL);
INSERT INTO `personalists` VALUES (65, 45, 'Lucie Plachá', NULL, NULL);
INSERT INTO `personalists` VALUES (66, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (67, 66, 'Veronika Morávková', NULL, NULL);
INSERT INTO `personalists` VALUES (68, 68, 'Šárka Škodová', 'sarka.skodova@kapsch.net', '+420 733 117 649');
INSERT INTO `personalists` VALUES (69, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (70, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (71, NULL, ' [neuvedeno] ', NULL, NULL);
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
INSERT INTO `personalists` VALUES (93, NULL, ' [neuvedeno] ', NULL, NULL);
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
INSERT INTO `personalists` VALUES (107, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (108, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (109, 115, 'Sandra Kastakova', NULL, NULL);
INSERT INTO `personalists` VALUES (110, 30, 'Vojtěch Zuzanák', NULL, NULL);
INSERT INTO `personalists` VALUES (111, 30, 'Vojtěch Zuzanák', NULL, NULL);
INSERT INTO `personalists` VALUES (112, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (113, 82, 'Veronika Cihan', NULL, NULL);
INSERT INTO `personalists` VALUES (114, 102, 'Jan Przybyla', NULL, NULL);
INSERT INTO `personalists` VALUES (115, 112, 'Radim Navrátil', NULL, NULL);
INSERT INTO `personalists` VALUES (116, NULL, ' [neuvedeno] ', NULL, NULL);
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
INSERT INTO `personalists` VALUES (127, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (128, 4, 'Jiří Herodek', NULL, NULL);
INSERT INTO `personalists` VALUES (129, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (130, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (131, 34, 'Silvie Hrozová', NULL, NULL);
INSERT INTO `personalists` VALUES (132, 35, 'Lenka Krúpová', NULL, NULL);
INSERT INTO `personalists` VALUES (133, 36, 'Aneta Juricová', 'aneta.juricova.cezas.umndz3frq0g@teamio.eu', NULL);
INSERT INTO `personalists` VALUES (134, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (135, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (136, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (137, 51, 'David Veverka', NULL, NULL);
INSERT INTO `personalists` VALUES (138, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (139, 97, 'Lucie Štičková', NULL, NULL);
INSERT INTO `personalists` VALUES (140, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (141, 10, 'Barbora Glöcknerová', 'barbora.glocknerova@alef.com', NULL);
INSERT INTO `personalists` VALUES (142, 22, 'Rudolf Špachta', NULL, NULL);
INSERT INTO `personalists` VALUES (144, 84, 'Zora Válová', NULL, NULL);
INSERT INTO `personalists` VALUES (146, 41, 'Mia Margorinova', 'mia.margorinova@clearstream.com', NULL);
INSERT INTO `personalists` VALUES (147, 54, 'Michaela Kališová', NULL, NULL);
INSERT INTO `personalists` VALUES (148, 109, 'Markéta Říhová', NULL, NULL);
INSERT INTO `personalists` VALUES (149, 62, 'Barbara Čapková', 'barbara.capkova@talentica.cz', NULL);
INSERT INTO `personalists` VALUES (150, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (151, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (152, 52, 'Denisa Laurinová', NULL, NULL);
INSERT INTO `personalists` VALUES (153, NULL, ' [neuvedeno] ', NULL, NULL);
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
INSERT INTO `personalists` VALUES (164, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (165, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (166, 95, 'Marcela Martínková', NULL, NULL);
INSERT INTO `personalists` VALUES (167, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (168, 82, 'Denisa Hovorková', NULL, NULL);
INSERT INTO `personalists` VALUES (169, 83, 'Kadeřávková Iva', NULL, NULL);
INSERT INTO `personalists` VALUES (170, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (171, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (172, 42, 'Ryvola Martin', NULL, NULL);
INSERT INTO `personalists` VALUES (173, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (174, NULL, ' [neuvedeno] ', NULL, NULL);
INSERT INTO `personalists` VALUES (175, 46, 'Jarmila Grulová', NULL, NULL);
INSERT INTO `personalists` VALUES (176, NULL, ' [neuvedeno] ', NULL, NULL);
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
  `CompanyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CompanyID` int(11) NULL DEFAULT NULL,
  `PositionURL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Date` datetime(0) NULL DEFAULT NULL,
  `PositionName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PersonalistName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PersonalistID` int(11) NULL DEFAULT NULL,
  `HRAgency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Wage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ActionID` int(11) NULL DEFAULT NULL,
  `CompanyURL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 353 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of positions
-- ----------------------------
INSERT INTO `positions` VALUES (177, '1.PF', NULL, 'z jobs', '2021-07-19 00:00:00', 'Systémový Specialista, DevOps Specialista', 'Služská 1865/15, Praha 8 - Kobylisy', 'Markéta Kaňka ', NULL, NULL, '70000-75000', 'od r. 2000, vývoj SW a zákaznické řešení, ošetřený vstup do admin wp, respozivní web javascriptem', NULL, 'https://www.1pf.cz/');
INSERT INTO `positions` VALUES (178, 'Algotech a.s.', NULL, 'https://13f209a5-031f-49a5-a034-48d05e29415c.filesusr.com/ugd/3558a4_28b2c9bea03648feb4dcf9b09f4268df.pdf ', '2021-07-19 00:00:00', 'System Analyst', 'Sokolovská 668/136 D, Praha 8', 'Šárka Cerovská', NULL, NULL, '70000-75000', '28.7. - prý si moc stěžuji na zaměstnavatele - odmítl J. Pavlis', NULL, 'https://www.algotech.cz/');
INSERT INTO `positions` VALUES (179, 'Allianz pojišťovna, a.s.', NULL, 'https://allianz.jobs.cz/detail-pozice/?id=G2-1560575620-aden_brand0&rps=186', '2021-07-19 00:00:00', 'IT Specialista', 'Ke Štvanici 656/3, Praha 8 - Karlín', 'Lucia Kočišová', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.allianz.cz/cs_CZ/pojisteni/vse-o-allianz/kariera.html');
INSERT INTO `positions` VALUES (180, 'ARBES Technologies, a.s', NULL, 'https://www.jobs.cz/osobni/historie-odpovedi/1565010164/', '2021-07-19 00:00:00', 'Consultant/Analyst - oblast portálových aplikací', 'Plzeňská 345/5, Praha – Smíchov', '-', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (181, 'BNP PARIBAS CARDIF', NULL, 'z Jobs', '2021-07-19 00:00:00', 'IT Business Analyst', 'Boudníkova 2506/1, Praha 8 -Libeň', 'Martina Řehořová', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (182, 'Česká Spořitelna a.s.', NULL, NULL, '2021-07-19 00:00:00', 'Aplikační Analytik ve Finanční skupině České spořitelny', 'Olbrachtova 1929/62, Praha 4 - Budějovická', 'Tereza Němečková', NULL, NULL, '70000-75000', 'vyžaduje 24/7', NULL, 'https://www.csas.cz');
INSERT INTO `positions` VALUES (183, 'Dedoles', NULL, 'z Jobs', '2021-07-19 00:00:00', 'L2 Application Support', 'Butovice, Zličín, Chodov?', 'Zuzana Kassaiova', NULL, NULL, '70000-75000', 'e-shop se spodním prádlem od 2011 - p. Chrapko', NULL, 'https://www.dedoles.cz/');
INSERT INTO `positions` VALUES (184, 'DHL Information Services (Europe) s.r.o.', NULL, 'https://www.jobs.cz/osobni/historie-odpovedi/1529149646/', '2021-07-19 00:00:00', 'Senior Consultant - Solution Support', 'V parku 2308/10, Praha – Chodov', '-', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (185, 'Digiteq Automotive s.r.o.', NULL, NULL, '2021-07-19 00:00:00', 'ANALYTIK/ANALYTIČKA PRO WEBOVÉ NEBO MOBILNÍ APLIKACE', 'Novodvorská 994/138, Praha 4 - Lhotka, Česká republika', 'Andrea Březinová', NULL, NULL, '70000-75000', NULL, NULL, 'http://www.digiteqautomotive.com/');
INSERT INTO `positions` VALUES (186, 'GIT Consult Czech s.r.o.', NULL, 'https://www.jobs.cz/osobni/historie-odpovedi/1563584037/', '2021-07-19 00:00:00', 'Infrastructure Administrator', NULL, '-', NULL, NULL, '70000-75000', '26.7. měl dorazit e-mail - nedorazil. Voláno - prý pošle pan Bučko znovu', NULL, 'https://www.gitisit.cz/');
INSERT INTO `positions` VALUES (187, 'INFOMATIC s.r.o.', NULL, 'https://www.jobs.cz/osobni/historie-odpovedi/1565368882/', '2021-07-19 00:00:00', 'Digitalizace - Software konzultant aplikační podpory', 'Bucharova 1186/16, Praha – Stodůlky', 'Jakub Kadeřábek', NULL, NULL, '70000-75000', 'dokumentové scannery canon, kodak, panasonic, prodej není poslední - podpora', NULL, 'https://www.infomatic.cz/cz/');
INSERT INTO `positions` VALUES (188, 'J&T SERVICES ČR, a.s.', NULL, 'https://www.jobs.cz/rpd/1565591629/?searchId=d49f21dd-c10a-4241-bf29-9cfde82c5a26&rps=233', '2021-07-19 00:00:00', 'Vedoucí týmu dodávek MS', 'Sokolovská 700/113a, Praha 8', 'Veronika Morávková, Znamenáček Jan', NULL, NULL, '70000-75000', 'na trhu působí od 1998, banka, umožňuje investice do fondů a dluhopisů i na slovensku', NULL, 'https://www.jtbank.cz');
INSERT INTO `positions` VALUES (189, 'PPF Banka a.s.', NULL, 'https://www.ppfbanka.cz/cs/kariera/6588', '2021-07-19 00:00:00', 'Administrátor platformy MS Windows', 'Evropská 2690/17, Praha 6', 'Monika Kulhánková', NULL, NULL, '70000-75000', 'hodně nízké hodnocení na Atmoskopu, Insights, umělá inteligence, příští týden (po 2.8.) se ozvou', NULL, 'http://www.ppfbanka.cz/');
INSERT INTO `positions` VALUES (190, 'Raiffeisenbank a.s.', NULL, 'https://www.jobs.cz/osobni/historie-odpovedi/1564980062/', '2021-07-19 00:00:00', 'INFORMATION SECURITY EXPERT', 'Hvězdova 1716/2b, Praha – Nusle', 'Marie Dastychová', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.rb.cz/');
INSERT INTO `positions` VALUES (191, 'Skupina Citfin', NULL, 'https://www.jobs.cz/osobni/historie-odpovedi/1562419540/', '2021-07-19 00:00:00', 'IT analytik', 'Radlická 751/113e, Praha – Jinonice', '-', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.citfin.cz');
INSERT INTO `positions` VALUES (192, 'T-Mobile', NULL, NULL, '2021-07-19 00:00:00', 'Specialista podpory koncových uživatelů', 'Tomíčkova 2144/1, Praha 4 - Roztyly', 'Petr Vobecký', NULL, NULL, '70000-75000', 's antigenním testem, prostřední dveře, volat na +420603479364', NULL, 'http://t-mobile.cz/');
INSERT INTO `positions` VALUES (193, 'W.A.G. payment solutions, a.s.', NULL, 'https://www.jobs.cz/osobni/historie-odpovedi/1455777372/', '2021-07-19 00:00:00', 'IT Application Administrator', 'Na Vítězné pláni 1719/4, Praha 4 – Nusle', 'Sandra Kastakova', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.eurowag.com/');
INSERT INTO `positions` VALUES (194, 'ALEF Distribution CZ, s.r.o.', NULL, 'https://www.jobs.cz/rpd/1564866990/?searchId=92d96706-c3e1-4008-b74e-35116cf7f64f&rps=233', '2021-07-23 00:00:00', 'Junior Microsoft specialista', 'Pernerova 691/42, Praha 8 - Karlín', '-', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.alef.com/cz/');
INSERT INTO `positions` VALUES (195, 'Alef Nula', NULL, NULL, '2021-07-23 00:00:00', 'IT Application Support', 'Pernerova 691/42, Praha 8 - Karlín', 'Jana Pardusova / Barbora Glocknerová', NULL, NULL, '70000-75000', 'interní IT team, hw i sw, firewally, IT technologie, 1994', NULL, 'https://www.alefnula.com/');
INSERT INTO `positions` VALUES (196, 'Alef Support', NULL, 'z Jobs', '2021-07-23 00:00:00', 'Security Manager', 'Pernerova 691/42, Praha 8 - Karlín', '-', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (197, 'Alef Support', NULL, 'z jobs', '2021-07-23 00:00:00', 'Business Owner, Security Manager', 'Pernerova 691/42, Praha 8 - Karlín', '-', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (198, 'Česká Spořitelna a.s.', NULL, 'https://www.atmoskop.cz/nabidka-prace/1565795106-infrastructure-expert?rps=427', '2021-07-23 00:00:00', 'Infrastructure expert', 'Olbrachtova 1929/62, Praha 4 - Budějovická', 'Klára Pomyjová', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.csas.cz');
INSERT INTO `positions` VALUES (199, 'Sodexo Pass', NULL, 'https://sodexo.jobs.cz/pd/G2-1531255355-aden_brand0?l=cs&rps=427', '2021-07-23 00:00:00', 'L2 Application Support', 'Radlická 608/2, Praha 5 - Smíchov', '-', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (200, 'AdminIT s.r.o.', NULL, 'https://www.jobs.cz/rpd/1565752007/?rps=363&mhash=email_8075a8e61cecc8a3149f77bb625d6e80fbe5a4c8e1cb88571e87017e1341aa7b&positionOfAdInAgentEmail=1&recommended=jobs-email-apply-confirmation', '2021-07-24 00:00:00', 'MS Windows Administrátor', 'Drahobejlova 1452/54, Praha 9 – Českomoravská', 'Luboš Matějka', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.adminit.cz/');
INSERT INTO `positions` VALUES (201, 'BARTON Consulting s.r.o.', NULL, 'https://www.jobs.cz/rpd/1564981217/?searchId=270ed278-acee-4250-a837-c5f8e4fb6938&rps=233', '2021-07-24 00:00:00', 'Aplikační administrátor - L2, home office i 3-4 dny týdně', NULL, 'Jitka Panáková', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (202, 'CISCO', NULL, 'https://www.cisco.com/c/en/us/products/security/what-is-a-security-platform.html https://www.cisco.com/c/en/us/products/security/amp-for-endpoints/index.html', '2021-07-24 00:00:00', 'Secure Endpoint Escalation Engineer (AMP)', NULL, 'Lee Foster', NULL, NULL, '70000-75000', 'AMP for Endpoints a ThreatGrid - něco jako lepší antivirus, Team vede Stanislav Bulicek', NULL, 'https://www.cisco.com');
INSERT INTO `positions` VALUES (203, 'ComAp a.s.', NULL, 'https://www.jobs.cz/rpd/1546751804/?searchId=cd5d6678-d383-4660-941d-177a0d1feaa6&rps=233', '2021-07-24 00:00:00', 'CMS Specialist.', 'Praha 7 - Holešovice', '-', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.comap-control.com/');
INSERT INTO `positions` VALUES (204, 'CPL Jobs s.r.o.', NULL, 'https://www.jobs.cz/rpd/1562948066/?searchId=cd5d6678-d383-4660-941d-177a0d1feaa6&rps=233', '2021-07-24 00:00:00', 'System Engineer for Global infrastructure', 'Praha 1 - Nové Město', 'Michaela Nováková', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (205, 'DHL Information Services (Europe) s.r.o.', NULL, 'https://dhl.jobs.cz/en/detail-en/form/?id=G2-1558781658-aden_brand0&rps=312', '2021-07-24 00:00:00', 'SENIOR ENGINEER - END USER DESKTOP', 'V parku 2308/10, Praha – Chodov', '-', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.dhl.com/cz-cs/home.html');
INSERT INTO `positions` VALUES (206, 'Europ Assistance s.r.o.', NULL, 'https://www.prace.cz/firma/241790-europ-assistance-s-r-o/nabidka/1565207506/?rps=77', '2021-07-24 00:00:00', 'IT Administrator', 'Na Pankráci 1658/121, Praha 4 - Pankrác', 'Jana Volková', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (207, 'HEUREKA Group a.s.', NULL, 'https://www.jobs.cz/rpd/1566476620/?rps=400&utm_source=atmoskop.cz&utm_medium=link&utm_campaign=company-detail&utm_content=Heureka%20Group%20a.s.', '2021-07-24 00:00:00', 'Infrastructure Engineer', 'Karolinská 650/1, Praha – Karlín', 'Michaela Bičišťová', NULL, NULL, '70000-75000', NULL, NULL, NULL);
INSERT INTO `positions` VALUES (208, 'Jobs Contact Consulting, s.r.o.', NULL, 'https://www.jobs.cz/rpd/1565622154/?searchId=3c775acd-6418-4ae3-b300-0b4ba6414ae1&rps=233', '2021-07-24 00:00:00', 'WEBMASTER / CMS Admin - Praha', 'Praha 2 – Nové Město', 'Kateřina Vybíhalová', NULL, NULL, '70000-75000', 'weby, CMS, i Joomla', NULL, 'https://www.jobscontact.cz/');
INSERT INTO `positions` VALUES (209, 'Mikenopa a.s.', NULL, 'https://www.jobs.cz/rpd/1564946477/?searchId=3c775acd-6418-4ae3-b300-0b4ba6414ae1&rps=233', '2021-07-24 00:00:00', 'ICT Specialist', 'Rohanské nábřeží 671/15, Praha 8 – Karlín', 'Marco Šimonek', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.mikenopa.com/');
INSERT INTO `positions` VALUES (210, 'MyCom Solutions, s.r.o.', NULL, 'https://www.jobs.cz/rpd/1564851507/?rps=363&mhash=email_8075a8e61cecc8a3149f77bb625d6e80fbe5a4c8e1cb88571e87017e1341aa7b&positionOfAdInAgentEmail=2&recommended=jobs-email-apply-confirmation', '2021-07-24 00:00:00', 'Senior IT Administrator', 'Prosecká 851/64, Praha 9 - Prosek', 'Zuzana Labancová', NULL, NULL, '70000-75000', NULL, NULL, 'https://mycom.cz/');
INSERT INTO `positions` VALUES (211, 'xITee k.s.', NULL, 'https://www.jobs.cz/rpd/1564109276/?rps=363&mhash=email_8075a8e61cecc8a3149f77bb625d6e80fbe5a4c8e1cb88571e87017e1341aa7b&positionOfAdInAgentEmail=6&recommended=jobs-email-apply-confirmation', '2021-07-24 00:00:00', 'IT Administrator / Windows', 'Rybná 682/14, Praha 1 – Staré Město', 'Victor Mádl', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.xitee.com/');
INSERT INTO `positions` VALUES (212, 'THEIN - net.pointers Ltd.', NULL, NULL, '2021-07-25 00:00:00', 'L2 for SOC - Cybersecurity Guard', 'Na Strži 61/a, Praha 4 - Pankrác', 'Kamila Dunděrová', NULL, NULL, '70000-75000', 'Cloudflare, ochrana proti DDoS,spěchají na pozici, smlouva odeslána řediteli', NULL, 'https://net.pointers.cz/en');
INSERT INTO `positions` VALUES (213, 'Adecco EMEA business solutions, s.r.o.', NULL, 'https://www.prace.cz/nabidka/UP-21076660715/?rps=77', '2021-07-25 00:00:00', 'Service Manager', 'Pikrtova 1737/1a, Praha - Nusle ', 'Miroslava Hodáňová', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.adecco.cz/en/');
INSERT INTO `positions` VALUES (214, 'Albert Česká republika, s.r.o.', NULL, 'https://albert.jobs.cz/detail-pozice/?id=G2-1565899351-aden_brand0&rps=233', '2021-07-25 00:00:00', 'IT administrator - M365', 'Radlická 520/117, Praha 5 - Jinonice', 'Monika Groesbeek', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.albert.cz/');
INSERT INTO `positions` VALUES (215, 'ALEF Distribution CZ, s.r.o.', NULL, 'https://www.alef.com/cz/specialista-it-podpory-application-development.c-678.html', '2021-07-25 00:00:00', 'Specialista IT podpory - Application development', 'Pernerova 691/42, Praha 8 - Karlín', '-', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.alef.com/cz/');
INSERT INTO `positions` VALUES (216, 'ALEF Distribution CZ, s.r.o.', NULL, 'https://www.alef.com/cz/junior-microsoft-systems-engineer.c-698.html', '2021-07-25 00:00:00', 'Microsoft Systems Engineer', 'Pernerova 691/42, Praha 8 - Karlín', '-', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.alef.com/cz/');
INSERT INTO `positions` VALUES (217, 'ALEF Distribution CZ, s.r.o.', NULL, 'https://www.alef.com/cz/junior-marketing-specialist.c-439.html', '2021-07-25 00:00:00', 'Junior Marketing Specialist', 'Pernerova 691/42, Praha 8 - Karlín', '-', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.alef.com/cz/');
INSERT INTO `positions` VALUES (218, 'ALEF Distribution CZ, s.r.o.', NULL, 'https://www.alef.com/cz/digital-marketing-specialist.c-700.html', '2021-07-25 00:00:00', 'Digital Marketing Specialist', 'Pernerova 691/42, Praha 8 - Karlín', '-', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.alef.com/cz/');
INSERT INTO `positions` VALUES (219, 'CoolPeople s.r.o.', NULL, 'https://www.cooljobs.eu/cz/25149', '2021-07-25 00:00:00', 'Microsoft Administrator (25149)', 'Na Strži 2102/61a, Praha 4 - Krč', 'Kateřina Novotná', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.cooljobs.eu/cz');
INSERT INTO `positions` VALUES (220, 'CoolPeople s.r.o.', NULL, 'https://www.cooljobs.eu/cz/25262', '2021-07-25 00:00:00', 'Helpdesk Specialist (25262)', 'Na Strži 2102/61a, Praha 4 - Krč', 'Michal Toušek', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.cooljobs.eu/cz');
INSERT INTO `positions` VALUES (221, 'Česká Spořitelna a.s.', NULL, 'https://csas.jobs.cz/detail/?id=G2-1565332576-aden_brand0&rps=77', '2021-07-25 00:00:00', 'Senior systémový specialista IT', 'Vinohradská 1632/180, Praha 2 - Vinohrady', 'Michaela Skalníková', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.csas.cz');
INSERT INTO `positions` VALUES (222, 'Equa bank a.s.', NULL, 'https://equabank.jobs.cz/detail-pozice?r=detail&id=cpbr-1511531309&rps=402', '2021-07-25 00:00:00', 'IT Infrastructure Administrator', 'Karolinská 661/4, Praha 8 - Karlín', 'Monika Musilová', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.equabank.cz/');
INSERT INTO `positions` VALUES (223, 'FORTUNA GAME a.s.', NULL, 'https://www.jobs.cz/fp/fortuna-game-a-s-5118444/1558891414/?positionOfAdInAgentEmail=0&searchId=06ead7a3-40c9-48e5-9b61-b24292d9e01f&rps=233', '2021-07-25 00:00:00', 'Group Senior System Administrator - Windows', 'Italská 2584/69, Praha – Vinohrady', 'Denisa Laurinová', NULL, NULL, '70000-75000', NULL, NULL, 'http://www.ifortuna.cz/');
INSERT INTO `positions` VALUES (224, 'HCL a.s.', NULL, 'https://www.profesia.cz/prace/hcl-infra/O4119273', '2021-07-25 00:00:00', 'Command Centre Engineer', 'Praha', '-', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.hcltech.com/');
INSERT INTO `positions` VALUES (225, 'NNIT Czech Republic s.r.o.', NULL, 'https://www.jobdnes.cz/detail/technici-poc-siti-a-systemu-advanced-operations-specialist-5ffe30fc79007f282661548c', '2021-07-25 00:00:00', 'Technici poč.sítí a systémů (Advanced Operations Specialist)', 'Bucharova č.p. 2641/14, Praha 58 - Stodůlky', 'Denisa Hovorková', NULL, NULL, '70000-75000', NULL, NULL, 'http://www.nnit.com/');
INSERT INTO `positions` VALUES (226, 'S&T a.s.', NULL, 'https://sntcz.jobs.cz/detail?r=detail&id=cpbr-1559143733', '2021-07-25 00:00:00', 'IT Helpdesk Specialista', 'U Stavoservisu 527/1, Praha - Malešice', 'Sandra Svobodová', NULL, NULL, '70000-75000', 'juniornější pozice, místo v Malešicích', NULL, 'https://www.sntcz.cz/');
INSERT INTO `positions` VALUES (227, 'AKKA Czech Republic s.r.o.', NULL, 'z jobs', '2021-07-26 00:00:00', 'Infrastructure Senior Administrator', 'Praha 5 - Butovice', 'Kateřina Novotná', NULL, NULL, '70000-75000', NULL, NULL, 'https://akka.jobs.cz/o-nas/');
INSERT INTO `positions` VALUES (228, 'Deckard&Penfield', NULL, 'z jobsu', '2021-07-26 00:00:00', NULL, 'Jankovcova 1037/49, Praha', 'Martina Svobodová', NULL, NULL, '70000-75000', 'Unicorn', NULL, 'http://www.deckardpenfield.cz');
INSERT INTO `positions` VALUES (229, 'GasNet, s.r.o.', NULL, 'https://gasnet.jobs.cz/volna-mista?r=detail&id=cpbr-1564105035&rps=310&utm_source=prace.cz&utm_medium=email&utm_content=dohazovac_template_pra-3493-petr_v2_position_1&utm_campaign=systém', '2021-07-26 00:00:00', 'IT Specialista/Architekt - Infrastruktura - Praha/Ústí/Brno', 'Prosecká 855/68, Praha 9 - Prosek', 'Linda Becková', NULL, NULL, '70000-75000', NULL, NULL, 'https://www.gasnet.cz/cs/index/');
INSERT INTO `positions` VALUES (230, 'Mainstream / EUSPA', NULL, 'z jobsu', '2021-07-26 00:00:00', 'ICT Helpdesk / Queue manager', 'Janovského 438, Praha 7-Holešovice', 'Monika Erbenová', NULL, NULL, '70000-75000', 'práce na IČO, chtějí europass CV - nelze jej vygenerovat', NULL, 'https://www.euspa.europa.eu/');
INSERT INTO `positions` VALUES (231, 'BARTON Consulting s.r.o.', NULL, 'https://www.jobs.cz/rpd/1571758959/?searchId=3cd96111-71fa-4b3a-a826-37ddec8b5f72&rps=233', '2021-10-16 00:00:00', 'DevOps junior/senior - až 4 dny home office týdně', 'V jámě 699/1, Praha – Nové Město', 'Jitka Panáková', NULL, NULL, '100000-110000', NULL, NULL, 'https://www.bartonconsulting.cz/');
INSERT INTO `positions` VALUES (232, 'mBlue Czech, s.r.o.', NULL, 'https://www.jobs.cz/fp/mblue-czech-s-r-o-335936766/1572170159/?positionOfAdInAgentEmail=0&searchId=3cd96111-71fa-4b3a-a826-37ddec8b5f72&rps=233', '2021-10-16 00:00:00', '⋙SIEM Engineer – implementace SIEM u předních firem v ČR!⋘', 'Řeporyjská 490/17, Praha – Jinonice', 'Tomáš Hilgard', NULL, NULL, '100000-120000', NULL, NULL, 'https://mblue.cz/');
INSERT INTO `positions` VALUES (233, 'mBlue Czech, s.r.o.', NULL, 'https://www.jobs.cz/fp/mblue-czech-s-r-o-335936766/1572170446/?positionOfAdInAgentEmail=0&searchId=3cd96111-71fa-4b3a-a826-37ddec8b5f72&rps=233', '2021-10-16 00:00:00', '⋙ Senior Security Analytik – SIEM certifikace, tech. firma ⋘', 'Řeporyjská 490/17, Praha – Jinonice', 'Tomáš Hilgard', NULL, NULL, '100000-105000', NULL, NULL, 'https://mblue.cz/');
INSERT INTO `positions` VALUES (234, 'teamIT s.r.o.', NULL, 'https://www.jobs.cz/rpd/1570627677/?searchId=3cd96111-71fa-4b3a-a826-37ddec8b5f72&rps=233', '2021-10-16 00:00:00', 'DevOps/System/Release Engineer atd. :-)', 'Argentinská 1610/4, Praha – Holešovice', ' Jana Hercíková', NULL, NULL, '100000-120000', NULL, NULL, 'https://teamit.cz/');
INSERT INTO `positions` VALUES (235, 'TipSport a.s.', NULL, 'https://www.jobs.cz/rpd/1571071174/?searchId=806e0850-0b65-465a-b39f-a2eb8d9d7604&rps=233', '2021-10-16 00:00:00', 'Specialista Podpory Aplikací', 'Politických vězňů 156/21, Beroun, Beroun-Centrum', 'Kristýna Langerová', NULL, NULL, '100000-105000', 'v inzerátu uvedeno MVP jako Praha, nikoliv Beroun', NULL, 'https://www.tipsport.cz');
INSERT INTO `positions` VALUES (236, 'ABRA Software a.s.', NULL, 'https://www.jobs.cz/rpd/1557647441/?recommended=jobs-thank-you-page&rps=307', '2021-10-24 00:00:00', 'Server & Cloud Specialist', 'Jeremiášova 1422/7b, Praha – Stodůlky', 'Markéta Kaštánková', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.abra.eu/en/');
INSERT INTO `positions` VALUES (237, 'Avast', NULL, 'https://www.linkedin.com/jobs/view/2729068551/?alternateChannel=search&refId=OBWrm3nvDzew%2BZ%2BHzUY1tg%3D%3D&trackingId=dCJ9%2FtCaP5sFwowy7%2FYIyQ%3D%3D&trk=d_flagship3_job_details', '2021-10-24 00:00:00', 'Senior System Engineer', 'Pikrtova 1737/1A, Praha 4-Nusle', '-', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.avast.cz');
INSERT INTO `positions` VALUES (238, 'Capacita s.r.o.', NULL, 'https://www.jobs.cz/rpd/1572410481/?searchId=603abaab-7889-4732-8b4e-271898106649&rps=233', '2021-10-24 00:00:00', 'Information security compliance specialist', 'Na Moráni 1957/5, 128 00 Nové Město', 'Jiří Jaroševský', NULL, NULL, '100000-120000', '8.11.2021 změna od klienta - čekají na další pokyny', NULL, 'https://www.capacita.cz/en/');
INSERT INTO `positions` VALUES (239, 'CZECH PROMOTION group, s.r.o.', NULL, 'https://www.jobs.cz/rpd/1567979072/?recommended=jobs-search-results&rps=317&searchId=4d0c7b6d-c8de-4963-8772-f180cf172eb4', '2021-10-24 00:00:00', 'IT SPECIALISTA/KA – Chceš posunout naše IT na vyšší level?', 'Thámova 289/13, Praha – Karlín', 'Simona Vacková', NULL, NULL, '100000-120000', '4.11.2021 vyplněn formulář', NULL, 'http://www.promotion.cz/');
INSERT INTO `positions` VALUES (240, 'ČSOB Československá obchodní banka, a. s.', NULL, 'https://csob.jobs.cz/detail/?id=G2-1570119981-aden_brand0&rps=233', '2021-10-24 00:00:00', 'Global Cloud Security Operation Center Engineer', 'Radlická 333/150, 150 57 Praha 5', 'Barbora Popelková', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.csob.cz/');
INSERT INTO `positions` VALUES (241, 'Dr.Max ', NULL, 'https://www.prace.cz/firma/438045-dr-max/nabidka/1574111273/?rps=77', '2021-10-24 00:00:00', 'IT aplikační podpora', 'Na Florenci 2116/15, Praha - Nové Město', 'Lucie Plachá', NULL, NULL, '100000-120000', 'potřeba práce do 22:00', NULL, 'https://www.drmax.cz/');
INSERT INTO `positions` VALUES (242, 'Infinity Pro', NULL, 'https://www.linkedin.com/jobs/view/2725195746/?alternateChannel=search&refId=UPm6j1c6gHs07BqkjdKuaQ%3D%3D&trackingId=UZLMg28m3VuK1zWo9EIDFQ%3D%3D&trk=d_flagship3_search_srp_jobs', '2021-10-24 00:00:00', 'Infrastructure Support Manager (ITIL, Business Development, Customer Service)', 'Praha', '-', NULL, NULL, '120000-140000', NULL, NULL, 'https://www.infinitypro.com/');
INSERT INTO `positions` VALUES (243, 'J&T SERVICES ČR, a.s.', NULL, 'https://jtservices.jobs.cz/detail-pozice-jtkariera/?id=G2-1565649440-aden_brand0&rps=233', '2021-10-24 00:00:00', 'SPECIALISTA KLIENTSKÉ BEZPEČNOSTI', 'Sokolovská 700/113a, Praha 8', 'Veronika Morávková', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.jtbank.cz/');
INSERT INTO `positions` VALUES (244, 'Kapsch BusinessCom IoT Solutions s.r.o.', NULL, 'https://www.prace.cz/nabidka/1564311204/?rps=77&apply=1', '2021-10-24 00:00:00', 'DevOps junior/senior', 'Opletalova 1535/4, Praha - Nové Město', 'Šárka Škodová', NULL, NULL, '90000', '9.11. 16:00 teams, Jsem pro ně příliš drahý @ 90000 a navyšovat mzdu dle znalostí', NULL, 'https://www.kapsch.net/en');
INSERT INTO `positions` VALUES (245, 'PWC', NULL, 'https://pwc.wd3.myworkdayjobs.com/en-US/Global_Experienced_Careers/job/Prague/Senior-Security-Specialista_102429WD?source=172911', '2021-10-24 00:00:00', 'Senior Security Specialista', 'Hvězdova 1734/2c, Praha 4-Nusle', '-', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.pwc.com/cz/cs.html');
INSERT INTO `positions` VALUES (246, 'Siemens Advanta', NULL, 'https://jobs.siemens.com/jobs/275581?lang=en-us&sourceType=PREMIUM_POST_SITE', '2021-10-24 00:00:00', 'Cybersecurity Generalist', 'Siemensova 2715, Praha 13-Stodůlky', '-', NULL, NULL, '100000-120000', NULL, NULL, 'https://new.siemens.com/cz/cs.html');
INSERT INTO `positions` VALUES (247, 'Siemens Mobility', NULL, 'https://jobs.siemens.com/jobs/276066?lang=cs-cz&sourceType=PREMIUM_POST_SITE', '2021-10-24 00:00:00', 'IT Service Manager', 'Siemensova 2715, Praha 13-Stodůlky', '-', NULL, NULL, '100000-120000', '26.11.2021 pozice již stažena', NULL, 'https://new.siemens.com/cz/cs.html');
INSERT INTO `positions` VALUES (248, 'TOTAL SERVICE a.s.', NULL, 'https://www.jobs.cz/rpd/1558707510/?recommended=jobs-search-results&rps=317&searchId=4d0c7b6d-c8de-4963-8772-f180cf172eb4', '2021-10-24 00:00:00', 'System Administrator (junior až senior - různé pozice)', 'U Uranie 954, Praha 7-Holešovice', 'Jana Hančurová', NULL, NULL, '100000-120000', 'příliš nízká mzda', NULL, 'https://www.totalservice.cz/');
INSERT INTO `positions` VALUES (249, 'Universal Production Partners, a.s.', NULL, 'https://www.jobs.cz/rpd/1572189816/?searchId=69187432-3fdf-473f-89b2-3cb8fe408463&rps=233', '2021-10-24 00:00:00', 'Windows Administrátor - UPP ADVERTISING', 'Žitomírská 489/7, Praha – Vršovice', 'Martina Šrámková', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.upp.cz/');
INSERT INTO `positions` VALUES (250, 'AHOLD (Albert)', NULL, '-', '2021-10-25 00:00:00', 'IT e-Commerce Support Manager', 'Nové Butovice', 'Jan Trávníček (LinkedIn)', NULL, NULL, '100000-105000', 'team podobný věk, 30-40 lidí, L2 App support, preferují osobní pohovor', NULL, NULL);
INSERT INTO `positions` VALUES (251, 'Experis', NULL, 'https://www.experis.cz/hledam-praci/detail-pozice/?id_position=31769', '2021-10-25 00:00:00', 'IT Security Operations Specialist', 'Florenc', 'Iuliia Zorina', NULL, NULL, '100000-120000', 'příliš nízká mzda', NULL, 'https://www.experis.cz');
INSERT INTO `positions` VALUES (252, 'Experis', NULL, 'https://www.experis.cz/hledam-praci/detail-pozice/?id_position=31762', '2021-10-25 00:00:00', 'IT Security Assesment Specialist', 'Florenc', 'Adéla Pudil', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.experis.cz');
INSERT INTO `positions` VALUES (253, 'ANECT', NULL, 'https://www.linkedin.com/dms/C4D06AQHsdQp5-c0rew/messaging-attachmentFile/0/1635246678192?m=AQKVpSdvb6LHMgAAAXy8UoKbrh2EqHfwAV7b5OwZLQ0Ng9-gcDjzoc8X&ne=1&v=beta&t=YreuUFhadrwJsuc7vb9FJ-emdPgk2YZQ7S-RW8CwzmY', '2021-10-26 00:00:00', 'IT Security Consultant', 'Pražského Povstání - Lomnického 1', 'Sabina Zavřelová', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.anect.cz');
INSERT INTO `positions` VALUES (254, 'Lidl Česká republika v.o.s.', NULL, 'https://www.jobs.cz/fp/lidl-ceska-republika-v-o-s-20859/1511538730/?positionOfAdInAgentEmail=0&rps=307', '2021-10-27 00:00:00', 'Windows Server Administrátor/ka', 'Nárožní 1359/11, 158 00 Praha 5 – Stodůlky', 'Katarína Belančinová', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.lidl.com/');
INSERT INTO `positions` VALUES (255, 'NNIT Czech Republic s.r.o.', NULL, 'https://candidate.hr-manager.net/ApplicationInit.aspx?cid=1313&ProjectId=145719&DepartmentId=18965&MediaId=5', '2021-10-27 00:00:00', 'Cybersecurity Operations Engineer (IAM)', 'Bucharova č.p. 2641/14, Praha 58 - Stodůlky', 'Veronika Kasalova', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.nnit.com/');
INSERT INTO `positions` VALUES (256, 'S&T CZ s.r.o.', NULL, 'https://sntcz.jobs.cz/detail?r=detail&id=cpbr-1574368350&rps=233', '2021-10-27 00:00:00', 'Senior IT Specialista/ka', 'Na strži 1702/65,, Praha - Nusle', 'Lucie Štičková', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.sntcz.cz/');
INSERT INTO `positions` VALUES (257, 'Avast', NULL, 'https://www.linkedin.com/jobs/collections/recommended/?currentJobId=2750311299', '2021-10-28 00:00:00', 'Senior System Engineer - Identity', 'Pikrtova 1737/1a, Praha 4', 'Rebecca Grattan', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.avast.cz');
INSERT INTO `positions` VALUES (258, 'CoolPeople s.r.o.', NULL, 'https://www.cooljobs.eu/cz/admin-microsoft/24831', '2021-10-28 00:00:00', 'Microsoft Administrator (24831)', 'Na Strži 2102/61a, Praha 4-Krč', 'Katarína Kojtalová', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.cooljobs.eu/cz');
INSERT INTO `positions` VALUES (259, 'CoolPeople s.r.o.', NULL, 'https://www.cooljobs.eu/cz/it-security/26096', '2021-10-28 00:00:00', 'IT Security Consultant (26096)', 'Na Strži 2102/61a, Praha 4-Krč', 'David Kriška', NULL, NULL, '100000-120000', 'jen na IČO', NULL, 'https://www.cooljobs.eu/cz');
INSERT INTO `positions` VALUES (260, 'CoolPeople s.r.o.', NULL, 'https://www.cooljobs.eu/cz/analyst/26103', '2021-10-28 00:00:00', 'IT Analyst (26103)', 'Na Strži 2102/61a, Praha 4-Krč', 'Vanesa Absolonová', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.cooljobs.eu/cz');
INSERT INTO `positions` VALUES (261, 'CoolPeople s.r.o.', NULL, 'https://www.cooljobs.eu/cz/analyst/25393', '2021-10-28 00:00:00', 'IT Analyst (25393)', 'Na Strži 2102/61a, Praha 4-Krč', 'Marta Hartmanová', NULL, NULL, '120000', NULL, NULL, 'https://www.cooljobs.eu/cz');
INSERT INTO `positions` VALUES (262, 'Deutsche Börse Group', NULL, 'https://deutscheboersegroup.jobs.cz/vacancy-detail?r=detail&id=cpbr-1574412136&rps=233', '2021-10-28 00:00:00', 'IT Security Engineer - CERT - Group Security (f/m/d)', 'Sokolovská 662/136b, 18600, Praha - Karlín', 'Mia Margorinova', NULL, NULL, '100000-120000', NULL, NULL, 'https://deutsche-boerse.com/dbg-en/');
INSERT INTO `positions` VALUES (263, 'DHL Information Services (Europe) s.r.o.', NULL, 'https://dhl.jobs.cz/detail-cs/?id=G2-1573233521-aden_brand0', '2021-10-28 00:00:00', 'SENIOR SYSTEM SUPPORT SPECIALIST – MODERN WORKSPACE ADMIN', 'Jindřišská 889, Praha 2 - Nové Město', 'Martina Hrbková', NULL, NULL, '100000-120000', 'daleko nižší rozpočet', NULL, 'https://mydhl.express.dhl/cz/cs/home.html#/getQuoteTab');
INSERT INTO `positions` VALUES (264, 'DHL Information Services (Europe) s.r.o.', NULL, 'https://dhl.jobs.cz/detail-cs/?id=G2-1573750042-aden_brand0', '2021-10-28 00:00:00', 'SENIOR SYSTEM SUPPORT SPECIALIST', 'Jindřišská 889, Praha 2 - Nové Město', 'Dominika Formanová', NULL, NULL, '100000-120000', NULL, NULL, 'https://mydhl.express.dhl/cz/cs/home.html#/getQuoteTab');
INSERT INTO `positions` VALUES (265, 'DHL Information Services (Europe) s.r.o.', NULL, 'https://dhl.jobs.cz/detail-cs/?id=G2-1573587943-aden_brand0', '2021-10-28 00:00:00', 'SENIOR APPLICATION SUPPORT SPECIALIST - LOGISTIC SYSTEMS', 'Jindřišská 889, Praha 2 - Nové Město', 'Marie Nunhardtová', NULL, NULL, '100000-120000', 'pohotovosti 24/7/365', NULL, 'https://mydhl.express.dhl/cz/cs/home.html#/getQuoteTab');
INSERT INTO `positions` VALUES (266, 'DHL Information Services (Europe) s.r.o.', NULL, 'https://dhl.jobs.cz/detail-cs/?id=G2-1568533087-aden_brand0', '2021-10-28 00:00:00', 'IT CONSULTANT', 'Jindřišská 889, Praha 2 - Nové Město', 'Lukáš Mandžikievič', NULL, NULL, '100000-120000', NULL, NULL, 'https://mydhl.express.dhl/cz/cs/home.html#/getQuoteTab');
INSERT INTO `positions` VALUES (267, 'DHL Information Services (Europe) s.r.o.', NULL, 'https://dhl.jobs.cz/detail-cs/?id=G2-1568531097-aden_brand0', '2021-10-28 00:00:00', 'INFORMATION SECURITY ANALYST - CYBER DEFENSE CENTER', 'Jindřišská 889, Praha 2 - Nové Město', 'Lukáš Mandžikievič', NULL, NULL, '100000-120000', NULL, NULL, 'https://mydhl.express.dhl/cz/cs/home.html#/getQuoteTab');
INSERT INTO `positions` VALUES (268, 'Digiteq Automotive s.r.o.', NULL, 'https://digiteqautomotive.jobs.cz/detail/?id=G2-1573801777-aden_brand0', '2021-10-28 00:00:00', 'Ethernet Specialist (Automotive)', 'Novodvorská 994/138, Praha 4 - Lhotka, Česká republika', 'Kateřina Ritterová', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.digiteqautomotive.com/');
INSERT INTO `positions` VALUES (269, 'ElasticON Global', NULL, 'https://jobs.elastic.co/jobs/support/distributed-emea/support-engineer-emea/3571577?utm_source=linkedin&utm_medium=referral&utm_campaign=ongig-job-aggregators&group=1509&gh_src=ubgar5dh1#/', '2021-10-28 00:00:00', 'Support Engineer - EMEA', 'Praha', '-', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.elastic.co/');
INSERT INTO `positions` VALUES (270, 'Komerční Banka, a.s.', NULL, 'https://kb.jobs.cz/detail-pozice/?id=G2-1572133571-aden_brand0', '2021-10-28 00:00:00', 'Specialista bezpečnosti IT & BCM', 'náměstí Junkových 2772/1, 155 00  Praha-Stodůlky', 'Václav Kotyk', NULL, NULL, '100000-120000', 'juniorní pozice', NULL, 'https://www.kb.cz/');
INSERT INTO `positions` VALUES (271, 'Komerční Banka, a.s.', NULL, 'https://kb.jobs.cz/detail-pozice/?id=G2-1555716679-aden_brand0', '2021-10-28 00:00:00', 'IS bezpečnostní analytik/čka Senior', 'náměstí Junkových 2772/1, 155 00  Praha-Stodůlky', 'Petr Zajíček', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.kb.cz/');
INSERT INTO `positions` VALUES (272, 'Konica Minolta Business Solutions Czech, spol. s r.o.', NULL, 'https://konicaminolta.jobs.cz/detail-pozice?r=detail&id=cpbr-1568258875&rps=233', '2021-10-28 00:00:00', 'Microsoft 365 technical consultant', 'Evropská 846/176a, Praha 6', 'Lenka Šedá', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.konicaminolta.cz/cs-cz');
INSERT INTO `positions` VALUES (273, 'MARIMEX CZ, s.r.o.', NULL, 'https://www.jobs.cz/rpd/1569704330/?recommended=jobs-thank-you-page&rps=307', '2021-10-28 00:00:00', 'Senior IT Administrátor', 'Libušská 221/264a, Praha – Libuš', 'Petra Ashby', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.marimex.cz/');
INSERT INTO `positions` VALUES (274, 'Netskope', NULL, 'https://www.linkedin.com/jobs/collections/similar-jobs/?currentJobId=2744662075&referenceJobId=2719438725', '2021-10-28 00:00:00', 'Security Engineer', 'Praha', 'Adrian Donaghy', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.netskope.com/');
INSERT INTO `positions` VALUES (275, 'Oracle', NULL, 'https://www.linkedin.com/jobs/view/2719438725/?refId=Y9dMg%2BgYleitqSYCWEewgw%3D%3D&trackingId=emCYWCiPYmP0sCnc44VUJw%3D%3D', '2021-10-28 00:00:00', 'Security Analyst, Threat and Vulnerability Management', 'U Trezorky 921/2, 158 00 Praha 5 - Jinonice-Praha 5', 'Lucie Doležalová', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.oracle.com/cz/index.html');
INSERT INTO `positions` VALUES (276, 'CGI CS&EE', NULL, 'https://www.jobs.cz/fp/cgi-cs-ee-20519/1573766263/?searchId=b8194607-4cf6-4e13-a03b-3003dafb7f95&rps=329', '2021-10-29 00:00:00', 'Window Administrator', 'Laurinova 2800/4, Praha – Stodůlky', 'Erika Mihulová', NULL, NULL, '100000-120000', NULL, NULL, 'http://www.cgi.com/en/ceska-republika');
INSERT INTO `positions` VALUES (277, 'CGI CS&EE', NULL, 'https://www.jobs.cz/fp/cgi-cs-ee-20519/1572166660/?searchId=b8194607-4cf6-4e13-a03b-3003dafb7f95&rps=329', '2021-10-29 00:00:00', 'System Administrator', 'Laurinova 2800/4, Praha – Stodůlky', 'Lenka Skalická', NULL, NULL, '100000-120000', NULL, NULL, 'http://www.cgi.com/en/ceska-republika');
INSERT INTO `positions` VALUES (278, 'CGI CS&EE', NULL, 'https://www.jobs.cz/fp/cgi-cs-ee-20519/1573765783/?searchId=b8194607-4cf6-4e13-a03b-3003dafb7f95&rps=329', '2021-10-29 00:00:00', 'BMC Remedy Support', 'Laurinova 2800/4, Praha – Stodůlky', 'Erika Mihulová', NULL, NULL, '100000-120000', NULL, NULL, 'http://www.cgi.com/en/ceska-republika');
INSERT INTO `positions` VALUES (279, 'Atos IT Solutions and Services, s.r.o.', NULL, 'https://atos.jobs.cz/detail-pozice/?id=G2-1564548308-aden_brand0&rps=77', '2021-10-31 00:00:00', 'Operations & Applications Supporter', 'Doudlebská 1699/5, Praha 4 - Nusle', 'Pavlína Dobrovická', NULL, NULL, '100000-120000', NULL, NULL, 'https://atos.net/cs/ceska-republika');
INSERT INTO `positions` VALUES (280, 'Atos IT Solutions and Services, s.r.o.', NULL, 'https://atos.jobs.cz/detail-pozice/?id=G2-1557057921-aden_brand0&rps=77', '2021-10-31 00:00:00', 'On Site Support - 2nd Level (Praha)', 'Doudlebská 1699/5, Praha 4 - Nusle', 'Pavlína Dobrovická', NULL, NULL, '100000-120000', NULL, NULL, 'https://atos.net/cs/ceska-republika');
INSERT INTO `positions` VALUES (281, 'Curium Netherlands Holding B.V., odštěpný závod', NULL, 'https://www.prace.cz/nabidka/UP-20026180785/?rps=77', '2021-10-31 00:00:00', 'Solutions and Engineering Modern Infrastructure Manager', 'Prosecká 852/66, Praha - Prosek', 'Linda Žáková', NULL, NULL, '120000-130000', NULL, NULL, 'https://www.curiumpharma.com/');
INSERT INTO `positions` VALUES (282, 'Profinit EU, s.r.o.', NULL, 'https://profinit.jobs.cz/detail?r=detail&id=cpbr-1558315742&rps=77', '2021-10-31 00:00:00', 'SYSTEM/DEVOPS ADMINISTRÁTOR', 'Tychonova 2, Praha 6 - Hradčany', 'Jana Vlčková', NULL, NULL, '45000', 'nástup za 45000k, peníze do inzerátů prý nepíší', NULL, 'http://www.profinit.eu/');
INSERT INTO `positions` VALUES (283, 'PŘEDVÝBĚR.CZ s.r.o.', NULL, 'https://www.prace.cz/nabidka/1569345566/?rps=77', '2021-10-31 00:00:00', 'Senior admin IT', 'Na Kozačce 1289/7, Praha 2 - Vinohrady', '-', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.predvyber.cz/');
INSERT INTO `positions` VALUES (284, 'Randstad HR Solutions s.r.o.', NULL, 'https://randstad.jobs.cz/detail-pozice/?id=G2-1573974921-aden_brand0&rps=77', '2021-10-31 00:00:00', '3rd level support engineer', 'Americká 525/23, Praha 2 - Vinohrady', '-', NULL, NULL, '100000-120000', 'nezvedají telefon', NULL, 'https://www.randstad.cz/');
INSERT INTO `positions` VALUES (285, 'W.A.G. payment solutions, a.s.', NULL, 'https://eurowag.jobs.cz/detail-en/?id=G2-1573598861-aden_brand0&rps=77', '2021-10-31 00:00:00', 'IT Helpdesk Administrator', 'Na Vítězné pláni 1719/4, 140 00  Praha-Nusle', 'Sandra Kastakova', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.eurowag.com/');
INSERT INTO `positions` VALUES (286, 'Corpus Solutions a.s.', NULL, 'https://corpus.cz/zamestnani/servis-security.html', '2021-11-02 00:00:00', 'Service Security', 'Štětkova 1638/18, Praha 4-Nusle', 'Vojtěch Zuzanák', NULL, NULL, '50000-60000', 'příliš nízká mzda', NULL, 'http://www.corpus.cz/');
INSERT INTO `positions` VALUES (287, 'Corpus Solutions a.s.', NULL, 'https://corpus.cz/zamestnani/analytik-soc.html', '2021-11-02 00:00:00', 'Analytic SOC', 'Štětkova 1638/18, Praha 4-Nusle', 'Vojtěch Zuzanák', NULL, NULL, '50000-60000', 'příliš nízká mzda', NULL, 'http://www.corpus.cz/');
INSERT INTO `positions` VALUES (288, 'CDN77', NULL, 'https://www.linkedin.com/jobs/view/2557297626/?refId=PcfnbKCBndQFm98e6g9Vng%3D%3D&trackingId=9iNfpLma98%2FJ69AM5ZySdA%3D%3D', '2021-11-03 00:00:00', 'Security Engineer', NULL, '-', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.cdn77.com/network');
INSERT INTO `positions` VALUES (289, 'NNIT Czech Republic s.r.o.', NULL, 'https://nnpojistovna.jobs.cz/detail/?id=G2-1572604597-aden_brand0', '2021-11-03 00:00:00', 'NN IT HUB - PAM Security Engineer', 'Bucharova č.p. 2641/14, Praha 58 - Stodůlky', 'Veronika Cihan', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.nnit.com/');
INSERT INTO `positions` VALUES (290, 'Sodexo Benefity', NULL, 'https://sodexo.jobs.cz/detail-sodexo-benefity/?id=G2-1575059538-aden_brand0&rps=186', '2021-11-03 00:00:00', 'IT Security Manager', 'Radlická 608/2, Praha 5 - Smíchov', 'Jan Przybyla', NULL, NULL, '120000', NULL, NULL, 'https://www.sodexo.cz/');
INSERT INTO `positions` VALUES (291, 'TOTAL SERVICE a.s.', NULL, 'https://www.jobs.cz/rpd/1569812136/?searchId=6482ffb6-7f58-4b84-945f-90269d2e43b8&rps=233', '2021-11-03 00:00:00', 'Analytik kyber bezpečnosti', 'U Uranie 954, Praha 7-Holešovice', 'Jana Hančurová, Radim Navrátil', NULL, NULL, '100000-120000', 'příliš nízká mzda', NULL, 'https://www.totalservice.cz/');
INSERT INTO `positions` VALUES (292, 'Hewlett Packard', NULL, 'https://jobs.hp.com/jobdetails/14015983/cybersecurity-analyst-detection-response-sant-cugat-del-vall-s-es/', '2021-11-05 00:00:00', 'Cybersecurity Analyst - Detection & Response', 'Vyskočilova 1410/1, Praha 4', '-', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.hp.com');
INSERT INTO `positions` VALUES (293, 'Česká spořitelna, a. s.', NULL, 'https://csas.jobs.cz/detail/?id=G2-1575028341-aden_brand0&rps=77', '2021-11-07 00:00:00', 'Senior systémový specialista IT', 'Vinohradská 1632/180, 130 00  Praha-Vinohrady', 'Michaela Skalníková', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.csas.cz');
INSERT INTO `positions` VALUES (294, 'ManpowerGroup s.r.o.', NULL, 'https://manpower.jobs.cz/detail-experis/?id=G2-1575229864-aden_brand0&rps=77', '2021-11-07 00:00:00', 'IT System Administrator with English', 'Na Florenci 2116/15, Nové Město', 'Iuliia Zorina', NULL, NULL, '90000', NULL, NULL, 'https://www.manpower.cz');
INSERT INTO `positions` VALUES (295, 'NNIT Czech Republic s.r.o.', NULL, 'https://nnitczechrepublic.jobs.cz/position-list?r=detail&id=cpbr-1575418186&rps=233', '2021-11-07 00:00:00', 'Vulnerability Manager', 'Bucharova 2641/14, Praha 5, 2nd floor', 'Veronika Kasalová', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.nnit.com/');
INSERT INTO `positions` VALUES (296, 'NNIT Czech Republic s.r.o.', NULL, 'https://nnitczechrepublic.jobs.cz/position-list?r=detail&id=cpbr-1575331883&rps=233', '2021-11-07 00:00:00', 'Cybersecurity Engineer (Identity & Access Management)', 'Bucharova 2641/14, Praha 5, 2nd floor', 'Veronika Kasalová', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.nnit.com/');
INSERT INTO `positions` VALUES (297, 'Seznam.cz, a.s.', NULL, 'https://www.prace.cz/firma/229258-seznam-cz-a-s/nabidka/1569016295/?rps=77', '2021-11-07 00:00:00', 'Senior Security Analyst', 'Radlická 3294/10, Praha - Smíchov', 'Lucia Mikuľáková', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.seznam.cz');
INSERT INTO `positions` VALUES (298, 'Seznam.cz, a.s.', NULL, 'https://www.prace.cz/firma/229258-seznam-cz-a-s/nabidka/1569015662/?rps=77', '2021-11-07 00:00:00', 'Security Analyst', 'Radlická 3294/10, Praha - Smíchov', 'Lucia Mikuľáková', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.seznam.cz');
INSERT INTO `positions` VALUES (299, 'NET4GAS, s.r.o.', NULL, 'https://www.jobs.cz/rpd/1562822057/?recommended=jobs-thank-you-page&rps=307', '2021-11-08 00:00:00', 'Senior Specialista - IT infrastruktura', 'Na hřebenech II 1718/8, Praha – Nusle', 'Lenka Tothova', NULL, NULL, '100000-120000', NULL, NULL, 'http://www.net4gas.cz/');
INSERT INTO `positions` VALUES (300, 'People Consulting s.r.o.', NULL, 'https://jobs.peopleconsulting.cz/careers/10471-General/jobs/14628484-IT-administrtorka-mediorsenior-14628484/', '2021-11-08 00:00:00', 'Medior/Senior IT Administrátor ve skvělém týmu!', 'Karlín', 'Vanessa Schmidt', NULL, NULL, '100000-120000', '420735547651', NULL, 'http://www.peopleconsulting.cz/');
INSERT INTO `positions` VALUES (301, 'S&T CZ s.r.o.', NULL, 'https://sntcz.jobs.cz/detail?r=detail&id=cpbr-1575561693&rps=233', '2021-11-08 00:00:00', 'Technický specialista bezpečnosti', 'Na strži 1702/65,, Praha - Nusle', 'Lucie Štičková', NULL, NULL, '100000-120000', 'dají vědět do středy 24.11.', NULL, 'https://www.sntcz.cz/');
INSERT INTO `positions` VALUES (302, 'ThreatMark', NULL, 'C:\\Users\\micha\\OneDrive\\Documents\\_CV a Joby\\2021\\_JDčka\\1343_ Security Consultant_BRIDGEWATER.pdf', '2021-11-09 00:00:00', 'Security Consultant', 'Praha - bez detailů', 'Martin Fekiač', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.threatmark.com/');
INSERT INTO `positions` VALUES (303, 'Zásilkovna s.r.o.', NULL, 'https://www.linkedin.com/jobs/search/?currentJobId=2791647872&f_WT=2&geoId=104508036', '2021-11-09 00:00:00', 'Security Analyst', 'Praha', '-', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.zasilkovna.cz');
INSERT INTO `positions` VALUES (304, 'Accolade, Inc.', NULL, 'https://www.linkedin.com/jobs/search/?currentJobId=2739058813&geoId=106156085&location=Prague%2C%20Czechia', '2021-11-11 00:00:00', 'Senior Information Technology Support Engineer', 'Praha', 'Jiří Herodek', NULL, NULL, '90000-95000', NULL, NULL, 'https://accolade.eu/');
INSERT INTO `positions` VALUES (305, 'PWC', NULL, 'https://www.linkedin.com/jobs/collections/similar-jobs/?currentJobId=2770216544&geoId=106156085&referenceJobId=2770217393', '2021-11-11 00:00:00', 'Cyber Security Specialist (Junior/Senior) – Operational Technology (OT) Security- Infrastructure', 'Praha', '-', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.pwc.com');
INSERT INTO `positions` VALUES (306, 'PWC', NULL, 'https://www.linkedin.com/jobs/search/?currentJobId=2770217393&geoId=106156085&location=Prague%2C%20Czechia', '2021-11-11 00:00:00', 'Cyber Security Specialist (Junior/Senior) - Cloud Infrastructure Security', 'Praha', '-', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.pwc.com');
INSERT INTO `positions` VALUES (307, 'Česká spořitelna, a. s.', NULL, 'https://csas.jobs.cz/detail/?id=G2-1575719940-aden_brand0&rps=233', '2021-11-12 00:00:00', 'Architekt kybernetické bezpečnosti', 'Vinohradská 1632/180, 130 00  Praha-Vinohrady', 'Silvie Hrozová', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.csas.cz');
INSERT INTO `positions` VALUES (308, 'ČEZ ICT Services', NULL, 'https://www.jobs.cz/rpd/1575777738/?searchId=893cb097-8acd-476f-8918-4f106a1b7762&rps=233', '2021-11-12 00:00:00', 'Bezpečnostní Manažer', 'Duhová 1/425, Praha 4', 'Lenka Krúpová', NULL, NULL, '90000-95000', 'bezpečnostní prověrka, +420 777 575 488, bráchova špatná zkušenost', NULL, 'https://www.cez.cz');
INSERT INTO `positions` VALUES (309, 'ČEZ, a. s.', NULL, 'https://kdejinde.jobs.cz/detail-pozice/?id=G2-1574734332-aden_brand0', '2021-11-12 00:00:00', 'SPECIALISTA/TKA GOVERNANCE - INFORMAČNÍ A KYB. BEZPEČNOST', 'Duhová 1/425, Praha 4', 'Aneta Juricová', NULL, NULL, '90000-95000', 'odmítnout - info od bráchy - špatná zkušenost', NULL, 'https://www.cez.cz');
INSERT INTO `positions` VALUES (310, 'Deckard&Penfield', NULL, 'https://spolu-pracujeme.cz/procesni-security-analytik-praha', '2021-11-12 00:00:00', 'Procesní Security analytik', 'Jankovcova 1037/49, Praha 7', '-', NULL, NULL, '90000-95000', 'Unicorn, pod nimi HR společnost Deckard & Penfield, více společností', NULL, 'https://www.unicorn.com');
INSERT INTO `positions` VALUES (311, 'Deckard&Penfield', NULL, 'https://spolu-pracujeme.cz/eticky-hacker-penetracni-tester-praha', '2021-11-12 00:00:00', 'Etický Hacker / Penetrační testy', 'Jankovcova 1037/49, Praha 7', '-', NULL, NULL, '90000-95000', 'Unicorn, pod nimi HR společnost Deckard & Penfield, více společností', NULL, 'https://www.unicorn.com');
INSERT INTO `positions` VALUES (312, 'Deloitte', NULL, 'https://www.linkedin.com/jobs/search/?currentJobId=2775906263&f_E=4&f_JT=F&f_WT=3&geoId=106156085&keywords=security&location=Prague%2C%20Czechia', '2021-11-12 00:00:00', 'Cybersecurity Senior Consultant – oblast Cyber Resilience', 'Praha', '-', NULL, NULL, '70000-75000', 'příliš nízká mzda - klientovi předán profil za 100k', NULL, 'https://www.deloitte.com');
INSERT INTO `positions` VALUES (313, 'Experis IT Czech Republic', NULL, 'https://www.linkedin.com/jobs/search/?f_E=4&f_JT=F&f_WT=3&geoId=106156085&keywords=security&location=Prague%2C%20Czechia', '2021-11-12 00:00:00', 'IT Security Specialist', 'Praha', 'David Veverka', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.experis.cz');
INSERT INTO `positions` VALUES (314, 'PWC', NULL, 'https://www.linkedin.com/jobs/search/?currentJobId=2770219305&f_E=3%2C4&f_JT=F&geoId=106156085&location=Prague%2C%20Czechia', '2021-11-12 00:00:00', 'Senior Security Specialista - PAM', 'Praha', '-', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.pwc.com');
INSERT INTO `positions` VALUES (315, 'S&T CZ s.r.o.', NULL, 'https://sntcz.jobs.cz/detail?r=detail&id=cpbr-1575561693&rps=77', '2021-11-12 00:00:00', 'Technický specialista bezpečnosti', 'Na Strži 1702, Praha - Pankrác', 'Lucie Štičková', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.sntcz.cz/');
INSERT INTO `positions` VALUES (316, 'VAMED MEDITERRA a.s.', NULL, 'https://www.prace.cz/nabidka/1575824066/?rps=77', '2021-11-12 00:00:00', 'Cyber Security Operator', 'Škrétova 490/12, 120 00 Vinohrady', 'Jakub Švejda', NULL, NULL, '90000-95000', 'jsem seniornější než očekávali + peníze', NULL, 'https://www.vamed-mediterra.cz/');
INSERT INTO `positions` VALUES (317, 'ALEF Distribution CZ, s.r.o.', NULL, 'https://www.jobs.cz/rpd/1576057454/?searchId=f2cdbd6f-d66f-4506-a475-42729a7369b9&rps=233', '2021-11-14 00:00:00', 'Cloud Engineer/Architect', 'Pernerova 691/42, Praha – Karlín', 'Barbora Glöcknerová', NULL, NULL, '90000-95000', 'očekávali primárně AWS cloudové řešení', NULL, 'https://www.alef.com/cz/');
INSERT INTO `positions` VALUES (318, 'BNP Paribas Personal Finance SA, odštěpný závod', NULL, 'https://hellobank.jobs.cz/volna-mista?r=detail&id=cpbr-1574778042&rps=233', '2021-11-14 00:00:00', 'Chief Information Security Officer (CISO)', 'Karla Engliše 3208, Praha - Smíchov', 'Rudolf Špachta', NULL, NULL, '90000-95000', 'banka', NULL, 'https://www.hellobank.cz/');
INSERT INTO `positions` VALUES (319, 'GuideVision, s.r.o. ', NULL, 'https://www.atmoskop.cz/nabidka-prace/1559976965-developer-support-engineer-coding?rps=427', '2021-11-15 00:00:00', 'Developer/Support Engineer (CODING!)', 'Türkova 2319/5b, Praha – Chodov', NULL, NULL, NULL, '90000-95000', NULL, NULL, 'https://guidevision.cz/');
INSERT INTO `positions` VALUES (320, 'O2 Czech Republic a.s.', NULL, 'https://o2.jobs.cz/detail/?id=G2-1565843375-aden_brand0&rps=233', '2021-11-15 00:00:00', 'Security Architect (m/ž)', 'Za Brumlovkou 2', 'Zora Válová', NULL, NULL, '80000', 'volalo HR 15.11.2021 - do L2 @80k (+420 724 994 140), do dalšího kola s techniky, špatné hodnocení na Atmoskopu', NULL, 'https://www.o2.cz');
INSERT INTO `positions` VALUES (321, 'Anect a.s.', NULL, 'https://www.cocuma.cz/job/security-konzultant/3185/', '2021-11-16 00:00:00', 'IT Security Consultant', 'Lomnického 1742/2a Praha 4 - Pankrác', NULL, NULL, NULL, '90000-95000', NULL, NULL, 'http://anect.cz/');
INSERT INTO `positions` VALUES (322, 'Deutsche Börse Group', NULL, 'https://deutscheboersegroup.jobs.cz/vacancy-detail?r=detail&id=cpbr-1574406001&rps=233', '2021-11-16 00:00:00', 'IT Security Engineer - CERT - Group Security (f/m/d)', 'Sokolovská 662/136b, 18600, Praha - Karlín', 'Mia Margorinova', NULL, NULL, '90000-95000', NULL, NULL, 'https://deutsche-boerse.com/dbg-en/');
INSERT INTO `positions` VALUES (323, 'Geetoo', NULL, 'https://geetoo.zohorecruit.com/recruit/PortalDetail.na?digest=BsTrtzHNClgiUIfUAdxxJXGAUnkE7bVo.a85bxdBEmQ-&iframe=true&jobid=533228000000536011&widgetid=533228000000072311&embedsource=CareerSite', '2021-11-16 00:00:00', 'Kubernetes system specialist', '-', 'Michaela Kališová', NULL, NULL, '90000-95000', NULL, NULL, '-');
INSERT INTO `positions` VALUES (324, 'TietoEvry', NULL, 'https://jobs.tieto.cz/cs/azure-stack-specialist/a-808/', '2021-11-16 00:00:00', 'AZURE STACK SPECIALIST', 'Remote', 'Markéta Říhová', NULL, NULL, '90000-95000', 'dají vědět do pátku 26.11.2021', NULL, 'https://www.tietoevry.com/cz/');
INSERT INTO `positions` VALUES (325, 'Homecredit', NULL, NULL, '2021-11-19 00:00:00', 'IT Security Analyst', '-', 'Barbara Čapková', NULL, NULL, '80000-90000', 'příliš nízká mzda', NULL, 'https://www.talentica.cz');
INSERT INTO `positions` VALUES (326, 'Citrix', NULL, 'https://www.linkedin.com/jobs/search/?currentJobId=2796845179&f_WT=2&geoId=104508036', '2021-11-23 00:00:00', 'Senior Technical Support Engineer', '-', '-', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.citrix.com/');
INSERT INTO `positions` VALUES (327, 'Citrix', NULL, 'https://www.linkedin.com/jobs/search/?currentJobId=2801483500&f_WT=2&geoId=104508036', '2021-11-23 00:00:00', 'Lead Technical Support Engineer', '-', '-', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.citrix.com/');
INSERT INTO `positions` VALUES (328, 'Integromat', NULL, 'https://www.linkedin.com/jobs/view/2742728734/?alternateChannel=smljob&eBP=CwEAAAF9TFs_7bRM02NnRJ0qgjYXRn_Gcj60cV7wtsiuFGcoOjdBigBpKtLYiRelEGE7KPoKV-rCSj4WnXdi3TDF_aB5nxapcP5gYNV4JZS1k7OVnjpa-D5zeelXNqIzAR4UaiA8nauNoNvCbg01lh3FWK2TC0hFQ60a8Qbhqw2AeCeOKzQJ', '2021-11-23 00:00:00', 'Cloud Ops & Technical Support Engineer', '-', 'Denisa Laurinová', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.integromat.com/en');
INSERT INTO `positions` VALUES (329, 'Kaspersky', NULL, 'https://www.linkedin.com/jobs/view/2696382376/?alternateChannel=smljob&alternateCode=seturl&eBP=CwEAAAF9TFs_7YuY68cgw0mI5NupHbNAM8NS0dWlzTNGJN8o9iWP4a3THt7lIE4HQJC9vmgIQYo__YLk2jZy2Ccnb2OkJWZbrkBkTZzj8w-JAeZQ5Sb-Lwno4TrTUQY8GSYb4u_1N1ZVGG01tYpFIB2MARyUa6d', '2021-11-23 00:00:00', 'Senior Technical Support Engineer', '-', '-', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.kaspersky.com/');
INSERT INTO `positions` VALUES (330, 'Jobs Contact Consulting, s.r.o.', NULL, 'https://www.jobscontact.cz/prace/devops-pro-prazsky-start-minus-up-minus-full-remote-65-minus-120-dot-000-kc_id2349', '2021-11-23 00:00:00', 'DevOps pro pražský start-up - full remote', 'Remote', 'Pavel Fiala', NULL, NULL, '65000-120000', NULL, NULL, 'https://www.jobscontact.cz/');
INSERT INTO `positions` VALUES (331, 'Stora Enso Wood Products Ždírec s.r.o.', NULL, 'https://www.jobdnes.cz/detail/specialiste-v-oblasti-bezpecnosti-dat-a-pribuzni-pracovnici-619c285e1206d043e75b88d3', '2021-11-23 00:00:00', 'Specialisté v oblasti bezpečnosti dat a příbuzní pracovníci', '-', 'Alena Stešnerová', NULL, NULL, '100000', NULL, NULL, 'http://www.storaenso.com/');
INSERT INTO `positions` VALUES (332, 'Deutsche Börse Services s.r.o.', NULL, 'https://www.jobdnes.cz/detail/cyber-protection-developer-615b810f42a4ff6ca65fc1ab', '2021-11-23 00:00:00', 'Cyber Protection/ Developer', '-', 'Mia Margorinová', NULL, NULL, '125000', NULL, NULL, 'https://deutsche-boerse.com/dbg-en/');
INSERT INTO `positions` VALUES (333, 'Absa Technology Prague, s.r.o.', NULL, 'https://www.jobdnes.cz/detail/systemovi-analytici-6175df1c1ac2c013a7495cb8', '2021-11-23 00:00:00', 'Systémoví analytici', '-', 'Petr Lukašík', NULL, NULL, '110000', NULL, NULL, 'http://www.absa.cz/');
INSERT INTO `positions` VALUES (334, 'NNIT Czech Republic s.r.o.', NULL, 'https://www.jobdnes.cz/detail/specialiste-v-oblasti-pocitacovych-siti-krome-spravcu-solutions-architect-60eda3659e2e2168d4271395', '2021-11-23 00:00:00', 'Specialisté v oblasti počítačových sítí (kromě správců) (Solutions Architect)', '-', 'Denisa Hovorková', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.nnit.com/');
INSERT INTO `positions` VALUES (335, 'DHL Information Services (Europe) s.r.o.', NULL, 'C:\\Users\\micha\\OneDrive\\Documents\\_CV a Joby\\2021\\_JDčka\\20211123_ID 751 - SOC Analyst, DHL IT Services.pdf', '2021-11-24 00:00:00', 'DHL IT Services - SOC Analyst', '-', 'Ivona Kalousková', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.dhl.com/cz-cs/home.html');
INSERT INTO `positions` VALUES (336, 'Generali Česká pojišťovna a.s.', NULL, 'https://generaliceska.jobs.cz/detail/?id=G2-1576800838-aden_brand0&rps=233', '2021-11-24 00:00:00', 'DEVOPS ENGINEER - PŘÍLEŽITOST I PRO ABSOLVENTY', '-', 'Helena Hamouzová', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.generaliceska.cz/');
INSERT INTO `positions` VALUES (337, 'Generali Česká pojišťovna a.s.', NULL, 'https://generaliceska.jobs.cz/detail/?id=G2-1575438473-aden_brand0', '2021-11-24 00:00:00', 'ADMINISTRÁTOR PROVOZU APLIKACÍ', '-', 'Helena Hamouzová', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.generaliceska.cz/');
INSERT INTO `positions` VALUES (338, 'Workday CZ s.r.o.', NULL, 'https://www.uradprace.cz/web/cz/volna-mista-v-cr?utm_source=jooble&utm_medium=cpc&utm_campaign=jooble#/volna-mista-detail/66620843', '2021-11-25 00:00:00', 'Systémoví analytici, Systémoví analytici', '-', 'Gabriela Faltusová', NULL, NULL, '90000', NULL, NULL, 'https://www.deloittece.com');
INSERT INTO `positions` VALUES (339, 'Grafton Consulting', NULL, 'https://www.grafton.cz/cs/node/53281', '2021-11-25 00:00:00', 'L3 IT Support (20-15-381289)', '-', 'Kašparová Nikola', NULL, NULL, '90000', NULL, NULL, 'https://www.grafton.cz');
INSERT INTO `positions` VALUES (340, 'Stora Enso Wood Products Ždírec s.r.o.', NULL, 'https://www.inwork.cz/prace/praha/praha/praha/4066445-specialiste-v%C2%A0oblasti-bezpecnosti-dat-a-pribuzni-pracovnici/', '2021-11-25 00:00:00', 'Specialisté v oblasti bezpečnosti dat a příbuzní pracovníci', '-', '-', NULL, NULL, '100000', NULL, NULL, 'http://www.storaenso.com/');
INSERT INTO `positions` VALUES (341, 'NNIT Czech Republic s.r.o.', NULL, 'https://www.inwork.cz/prace/praha/praha/praha/4053215-technici-pocitacovych-siti-a-systemu/', '2021-11-25 00:00:00', 'Technici počítačových sítí a systémů', '-', '-', NULL, NULL, '100000-110000', NULL, NULL, 'https://www.nnit.com/');
INSERT INTO `positions` VALUES (342, 'Ricardo Prague s.r.o.', NULL, 'https://www.inwork.cz/prace/praha/praha/praha/4030855-senior-applicaton-support-engineer/', '2021-11-25 00:00:00', 'Senior Applicaton Support Engineer', '-', 'Martínková Marcela', NULL, NULL, '75000-80000', NULL, NULL, 'http://www.ricardo.com/');
INSERT INTO `positions` VALUES (343, 'Oracle Czech s.r.o.', NULL, 'https://www.inwork.cz/prace/praha/praha/praha/4017005-systemovi-administratori-spravci-pocitacovych-siti/', '2021-11-25 00:00:00', 'Systémoví administrátoři, správci počítačových sítí', '-', '-', NULL, NULL, '80000', NULL, NULL, 'https://www.oracle.com/cz');
INSERT INTO `positions` VALUES (344, 'NNIT Czech Republic s.r.o.', NULL, 'https://www.inwork.cz/prace/praha/praha/praha/3998267-technici-pocsiti-a-systemu-advanced-operations-specialist/', '2021-11-25 00:00:00', 'Technici poč.sítí a systémů (Advanced Operations Specialist)', '-', 'Denisa Hovorková', NULL, NULL, '75000', NULL, NULL, 'https://www.nnit.com/');
INSERT INTO `positions` VALUES (345, 'NTT Czech Republic s.r.o.', NULL, 'https://www.inwork.cz/prace/praha/praha/praha/3998449-ms-engineer-l3/', '2021-11-25 00:00:00', 'MS Engineer (L3)', '-', 'Kadeřávková Iva', NULL, NULL, '60000-100000', NULL, NULL, 'https://hello.global.ntt/');
INSERT INTO `positions` VALUES (346, 'McKinsey & Company, Inc. Prague - organizační složka', NULL, 'https://www.inwork.cz/prace/praha/praha/praha/3999933-specialiste-v%C2%A0oblasti-pocitacovych-siti-krome-spravcu/', '2021-11-25 00:00:00', 'Specialisté v oblasti počítačových sítí (kromě správců)', '-', '-', NULL, NULL, '120000', NULL, NULL, 'https://www.mckinsey.com/cz/overview');
INSERT INTO `positions` VALUES (347, 'Thales DIS Czech Republic s.r.o.', NULL, 'https://www.inwork.cz/prace/praha/praha/praha/3999979-systemovi-administratori-spravci-pocitacovych-siti/', '2021-11-25 00:00:00', 'Systémoví administrátoři, správci počítačových sítí', '-', '-', NULL, NULL, '90000', NULL, NULL, 'https://www.thalesgroup.com/en/markets/digital-identity-and-security');
INSERT INTO `positions` VALUES (348, 'Deutsche Börse Services s.r.o.', NULL, 'https://www.inwork.cz/prace/praha/praha/praha/4001383-senior-operator/', '2021-11-25 00:00:00', 'Senior Operator', '-', 'Ryvola Martin', NULL, NULL, '95000', NULL, NULL, 'https://deutsche-boerse.com/dbg-en/');
INSERT INTO `positions` VALUES (349, 'Red Hat', NULL, 'https://global-redhat.icims.com/jobs/91509/junior-systems-administrator---storage/job?mode=submit_apply', '2021-11-25 00:00:00', 'Junior Systems Administrator - Storage', '-', '-', NULL, NULL, '80000-85000', NULL, NULL, 'https://www.redhat.com/en/global/czech-republic?oh=redhat.cz');
INSERT INTO `positions` VALUES (350, 'PWC', NULL, 'https://www.linkedin.com/jobs/search/?currentJobId=2801382922&geoId=106156085&location=Prague%2C%20Czechia', '2021-11-26 00:00:00', 'Cyber Security Incident Response Expert', 'Praha', '-', NULL, NULL, '90000-95000', NULL, NULL, 'https://www.pwc.com');
INSERT INTO `positions` VALUES (351, 'E.ON CZ', NULL, 'https://www.linkedin.com/jobs/search/?currentJobId=2797196944&geoId=106156085&location=Prague%2C%20Czechia', '2021-11-26 00:00:00', 'IT Specialist - Identity & Access Management Subject Matter Expert', 'Praha', 'Jarmila Grulová', NULL, NULL, '90000', NULL, NULL, 'https://www.eon.cz');
INSERT INTO `positions` VALUES (352, 'Siemens Mobility, s.r.o.', NULL, 'https://jobs.siemens.com/jobs/276799?lang=cs-cz&previousLocale=en-GB', '2021-11-26 00:00:00', 'Manažer pro síťové IT služby', 'Praha', '-', NULL, NULL, '100000-120000', NULL, NULL, 'https://www.siemens.cz/');

SET FOREIGN_KEY_CHECKS = 1;
