/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_music

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 10/06/2024 21:22:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1718024133597.jpeg', 'https://www.gitapp.cn', '2024-06-10 20:55:38.042060');
INSERT INTO `b_ad` VALUES (2, 'ad/1718024142935.jpeg', 'https://www.baidu.com/', '2024-06-10 20:55:48.934050');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '流行', '2024-06-10 16:44:41.368019');
INSERT INTO `b_classification` VALUES (2, '民谣', '2024-06-10 16:44:46.850178');
INSERT INTO `b_classification` VALUES (3, '轻音乐', '2024-06-10 16:44:59.361137');
INSERT INTO `b_classification` VALUES (4, '摇滚', '2024-06-10 16:45:15.686405');
INSERT INTO `b_classification` VALUES (5, '古典', '2024-06-10 16:45:30.565987');
INSERT INTO `b_classification` VALUES (6, '校园', '2024-06-10 17:43:10.210888');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '33333', '2024-06-10 20:52:00.483302', 0, 11, 2);
INSERT INTO `b_comment` VALUES (2, '啊啊啊啊啊', '2024-06-10 20:52:02.685872', 0, 11, 2);
INSERT INTO `b_comment` VALUES (3, '222', '2024-06-10 20:53:15.214979', 4, 10, 2);
INSERT INTO `b_comment` VALUES (4, 'aaaaaaaaaaaaaaaa', '2024-06-10 20:53:19.364101', 1, 10, 2);
INSERT INTO `b_comment` VALUES (5, 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '2024-06-10 20:53:21.876762', 0, 10, 2);
INSERT INTO `b_comment` VALUES (6, '333333333333333333333333333333333', '2024-06-10 20:53:25.350275', 1, 10, 2);
INSERT INTO `b_comment` VALUES (7, '11211111111111111111111', '2024-06-10 20:53:29.047128', 1, 10, 2);
INSERT INTO `b_comment` VALUES (8, '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '2024-06-10 20:53:33.278171', 1, 10, 2);
INSERT INTO `b_comment` VALUES (9, '不啵啵啵啵啵啵啵啵啵啵啵啵啵啵啵啵啵啵', '2024-06-10 20:53:37.279739', 1, 10, 2);
INSERT INTO `b_comment` VALUES (10, '5555555555555555555555555', '2024-06-10 20:53:40.975452', 1, 10, 2);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/admin/thing/create', 'POST', '参数错误', '2024-06-10 17:17:10.403841');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/admin/thing/create', 'POST', '参数错误', '2024-06-10 17:17:19.675021');

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '啊啊啊啊啊啊啊啊啊啊啊', '韩路', '32222011@gmail.com', '22221651534', '2024-06-10 20:57:33.473801');
INSERT INTO `b_feedback` VALUES (2, '哈哈哈哈哈2223', '322222', '刘文', '1122011@gmail.com', '14381651534', '2024-06-10 20:58:44.767266');
INSERT INTO `b_feedback` VALUES (3, '测试反馈221111', '啊啊啊啊啊啊啊啊啊222啊啊', '韩路', '32222011@gmail.com', '22221651534', '2024-06-10 20:57:33.473801');
INSERT INTO `b_feedback` VALUES (4, '测试反馈221111', '啊啊啊啊啊啊啊啊1111啊啊啊', '韩路', '32222011@gmail.com', '22221651534', '2024-06-10 20:57:33.473801');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-10 16:42:33.588034');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-10 20:42:10.292481');
INSERT INTO `b_login_log` VALUES (3, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-10 21:02:00.956190');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-10 21:02:13.084738');
INSERT INTO `b_login_log` VALUES (5, 'ttt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-10 21:12:32.643715');
INSERT INTO `b_login_log` VALUES (6, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-10 21:19:55.750983');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知333', '哈哈哈哈哈hello', '2024-06-10 20:56:05.933851');
INSERT INTO `b_notice` VALUES (2, '测试通知哈哈哈', '你好来自哪里的你。', '2024-06-10 20:56:19.493036');
INSERT INTO `b_notice` VALUES (3, 'hello哈哈哈', '哈哈哈我是你的哈哈哈哈', '2024-06-10 20:56:30.662178');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 768 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-10 16:42:00.928822', '/myapp/index/notice/list_api', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-10 16:42:00.946825', '/myapp/index/notice/list_api', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-10 16:42:00.949834', '/myapp/index/notice/list_api', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-10 16:42:28.370373', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-10 16:42:28.374488', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-10 16:42:28.904419', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-10 16:42:33.596490', '/myapp/admin/adminLogin', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-10 16:42:33.895208', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-10 16:42:33.897567', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-10 16:42:35.852805', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-10 16:42:36.648285', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-10 16:42:36.652279', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-10 16:43:02.044282', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-10 16:43:35.209471', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-10 16:43:35.225045', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-10 16:43:36.719450', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-10 16:43:39.416366', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-10 16:43:40.063789', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-10 16:43:41.012287', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-10 16:43:41.016283', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-10 16:43:45.342643', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-10 16:44:41.383504', '/myapp/admin/classification/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-10 16:44:41.430046', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-10 16:44:46.864570', '/myapp/admin/classification/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-10 16:44:46.912177', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-10 16:44:59.376191', '/myapp/admin/classification/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-10 16:44:59.429705', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-10 16:45:15.692410', '/myapp/admin/classification/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-10 16:45:15.759199', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-10 16:45:30.580900', '/myapp/admin/classification/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-10 16:45:30.633536', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-10 16:46:13.360921', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-10 16:46:14.421736', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-10 16:46:14.426735', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-10 16:46:44.365417', '/myapp/admin/thing/create', 'POST', NULL, '111');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-10 16:46:44.462805', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-10 16:52:52.504812', '/myapp/admin/classification/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-10 16:52:52.529646', '/myapp/admin/classification/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-10 16:52:53.263675', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-10 16:52:54.115216', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-10 16:52:54.131459', '/myapp/admin/classification/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-10 17:01:15.467038', '/myapp/admin/thing/update', 'POST', NULL, '586');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-10 17:01:15.556575', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-10 17:01:21.079025', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-10 17:01:21.093017', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-10 17:01:21.107035', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-10 17:01:21.187620', '/upload/cover/1718010044178.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-10 17:09:07.488778', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-10 17:09:07.512083', '/myapp/admin/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-10 17:09:11.719635', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-10 17:09:11.745807', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-10 17:09:16.592627', '/upload/cover/1718010044178.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-10 17:10:14.399224', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-10 17:10:14.403752', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-10 17:10:15.350739', '/upload/cover/1718010044178.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-10 17:10:45.887952', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-10 17:10:45.904147', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-10 17:17:10.426519', '/myapp/admin/thing/create', 'POST', NULL, '81');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-10 17:17:19.693288', '/myapp/admin/thing/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-10 17:19:03.903774', '/myapp/admin/thing/create', 'POST', NULL, '243');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-10 17:19:04.062961', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-10 17:21:39.227763', '/myapp/admin/thing/create', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-10 17:21:39.353317', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-10 17:22:26.390417', '/myapp/admin/thing/create', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-10 17:22:26.521982', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-10 17:22:39.294087', '/upload/cover/1718011311344.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-10 17:23:25.213930', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-10 17:23:25.255109', '/myapp/admin/classification/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-10 17:23:27.510837', '/upload/cover/1718011311344.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-10 17:24:36.323164', '/myapp/admin/thing/create', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-10 17:24:36.447871', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-10 17:25:33.871222', '/myapp/admin/thing/create', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-10 17:25:34.039003', '/myapp/admin/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-10 17:25:49.728092', '/myapp/admin/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-10 17:25:51.262778', '/myapp/admin/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-10 17:26:54.830153', '/myapp/admin/thing/create', 'POST', NULL, '120');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-10 17:26:54.968212', '/myapp/admin/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-10 17:28:43.704312', '/upload/cover/1718011573481.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-10 17:29:52.331574', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-10 17:29:52.401622', '/myapp/admin/classification/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-10 17:30:50.883444', '/myapp/admin/thing/create', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-10 17:30:51.090118', '/myapp/admin/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-10 17:31:57.440843', '/myapp/admin/thing/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-10 17:31:57.616078', '/myapp/admin/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-10 17:32:48.807441', '/myapp/admin/thing/create', 'POST', NULL, '87');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-10 17:32:49.021078', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-10 17:33:38.194974', '/myapp/admin/thing/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-10 17:33:38.413011', '/myapp/admin/thing/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-10 17:34:27.944794', '/myapp/admin/thing/create', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-10 17:34:28.188866', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-10 17:37:22.360354', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-10 17:37:25.579943', '/myapp/admin/thing/update', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-10 17:37:25.814233', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-10 17:37:53.487179', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-10 17:37:53.753627', '/myapp/admin/thing/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-10 17:38:15.165010', '/upload/cover/1718011984823.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-10 17:38:18.243146', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-10 17:38:18.456446', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-10 17:38:19.650698', '/upload/cover/1718011938515.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-10 17:38:22.228373', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-10 17:38:22.461606', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-10 17:38:23.495308', '/upload/cover/1718011887832.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-10 17:38:26.042165', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-10 17:38:26.267565', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-10 17:38:28.013480', '/upload/cover/1718011806684.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-10 17:38:30.378694', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-10 17:38:30.667428', '/myapp/admin/thing/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-10 17:38:34.616273', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-10 17:38:34.879162', '/myapp/admin/thing/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-10 17:38:36.000790', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-10 17:38:38.637686', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-10 17:38:38.874094', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-10 17:38:40.127280', '/upload/cover/1718011440162.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-10 17:38:42.536187', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-10 17:38:42.780020', '/myapp/admin/thing/list', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-10 17:38:44.318247', '/upload/cover/1718011311344.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-10 17:38:46.648670', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-10 17:38:46.887379', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-10 17:38:47.961757', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-10 17:38:50.729401', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-10 17:38:50.969873', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-10 17:38:53.737436', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-10 17:38:56.645385', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-10 17:38:56.880309', '/myapp/admin/thing/list', 'GET', NULL, '174');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-10 17:38:58.147367', '/upload/cover/1718010044178.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-10 17:39:00.772760', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-10 17:39:01.019842', '/myapp/admin/thing/list', 'GET', NULL, '192');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-10 17:39:04.999037', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-10 17:39:14.972487', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-10 17:39:15.204549', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-10 17:39:24.357358', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-10 17:39:24.365004', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-10 17:39:24.442268', '/myapp/index/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-10 17:39:24.500550', '/upload/cover/1718011938515.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-10 17:39:24.516089', '/upload/cover/1718011938515.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-10 17:39:24.518105', '/upload/cover/1718011806684.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-10 17:39:24.521107', '/upload/cover/1718011806684.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-10 17:39:24.521107', '/upload/cover/1718011573481.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-10 17:39:26.122188', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-10 17:39:26.130730', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-10 17:39:26.151712', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-10 17:39:26.179136', '/myapp/index/thing/getRecommend', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-10 17:39:26.218075', '/myapp/index/thing/getRecommend', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-10 17:40:31.938215', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-10 17:40:31.943243', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-10 17:40:32.005106', '/myapp/index/classification/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-10 17:40:32.134811', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-10 17:40:32.137540', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-10 17:40:32.135793', '/upload/cover/1718011440162.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-10 17:40:32.140129', '/upload/cover/1718011440162.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-10 17:40:32.141892', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-10 17:40:32.143436', '/upload/cover/1718011440162.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-10 17:40:32.180998', '/upload/cover/1718011311344.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-10 17:40:33.635474', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-10 17:40:34.141827', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-10 17:40:34.805157', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-10 17:40:35.441133', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-10 17:40:36.234970', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-10 17:40:37.122488', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-10 17:40:38.191436', '/myapp/index/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-10 17:40:40.345733', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-10 17:40:45.783112', '/myapp/index/thing/list', 'GET', NULL, '5492');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-10 17:41:46.249374', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-10 17:41:46.259400', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-10 17:41:46.290330', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-10 17:41:53.497870', '/myapp/index/thing/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-10 17:41:54.468364', '/myapp/index/thing/list', 'GET', NULL, '204');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-10 17:41:55.815328', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-10 17:42:24.969097', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-10 17:42:25.041986', '/myapp/index/thing/getRecommend', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-10 17:42:25.605651', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-10 17:42:25.609081', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-10 17:42:25.648063', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-10 17:42:26.673365', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-10 17:42:27.336445', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-10 17:42:28.508176', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-10 17:42:29.132656', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-10 17:42:29.754330', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-10 17:42:30.334672', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-10 17:42:31.085951', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-10 17:42:31.937081', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-10 17:42:33.412220', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-10 17:42:34.477813', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-10 17:42:35.102233', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-10 17:42:36.243132', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-10 17:42:37.335624', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-10 17:42:37.999644', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-10 17:42:39.329649', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-10 17:42:43.835785', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-10 17:43:04.586151', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-10 17:43:10.225183', '/myapp/admin/classification/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-10 17:43:10.279191', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-10 17:43:12.622373', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-10 17:43:13.755336', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-10 17:43:14.330303', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-10 17:43:19.355499', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-10 17:43:19.361699', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-10 17:43:19.396465', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-10 17:43:19.493895', '/upload/cover/1718011938515.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-10 17:43:19.494896', '/upload/cover/1718011938515.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-10 17:43:19.496892', '/upload/cover/1718011938515.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-10 17:43:19.505891', '/upload/cover/1718011887832.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-10 17:43:19.514903', '/upload/cover/1718011806684.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-10 17:43:19.535425', '/upload/cover/1718011573481.jpeg', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-10 17:43:19.581587', '/upload/cover/1718010044178.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-10 17:43:19.583584', '/upload/cover/1718010044178.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-10 17:43:19.585584', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-10 17:43:19.589586', '/upload/cover/1718011311344.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-10 17:43:19.590583', '/upload/cover/1718011311344.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-10 17:43:19.593983', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-10 17:43:19.953681', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-10 17:43:21.494197', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-10 17:43:22.582646', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-10 17:43:24.077004', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-10 17:43:24.737239', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-10 17:43:25.593079', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-10 17:43:29.547064', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-10 17:43:29.693138', '/myapp/admin/classification/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-10 17:43:41.156291', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-10 17:43:41.433289', '/myapp/admin/thing/list', 'GET', NULL, '194');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-10 17:43:43.851782', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-10 17:43:43.913682', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-10 17:43:44.514638', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-10 17:43:44.522976', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-10 17:43:44.584007', '/myapp/index/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-10 17:43:50.364627', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-10 17:43:51.041654', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-10 17:43:51.693496', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-10 17:43:52.458985', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-10 17:44:08.769973', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-10 17:44:08.785898', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-10 17:44:08.818047', '/myapp/admin/ad/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-10 17:44:08.835034', '/myapp/admin/ad/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-10 17:44:08.875256', '/myapp/admin/ad/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-10 17:51:20.906598', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-10 17:52:11.892560', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-10 17:52:11.897779', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-10 17:52:11.919664', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-10 17:52:11.980895', '/myapp/index/thing/getRecommend', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-10 17:52:12.000888', '/myapp/index/thing/getRecommend', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-10 17:52:12.054642', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-10 17:52:12.060636', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-10 17:52:12.075817', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-10 17:52:12.075817', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-10 17:52:54.546509', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-10 17:52:54.549520', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-10 17:52:54.558551', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-10 17:52:54.584258', '/myapp/index/comment/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-10 17:52:54.635396', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-10 17:52:54.642421', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-10 17:52:54.704249', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-10 17:52:54.704249', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-10 17:52:54.705241', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-10 17:52:57.689347', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-10 17:52:57.697640', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-10 17:52:57.704925', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-10 17:52:57.745069', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-10 17:52:57.777434', '/myapp/admin/ad/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-10 17:52:57.793023', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-10 17:52:57.836787', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-10 17:52:57.856272', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-10 17:52:57.858297', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-10 17:52:57.868284', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-10 17:53:11.377630', '/upload/source/1718012040476.mpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-10 17:54:48.401930', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-10 17:54:48.405043', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-10 17:54:48.423058', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-10 17:54:48.465698', '/myapp/index/comment/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-10 17:54:48.501743', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-10 17:54:48.506998', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-10 17:54:48.561178', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-10 17:54:48.566186', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-10 17:54:48.567172', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-10 17:54:48.568785', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-10 17:56:17.398183', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-10 17:56:17.406984', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-10 17:56:17.412201', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-10 17:56:17.452079', '/myapp/index/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-10 17:56:17.472792', '/myapp/index/comment/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-10 17:56:17.483214', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-10 17:56:17.519595', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-10 17:56:17.521688', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-10 17:56:17.521688', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-10 17:58:36.182441', '/upload/source/1718012040476.mpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-10 17:58:39.511273', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-10 17:58:39.531809', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-10 17:58:39.544799', '/myapp/index/thing/getRecommend', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-10 17:58:39.582067', '/myapp/index/thing/getRecommend', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-10 17:58:39.605117', '/myapp/index/thing/getRecommend', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-10 17:58:39.627182', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-10 17:58:39.661137', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-10 17:58:39.664154', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-10 17:58:39.664154', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-10 17:58:48.284109', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-10 17:58:48.288795', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-10 17:58:48.296762', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-10 17:58:48.439756', '/myapp/index/thing/getRecommend', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-10 17:58:48.444750', '/myapp/index/thing/getRecommend', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-10 17:58:48.507546', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-10 17:58:48.537494', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-10 17:58:48.538920', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-10 17:58:48.538920', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-10 17:59:21.241652', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-10 17:59:21.247647', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-10 17:59:21.256649', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-10 17:59:21.300692', '/myapp/index/thing/getRecommend', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-10 17:59:21.325824', '/myapp/index/thing/getRecommend', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-10 17:59:21.354313', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-10 17:59:21.391895', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-10 17:59:21.390879', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-10 17:59:21.392899', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-10 18:00:57.607211', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-10 18:00:57.632962', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-10 18:00:57.641242', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-10 18:00:57.703045', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-10 18:00:57.723175', '/myapp/index/comment/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-10 18:00:57.750435', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-10 18:00:57.814362', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-10 18:00:57.815359', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-10 18:00:57.817357', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-10 18:01:37.730738', '/upload/source/1718012040476.mpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-10 18:01:51.668205', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-10 18:01:51.679525', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-10 18:01:51.702185', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-10 18:01:51.720916', '/myapp/admin/ad/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-10 18:01:51.753793', '/myapp/admin/ad/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-10 18:01:51.764369', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-10 18:01:51.814324', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-10 18:01:51.814324', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-10 18:01:51.815234', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-10 18:02:30.361012', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-10 18:02:30.375015', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-10 18:02:30.384032', '/myapp/index/thing/getRecommend', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-10 18:02:30.415400', '/myapp/index/thing/getRecommend', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-10 18:02:30.473743', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-10 18:02:30.484773', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-10 18:02:30.540265', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-10 18:02:30.560073', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-10 18:02:30.561095', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-10 18:02:30.563094', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-10 18:03:34.169552', '/upload/source/1718012040476.mpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-10 18:03:46.836313', '/myapp/admin/ad/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-10 18:03:46.856915', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-10 18:03:46.883479', '/myapp/index/thing/getRecommend', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-10 18:03:46.909492', '/myapp/index/thing/getRecommend', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-10 18:03:46.945368', '/myapp/index/thing/getRecommend', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-10 18:03:46.960371', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-10 18:03:47.019959', '/upload/source/1718012040476.mpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-10 18:03:47.036362', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-10 18:03:47.043240', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-10 18:03:47.042228', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-10 18:03:47.073637', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-10 18:04:01.696980', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-10 18:04:01.728840', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-10 18:04:01.734295', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-10 18:04:01.793590', '/myapp/index/thing/detail', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-10 18:04:01.827994', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-10 18:04:01.838110', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-10 18:04:01.863079', '/upload/source/1718012040476.mpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-10 18:04:01.884644', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-10 18:04:01.886077', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-10 18:04:01.894946', '/upload/cover/1718011263069.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-10 18:04:30.034393', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-10 18:04:30.038435', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-10 18:04:30.087409', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-10 18:04:30.160616', '/upload/cover/1718011573481.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-10 18:04:30.163142', '/upload/cover/1718011573481.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-10 18:04:30.165163', '/upload/cover/1718011573481.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-10 18:04:30.164167', '/upload/cover/1718011573481.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-10 18:04:30.169156', '/upload/cover/1718011573481.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-10 18:04:30.191147', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-10 18:04:30.193388', '/upload/cover/1718011440162.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-10 18:04:30.197540', '/upload/cover/1718011311344.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-10 18:04:34.330095', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-10 18:04:34.348211', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-10 18:04:34.365330', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-10 18:04:34.422810', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-10 18:04:34.450783', '/myapp/index/comment/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-10 18:04:34.486294', '/upload/source/1718011941796.mpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-10 18:04:40.096606', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-10 18:04:40.134961', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-10 18:04:40.163603', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-10 18:04:42.707308', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-10 18:04:42.718263', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-10 18:04:42.732178', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-10 18:04:42.790960', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-10 18:04:42.809488', '/myapp/index/comment/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-10 18:04:42.857690', '/upload/source/1718011891135.mpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-10 18:05:44.761483', '/myapp/admin/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-10 18:05:44.839807', '/myapp/admin/classification/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-10 18:06:00.457692', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-10 18:06:00.460697', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-10 18:06:00.501456', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-10 18:06:00.522468', '/myapp/admin/ad/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-10 18:06:00.572567', '/myapp/admin/ad/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-10 20:41:43.749053', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-10 20:41:43.822540', '/myapp/admin/classification/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-10 20:41:43.972661', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-10 20:41:43.976663', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-10 20:41:43.981662', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-10 20:41:44.010909', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-10 20:41:44.021907', '/myapp/index/thing/getRecommend', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-10 20:41:44.245634', '/upload/cover/1718011887832.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-10 20:41:44.249628', '/upload/cover/1718011887832.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-10 20:41:44.259639', '/upload/cover/1718012035896.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-10 20:41:44.265637', '/upload/cover/1718011938515.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-10 20:41:44.372005', '/upload/cover/1718010044178.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-10 20:42:07.420049', '/myapp/index/user/register', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-10 20:42:10.295483', '/myapp/index/user/login', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-10 20:42:10.642415', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-10 20:42:10.644416', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-10 20:42:10.646416', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-10 20:42:10.660420', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-10 20:42:10.676937', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-10 20:42:10.677937', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-10 20:42:10.678938', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-10 20:42:10.680939', '/upload/cover/1718011498712.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-10 20:42:10.681941', '/upload/cover/1718011311344.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-10 20:42:10.681941', '/upload/cover/1718011311344.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-10 20:42:10.688939', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-10 20:42:10.688939', '/upload/cover/1718010662874.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-10 20:42:13.298040', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-10 20:42:13.302043', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-10 20:42:13.309038', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-10 20:42:13.310039', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-10 20:42:13.320039', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-10 20:42:13.331037', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-10 20:42:13.370048', '/upload/source/1718011989187.mpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-10 20:42:41.943924', '/myapp/index/thing/addWishUser', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-10 20:42:41.958945', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-10 20:42:42.539031', '/myapp/index/thing/addCollectUser', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-10 20:42:42.571389', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-10 20:43:36.624352', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-10 20:43:36.631368', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-10 20:43:36.635370', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-10 20:43:36.685940', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-10 20:44:11.072726', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-10 20:44:11.083714', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-10 20:44:11.111287', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-10 20:44:11.121673', '/myapp/admin/ad/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-10 20:44:11.136158', '/myapp/admin/ad/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-10 20:44:11.163179', '/myapp/admin/ad/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-10 20:44:28.162881', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-10 20:44:28.167646', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-10 20:44:28.188116', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-10 20:44:28.217319', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-10 20:44:50.728249', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-10 20:44:50.852621', '/myapp/admin/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-10 20:44:58.072215', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-10 20:44:58.203181', '/myapp/admin/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-10 20:45:06.429029', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-10 20:45:06.587103', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-10 20:45:34.212671', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-10 20:45:34.340704', '/myapp/admin/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-10 20:45:37.176738', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-10 20:45:37.179761', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-10 20:45:37.226800', '/myapp/index/thing/getRecommend', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-10 20:45:37.546045', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-10 20:45:37.550031', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-10 20:45:37.558032', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-10 20:45:37.597441', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-10 20:46:13.990819', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-10 20:46:13.999822', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-10 20:46:14.003816', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-10 20:46:14.031619', '/myapp/admin/ad/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-10 20:46:14.056235', '/myapp/admin/ad/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-10 20:46:14.087053', '/myapp/admin/ad/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-10 20:46:14.117444', '/upload/source/1718011577090.mpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-10 20:46:15.660413', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-10 20:46:15.667507', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-10 20:46:15.690642', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-10 20:46:15.728536', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-10 20:46:16.804521', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-10 20:46:16.806530', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-10 20:46:16.817797', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-10 20:46:16.834920', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-10 20:46:16.872478', '/myapp/index/comment/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-10 20:46:16.892538', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-10 20:46:16.906364', '/upload/source/1718011316074.mpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-10 20:46:17.928481', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-10 20:46:17.942787', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-10 20:46:17.955396', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-10 20:46:17.978051', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-10 20:46:19.037712', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-10 20:46:19.045297', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-10 20:46:19.052868', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-10 20:46:19.080437', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-10 20:46:19.110353', '/myapp/index/comment/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-10 20:46:19.132798', '/myapp/index/comment/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-10 20:46:19.161413', '/upload/source/1718010997397.mpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-10 20:46:20.091445', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-10 20:46:20.099375', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-10 20:46:20.106885', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-10 20:46:20.147973', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-10 20:46:21.161732', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-10 20:46:21.167270', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-10 20:46:21.176283', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-10 20:46:21.197300', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-10 20:46:21.233302', '/myapp/index/comment/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-10 20:46:21.254310', '/myapp/index/comment/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-10 20:46:22.350620', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-10 20:46:22.355639', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-10 20:46:22.364770', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-10 20:46:22.409364', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-10 20:46:24.177766', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-10 20:46:24.186766', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-10 20:46:24.199767', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-10 20:46:24.214751', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-10 20:46:24.255766', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-10 20:46:24.279306', '/upload/source/1718011267490.mpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-10 20:46:24.291316', '/upload/source/1718011267490.mpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-10 20:46:25.209868', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-10 20:46:25.231799', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-10 20:46:25.235811', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-10 20:46:25.266395', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-10 20:46:42.974674', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-10 20:46:42.983673', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-10 20:46:43.032915', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-10 20:47:20.779815', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-10 20:47:20.786307', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-10 20:47:20.814411', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-10 20:47:20.837399', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-10 20:47:25.365212', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-10 20:47:25.370203', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-10 20:47:25.386259', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-10 20:47:52.511235', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-10 20:47:52.514235', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-10 20:47:52.528256', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-10 20:47:52.546506', '/myapp/index/thing/getRecommend', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-10 20:47:52.576669', '/myapp/index/thing/getRecommend', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-10 20:47:52.594751', '/myapp/index/thing/getRecommend', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-10 20:48:03.335801', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-10 20:48:03.888857', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-10 20:48:07.073750', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-10 20:48:07.092075', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-10 20:48:07.108620', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-10 20:48:07.126621', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-10 20:48:07.154636', '/myapp/index/thing/detail', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-10 20:48:07.163168', '/myapp/index/thing/detail', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-10 20:48:07.182720', '/upload/source/1718011502894.mpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-10 20:48:51.914404', '/myapp/index/thing/addWishUser', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-10 20:48:51.968872', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-10 20:48:52.344332', '/myapp/index/thing/addCollectUser', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-10 20:48:52.451705', '/myapp/index/thing/detail', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-10 20:48:55.199324', '/myapp/index/thing/getWishThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-10 20:48:55.205646', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-10 20:48:55.241257', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-10 20:48:55.246521', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-10 20:48:55.255084', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-10 20:48:55.272214', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-10 20:48:56.363450', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-10 20:48:57.028110', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-10 20:49:22.179840', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-10 20:49:24.004632', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-10 20:49:24.852591', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-10 20:49:38.109134', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-10 20:49:38.729476', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-10 20:49:58.011660', '/myapp/index/thing/listUserThing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-10 20:49:58.015662', '/myapp/index/thing/listUserThing', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-10 20:49:58.606149', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-10 20:50:00.055678', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-10 20:50:01.975102', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-10 20:50:01.980098', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-10 20:50:01.985084', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-10 20:50:02.004031', '/myapp/index/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-10 20:50:02.036702', '/myapp/index/comment/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-10 20:50:02.057559', '/myapp/index/comment/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-10 20:50:03.629040', '/myapp/index/thing/removeCollectUser', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-10 20:50:03.661047', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-10 20:50:05.072032', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-10 20:50:05.840889', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-10 20:50:09.037846', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-10 20:50:11.314919', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-10 20:50:12.718152', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-10 20:50:15.546413', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-10 20:50:30.779167', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-10 20:50:30.784165', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-10 20:50:30.789166', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-10 20:50:30.836702', '/myapp/index/user/info', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-10 20:50:33.541865', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-10 20:50:33.544878', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-10 20:50:33.574423', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-10 20:50:33.598426', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-10 20:50:33.628675', '/myapp/index/thing/detail', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-10 20:50:33.647814', '/myapp/index/thing/detail', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-10 20:50:33.664217', '/upload/source/1718011810470.mpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-10 20:50:35.380079', '/myapp/index/thing/addWishUser', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-10 20:50:35.425174', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-10 20:50:35.825046', '/myapp/index/thing/addCollectUser', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-10 20:50:35.868884', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-10 20:50:44.082740', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-10 20:50:44.087721', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-10 20:50:44.118966', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-10 20:50:44.139241', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-10 20:50:44.145150', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-10 20:50:44.167250', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-10 20:50:45.983130', '/myapp/index/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-10 20:50:47.028941', '/myapp/index/comment/listMyComments', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-10 20:50:48.135087', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-10 20:50:48.150785', '/myapp/index/thing/listUserThing', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-10 20:50:48.799879', '/myapp/index/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-10 20:50:49.607976', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-10 20:50:49.611174', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-10 20:50:50.584628', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-10 20:51:37.860582', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-10 20:51:37.972412', '/myapp/admin/classification/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-10 20:51:46.223892', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-10 20:51:46.226899', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-10 20:51:46.237127', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-10 20:51:46.278329', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-10 20:51:47.781481', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-10 20:51:47.784478', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-10 20:51:47.820998', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-10 20:51:47.826009', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-10 20:51:47.834001', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-10 20:51:47.852557', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-10 20:51:49.005617', '/myapp/index/comment/listMyComments', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-10 20:51:49.556083', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-10 20:51:51.043997', '/myapp/index/comment/listMyComments', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-10 20:51:54.696582', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-10 20:51:54.702686', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-10 20:51:54.711210', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-10 20:51:54.747203', '/myapp/index/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-10 20:51:55.487992', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-10 20:51:55.497542', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-10 20:51:55.501782', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-10 20:51:55.516927', '/myapp/admin/ad/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-10 20:51:55.560932', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-10 20:51:55.578196', '/myapp/admin/ad/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-10 20:52:00.488712', '/myapp/index/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-10 20:52:00.536038', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-10 20:52:02.698640', '/myapp/index/comment/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-10 20:52:02.724586', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-10 20:52:04.671604', '/myapp/index/comment/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-10 20:52:06.957500', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-10 20:52:06.977635', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-10 20:52:07.008594', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-10 20:52:07.015829', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-10 20:52:07.022844', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-10 20:52:07.035394', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-10 20:52:08.354606', '/myapp/index/comment/listMyComments', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-10 20:52:09.626680', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-10 20:52:18.132754', '/myapp/index/user/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-10 20:52:19.091137', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-10 20:52:19.099134', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-10 20:52:19.130502', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-10 20:52:19.137038', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-10 20:52:19.145068', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-10 20:52:19.146059', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-10 20:52:19.161894', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-10 20:52:20.944669', '/myapp/index/comment/listMyComments', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-10 20:52:21.683558', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-10 20:52:23.743577', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-10 20:52:24.580750', '/myapp/index/comment/listMyComments', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-10 20:52:25.490136', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-10 20:52:26.137763', '/myapp/index/comment/listMyComments', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-10 20:52:43.172959', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-10 20:52:43.943279', '/myapp/admin/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-10 20:52:46.476255', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-10 20:52:46.488799', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-10 20:52:46.495339', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-10 20:52:46.539381', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-10 20:52:48.403990', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-10 20:52:48.408993', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-10 20:52:48.420997', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-10 20:52:48.443162', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-10 20:52:48.480924', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-10 20:52:48.515497', '/upload/source/1718011941796.mpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-10 20:52:48.518483', '/upload/source/1718011941796.mpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-10 20:52:53.859657', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-10 20:52:56.922009', '/myapp/index/comment/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-10 20:53:10.930469', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-10 20:53:10.931470', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-10 20:53:10.937493', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-10 20:53:10.951422', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-10 20:53:10.957421', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-10 20:53:10.971394', '/upload/avatar/1718023932706.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-10 20:53:10.975389', '/upload/avatar/1718023932706.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-10 20:53:15.225610', '/myapp/index/comment/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-10 20:53:15.235598', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-10 20:53:19.367130', '/myapp/index/comment/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-10 20:53:19.421234', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-10 20:53:21.882762', '/myapp/index/comment/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-10 20:53:21.945724', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-10 20:53:25.363534', '/myapp/index/comment/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-10 20:53:25.395320', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-10 20:53:29.052156', '/myapp/index/comment/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-10 20:53:29.114564', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-10 20:53:33.283174', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-10 20:53:33.350936', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-10 20:53:37.287743', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-10 20:53:37.340690', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-10 20:53:40.989694', '/myapp/index/comment/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-10 20:53:41.055807', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-10 20:53:44.372732', '/myapp/index/comment/like', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-10 20:53:44.436913', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-10 20:53:45.160935', '/myapp/index/comment/like', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-10 20:53:45.214466', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-10 20:53:45.902810', '/myapp/index/comment/like', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-10 20:53:45.959516', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-10 20:53:46.966293', '/myapp/index/comment/like', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-10 20:53:47.032233', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-10 20:53:47.575001', '/myapp/index/comment/like', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-10 20:53:47.622993', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-10 20:53:48.723293', '/myapp/index/comment/like', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-10 20:53:48.767158', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-10 20:53:49.384534', '/myapp/index/comment/like', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-10 20:53:49.433674', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-10 20:53:49.940344', '/myapp/index/comment/like', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-10 20:53:50.005918', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-10 20:53:50.434289', '/myapp/index/comment/like', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-10 20:53:50.482043', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-10 20:53:50.998346', '/myapp/index/comment/like', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-10 20:53:51.067940', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-10 20:53:54.596011', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-10 20:53:54.613412', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-10 20:53:54.654307', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-10 20:53:54.665216', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-10 20:53:54.670708', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-10 20:53:54.691275', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-10 20:54:01.235753', '/myapp/index/comment/listMyComments', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-10 20:54:13.805102', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-10 20:54:15.906686', '/myapp/admin/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-10 20:54:16.354758', '/myapp/admin/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-10 20:54:17.621962', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-10 20:54:29.558822', '/myapp/admin/user/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-10 20:54:29.589858', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-10 20:54:38.822394', '/myapp/admin/user/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-10 20:54:38.850404', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-10 20:54:51.108474', '/myapp/admin/user/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-10 20:54:51.147496', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-10 20:54:55.323091', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-10 20:54:56.739420', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-10 20:55:24.507834', '/myapp/admin/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-10 20:55:25.094432', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-10 20:55:27.058965', '/myapp/admin/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-10 20:55:27.887796', '/myapp/admin/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-10 20:55:28.593711', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-10 20:55:38.046361', '/myapp/admin/ad/create', 'POST', NULL, '299');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-10 20:55:38.064527', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-10 20:55:38.112180', '/upload/ad/1718024133597.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-10 20:55:48.938458', '/myapp/admin/ad/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-10 20:55:48.961390', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-10 20:55:48.998732', '/upload/ad/1718024142935.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-10 20:55:50.735891', '/myapp/admin/notice/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-10 20:56:05.947593', '/myapp/admin/notice/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-10 20:56:05.995764', '/myapp/admin/notice/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-06-10 20:56:19.499028', '/myapp/admin/notice/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-06-10 20:56:19.527955', '/myapp/admin/notice/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-06-10 20:56:30.678158', '/myapp/admin/notice/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-06-10 20:56:30.725952', '/myapp/admin/notice/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-06-10 20:56:32.282913', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-10 20:56:32.313934', '/upload/ad/1718024133597.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-10 20:56:32.340529', '/upload/ad/1718024133597.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-10 20:56:37.155659', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-10 20:56:37.173816', '/upload/ad/1718024142935.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-10 20:56:39.113236', '/myapp/admin/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-10 20:56:39.622104', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-10 20:56:41.540410', '/myapp/admin/loginLog/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-10 20:56:42.305199', '/myapp/admin/opLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-10 20:56:43.163252', '/myapp/admin/errorLog/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-10 20:56:43.818803', '/myapp/admin/opLog/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-10 20:56:44.563025', '/myapp/admin/loginLog/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-10 20:56:46.294196', '/myapp/admin/opLog/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-10 20:56:52.242119', '/myapp/admin/overview/count', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-10 20:56:54.447269', '/myapp/admin/feedback/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-10 20:56:56.953299', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1074');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 12, 16, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 10, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 9, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 11, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 7, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 4, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 2, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (8, 1, 6, '127.0.0.1');
INSERT INTO `b_record` VALUES (9, 3, 3, '127.0.0.1');
INSERT INTO `b_record` VALUES (10, 6, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (11, 8, 3, '127.0.0.1');
INSERT INTO `b_record` VALUES (12, 5, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `yuyan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `geshou` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `faxingfang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhuanji` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '千千阙歌', 'cover/1718010044178.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '国语', '王小丽', '香港明星公司', '0', '2024-06-10 16:46:44.303985', 6, 0, 1, 1, 1, NULL, 4, 'source/1718025208877.mpeg', '我的爱人');
INSERT INTO `b_thing` VALUES (2, '测试歌曲8', 'cover/1718010662874.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '国语', '王美丽', '北京快乐公司', '0', '2024-06-10 17:19:03.879975', 2, 0, 0, 0, 4, NULL, 3, 'source/1718010997397.mpeg', '我的天空');
INSERT INTO `b_thing` VALUES (3, '寂寞沙洲冷', 'cover/1718011263069.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '国语', '张三', '上海欢乐公司', '0', '2024-06-10 17:21:39.198738', 3, 0, 0, 0, 6, NULL, 3, 'source/1718011267490.mpeg', '我的天空');
INSERT INTO `b_thing` VALUES (4, '宁夏', 'cover/1718011311344.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '国语', '赵路', '北京公司', '0', '2024-06-10 17:22:26.363884', 4, 0, 1, 1, 2, NULL, 4, 'source/1718011316074.mpeg', '海边的天空');
INSERT INTO `b_thing` VALUES (5, '逍遥叹', 'cover/1718011440162.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '国语', '王蒙', '济南娱乐公司', '0', '2024-06-10 17:24:36.282595', 1, 0, 0, 0, 1, NULL, 3, 'source/1718011443815.mpeg', '我的路上');
INSERT INTO `b_thing` VALUES (6, '两只蝴蝶', 'cover/1718011498712.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '国语', '韩梅梅', '烟台娱乐公司', '0', '2024-06-10 17:25:33.826627', 4, 0, 1, 0, 5, NULL, 3, 'source/1718011502894.mpeg', '来自天空的你');
INSERT INTO `b_thing` VALUES (7, '千年之恋', 'cover/1718011573481.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '国语', '周明明', '上海公司', '0', '2024-06-10 17:26:54.811700', 1, 0, 0, 0, 4, NULL, 3, 'source/1718011577090.mpeg', '来自妹妹的你');
INSERT INTO `b_thing` VALUES (8, '秋天不回来', 'cover/1718011806684.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '英语', '韩露露', '上海惊天公司', '0', '2024-06-10 17:30:50.849805', 3, 0, 1, 1, 3, NULL, 3, 'source/1718011810470.mpeg', '美丽花园');
INSERT INTO `b_thing` VALUES (9, '歌曲黄昏2006', 'cover/1718011887832.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '粤语', '王磊', '天津某某公司', '0', '2024-06-10 17:31:57.414437', 4, 0, 0, 0, 2, NULL, 3, 'source/1718011891135.mpeg', '我的空天');
INSERT INTO `b_thing` VALUES (10, '测试歌曲诺言', 'cover/1718011938515.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '法语', '刘亦菲', '广州镭射公司', '0', '2024-06-10 17:32:48.761524', 4, 0, 0, 0, 1, NULL, 3, 'source/1718011941796.mpeg', '我的花朵');
INSERT INTO `b_thing` VALUES (11, '历史的天空', 'cover/1718011984823.jpeg', '一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '西班牙语', '刘德华', '哈哈哈哈哈公司', '0', '2024-06-10 17:33:38.169330', 5, 0, 1, 1, 2, NULL, 3, 'source/1718011989187.mpeg', '西来的路');
INSERT INTO `b_thing` VALUES (12, '天空的花朵', 'cover/1718012035896.jpeg', '这是来自一首充满深情与浪漫的歌曲，歌词描写了深爱之情的动人场景，通过美妙的旋律和动人的歌词表达了对爱情的坚定和执着。其中的“千千阙歌，唱出我爱你”一句成为了这首歌曲的经典台词，被广大听众传唱和喜爱。\r\n\r\n歌词如下：\r\n\r\n徐徐回望 曾屬於彼此的晚上\r\n紅紅仍是你贈我的心中艷陽\r\n如流傻淚 祈望可體恤兼見諒\r\n明晨離別你 路也許孤單得漫長\r\n一瞬間 太多東西要講\r\n可惜即將在各一方\r\n只好深深把這刻盡凝望\r\n來日縱使千千闋歌 飄於遠方我路上\r\n來日縱使千千晚星 亮過今晚月亮\r\n都比不起這宵美麗 亦絕不可使我更欣賞\r\n啊 因你今晚共我唱\r\n臨行臨別 才頓感哀傷的漂亮\r\n原來全是你令我的思憶漫長\r\n何年何月 才又可今宵一樣?\r\n停留凝望裡 讓眼睛講彼此立場\r\n當某天 雨點輕敲你窗\r\n當風聲吹亂你構想\r\n可否抽空想這張舊模樣?', '日语', '周杰伦', '深圳某某公司', '0', '2024-06-10 17:34:27.921190', 16, 0, 0, 0, 3, NULL, 3, 'source/1718012040476.mpeg', '美丽的花园');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (4, 1, 6);
INSERT INTO `b_thing_collect` VALUES (5, 4, 6);
INSERT INTO `b_thing_collect` VALUES (3, 8, 2);
INSERT INTO `b_thing_collect` VALUES (1, 11, 2);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (4, 1, 6);
INSERT INTO `b_thing_wish` VALUES (5, 4, 6);
INSERT INTO `b_thing_wish` VALUES (2, 6, 2);
INSERT INTO `b_thing_wish` VALUES (3, 8, 2);
INSERT INTO `b_thing_wish` VALUES (1, 11, 2);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'sdfas', 'avatar/1718023932706.jpeg', NULL, NULL, NULL, NULL, '2024-06-10 20:42:07.418050', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-10 20:54:29.546586', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-10 20:54:38.808432', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-10 20:54:51.095339', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (6, 'ttt', '9990775155c3518a0d7917f7780b24aa', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-10 21:12:29.241521', 0, NULL, 0, NULL, '9990775155c3518a0d7917f7780b24aa');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-10 16:38:14.855503');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-10 16:38:15.473641');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-10 16:38:15.628251');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-10 16:38:15.644274');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-10 16:38:15.661268');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-10 16:38:15.824971');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-10 16:38:15.922487');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-10 16:38:16.022360');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-10 16:38:16.040645');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-10 16:38:16.117773');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-10 16:38:16.124770');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-10 16:38:16.140675');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-10 16:38:16.228988');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-10 16:38:16.313325');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-10 16:38:16.388406');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-10 16:38:16.406747');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-10 16:38:16.497772');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-10 16:38:17.868493');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-10 16:38:17.983485');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-10 16:38:18.354096');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-10 16:38:18.518346');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240610_1638', '2024-06-10 16:38:19.469424');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-06-10 16:38:19.546537');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_alter_thing_source', '2024-06-10 17:18:51.514906');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
