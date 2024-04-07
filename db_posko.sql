/*
Navicat MariaDB Data Transfer

Source Server         : localhost
Source Server Version : 100125
Source Host           : localhost:3306
Source Database       : db_posko

Target Server Type    : MariaDB
Target Server Version : 100125
File Encoding         : 65001

Date: 2017-07-25 10:54:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_location
-- ----------------------------
DROP TABLE IF EXISTS `m_location`;
CREATE TABLE `m_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `location_need_recommendation` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `location_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_area_large` float NOT NULL,
  `location_area_around` float NOT NULL,
  `location_save_path` text COLLATE utf8mb4_unicode_ci,
  `location_save_around` float NOT NULL,
  `location_shelter` int(11) DEFAULT '0',
  `location_active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `location_create_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `location_create_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `location_update_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of m_location
-- ----------------------------
INSERT INTO `m_location` VALUES ('13', 'Cerme Lor', 'Banjir di sekitar daerah cerme lor', '1', '`obk@u|_nTpHe_@{UgCeLdVnYfL', '246551', '2007.38', 'robk@k{_nTbIka@kWwCcM|Wj[dM??', '2147.49', '5', '1', '2017-07-23 08:16:35', 'admin@gmail.com', '2017-07-23 08:16:35', null);

-- ----------------------------
-- Table structure for m_setting
-- ----------------------------
DROP TABLE IF EXISTS `m_setting`;
CREATE TABLE `m_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_save_distance` double DEFAULT NULL,
  `setting_nearby_radius` double DEFAULT NULL,
  `setting_time_max` int(11) DEFAULT NULL,
  `setting_center_lat` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_center_lng` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of m_setting
-- ----------------------------
INSERT INTO `m_setting` VALUES ('1', '1', '25', '500', '60', '-7.117864', '112.564506');

-- ----------------------------
-- Table structure for m_shelter
-- ----------------------------
DROP TABLE IF EXISTS `m_shelter`;
CREATE TABLE `m_shelter` (
  `shelter_id` int(11) NOT NULL AUTO_INCREMENT,
  `shelter_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shelter_lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shelter_lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shelter_location_id` int(11) DEFAULT NULL,
  `shelter_active` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `shelter_create_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `shelter_create_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shelter_update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `shelter_update_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shelter_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`shelter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of m_shelter
-- ----------------------------
INSERT INTO `m_shelter` VALUES ('6', 'Posko 1', '-7.2267441364031475', '112.56261616945267', '13', '1', '2017-07-23 08:37:50', 'admin@gmail.com', '2017-07-23 08:37:50', null, '10');
INSERT INTO `m_shelter` VALUES ('7', 'Posko 2', '-7.223151904708856', '112.56600379943848', '13', '1', '2017-07-23 08:37:50', 'admin@gmail.com', '2017-07-23 08:37:50', null, '9');
INSERT INTO `m_shelter` VALUES ('8', 'Posko 3', '-7.22776459108751', '112.5682581961155', '13', '1', '2017-07-23 08:37:50', 'admin@gmail.com', '2017-07-23 08:37:50', null, '11');
INSERT INTO `m_shelter` VALUES ('9', 'Posko 4', '-7.224689915551672', '112.5686913728714', '13', '1', '2017-07-23 08:37:50', 'admin@gmail.com', '2017-07-23 08:37:50', null, '3');
INSERT INTO `m_shelter` VALUES ('10', 'Posko 5', '-7.227980123594342', '112.56637662649155', '13', '1', '2017-07-23 08:37:50', 'admin@gmail.com', '2017-07-23 08:37:50', null, '4');

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_active` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `user_create_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_create_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_update_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', 'Administrator', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '2017-06-06 22:47:16', null, '2017-06-06 22:47:16', 'admin@gmail.com');

-- ----------------------------
-- Table structure for m_victim
-- ----------------------------
DROP TABLE IF EXISTS `m_victim`;
CREATE TABLE `m_victim` (
  `victim_id` int(11) NOT NULL AUTO_INCREMENT,
  `victim_location_id` int(11) DEFAULT NULL,
  `victim_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `victim_total` int(11) DEFAULT NULL,
  `victim_lat` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `victim_lng` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `victim_active` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `victim_create_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `victim_create_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `victim_update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `victim_update_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `victim_need_calculate` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `victim_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`victim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of m_victim
-- ----------------------------
INSERT INTO `m_victim` VALUES ('25', '13', null, '4', '-7.224812317573859', '112.56419062614441', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('26', '13', null, '3', '-7.224045973932519', '112.5652527809143', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('27', '13', null, '2', '-7.223801169439942', '112.56596088409424', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('28', '13', null, '2', '-7.223109329939814', '112.56523132324219', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('29', '13', null, '2', '-7.224631375442395', '112.56512403488159', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('30', '13', null, '2', '-7.226696240168376', '112.56539225578308', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('31', '13', null, '3', '-7.226536586015814', '112.56623983383179', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('32', '13', null, '4', '-7.227164558690475', '112.56672263145447', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('33', '13', null, '2', '-7.2277393125768725', '112.56696939468384', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('34', '13', null, '2', '-7.226632378514122', '112.56766676902771', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('35', '13', null, '4', '-7.226781389026686', '112.56363272666931', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('36', '13', null, '2', '-7.226930399490104', '112.56387948989868', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '0');
INSERT INTO `m_victim` VALUES ('37', '13', null, '3', '-7.224631375442395', '112.56812810897827', '1', '2017-07-22 15:49:23', 'admin@gmail.com', '2017-07-22 15:49:23', null, '0', '1');
INSERT INTO `m_victim` VALUES ('38', '13', null, '4', '-7.225546729010848', '112.56527423858643', '1', '2017-07-25 10:33:40', 'admin@gmail.com', null, null, '1', null);

-- ----------------------------
-- Table structure for t_logistic_route
-- ----------------------------
DROP TABLE IF EXISTS `t_logistic_route`;
CREATE TABLE `t_logistic_route` (
  `route_location_id` int(11) NOT NULL,
  `route_shelter_id` int(11) NOT NULL,
  `route_victim_id` int(11) NOT NULL,
  `route_victim_next_id` int(11) NOT NULL,
  `route_total` int(11) DEFAULT NULL,
  `route_time` float DEFAULT NULL,
  `route_distance` float DEFAULT NULL,
  `route_mode` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_path` text COLLATE utf8mb4_unicode_ci,
  `route_order` int(11) DEFAULT NULL,
  `route_time_remain` int(11) DEFAULT NULL,
  PRIMARY KEY (`route_location_id`,`route_shelter_id`,`route_victim_id`,`route_victim_next_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_logistic_route
-- ----------------------------
INSERT INTO `t_logistic_route` VALUES ('13', '6', '0', '36', '2', '495', '141', 'walking', 'lnbk@i{_nTDY@MH{@DQJu@Dc@Hg@', '1', '3105');
INSERT INTO `t_logistic_route` VALUES ('13', '6', '25', '0', '0', '1145', '327', 'walking', 'lnbk@i{_nTDY@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA', '4', '240');
INSERT INTO `t_logistic_route` VALUES ('13', '6', '35', '25', '4', '1525', '423', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTEb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA', '3', '1385');
INSERT INTO `t_logistic_route` VALUES ('13', '6', '36', '35', '4', '195', '47', 'walking', '`pbk@ac`nTIf@=|=vobk@ya`nTi@G', '2', '2910');
INSERT INTO `t_logistic_route` VALUES ('13', '7', '0', '27', '2', '555', '146', 'walking', '~wak@ip`nTW`@=|=fwak@go`nTlA`@p@P=|=f{ak@sm`nTXoA', '1', '3045');
INSERT INTO `t_logistic_route` VALUES ('13', '7', '26', '29', '2', '315', '84', 'walking', '|}ak@sk`nTJc@=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ', '3', '2230');
INSERT INTO `t_logistic_route` VALUES ('13', '7', '27', '26', '3', '500', '125', 'walking', '`|ak@cp`nTYnA=|=f{ak@sm`nT\\FbAR=|=h~ak@wl`nTKb@', '2', '2545');
INSERT INTO `t_logistic_route` VALUES ('13', '7', '28', '0', '0', '790', '212', 'walking', '~wak@ip`nTW`@KPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@', '5', '315');
INSERT INTO `t_logistic_route` VALUES ('13', '7', '29', '28', '2', '1125', '315', 'walking', '~`bk@_k`nTg@tC=|=v_bk@if`nTi@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@', '4', '1105');
INSERT INTO `t_logistic_route` VALUES ('13', '8', '0', '34', '2', '620', '162', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?=|=dobk@}}`nTWnAGV', '1', '2980');
INSERT INTO `t_logistic_route` VALUES ('13', '8', '31', '0', '0', '1180', '315', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?=|=dobk@}}`nTWnAYrAI\\SdA_@hB', '5', '100');
INSERT INTO `t_logistic_route` VALUES ('13', '8', '32', '33', '2', '250', '69', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nTB@d@H^F', '3', '2110');
INSERT INTO `t_logistic_route` VALUES ('13', '8', '33', '31', '3', '830', '230', 'walking', 'dtbk@uu`nT_@Ge@ICA]Ky@Sy@Q=|=hmbk@{w`nTSdA_@hB', '4', '1280');
INSERT INTO `t_logistic_route` VALUES ('13', '8', '34', '32', '4', '620', '165', 'walking', 'dnbk@uz`nTQz@I\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@', '2', '2360');
INSERT INTO `t_logistic_route` VALUES ('13', '9', '0', '37', '3', '190', '52', 'walking', 'babk@}`anTe@tA', '1', '3410');
INSERT INTO `t_logistic_route` VALUES ('13', '9', '37', '0', '0', '190', '52', 'walking', 'babk@}`anTe@tA', '2', '3220');
INSERT INTO `t_logistic_route` VALUES ('13', '10', '0', '33', '2', '305', '79', 'walking', 'nubk@_s`nTVeA=|=fvbk@eu`nTaAO', '1', '3295');
INSERT INTO `t_logistic_route` VALUES ('13', '10', '33', '30', '2', '1230', '331', 'walking', 'dtbk@uu`nT`AN=|=fvbk@eu`nT}ArGEJ=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^', '2', '2065');

-- ----------------------------
-- Table structure for t_route
-- ----------------------------
DROP TABLE IF EXISTS `t_route`;
CREATE TABLE `t_route` (
  `route_victim_id` int(11) NOT NULL,
  `route_victim_next_id` int(11) DEFAULT '0',
  `route_victim_location_id` int(11) DEFAULT NULL,
  `route_victim_total` int(11) DEFAULT NULL,
  `route_victim_lat` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_victim_lng` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_passed` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `route_order` int(11) DEFAULT NULL,
  `route_time` int(11) DEFAULT '0',
  `route_distance` float DEFAULT '0',
  `route_mode` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `route_path` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`route_victim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_route
-- ----------------------------
INSERT INTO `t_route` VALUES ('25', '28', '13', '4', '-7.224812317573859', '112.56419062614441', '1', '5', '975', '276', 'walking', 'bbbk@ge`nTAAAAgA]i@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_route` VALUES ('26', '29', '13', '3', '-7.224045973932519', '112.5652527809143', '1', '3', '315', '84', 'walking', '|}ak@sk`nTJc@=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_route` VALUES ('27', '26', '13', '2', '-7.223801169439942', '112.56596088409424', '1', '2', '500', '125', 'walking', '`|ak@cp`nTYnA=|=f{ak@sm`nT\\FbAR=|=h~ak@wl`nTKb@');
INSERT INTO `t_route` VALUES ('28', '36', '13', '2', '-7.223109329939814', '112.56523132324219', '1', '6', '2670', '698', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nTjBh@@?@?HBtAT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Hg@');
INSERT INTO `t_route` VALUES ('29', '25', '13', '2', '-7.224631375442395', '112.56512403488159', '1', '4', '495', '133', 'walking', '~`bk@_k`nTg@tC=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_route` VALUES ('30', '31', '13', '2', '-7.226696240168376', '112.56539225578308', '1', '9', '490', '134', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?AFY');
INSERT INTO `t_route` VALUES ('31', '34', '13', '3', '-7.226536586015814', '112.56623983383179', '1', '10', '570', '154', 'walking', 'tkbk@kr`nT^iBReAH]P{@');
INSERT INTO `t_route` VALUES ('32', '33', '13', '4', '-7.227164558690475', '112.56672263145447', '1', '12', '250', '69', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nTB@d@H^F');
INSERT INTO `t_route` VALUES ('33', '0', '13', '2', '-7.2277393125768725', '112.56696939468384', '1', '13', '0', '0', '', null);
INSERT INTO `t_route` VALUES ('34', '32', '13', '2', '-7.226632378514122', '112.56766676902771', '1', '11', '620', '165', 'walking', 'dnbk@uz`nTQz@I\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_route` VALUES ('35', '30', '13', '4', '-7.226781389026686', '112.56363272666931', '1', '8', '1245', '341', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTJo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_route` VALUES ('36', '35', '13', '2', '-7.226930399490104', '112.56387948989868', '1', '7', '195', '47', 'walking', '`pbk@ac`nTIf@=|=vobk@ya`nTi@G');
INSERT INTO `t_route` VALUES ('37', '27', '13', '3', '-7.224631375442395', '112.56812810897827', '1', '1', '1110', '300', 'walking', '|_bk@g~`nTM\\o@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');

-- ----------------------------
-- Table structure for t_shelter_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_shelter_relation`;
CREATE TABLE `t_shelter_relation` (
  `relation_shelter_id` int(11) NOT NULL,
  `relation_victim_id` int(11) NOT NULL,
  `relation_distance` float DEFAULT NULL,
  `relation_time` int(11) DEFAULT NULL,
  `relation_mode` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_path` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`relation_shelter_id`,`relation_victim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_shelter_relation
-- ----------------------------
INSERT INTO `t_shelter_relation` VALUES ('1', '25', '333', '1165', 'walking', 'jnbk@}z_nTFe@@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_shelter_relation` VALUES ('1', '26', '519', '1830', 'walking', 'jnbk@}z_nTFe@@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@Q=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_shelter_relation` VALUES ('1', '27', '633', '2225', 'walking', 'jnbk@}z_nTFe@@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTj@aD?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWIcAS]G=|=f{ak@sm`nTXoA');
INSERT INTO `t_shelter_relation` VALUES ('1', '28', '609', '2140', 'walking', 'jnbk@}z_nTFe@@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('1', '29', '466', '1640', 'walking', 'jnbk@}z_nTFe@@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_shelter_relation` VALUES ('1', '30', '441', '1585', 'walking', 'jnbk@}z_nTFe@@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('1', '31', '537', '1930', 'walking', 'jnbk@}z_nTFe@@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?AFY');
INSERT INTO `t_shelter_relation` VALUES ('1', '32', '593', '2145', 'walking', 'jnbk@}z_nTFe@@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaBWe@ICA=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('1', '33', '524', '1885', 'walking', 'jnbk@}z_nTFe@@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaAO');
INSERT INTO `t_shelter_relation` VALUES ('1', '34', '691', '2500', 'walking', 'jnbk@}z_nTFe@@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReAH]P{@');
INSERT INTO `t_shelter_relation` VALUES ('1', '35', '148', '540', 'walking', 'jnbk@}z_nTFe@@MH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('1', '36', '147', '520', 'walking', 'jnbk@}z_nTFe@@MH{@DQJu@Dc@Hg@');
INSERT INTO `t_shelter_relation` VALUES ('1', '37', '916', '3210', 'walking', 'jnbk@}z_nTFe@@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTj@aD?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWI=|=h~ak@wl`nTRgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBL]');
INSERT INTO `t_shelter_relation` VALUES ('2', '25', '276', '1110', 'walking', 'vsak@si`nTFK@C=|=`tak@cj`nT|@RjBh@@?@?HBtAT|@Ph@NfA\\@@@@');
INSERT INTO `t_shelter_relation` VALUES ('2', '26', '247', '975', 'walking', 'vsak@si`nTFK@C=|=`tak@cj`nT|@RjBh@@?@?HBtAT=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_shelter_relation` VALUES ('2', '27', '241', '910', 'walking', 'vsak@si`nTFK@Cf@gAp@iAJQ=|=fwak@go`nTlA`@p@P=|=f{ak@sm`nTXoA');
INSERT INTO `t_shelter_relation` VALUES ('2', '28', '92', '360', 'walking', 'vsak@si`nTFK@C=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('2', '29', '315', '1225', 'walking', 'vsak@si`nTFK@Cf@gAp@iAJQ=|=fwak@go`nTlA`@p@P\\FbARVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_shelter_relation` VALUES ('2', '30', '991', '3760', 'walking', 'vsak@si`nTFK@C=|=`tak@cj`nT|@RjBh@@?@?HBtAT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('2', '31', '946', '3525', 'walking', 'vsak@si`nTFK@Cf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_shelter_relation` VALUES ('2', '32', '958', '3585', 'walking', 'vsak@si`nTFK@Cf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('2', '33', '973', '3640', 'walking', 'vsak@si`nTFK@Cf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_shelter_relation` VALUES ('2', '34', '793', '2965', 'walking', 'vsak@si`nTFK@Cf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_shelter_relation` VALUES ('2', '35', '699', '2715', 'walking', 'vsak@si`nTFK@C=|=`tak@cj`nT|@RjBh@@?@?HBtAT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('2', '36', '698', '2695', 'walking', 'vsak@si`nTFK@C=|=`tak@cj`nT|@RjBh@@?@?HBtAT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Hg@');
INSERT INTO `t_shelter_relation` VALUES ('2', '37', '425', '1545', 'walking', 'vsak@si`nTFK@Cf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBL]');
INSERT INTO `t_shelter_relation` VALUES ('3', '25', '989', '3655', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_shelter_relation` VALUES ('3', '26', '813', '3010', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfAKb@');
INSERT INTO `t_shelter_relation` VALUES ('3', '27', '706', '2570', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_shelter_relation` VALUES ('3', '28', '902', '3290', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`AA@iBxCKPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('3', '29', '855', '3160', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_shelter_relation` VALUES ('3', '30', '446', '1675', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?IAm@@YAq@?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('3', '31', '311', '1165', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?IAm@@YAq@?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_shelter_relation` VALUES ('3', '32', '188', '735', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?=|=hsbk@{}`nTOlAWfCCXA@?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('3', '33', '204', '780', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?=|=hsbk@{}`nTOlAWfCCXA@=|=zqbk@iv`nTB@d@H^F');
INSERT INTO `t_shelter_relation` VALUES ('3', '34', '158', '605', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?IAm@@YAq@?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_shelter_relation` VALUES ('3', '35', '627', '2405', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?=|=hsbk@{}`nTOlAWfCCXA@=|=zqbk@iv`nTB@d@H`BV=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('3', '36', '580', '2210', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?=|=hsbk@{}`nTOlAWfCCXA@=|=zqbk@iv`nTB@d@H`BV=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_shelter_relation` VALUES ('3', '37', '406', '1460', 'walking', 'dtbk@o~`nTCR=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_shelter_relation` VALUES ('4', '25', '797', '2945', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_shelter_relation` VALUES ('4', '26', '983', '3610', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@Q=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_shelter_relation` VALUES ('4', '27', '915', '3340', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTz@cF=|=pxbk@u}`nToCEW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_shelter_relation` VALUES ('4', '28', '1073', '3920', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('4', '29', '930', '3420', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_shelter_relation` VALUES ('4', '30', '329', '1225', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@}ArGEJ=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('4', '31', '305', '1125', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@=|=fvbk@eu`nTaBWe@ICA]Ky@Sy@Q=|=hmbk@{w`nTSdA_@hB');
INSERT INTO `t_shelter_relation` VALUES ('4', '32', '144', '555', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@=|=fvbk@eu`nTaBWe@ICA=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('4', '33', '75', '295', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@=|=fvbk@eu`nTaAO');
INSERT INTO `t_shelter_relation` VALUES ('4', '34', '255', '950', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@=|=fvbk@eu`nTaBWe@ICA]Ky@Sy@Q=|=hmbk@{w`nTH]P{@');
INSERT INTO `t_shelter_relation` VALUES ('4', '35', '422', '1620', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('4', '36', '375', '1425', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTMj@}ArGEJM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_shelter_relation` VALUES ('4', '37', '615', '2230', 'walking', 'hwbk@mv`nTSC=|=tvbk@qv`nTz@cF=|=pxbk@u}`nToCEW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_shelter_relation` VALUES ('5', '25', '577', '2175', 'walking', 'x_bk@}}`nTIRo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_shelter_relation` VALUES ('5', '26', '401', '1530', 'walking', 'x_bk@}}`nTIRo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfAKb@');
INSERT INTO `t_shelter_relation` VALUES ('5', '27', '294', '1090', 'walking', 'x_bk@}}`nTIRo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_shelter_relation` VALUES ('5', '28', '491', '1810', 'walking', 'x_bk@}}`nTIRo@pBSh@U`@Ud@k@`AA@iBxCKPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('5', '29', '443', '1680', 'walking', 'x_bk@}}`nTIRo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_shelter_relation` VALUES ('5', '30', '662', '2510', 'walking', 'x_bk@}}`nTh@_B=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('5', '31', '527', '2000', 'walking', 'x_bk@}}`nTh@_B=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_shelter_relation` VALUES ('5', '32', '539', '2060', 'walking', 'x_bk@}}`nTh@_B=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('5', '33', '554', '2115', 'walking', 'x_bk@}}`nTh@_B=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_shelter_relation` VALUES ('5', '34', '374', '1440', 'walking', 'x_bk@}}`nTh@_B=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_shelter_relation` VALUES ('5', '35', '1000', '3780', 'walking', 'x_bk@}}`nTIRo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('5', '36', '917', '3510', 'walking', 'x_bk@}}`nTh@_B=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_shelter_relation` VALUES ('5', '37', '6', '20', 'walking', 'x_bk@}}`nTBI');
INSERT INTO `t_shelter_relation` VALUES ('6', '25', '327', '1145', 'walking', 'lnbk@i{_nTDY@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_shelter_relation` VALUES ('6', '26', '513', '1810', 'walking', 'lnbk@i{_nTDY@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@Q=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_shelter_relation` VALUES ('6', '27', '627', '2205', 'walking', 'lnbk@i{_nTDY@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTj@aD?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWIcAS]G=|=f{ak@sm`nTXoA');
INSERT INTO `t_shelter_relation` VALUES ('6', '28', '603', '2120', 'walking', 'lnbk@i{_nTDY@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('6', '29', '460', '1620', 'walking', 'lnbk@i{_nTDY@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_shelter_relation` VALUES ('6', '30', '434', '1565', 'walking', 'lnbk@i{_nTDY@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('6', '31', '530', '1910', 'walking', 'lnbk@i{_nTDY@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?AFY');
INSERT INTO `t_shelter_relation` VALUES ('6', '32', '586', '2125', 'walking', 'lnbk@i{_nTDY@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaBWe@ICA=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('6', '33', '517', '1865', 'walking', 'lnbk@i{_nTDY@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaAO');
INSERT INTO `t_shelter_relation` VALUES ('6', '34', '684', '2480', 'walking', 'lnbk@i{_nTDY@MH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReAH]P{@');
INSERT INTO `t_shelter_relation` VALUES ('6', '35', '141', '520', 'walking', 'lnbk@i{_nTDY@MH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('6', '36', '141', '495', 'walking', 'lnbk@i{_nTDY@MH{@DQJu@Dc@Hg@');
INSERT INTO `t_shelter_relation` VALUES ('6', '37', '910', '3190', 'walking', 'lnbk@i{_nTDY@M=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTj@aD?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWI=|=h~ak@wl`nTRgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBL]');
INSERT INTO `t_shelter_relation` VALUES ('7', '25', '353', '1365', 'walking', '~wak@ip`nTW`@=|=fwak@go`nTlA`@p@P\\FbARVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_shelter_relation` VALUES ('7', '26', '177', '710', 'walking', '~wak@ip`nTW`@=|=fwak@go`nTlA`@p@P\\FbAR=|=h~ak@wl`nTKb@');
INSERT INTO `t_shelter_relation` VALUES ('7', '27', '146', '555', 'walking', '~wak@ip`nTW`@=|=fwak@go`nTlA`@p@P=|=f{ak@sm`nTXoA');
INSERT INTO `t_shelter_relation` VALUES ('7', '28', '212', '790', 'walking', '~wak@ip`nTW`@KPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('7', '29', '220', '870', 'walking', '~wak@ip`nTW`@=|=fwak@go`nTlA`@p@P\\FbARVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_shelter_relation` VALUES ('7', '30', '941', '3515', 'walking', '~wak@ip`nTpAwB@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('7', '31', '806', '3005', 'walking', '~wak@ip`nTpAwB@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_shelter_relation` VALUES ('7', '32', '818', '3065', 'walking', '~wak@ip`nTpAwB@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('7', '33', '833', '3120', 'walking', '~wak@ip`nTpAwB@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_shelter_relation` VALUES ('7', '34', '653', '2445', 'walking', '~wak@ip`nTpAwB@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_shelter_relation` VALUES ('7', '35', '776', '2970', 'walking', '~wak@ip`nTW`@=|=fwak@go`nTlA`@p@P\\FbARVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('7', '36', '775', '2950', 'walking', '~wak@ip`nTW`@=|=fwak@go`nTlA`@p@P\\FbARVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Hg@');
INSERT INTO `t_shelter_relation` VALUES ('7', '37', '285', '1025', 'walking', '~wak@ip`nTpAwB@Aj@aATe@Ta@Ri@n@qBL]');
INSERT INTO `t_shelter_relation` VALUES ('8', '25', '993', '3670', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_shelter_relation` VALUES ('8', '26', '817', '3025', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfAKb@');
INSERT INTO `t_shelter_relation` VALUES ('8', '27', '710', '2585', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_shelter_relation` VALUES ('8', '28', '906', '3305', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`AA@iBxCKPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('8', '29', '859', '3175', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_shelter_relation` VALUES ('8', '30', '450', '1690', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('8', '31', '315', '1180', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_shelter_relation` VALUES ('8', '32', '192', '750', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?=|=hsbk@{}`nTOlAWfCCXA@?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('8', '33', '208', '795', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?=|=hsbk@{}`nTOlAWfCCXA@=|=zqbk@iv`nTB@d@H^F');
INSERT INTO `t_shelter_relation` VALUES ('8', '34', '162', '620', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_shelter_relation` VALUES ('8', '35', '631', '2420', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?=|=hsbk@{}`nTOlAWfCCXA@=|=zqbk@iv`nTB@d@H`BV=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('8', '36', '584', '2225', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?=|=hsbk@{}`nTOlAWfCCXA@=|=zqbk@iv`nTB@d@H`BV=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_shelter_relation` VALUES ('8', '37', '410', '1475', 'walking', 'ftbk@u~`nTEX=|=`tbk@{}`nTW?IAm@@YAq@?M?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_shelter_relation` VALUES ('9', '25', '635', '2385', 'walking', 'babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_shelter_relation` VALUES ('9', '26', '459', '1740', 'walking', 'babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfAKb@');
INSERT INTO `t_shelter_relation` VALUES ('9', '27', '352', '1300', 'walking', 'babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_shelter_relation` VALUES ('9', '28', '548', '2020', 'walking', 'babk@}`anTs@rBo@pBSh@U`@Ud@k@`AA@iBxCKPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('9', '29', '501', '1890', 'walking', 'babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_shelter_relation` VALUES ('9', '30', '604', '2300', 'walking', 'babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('9', '31', '469', '1790', 'walking', 'babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_shelter_relation` VALUES ('9', '32', '481', '1850', 'walking', 'babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('9', '33', '496', '1905', 'walking', 'babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_shelter_relation` VALUES ('9', '34', '316', '1230', 'walking', 'babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_shelter_relation` VALUES ('9', '35', '907', '3495', 'walking', 'babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('9', '36', '859', '3300', 'walking', 'babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_shelter_relation` VALUES ('9', '37', '52', '190', 'walking', 'babk@}`anTe@tA');
INSERT INTO `t_shelter_relation` VALUES ('10', '25', '719', '2650', 'walking', 'nubk@_s`nTeAlEEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_shelter_relation` VALUES ('10', '26', '905', '3315', 'walking', 'nubk@_s`nTeAlEEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@Q=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_shelter_relation` VALUES ('10', '27', '927', '3375', 'walking', 'nubk@_s`nTVeA=|=fvbk@eu`nTaBWe@ICA]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_shelter_relation` VALUES ('10', '28', '995', '3625', 'walking', 'nubk@_s`nTeAlEEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_shelter_relation` VALUES ('10', '29', '852', '3125', 'walking', 'nubk@_s`nTeAlEEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_shelter_relation` VALUES ('10', '30', '252', '930', 'walking', 'nubk@_s`nTeAlEEJ=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_shelter_relation` VALUES ('10', '31', '309', '1135', 'walking', 'nubk@_s`nTVeA=|=fvbk@eu`nTaBWe@ICA]Ky@Sy@Q=|=hmbk@{w`nTSdA_@hB');
INSERT INTO `t_shelter_relation` VALUES ('10', '32', '148', '565', 'walking', 'nubk@_s`nTVeA=|=fvbk@eu`nTaBWe@ICA=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_shelter_relation` VALUES ('10', '33', '79', '305', 'walking', 'nubk@_s`nTVeA=|=fvbk@eu`nTaAO');
INSERT INTO `t_shelter_relation` VALUES ('10', '34', '259', '960', 'walking', 'nubk@_s`nTVeA=|=fvbk@eu`nTaBWe@ICA]Ky@Sy@Q=|=hmbk@{w`nTH]P{@');
INSERT INTO `t_shelter_relation` VALUES ('10', '35', '344', '1325', 'walking', 'nubk@_s`nTeAlEEJM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_shelter_relation` VALUES ('10', '36', '297', '1135', 'walking', 'nubk@_s`nTeAlEEJM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_shelter_relation` VALUES ('10', '37', '627', '2265', 'walking', 'nubk@_s`nTVeA=|=fvbk@eu`nTaBWe@ICA]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');

-- ----------------------------
-- Table structure for t_victim_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_victim_relation`;
CREATE TABLE `t_victim_relation` (
  `victim_id_a` int(11) NOT NULL,
  `victim_id_b` int(11) NOT NULL,
  `victim_distance` float DEFAULT NULL,
  `victim_time` int(11) DEFAULT NULL,
  `victim_mode` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `victim_path` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`victim_id_a`,`victim_id_b`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_victim_relation
-- ----------------------------
INSERT INTO `t_victim_relation` VALUES ('25', '26', '186', '665', 'walking', 'bbbk@ge`nTAAAAgA]i@O}@Q=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_victim_relation` VALUES ('25', '27', '300', '1060', 'walking', 'bbbk@ge`nTAAAAgA]=|=v_bk@if`nTj@aD?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWIcAS]G=|=f{ak@sm`nTXoA');
INSERT INTO `t_victim_relation` VALUES ('25', '28', '276', '975', 'walking', 'bbbk@ge`nTAAAAgA]i@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('25', '29', '133', '475', 'walking', 'bbbk@ge`nTAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_victim_relation` VALUES ('25', '30', '715', '2650', 'walking', 'bbbk@ge`nT@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('25', '31', '811', '2995', 'walking', 'bbbk@ge`nT@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?AFY');
INSERT INTO `t_victim_relation` VALUES ('25', '32', '867', '3210', 'walking', 'bbbk@ge`nT@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaBWe@ICA=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('25', '33', '798', '2950', 'walking', 'bbbk@ge`nT@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaAO');
INSERT INTO `t_victim_relation` VALUES ('25', '34', '951', '3465', 'walking', 'bbbk@ge`nTAAAAgA]=|=v_bk@if`nTj@aD?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWI=|=h~ak@wl`nTRgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_victim_relation` VALUES ('25', '35', '423', '1605', 'walking', 'bbbk@ge`nT@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('25', '36', '422', '1585', 'walking', 'bbbk@ge`nT@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Hg@');
INSERT INTO `t_victim_relation` VALUES ('25', '37', '583', '2045', 'walking', 'bbbk@ge`nTAAAAgA]=|=v_bk@if`nTj@aD?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWI=|=h~ak@wl`nTRgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBL]');
INSERT INTO `t_victim_relation` VALUES ('26', '25', '186', '700', 'walking', '|}ak@sk`nTQp@[tA=|=n|ak@kg`nT|@Ph@NfA\\@@@@');
INSERT INTO `t_victim_relation` VALUES ('26', '27', '125', '435', 'walking', '|}ak@sk`nTJc@=|=h~ak@wl`nTcAS]G=|=f{ak@sm`nTXoA');
INSERT INTO `t_victim_relation` VALUES ('26', '28', '247', '875', 'walking', '|}ak@sk`nTQp@[tA=|=n|ak@kg`nTuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('26', '29', '84', '315', 'walking', '|}ak@sk`nTJc@=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_victim_relation` VALUES ('26', '30', '901', '3350', 'walking', '|}ak@sk`nTQp@[tA=|=n|ak@kg`nT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('26', '31', '928', '3410', 'walking', '|}ak@sk`nTJc@RgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_victim_relation` VALUES ('26', '32', '940', '3470', 'walking', '|}ak@sk`nTJc@RgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('26', '33', '955', '3525', 'walking', '|}ak@sk`nTJc@RgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_victim_relation` VALUES ('26', '34', '775', '2850', 'walking', '|}ak@sk`nTJc@RgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_victim_relation` VALUES ('26', '35', '609', '2305', 'walking', '|}ak@sk`nTQp@[tA=|=n|ak@kg`nT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('26', '36', '608', '2285', 'walking', '|}ak@sk`nTQp@[tA=|=n|ak@kg`nT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Hg@');
INSERT INTO `t_victim_relation` VALUES ('26', '37', '407', '1430', 'walking', '|}ak@sk`nTJc@RgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBL]');
INSERT INTO `t_victim_relation` VALUES ('27', '25', '300', '1155', 'walking', '`|ak@cp`nTYnA=|=f{ak@sm`nT\\FbARVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_victim_relation` VALUES ('27', '26', '125', '500', 'walking', '`|ak@cp`nTYnA=|=f{ak@sm`nT\\FbAR=|=h~ak@wl`nTKb@');
INSERT INTO `t_victim_relation` VALUES ('27', '28', '260', '960', 'walking', '`|ak@cp`nTYnA[rA[vAA@=|=lyak@eh`nTA?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('27', '29', '167', '660', 'walking', '`|ak@cp`nTYnA=|=f{ak@sm`nT\\FbARVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_victim_relation` VALUES ('27', '30', '956', '3555', 'walking', '`|ak@cp`nTZuA=|=||ak@yr`nTOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('27', '31', '821', '3045', 'walking', '`|ak@cp`nTZuA=|=||ak@yr`nTOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_victim_relation` VALUES ('27', '32', '833', '3105', 'walking', '`|ak@cp`nTZuA=|=||ak@yr`nTOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('27', '33', '848', '3160', 'walking', '`|ak@cp`nTZuA=|=||ak@yr`nTOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_victim_relation` VALUES ('27', '34', '668', '2485', 'walking', '`|ak@cp`nTZuA=|=||ak@yr`nTOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_victim_relation` VALUES ('27', '35', '723', '2760', 'walking', '`|ak@cp`nTYnA=|=f{ak@sm`nT\\FbARVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('27', '36', '722', '2740', 'walking', '`|ak@cp`nTYnA=|=f{ak@sm`nT\\FbARVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Hg@');
INSERT INTO `t_victim_relation` VALUES ('27', '37', '300', '1065', 'walking', '`|ak@cp`nTZuA=|=||ak@yr`nTOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBL]');
INSERT INTO `t_victim_relation` VALUES ('28', '25', '276', '1085', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nTjBh@@?@?HBtAT|@Ph@NfA\\@@@@');
INSERT INTO `t_victim_relation` VALUES ('28', '26', '247', '950', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nTjBh@@?@?HBtAT=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_victim_relation` VALUES ('28', '27', '260', '970', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nTjBh@@?=|=lyak@eh`nT@AZwAZsAXoA');
INSERT INTO `t_victim_relation` VALUES ('28', '29', '315', '1215', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nTjBh@@?@?HBtAT|@Ph@N=|=v_bk@if`nTf@uC');
INSERT INTO `t_victim_relation` VALUES ('28', '30', '991', '3735', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nTjBh@@?@?HBtAT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('28', '31', '1017', '3775', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nT}@S=|=`tak@cj`nTf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_victim_relation` VALUES ('28', '32', '1029', '3835', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nT}@S=|=`tak@cj`nTf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('28', '33', '1044', '3890', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nT}@S=|=`tak@cj`nTf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_victim_relation` VALUES ('28', '34', '864', '3215', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nT}@S=|=`tak@cj`nTf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_victim_relation` VALUES ('28', '35', '699', '2690', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nTjBh@@?@?HBtAT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('28', '36', '698', '2670', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nTjBh@@?@?HBtAT|@Ph@NfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Hg@');
INSERT INTO `t_victim_relation` VALUES ('28', '37', '497', '1795', 'walking', '~vak@}k`nTWp@GZ=|=~uak@oi`nT}@S=|=`tak@cj`nTf@gAp@iAJQhByC@Aj@aATe@Ta@Ri@n@qBL]');
INSERT INTO `t_victim_relation` VALUES ('29', '25', '133', '495', 'walking', '~`bk@_k`nTg@tC=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_victim_relation` VALUES ('29', '26', '84', '305', 'walking', '~`bk@_k`nTBK?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWI=|=h~ak@wl`nTKb@');
INSERT INTO `t_victim_relation` VALUES ('29', '27', '167', '585', 'walking', '~`bk@_k`nTBK?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWIcAS]G=|=f{ak@sm`nTXoA');
INSERT INTO `t_victim_relation` VALUES ('29', '28', '315', '1125', 'walking', '~`bk@_k`nTg@tC=|=v_bk@if`nTi@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('29', '30', '848', '3145', 'walking', '~`bk@_k`nTg@tC=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('29', '31', '944', '3490', 'walking', '~`bk@_k`nTg@tC=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?AFY');
INSERT INTO `t_victim_relation` VALUES ('29', '32', '982', '3610', 'walking', '~`bk@_k`nTBK?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWI=|=h~ak@wl`nTRgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('29', '33', '931', '3445', 'walking', '~`bk@_k`nTg@tC=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Jo@Lu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaAO');
INSERT INTO `t_victim_relation` VALUES ('29', '34', '817', '2990', 'walking', '~`bk@_k`nTBK?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWI=|=h~ak@wl`nTRgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBr@sB=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_victim_relation` VALUES ('29', '35', '556', '2100', 'walking', '~`bk@_k`nTg@tC=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('29', '36', '555', '2080', 'walking', '~`bk@_k`nTg@tC=|=v_bk@if`nTfA\\@@@@@@@@?@@D?B?DKv@?B?@?@@@HJn@b@LJDDNJ^Pn@TrA`@ZFvAT^F=|=tnbk@q|_nTH{@DQJu@Dc@Hg@');
INSERT INTO `t_victim_relation` VALUES ('29', '37', '449', '1570', 'walking', '~`bk@_k`nTBK?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWI=|=h~ak@wl`nTRgAR_A?AAAAAeAo@ICOGa@QWO=|=rzak@ct`nTj@aATe@Ta@Ri@n@qBL]');
INSERT INTO `t_victim_relation` VALUES ('30', '25', '715', '2665', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_victim_relation` VALUES ('30', '26', '901', '3330', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@Q=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_victim_relation` VALUES ('30', '27', '956', '3475', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReAH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_victim_relation` VALUES ('30', '28', '991', '3640', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('30', '29', '848', '3140', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_victim_relation` VALUES ('30', '31', '134', '490', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?AFY');
INSERT INTO `t_victim_relation` VALUES ('30', '32', '349', '1295', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReA=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('30', '33', '331', '1245', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTNDbDp@=|=bsbk@el`nTDK|AsG=|=fvbk@eu`nTaAO');
INSERT INTO `t_victim_relation` VALUES ('30', '34', '288', '1060', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReAH]P{@');
INSERT INTO `t_victim_relation` VALUES ('30', '35', '341', '1340', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('30', '36', '293', '1145', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_victim_relation` VALUES ('30', '37', '656', '2365', 'walking', 'dmbk@}l`nTH_@=|=nmbk@}m`nTc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReAH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_victim_relation` VALUES ('31', '25', '811', '3030', 'walking', 'tkbk@kr`nTGX?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_victim_relation` VALUES ('31', '26', '928', '3425', 'walking', 'tkbk@kr`nT^iBReAH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfAKb@');
INSERT INTO `t_victim_relation` VALUES ('31', '27', '821', '2985', 'walking', 'tkbk@kr`nT^iBReAH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_victim_relation` VALUES ('31', '28', '1017', '3705', 'walking', 'tkbk@kr`nT^iBReAH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`AA@iBxCKPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('31', '29', '944', '3505', 'walking', 'tkbk@kr`nTGX?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_victim_relation` VALUES ('31', '30', '134', '510', 'walking', 'tkbk@kr`nTGX?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('31', '32', '215', '805', 'walking', 'tkbk@kr`nT^iBReA=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('31', '33', '230', '860', 'walking', 'tkbk@kr`nT^iBReA=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_victim_relation` VALUES ('31', '34', '154', '570', 'walking', 'tkbk@kr`nT^iBReAH]P{@');
INSERT INTO `t_victim_relation` VALUES ('31', '35', '437', '1705', 'walking', 'tkbk@kr`nTGX?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('31', '36', '389', '1510', 'walking', 'tkbk@kr`nTGX?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_victim_relation` VALUES ('31', '37', '521', '1875', 'walking', 'tkbk@kr`nT^iBReAH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_victim_relation` VALUES ('32', '25', '867', '3200', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nTB@d@H`BV=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_victim_relation` VALUES ('32', '26', '940', '3445', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nT]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfAKb@');
INSERT INTO `t_victim_relation` VALUES ('32', '27', '833', '3005', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nT]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_victim_relation` VALUES ('32', '28', '1029', '3725', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nT]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`AA@iBxCKPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('32', '29', '982', '3595', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nT]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_victim_relation` VALUES ('32', '30', '349', '1275', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nT]Ky@Sy@Q=|=hmbk@{w`nTSdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('32', '31', '215', '765', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nT]Ky@Sy@Q=|=hmbk@{w`nTSdA_@hB');
INSERT INTO `t_victim_relation` VALUES ('32', '33', '69', '250', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nTB@d@H^F');
INSERT INTO `t_victim_relation` VALUES ('32', '34', '165', '590', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nT]Ky@Sy@Q=|=hmbk@{w`nTH]P{@');
INSERT INTO `t_victim_relation` VALUES ('32', '35', '492', '1875', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nTB@d@H`BV=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('32', '36', '445', '1680', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nTB@d@H`BV=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_victim_relation` VALUES ('32', '37', '533', '1895', 'walking', 'pqbk@yt`nTHi@?E=|=zqbk@iv`nT]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_victim_relation` VALUES ('33', '25', '798', '2950', 'walking', 'dtbk@uu`nT`AN=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_victim_relation` VALUES ('33', '26', '955', '3510', 'walking', 'dtbk@uu`nT_@Ge@ICA]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfAKb@');
INSERT INTO `t_victim_relation` VALUES ('33', '27', '848', '3070', 'walking', 'dtbk@uu`nT_@Ge@ICA]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_victim_relation` VALUES ('33', '28', '1044', '3790', 'walking', 'dtbk@uu`nT_@Ge@ICA]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`AA@iBxCKPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('33', '29', '931', '3425', 'walking', 'dtbk@uu`nT`AN=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_victim_relation` VALUES ('33', '30', '331', '1230', 'walking', 'dtbk@uu`nT`AN=|=fvbk@eu`nT}ArGEJ=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('33', '31', '230', '830', 'walking', 'dtbk@uu`nT_@Ge@ICA]Ky@Sy@Q=|=hmbk@{w`nTSdA_@hB');
INSERT INTO `t_victim_relation` VALUES ('33', '32', '69', '260', 'walking', 'dtbk@uu`nT_@Ge@ICA=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('33', '34', '180', '655', 'walking', 'dtbk@uu`nT_@Ge@ICA]Ky@Sy@Q=|=hmbk@{w`nTH]P{@');
INSERT INTO `t_victim_relation` VALUES ('33', '35', '423', '1625', 'walking', 'dtbk@uu`nT`AN=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('33', '36', '376', '1430', 'walking', 'dtbk@uu`nT`AN=|=fvbk@eu`nT}ArGEJM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_victim_relation` VALUES ('33', '37', '548', '1960', 'walking', 'dtbk@uu`nT_@Ge@ICA]Ky@Sy@Q=|=hmbk@{w`nTH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_victim_relation` VALUES ('34', '25', '951', '3500', 'walking', 'dnbk@uz`nTFWVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_victim_relation` VALUES ('34', '26', '775', '2855', 'walking', 'dnbk@uz`nTFWVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfAKb@');
INSERT INTO `t_victim_relation` VALUES ('34', '27', '668', '2415', 'walking', 'dnbk@uz`nTFWVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_victim_relation` VALUES ('34', '28', '864', '3135', 'walking', 'dnbk@uz`nTFWVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`AA@iBxCKPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('34', '29', '817', '3005', 'walking', 'dnbk@uz`nTFWVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTs@rBo@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_victim_relation` VALUES ('34', '30', '288', '1070', 'walking', 'dnbk@uz`nTQz@I\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('34', '31', '154', '560', 'walking', 'dnbk@uz`nTQz@I\\SdA_@hB');
INSERT INTO `t_victim_relation` VALUES ('34', '32', '165', '620', 'walking', 'dnbk@uz`nTQz@I\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('34', '33', '180', '675', 'walking', 'dnbk@uz`nTQz@I\\=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_victim_relation` VALUES ('34', '35', '591', '2265', 'walking', 'dnbk@uz`nTQz@I\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('34', '36', '543', '2070', 'walking', 'dnbk@uz`nTQz@I\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@AF');
INSERT INTO `t_victim_relation` VALUES ('34', '37', '368', '1305', 'walking', 'dnbk@uz`nTFWVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_victim_relation` VALUES ('35', '25', '423', '1525', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTEb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_victim_relation` VALUES ('35', '26', '609', '2190', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTEb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@Q=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_victim_relation` VALUES ('35', '27', '723', '2585', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTEb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTj@aD?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWIcAS]G=|=f{ak@sm`nTXoA');
INSERT INTO `t_victim_relation` VALUES ('35', '28', '699', '2500', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTEb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('35', '29', '556', '2000', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTEb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_victim_relation` VALUES ('35', '30', '341', '1245', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTJo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('35', '31', '437', '1590', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTJo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?AFY');
INSERT INTO `t_victim_relation` VALUES ('35', '32', '492', '1805', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTJo@Lu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaBWe@ICA=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('35', '33', '423', '1545', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTJo@Lu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaAO');
INSERT INTO `t_victim_relation` VALUES ('35', '34', '591', '2160', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTJo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReAH]P{@');
INSERT INTO `t_victim_relation` VALUES ('35', '36', '47', '180', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTHg@');
INSERT INTO `t_victim_relation` VALUES ('35', '37', '959', '3465', 'walking', 'lnbk@ab`nTh@F=|=vobk@ya`nTJo@Lu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReAH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_victim_relation` VALUES ('36', '25', '422', '1520', 'walking', '`pbk@ac`nTIf@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAA');
INSERT INTO `t_victim_relation` VALUES ('36', '26', '608', '2185', 'walking', '`pbk@ac`nTIf@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@Q=|=n|ak@kg`nTZuAPq@');
INSERT INTO `t_victim_relation` VALUES ('36', '27', '722', '2580', 'walking', '`pbk@ac`nTIf@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTj@aD?AA??A?AA??AA??AA?AAA?AACACACAEAIAKCKEWIcAS]G=|=f{ak@sm`nTXoA');
INSERT INTO `t_victim_relation` VALUES ('36', '28', '698', '2495', 'walking', '`pbk@ac`nTIf@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]i@O}@QuAUICA?A?kBi@=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('36', '29', '555', '1995', 'walking', '`pbk@ac`nTIf@Eb@Kt@EPIz@=|=tnbk@q|_nT_@GwAU[GsAa@o@U_@QOKEEMKo@c@IKAA?A?A?CJw@?E?CAE?AAAAAAAAAgA]=|=v_bk@if`nTf@uC');
INSERT INTO `t_victim_relation` VALUES ('36', '30', '293', '1065', 'walking', '`pbk@ac`nT@GLu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OE=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('36', '31', '389', '1410', 'walking', '`pbk@ac`nT@GLu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?AFY');
INSERT INTO `t_victim_relation` VALUES ('36', '32', '445', '1625', 'walking', '`pbk@ac`nT@GLu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaBWe@ICA=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('36', '33', '376', '1365', 'walking', '`pbk@ac`nT@GLu@F]FYLc@T}@Ni@La@DK|AsG=|=fvbk@eu`nTaAO');
INSERT INTO `t_victim_relation` VALUES ('36', '34', '543', '1980', 'walking', '`pbk@ac`nT@GLu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReAH]P{@');
INSERT INTO `t_victim_relation` VALUES ('36', '35', '47', '195', 'walking', '`pbk@ac`nTIf@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('36', '37', '911', '3285', 'walking', '`pbk@ac`nT@GLu@F]FYLc@T}@Ni@La@=|=bsbk@el`nTcDq@OEc@Kk@M=|=~jbk@wn`nTVeA?A?A?AAAAAAA?AA??AA??A?Af@cCReAH]XsAVoA=|=dobk@}}`nTM?wAK_AKaEq@kAQMC=|=babk@}`anTe@tA');
INSERT INTO `t_victim_relation` VALUES ('37', '25', '583', '2195', 'walking', '|_bk@g~`nTM\\o@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@k@`D=|=v_bk@if`nTfA\\@@@@');
INSERT INTO `t_victim_relation` VALUES ('37', '26', '407', '1550', 'walking', '|_bk@g~`nTM\\o@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfAKb@');
INSERT INTO `t_victim_relation` VALUES ('37', '27', '300', '1110', 'walking', '|_bk@g~`nTM\\o@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNF=|=||ak@yr`nT[tA');
INSERT INTO `t_victim_relation` VALUES ('37', '28', '497', '1830', 'walking', '|_bk@g~`nTM\\o@pBSh@U`@Ud@k@`AA@iBxCKPq@hAg@fA=|=`tak@cj`nT|@R=|=~uak@oi`nTF[Vq@');
INSERT INTO `t_victim_relation` VALUES ('37', '29', '449', '1700', 'walking', '|_bk@g~`nTM\\o@pBSh@U`@Ud@k@`A=|=rzak@ct`nTVN`@PNFHBdAn@@@@@?@S~@SfA=|=h~ak@wl`nTVHJDJBH@D@B@B@B@@@@?@@@??@@??@@??@?@@??@CJ');
INSERT INTO `t_victim_relation` VALUES ('37', '30', '656', '2490', 'walking', '|_bk@g~`nTd@uA=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@J=|=nmbk@}m`nTI^');
INSERT INTO `t_victim_relation` VALUES ('37', '31', '521', '1980', 'walking', '|_bk@g~`nTd@uA=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdA_@hB');
INSERT INTO `t_victim_relation` VALUES ('37', '32', '533', '2040', 'walking', '|_bk@g~`nTd@uA=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\J=|=zqbk@iv`nT?DIh@');
INSERT INTO `t_victim_relation` VALUES ('37', '33', '548', '2095', 'walking', '|_bk@g~`nTd@uA=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\=|=hmbk@{w`nTx@Px@R\\JB@d@H^F');
INSERT INTO `t_victim_relation` VALUES ('37', '34', '368', '1420', 'walking', '|_bk@g~`nTd@uA=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAGV');
INSERT INTO `t_victim_relation` VALUES ('37', '35', '959', '3685', 'walking', '|_bk@g~`nTd@uA=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@Kn@=|=vobk@ya`nTi@G');
INSERT INTO `t_victim_relation` VALUES ('37', '36', '911', '3490', 'walking', '|_bk@g~`nTd@uA=|=babk@}`anTLBjAP`Ep@~@JvAJL?=|=dobk@}}`nTWnAYrAI\\SdAg@bC?@?@@??@@??@@@@@@@?@?@?@WdA=|=~jbk@wn`nTj@Lb@JNDbDp@=|=bsbk@el`nTM`@Oh@U|@Mb@GXG\\Mt@AF');
SET FOREIGN_KEY_CHECKS=1;
