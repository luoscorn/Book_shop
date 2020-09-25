/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : book_shop

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-09-25 17:12:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 用户信息', '6', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 用户信息', '6', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 用户信息', '6', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 用户信息', '6', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 短信验证', '7', 'add_verifycode');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 短信验证', '7', 'change_verifycode');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 短信验证', '7', 'delete_verifycode');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 短信验证', '7', 'view_verifycode');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 首页轮播', '8', 'add_banner');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 首页轮播', '8', 'change_banner');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 首页轮播', '8', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 首页轮播', '8', 'view_banner');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 商品信息', '9', 'add_goods');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 商品信息', '9', 'change_goods');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 商品信息', '9', 'delete_goods');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 商品信息', '9', 'view_goods');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 商品类别', '10', 'add_goodscategory');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 商品类别', '10', 'change_goodscategory');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 商品类别', '10', 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 商品类别', '10', 'view_goodscategory');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 宣传品牌', '11', 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 宣传品牌', '11', 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 宣传品牌', '11', 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 宣传品牌', '11', 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 商品轮播', '12', 'add_goodsimage');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 商品轮播', '12', 'change_goodsimage');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 商品轮播', '12', 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 商品轮播', '12', 'view_goodsimage');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 热搜排行', '13', 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 热搜排行', '13', 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 热搜排行', '13', 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 热搜排行', '13', 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 首页广告', '14', 'add_indexad');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 首页广告', '14', 'change_indexad');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 首页广告', '14', 'delete_indexad');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 首页广告', '14', 'view_indexad');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 订单商品', '15', 'add_ordergoods');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 订单商品', '15', 'change_ordergoods');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 订单商品', '15', 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 订单商品', '15', 'view_ordergoods');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 订单信息', '16', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 订单信息', '16', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 订单信息', '16', 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 订单信息', '16', 'view_orderinfo');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 购物车喵', '17', 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 购物车喵', '17', 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 购物车喵', '17', 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 购物车喵', '17', 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 收货地址', '18', 'add_useraddress');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 收货地址', '18', 'change_useraddress');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 收货地址', '18', 'delete_useraddress');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 收货地址', '18', 'view_useraddress');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 用户收藏', '19', 'add_userfav');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 用户收藏', '19', 'change_userfav');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 用户收藏', '19', 'delete_userfav');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 用户收藏', '19', 'view_userfav');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 用户留言', '20', 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 用户留言', '20', 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 用户留言', '20', 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 用户留言', '20', 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('81', 'Can add Bookmark', '21', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('82', 'Can change Bookmark', '21', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete Bookmark', '21', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('84', 'Can view Bookmark', '21', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('85', 'Can add User Setting', '22', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('86', 'Can change User Setting', '22', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete User Setting', '22', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('88', 'Can view User Setting', '22', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('89', 'Can add User Widget', '23', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('90', 'Can change User Widget', '23', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete User Widget', '23', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('92', 'Can view User Widget', '23', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('93', 'Can add log entry', '24', 'add_log');
INSERT INTO `auth_permission` VALUES ('94', 'Can change log entry', '24', 'change_log');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete log entry', '24', 'delete_log');
INSERT INTO `auth_permission` VALUES ('96', 'Can view log entry', '24', 'view_log');
INSERT INTO `auth_permission` VALUES ('97', 'Can add Token', '25', 'add_token');
INSERT INTO `auth_permission` VALUES ('98', 'Can change Token', '25', 'change_token');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete Token', '25', 'delete_token');
INSERT INTO `auth_permission` VALUES ('100', 'Can view Token', '25', 'view_token');
INSERT INTO `auth_permission` VALUES ('101', 'Can add association', '26', 'add_association');
INSERT INTO `auth_permission` VALUES ('102', 'Can change association', '26', 'change_association');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete association', '26', 'delete_association');
INSERT INTO `auth_permission` VALUES ('104', 'Can view association', '26', 'view_association');
INSERT INTO `auth_permission` VALUES ('105', 'Can add code', '27', 'add_code');
INSERT INTO `auth_permission` VALUES ('106', 'Can change code', '27', 'change_code');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete code', '27', 'delete_code');
INSERT INTO `auth_permission` VALUES ('108', 'Can view code', '27', 'view_code');
INSERT INTO `auth_permission` VALUES ('109', 'Can add nonce', '28', 'add_nonce');
INSERT INTO `auth_permission` VALUES ('110', 'Can change nonce', '28', 'change_nonce');
INSERT INTO `auth_permission` VALUES ('111', 'Can delete nonce', '28', 'delete_nonce');
INSERT INTO `auth_permission` VALUES ('112', 'Can view nonce', '28', 'view_nonce');
INSERT INTO `auth_permission` VALUES ('113', 'Can add user social auth', '29', 'add_usersocialauth');
INSERT INTO `auth_permission` VALUES ('114', 'Can change user social auth', '29', 'change_usersocialauth');
INSERT INTO `auth_permission` VALUES ('115', 'Can delete user social auth', '29', 'delete_usersocialauth');
INSERT INTO `auth_permission` VALUES ('116', 'Can view user social auth', '29', 'view_usersocialauth');
INSERT INTO `auth_permission` VALUES ('117', 'Can add partial', '30', 'add_partial');
INSERT INTO `auth_permission` VALUES ('118', 'Can change partial', '30', 'change_partial');
INSERT INTO `auth_permission` VALUES ('119', 'Can delete partial', '30', 'delete_partial');
INSERT INTO `auth_permission` VALUES ('120', 'Can view partial', '30', 'view_partial');
INSERT INTO `auth_permission` VALUES ('121', 'Can add 版本信息', '31', 'add_versioncontrol');
INSERT INTO `auth_permission` VALUES ('122', 'Can change 版本信息', '31', 'change_versioncontrol');
INSERT INTO `auth_permission` VALUES ('123', 'Can delete 版本信息', '31', 'delete_versioncontrol');
INSERT INTO `auth_permission` VALUES ('124', 'Can view 版本信息', '31', 'view_versioncontrol');
INSERT INTO `auth_permission` VALUES ('125', 'Can add TyAdmin邮箱验证码', '32', 'add_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES ('126', 'Can change TyAdmin邮箱验证码', '32', 'change_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES ('127', 'Can delete TyAdmin邮箱验证码', '32', 'delete_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES ('128', 'Can view TyAdmin邮箱验证码', '32', 'view_tyadminemailverifyrecord');
INSERT INTO `auth_permission` VALUES ('129', 'Can add 系统日志', '33', 'add_tyadminsyslog');
INSERT INTO `auth_permission` VALUES ('130', 'Can change 系统日志', '33', 'change_tyadminsyslog');
INSERT INTO `auth_permission` VALUES ('131', 'Can delete 系统日志', '33', 'delete_tyadminsyslog');
INSERT INTO `auth_permission` VALUES ('132', 'Can view 系统日志', '33', 'view_tyadminsyslog');
INSERT INTO `auth_permission` VALUES ('133', 'Can add captcha store', '34', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('134', 'Can change captcha store', '34', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('135', 'Can delete captcha store', '34', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('136', 'Can view captcha store', '34', 'view_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('25', 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES ('34', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('8', 'goods', 'banner');
INSERT INTO `django_content_type` VALUES ('9', 'goods', 'goods');
INSERT INTO `django_content_type` VALUES ('10', 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES ('11', 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES ('12', 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES ('13', 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES ('14', 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES ('31', 'replace', 'versioncontrol');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('26', 'social_django', 'association');
INSERT INTO `django_content_type` VALUES ('27', 'social_django', 'code');
INSERT INTO `django_content_type` VALUES ('28', 'social_django', 'nonce');
INSERT INTO `django_content_type` VALUES ('30', 'social_django', 'partial');
INSERT INTO `django_content_type` VALUES ('29', 'social_django', 'usersocialauth');
INSERT INTO `django_content_type` VALUES ('15', 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES ('16', 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES ('17', 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES ('18', 'user_operation', 'useraddress');
INSERT INTO `django_content_type` VALUES ('19', 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES ('20', 'user_operation', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'verifycode');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES ('32', 'xadmin_api', 'tyadminemailverifyrecord');
INSERT INTO `django_content_type` VALUES ('33', 'xadmin_api', 'tyadminsyslog');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-09-24 17:50:58.902616');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-09-24 17:50:59.543198');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-09-24 17:51:00.149750');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-09-24 17:51:02.098522');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-09-24 17:51:02.122544');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-09-24 17:51:02.156574');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-09-24 17:51:02.191606');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-09-24 17:51:02.221634');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2020-09-24 17:51:02.257667');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2020-09-24 17:51:02.291697');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2020-09-24 17:51:02.324728');
INSERT INTO `django_migrations` VALUES ('12', 'users', '0001_initial', '2020-09-24 17:51:03.049386');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0001_initial', '2020-09-24 17:51:05.227367');
INSERT INTO `django_migrations` VALUES ('14', 'admin', '0002_logentry_remove_auto_add', '2020-09-24 17:51:06.263308');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0003_logentry_add_action_flag_choices', '2020-09-24 17:51:06.284327');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0010_alter_group_name_max_length', '2020-09-24 17:51:06.360397');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0011_update_proxy_permissions', '2020-09-24 17:51:06.398431');
INSERT INTO `django_migrations` VALUES ('18', 'authtoken', '0001_initial', '2020-09-24 17:51:06.607621');
INSERT INTO `django_migrations` VALUES ('19', 'authtoken', '0002_auto_20160226_1747', '2020-09-24 17:51:07.597570');
INSERT INTO `django_migrations` VALUES ('20', 'captcha', '0001_initial', '2020-09-24 17:51:07.815768');
INSERT INTO `django_migrations` VALUES ('21', 'goods', '0001_initial', '2020-09-24 17:51:09.167230');
INSERT INTO `django_migrations` VALUES ('22', 'goods', '0002_auto_20200924_0935', '2020-09-24 17:51:15.980503');
INSERT INTO `django_migrations` VALUES ('23', 'replace', '0001_initial', '2020-09-24 17:51:16.171677');
INSERT INTO `django_migrations` VALUES ('24', 'sessions', '0001_initial', '2020-09-24 17:51:16.351840');
INSERT INTO `django_migrations` VALUES ('25', 'default', '0001_initial', '2020-09-24 17:51:17.521904');
INSERT INTO `django_migrations` VALUES ('26', 'social_auth', '0001_initial', '2020-09-24 17:51:17.565944');
INSERT INTO `django_migrations` VALUES ('27', 'default', '0002_add_related_name', '2020-09-24 17:51:18.786054');
INSERT INTO `django_migrations` VALUES ('28', 'social_auth', '0002_add_related_name', '2020-09-24 17:51:18.807073');
INSERT INTO `django_migrations` VALUES ('29', 'default', '0003_alter_email_max_length', '2020-09-24 17:51:18.886145');
INSERT INTO `django_migrations` VALUES ('30', 'social_auth', '0003_alter_email_max_length', '2020-09-24 17:51:18.918174');
INSERT INTO `django_migrations` VALUES ('31', 'default', '0004_auto_20160423_0400', '2020-09-24 17:51:18.968219');
INSERT INTO `django_migrations` VALUES ('32', 'social_auth', '0004_auto_20160423_0400', '2020-09-24 17:51:18.997246');
INSERT INTO `django_migrations` VALUES ('33', 'social_auth', '0005_auto_20160727_2333', '2020-09-24 17:51:19.154388');
INSERT INTO `django_migrations` VALUES ('34', 'social_django', '0006_partial', '2020-09-24 17:51:19.403615');
INSERT INTO `django_migrations` VALUES ('35', 'social_django', '0007_code_timestamp', '2020-09-24 17:51:19.764454');
INSERT INTO `django_migrations` VALUES ('36', 'social_django', '0008_partial_timestamp', '2020-09-24 17:51:20.099624');
INSERT INTO `django_migrations` VALUES ('37', 'trade', '0001_initial', '2020-09-24 17:51:20.856918');
INSERT INTO `django_migrations` VALUES ('38', 'trade', '0002_auto_20181127_0246', '2020-09-24 17:51:21.968671');
INSERT INTO `django_migrations` VALUES ('39', 'trade', '0003_auto_20200924_0935', '2020-09-24 17:51:27.001247');
INSERT INTO `django_migrations` VALUES ('40', 'user_operation', '0001_initial', '2020-09-24 17:51:27.509710');
INSERT INTO `django_migrations` VALUES ('41', 'user_operation', '0002_auto_20181127_0246', '2020-09-24 17:51:28.228363');
INSERT INTO `django_migrations` VALUES ('42', 'user_operation', '0003_auto_20200924_0935', '2020-09-24 17:51:32.333073');
INSERT INTO `django_migrations` VALUES ('43', 'xadmin', '0001_initial', '2020-09-24 17:51:32.914602');
INSERT INTO `django_migrations` VALUES ('44', 'xadmin', '0002_log', '2020-09-24 17:51:34.811326');
INSERT INTO `django_migrations` VALUES ('45', 'xadmin', '0003_auto_20160715_0100', '2020-09-24 17:51:36.138533');
INSERT INTO `django_migrations` VALUES ('46', 'xadmin_api', '0001_initial', '2020-09-24 17:51:36.500863');
INSERT INTO `django_migrations` VALUES ('47', 'xadmin_api', '0002_auto_20200823_1840', '2020-09-24 17:51:36.821154');
INSERT INTO `django_migrations` VALUES ('48', 'social_django', '0001_initial', '2020-09-24 17:51:36.839170');
INSERT INTO `django_migrations` VALUES ('49', 'social_django', '0003_alter_email_max_length', '2020-09-24 17:51:36.871199');
INSERT INTO `django_migrations` VALUES ('50', 'social_django', '0004_auto_20160423_0400', '2020-09-24 17:51:36.905230');
INSERT INTO `django_migrations` VALUES ('51', 'social_django', '0002_add_related_name', '2020-09-24 17:51:36.938260');
INSERT INTO `django_migrations` VALUES ('52', 'social_django', '0005_auto_20160727_2333', '2020-09-24 17:51:36.972291');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('9iz3129sg347cyotbd4tyqsq75yh1xfm', 'ZWQxMGY0NjQ3MjA3NDBjYmNkY2FhYzQwZmRlMDY3NmE2MjMwZjNhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyY2IwY2VkN2FjNmM3N2VhYjdiMzk0NDk4NDNhMTFkOTUyYmRmOGQyIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kcyJdLCIiXX0=', '2020-10-09 01:59:58.009396');
INSERT INTO `django_session` VALUES ('dsvlykniavovxfd9lg3pnahq98nbpxy7', 'ZWQxMGY0NjQ3MjA3NDBjYmNkY2FhYzQwZmRlMDY3NmE2MjMwZjNhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyY2IwY2VkN2FjNmM3N2VhYjdiMzk0NDk4NDNhMTFkOTUyYmRmOGQyIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kcyJdLCIiXX0=', '2020-10-09 17:11:07.576262');

-- ----------------------------
-- Table structure for goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `index` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_banner_goods_id_99e23129_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_banner_goods_id_99e23129_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods_banner
-- ----------------------------
INSERT INTO `goods_banner` VALUES ('6', 'banner/timg11_kzPUx2s.jpg', '0', '2020-09-25 01:45:00.000000', '5');
INSERT INTO `goods_banner` VALUES ('7', 'banner/20200917_javagjcx_zttj750x315_mSMJjyA.jpg', '0', '2020-09-25 01:53:00.000000', '1');

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `click_num` int NOT NULL,
  `sold_num` int NOT NULL,
  `fav_num` int NOT NULL,
  `goods_num` int NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext NOT NULL,
  `goods_desc` longtext NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES ('1', '452352366', 'JavaScript高级程序设计 第4版', '1259', '54', '78', '456', '129', '91', 'JavaScript高级程序设计 第4版', '<p>JavaScript高级程序设计 第4版</p>', '1', 'goods/images/JavaScript高级程序设计_第4版.jpg', '0', '0', '2020-09-24 22:22:00.000000', '102');
INSERT INTO `goods_goods` VALUES ('2', '52356k', '半小时漫画中国史1-4+世界史（共5册）（看半小时漫画，通五千年历史！漫画式科普开创者二混子新作！）（随机签章版）', '5530', '66', '98', '54', '209', '107', '新书中国史系列第4部！一到宋朝，梗就扑面而来！看半小时漫画，通五千年历史，用漫画解读历史，开启读史新潮流。漫画式科普开创者陈磊（二混子）全新力作！全网粉丝700万！读客熊猫君出品', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"新书中国史系列第4部！一到宋朝，梗就扑面而来！看半小时漫画，通五千年历史，用漫画解读历史，开启读史新潮流。漫画式科普开创者陈磊（二混子）全新力作！全网粉丝700万！读客熊猫君出品&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">新书中国史系列第4部！一到宋朝，梗就扑面而来！看半小时漫画，通五千年历史，用漫画解读历史，开启读史新潮流。漫画式科普开创者陈磊（二混子）全新力作！全网粉丝700万！读客熊猫君出品</span></h2><p><br/> </p>', '1', 'goods/images/2131.jpg', '0', '0', '2020-09-24 22:32:00.000000', '2');
INSERT INTO `goods_goods` VALUES ('4', 'hd123414', '故宫六百年（去过故宫1000多次的史学大家阎崇年完整讲述故宫600年）', '240', '435', '56', '325', '139', '68', '裸背锁线装，180度完全平摊不散架，实现无死角阅读！本书以时间为线索，将明清600多年历史从头细细捋来，分别讲述明代故宫、清代故宫、民国故宫和新中国故宫四个时期的历史', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"裸背锁线装，180度完全平摊不散架，实现无死角阅读！本书以时间为线索，将明清600多年历史从头细细捋来，分别讲述明代故宫、清代故宫、民国故宫和新中国故宫四个时期的历史&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">裸背锁线装，180度完全平摊不散架，实现无死角阅读！本书以时间为线索，将明清600多年历史从头细细捋来，分别讲述明代故宫、清代故宫、民国故宫和新中国故宫四个时期的历史</span></h2><p><br/> </p>', '1', 'goods/images/fengnm.jpg', '0', '0', '2020-09-24 23:30:00.000000', '3');
INSERT INTO `goods_goods` VALUES ('5', '345521', '秦俑两千年（关于秦俑的一切想象、现实与未知！揭秘中华民族更趋强大的基因密码，披露最新研究成果，震撼西方世界的权威著作）', '578', '655', '3412', '644', '88', '44', '一带一路重要文化输出成果，陕西省文物局和秦始皇帝陵博物馆严谨审定，珍贵照片及研究新发现首次对外公布。好看、有料、权威、翔实，五星收藏的秦俑读本！国家文物局、人民网等重磅媒体密切关注！白马时光', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"一带一路重要文化输出成果，陕西省文物局和秦始皇帝陵博物馆严谨审定，珍贵照片及研究新发现首次对外公布。好看、有料、权威、翔实，五星收藏的秦俑读本！国家文物局、人民网等重磅媒体密切关注！白马时光&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">一带一路重要文化输出成果，陕西省文物局和秦始皇帝陵博物馆严谨审定，珍贵照片及研究新发现首次对外公布。好看、有料、权威、翔实，五星收藏的秦俑读本！国家文物局、人民网等重磅媒体密切关注！白马时光</span></h2><p><br/> </p>', '1', 'goods/images/28531313-1_b_3.jpg', '0', '0', '2020-09-24 23:38:00.000000', '3');
INSERT INTO `goods_goods` VALUES ('6', '341231', '明朝那些事儿全集 增补版（新版全套9册）', '56', '63', '645', '8', '297', '198', '当年明月全新修订，全景立体式图文阅读体验，原文一字不少，新增四大板块全新内容——延伸内容、插图、图表、地图', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"当年明月全新修订，全景立体式图文阅读体验，原文一字不少，新增四大板块全新内容——延伸内容、插图、图表、地图。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">当年明月全新修订，全景立体式图文阅读体验，原文一字不少，新增四大板块全新内容——延伸内容、插图、图表、地图</span></h2><p><br/></p>', '1', 'goods/images/25102973-1_b_4.jpg', '0', '0', '2020-09-24 23:43:00.000000', '3');
INSERT INTO `goods_goods` VALUES ('7', '41341231', '钱穆谈中国历史文化：中国历史精神', '55', '99', '84', '48', '26', '17', '近代“史学四大家”之一，一代通儒钱穆经典作品，严谨与激情兼具，历史分析与现实关怀并重。高屋建瓴，多角度切入中国历史，揭示文明兴衰沉浮背后的历史命脉。黄仁宇、顾颉刚、余英时倾力推荐。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"近代“史学四大家”之一，一代通儒钱穆经典作品，严谨与激情兼具，历史分析与现实关怀并重。高屋建瓴，多角度切入中国历史，揭示文明兴衰沉浮背后的历史命脉。黄仁宇、顾颉刚、余英时倾力推荐。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">近代“史学四大家”之一，一代通儒钱穆经典作品，严谨与激情兼具，历史分析与现实关怀并重。高屋建瓴，多角度切入中国历史，揭示文明兴衰沉浮背后的历史命脉。黄仁宇、顾颉刚、余英时倾力推荐。</span></h2><p><br/></p>', '1', 'goods/images/27874588-1_b_1.jpg', '0', '0', '2020-09-24 23:48:00.000000', '3');
INSERT INTO `goods_goods` VALUES ('8', '3524', '昨天的中国，在变革中述说；今天的民国，在争议里鲜活！一个真实的民国究竟是什么样子？在这复杂世界里，我为你还原它的“本色”。', '46', '65', '45', '9', '18', '7.2', '1.全书介绍了民国这个风范十足的时代，详细叙述了民国时期文化、社会的发展和重点历史人物的悲欢离合，再现了一个真实而多彩的民国时代。\r\n　　2.珍惜而精美的图片，让民国时代的韵味更足。本书中配有大量珍贵的民国时期的照片，真实的还原那个纷扰的时代。\r\n　　3.开本小，轻型纸印刷，轻巧便携。双色插图，装帧精美，版式清新活泼，带来超值的阅读享受。', '<p>1.全书介绍了民国这个风范十足的时代，详细叙述了民国时期文化、社会的发展和重点历史人物的悲欢离合，再现了一个真实而多彩的民国时代。</p><p>　　2.珍惜而精美的图片，让民国时代的韵味更足。本书中配有大量珍贵的民国时期的照片，真实的还原那个纷扰的时代。</p><p>　　3.开本小，轻型纸印刷，轻巧便携。双色插图，装帧精美，版式清新活泼，带来超值的阅读享受。</p><p><br/></p>', '1', 'goods/images/23718018-1_b_1.jpg', '0', '0', '2020-09-24 23:49:00.000000', '3');
INSERT INTO `goods_goods` VALUES ('9', '312hh', '中国通史', '69', '65', '8', '43', '45', '19.8', '（线装典藏版、三周年纪念版 两种装帧随机发货）吕思勉代表作；公认中国通史类口碑读本，重印过百次；黄仁宇、钱穆、柏杨、易中天等推崇备至的史学大作；文笔俱佳，学、才、识足备的通史著作；教育部推荐必读书。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"（线装典藏版、三周年纪念版 两种装帧随机发货）吕思勉代表作；公认中国通史类口碑读本，重印过百次；黄仁宇、钱穆、柏杨、易中天等推崇备至的史学大作；文笔俱佳，学、才、识足备的通史著作；教育部推荐必读书。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">（线装典藏版、三周年纪念版 两种装帧随机发货）吕思勉代表作；公认中国通史类口碑读本，重印过百次；黄仁宇、钱穆、柏杨、易中天等推崇备至的史学大作；文笔俱佳，学、才、识足备的通史著作；教育部推荐必读书。</span></h2><p><br/></p>', '1', 'goods/images/23920356-1_b_11.jpg', '1', '1', '2020-09-24 23:52:00.000000', '3');
INSERT INTO `goods_goods` VALUES ('10', 'sdf66', '见识城邦·人类简史：从动物到上帝（新版）', '48', '522', '42', '59', '68', '42', '以色列新锐历史学家尤瓦尔·赫拉利代表作，第十届文津图书奖获奖作品', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"以色列新锐历史学家尤瓦尔·赫拉利代表作，第十届文津图书奖获奖作品&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">以色列新锐历史学家尤瓦尔·赫拉利代表作，第十届文津图书奖获奖作品</span></h2><p><br/></p>', '1', 'goods/images/24186019-1_b_7.jpg', '0', '0', '2020-09-24 23:54:00.000000', '4');
INSERT INTO `goods_goods` VALUES ('11', '3414', '埃及四千年（破解四千年王朝兴衰秘密的里程碑式巨作）', '42', '34', '56', '95', '118', '59', '上市7天即告售罄！当当4.23书香节读者*爱的人文社科类榜首图书！BBC古埃及历史纪录片原著主宰世界历史进程的宏大史诗《出版人周刊》《科克斯书评》2016年度图书《华盛顿邮报》等30家知名媒体联名推荐', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"上市7天即告售罄！当当4.23书香节读者*爱的人文社科类榜首图书！BBC古埃及历史纪录片原著主宰世界历史进程的宏大史诗《出版人周刊》《科克斯书评》2016年度图书《华盛顿邮报》等30家知名媒体联名推荐&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">上市7天即告售罄！当当4.23书香节读者*爱的人文社科类榜首图书！BBC古埃及历史纪录片原著主宰世界历史进程的宏大史诗《出版人周刊》《科克斯书评》2016年度图书《华盛顿邮报》等30家知名媒体联名推荐&nbsp;</span></h2><p><br/></p>', '1', 'goods/images/26917419-1_b_3.jpg', '0', '0', '2020-09-24 23:56:00.000000', '4');
INSERT INTO `goods_goods` VALUES ('12', '458732', '未来简史 一本好书 腾讯视频栏目推荐', '41', '23', '56', '11', '68', '34', '《人类简史》作者新作！人类迎来第二次认知革命，人工智能和算法将战胜人类，99%的人将沦为无用阶层！', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"《人类简史》作者新作！人类迎来第二次认知革命，人工智能和算法将战胜人类，99%的人将沦为无用阶层！&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">《人类简史》作者新作！人类迎来第二次认知革命，人工智能和算法将战胜人类，99%的人将沦为无用阶层！</span></h2><p><br/></p>', '1', 'goods/images/24170700-1_b_22.jpg', '0', '0', '2020-09-24 23:57:00.000000', '4');
INSERT INTO `goods_goods` VALUES ('13', '423gf', '切尔诺贝利：一部悲剧史（诺贝尔奖得主阿列克谢耶维奇推荐，哈佛大学教授沙希利.浦洛基新作）', '35', '55', '95', '88', '68', '29.8', '（万有引力书系）《大国的崩溃：苏联解体的台前幕后》作者、哈佛大学教授沙希利·浦洛基新作，HBO神剧未能触及的历史真相！比灾难可怕的是谎言，比谎言可怕的是遗忘', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"（万有引力书系）《大国的崩溃：苏联解体的台前幕后》作者、哈佛大学教授沙希利·浦洛基新作，HBO神剧未能触及的历史真相！比灾难可怕的是谎言，比谎言可怕的是遗忘！&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">（万有引力书系）《大国的崩溃：苏联解体的台前幕后》作者、哈佛大学教授沙希利·浦洛基新作，HBO神剧未能触及的历史真相！比灾难可怕的是谎言，比谎言可怕的是遗忘</span></h2><p><br/></p>', '1', 'goods/images/28984846-1_b_3.jpg', '0', '0', '2020-09-24 23:59:00.000000', '4');
INSERT INTO `goods_goods` VALUES ('14', '2431', '甲骨文的故事', '23', '11', '13', '51', '35', '15', '入选国家新闻出版总局向全国青少年推荐百种优秀出版物！收录甲骨学权威、世界文化遗产：殷墟考古**人董作宾先生珍贵手稿 跟随大师重返考古现场，寻找汉字源头', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"入选国家新闻出版总局向全国青少年推荐百种优秀出版物！收录甲骨学权威、世界文化遗产：殷墟考古**人董作宾先生珍贵手稿 跟随大师重返考古现场，寻找汉字源头。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">入选国家新闻出版总局向全国青少年推荐百种优秀出版物！收录甲骨学权威、世界文化遗产：殷墟考古**人董作宾先生珍贵手稿 跟随大师重返考古现场，寻找汉字源头</span></h2><p><br/></p>', '1', 'goods/images/23861304-1_b_6.jpg', '0', '0', '2020-09-25 00:00:00.000000', '5');
INSERT INTO `goods_goods` VALUES ('15', '31lll', '了不起的文明现场', '14', '31', '21', '300', '88', '44', '10个独具代表性的考古遗址，带你走入中华上下五千年的文明现场。10位负责一线勘探的考古人，详述考古发掘历程和文明背后的故事。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"10个独具代表性的考古遗址，带你走入中华上下五千年的文明现场。10位负责一线勘探的考古人，详述考古发掘历程和文明背后的故事。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">10个独具代表性的考古遗址，带你走入中华上下五千年的文明现场。10位负责一线勘探的考古人，详述考古发掘历程和文明背后的故事。</span></h2><p><br/></p>', '1', 'goods/images/28553152-1_b_11.jpg', '0', '0', '2020-09-25 00:02:00.000000', '5');
INSERT INTO `goods_goods` VALUES ('16', 'out1', '国家宝藏（青少年版）', '12', '31', '10', '120', '68', '34', '央视综艺《国家宝藏》授权，专为青少年打造的文物启蒙书。九大国家博物馆，27件镇国之宝，搭配中国经典古诗词与不为人知的文物冷知识。绿色环保印刷，附文物藏宝图+中国历史朝代表。随机附赠1张国宝守护卡。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"央视综艺《国家宝藏》授权，专为青少年打造的文物启蒙书。九大国家博物馆，27件镇国之宝，搭配中国经典古诗词与不为人知的文物冷知识。绿色环保印刷，附文物藏宝图+中国历史朝代表。随机附赠1张国宝守护卡。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">央视综艺《国家宝藏》授权，专为青少年打造的文物启蒙书。九大国家博物馆，27件镇国之宝，搭配中国经典古诗词与不为人知的文物冷知识。绿色环保印刷，附文物藏宝图+中国历史朝代表。随机附赠1张国宝守护卡。</span></h2><p><br/></p>', '1', 'goods/images/25353304-1_b_2.png', '0', '0', '2020-09-25 00:04:00.000000', '5');
INSERT INTO `goods_goods` VALUES ('17', 'dg13', '万历十五年 一本好书 腾讯视频栏目推荐', '45', '65', '84', '11', '26', '14.3', '（《人民的名义》多次提到《万历十五年》，为什么这么多人研究呢？三联书店出版黄仁宇先生的成名代表之作。万历十五年是大明王朝的转折点，腐败、敷衍，社风奢靡，都是悄悄埋葬大明王朝的导火线，值得当下深思。）', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"（《人民的名义》多次提到《万历十五年》，为什么这么多人研究呢？三联书店出版黄仁宇先生的成名代表之作。万历十五年是大明王朝的转折点，腐败、敷衍，社风奢靡，都是悄悄埋葬大明王朝的导火线，值得当下深思。）&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">（《人民的名义》多次提到《万历十五年》，为什么这么多人研究呢？三联书店出版黄仁宇先生的成名代表之作。万历十五年是大明王朝的转折点，腐败、敷衍，社风奢靡，都是悄悄埋葬大明王朝的导火线，值得当下深思。）</span></h2><p><br/></p>', '1', 'goods/images/23445575-1_b_7.jpg', '0', '0', '2020-09-25 00:06:00.000000', '6');
INSERT INTO `goods_goods` VALUES ('18', '3ht3', '枪炮、病菌与钢铁——人类社会的命运(修订版）', '52', '12', '52', '11', '55', '27.5', '人类社会发展史的另类阐释，东西方文明差异的独特审视；美国普利策奖、比尔?盖茨特别推荐作品', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"人类社会发展史的另类阐释，东西方文明差异的独特审视；美国普利策奖、比尔?盖茨特别推荐作品&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">人类社会发展史的另类阐释，东西方文明差异的独特审视；美国普利策奖、比尔?盖茨特别推荐作品</span></h2><p><br/></p>', '1', 'goods/images/24010525-1_b_6.jpg', '0', '0', '2020-09-25 00:08:00.000000', '6');
INSERT INTO `goods_goods` VALUES ('19', 'fh67', '游牧民的世界史（精装修订，《忽必烈的挑战》《疾驰的草原征服者：辽西夏金元》作者杉山正明重磅之作）', '12', '32', '11', '8', '69', '34.9', '权威作者：日本研究草原民族与蒙古历史的首席专家；一种创见：游牧民是挑起“国家”的中坚力量，支撑了欧亚大陆历史发展；梁文道、腾讯文化、新周刊、新京报推荐', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"权威作者：日本研究草原民族与蒙古历史的首席专家；一种创见：游牧民是挑起“国家”的中坚力量，支撑了欧亚大陆历史发展；梁文道、腾讯文化、新周刊、新京报推荐&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">权威作者：日本研究草原民族与蒙古历史的首席专家；一种创见：游牧民是挑起“国家”的中坚力量，支撑了欧亚大陆历史发展；梁文道、腾讯文化、新周刊、新京报推荐</span></h2><p><br/></p>', '1', 'goods/images/28481307-1_b_3.jpg', '0', '0', '2020-09-25 00:10:00.000000', '7');
INSERT INTO `goods_goods` VALUES ('20', 'kh31', '美国种族简史', '14', '8', '12', '5', '35', '24.7', '在美国这个大熔炉中，种族并未消失，但无论是各个种族还是美国这个国家，都已今非昔比。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"在美国这个大熔炉中，种族并未消失，但无论是各个种族还是美国这个国家，都已今非昔比。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">在美国这个大熔炉中，种族并未消失，但无论是各个种族还是美国这个国家，都已今非昔比。</span></h2><p><br/></p>', '1', 'goods/images/23694643-1_b_1.jpg', '0', '0', '2020-09-25 00:12:00.000000', '7');
INSERT INTO `goods_goods` VALUES ('21', '312136', '观山海 “百鬼画师”杉泽绝美诠释山海经', '3', '42', '11', '53', '84', '168', '当当独家赠送洒金宣纸仿古神兽画卷随机一款！神奇动物在哪里？中国绝美《山海经》异兽手绘图鉴震撼来袭！“博物君”张辰亮、国家博物馆讲解员河森堡重磅推荐！“2018南国书香节”十大ZUI受读者关注图书', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"当当独家赠送洒金宣纸仿古神兽画卷随机一款！神奇动物在哪里？中国绝美《山海经》异兽手绘图鉴震撼来袭！“博物君”张辰亮、国家博物馆讲解员河森堡重磅推荐！“2018南国书香节”十大ZUI受读者关注图书&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">当当独家赠送洒金宣纸仿古神兽画卷随机一款！神奇动物在哪里？中国绝美《山海经》异兽手绘图鉴震撼来袭！“博物君”张辰亮、国家博物馆讲解员河森堡重磅推荐！“2018南国书香节”十大ZUI受读者关注图书&nbsp;</span></h2><p><br/></p>', '1', 'goods/images/25278075-1_b_22.jpg', '0', '0', '2020-09-25 00:16:00.000000', '8');
INSERT INTO `goods_goods` VALUES ('22', '35hhhh', '中国古代文化常识 （插图修订第4版）', '3', '21', '13', '5', '60', '28.5', '王力教授主持并召集众多专家共同编写的关于中国古代文化常识的简明读本，出版50余年，前后历经4次重要修订，到今天仍然是大众认识中国古代文化面貌重要、全面的基础参考书。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"王力教授主持并召集众多专家共同编写的关于中国古代文化常识的简明读本，出版50余年，前后历经4次重要修订，到今天仍然是大众认识中国古代文化面貌重要、全面的基础参考书。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">王力教授主持并召集众多专家共同编写的关于中国古代文化常识的简明读本，出版50余年，前后历经4次重要修订，到今天仍然是大众认识中国古代文化面貌重要、全面的基础参考书。</span></h2><p><br/></p>', '1', 'goods/images/23590266-1_b_1.jpg', '0', '0', '2020-09-25 00:17:00.000000', '9');
INSERT INTO `goods_goods` VALUES ('23', 'kl', '果麦经典：菊与刀（畅销全球70年，销售逾3000万册；日本国民性格说明书，译文亲切易懂；10万+读者认证，销量遥遥领先）', '23', '4', '12', '66', '35', '15.8', '解读日本矛盾国民性格的经典读物，学术著作因流畅精彩的译文变得相当好看。它直接影响了战后美日关系格局，是社会研究直接运用于政治实际操作的杰出范例！就从这里开始了解日本！', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"解读日本矛盾国民性格的经典读物，学术著作因流畅精彩的译文变得相当好看。它直接影响了战后美日关系格局，是社会研究直接运用于政治实际操作的杰出范例！就从这里开始了解日本！&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">解读日本矛盾国民性格的经典读物，学术著作因流畅精彩的译文变得相当好看。它直接影响了战后美日关系格局，是社会研究直接运用于政治实际操作的杰出范例！就从这里开始了解日本！</span></h2><p><br/></p>', '1', 'goods/images/23981714-1_b_10.jpg', '0', '0', '2020-09-25 00:19:00.000000', '10');
INSERT INTO `goods_goods` VALUES ('24', '341ff', '罗生门', '1', '4', '6', '21', '38', '14.8', '人如果不自私，就无法活下去，哪里有软弱，哪里就有谎言。浮世绘彩图纪念版，暗黑人性的深度书写，全面领略“鬼才”作家芥川龙之介的千面风骚', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"人如果不自私，就无法活下去，哪里有软弱，哪里就有谎言。浮世绘彩图纪念版，暗黑人性的深度书写，全面领略“鬼才”作家芥川龙之介的千面风骚。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">人如果不自私，就无法活下去，哪里有软弱，哪里就有谎言。浮世绘彩图纪念版，暗黑人性的深度书写，全面领略“鬼才”作家芥川龙之介的千面风骚</span></h2><p><br/></p>', '1', 'goods/images/25317183-1_b_6.jpg', '0', '0', '2020-09-25 00:20:00.000000', '10');
INSERT INTO `goods_goods` VALUES ('25', 'wo', '中国妖怪故事（全集）：中国妖怪大百科全书', '3', '6', '12', '45', '128', '64', '低音出品|中国妖怪大百科全书，辑录历代典籍文献近300部，整理1080种妖怪及其故事，还原根植于中国的日本妖怪本来面貌。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"低音出品|中国妖怪大百科全书，辑录历代典籍文献近300部，整理1080种妖怪及其故事，还原根植于中国的日本妖怪本来面貌。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">低音出品|中国妖怪大百科全书，辑录历代典籍文献近300部，整理1080种妖怪及其故事，还原根植于中国的日本妖怪本来面貌。</span></h2><p><br/></p>', '1', 'goods/images/28519528-1_b_5.jpg', '0', '0', '2020-09-25 00:22:00.000000', '11');
INSERT INTO `goods_goods` VALUES ('26', '23412', '南怀瑾选集：论语别裁（上下册）（大陆正版授权南怀瑾系列）', '11', '7', '65', '100', '88', '55', '南怀瑾先生及台湾老古公司授权！南怀瑾先生旁征博引、拈提古今讲说《论语》精义，“别出心裁”说透人生大智慧。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"南怀瑾先生及台湾老古公司授权！南怀瑾先生旁征博引、拈提古今讲说《论语》精义，“别出心裁”说透人生大智慧。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">南怀瑾先生及台湾老古公司授权！南怀瑾先生旁征博引、拈提古今讲说《论语》精义，“别出心裁”说透人生大智慧。</span></h2><p><br/></p>', '1', 'goods/images/27903897-1_b_2.jpg', '0', '0', '2020-09-25 00:26:00.000000', '16');
INSERT INTO `goods_goods` VALUES ('27', '542gg', '理想国', '1', '2', '3', '500', '35', '17.5', '（畅销普及版）（荣登清华大学图书馆借阅榜榜首。各大榜单力荐，高知学霸热读。）', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"（畅销普及版）（荣登清华大学图书馆借阅榜榜首。各大榜单力荐，高知学霸热读。）&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">（畅销普及版）（荣登清华大学图书馆借阅榜榜首。各大榜单力荐，高知学霸热读。）</span></h2><p><br/></p>', '1', 'goods/images/22765017-1_b_18.jpg', '0', '0', '2020-09-25 00:30:00.000000', '17');
INSERT INTO `goods_goods` VALUES ('28', '2hhj', '易经杂说（当当独家定制版）', '12', '3', '12', '44', '48', '24', '南怀瑾先生及其法定继承人独家授权,完整准确呈现南师著述的定本种子书,当当网独家定制,典藏必备.', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"南怀瑾先生及其法定继承人独家授权,完整准确呈现南师著述的定本种子书,当当网独家定制,典藏必备.&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">南怀瑾先生及其法定继承人独家授权,完整准确呈现南师著述的定本种子书,当当网独家定制,典藏必备.</span></h2><p><br/></p>', '1', 'goods/images/26914951-1_b_8.png', '0', '0', '2020-09-25 00:32:00.000000', '18');
INSERT INTO `goods_goods` VALUES ('29', '3142jy', '钱穆先生著作系列：中国思想史（简体版 单行本）', '12', '4', '1', '444', '32', '24', '钱穆先生著作简体新校本，经钱胡美琦女士授权出版，以钱宾四先生全集编辑委员会所编《钱宾四先生全集》繁体版为本，进行重排新校，订正其中体例、格式、标号、文字等方面存在的疏误，内容保持《全集》版本原貌。《中国思想史》系作者应张晓峰先生编纂“现代国民基本知识丛书”之约稿而写成。一九五二年在台湾由中华文化出版事业委员会出版。一九七七年，钱穆先生重校此书，略作增添改定，由台湾学生书局重排印行。收入《全集》时，编者即以学生书局版本为底本进行整理，对原书引文的出处尽量查明注出；*后《孙中山》一篇，后来作者曾单文发表，并于篇首增写一段文字，也全部收入《全集》版本。', '<p><span style=\"color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);\">钱穆先生著作简体新校本，经钱胡美琦女士授权出版，以钱宾四先生全集编辑委员会所编《钱宾四先生全集》繁体版为本，进行重排新校，订正其中体例、格式、标号、文字等方面存在的疏误，内容保持《全集》版本原貌。《中国思想史》系作者应张晓峰先生编纂“现代国民基本知识丛书”之约稿而写成。一九五二年在台湾由中华文化出版事业委员会出版。一九七七年，钱穆先生重校此书，略作增添改定，由台湾学生书局重排印行。收入《全集》时，编者即以学生书局版本为底本进行整理，对原书引文的出处尽量查明注出；*后《孙中山》一篇，后来作者曾单文发表，并于篇首增写一段文字，也全部收入《全集》版本。</span></p>', '1', 'goods/images/22765854-1_b_3.jpg', '0', '0', '2020-09-25 00:34:00.000000', '19');
INSERT INTO `goods_goods` VALUES ('30', '412ggt', '习近平谈治国理政（第三卷）（中文平装）', '12', '344', '12', '33', '88', '64', '《习近平谈治国理政》*卷、第二卷出版以来，在国内外产生了强烈反响。党的十九大以来，习近平总书记在领导推进新时代治国理政的实践中，又发表一系列重要论述，提出许多具有原创性、时代性、指导性的重大思想观点，进一步丰富和发展了党的理论创新成果。\r\n\r\n《习近平谈治国理政》第三卷收入了习近平总书记在2017年10月18日至2020年1月13日期间的报告、讲话、谈话、演讲、批示、指示、贺信等92篇，分为19个专题。为了便于读者阅读，该书作了必要注释。该书还收入习近平总书记这段时间内的图片41幅。\r\n\r\n《习近平谈治国理政》第三卷生动记录了党的十九大以来以习近平同志为核心的党中央，着眼中华民族伟大复兴的战略全局和世界百年未有之大变局，不忘初心、牢记使命，统揽伟大斗争、伟大工程、伟大事业、伟大梦想，团结带领全党全国各族人民推动党和国家各项事业取得新的重大进展的伟大实践，集中展示了马克思主义中国化的*成果，充分体现了我们党为推动构建人类命运共同体贡献的智慧方案，是全面系统反映习近平新时代中国特色社会主义思想的权威著作。', '<p><span id=\"content-show\" style=\"margin: 0px; padding: 0px;\">《习近平谈治国理政》*卷、第二卷出版以来，在国内外产生了强烈反响。党的十九大以来，习近平总书记在领导推进新时代治国理政的实践中，又发表一系列重要论述，提出许多具有原创性、时代性、指导性的重大思想观点，进一步丰富和发展了党的理论创新成果。<br style=\"margin: 0px; padding: 0px;\"/><br style=\"margin: 0px; padding: 0px;\"/>《习近平谈治国理政》第三卷收入了习近平总书记在2017年10月18日至2020年1月13日期间的报告、讲话、谈话、演讲、批示、指示、贺信等92篇，分为19个专题。为了便于读者阅读，该书作了必要注释。该书还收入习近平总书记这段时间内的图片41幅。<br style=\"margin: 0px; padding: 0px;\"/><br style=\"margin: 0px; padding: 0px;\"/>《习近平谈治国理政》第三卷生动记录了党的十九大以来以习近平同志为核心的党中央，着眼中华民族伟大复兴的战略全局和世界百年未有之大变局，不忘初心、牢记使命，统揽伟大斗争、伟大工程、伟大事业、伟大梦想，团结带领全党全国各族人民推动党和国家各项事业取得新的重大进展的伟大实践，集中展示了马克思主义中国化的*成果，充分体现了我们党为推动构建人类命运共同体贡献的智慧方案，是全面系统反映习近平新时代中国特色社会主义思想的权威著作。</span></p>', '1', 'goods/images/28978247-1_b_4.jpg', '0', '0', '2020-09-25 00:36:00.000000', '22');
INSERT INTO `goods_goods` VALUES ('31', '432gty', '毛泽东选集（全四册，32开）', '11', '14', '2', '455', '81', '55.8', '《*选集(套装全4册)(普及本)》包括了*同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《*选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著人，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。\r\n　　下面有几点属于出版事务的声明：\r\n　　*，现在出版的这个选集，还是不很完备的。由于国民党反动派对于革命文献的毁灭，由于在长期战争中革命文献的散失，我们现在还不能够找到*同志的全部著作，特别是*同志所写的许多书信和电报（这些在*同志著作中占很大的部分）。\r\n　　第二，有些曾经流行的著作，例如《农村调查》，遵照著者的意见，没有编入；又如《经济问题与财政问题》，也遵照著者的意见，只编进了其中的*章（即《关于过去工作的基本总结》）。', '<p><span style=\"color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);\">《*选集(套装全4册)(普及本)》包括了*同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《*选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著人，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。</span><br style=\"margin: 0px; padding: 0px; color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);\">　　下面有几点属于出版事务的声明：</span><br style=\"margin: 0px; padding: 0px; color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);\">　　*，现在出版的这个选集，还是不很完备的。由于国民党反动派对于革命文献的毁灭，由于在长期战争中革命文献的散失，我们现在还不能够找到*同志的全部著作，特别是*同志所写的许多书信和电报（这些在*同志著作中占很大的部分）。</span><br style=\"margin: 0px; padding: 0px; color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);\">　　第二，有些曾经流行的著作，例如《农村调查》，遵照著者的意见，没有编入；又如《经济问题与财政问题》，也遵照著者的意见，只编进了其中的*章（即《关于过去工作的基本总结》）。</span></p>', '1', 'goods/images/23413230-1_b_1.jpg', '0', '0', '2020-09-25 00:38:00.000000', '23');
INSERT INTO `goods_goods` VALUES ('32', '24yrtui', '注定一战：中美能避免修昔底德陷阱吗？ 中美贸易战必读！', '235', '43', '34', '12', '78', '39', '贸易战必读。亚马逊年度*历史类图书，《纽约时报》、《金融时报》、《伦敦时报》年度畅销书。哈佛大学历史学家、美国前助理国防部长格雷厄姆·艾利森，横跨500年历史、剖析21世纪zui重要的大国关系', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"贸易战必读。亚马逊年度*历史类图书，《纽约时报》、《金融时报》、《伦敦时报》年度畅销书。哈佛大学历史学家、美国前助理国防部长格雷厄姆·艾利森，横跨500年历史、剖析21世纪zui重要的大国关系&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">贸易战必读。亚马逊年度*历史类图书，《纽约时报》、《金融时报》、《伦敦时报》年度畅销书。哈佛大学历史学家、美国前助理国防部长格雷厄姆·艾利森，横跨500年历史、剖析21世纪zui重要的大国关系&nbsp;</span></h2><p><br/></p>', '1', 'goods/images/25580397-1_b_5.jpg', '0', '0', '2020-09-25 00:40:00.000000', '24');
INSERT INTO `goods_goods` VALUES ('33', '234shght', '深入学习习近平关于教育的重要论述', '1', '34', '2', '111', '45', '35.5', '本书是*本也是*一本由中央批准出版的，对*总书记关于教育的论述进行系统梳理和深入解读的权威著作，是教育系统进行教师培训、党员学习、干部进修的必备书。适用于我国各级、各层次、各领域的广大教育工作者，目前我国仅教师人数就达一千三百余万，市场潜力巨大。\r\n教育部组织编写，*本中央批准出版的对习近平总书记关于教育重要论述进行全面总结和深入解读的权威读本。陈宝生部长明确要求，教育战线要把本书作为开展“不忘初心、牢记使命”主题教育的重要参考书。', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style-type: none; border: 0px; color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: 宋体;\">本书是*本也是*一本由中央批准出版的，对*总书记关于教育的论述进行系统梳理和深入解读的权威著作，是教育系统进行教师培训、党员学习、干部进修的必备书。适用于我国各级、各层次、各领域的广大教育工作者，目前我国仅教师人数就达一千三百余万，市场潜力巨大。<br style=\"margin: 0px; padding: 0px;\"/>教育部组织编写，*本中央批准出版的对习近平总书记关于教育重要论述进行全面总结和深入解读的权威读本。陈宝生部长明确要求，教育战线要把本书作为开展“不忘初心、牢记使命”主题教育的重要参考书。</span></strong></p><p><span style=\"color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;</span></p><p><br/></p>', '1', 'goods/images/27876708-1_b_9.png', '0', '0', '2020-09-25 00:42:00.000000', '25');
INSERT INTO `goods_goods` VALUES ('34', '412', '乡土中国（精装）2019年语文新课标课外必读图书！畅销十年！费孝通著作！累计评价10万+', '12', '4', '4', '22', '21', '15', '2019年语文新课标课外必读图书！费孝通著作 学界共认的中国乡土社会传统文化和社会结构理论研究的代表作', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"2019年语文新课标课外必读图书！费孝通著作 学界共认的中国乡土社会传统文化和社会结构理论研究的代表作&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">2019年语文新课标课外必读图书！费孝通著作 学界共认的中国乡土社会传统文化和社会结构理论研究的代表作</span></h2><p><br/></p>', '1', 'goods/images/23678069-1_b_6.jpg', '0', '0', '2020-09-25 00:44:00.000000', '28');
INSERT INTO `goods_goods` VALUES ('35', '412tyu', '末日松茸：资本主义废墟上的生活可能（薄荷实验）', '23', '1', '23', '4', '79', '39.9', '日本美食家、资本主义商人、老挝丛林战士、工业林、中国牧羊人、芬兰乡村向导……如何讲述珍稀松茸供应链的故事？\r\n乌托邦想象看起来困在一个单程未来里，身处一个充满不确定性的世界，人类要如何自处?又何去何从? \r\n在一朵缠绕着人类经济活动、种族历史、自然生态及末世生存策略的独特蘑菇当中，或许藏有答案。\r\n\r\n在横跨日本东京与京都、美国俄勒冈州、中国云南、芬兰拉普兰等地的田野调查中，作者跟随一条鲜为人知的商品供应链，一步步呈现珍稀松茸的“身份转译”：在废弃工业林悄悄破土而出，被遁入山林寻求自由的瑶族、苗族与东南亚裔采摘者收集，再通过竞价激烈的保值票市场，累积层层价值进入日本，化身为带有强烈象征的礼物。\r\n松茸浓缩在如此奇特的跨地理、跨文化转译过程中，也提一个更宏观的提问——在迈进“人类世”的此刻，不强调发展与进步的社会是什么模样? 人类是否能与各物种保有互不和谐、但又无须掠夺的和平共存?', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style-type: none; border: 0px; color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">日本美食家、资本主义商人、老挝丛林战士、工业林、中国牧羊人、芬兰乡村向导……如何讲述珍稀松茸供应链的故事？<br style=\"margin: 0px; padding: 0px;\"/>乌托邦想象看起来困在一个单程未来里，身处一个充满不确定性的世界，人类要如何自处?又何去何从?&nbsp;<br style=\"margin: 0px; padding: 0px;\"/>在一朵缠绕着人类经济活动、种族历史、自然生态及末世生存策略的独特蘑菇当中，或许藏有答案。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style-type: none; border: 0px; color: rgb(101, 101, 101); font-family: &quot;Hiragino Sans GB&quot;, Verdana, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">在横跨日本东京与京都、美国俄勒冈州、中国云南、芬兰拉普兰等地的田野调查中，作者跟随一条鲜为人知的商品供应链，一步步呈现珍稀松茸的“身份转译”：在废弃工业林悄悄破土而出，被遁入山林寻求自由的瑶族、苗族与东南亚裔采摘者收集，再通过竞价激烈的保值票市场，累积层层价值进入日本，化身为带有强烈象征的礼物。<br style=\"margin: 0px; padding: 0px;\"/>松茸浓缩在如此奇特的跨地理、跨文化转译过程中，也提一个更宏观的提问——在迈进“人类世”的此刻，不强调发展与进步的社会是什么模样? 人类是否能与各物种保有互不和谐、但又无须掠夺的和平共存?</p><p><br/></p>', '1', 'goods/images/28984990-1_b_3.jpg', '0', '0', '2020-09-25 00:45:00.000000', '29');
INSERT INTO `goods_goods` VALUES ('36', '4367yt', '见识城邦·娱乐至死', '3', '4', '12', '455', '38', '25.6', '媒介文化研究大师尼尔·波兹曼20年经典畅销作品', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"媒介文化研究大师尼尔·波兹曼20年经典畅销作品&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">媒介文化研究大师尼尔·波兹曼20年经典畅销作品</span></h2><p><br/></p>', '1', 'goods/images/23687866-1_b_1.jpg', '0', '0', '2020-09-25 00:47:00.000000', '30');
INSERT INTO `goods_goods` VALUES ('37', 'retas11', '走出唯一真理观（陈嘉映2020年重磅新作！）', '34', '24', '24', '111', '58', '34', '陈嘉映2007—2018自选集，《何为良好生活》后新作，我们之所求，首先不是让别人明白，而是求自己明白。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"陈嘉映2007—2018自选集，《何为良好生活》后新作，我们之所求，首先不是让别人明白，而是求自己明白。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">陈嘉映2007—2018自选集，《何为良好生活》后新作，我们之所求，首先不是让别人明白，而是求自己明白。</span></h2><p><br/></p>', '1', 'goods/images/28537917-1_b_10.jpg', '0', '0', '2020-09-25 00:49:00.000000', '31');
INSERT INTO `goods_goods` VALUES ('38', '421g', '中华人民共和国民法典(32开压纹烫金版 附草案说明) 2020年6月新版 团购电话：4001066666转6', '12', '44', '23', '41', '28', '8.1', '民法典是新中国首部以“法典”命名的法律，是新时代我国社会主义法治建设的重大成果，是为百姓生活量身定制的权利宝典。自2021年1月1日起施行。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"民法典是新中国首部以“法典”命名的法律，是新时代我国社会主义法治建设的重大成果，是为百姓生活量身定制的权利宝典。自2021年1月1日起施行。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">民法典是新中国首部以“法典”命名的法律，是新时代我国社会主义法治建设的重大成果，是为百姓生活量身定制的权利宝典。自2021年1月1日起施行。</span></h2><p><br/></p>', '1', 'goods/images/28553129-1_b_12.jpg', '0', '0', '2020-09-25 00:50:00.000000', '34');
INSERT INTO `goods_goods` VALUES ('39', '231256436', '中华人民共和国劳动法·实用版（2018版）', '4', '32', '1', '424', '20', '10', '专业出版，法律文本规范，条文解读详致，附录实用，附赠电子版。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"专业出版，法律文本规范，条文解读详致，附录实用，附赠电子版。&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">专业出版，法律文本规范，条文解读详致，附录实用，附赠电子版。</span></h2><p><br/></p>', '1', 'goods/images/25573679-1_b_3.jpg', '0', '0', '2020-09-25 00:52:00.000000', '35');
INSERT INTO `goods_goods` VALUES ('40', '24fds', '法医秦明 逝者之书：不留心死亡，便看不见生活', '27', '5432', '23', '450', '48', '24', '28种死法，3000具尸体，只有法医才敢分享的死亡教育课，好奇心让你翻开它，求生欲让你看不停；随书附赠生命之卡', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"28种死法，3000具尸体，只有法医才敢分享的死亡教育课，好奇心让你翻开它，求生欲让你看不停；随书附赠生命之卡&nbsp;传统文化节,社科5折封顶,点击进入！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">28种死法，3000具尸体，只有法医才敢分享的死亡教育课，好奇心让你翻开它，求生欲让你看不停；随书附赠生命之卡</span></h2><p><br/></p>', '1', 'goods/images/28541530-1_b_2.jpg', '1', '1', '2020-09-25 00:53:00.000000', '36');
INSERT INTO `goods_goods` VALUES ('41', '24dfhh', '一本书读懂财报（全新修订版）', '24', '2345', '4', '24', '0', '0', '清华大学会计系系主任、喜马拉雅头部KOL肖星倾囊相授，接地气、易上手的财报分析技巧，豆瓣8.9分的经典之作全新修订，专门为财务零基础的初学者和非财务专业人士编写', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"清华大学会计系系主任、喜马拉雅头部KOL肖星倾囊相授，接地气、易上手的财报分析技巧，豆瓣8.9分的经典之作全新修订，专门为财务零基础的初学者和非财务专业人士编写&nbsp;&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">清华大学会计系系主任、喜马拉雅头部KOL肖星倾囊相授，接地气、易上手的财报分析技巧，豆瓣8.9分的经典之作全新修订，专门为财务零基础的初学者和非财务专业人士编写</span></h2><p><br/></p>', '1', 'goods/images/27931895-1_b_3.jpg', '0', '0', '2020-09-25 00:54:00.000000', '40');
INSERT INTO `goods_goods` VALUES ('42', '234123asf', '影响力（经典版）（新版）（团购，请致电400-106-6666转6）', '24', '21', '4', '24', '54', '32.9', '影响力作者新作《先发影响力》，解锁“预先说服”新技能！风靡全球三十载，《财富》杂志鼎力推荐的75本商业图书之一，当今社会心理学广为引述的经典著作！（团购100册以上，请致电010-57993380）', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"影响力作者新作《先发影响力》，解锁“预先说服”新技能！风靡全球三十载，《财富》杂志鼎力推荐的75本商业图书之一，当今社会心理学广为引述的经典著作！（团购100册以上，请致电010-57993380）&nbsp;&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">影响力作者新作《先发影响力》，解锁“预先说服”新技能！风靡全球三十载，《财富》杂志鼎力推荐的75本商业图书之一，当今社会心理学广为引述的经典著作！（团购100册以上，请致电010-57993380）</span></h2><p><br/></p>', '1', 'goods/images/24028342-1_b_9.jpg', '0', '0', '2020-09-25 00:56:00.000000', '41');
INSERT INTO `goods_goods` VALUES ('43', 'asf5', '运营之光：我的互联网运营方法论与自白 2.0', '24', '14', '24', '12', '99', '49.5', '百度阿里腾讯美团点评*滴滴内部广泛传阅的运营力作，豆瓣“十大商业经管类好书”', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"百度阿里腾讯美团点评*滴滴内部广泛传阅的运营力作，豆瓣“十大商业经管类好书”&nbsp;&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">百度阿里腾讯美团点评*滴滴内部广泛传阅的运营力作，豆瓣“十大商业经管类好书”</span></h2><p><br/></p>', '1', 'goods/images/25062899-1_b_3.jpg', '0', '0', '2020-09-25 00:57:00.000000', '42');
INSERT INTO `goods_goods` VALUES ('44', '24135', '股票大作手回忆录', '2', '456', '2', '4444', '49.8', '21.5', '滚雪球、炼金术、超额收益、交易心理的教科书，《金融时报》推荐的投资“圣经”。巴菲特坦言：没有读过这本书，盈利基本上等于妄谈。', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"滚雪球、炼金术、超额收益、交易心理的教科书，《金融时报》推荐的投资“圣经”。巴菲特坦言：没有读过这本书，盈利基本上等于妄谈。&nbsp;&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">滚雪球、炼金术、超额收益、交易心理的教科书，《金融时报》推荐的投资“圣经”。巴菲特坦言：没有读过这本书，盈利基本上等于妄谈。</span></h2><p><br/></p>', '1', 'goods/images/25194824-1_b_3.jpg', '0', '0', '2020-09-25 00:59:00.000000', '46');
INSERT INTO `goods_goods` VALUES ('45', '32145sdf', 'Python基础教程（第3版）', '29', '4512', '52', '455', '99', '69.8', '【图灵程序设计丛书】Python3.5编程从入门到实践 Python入门佳作 机器学习 人工智能 数据处理 网络爬虫热门编程语言 累计销售20万册', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"【图灵程序设计丛书】Python3.5编程从入门到实践 Python入门佳作 机器学习 人工智能 数据处理 网络爬虫热门编程语言 累计销售20万册&nbsp;&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">【图灵程序设计丛书】Python3.5编程从入门到实践 Python入门佳作 机器学习 人工智能 数据处理 网络爬虫热门编程语言 累计销售20万册</span></h2><p><br/> </p>', '1', 'goods/images/25218035-1_b_2.jpg', '1', '1', '2020-09-25 01:05:00.000000', '98');
INSERT INTO `goods_goods` VALUES ('46', '2sdfsd', 'Python核心编程 第3版', '29', '14', '23', '45', '99', '44.1', '畅销经典的Python基础教程学习手册进阶图书 兼顾Python2和Python3 机器学习 数据处理 网络爬虫热门编程语言 Python开发人员的案头常备', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"畅销经典的Python基础教程学习手册进阶图书 兼顾Python2和Python3 机器学习 数据处理 网络爬虫热门编程语言 Python开发人员的案头常备&nbsp;&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">畅销经典的Python基础教程学习手册进阶图书 兼顾Python2和Python3 机器学习 数据处理 网络爬虫热门编程语言 Python开发人员的案头常备</span></h2><p><br/></p>', '1', 'goods/images/23961748-1_b_10.jpg', '0', '0', '2020-09-25 01:06:00.000000', '98');
INSERT INTO `goods_goods` VALUES ('47', '3435sdfs', '中国旅游地图册（大字版）不仅仅是旅游攻略，更是一种生活方式，一场文化传播。覆盖全国的交通、旅游地图，全国旅游景点介绍', '24', '5', '2', '53', '19.5', '25', '2020年全新上市 全国各省市自驾车旅游线路 大幅面地图 清晰易读 中国旅游景点地图 自驾游旅游攻略', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"2020年全新上市 全国各省市自驾车旅游线路 大幅面地图 清晰易读 中国旅游景点地图 自驾游旅游攻略&nbsp;文化正当潮，进入生活好书5折封顶！&gt;&gt;混知日历2021，做美人/帅哥，不白吃！&gt;&gt;&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">2020年全新上市 全国各省市自驾车旅游线路 大幅面地图 清晰易读 中国旅游景点地图 自驾游旅游攻略</span></h2><p><br/></p>', '1', 'goods/images/26438446-1_b_2.jpg', '0', '0', '2020-09-25 01:07:00.000000', '64');
INSERT INTO `goods_goods` VALUES ('48', '34sdgh', '指数基金投资指南', '24', '51', '255', '2555', '59', '36.5', '不懂股票、不看财报、不怕下跌，新手一看就懂的稳健投资策略 雪球大V银行螺丝钉，手把手教你定投致富', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"不懂股票、不看财报、不怕下跌，新手一看就懂的稳健投资策略 雪球大V银行螺丝钉，手把手教你定投致富&nbsp;&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">不懂股票、不看财报、不怕下跌，新手一看就懂的稳健投资策略 雪球大V银行螺丝钉，手把手教你定投致富</span></h2><p><br/></p>', '1', 'goods/images/25190224-1_b_9.jpg', '0', '0', '2020-09-25 01:09:00.000000', '47');
INSERT INTO `goods_goods` VALUES ('49', '23sdgg', '人文地理学（第三版）', '2', '45', '6', '24', '49', '39.5', '陈慧琳主编', '<h2 style=\"margin: 0px; padding: 6px 0px 0px; font-size: 16px; font-weight: 400; list-style-type: none; border: 0px; max-height: 96px; overflow: hidden; line-height: 24px; color: rgb(100, 100, 100); font-family: Verdana, &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"head_title_name\" title=\"陈慧琳主编&nbsp;风靡全球的科普英文原版书《神奇校车》上线啦，当当独家，重磅推荐，点击抢先看！&nbsp;\" style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50);\">陈慧琳主编</span></h2><p><br/></p>', '1', 'goods/images/27903598-1_b_4.jpg', '0', '0', '2020-09-25 01:11:00.000000', '76');

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods_goodsbrand
-- ----------------------------
INSERT INTO `goods_goodsbrand` VALUES ('1', '生而为人', '人生百态', 'brands/top_bg.jpg', '2020-09-25 01:16:00.000000', '1');

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `category_type` int NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` (`parent_category_id`),
  CONSTRAINT `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
INSERT INTO `goods_goodscategory` VALUES ('1', '人文社科', 'renwen', '人类历史发展条目', '1', '0', '2020-09-24 21:33:00.000000', null);
INSERT INTO `goods_goodscategory` VALUES ('2', '历史', 'lishi', '时间追溯', '2', '0', '2020-09-24 21:34:00.000000', '1');
INSERT INTO `goods_goodscategory` VALUES ('3', '中国史', 'chinashi', '中国历史', '3', '0', '2020-09-24 21:35:00.000000', '2');
INSERT INTO `goods_goodscategory` VALUES ('4', '世界史', 'worldshi', '世界历史', '3', '0', '2020-09-24 21:36:00.000000', '2');
INSERT INTO `goods_goodscategory` VALUES ('5', '文物考古', 'kaogu', '历史探寻', '3', '0', '2020-09-24 21:36:00.000000', '2');
INSERT INTO `goods_goodscategory` VALUES ('6', '历史随笔', 'suibi', '历史的痕迹', '3', '0', '2020-09-24 21:37:00.000000', '2');
INSERT INTO `goods_goodscategory` VALUES ('7', '民族史', 'mzushi', '民族历史', '3', '0', '2020-09-24 21:38:00.000000', '2');
INSERT INTO `goods_goodscategory` VALUES ('8', '文化', 'wenhua', '文化典籍', '2', '0', '2020-09-24 21:38:00.000000', '1');
INSERT INTO `goods_goodscategory` VALUES ('9', '传统文化', 'wenhua12', '传统的历史', '3', '0', '2020-09-24 21:39:00.000000', '8');
INSERT INTO `goods_goodscategory` VALUES ('10', '各国文化', 'wenhuawo', '其他国家文化', '3', '0', '2020-09-24 21:39:00.000000', '8');
INSERT INTO `goods_goodscategory` VALUES ('11', '神秘文化', 'wenhyua', '探寻神秘', '3', '0', '2020-09-24 21:40:00.000000', '8');
INSERT INTO `goods_goodscategory` VALUES ('12', '地域文化', '3123', '不同地方文化', '3', '0', '2020-09-24 21:40:00.000000', '8');
INSERT INTO `goods_goodscategory` VALUES ('13', '宗教/哲学', '哲学', '智慧结晶', '2', '0', '2020-09-24 21:40:00.000000', '1');
INSERT INTO `goods_goodscategory` VALUES ('14', '其他', '23123', '其他', '3', '0', '2020-09-24 21:41:00.000000', '2');
INSERT INTO `goods_goodscategory` VALUES ('15', '其他', '2312334', '其他', '3', '0', '2020-09-24 21:41:00.000000', '8');
INSERT INTO `goods_goodscategory` VALUES ('16', '古代哲学', '3123123124', '古代人智慧', '3', '0', '2020-09-24 21:42:00.000000', '13');
INSERT INTO `goods_goodscategory` VALUES ('17', '世界哲学', '3768', '全世界哲学', '3', '0', '2020-09-24 21:42:00.000000', '13');
INSERT INTO `goods_goodscategory` VALUES ('18', '周易', '76586678', '先天十六卦', '3', '0', '2020-09-24 21:42:00.000000', '13');
INSERT INTO `goods_goodscategory` VALUES ('19', '近现代哲学', '6753', '近现代智慧', '3', '0', '2020-09-24 21:43:00.000000', '13');
INSERT INTO `goods_goodscategory` VALUES ('20', '其他', '56756', '其他', '3', '0', '2020-09-24 21:43:00.000000', '13');
INSERT INTO `goods_goodscategory` VALUES ('21', '政治', '845', '政治类读物', '2', '0', '2020-09-24 21:44:00.000000', '1');
INSERT INTO `goods_goodscategory` VALUES ('22', '国家政治', '43', '国家的智慧', '3', '0', '2020-09-24 21:44:00.000000', '21');
INSERT INTO `goods_goodscategory` VALUES ('23', '领袖著作', '35879', '13414242', '3', '0', '2020-09-24 21:44:00.000000', '21');
INSERT INTO `goods_goodscategory` VALUES ('24', '外交关系', '543', '外交智慧', '3', '0', '2020-09-24 21:45:00.000000', '21');
INSERT INTO `goods_goodscategory` VALUES ('25', '公共管理', '544562', '管理智慧', '3', '0', '2020-09-24 21:45:00.000000', '21');
INSERT INTO `goods_goodscategory` VALUES ('26', '其他', '37', '其他', '3', '0', '2020-09-24 21:46:00.000000', '21');
INSERT INTO `goods_goodscategory` VALUES ('27', '社会科学', '5681', '社会科学', '2', '0', '2020-09-24 21:46:00.000000', '1');
INSERT INTO `goods_goodscategory` VALUES ('28', '社会学', '23s', '社会学', '3', '0', '2020-09-24 21:47:00.000000', '27');
INSERT INTO `goods_goodscategory` VALUES ('29', '文化人类学', '32412', '文化人类学', '3', '0', '2020-09-24 21:47:00.000000', '27');
INSERT INTO `goods_goodscategory` VALUES ('30', '新闻传播', '4124879', '新闻传播', '3', '0', '2020-09-24 21:48:00.000000', '27');
INSERT INTO `goods_goodscategory` VALUES ('31', '名家作品', '542354353', '名家作品', '3', '0', '2020-09-24 21:49:00.000000', '27');
INSERT INTO `goods_goodscategory` VALUES ('32', '其他', '543534', '其他', '3', '0', '2020-09-24 21:49:00.000000', '27');
INSERT INTO `goods_goodscategory` VALUES ('33', '法律', '4666', '法律', '2', '0', '2020-09-24 21:49:00.000000', '1');
INSERT INTO `goods_goodscategory` VALUES ('34', '民法', '523469', '民法', '3', '0', '2020-09-24 21:50:00.000000', '33');
INSERT INTO `goods_goodscategory` VALUES ('35', '经济法', '57457s', '经济法', '3', '0', '2020-09-24 21:51:00.000000', '33');
INSERT INTO `goods_goodscategory` VALUES ('36', '刑法', '5309', '理论法学', '3', '0', '2020-09-24 21:51:00.000000', '33');
INSERT INTO `goods_goodscategory` VALUES ('37', '其他', 'cff', '其他', '3', '0', '2020-09-24 21:51:00.000000', '33');
INSERT INTO `goods_goodscategory` VALUES ('38', '经管', '234s', '经济管理', '1', '0', '2020-09-24 21:51:00.000000', null);
INSERT INTO `goods_goodscategory` VALUES ('39', '经济', 'fgh', '经济', '2', '0', '2020-09-24 21:52:00.000000', '38');
INSERT INTO `goods_goodscategory` VALUES ('40', '会计', '645654', '会计学', '3', '0', '2020-09-24 21:52:00.000000', '39');
INSERT INTO `goods_goodscategory` VALUES ('41', '市场营销', '345346', '市场营销', '3', '0', '2020-09-24 21:53:00.000000', '39');
INSERT INTO `goods_goodscategory` VALUES ('42', '电子商务', '4326536', '电子商务', '3', '0', '2020-09-24 21:53:00.000000', '39');
INSERT INTO `goods_goodscategory` VALUES ('43', '商务沟通', '5523', '商务沟通', '3', '0', '2020-09-24 21:53:00.000000', '39');
INSERT INTO `goods_goodscategory` VALUES ('44', '其他', '31231231246547', '其他', '3', '0', '2020-09-24 21:54:00.000000', '39');
INSERT INTO `goods_goodscategory` VALUES ('45', '投资理财', '5sdf', '管理学', '2', '0', '2020-09-24 21:54:00.000000', '38');
INSERT INTO `goods_goodscategory` VALUES ('46', '股票外汇', '7657568', '股票外汇', '3', '0', '2020-09-24 21:54:00.000000', '45');
INSERT INTO `goods_goodscategory` VALUES ('47', '基金', 'dfhj', '基金', '3', '0', '2020-09-24 21:55:00.000000', '45');
INSERT INTO `goods_goodscategory` VALUES ('48', '保险', '547fhg', '保险', '3', '0', '2020-09-24 21:55:00.000000', '45');
INSERT INTO `goods_goodscategory` VALUES ('49', '黄金投资', '32423s', '黄金投资', '3', '0', '2020-09-24 21:55:00.000000', '45');
INSERT INTO `goods_goodscategory` VALUES ('50', '其他', '474366', '其他', '3', '0', '2020-09-24 21:56:00.000000', '45');
INSERT INTO `goods_goodscategory` VALUES ('51', '生活', 'gfj344', '生活', '1', '0', '2020-09-24 21:56:00.000000', null);
INSERT INTO `goods_goodscategory` VALUES ('52', '亲子家教', '2315sdf', '亲子家教', '2', '0', '2020-09-24 21:57:00.000000', '51');
INSERT INTO `goods_goodscategory` VALUES ('53', '家教理论', '4235dfsg', '家教理论', '3', '0', '2020-09-24 21:57:00.000000', '52');
INSERT INTO `goods_goodscategory` VALUES ('54', '家教方法', '56346j', '家教方法', '3', '0', '2020-09-24 21:58:00.000000', '52');
INSERT INTO `goods_goodscategory` VALUES ('55', '家教理论', '532532ssd', '家教理论', '3', '0', '2020-09-24 21:58:00.000000', '52');
INSERT INTO `goods_goodscategory` VALUES ('56', '心理疏导', '6534747', '心理疏导', '3', '0', '2020-09-24 21:58:00.000000', '52');
INSERT INTO `goods_goodscategory` VALUES ('57', '其他', '46h', '其他', '3', '0', '2020-09-24 21:58:00.000000', '52');
INSERT INTO `goods_goodscategory` VALUES ('58', '运动', '534648', '运动', '2', '0', '2020-09-24 21:59:00.000000', '51');
INSERT INTO `goods_goodscategory` VALUES ('59', '奥林匹克', '564', '奥林匹克', '3', '0', '2020-09-24 21:59:00.000000', '58');
INSERT INTO `goods_goodscategory` VALUES ('60', '篮球', '35dd', '篮球', '3', '0', '2020-09-24 21:59:00.000000', '58');
INSERT INTO `goods_goodscategory` VALUES ('61', '田径体操', 'hkl1', '田径体操', '3', '0', '2020-09-24 22:00:00.000000', '58');
INSERT INTO `goods_goodscategory` VALUES ('62', '其他', '637h', '其他', '3', '0', '2020-09-24 22:00:00.000000', '58');
INSERT INTO `goods_goodscategory` VALUES ('63', '旅游/地图', '44634hgh', '旅游/地图', '2', '0', '2020-09-24 22:00:00.000000', '51');
INSERT INTO `goods_goodscategory` VALUES ('64', '国内自助游', '43hh', '国内自助游', '3', '0', '2020-09-24 22:01:00.000000', '63');
INSERT INTO `goods_goodscategory` VALUES ('65', '国际自助游', '54357jj', '国际自助游', '3', '0', '2020-09-24 22:01:00.000000', '63');
INSERT INTO `goods_goodscategory` VALUES ('66', '旅游笔记', '603256236', '旅游笔记', '3', '0', '2020-09-24 22:01:00.000000', '63');
INSERT INTO `goods_goodscategory` VALUES ('67', '其他', 'hjgkj1', '其他', '3', '0', '2020-09-24 22:02:00.000000', '63');
INSERT INTO `goods_goodscategory` VALUES ('68', '科技', 'sdfsdf44', '科技', '1', '0', '2020-09-24 22:02:00.000000', null);
INSERT INTO `goods_goodscategory` VALUES ('69', '科普读物', '555hhh', '科普读物', '2', '0', '2020-09-24 22:03:00.000000', '68');
INSERT INTO `goods_goodscategory` VALUES ('70', '建筑', '47qweeqw', '建筑', '2', '0', '2020-09-24 22:03:00.000000', '68');
INSERT INTO `goods_goodscategory` VALUES ('71', '医学', '2352356', '医学', '2', '0', '2020-09-24 22:03:00.000000', '68');
INSERT INTO `goods_goodscategory` VALUES ('72', '农业', '43634jjj', '农业', '2', '0', '2020-09-24 22:04:00.000000', '68');
INSERT INTO `goods_goodscategory` VALUES ('73', '工业技术', '34634jjj', '工业技术', '2', '0', '2020-09-24 22:04:00.000000', '68');
INSERT INTO `goods_goodscategory` VALUES ('75', '宇宙知识', '34557', '宇宙知识', '3', '0', '2020-09-24 22:05:00.000000', '69');
INSERT INTO `goods_goodscategory` VALUES ('76', '人类故事', '567787', '人类故事', '3', '0', '2020-09-24 22:05:00.000000', '69');
INSERT INTO `goods_goodscategory` VALUES ('77', '生物世界', '586867jj', '生物世界', '3', '0', '2020-09-24 22:06:00.000000', '69');
INSERT INTO `goods_goodscategory` VALUES ('78', '其他', '035235235jj', '其他', '3', '0', '2020-09-24 22:06:00.000000', '69');
INSERT INTO `goods_goodscategory` VALUES ('79', '建筑史与建筑文化', '325df', '建筑史与建筑文化', '3', '0', '2020-09-24 22:06:00.000000', '70');
INSERT INTO `goods_goodscategory` VALUES ('80', '建筑科学', 'sdfds', '建筑科学', '3', '0', '2020-09-24 22:06:00.000000', '70');
INSERT INTO `goods_goodscategory` VALUES ('81', '工程经济', '46fgg', '工程经济', '3', '0', '2020-09-24 22:07:00.000000', '70');
INSERT INTO `goods_goodscategory` VALUES ('82', '其他', 'fghfl', '其他', '3', '0', '2020-09-24 22:07:00.000000', '70');
INSERT INTO `goods_goodscategory` VALUES ('83', '临床医学理论', 'sggh111', '临床医学理论', '3', '0', '2020-09-24 22:07:00.000000', '71');
INSERT INTO `goods_goodscategory` VALUES ('84', '中医', 'ghjghkl', '中医', '3', '0', '2020-09-24 22:08:00.000000', '71');
INSERT INTO `goods_goodscategory` VALUES ('85', '护理学', 'dft8', '护理学', '3', '0', '2020-09-24 22:08:00.000000', '71');
INSERT INTO `goods_goodscategory` VALUES ('86', '其他', '47765756', '其他', '3', '0', '2020-09-24 22:08:00.000000', '71');
INSERT INTO `goods_goodscategory` VALUES ('87', '农业基础科学', '678oo', '农业基础科学', '3', '0', '2020-09-24 22:09:00.000000', '72');
INSERT INTO `goods_goodscategory` VALUES ('88', '农业工程', '园艺', '农业工程', '3', '0', '2020-09-24 22:09:00.000000', '72');
INSERT INTO `goods_goodscategory` VALUES ('89', '园艺', 'dftu7', '园艺', '3', '0', '2020-09-24 22:09:00.000000', '72');
INSERT INTO `goods_goodscategory` VALUES ('90', '其他', 'ghjk98', '其他', '3', '0', '2020-09-24 22:10:00.000000', '72');
INSERT INTO `goods_goodscategory` VALUES ('91', '电工技术', 'kja4455', '电工技术', '3', '0', '2020-09-24 22:10:00.000000', '73');
INSERT INTO `goods_goodscategory` VALUES ('92', '化学工艺', 'dftry34', '化学工艺', '3', '0', '2020-09-24 22:10:00.000000', '73');
INSERT INTO `goods_goodscategory` VALUES ('93', '武器工业', '5352hhj', '武器工业', '3', '0', '2020-09-24 22:11:00.000000', '73');
INSERT INTO `goods_goodscategory` VALUES ('94', '其他', 'ghuiyuo', '其他', '3', '0', '2020-09-24 22:11:00.000000', '73');
INSERT INTO `goods_goodscategory` VALUES ('95', '计算机/IT', '423fg', '计算机/IT', '1', '0', '2020-09-24 22:14:00.000000', null);
INSERT INTO `goods_goodscategory` VALUES ('96', '程序设计', '4523jj', '程序设计', '2', '0', '2020-09-24 22:14:00.000000', '95');
INSERT INTO `goods_goodscategory` VALUES ('97', 'Java', 'sadfkk', 'Java', '3', '0', '2020-09-24 22:14:00.000000', '96');
INSERT INTO `goods_goodscategory` VALUES ('98', 'Python', 'fdgdfhy99', 'python', '3', '0', '2020-09-24 22:14:00.000000', '96');
INSERT INTO `goods_goodscategory` VALUES ('99', 'C', 'fghu00', 'C', '3', '0', '2020-09-24 22:15:00.000000', '96');
INSERT INTO `goods_goodscategory` VALUES ('100', 'C++', '355ii', 'C++', '3', '0', '2020-09-24 22:15:00.000000', '96');
INSERT INTO `goods_goodscategory` VALUES ('101', 'PHP', '1434y', 'PHP', '3', '0', '2020-09-24 22:15:00.000000', '96');
INSERT INTO `goods_goodscategory` VALUES ('102', '其他', '3452ioo', '其他', '3', '0', '2020-09-24 22:15:00.000000', '96');
INSERT INTO `goods_goodscategory` VALUES ('103', '人工智能', '2348ii', '人工智能', '2', '0', '2020-09-24 22:16:00.000000', '95');
INSERT INTO `goods_goodscategory` VALUES ('104', '深度学习与神经网络', 'retey7', '深度学习与神经网络', '3', '0', '2020-09-24 22:16:00.000000', '103');
INSERT INTO `goods_goodscategory` VALUES ('105', '机器学习', '56kgfh', '机器学习', '3', '0', '2020-09-24 22:16:00.000000', '103');
INSERT INTO `goods_goodscategory` VALUES ('106', '智能硬件', 'ty432', '智能硬件', '3', '0', '2020-09-24 22:17:00.000000', '103');
INSERT INTO `goods_goodscategory` VALUES ('107', '其他', 'rt7', '其他', '3', '0', '2020-09-24 22:17:00.000000', '103');
INSERT INTO `goods_goodscategory` VALUES ('108', '数据库', '547ui', '数据库', '2', '0', '2020-09-24 22:17:00.000000', '95');
INSERT INTO `goods_goodscategory` VALUES ('109', '数据仓库与数据发掘', '3423tty', '数据仓库与数据发掘', '3', '0', '2020-09-24 22:17:00.000000', '108');
INSERT INTO `goods_goodscategory` VALUES ('110', 'MySQL', '214uyi', 'MySQL', '3', '0', '2020-09-24 22:18:00.000000', '108');
INSERT INTO `goods_goodscategory` VALUES ('111', '数据库理论', 'asd1234', '数据库理论', '3', '0', '2020-09-24 22:18:00.000000', '108');
INSERT INTO `goods_goodscategory` VALUES ('112', '其他', '423kkll', '其他', '3', '0', '2020-09-24 22:18:00.000000', '108');
INSERT INTO `goods_goodscategory` VALUES ('113', '网络与数据通信', '4543kljl', '网络与数据通信', '2', '0', '2020-09-24 22:19:00.000000', '95');
INSERT INTO `goods_goodscategory` VALUES ('114', '网络配置与管理', 'dfth944', '网络配置与管理', '3', '0', '2020-09-24 22:19:00.000000', '113');
INSERT INTO `goods_goodscategory` VALUES ('115', '网络协议', '32jsdjkfbsd', '网络协议', '3', '0', '2020-09-24 22:20:00.000000', '113');
INSERT INTO `goods_goodscategory` VALUES ('116', '通信', 'sdfsyu7', '通信', '3', '0', '2020-09-24 22:20:00.000000', '113');

-- ----------------------------
-- Table structure for goods_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimage`;
CREATE TABLE `goods_goodsimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods_goodsimage
-- ----------------------------
INSERT INTO `goods_goodsimage` VALUES ('1', '29120617-1_w_6.jpg', '2020-09-24 22:26:08.948142', '1');
INSERT INTO `goods_goodsimage` VALUES ('2', '28531652-3_u_12.jpg', '2020-09-24 23:32:58.940582', '4');
INSERT INTO `goods_goodsimage` VALUES ('3', '27931232-2_u_15.jpg', '2020-09-24 23:34:06.230845', '2');
INSERT INTO `goods_goodsimage` VALUES ('4', '28531313-3_u_3.jpg', '2020-09-24 23:41:06.652018', '5');
INSERT INTO `goods_goodsimage` VALUES ('5', '25102973-2_u_3.jpg', '2020-09-24 23:44:36.795487', '6');
INSERT INTO `goods_goodsimage` VALUES ('6', '27874588-2_x_2.jpg', '2020-09-24 23:49:53.387521', '7');
INSERT INTO `goods_goodsimage` VALUES ('7', '23718018-3_u_2.jpg', '2020-09-24 23:52:25.373725', '8');
INSERT INTO `goods_goodsimage` VALUES ('8', '23920356-4_u_9.jpg', '2020-09-24 23:54:27.325542', '9');
INSERT INTO `goods_goodsimage` VALUES ('9', '24186019-3_u_5.jpg', '2020-09-24 23:56:14.868193', '10');
INSERT INTO `goods_goodsimage` VALUES ('10', '26917419-4_u_2.jpg', '2020-09-24 23:57:48.846142', '11');
INSERT INTO `goods_goodsimage` VALUES ('11', '24170700-4_u_5.jpg', '2020-09-24 23:59:03.087666', '12');
INSERT INTO `goods_goodsimage` VALUES ('12', '28984846-5_u_6.jpg', '2020-09-25 00:00:40.060106', '13');
INSERT INTO `goods_goodsimage` VALUES ('13', '23861304-5_u_3.jpg', '2020-09-25 00:02:49.059545', '14');
INSERT INTO `goods_goodsimage` VALUES ('14', '28553152-3_u_3.jpg', '2020-09-25 00:04:46.366808', '15');
INSERT INTO `goods_goodsimage` VALUES ('15', '25353304-5_u_3.jpg', '2020-09-25 00:06:10.518358', '16');
INSERT INTO `goods_goodsimage` VALUES ('16', '23445575-3_u_3.png', '2020-09-25 00:08:07.715909', '17');
INSERT INTO `goods_goodsimage` VALUES ('17', '24010525-4_u_6.jpg', '2020-09-25 00:10:01.340295', '18');
INSERT INTO `goods_goodsimage` VALUES ('18', '28481307-4_u_3.jpg', '2020-09-25 00:12:26.990816', '19');
INSERT INTO `goods_goodsimage` VALUES ('19', '23694643-2_u_1.jpg', '2020-09-25 00:15:21.276601', '20');
INSERT INTO `goods_goodsimage` VALUES ('20', '25278075-3_u_11.jpg', '2020-09-25 00:17:43.444188', '21');
INSERT INTO `goods_goodsimage` VALUES ('21', '23590266-2_u_1.jpg', '2020-09-25 00:19:12.340021', '22');
INSERT INTO `goods_goodsimage` VALUES ('22', '23981714-4_u_5.jpg', '2020-09-25 00:20:56.107386', '23');
INSERT INTO `goods_goodsimage` VALUES ('23', '25317183-2_u_3.jpg', '2020-09-25 00:22:35.627532', '24');
INSERT INTO `goods_goodsimage` VALUES ('24', '28519528-3_u_5.jpg', '2020-09-25 00:26:01.195534', '25');
INSERT INTO `goods_goodsimage` VALUES ('25', '27903897-5_u_3.jpg', '2020-09-25 00:30:12.491996', '26');
INSERT INTO `goods_goodsimage` VALUES ('26', '22765017-1_u_18.jpg', '2020-09-25 00:32:00.172905', '27');
INSERT INTO `goods_goodsimage` VALUES ('27', '26914951-2_u_1.jpg', '2020-09-25 00:34:24.028706', '28');
INSERT INTO `goods_goodsimage` VALUES ('28', '22765854-1_u_3.jpg', '2020-09-25 00:36:43.403433', '29');
INSERT INTO `goods_goodsimage` VALUES ('29', '28978247-1_w_4.jpg', '2020-09-25 00:38:49.772557', '30');
INSERT INTO `goods_goodsimage` VALUES ('30', '23413230-1_w_1.jpg', '2020-09-25 00:40:18.924619', '31');
INSERT INTO `goods_goodsimage` VALUES ('31', '25580397-1_w_5.jpg', '2020-09-25 00:42:16.076142', '32');
INSERT INTO `goods_goodsimage` VALUES ('32', '27876708-3_u_3.jpg', '2020-09-25 00:44:15.155416', '33');
INSERT INTO `goods_goodsimage` VALUES ('33', '23678069-1_w_6.jpg', '2020-09-25 00:45:48.293102', '34');
INSERT INTO `goods_goodsimage` VALUES ('34', '28984990-2_u_6.jpg', '2020-09-25 00:47:25.516504', '35');
INSERT INTO `goods_goodsimage` VALUES ('35', '23687866-2_u_1.jpg', '2020-09-25 00:49:11.774120', '36');
INSERT INTO `goods_goodsimage` VALUES ('36', '28537917-3_u_8.jpg', '2020-09-25 00:50:39.581003', '37');
INSERT INTO `goods_goodsimage` VALUES ('37', '28553129-3_u_3.jpg', '2020-09-25 00:52:02.804675', '38');
INSERT INTO `goods_goodsimage` VALUES ('38', '25573679-1_w_3.jpg', '2020-09-25 00:53:24.645089', '39');
INSERT INTO `goods_goodsimage` VALUES ('39', '28541530-2_u_1.jpg', '2020-09-25 00:54:56.244376', '40');
INSERT INTO `goods_goodsimage` VALUES ('40', '27931895-1_w_3.jpg', '2020-09-25 00:56:34.379608', '41');
INSERT INTO `goods_goodsimage` VALUES ('41', '24028342-1_w_9.jpg', '2020-09-25 00:57:54.821830', '42');
INSERT INTO `goods_goodsimage` VALUES ('42', '25062899-1_w_3.jpg', '2020-09-25 00:59:46.939776', '43');
INSERT INTO `goods_goodsimage` VALUES ('43', '25194824-1_w_3.jpg', '2020-09-25 01:04:56.984850', '44');
INSERT INTO `goods_goodsimage` VALUES ('44', '25218035-3_u_3.jpg', '2020-09-25 01:06:06.068664', '45');
INSERT INTO `goods_goodsimage` VALUES ('45', '23961748-5_u_2.jpg', '2020-09-25 01:07:40.564586', '46');
INSERT INTO `goods_goodsimage` VALUES ('46', '26438446-1_u_2.jpg', '2020-09-25 01:09:28.652180', '47');
INSERT INTO `goods_goodsimage` VALUES ('47', '25190224-1_w_9.jpg', '2020-09-25 01:11:18.091688', '48');
INSERT INTO `goods_goodsimage` VALUES ('48', '27903598-1_w_4.jpg', '2020-09-25 01:12:50.020178', '49');

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) NOT NULL,
  `index` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods_hotsearchwords
-- ----------------------------
INSERT INTO `goods_hotsearchwords` VALUES ('1', 'python', '0', '2020-09-24 22:21:00.000000');
INSERT INTO `goods_hotsearchwords` VALUES ('2', '旅游', '0', '2020-09-24 22:21:00.000000');
INSERT INTO `goods_hotsearchwords` VALUES ('3', '基金', '0', '2020-09-24 22:21:00.000000');
INSERT INTO `goods_hotsearchwords` VALUES ('4', '人文地理', '0', '2020-09-24 22:21:00.000000');

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` (`category_id`),
  KEY `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`),
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods_indexad
-- ----------------------------
INSERT INTO `goods_indexad` VALUES ('3', '3', '9');

-- ----------------------------
-- Table structure for replace_version
-- ----------------------------
DROP TABLE IF EXISTS `replace_version`;
CREATE TABLE `replace_version` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version_code` varchar(10) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of replace_version
-- ----------------------------
INSERT INTO `replace_version` VALUES ('1', '0.1V', '', '2020-09-25 12:48:00.000000');

-- ----------------------------
-- Table structure for social_auth_association
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_association`;
CREATE TABLE `social_auth_association` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of social_auth_association
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_code
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_code`;
CREATE TABLE `social_auth_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of social_auth_code
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_nonce
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_nonce`;
CREATE TABLE `social_auth_nonce` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of social_auth_nonce
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_partial
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_partial`;
CREATE TABLE `social_auth_partial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of social_auth_partial
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_usersocialauth
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_usersocialauth`;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersoci_user_id_17d28448_fk_users_use` (`user_id`),
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of social_auth_usersocialauth
-- ----------------------------

-- ----------------------------
-- Table structure for trade_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `trade_ordergoods`;
CREATE TABLE `trade_ordergoods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_num` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` (`goods_id`),
  KEY `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` (`order_id`),
  CONSTRAINT `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of trade_ordergoods
-- ----------------------------
INSERT INTO `trade_ordergoods` VALUES ('1', '2', '2020-09-25 01:27:38.786937', '9', '2');

-- ----------------------------
-- Table structure for trade_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `trade_orderinfo`;
CREATE TABLE `trade_orderinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) DEFAULT NULL,
  `nonce_str` varchar(50) DEFAULT NULL,
  `trade_no` varchar(100) DEFAULT NULL,
  `pay_status` varchar(30) NOT NULL,
  `pay_type` varchar(10) NOT NULL,
  `post_script` varchar(200) NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(20) NOT NULL,
  `singer_mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  UNIQUE KEY `nonce_str` (`nonce_str`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of trade_orderinfo
-- ----------------------------
INSERT INTO `trade_orderinfo` VALUES ('1', '1241', '123', '1211111111111111', 'TRADE_SUCCESS', 'alipay', '书很好', '125', '2020-09-24 01:20:00.000000', '大源', '邓', '123131', '2020-09-25 01:20:00.000000', '2');
INSERT INTO `trade_orderinfo` VALUES ('2', '20200925012738256', null, null, 'paying', 'alipay', '1241', '39.6', null, '四川省成都市武侯区大源', '邓', '21412566', '2020-09-25 01:27:38.752914', '2');

-- ----------------------------
-- Table structure for trade_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `trade_shoppingcart`;
CREATE TABLE `trade_shoppingcart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nums` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_shoppingcart_user_id_goods_id_92225e66_uniq` (`user_id`,`goods_id`),
  KEY `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of trade_shoppingcart
-- ----------------------------
INSERT INTO `trade_shoppingcart` VALUES ('10', '1', '2020-09-25 01:56:03.786958', '9', '2');
INSERT INTO `trade_shoppingcart` VALUES ('11', '1', '2020-09-25 01:56:15.090245', '40', '2');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$qDCDvPTIUWJn$14sIPDeoOuafpOsYLF5RoLRU1G6BMrxdAvQyxvV9cKA=', '2020-09-25 17:11:06.330261', '1', 'admin', '', '', '1', '1', '2020-09-24 17:52:05.207983', null, null, 'female', null, '');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$150000$HycvoS2OBOHC$/GSE7T3ycumrc+k6bWgwxT/NW/mZePoOgyfgPMtNvRA=', null, '0', 'luoscorn', '', '', '0', '1', '2020-09-24 22:27:14.774291', null, null, 'female', null, '');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for users_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_verifycode`;
CREATE TABLE `users_verifycode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_verifycode
-- ----------------------------

-- ----------------------------
-- Table structure for user_operation_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_useraddress`;
CREATE TABLE `user_operation_useraddress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(100) NOT NULL,
  `signer_mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_usera_user_id_fe128593_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_usera_user_id_fe128593_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_operation_useraddress
-- ----------------------------
INSERT INTO `user_operation_useraddress` VALUES ('1', '四川省', '成都市', '武侯区', '大源', '邓', '21412566', '2020-09-25 01:21:19.497500', '2');

-- ----------------------------
-- Table structure for user_operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userfav`;
CREATE TABLE `user_operation_userfav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_operation_userfav_user_id_goods_id_2dbadda7_uniq` (`user_id`,`goods_id`),
  KEY `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_operation_userfav
-- ----------------------------
INSERT INTO `user_operation_userfav` VALUES ('1', '2020-09-25 01:22:05.737544', '4', '2');
INSERT INTO `user_operation_userfav` VALUES ('2', '2020-09-25 01:29:54.576744', '1', '2');

-- ----------------------------
-- Table structure for user_operation_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
CREATE TABLE `user_operation_userleavingmessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_type` int NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_userl_user_id_70d909d6_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_userl_user_id_70d909d6_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_operation_userleavingmessage
-- ----------------------------
INSERT INTO `user_operation_userleavingmessage` VALUES ('1', '1', '3213', '54124', 'message/images/1.txt', '2020-09-25 01:58:37.680906', '2');

-- ----------------------------
-- Table structure for xadmin_api_tyadminemailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_api_tyadminemailverifyrecord`;
CREATE TABLE `xadmin_api_tyadminemailverifyrecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(20) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_api_tyadminemailverifyrecord
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_api_tyadminsyslog
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_api_tyadminsyslog`;
CREATE TABLE `xadmin_api_tyadminsyslog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` varchar(39) DEFAULT NULL,
  `action_flag` varchar(32) DEFAULT NULL,
  `message` longtext NOT NULL,
  `log_type` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_api_tyadminsyslog
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2020-09-24 21:34:27.446999', '127.0.0.1', '1', '人文社科', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2020-09-24 21:34:47.313218', '127.0.0.1', '1', '人文社科', 'change', '修改 is_tab', '10', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2020-09-24 21:35:22.872847', '127.0.0.1', '2', '历史', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2020-09-24 21:36:07.450545', '127.0.0.1', '3', '中国史', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2020-09-24 21:36:30.239442', '127.0.0.1', '4', '世界史', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2020-09-24 21:36:55.633392', '127.0.0.1', '5', '文物考古', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2020-09-24 21:37:34.433385', '127.0.0.1', '3', '中国史', 'change', '修改 category_type 和 parent_category', '10', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2020-09-24 21:37:43.488827', '127.0.0.1', '4', '世界史', 'change', '修改 category_type 和 parent_category', '10', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2020-09-24 21:37:50.416665', '127.0.0.1', '5', '文物考古', 'change', '修改 category_type 和 parent_category', '10', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2020-09-24 21:38:11.712926', '127.0.0.1', '6', '历史随笔', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2020-09-24 21:38:35.985699', '127.0.0.1', '7', '民族史', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2020-09-24 21:39:11.896491', '127.0.0.1', '8', '文化', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2020-09-24 21:39:37.584423', '127.0.0.1', '9', '传统文化', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2020-09-24 21:40:02.120316', '127.0.0.1', '10', '各国文化', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2020-09-24 21:40:23.481454', '127.0.0.1', '11', '神秘文化', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2020-09-24 21:40:52.615392', '127.0.0.1', '12', '地域文化', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2020-09-24 21:41:19.362350', '127.0.0.1', '13', '宗教/哲学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2020-09-24 21:41:40.872666', '127.0.0.1', '14', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2020-09-24 21:41:55.816745', '127.0.0.1', '15', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2020-09-24 21:42:25.952435', '127.0.0.1', '16', '古代哲学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2020-09-24 21:42:50.361403', '127.0.0.1', '17', '世界哲学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2020-09-24 21:43:10.226099', '127.0.0.1', '18', '周易', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2020-09-24 21:43:45.697717', '127.0.0.1', '19', '近现代哲学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2020-09-24 21:43:57.305172', '127.0.0.1', '20', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2020-09-24 21:44:24.248898', '127.0.0.1', '21', '政治', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2020-09-24 21:44:45.105200', '127.0.0.1', '22', '国家政治', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2020-09-24 21:45:08.337100', '127.0.0.1', '23', '领袖著作', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2020-09-24 21:45:39.184546', '127.0.0.1', '24', '外交关系', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2020-09-24 21:46:13.705085', '127.0.0.1', '25', '公共管理', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2020-09-24 21:46:44.193307', '127.0.0.1', '23', '领袖著作', 'change', '修改 parent_category', '10', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2020-09-24 21:46:58.352802', '127.0.0.1', '26', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2020-09-24 21:47:26.688289', '127.0.0.1', '27', '社会科学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2020-09-24 21:47:51.192652', '127.0.0.1', '28', '社会学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2020-09-24 21:48:47.159483', '127.0.0.1', '29', '文化人类学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2020-09-24 21:49:08.417349', '127.0.0.1', '30', '新闻传播', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2020-09-24 21:49:39.857532', '127.0.0.1', '31', '名家作品', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2020-09-24 21:49:51.344376', '127.0.0.1', '32', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2020-09-24 21:50:53.184762', '127.0.0.1', '33', '法律', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2020-09-24 21:51:10.616894', '127.0.0.1', '34', '民法', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2020-09-24 21:51:23.841799', '127.0.0.1', '35', '经济法', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2020-09-24 21:51:44.633057', '127.0.0.1', '36', '刑法', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2020-09-24 21:51:55.407579', '127.0.0.1', '37', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2020-09-24 21:52:28.190764', '127.0.0.1', '38', '经管', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2020-09-24 21:52:49.968193', '127.0.0.1', '39', '经济', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2020-09-24 21:53:14.905625', '127.0.0.1', '40', '会计', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2020-09-24 21:53:29.970364', '127.0.0.1', '41', '市场营销', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2020-09-24 21:53:50.097245', '127.0.0.1', '42', '电子商务', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2020-09-24 21:54:09.673866', '127.0.0.1', '43', '商务沟通', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2020-09-24 21:54:23.680626', '127.0.0.1', '44', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2020-09-24 21:54:44.408067', '127.0.0.1', '45', '管理', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2020-09-24 21:55:12.657165', '127.0.0.1', '46', '股票外汇', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2020-09-24 21:55:25.394140', '127.0.0.1', '47', '基金', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2020-09-24 21:55:44.984936', '127.0.0.1', '48', '保险', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2020-09-24 21:56:07.505299', '127.0.0.1', '49', '黄金投资', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2020-09-24 21:56:18.240930', '127.0.0.1', '50', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2020-09-24 21:56:40.672083', '127.0.0.1', '45', '投资理财', 'change', '修改 name', '10', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2020-09-24 21:57:14.792019', '127.0.0.1', '51', '生活', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2020-09-24 21:57:40.193151', '127.0.0.1', '52', '亲子家教', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2020-09-24 21:58:00.816673', '127.0.0.1', '53', '家教理论', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2020-09-24 21:58:22.880552', '127.0.0.1', '54', '家教方法', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2020-09-24 21:58:35.904854', '127.0.0.1', '55', '家教理论', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2020-09-24 21:58:55.023908', '127.0.0.1', '56', '心理疏导', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2020-09-24 21:59:05.243174', '127.0.0.1', '57', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2020-09-24 21:59:22.081110', '127.0.0.1', '58', '运动', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2020-09-24 21:59:49.233461', '127.0.0.1', '59', '奥林匹克', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('66', '2020-09-24 22:00:01.881247', '127.0.0.1', '60', '篮球', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2020-09-24 22:00:27.528417', '127.0.0.1', '61', '田径体操', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2020-09-24 22:00:38.072607', '127.0.0.1', '62', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2020-09-24 22:01:20.624741', '127.0.0.1', '63', '旅游/地图', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('70', '2020-09-24 22:01:40.240863', '127.0.0.1', '64', '国内自助游', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2020-09-24 22:01:52.136541', '127.0.0.1', '65', '国际自助游', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2020-09-24 22:02:14.984312', '127.0.0.1', '66', '旅游笔记', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2020-09-24 22:02:32.248341', '127.0.0.1', '67', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2020-09-24 22:03:12.831900', '127.0.0.1', '68', '科技', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2020-09-24 22:03:27.441498', '127.0.0.1', '69', '科普读物', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('76', '2020-09-24 22:03:48.945434', '127.0.0.1', '70', '建筑', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('77', '2020-09-24 22:04:02.129735', '127.0.0.1', '71', '医学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('78', '2020-09-24 22:04:52.954774', '127.0.0.1', '72', '农业', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('79', '2020-09-24 22:05:07.417231', '127.0.0.1', '73', '工业技术', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('80', '2020-09-24 22:05:19.961776', '127.0.0.1', '74', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('81', '2020-09-24 22:05:40.657539', '127.0.0.1', '75', '宇宙知识', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('82', '2020-09-24 22:06:00.849119', '127.0.0.1', '76', '人类故事', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('83', '2020-09-24 22:06:14.176574', '127.0.0.1', '77', '生物世界', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('84', '2020-09-24 22:06:30.873463', '127.0.0.1', '78', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('85', '2020-09-24 22:06:58.817083', '127.0.0.1', '79', '建筑史与建筑文化', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('86', '2020-09-24 22:07:10.624632', '127.0.0.1', '80', '建筑科学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('87', '2020-09-24 22:07:31.096652', '127.0.0.1', '81', '工程经济', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('88', '2020-09-24 22:07:44.354253', '127.0.0.1', '82', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('89', '2020-09-24 22:08:13.704965', '127.0.0.1', '83', '临床医学理论', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('90', '2020-09-24 22:08:34.585378', '127.0.0.1', '84', '中医', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('91', '2020-09-24 22:08:50.369398', '127.0.0.1', '85', '护理学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('92', '2020-09-24 22:09:05.192856', '127.0.0.1', '86', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('93', '2020-09-24 22:09:25.177064', '127.0.0.1', '87', '农业基础科学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('94', '2020-09-24 22:09:49.888978', '127.0.0.1', '88', '农业工程', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('95', '2020-09-24 22:10:03.778093', '127.0.0.1', '89', '园艺', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('96', '2020-09-24 22:10:16.265436', '127.0.0.1', '90', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('97', '2020-09-24 22:10:59.168905', '127.0.0.1', '91', '电工技术', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('98', '2020-09-24 22:11:25.544582', '127.0.0.1', '92', '化学工艺', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('99', '2020-09-24 22:11:51.105533', '127.0.0.1', '93', '武器工业', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('100', '2020-09-24 22:12:05.536756', '127.0.0.1', '94', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('101', '2020-09-24 22:12:49.904419', '127.0.0.1', '74', '其他', 'delete', '', '10', '1');
INSERT INTO `xadmin_log` VALUES ('102', '2020-09-24 22:14:15.728425', '127.0.0.1', '95', '计算机/IT', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('103', '2020-09-24 22:14:34.530655', '127.0.0.1', '96', '程序设计', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('104', '2020-09-24 22:14:59.057150', '127.0.0.1', '97', 'Java', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('105', '2020-09-24 22:15:13.032705', '127.0.0.1', '98', 'Python', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('106', '2020-09-24 22:15:27.449407', '127.0.0.1', '99', 'C', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('107', '2020-09-24 22:15:39.360714', '127.0.0.1', '100', 'C++', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('108', '2020-09-24 22:15:50.185375', '127.0.0.1', '101', 'PHP', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('109', '2020-09-24 22:16:04.793002', '127.0.0.1', '102', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('110', '2020-09-24 22:16:41.887899', '127.0.0.1', '103', '人工智能', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('111', '2020-09-24 22:16:58.032848', '127.0.0.1', '104', '深度学习与神经网络', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('112', '2020-09-24 22:17:12.144960', '127.0.0.1', '105', '机器学习', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('113', '2020-09-24 22:17:24.873167', '127.0.0.1', '106', '智能硬件', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('114', '2020-09-24 22:17:34.817621', '127.0.0.1', '107', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('115', '2020-09-24 22:17:48.545601', '127.0.0.1', '108', '数据库', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('116', '2020-09-24 22:18:08.521151', '127.0.0.1', '109', '数据仓库与数据发掘', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('117', '2020-09-24 22:18:27.192873', '127.0.0.1', '110', 'MySQL', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('118', '2020-09-24 22:18:38.761873', '127.0.0.1', '111', '数据库理论', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('119', '2020-09-24 22:19:00.257528', '127.0.0.1', '112', '其他', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('120', '2020-09-24 22:19:35.297330', '127.0.0.1', '113', '网络与数据通信', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('121', '2020-09-24 22:20:05.289780', '127.0.0.1', '114', '网络配置与管理', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('122', '2020-09-24 22:20:23.383850', '127.0.0.1', '115', '网络协议', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('123', '2020-09-24 22:20:34.473297', '127.0.0.1', '116', '通信', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('124', '2020-09-24 22:21:29.911336', '127.0.0.1', '1', 'python', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('125', '2020-09-24 22:21:39.998093', '127.0.0.1', '2', '旅游', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('126', '2020-09-24 22:21:51.662968', '127.0.0.1', '3', '基金', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('127', '2020-09-24 22:21:59.790406', '127.0.0.1', '4', '人文地理', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('128', '2020-09-24 22:24:34.065553', '127.0.0.1', '1', 'JavaScript高级程序设计 第4版', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('129', '2020-09-24 22:26:08.952146', '127.0.0.1', '1', 'JavaScript高级程序设计 第4版', 'change', '没有字段被修改。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('130', '2020-09-24 22:26:30.835905', '127.0.0.1', '1', 'JavaScript高级程序设计 第4版', 'change', '修改 is_new 和 is_hot', '9', '1');
INSERT INTO `xadmin_log` VALUES ('131', '2020-09-24 22:27:14.849359', '127.0.0.1', '2', 'luoscorn', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('132', '2020-09-24 22:29:37.099564', '127.0.0.1', '1', 'JavaScript高级程序设计 第4版', 'change', '修改 goods_front_image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('133', '2020-09-24 22:31:12.320835', '127.0.0.1', '1', 'JavaScript高级程序设计 第4版', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('134', '2020-09-24 22:31:52.401016', '127.0.0.1', '1', 'JavaScript高级程序设计 第4版', 'delete', '', '14', '1');
INSERT INTO `xadmin_log` VALUES ('135', '2020-09-24 22:32:38.409975', '127.0.0.1', '1', 'JavaScript高级程序设计 第4版', 'change', '修改 goods_front_image，is_new 和 is_hot', '9', '1');
INSERT INTO `xadmin_log` VALUES ('136', '2020-09-24 22:35:27.080710', '127.0.0.1', '2', '半小时漫画中国史1-4+世界史（共5册）（看半小时漫画，通五千年历史！漫画式科普开创者二混子新作！）（随机签章版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('137', '2020-09-24 22:37:02.216014', '127.0.0.1', '3', '古代人的日常生活（古代的光棍多吗？古人怎么擦屁屁？古人夏天如何驱蚊？满足你对古人日常生活的全部好奇！）（当当典藏版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('138', '2020-09-24 22:39:23.553242', '127.0.0.1', '2', '半小时漫画中国史1-4+世界史（共5册）（看半小时漫画，通五千年历史！漫画式科普开创者二混子新作！）（随机签章版）', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('139', '2020-09-24 23:07:43.812912', '127.0.0.1', '3', '古代人的日常生活（古代的光棍多吗？古人怎么擦屁屁？古人夏天如何驱蚊？满足你对古人日常生活的全部好奇！）（当当典藏版）', 'change', '修改 goods_desc 和 goods_front_image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('140', '2020-09-24 23:09:17.031865', '127.0.0.1', '3', '古代人的日常生活（古代的光棍多吗？古人怎么擦屁屁？古人夏天如何驱蚊？满足你对古人日常生活的全部好奇！）（当当典藏版）', 'change', '修改 goods_front_image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('141', '2020-09-24 23:19:07.017827', '127.0.0.1', '3', '古代人的日常生活（古代的光棍多吗？古人怎么擦屁屁？古人夏天如何驱蚊？满足你对古人日常生活的全部好奇！）（当当典藏版）', 'change', '修改 goods_front_image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('142', '2020-09-24 23:22:18.138620', '127.0.0.1', '2', '半小时漫画中国史1-4+世界史（共5册）（看半小时漫画，通五千年历史！漫画式科普开创者二混子新作！）（随机签章版）', 'change', '修改 goods_desc 和 goods_front_image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('143', '2020-09-24 23:24:51.815380', '127.0.0.1', '3', '古代人的日常生活（古代的光棍多吗？古人怎么擦屁屁？古人夏天如何驱蚊？满足你对古人日常生活的全部好奇！）（当当典藏版）', 'change', '修改 goods_front_image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('144', '2020-09-24 23:26:34.886656', '127.0.0.1', '3', '古代人的日常生活（古代的光棍多吗？古人怎么擦屁屁？古人夏天如何驱蚊？满足你对古人日常生活的全部好奇！）（当当典藏版）', 'change', '没有字段被修改。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('145', '2020-09-24 23:26:48.309173', '127.0.0.1', '1', 'JavaScript高级程序设计 第4版', 'change', '修改 goods_front_image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('146', '2020-09-24 23:29:09.125238', '127.0.0.1', '3', '古代人的日常生活（古代的光棍多吗？古人怎么擦屁屁？古人夏天如何驱蚊？满足你对古人日常生活的全部好奇！）（当当典藏版）', 'change', '修改 goods_front_image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('147', '2020-09-24 23:30:01.378502', '127.0.0.1', '3', '古代人的日常生活（古代的光棍多吗？古人怎么擦屁屁？古人夏天如何驱蚊？满足你对古人日常生活的全部好奇！）（当当典藏版）', 'delete', '', '9', '1');
INSERT INTO `xadmin_log` VALUES ('148', '2020-09-24 23:32:59.203821', '127.0.0.1', '4', '故宫六百年（去过故宫1000多次的史学大家阎崇年完整讲述故宫600年）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('149', '2020-09-24 23:34:06.233848', '127.0.0.1', '2', '半小时漫画中国史1-4+世界史（共5册）（看半小时漫画，通五千年历史！漫画式科普开创者二混子新作！）（随机签章版）', 'change', '没有字段被修改。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('150', '2020-09-24 23:35:21.328900', '127.0.0.1', '4', '故宫六百年（去过故宫1000多次的史学大家阎崇年完整讲述故宫600年）', 'change', '修改 category 和 goods_desc', '9', '1');
INSERT INTO `xadmin_log` VALUES ('151', '2020-09-24 23:41:06.901245', '127.0.0.1', '5', '秦俑两千年（关于秦俑的一切想象、现实与未知！揭秘中华民族更趋强大的基因密码，披露最新研究成果，震撼西方世界的权威著作）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('152', '2020-09-24 23:42:03.833389', '127.0.0.1', '5', '秦俑两千年（关于秦俑的一切想象、现实与未知！揭秘中华民族更趋强大的基因密码，披露最新研究成果，震撼西方世界的权威著作）', 'change', '修改 goods_desc', '9', '1');
INSERT INTO `xadmin_log` VALUES ('153', '2020-09-24 23:42:33.520218', '127.0.0.1', '5', '秦俑两千年（关于秦俑的一切想象、现实与未知！揭秘中华民族更趋强大的基因密码，披露最新研究成果，震撼西方世界的权威著作）', 'change', '没有字段被修改。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('154', '2020-09-24 23:44:37.023090', '127.0.0.1', '6', '明朝那些事儿全集 增补版（新版全套9册）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('155', '2020-09-24 23:46:05.847577', '127.0.0.1', '5', '秦俑两千年（关于秦俑的一切想象、现实与未知！揭秘中华民族更趋强大的基因密码，披露最新研究成果，震撼西方世界的权威著作）', 'change', '没有字段被修改。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('156', '2020-09-24 23:49:53.704810', '127.0.0.1', '7', '钱穆谈中国历史文化：中国历史精神', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('157', '2020-09-24 23:52:25.646974', '127.0.0.1', '8', '昨天的中国，在变革中述说；今天的民国，在争议里鲜活！一个真实的民国究竟是什么样子？在这复杂世界里，我为你还原它的“本色”。', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('158', '2020-09-24 23:54:27.620811', '127.0.0.1', '9', '中国通史', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('159', '2020-09-24 23:56:15.159210', '127.0.0.1', '10', '见识城邦·人类简史：从动物到上帝（新版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('160', '2020-09-24 23:57:49.145413', '127.0.0.1', '11', '埃及四千年（破解四千年王朝兴衰秘密的里程碑式巨作）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('161', '2020-09-24 23:59:03.309870', '127.0.0.1', '12', '未来简史 一本好书 腾讯视频栏目推荐', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('162', '2020-09-25 00:00:40.364382', '127.0.0.1', '13', '切尔诺贝利：一部悲剧史（诺贝尔奖得主阿列克谢耶维奇推荐，哈佛大学教授沙希利.浦洛基新作）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('163', '2020-09-25 00:02:49.356815', '127.0.0.1', '14', '甲骨文的故事', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('164', '2020-09-25 00:04:46.619036', '127.0.0.1', '15', '了不起的文明现场', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('165', '2020-09-25 00:06:10.860669', '127.0.0.1', '16', '国家宝藏（青少年版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('166', '2020-09-25 00:08:07.994161', '127.0.0.1', '17', '万历十五年 一本好书 腾讯视频栏目推荐', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('167', '2020-09-25 00:10:01.662588', '127.0.0.1', '18', '枪炮、病菌与钢铁——人类社会的命运(修订版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('168', '2020-09-25 00:12:27.318114', '127.0.0.1', '19', '游牧民的世界史（精装修订，《忽必烈的挑战》《疾驰的草原征服者：辽西夏金元》作者杉山正明重磅之作）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('169', '2020-09-25 00:15:21.546846', '127.0.0.1', '20', '美国种族简史', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('170', '2020-09-25 00:17:43.738456', '127.0.0.1', '21', '观山海 “百鬼画师”杉泽绝美诠释山海经', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('171', '2020-09-25 00:19:12.602259', '127.0.0.1', '22', '中国古代文化常识 （插图修订第4版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('172', '2020-09-25 00:20:56.394648', '127.0.0.1', '23', '果麦经典：菊与刀（畅销全球70年，销售逾3000万册；日本国民性格说明书，译文亲切易懂；10万+读者认证，销量遥遥领先）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('173', '2020-09-25 00:22:35.887769', '127.0.0.1', '24', '罗生门', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('174', '2020-09-25 00:26:01.522832', '127.0.0.1', '25', '中国妖怪故事（全集）：中国妖怪大百科全书', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('175', '2020-09-25 00:30:12.781259', '127.0.0.1', '26', '南怀瑾选集：论语别裁（上下册）（大陆正版授权南怀瑾系列）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('176', '2020-09-25 00:32:00.449156', '127.0.0.1', '27', '理想国', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('177', '2020-09-25 00:34:24.324976', '127.0.0.1', '28', '易经杂说（当当独家定制版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('178', '2020-09-25 00:36:43.694698', '127.0.0.1', '29', '钱穆先生著作系列：中国思想史（简体版 单行本）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('179', '2020-09-25 00:38:50.051811', '127.0.0.1', '30', '习近平谈治国理政（第三卷）（中文平装）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('180', '2020-09-25 00:40:19.153828', '127.0.0.1', '31', '毛泽东选集（全四册，32开）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('181', '2020-09-25 00:42:16.287334', '127.0.0.1', '32', '注定一战：中美能避免修昔底德陷阱吗？ 中美贸易战必读！', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('182', '2020-09-25 00:44:15.483715', '127.0.0.1', '33', '深入学习习近平关于教育的重要论述', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('183', '2020-09-25 00:45:48.521309', '127.0.0.1', '34', '乡土中国（精装）2019年语文新课标课外必读图书！畅销十年！费孝通著作！累计评价10万+', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('184', '2020-09-25 00:47:25.782747', '127.0.0.1', '35', '末日松茸：资本主义废墟上的生活可能（薄荷实验）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('185', '2020-09-25 00:49:12.087404', '127.0.0.1', '36', '见识城邦·娱乐至死', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('186', '2020-09-25 00:50:39.882277', '127.0.0.1', '37', '走出唯一真理观（陈嘉映2020年重磅新作！）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('187', '2020-09-25 00:52:03.104948', '127.0.0.1', '38', '中华人民共和国民法典(32开压纹烫金版 附草案说明) 2020年6月新版 团购电话：4001066666转6', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('188', '2020-09-25 00:53:24.907327', '127.0.0.1', '39', '中华人民共和国劳动法·实用版（2018版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('189', '2020-09-25 00:54:56.585686', '127.0.0.1', '40', '法医秦明 逝者之书：不留心死亡，便看不见生活', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('190', '2020-09-25 00:56:34.636842', '127.0.0.1', '41', '一本书读懂财报（全新修订版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('191', '2020-09-25 00:57:55.058044', '127.0.0.1', '42', '影响力（经典版）（新版）（团购，请致电400-106-6666转6）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('192', '2020-09-25 00:59:47.227037', '127.0.0.1', '43', '运营之光：我的互联网运营方法论与自白 2.0', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('193', '2020-09-25 01:04:57.418244', '127.0.0.1', '44', '股票大作手回忆录', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('194', '2020-09-25 01:06:06.320895', '127.0.0.1', '45', 'Python基础教程（第3版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('195', '2020-09-25 01:07:40.821819', '127.0.0.1', '46', 'Python核心编程 第3版', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('196', '2020-09-25 01:09:28.919423', '127.0.0.1', '47', '中国旅游地图册（大字版）不仅仅是旅游攻略，更是一种生活方式，一场文化传播。覆盖全国的交通、旅游地图，全国旅游景点介绍', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('197', '2020-09-25 01:11:18.334910', '127.0.0.1', '48', '指数基金投资指南', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('198', '2020-09-25 01:12:50.299432', '127.0.0.1', '49', '人文地理学（第三版）', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('199', '2020-09-25 01:14:14.391893', '127.0.0.1', '1', 'Python核心编程 第3版', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('200', '2020-09-25 01:14:41.678194', '127.0.0.1', '1', 'Python核心编程 第3版', 'delete', '', '8', '1');
INSERT INTO `xadmin_log` VALUES ('201', '2020-09-25 01:16:24.895122', '127.0.0.1', '2', '半小时漫画中国史1-4+世界史（共5册）（看半小时漫画，通五千年历史！漫画式科普开创者二混子新作！）（随机签章版）', 'delete', '', '14', '1');
INSERT INTO `xadmin_log` VALUES ('202', '2020-09-25 01:16:36.562732', '127.0.0.1', '3', '中国通史', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('203', '2020-09-25 01:17:24.432582', '127.0.0.1', '1', '生而为人', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('204', '2020-09-25 01:18:26.056697', '127.0.0.1', '2', 'JavaScript高级程序设计 第4版', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('205', '2020-09-25 01:18:46.000831', '127.0.0.1', '2', 'JavaScript高级程序设计 第4版', 'delete', '', '8', '1');
INSERT INTO `xadmin_log` VALUES ('206', '2020-09-25 01:19:46.656982', '127.0.0.1', '3', 'Python核心编程 第3版', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('207', '2020-09-25 01:20:18.591018', '127.0.0.1', '3', 'Python核心编程 第3版', 'delete', '', '8', '1');
INSERT INTO `xadmin_log` VALUES ('208', '2020-09-25 01:20:53.327603', '127.0.0.1', '1', '1241', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('209', '2020-09-25 01:24:33.767347', '127.0.0.1', '45', 'Python基础教程（第3版）', 'change', '修改 goods_desc，is_new 和 is_hot', '9', '1');
INSERT INTO `xadmin_log` VALUES ('210', '2020-09-25 01:33:03.498737', '127.0.0.1', '4', '走出唯一真理观（陈嘉映2020年重磅新作！）', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('211', '2020-09-25 01:33:41.542380', '127.0.0.1', '4', '走出唯一真理观（陈嘉映2020年重磅新作！）', 'delete', '', '8', '1');
INSERT INTO `xadmin_log` VALUES ('212', '2020-09-25 01:40:41.435445', '127.0.0.1', '5', '故宫六百年（去过故宫1000多次的史学大家阎崇年完整讲述故宫600年）', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('213', '2020-09-25 01:40:58.982532', '127.0.0.1', '5', '故宫六百年（去过故宫1000多次的史学大家阎崇年完整讲述故宫600年）', 'delete', '', '8', '1');
INSERT INTO `xadmin_log` VALUES ('214', '2020-09-25 01:46:07.130135', '127.0.0.1', '6', '秦俑两千年（关于秦俑的一切想象、现实与未知！揭秘中华民族更趋强大的基因密码，披露最新研究成果，震撼西方世界的权威著作）', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('215', '2020-09-25 01:48:08.817262', '127.0.0.1', '6', '秦俑两千年（关于秦俑的一切想象、现实与未知！揭秘中华民族更趋强大的基因密码，披露最新研究成果，震撼西方世界的权威著作）', 'change', '修改 image', '8', '1');
INSERT INTO `xadmin_log` VALUES ('216', '2020-09-25 01:50:00.647612', '127.0.0.1', '6', '秦俑两千年（关于秦俑的一切想象、现实与未知！揭秘中华民族更趋强大的基因密码，披露最新研究成果，震撼西方世界的权威著作）', 'change', '修改 image', '8', '1');
INSERT INTO `xadmin_log` VALUES ('217', '2020-09-25 01:53:35.861438', '127.0.0.1', '7', 'JavaScript高级程序设计 第4版', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('218', '2020-09-25 01:54:56.761996', '127.0.0.1', '1', 'JavaScript高级程序设计 第4版', 'change', '没有字段被修改。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('219', '2020-09-25 12:48:39.063001', '127.0.0.1', '1', '版本0.1V已更新', 'create', '已添加。', '31', '1');
INSERT INTO `xadmin_log` VALUES ('220', '2020-09-25 12:50:07.781945', '127.0.0.1', '3', 'admin list widget', 'delete', '', '23', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '2', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', 'http://qh64o404q.hn-bkt.clouddn.com/static/xadmin/css/themes/bootstrap-xadmin.css', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
INSERT INTO `xadmin_userwidget` VALUES ('2', 'home', 'list', '{\"title\": \"goods\", \"model\": \"goods.goods\"}', '1');
