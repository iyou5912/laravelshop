/*
 Navicat Premium Data Transfer

 Source Server         : Homestead
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 192.168.10.10:3306
 Source Schema         : laravel6

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 26/05/2021 16:55:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '主页', 'fa-bar-chart', '/', NULL, NULL, '2020-05-18 16:35:15');
INSERT INTO `admin_menu` VALUES (2, 0, 2, '管理员管理', 'fa-tasks', NULL, NULL, NULL, '2020-05-18 16:35:48');
INSERT INTO `admin_menu` VALUES (3, 2, 3, '管理员管理', 'fa-users', 'auth/users', NULL, NULL, '2020-05-18 17:04:28');
INSERT INTO `admin_menu` VALUES (4, 2, 4, '角色管理', 'fa-user', 'auth/roles', NULL, NULL, '2020-05-18 17:04:36');
INSERT INTO `admin_menu` VALUES (5, 2, 5, '权限管理', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-05-18 17:04:46');
INSERT INTO `admin_menu` VALUES (6, 2, 6, '菜单管理', 'fa-bars', 'auth/menu', NULL, NULL, '2020-05-18 17:04:56');
INSERT INTO `admin_menu` VALUES (8, 0, 8, '栏目管理', 'fa-align-left', '/navs', NULL, '2020-05-18 18:18:33', '2020-05-19 09:44:22');
INSERT INTO `admin_menu` VALUES (9, 0, 7, '网站基本信息', 'fa-info-circle', '/pages/1/edit', NULL, '2020-05-19 09:44:17', '2020-05-19 09:44:22');
INSERT INTO `admin_menu` VALUES (10, 0, 12, '联系方式', 'fa-volume-control-phone', '/pages/2/edit', NULL, '2020-05-19 10:01:18', '2021-04-30 14:28:31');
INSERT INTO `admin_menu` VALUES (11, 0, 10, '首页管理', 'fa-home', NULL, NULL, '2020-05-19 16:35:38', '2020-05-19 16:45:22');
INSERT INTO `admin_menu` VALUES (12, 11, 11, 'Banner', 'fa-bars', '/articles/1/edit', NULL, '2020-05-19 16:35:53', '2020-05-19 16:45:22');
INSERT INTO `admin_menu` VALUES (13, 0, 9, 'SEO管理', 'fa-internet-explorer', '/seos', NULL, '2020-05-19 16:44:59', '2020-05-19 16:45:22');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 903 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-18 11:06:57', '2020-05-18 11:06:57');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:07:03', '2020-05-18 11:07:03');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:07:06', '2020-05-18 11:07:06');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:29:02', '2020-05-18 11:29:02');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-18 11:29:18', '2020-05-18 11:29:18');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-18 11:29:22', '2020-05-18 11:29:22');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:29:25', '2020-05-18 11:29:25');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-18 11:30:17', '2020-05-18 11:30:17');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-18 11:30:27', '2020-05-18 11:30:27');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:30:49', '2020-05-18 11:30:49');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 11:30:53', '2020-05-18 11:30:53');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 11:31:14', '2020-05-18 11:31:14');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"$2y$10$jgwrH4Rgew0Cqaiq6Ho38eLK.Ie9TPss2SgMp62CJ3YgCpVcQk8SW\",\"password_confirmation\":\"$2y$10$jgwrH4Rgew0Cqaiq6Ho38eLK.Ie9TPss2SgMp62CJ3YgCpVcQk8SW\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"g42GLP74ibdFqWbjnYpLF9CPQeu0HPXW8wZm2Rjx\",\"_method\":\"PUT\"}', '2020-05-18 11:34:39', '2020-05-18 11:34:39');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-18 11:34:39', '2020-05-18 11:34:39');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:34:43', '2020-05-18 11:34:43');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:35:16', '2020-05-18 11:35:16');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-18 11:42:22', '2020-05-18 11:42:22');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:42:31', '2020-05-18 11:42:31');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:42:35', '2020-05-18 11:42:35');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"\\u683c\\u52a0\\u4fe1\\u606f\",\"password\":\"$2y$10$jgwrH4Rgew0Cqaiq6Ho38eLK.Ie9TPss2SgMp62CJ3YgCpVcQk8SW\",\"password_confirmation\":\"$2y$10$jgwrH4Rgew0Cqaiq6Ho38eLK.Ie9TPss2SgMp62CJ3YgCpVcQk8SW\",\"_token\":\"pb2qqiYxx7KyzBSDMjrv4wNg64wcnDnATDJQeePm\",\"_method\":\"PUT\"}', '2020-05-18 11:42:48', '2020-05-18 11:42:48');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-05-18 11:42:48', '2020-05-18 11:42:48');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-05-18 11:42:51', '2020-05-18 11:42:51');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 11:42:53', '2020-05-18 11:42:53');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-18 12:06:07', '2020-05-18 12:06:07');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 12:06:11', '2020-05-18 12:06:11');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 15:03:38', '2020-05-18 15:03:38');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-18 15:04:15', '2020-05-18 15:04:15');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-18 15:04:16', '2020-05-18 15:04:16');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 15:04:23', '2020-05-18 15:04:23');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'gjadmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 15:04:26', '2020-05-18 15:04:26');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-18 15:41:14', '2020-05-18 15:41:14');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 15:41:14', '2020-05-18 15:41:14');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'gjadmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 15:41:17', '2020-05-18 15:41:17');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-18 15:47:01', '2020-05-18 15:47:01');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 15:47:01', '2020-05-18 15:47:01');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 15:49:11', '2020-05-18 15:49:11');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-18 15:49:18', '2020-05-18 15:49:18');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 15:49:18', '2020-05-18 15:49:18');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:05:17', '2020-05-18 16:05:17');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:06:19', '2020-05-18 16:06:19');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:06:32', '2020-05-18 16:06:32');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:06:48', '2020-05-18 16:06:48');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:06:58', '2020-05-18 16:06:58');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:08:54', '2020-05-18 16:08:54');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:10:26', '2020-05-18 16:10:26');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:11:08', '2020-05-18 16:11:08');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:18:08', '2020-05-18 16:18:08');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:19:19', '2020-05-18 16:19:19');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 16:19:26', '2020-05-18 16:19:26');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 16:19:34', '2020-05-18 16:19:34');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:19:59', '2020-05-18 16:19:59');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'gjadmin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 16:21:53', '2020-05-18 16:21:53');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 16:22:02', '2020-05-18 16:22:02');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:29:14', '2020-05-18 16:29:14');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:29:16', '2020-05-18 16:29:16');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:30:56', '2020-05-18 16:30:56');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:30:58', '2020-05-18 16:30:58');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:30:59', '2020-05-18 16:30:59');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:31:20', '2020-05-18 16:31:20');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:31:22', '2020-05-18 16:31:22');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:33:00', '2020-05-18 16:33:00');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:33:26', '2020-05-18 16:33:26');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:34:04', '2020-05-18 16:34:04');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 16:34:19', '2020-05-18 16:34:19');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:35:03', '2020-05-18 16:35:03');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'gjadmin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 16:35:06', '2020-05-18 16:35:06');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'gjadmin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e3b\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/menu\"}', '2020-05-18 16:35:15', '2020-05-18 16:35:15');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:35:15', '2020-05-18 16:35:15');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'gjadmin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 16:35:41', '2020-05-18 16:35:41');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'gjadmin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/menu\"}', '2020-05-18 16:35:48', '2020-05-18 16:35:48');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:35:48', '2020-05-18 16:35:48');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:40:17', '2020-05-18 16:40:17');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:40:19', '2020-05-18 16:40:19');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:54:39', '2020-05-18 16:54:39');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 16:56:32', '2020-05-18 16:56:32');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 17:00:11', '2020-05-18 17:00:11');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 17:01:02', '2020-05-18 17:01:02');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 17:03:32', '2020-05-18 17:03:32');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'gjadmin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:04:20', '2020-05-18 17:04:20');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'gjadmin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/menu\"}', '2020-05-18 17:04:28', '2020-05-18 17:04:28');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 17:04:28', '2020-05-18 17:04:28');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'gjadmin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:04:30', '2020-05-18 17:04:30');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'gjadmin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/menu\"}', '2020-05-18 17:04:36', '2020-05-18 17:04:36');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 17:04:36', '2020-05-18 17:04:36');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'gjadmin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:04:40', '2020-05-18 17:04:40');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'gjadmin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/menu\"}', '2020-05-18 17:04:46', '2020-05-18 17:04:46');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 17:04:46', '2020-05-18 17:04:46');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'gjadmin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:04:50', '2020-05-18 17:04:50');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'gjadmin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/menu\"}', '2020-05-18 17:04:56', '2020-05-18 17:04:56');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 17:04:56', '2020-05-18 17:04:56');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'gjadmin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:04:58', '2020-05-18 17:04:58');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'gjadmin/auth/menu/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\"}', '2020-05-18 17:05:01', '2020-05-18 17:05:01');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:05:01', '2020-05-18 17:05:01');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'gjadmin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:05:07', '2020-05-18 17:05:07');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'gjadmin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 17:18:33', '2020-05-18 17:18:33');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:18:35', '2020-05-18 17:18:35');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:18:36', '2020-05-18 17:18:36');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:18:38', '2020-05-18 17:18:38');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:20:38', '2020-05-18 17:20:38');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:20:40', '2020-05-18 17:20:40');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:20:46', '2020-05-18 17:20:46');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:22:44', '2020-05-18 17:22:44');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'gjadmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:23:23', '2020-05-18 17:23:23');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:23:31', '2020-05-18 17:23:31');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-18 17:26:10', '2020-05-18 17:26:10');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-18 17:26:12', '2020-05-18 17:26:12');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-18 17:26:15', '2020-05-18 17:26:15');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-18 17:26:27', '2020-05-18 17:26:27');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-18 17:26:34', '2020-05-18 17:26:34');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:26:41', '2020-05-18 17:26:41');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-18 17:26:44', '2020-05-18 17:26:44');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:26:45', '2020-05-18 17:26:45');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:27:00', '2020-05-18 17:27:00');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-05-18 17:27:06', '2020-05-18 17:27:06');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'gjadmin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:27:11', '2020-05-18 17:27:11');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:27:13', '2020-05-18 17:27:13');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-05-18 17:28:14', '2020-05-18 17:28:14');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-05-18 17:28:20', '2020-05-18 17:28:20');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:28:22', '2020-05-18 17:28:22');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:28:23', '2020-05-18 17:28:23');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'gjadmin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:28:25', '2020-05-18 17:28:25');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:28:28', '2020-05-18 17:28:28');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-05-18 17:32:08', '2020-05-18 17:32:08');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:32:13', '2020-05-18 17:32:13');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:32:22', '2020-05-18 17:32:22');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:32:27', '2020-05-18 17:32:27');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:32:31', '2020-05-18 17:32:31');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:32:43', '2020-05-18 17:32:43');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:32:47', '2020-05-18 17:32:47');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:32:52', '2020-05-18 17:32:52');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:32:54', '2020-05-18 17:32:54');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'gjadmin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:32:57', '2020-05-18 17:32:57');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'gjadmin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:00', '2020-05-18 17:33:00');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:02', '2020-05-18 17:33:02');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:04', '2020-05-18 17:33:04');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'gjadmin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:07', '2020-05-18 17:33:07');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'gjadmin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:10', '2020-05-18 17:33:10');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:14', '2020-05-18 17:33:14');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:15', '2020-05-18 17:33:15');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:19', '2020-05-18 17:33:19');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:19', '2020-05-18 17:33:19');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:21', '2020-05-18 17:33:21');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:33:26', '2020-05-18 17:33:26');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 17:35:37', '2020-05-18 17:35:37');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 17:35:39', '2020-05-18 17:35:39');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'gjadmin/auth/permissions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:35:40', '2020-05-18 17:35:40');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'gjadmin/auth/permissions/1', 'GET', '127.0.0.1', '[]', '2020-05-18 17:35:47', '2020-05-18 17:35:47');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'gjadmin/auth/permissions/1', 'GET', '127.0.0.1', '[]', '2020-05-18 17:35:55', '2020-05-18 17:35:55');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:35:56', '2020-05-18 17:35:56');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 17:38:02', '2020-05-18 17:38:02');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'gjadmin/auth/permissions/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:38:22', '2020-05-18 17:38:22');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'gjadmin/auth/permissions/1', 'GET', '127.0.0.1', '[]', '2020-05-18 17:38:34', '2020-05-18 17:38:34');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:38:36', '2020-05-18 17:38:36');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:39:59', '2020-05-18 17:39:59');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:40:03', '2020-05-18 17:40:03');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'gjadmin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:40:06', '2020-05-18 17:40:06');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:40:09', '2020-05-18 17:40:09');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:40:12', '2020-05-18 17:40:12');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:40:24', '2020-05-18 17:40:24');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:40:58', '2020-05-18 17:40:58');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:41:00', '2020-05-18 17:41:00');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'gjadmin/auth/permissions/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:41:03', '2020-05-18 17:41:03');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:41:05', '2020-05-18 17:41:05');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'gjadmin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:41:08', '2020-05-18 17:41:08');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'gjadmin/auth/permissions/5', 'PUT', '127.0.0.1', '{\"slug\":\"auth.management\",\"name\":\"Auth management\",\"http_method\":[null],\"http_path\":\"\\/auth\\/roles\\r\\n\\/auth\\/permissions\\r\\n\\/auth\\/menu\\r\\n\\/auth\\/logs\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/permissions\"}', '2020-05-18 17:41:13', '2020-05-18 17:41:13');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:41:14', '2020-05-18 17:41:14');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:53:23', '2020-05-18 17:53:23');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:53:26', '2020-05-18 17:53:26');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:54:25', '2020-05-18 17:54:25');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'gjadmin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"slug\":\"*\",\"name\":\"All permission\",\"http_method\":[null],\"http_path\":\"*\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/permissions\"}', '2020-05-18 17:54:27', '2020-05-18 17:54:27');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:54:28', '2020-05-18 17:54:28');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:54:34', '2020-05-18 17:54:34');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'gjadmin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"slug\":\"*\",\"name\":\"All permission\",\"http_method\":[null],\"http_path\":\"*\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/permissions\"}', '2020-05-18 17:54:35', '2020-05-18 17:54:35');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-18 17:54:35', '2020-05-18 17:54:35');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'gjadmin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:54:58', '2020-05-18 17:54:58');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:55:00', '2020-05-18 17:55:00');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'gjadmin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 17:55:03', '2020-05-18 17:55:03');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 17:56:13', '2020-05-18 17:56:13');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 18:03:47', '2020-05-18 18:03:47');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 18:03:55', '2020-05-18 18:03:55');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:04:01', '2020-05-18 18:04:01');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'gjadmin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:04:02', '2020-05-18 18:04:02');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:04:02', '2020-05-18 18:04:02');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:04:03', '2020-05-18 18:04:03');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:04:06', '2020-05-18 18:04:06');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:18:05', '2020-05-18 18:18:05');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:18:14', '2020-05-18 18:18:14');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:18:15', '2020-05-18 18:18:15');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u680f\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"\\/navs\",\"roles\":[null],\"permission\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\"}', '2020-05-18 18:18:33', '2020-05-18 18:18:33');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 18:18:33', '2020-05-18 18:18:33');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6}]},{\\\"id\\\":8}]\"}', '2020-05-18 18:18:39', '2020-05-18 18:18:39');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:18:39', '2020-05-18 18:18:39');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 18:18:40', '2020-05-18 18:18:40');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:18:41', '2020-05-18 18:18:41');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:19:06', '2020-05-18 18:19:06');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:24:56', '2020-05-18 18:24:56');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:25:00', '2020-05-18 18:25:00');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:25:56', '2020-05-18 18:25:56');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:27:28', '2020-05-18 18:27:28');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:30:05', '2020-05-18 18:30:05');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:30:08', '2020-05-18 18:30:08');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:31:33', '2020-05-18 18:31:33');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:32:06', '2020-05-18 18:32:06');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:33:10', '2020-05-18 18:33:10');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:33:26', '2020-05-18 18:33:26');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:33:51', '2020-05-18 18:33:51');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:34:26', '2020-05-18 18:34:26');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'gjadmin/navs', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test1\",\"uri\":\"\\/test1\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\"}', '2020-05-18 18:34:35', '2020-05-18 18:34:35');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:34:36', '2020-05-18 18:34:36');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:09', '2020-05-18 18:35:09');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'gjadmin/navs', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test1\",\"link\":\"\\/test1\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\"}', '2020-05-18 18:35:16', '2020-05-18 18:35:16');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:16', '2020-05-18 18:35:16');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:17', '2020-05-18 18:35:17');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:19', '2020-05-18 18:35:19');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:20', '2020-05-18 18:35:20');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:22', '2020-05-18 18:35:22');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:23', '2020-05-18 18:35:23');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:24', '2020-05-18 18:35:24');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:26', '2020-05-18 18:35:26');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:27', '2020-05-18 18:35:27');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:29', '2020-05-18 18:35:29');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:30', '2020-05-18 18:35:30');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:31', '2020-05-18 18:35:31');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:33', '2020-05-18 18:35:33');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:34', '2020-05-18 18:35:34');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:35', '2020-05-18 18:35:35');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:37', '2020-05-18 18:35:37');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:35:38', '2020-05-18 18:35:38');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 18:36:09', '2020-05-18 18:36:09');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'gjadmin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:36:13', '2020-05-18 18:36:13');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:36:13', '2020-05-18 18:36:13');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 18:36:59', '2020-05-18 18:36:59');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:37:02', '2020-05-18 18:37:02');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 18:37:03', '2020-05-18 18:37:03');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:37:04', '2020-05-18 18:37:04');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 18:37:05', '2020-05-18 18:37:05');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-18 18:38:41', '2020-05-18 18:38:41');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:38:44', '2020-05-18 18:38:44');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'gjadmin/navs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:38:55', '2020-05-18 18:38:55');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'gjadmin/navs/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test1\",\"uri\":\"\\/test1\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/navs\"}', '2020-05-18 18:39:07', '2020-05-18 18:39:07');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:39:07', '2020-05-18 18:39:07');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:39:33', '2020-05-18 18:39:33');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'gjadmin/navs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:39:48', '2020-05-18 18:39:48');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'gjadmin/navs/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:42:46', '2020-05-18 18:42:46');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:42:48', '2020-05-18 18:42:48');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'gjadmin/navs', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test2\",\"link\":\"\\/test2\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\"}', '2020-05-18 18:42:55', '2020-05-18 18:42:55');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:42:56', '2020-05-18 18:42:56');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'gjadmin/navs', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test3\",\"link\":\"\\/test3\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\"}', '2020-05-18 18:43:19', '2020-05-18 18:43:19');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:43:19', '2020-05-18 18:43:19');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:43:21', '2020-05-18 18:43:21');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'gjadmin/navs/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:43:23', '2020-05-18 18:43:23');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'gjadmin/navs/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test2\",\"uri\":\"\\/test2\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/navs\"}', '2020-05-18 18:43:31', '2020-05-18 18:43:31');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:43:31', '2020-05-18 18:43:31');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'gjadmin/navs/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:43:33', '2020-05-18 18:43:33');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'gjadmin/navs/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test3\",\"uri\":\"test3\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/navs\"}', '2020-05-18 18:43:39', '2020-05-18 18:43:39');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:43:39', '2020-05-18 18:43:39');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'gjadmin/navs', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test4\",\"uri\":\"\\/test4\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\"}', '2020-05-18 18:43:47', '2020-05-18 18:43:47');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:43:48', '2020-05-18 18:43:48');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'gjadmin/navs/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:43:57', '2020-05-18 18:43:57');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'gjadmin/navs/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"test2\",\"uri\":\"\\/test2\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/navs\"}', '2020-05-18 18:44:01', '2020-05-18 18:44:01');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:44:01', '2020-05-18 18:44:01');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'gjadmin/navs', 'POST', '127.0.0.1', '{\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":2},{\\\"id\\\":4}]},{\\\"id\\\":3}]\"}', '2020-05-18 18:44:08', '2020-05-18 18:44:08');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:44:08', '2020-05-18 18:44:08');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:44:10', '2020-05-18 18:44:10');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'gjadmin/navs/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:44:33', '2020-05-18 18:44:33');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'gjadmin/navs/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test3\",\"uri\":\"\\/test3\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/navs\"}', '2020-05-18 18:44:36', '2020-05-18 18:44:36');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:44:37', '2020-05-18 18:44:37');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:44:38', '2020-05-18 18:44:38');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:45:33', '2020-05-18 18:45:33');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-18 18:46:16', '2020-05-18 18:46:16');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'gjadmin/navs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:46:17', '2020-05-18 18:46:17');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:46:20', '2020-05-18 18:46:20');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'gjadmin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:46:33', '2020-05-18 18:46:33');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'gjadmin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:46:39', '2020-05-18 18:46:39');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:46:42', '2020-05-18 18:46:42');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:52:41', '2020-05-18 18:52:41');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 18:52:44', '2020-05-18 18:52:44');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 18:53:02', '2020-05-18 18:53:02');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 18:53:20', '2020-05-18 18:53:20');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 18:53:41', '2020-05-18 18:53:41');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:54:20', '2020-05-18 18:54:20');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '[]', '2020-05-18 18:54:48', '2020-05-18 18:54:48');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:54:50', '2020-05-18 18:54:50');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 18:54:51', '2020-05-18 18:54:51');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:54:52', '2020-05-18 18:54:52');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'gjadmin/pages', 'POST', '127.0.0.1', '{\"tips\":\"\\u57fa\\u672c\\u4fe1\\u606f\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 18:55:06', '2020-05-18 18:55:06');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 18:55:06', '2020-05-18 18:55:06');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 18:55:16', '2020-05-18 18:55:16');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:55:35', '2020-05-18 18:55:35');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:55:43', '2020-05-18 18:55:43');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:55:45', '2020-05-18 18:55:45');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:57:19', '2020-05-18 18:57:19');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:57:20', '2020-05-18 18:57:20');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:58:55', '2020-05-18 18:58:55');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:59:34', '2020-05-18 18:59:34');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:59:41', '2020-05-18 18:59:41');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 18:59:48', '2020-05-18 18:59:48');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:00:00', '2020-05-18 19:00:00');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:00:01', '2020-05-18 19:00:01');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:00:01', '2020-05-18 19:00:01');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:00:02', '2020-05-18 19:00:02');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:01:46', '2020-05-18 19:01:46');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:02:12', '2020-05-18 19:02:12');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:03:23', '2020-05-18 19:03:23');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'gjadmin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:04:04', '2020-05-18 19:04:04');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'gjadmin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-05-18 19:05:21', '2020-05-18 19:05:21');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:05:44', '2020-05-18 19:05:44');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:07:39', '2020-05-18 19:07:39');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:07:50', '2020-05-18 19:07:50');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:08:00', '2020-05-18 19:08:00');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:08:22', '2020-05-18 19:08:22');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:08:23', '2020-05-18 19:08:23');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:10:44', '2020-05-18 19:10:44');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:10:58', '2020-05-18 19:10:58');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:11:41', '2020-05-18 19:11:41');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:11:51', '2020-05-18 19:11:51');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:12:09', '2020-05-18 19:12:09');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:12:11', '2020-05-18 19:12:11');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:12:31', '2020-05-18 19:12:31');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:14:20', '2020-05-18 19:14:20');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":null,\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:14:22', '2020-05-18 19:14:22');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 19:14:22', '2020-05-18 19:14:22');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:14:27', '2020-05-18 19:14:27');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:14:35', '2020-05-18 19:14:35');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"1\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:14:39', '2020-05-18 19:14:39');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-18 19:14:40', '2020-05-18 19:14:40');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:14:42', '2020-05-18 19:14:42');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:14:57', '2020-05-18 19:14:57');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:16:51', '2020-05-18 19:16:51');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:18:15', '2020-05-18 19:18:15');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"2\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:18:19', '2020-05-18 19:18:19');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:18:20', '2020-05-18 19:18:20');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:18:27', '2020-05-18 19:18:27');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:18:32', '2020-05-18 19:18:32');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:18:34', '2020-05-18 19:18:34');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:18:36', '2020-05-18 19:18:36');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"2\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 19:18:39', '2020-05-18 19:18:39');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:18:39', '2020-05-18 19:18:39');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:18:42', '2020-05-18 19:18:42');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:25:19', '2020-05-18 19:25:19');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:25:35', '2020-05-18 19:25:35');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:25:50', '2020-05-18 19:25:50');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:25:59', '2020-05-18 19:25:59');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:27:28', '2020-05-18 19:27:28');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:27:45', '2020-05-18 19:27:45');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:28:03', '2020-05-18 19:28:03');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:28:10', '2020-05-18 19:28:10');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:28:19', '2020-05-18 19:28:19');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:28:25', '2020-05-18 19:28:25');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:28:41', '2020-05-18 19:28:41');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:28:59', '2020-05-18 19:28:59');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:29:26', '2020-05-18 19:29:26');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:30:01', '2020-05-18 19:30:01');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:31:44', '2020-05-18 19:31:44');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:31:52', '2020-05-18 19:31:52');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:32:00', '2020-05-18 19:32:00');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:34:16', '2020-05-18 19:34:16');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:34:26', '2020-05-18 19:34:26');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:34:29', '2020-05-18 19:34:29');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'gjadmin/pages/1', 'GET', '127.0.0.1', '[]', '2020-05-18 19:34:32', '2020-05-18 19:34:32');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:34:34', '2020-05-18 19:34:34');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\\/1\"}', '2020-05-18 19:34:39', '2020-05-18 19:34:39');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'gjadmin/pages/1', 'GET', '127.0.0.1', '[]', '2020-05-18 19:34:50', '2020-05-18 19:34:50');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:34:53', '2020-05-18 19:34:53');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\\/1\"}', '2020-05-18 19:34:55', '2020-05-18 19:34:55');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'gjadmin/pages/1', 'GET', '127.0.0.1', '[]', '2020-05-18 19:35:46', '2020-05-18 19:35:46');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:35:48', '2020-05-18 19:35:48');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"4\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\\/1\"}', '2020-05-18 19:35:52', '2020-05-18 19:35:52');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:35:54', '2020-05-18 19:35:54');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:36:04', '2020-05-18 19:36:04');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"1\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\\/1\"}', '2020-05-18 19:36:09', '2020-05-18 19:36:09');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:36:10', '2020-05-18 19:36:10');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:37:00', '2020-05-18 19:37:00');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"1\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:37:06', '2020-05-18 19:37:06');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'gjadmin/pages/1', 'GET', '127.0.0.1', '[]', '2020-05-18 19:37:32', '2020-05-18 19:37:32');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:37:34', '2020-05-18 19:37:34');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"2\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\\/1\"}', '2020-05-18 19:37:38', '2020-05-18 19:37:38');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:37:39', '2020-05-18 19:37:39');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:38:08', '2020-05-18 19:38:08');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"2\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\\/1\"}', '2020-05-18 19:38:10', '2020-05-18 19:38:10');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:38:11', '2020-05-18 19:38:11');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:38:25', '2020-05-18 19:38:25');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:39:46', '2020-05-18 19:39:46');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"1\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:39:51', '2020-05-18 19:39:51');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:39:52', '2020-05-18 19:39:52');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:40:20', '2020-05-18 19:40:20');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"2\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:40:25', '2020-05-18 19:40:25');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:40:26', '2020-05-18 19:40:26');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"2\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:40:29', '2020-05-18 19:40:29');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:40:29', '2020-05-18 19:40:29');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:42:06', '2020-05-18 19:42:06');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:42:09', '2020-05-18 19:42:09');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:42:09', '2020-05-18 19:42:09');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:42:17', '2020-05-18 19:42:17');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"2\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:42:18', '2020-05-18 19:42:18');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:42:18', '2020-05-18 19:42:18');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:44:05', '2020-05-18 19:44:05');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:44:08', '2020-05-18 19:44:08');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:44:08', '2020-05-18 19:44:08');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:44:14', '2020-05-18 19:44:14');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:44:14', '2020-05-18 19:44:14');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:45:50', '2020-05-18 19:45:50');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:45:54', '2020-05-18 19:45:54');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:45:55', '2020-05-18 19:45:55');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:45:59', '2020-05-18 19:45:59');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:46:01', '2020-05-18 19:46:01');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:46:02', '2020-05-18 19:46:02');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:46:24', '2020-05-18 19:46:24');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:46:26', '2020-05-18 19:46:26');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:46:27', '2020-05-18 19:46:27');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:46:41', '2020-05-18 19:46:41');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:46:43', '2020-05-18 19:46:43');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:46:44', '2020-05-18 19:46:44');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:47:39', '2020-05-18 19:47:39');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:47:40', '2020-05-18 19:47:40');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:47:42', '2020-05-18 19:47:42');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:47:59', '2020-05-18 19:47:59');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:48:06', '2020-05-18 19:48:06');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:48:12', '2020-05-18 19:48:12');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '[]', '2020-05-18 19:48:24', '2020-05-18 19:48:24');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '[]', '2020-05-18 19:48:52', '2020-05-18 19:48:52');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:48:54', '2020-05-18 19:48:54');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:48:56', '2020-05-18 19:48:56');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:48:57', '2020-05-18 19:48:57');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:49:00', '2020-05-18 19:49:00');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:49:20', '2020-05-18 19:49:20');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:49:32', '2020-05-18 19:49:32');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:49:36', '2020-05-18 19:49:36');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'gjadmin/pages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:49:37', '2020-05-18 19:49:37');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'gjadmin/pages', 'POST', '127.0.0.1', '{\"tips\":\"\\u8054\\u7cfb\\u4fe1\\u606f\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 19:49:51', '2020-05-18 19:49:51');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:49:51', '2020-05-18 19:49:51');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:49:55', '2020-05-18 19:49:55');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'gjadmin/pages/2', 'PUT', '127.0.0.1', '{\"tips\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 19:49:59', '2020-05-18 19:49:59');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:49:59', '2020-05-18 19:49:59');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:50:01', '2020-05-18 19:50:01');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:50:03', '2020-05-18 19:50:03');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:50:05', '2020-05-18 19:50:05');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:50:07', '2020-05-18 19:50:07');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'gjadmin/pages/2', 'PUT', '127.0.0.1', '{\"tips\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 19:50:11', '2020-05-18 19:50:11');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:50:11', '2020-05-18 19:50:11');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:50:37', '2020-05-18 19:50:37');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'gjadmin/pages/2', 'PUT', '127.0.0.1', '{\"tips\":\"\\u8054\\u7cfb\\u4fe1\\u606f\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 19:50:40', '2020-05-18 19:50:40');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:50:40', '2020-05-18 19:50:40');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:50:55', '2020-05-18 19:50:55');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'gjadmin/pages/2', 'PUT', '127.0.0.1', '{\"tips\":\"\\u8054\\u7cfb\\u4fe1\\u606f\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\"}', '2020-05-18 19:50:57', '2020-05-18 19:50:57');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:50:57', '2020-05-18 19:50:57');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:50:59', '2020-05-18 19:50:59');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:51:02', '2020-05-18 19:51:02');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 19:51:06', '2020-05-18 19:51:06');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:51:06', '2020-05-18 19:51:06');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:51:26', '2020-05-18 19:51:26');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\\/2\\/edit\"}', '2020-05-18 19:51:29', '2020-05-18 19:51:29');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:51:29', '2020-05-18 19:51:29');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:51:33', '2020-05-18 19:51:33');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:51:35', '2020-05-18 19:51:35');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'gjadmin/pages/2', 'PUT', '127.0.0.1', '{\"tips\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 19:51:39', '2020-05-18 19:51:39');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:51:39', '2020-05-18 19:51:39');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:51:41', '2020-05-18 19:51:41');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-18 19:51:51', '2020-05-18 19:51:51');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:51:53', '2020-05-18 19:51:53');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'gjadmin/pages/2', 'PUT', '127.0.0.1', '{\"tips\":\"\\u8054\\u7cfb\\u6211\\u4eec1\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 19:51:56', '2020-05-18 19:51:56');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:51:56', '2020-05-18 19:51:56');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:51:59', '2020-05-18 19:51:59');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:52:02', '2020-05-18 19:52:02');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'gjadmin/pages/2', 'PUT', '127.0.0.1', '{\"tips\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"_token\":\"0ay6k5gwTnEgIHk4iedGVodm6rvEy7uYR9IDdv0k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/pages\"}', '2020-05-18 19:52:05', '2020-05-18 19:52:05');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:52:05', '2020-05-18 19:52:05');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:52:43', '2020-05-18 19:52:43');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:52:48', '2020-05-18 19:52:48');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:52:51', '2020-05-18 19:52:51');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:52:53', '2020-05-18 19:52:53');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:52:53', '2020-05-18 19:52:53');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:52:57', '2020-05-18 19:52:57');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-18 19:53:12', '2020-05-18 19:53:12');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 19:53:58', '2020-05-18 19:53:58');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 09:24:11', '2020-05-19 09:24:11');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-19 09:24:11', '2020-05-19 09:24:11');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'gjadmin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 09:24:14', '2020-05-19 09:24:14');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'gjadmin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"\\u683c\\u52a0\\u4fe1\\u606f\",\"password\":\"g+123456\",\"password_confirmation\":\"g+123456\",\"_token\":\"TI2wQ0YYwQONQsEJN5w8SN09oYxzqi0trCCvrU8I\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\"}', '2020-05-19 09:24:25', '2020-05-19 09:24:25');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'gjadmin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-05-19 09:24:25', '2020-05-19 09:24:25');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'gjadmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 09:24:35', '2020-05-19 09:24:35');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 09:24:54', '2020-05-19 09:24:54');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-19 09:24:54', '2020-05-19 09:24:54');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 09:24:56', '2020-05-19 09:24:56');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:25:02', '2020-05-19 09:25:02');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:25:30', '2020-05-19 09:25:30');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:25:40', '2020-05-19 09:25:40');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:25:41', '2020-05-19 09:25:41');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:28:35', '2020-05-19 09:28:35');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:28:59', '2020-05-19 09:28:59');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:29:49', '2020-05-19 09:29:49');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:29:50', '2020-05-19 09:29:50');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:29:50', '2020-05-19 09:29:50');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:30:41', '2020-05-19 09:30:41');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:30:51', '2020-05-19 09:30:51');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:35:05', '2020-05-19 09:35:05');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:35:55', '2020-05-19 09:35:55');
INSERT INTO `admin_operation_log` VALUES (497, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:43:25', '2020-05-19 09:43:25');
INSERT INTO `admin_operation_log` VALUES (498, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:43:45', '2020-05-19 09:43:45');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 09:43:47', '2020-05-19 09:43:47');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 09:43:54', '2020-05-19 09:43:54');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7f51\\u7ad9\\u57fa\\u672c\\u4fe1\\u606f\",\"icon\":\"fa-info-circle\",\"uri\":\"\\/pages\\/1\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"eorDy9Zky8flMNH9I8W9PZNBocxKSghGwdlDPEq7\"}', '2020-05-19 09:44:17', '2020-05-19 09:44:17');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 09:44:18', '2020-05-19 09:44:18');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eorDy9Zky8flMNH9I8W9PZNBocxKSghGwdlDPEq7\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6}]},{\\\"id\\\":9},{\\\"id\\\":8}]\"}', '2020-05-19 09:44:22', '2020-05-19 09:44:22');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 09:44:22', '2020-05-19 09:44:22');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 09:44:24', '2020-05-19 09:44:24');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 09:44:26', '2020-05-19 09:44:26');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 09:58:31', '2020-05-19 09:58:31');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-19 10:00:44', '2020-05-19 10:00:44');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 10:00:52', '2020-05-19 10:00:52');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 10:00:55', '2020-05-19 10:00:55');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 10:01:00', '2020-05-19 10:01:00');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8054\\u7cfb\\u65b9\\u5f0f\",\"icon\":\"fa-volume-control-phone\",\"uri\":\"\\/pages\\/2\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"eorDy9Zky8flMNH9I8W9PZNBocxKSghGwdlDPEq7\"}', '2020-05-19 10:01:18', '2020-05-19 10:01:18');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 10:01:18', '2020-05-19 10:01:18');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eorDy9Zky8flMNH9I8W9PZNBocxKSghGwdlDPEq7\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6}]},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":10}]\"}', '2020-05-19 10:01:24', '2020-05-19 10:01:24');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 10:01:24', '2020-05-19 10:01:24');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 10:01:48', '2020-05-19 10:01:48');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 10:01:52', '2020-05-19 10:01:52');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 10:01:54', '2020-05-19 10:01:54');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 10:02:08', '2020-05-19 10:02:08');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 10:10:21', '2020-05-19 10:10:21');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 10:10:32', '2020-05-19 10:10:32');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:11:21', '2020-05-19 11:11:21');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:11:23', '2020-05-19 11:11:23');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:11:24', '2020-05-19 11:11:24');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:11:44', '2020-05-19 11:11:44');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:14:55', '2020-05-19 11:14:55');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:19:37', '2020-05-19 11:19:37');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:19:46', '2020-05-19 11:19:46');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:19:49', '2020-05-19 11:19:49');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:20:18', '2020-05-19 11:20:18');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:20:20', '2020-05-19 11:20:20');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:20:22', '2020-05-19 11:20:22');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:25:24', '2020-05-19 11:25:24');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:27:54', '2020-05-19 11:27:54');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:28:00', '2020-05-19 11:28:00');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:28:01', '2020-05-19 11:28:01');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 11:28:25', '2020-05-19 11:28:25');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-19 11:28:25', '2020-05-19 11:28:25');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 11:28:28', '2020-05-19 11:28:28');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 11:28:29', '2020-05-19 11:28:29');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 11:29:29', '2020-05-19 11:29:29');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:30:22', '2020-05-19 11:30:22');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:31:17', '2020-05-19 11:31:17');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:31:29', '2020-05-19 11:31:29');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:43:21', '2020-05-19 11:43:21');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:43:35', '2020-05-19 11:43:35');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:43:43', '2020-05-19 11:43:43');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:44:42', '2020-05-19 11:44:42');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:44:59', '2020-05-19 11:44:59');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:47:16', '2020-05-19 11:47:16');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:47:25', '2020-05-19 11:47:25');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:47:49', '2020-05-19 11:47:49');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:48:47', '2020-05-19 11:48:47');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:48:49', '2020-05-19 11:48:49');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:49:11', '2020-05-19 11:49:11');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:49:14', '2020-05-19 11:49:14');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:49:25', '2020-05-19 11:49:25');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:49:29', '2020-05-19 11:49:29');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:49:43', '2020-05-19 11:49:43');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:49:46', '2020-05-19 11:49:46');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:50:12', '2020-05-19 11:50:12');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:50:13', '2020-05-19 11:50:13');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:50:19', '2020-05-19 11:50:19');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:50:36', '2020-05-19 11:50:36');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:51:03', '2020-05-19 11:51:03');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:51:22', '2020-05-19 11:51:22');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 11:51:33', '2020-05-19 11:51:33');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:01:09', '2020-05-19 12:01:09');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:19:49', '2020-05-19 12:19:49');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:19:57', '2020-05-19 12:19:57');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:20:07', '2020-05-19 12:20:07');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:22:00', '2020-05-19 12:22:00');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:22:55', '2020-05-19 12:22:55');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:23:48', '2020-05-19 12:23:48');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:23:56', '2020-05-19 12:23:56');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:24:21', '2020-05-19 12:24:21');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:24:38', '2020-05-19 12:24:38');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:24:46', '2020-05-19 12:24:46');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:25:21', '2020-05-19 12:25:21');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:25:36', '2020-05-19 12:25:36');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:25:59', '2020-05-19 12:25:59');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 12:26:11', '2020-05-19 12:26:11');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:33:43', '2020-05-19 13:33:43');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:35:18', '2020-05-19 13:35:18');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:35:20', '2020-05-19 13:35:20');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:35:22', '2020-05-19 13:35:22');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:35:30', '2020-05-19 13:35:30');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:35:32', '2020-05-19 13:35:32');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:35:33', '2020-05-19 13:35:33');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:35:35', '2020-05-19 13:35:35');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 13:35:54', '2020-05-19 13:35:54');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-19 13:35:54', '2020-05-19 13:35:54');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 13:35:56', '2020-05-19 13:35:56');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:36:15', '2020-05-19 13:36:15');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:36:21', '2020-05-19 13:36:21');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:36:39', '2020-05-19 13:36:39');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:36:47', '2020-05-19 13:36:47');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:36:57', '2020-05-19 13:36:57');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:37:14', '2020-05-19 13:37:14');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:37:19', '2020-05-19 13:37:19');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:37:28', '2020-05-19 13:37:28');
INSERT INTO `admin_operation_log` VALUES (602, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:37:42', '2020-05-19 13:37:42');
INSERT INTO `admin_operation_log` VALUES (603, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:37:54', '2020-05-19 13:37:54');
INSERT INTO `admin_operation_log` VALUES (604, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:38:03', '2020-05-19 13:38:03');
INSERT INTO `admin_operation_log` VALUES (605, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:38:14', '2020-05-19 13:38:14');
INSERT INTO `admin_operation_log` VALUES (606, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:38:24', '2020-05-19 13:38:24');
INSERT INTO `admin_operation_log` VALUES (607, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:38:31', '2020-05-19 13:38:31');
INSERT INTO `admin_operation_log` VALUES (608, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:38:42', '2020-05-19 13:38:42');
INSERT INTO `admin_operation_log` VALUES (609, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:38:45', '2020-05-19 13:38:45');
INSERT INTO `admin_operation_log` VALUES (610, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:38:51', '2020-05-19 13:38:51');
INSERT INTO `admin_operation_log` VALUES (611, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:38:59', '2020-05-19 13:38:59');
INSERT INTO `admin_operation_log` VALUES (612, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:39:11', '2020-05-19 13:39:11');
INSERT INTO `admin_operation_log` VALUES (613, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:39:24', '2020-05-19 13:39:24');
INSERT INTO `admin_operation_log` VALUES (614, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:39:35', '2020-05-19 13:39:35');
INSERT INTO `admin_operation_log` VALUES (615, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:39:39', '2020-05-19 13:39:39');
INSERT INTO `admin_operation_log` VALUES (616, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:40:44', '2020-05-19 13:40:44');
INSERT INTO `admin_operation_log` VALUES (617, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:41:45', '2020-05-19 13:41:45');
INSERT INTO `admin_operation_log` VALUES (618, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:43:58', '2020-05-19 13:43:58');
INSERT INTO `admin_operation_log` VALUES (619, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:44:08', '2020-05-19 13:44:08');
INSERT INTO `admin_operation_log` VALUES (620, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:45:48', '2020-05-19 13:45:48');
INSERT INTO `admin_operation_log` VALUES (621, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:46:48', '2020-05-19 13:46:48');
INSERT INTO `admin_operation_log` VALUES (622, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:47:41', '2020-05-19 13:47:41');
INSERT INTO `admin_operation_log` VALUES (623, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 13:49:02', '2020-05-19 13:49:02');
INSERT INTO `admin_operation_log` VALUES (624, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:02:22', '2020-05-19 14:02:22');
INSERT INTO `admin_operation_log` VALUES (625, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"uIYFnDNS7E1IiLY3zhtcHYsouCLHZIFyIpx8aaFq\",\"_method\":\"PUT\"}', '2020-05-19 14:03:45', '2020-05-19 14:03:45');
INSERT INTO `admin_operation_log` VALUES (626, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:03:45', '2020-05-19 14:03:45');
INSERT INTO `admin_operation_log` VALUES (627, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:03:59', '2020-05-19 14:03:59');
INSERT INTO `admin_operation_log` VALUES (628, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":\"<figure class=\\\"easyimage easyimage-full\\\"><img alt=\\\"\\\" src=\\\"blob:http:\\/\\/mingdu.test\\/e73a3cf9-a3f2-4921-b0b3-9f0bc4e26f37\\\" width=\\\"300\\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<\\/figure>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"text_n\":null,\"_token\":\"uIYFnDNS7E1IiLY3zhtcHYsouCLHZIFyIpx8aaFq\",\"_method\":\"PUT\"}', '2020-05-19 14:06:56', '2020-05-19 14:06:56');
INSERT INTO `admin_operation_log` VALUES (629, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:06:56', '2020-05-19 14:06:56');
INSERT INTO `admin_operation_log` VALUES (630, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:06:59', '2020-05-19 14:06:59');
INSERT INTO `admin_operation_log` VALUES (631, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:07:11', '2020-05-19 14:07:11');
INSERT INTO `admin_operation_log` VALUES (632, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:07:13', '2020-05-19 14:07:13');
INSERT INTO `admin_operation_log` VALUES (633, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:07:17', '2020-05-19 14:07:17');
INSERT INTO `admin_operation_log` VALUES (634, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:13:21', '2020-05-19 14:13:21');
INSERT INTO `admin_operation_log` VALUES (635, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:13:25', '2020-05-19 14:13:25');
INSERT INTO `admin_operation_log` VALUES (636, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:14:21', '2020-05-19 14:14:21');
INSERT INTO `admin_operation_log` VALUES (637, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:14:31', '2020-05-19 14:14:31');
INSERT INTO `admin_operation_log` VALUES (638, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:14:41', '2020-05-19 14:14:41');
INSERT INTO `admin_operation_log` VALUES (639, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:15:00', '2020-05-19 14:15:00');
INSERT INTO `admin_operation_log` VALUES (640, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:15:16', '2020-05-19 14:15:16');
INSERT INTO `admin_operation_log` VALUES (641, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:15:50', '2020-05-19 14:15:50');
INSERT INTO `admin_operation_log` VALUES (642, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:16:08', '2020-05-19 14:16:08');
INSERT INTO `admin_operation_log` VALUES (643, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:16:29', '2020-05-19 14:16:29');
INSERT INTO `admin_operation_log` VALUES (644, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:16:44', '2020-05-19 14:16:44');
INSERT INTO `admin_operation_log` VALUES (645, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:17:13', '2020-05-19 14:17:13');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:17:29', '2020-05-19 14:17:29');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:17:53', '2020-05-19 14:17:53');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"uIYFnDNS7E1IiLY3zhtcHYsouCLHZIFyIpx8aaFq\",\"_method\":\"PUT\"}', '2020-05-19 14:18:31', '2020-05-19 14:18:31');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:18:31', '2020-05-19 14:18:31');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:18:33', '2020-05-19 14:18:33');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:24:49', '2020-05-19 14:24:49');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:24:59', '2020-05-19 14:24:59');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:25:15', '2020-05-19 14:25:15');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:25:29', '2020-05-19 14:25:29');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:25:44', '2020-05-19 14:25:44');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:34:48', '2020-05-19 14:34:48');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:36:48', '2020-05-19 14:36:48');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:38:30', '2020-05-19 14:38:30');
INSERT INTO `admin_operation_log` VALUES (659, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:39:08', '2020-05-19 14:39:08');
INSERT INTO `admin_operation_log` VALUES (660, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:39:10', '2020-05-19 14:39:10');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:39:22', '2020-05-19 14:39:22');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:39:41', '2020-05-19 14:39:41');
INSERT INTO `admin_operation_log` VALUES (663, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:39:42', '2020-05-19 14:39:42');
INSERT INTO `admin_operation_log` VALUES (664, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:40:21', '2020-05-19 14:40:21');
INSERT INTO `admin_operation_log` VALUES (665, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:45:18', '2020-05-19 14:45:18');
INSERT INTO `admin_operation_log` VALUES (666, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:46:00', '2020-05-19 14:46:00');
INSERT INTO `admin_operation_log` VALUES (667, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:46:40', '2020-05-19 14:46:40');
INSERT INTO `admin_operation_log` VALUES (668, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:49:56', '2020-05-19 14:49:56');
INSERT INTO `admin_operation_log` VALUES (669, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"3\",\"cover\":null,\"content\":null,\"text_b\":null,\"text_n\":null,\"_token\":\"uIYFnDNS7E1IiLY3zhtcHYsouCLHZIFyIpx8aaFq\",\"_method\":\"PUT\"}', '2020-05-19 14:49:59', '2020-05-19 14:49:59');
INSERT INTO `admin_operation_log` VALUES (670, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:50:00', '2020-05-19 14:50:00');
INSERT INTO `admin_operation_log` VALUES (671, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:50:28', '2020-05-19 14:50:28');
INSERT INTO `admin_operation_log` VALUES (672, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 14:54:40', '2020-05-19 14:54:40');
INSERT INTO `admin_operation_log` VALUES (673, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:12:34', '2020-05-19 15:12:34');
INSERT INTO `admin_operation_log` VALUES (674, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:17:27', '2020-05-19 15:17:27');
INSERT INTO `admin_operation_log` VALUES (675, 1, 'gjadmin/ckeditor/upload/image', 'POST', '127.0.0.1', '{\"ckCsrfToken\":\"wFWxVkJLLO2VGPg283G1HmZb5BZQN8TGG2zzAM0q\",\"_token\":\"uIYFnDNS7E1IiLY3zhtcHYsouCLHZIFyIpx8aaFq\"}', '2020-05-19 15:17:35', '2020-05-19 15:17:35');
INSERT INTO `admin_operation_log` VALUES (676, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:18:01', '2020-05-19 15:18:01');
INSERT INTO `admin_operation_log` VALUES (677, 1, 'gjadmin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 15:18:03', '2020-05-19 15:18:03');
INSERT INTO `admin_operation_log` VALUES (678, 1, 'gjadmin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 15:19:01', '2020-05-19 15:19:01');
INSERT INTO `admin_operation_log` VALUES (679, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-19 15:19:01', '2020-05-19 15:19:01');
INSERT INTO `admin_operation_log` VALUES (680, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-19 15:19:13', '2020-05-19 15:19:13');
INSERT INTO `admin_operation_log` VALUES (681, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 15:19:14', '2020-05-19 15:19:14');
INSERT INTO `admin_operation_log` VALUES (682, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:23:28', '2020-05-19 15:23:28');
INSERT INTO `admin_operation_log` VALUES (683, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:24:21', '2020-05-19 15:24:21');
INSERT INTO `admin_operation_log` VALUES (684, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:24:40', '2020-05-19 15:24:40');
INSERT INTO `admin_operation_log` VALUES (685, 1, 'gjadmin/ckeditor/upload/image', 'POST', '127.0.0.1', '{\"ckCsrfToken\":\"wFWxVkJLLO2VGPg283G1HmZb5BZQN8TGG2zzAM0q\",\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\"}', '2020-05-19 15:24:48', '2020-05-19 15:24:48');
INSERT INTO `admin_operation_log` VALUES (686, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:25:15', '2020-05-19 15:25:15');
INSERT INTO `admin_operation_log` VALUES (687, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:25:43', '2020-05-19 15:25:43');
INSERT INTO `admin_operation_log` VALUES (688, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:25:55', '2020-05-19 15:25:55');
INSERT INTO `admin_operation_log` VALUES (689, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-19 15:52:38', '2020-05-19 15:52:38');
INSERT INTO `admin_operation_log` VALUES (690, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 15:52:40', '2020-05-19 15:52:40');
INSERT INTO `admin_operation_log` VALUES (691, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 15:52:44', '2020-05-19 15:52:44');
INSERT INTO `admin_operation_log` VALUES (692, 1, 'gjadmin/articles', 'GET', '127.0.0.1', '[]', '2020-05-19 15:52:55', '2020-05-19 15:52:55');
INSERT INTO `admin_operation_log` VALUES (693, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 15:53:05', '2020-05-19 15:53:05');
INSERT INTO `admin_operation_log` VALUES (694, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 15:53:08', '2020-05-19 15:53:08');
INSERT INTO `admin_operation_log` VALUES (695, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 15:53:10', '2020-05-19 15:53:10');
INSERT INTO `admin_operation_log` VALUES (696, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 15:53:39', '2020-05-19 15:53:39');
INSERT INTO `admin_operation_log` VALUES (697, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 15:53:46', '2020-05-19 15:53:46');
INSERT INTO `admin_operation_log` VALUES (698, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 15:55:32', '2020-05-19 15:55:32');
INSERT INTO `admin_operation_log` VALUES (699, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 15:55:48', '2020-05-19 15:55:48');
INSERT INTO `admin_operation_log` VALUES (700, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 15:55:58', '2020-05-19 15:55:58');
INSERT INTO `admin_operation_log` VALUES (701, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 15:56:16', '2020-05-19 15:56:16');
INSERT INTO `admin_operation_log` VALUES (702, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 15:56:17', '2020-05-19 15:56:17');
INSERT INTO `admin_operation_log` VALUES (703, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 15:56:29', '2020-05-19 15:56:29');
INSERT INTO `admin_operation_log` VALUES (704, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 15:56:34', '2020-05-19 15:56:34');
INSERT INTO `admin_operation_log` VALUES (705, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 15:58:20', '2020-05-19 15:58:20');
INSERT INTO `admin_operation_log` VALUES (706, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:00:49', '2020-05-19 16:00:49');
INSERT INTO `admin_operation_log` VALUES (707, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:00:50', '2020-05-19 16:00:50');
INSERT INTO `admin_operation_log` VALUES (708, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:00:50', '2020-05-19 16:00:50');
INSERT INTO `admin_operation_log` VALUES (709, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:00:50', '2020-05-19 16:00:50');
INSERT INTO `admin_operation_log` VALUES (710, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:00:51', '2020-05-19 16:00:51');
INSERT INTO `admin_operation_log` VALUES (711, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:00:51', '2020-05-19 16:00:51');
INSERT INTO `admin_operation_log` VALUES (712, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:00:57', '2020-05-19 16:00:57');
INSERT INTO `admin_operation_log` VALUES (713, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:01:44', '2020-05-19 16:01:44');
INSERT INTO `admin_operation_log` VALUES (714, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:02:01', '2020-05-19 16:02:01');
INSERT INTO `admin_operation_log` VALUES (715, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:02:32', '2020-05-19 16:02:32');
INSERT INTO `admin_operation_log` VALUES (716, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:02:46', '2020-05-19 16:02:46');
INSERT INTO `admin_operation_log` VALUES (717, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:02:47', '2020-05-19 16:02:47');
INSERT INTO `admin_operation_log` VALUES (718, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:02:51', '2020-05-19 16:02:51');
INSERT INTO `admin_operation_log` VALUES (719, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:02:53', '2020-05-19 16:02:53');
INSERT INTO `admin_operation_log` VALUES (720, 1, 'gjadmin/articles', 'GET', '127.0.0.1', '[]', '2020-05-19 16:03:14', '2020-05-19 16:03:14');
INSERT INTO `admin_operation_log` VALUES (721, 1, 'gjadmin/articles', 'GET', '127.0.0.1', '[]', '2020-05-19 16:05:02', '2020-05-19 16:05:02');
INSERT INTO `admin_operation_log` VALUES (722, 1, 'gjadmin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:05:04', '2020-05-19 16:05:04');
INSERT INTO `admin_operation_log` VALUES (723, 1, 'gjadmin/articles/create', 'GET', '127.0.0.1', '[]', '2020-05-19 16:06:30', '2020-05-19 16:06:30');
INSERT INTO `admin_operation_log` VALUES (724, 1, 'gjadmin/articles', 'POST', '127.0.0.1', '{\"tips\":\"\\u9996\\u9875Banner\",\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/articles\"}', '2020-05-19 16:06:38', '2020-05-19 16:06:38');
INSERT INTO `admin_operation_log` VALUES (725, 1, 'gjadmin/articles', 'GET', '127.0.0.1', '[]', '2020-05-19 16:06:38', '2020-05-19 16:06:38');
INSERT INTO `admin_operation_log` VALUES (726, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:06:42', '2020-05-19 16:06:42');
INSERT INTO `admin_operation_log` VALUES (727, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:07:04', '2020-05-19 16:07:04');
INSERT INTO `admin_operation_log` VALUES (728, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:07:17', '2020-05-19 16:07:17');
INSERT INTO `admin_operation_log` VALUES (729, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:07:57', '2020-05-19 16:07:57');
INSERT INTO `admin_operation_log` VALUES (730, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:08:21', '2020-05-19 16:08:21');
INSERT INTO `admin_operation_log` VALUES (731, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:08:29', '2020-05-19 16:08:29');
INSERT INTO `admin_operation_log` VALUES (732, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:08:54', '2020-05-19 16:08:54');
INSERT INTO `admin_operation_log` VALUES (733, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:13:40', '2020-05-19 16:13:40');
INSERT INTO `admin_operation_log` VALUES (734, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:14:00', '2020-05-19 16:14:00');
INSERT INTO `admin_operation_log` VALUES (735, 1, 'gjadmin/articles/1', 'PUT', '127.0.0.1', '{\"sections\":{\"new_1\":{\"order\":\"0\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\"}', '2020-05-19 16:14:16', '2020-05-19 16:14:16');
INSERT INTO `admin_operation_log` VALUES (736, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:14:17', '2020-05-19 16:14:17');
INSERT INTO `admin_operation_log` VALUES (737, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:15:14', '2020-05-19 16:15:14');
INSERT INTO `admin_operation_log` VALUES (738, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:16:45', '2020-05-19 16:16:45');
INSERT INTO `admin_operation_log` VALUES (739, 1, 'gjadmin/articles/1', 'PUT', '127.0.0.1', '{\"sections\":{\"new_1\":{\"order\":\"0\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\"}', '2020-05-19 16:16:56', '2020-05-19 16:16:56');
INSERT INTO `admin_operation_log` VALUES (740, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:16:56', '2020-05-19 16:16:56');
INSERT INTO `admin_operation_log` VALUES (741, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:17:10', '2020-05-19 16:17:10');
INSERT INTO `admin_operation_log` VALUES (742, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:17:59', '2020-05-19 16:17:59');
INSERT INTO `admin_operation_log` VALUES (743, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:18:45', '2020-05-19 16:18:45');
INSERT INTO `admin_operation_log` VALUES (744, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:18:54', '2020-05-19 16:18:54');
INSERT INTO `admin_operation_log` VALUES (745, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:18:57', '2020-05-19 16:18:57');
INSERT INTO `admin_operation_log` VALUES (746, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:20:57', '2020-05-19 16:20:57');
INSERT INTO `admin_operation_log` VALUES (747, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:21:35', '2020-05-19 16:21:35');
INSERT INTO `admin_operation_log` VALUES (748, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:21:53', '2020-05-19 16:21:53');
INSERT INTO `admin_operation_log` VALUES (749, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:22:20', '2020-05-19 16:22:20');
INSERT INTO `admin_operation_log` VALUES (750, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:23:09', '2020-05-19 16:23:09');
INSERT INTO `admin_operation_log` VALUES (751, 1, 'gjadmin/articles/1', 'PUT', '127.0.0.1', '{\"sections\":{\"1\":{\"order\":\"0\",\"title\":\"2151561\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\"}', '2020-05-19 16:23:14', '2020-05-19 16:23:14');
INSERT INTO `admin_operation_log` VALUES (752, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:23:14', '2020-05-19 16:23:14');
INSERT INTO `admin_operation_log` VALUES (753, 1, 'gjadmin/articles/1', 'PUT', '127.0.0.1', '{\"sections\":{\"1\":{\"order\":\"0\",\"title\":null,\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\"}', '2020-05-19 16:23:17', '2020-05-19 16:23:17');
INSERT INTO `admin_operation_log` VALUES (754, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:23:18', '2020-05-19 16:23:18');
INSERT INTO `admin_operation_log` VALUES (755, 1, 'gjadmin/articles/1', 'PUT', '127.0.0.1', '{\"sections\":{\"1\":{\"order\":\"0\",\"title\":null,\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\"}', '2020-05-19 16:23:21', '2020-05-19 16:23:21');
INSERT INTO `admin_operation_log` VALUES (756, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:23:22', '2020-05-19 16:23:22');
INSERT INTO `admin_operation_log` VALUES (757, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:33:02', '2020-05-19 16:33:02');
INSERT INTO `admin_operation_log` VALUES (758, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:33:04', '2020-05-19 16:33:04');
INSERT INTO `admin_operation_log` VALUES (759, 1, 'gjadmin/articles/1', 'PUT', '127.0.0.1', '{\"sections\":{\"1\":{\"order\":\"0\",\"title\":null,\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\"}', '2020-05-19 16:33:07', '2020-05-19 16:33:07');
INSERT INTO `admin_operation_log` VALUES (760, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:33:07', '2020-05-19 16:33:07');
INSERT INTO `admin_operation_log` VALUES (761, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:33:39', '2020-05-19 16:33:39');
INSERT INTO `admin_operation_log` VALUES (762, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:34:39', '2020-05-19 16:34:39');
INSERT INTO `admin_operation_log` VALUES (763, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:34:45', '2020-05-19 16:34:45');
INSERT INTO `admin_operation_log` VALUES (764, 1, 'gjadmin/articles/1', 'GET', '127.0.0.1', '[]', '2020-05-19 16:35:23', '2020-05-19 16:35:23');
INSERT INTO `admin_operation_log` VALUES (765, 1, 'gjadmin/articles/1', 'GET', '127.0.0.1', '[]', '2020-05-19 16:35:32', '2020-05-19 16:35:32');
INSERT INTO `admin_operation_log` VALUES (766, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:35:33', '2020-05-19 16:35:33');
INSERT INTO `admin_operation_log` VALUES (767, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\\u7ba1\\u7406\",\"icon\":\"fa-home\",\"uri\":\"\\/articles\\/1\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\"}', '2020-05-19 16:35:38', '2020-05-19 16:35:38');
INSERT INTO `admin_operation_log` VALUES (768, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 16:35:38', '2020-05-19 16:35:38');
INSERT INTO `admin_operation_log` VALUES (769, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 16:35:40', '2020-05-19 16:35:40');
INSERT INTO `admin_operation_log` VALUES (770, 1, 'gjadmin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:35:44', '2020-05-19 16:35:44');
INSERT INTO `admin_operation_log` VALUES (771, 1, 'gjadmin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\\u7ba1\\u7406\",\"icon\":\"fa-home\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/auth\\/menu\"}', '2020-05-19 16:35:46', '2020-05-19 16:35:46');
INSERT INTO `admin_operation_log` VALUES (772, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 16:35:46', '2020-05-19 16:35:46');
INSERT INTO `admin_operation_log` VALUES (773, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"Banner\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\\/1\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\"}', '2020-05-19 16:35:53', '2020-05-19 16:35:53');
INSERT INTO `admin_operation_log` VALUES (774, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 16:35:53', '2020-05-19 16:35:53');
INSERT INTO `admin_operation_log` VALUES (775, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 16:35:55', '2020-05-19 16:35:55');
INSERT INTO `admin_operation_log` VALUES (776, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6}]},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":12}]},{\\\"id\\\":10}]\"}', '2020-05-19 16:36:02', '2020-05-19 16:36:02');
INSERT INTO `admin_operation_log` VALUES (777, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:02', '2020-05-19 16:36:02');
INSERT INTO `admin_operation_log` VALUES (778, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 16:36:03', '2020-05-19 16:36:03');
INSERT INTO `admin_operation_log` VALUES (779, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 16:36:05', '2020-05-19 16:36:05');
INSERT INTO `admin_operation_log` VALUES (780, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:09', '2020-05-19 16:36:09');
INSERT INTO `admin_operation_log` VALUES (781, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:15', '2020-05-19 16:36:15');
INSERT INTO `admin_operation_log` VALUES (782, 1, 'gjadmin/pages/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:16', '2020-05-19 16:36:16');
INSERT INTO `admin_operation_log` VALUES (783, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:21', '2020-05-19 16:36:21');
INSERT INTO `admin_operation_log` VALUES (784, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:26', '2020-05-19 16:36:26');
INSERT INTO `admin_operation_log` VALUES (785, 1, 'gjadmin/navs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:28', '2020-05-19 16:36:28');
INSERT INTO `admin_operation_log` VALUES (786, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:30', '2020-05-19 16:36:30');
INSERT INTO `admin_operation_log` VALUES (787, 1, 'gjadmin/articles', 'GET', '127.0.0.1', '[]', '2020-05-19 16:36:34', '2020-05-19 16:36:34');
INSERT INTO `admin_operation_log` VALUES (788, 1, 'gjadmin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:36', '2020-05-19 16:36:36');
INSERT INTO `admin_operation_log` VALUES (789, 1, 'gjadmin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:41', '2020-05-19 16:36:41');
INSERT INTO `admin_operation_log` VALUES (790, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:43', '2020-05-19 16:36:43');
INSERT INTO `admin_operation_log` VALUES (791, 1, 'gjadmin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 16:36:46', '2020-05-19 16:36:46');
INSERT INTO `admin_operation_log` VALUES (792, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:53', '2020-05-19 16:36:53');
INSERT INTO `admin_operation_log` VALUES (793, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:36:56', '2020-05-19 16:36:56');
INSERT INTO `admin_operation_log` VALUES (794, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:36:59', '2020-05-19 16:36:59');
INSERT INTO `admin_operation_log` VALUES (795, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:37:12', '2020-05-19 16:37:12');
INSERT INTO `admin_operation_log` VALUES (796, 1, 'gjadmin/pages', 'GET', '127.0.0.1', '[]', '2020-05-19 16:37:35', '2020-05-19 16:37:35');
INSERT INTO `admin_operation_log` VALUES (797, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:37:41', '2020-05-19 16:37:41');
INSERT INTO `admin_operation_log` VALUES (798, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:37:43', '2020-05-19 16:37:43');
INSERT INTO `admin_operation_log` VALUES (799, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-19 16:38:27', '2020-05-19 16:38:27');
INSERT INTO `admin_operation_log` VALUES (800, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:44:29', '2020-05-19 16:44:29');
INSERT INTO `admin_operation_log` VALUES (801, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"SEO\\u7ba1\\u7406\",\"icon\":\"fa-internet-explorer\",\"uri\":\"\\/seos\",\"roles\":[null],\"permission\":null,\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\"}', '2020-05-19 16:44:59', '2020-05-19 16:44:59');
INSERT INTO `admin_operation_log` VALUES (802, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 16:44:59', '2020-05-19 16:44:59');
INSERT INTO `admin_operation_log` VALUES (803, 1, 'gjadmin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6}]},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":13},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":12}]},{\\\"id\\\":10}]\"}', '2020-05-19 16:45:21', '2020-05-19 16:45:21');
INSERT INTO `admin_operation_log` VALUES (804, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:45:22', '2020-05-19 16:45:22');
INSERT INTO `admin_operation_log` VALUES (805, 1, 'gjadmin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 16:45:22', '2020-05-19 16:45:22');
INSERT INTO `admin_operation_log` VALUES (806, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:45:24', '2020-05-19 16:45:24');
INSERT INTO `admin_operation_log` VALUES (807, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '[]', '2020-05-19 16:46:04', '2020-05-19 16:46:04');
INSERT INTO `admin_operation_log` VALUES (808, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '[]', '2020-05-19 16:46:12', '2020-05-19 16:46:12');
INSERT INTO `admin_operation_log` VALUES (809, 1, 'gjadmin/seos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:46:17', '2020-05-19 16:46:17');
INSERT INTO `admin_operation_log` VALUES (810, 1, 'gjadmin/seos/create', 'GET', '127.0.0.1', '[]', '2020-05-19 16:46:58', '2020-05-19 16:46:58');
INSERT INTO `admin_operation_log` VALUES (811, 1, 'gjadmin/seos', 'POST', '127.0.0.1', '{\"router\":\"\\/test\",\"title\":\"test\",\"keywords\":\"test\",\"description\":\"test\",\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/seos\"}', '2020-05-19 16:47:11', '2020-05-19 16:47:11');
INSERT INTO `admin_operation_log` VALUES (812, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '[]', '2020-05-19 16:47:11', '2020-05-19 16:47:11');
INSERT INTO `admin_operation_log` VALUES (813, 1, 'gjadmin/seos/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:47:14', '2020-05-19 16:47:14');
INSERT INTO `admin_operation_log` VALUES (814, 1, 'gjadmin/seos/1', 'PUT', '127.0.0.1', '{\"router\":\"\\/\",\"title\":\"test\",\"keywords\":\"test\",\"description\":\"test\",\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/seos\"}', '2020-05-19 16:47:20', '2020-05-19 16:47:20');
INSERT INTO `admin_operation_log` VALUES (815, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '[]', '2020-05-19 16:47:20', '2020-05-19 16:47:20');
INSERT INTO `admin_operation_log` VALUES (816, 1, 'gjadmin/seos/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:47:23', '2020-05-19 16:47:23');
INSERT INTO `admin_operation_log` VALUES (817, 1, 'gjadmin/seos/1', 'PUT', '127.0.0.1', '{\"router\":\"\\/test\",\"title\":\"test\",\"keywords\":\"test\",\"description\":\"test\",\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/seos\"}', '2020-05-19 16:47:36', '2020-05-19 16:47:36');
INSERT INTO `admin_operation_log` VALUES (818, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '[]', '2020-05-19 16:47:37', '2020-05-19 16:47:37');
INSERT INTO `admin_operation_log` VALUES (819, 1, 'gjadmin/seos/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:47:39', '2020-05-19 16:47:39');
INSERT INTO `admin_operation_log` VALUES (820, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:47:46', '2020-05-19 16:47:46');
INSERT INTO `admin_operation_log` VALUES (821, 1, 'gjadmin/seos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:47:47', '2020-05-19 16:47:47');
INSERT INTO `admin_operation_log` VALUES (822, 1, 'gjadmin/seos', 'POST', '127.0.0.1', '{\"router\":\"\\/test\",\"title\":null,\"keywords\":null,\"description\":null,\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/seos\"}', '2020-05-19 16:47:53', '2020-05-19 16:47:53');
INSERT INTO `admin_operation_log` VALUES (823, 1, 'gjadmin/seos/create', 'GET', '127.0.0.1', '[]', '2020-05-19 16:47:53', '2020-05-19 16:47:53');
INSERT INTO `admin_operation_log` VALUES (824, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:47:56', '2020-05-19 16:47:56');
INSERT INTO `admin_operation_log` VALUES (825, 1, 'gjadmin/seos/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:47:58', '2020-05-19 16:47:58');
INSERT INTO `admin_operation_log` VALUES (826, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:48:01', '2020-05-19 16:48:01');
INSERT INTO `admin_operation_log` VALUES (827, 1, 'gjadmin/seos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:48:03', '2020-05-19 16:48:03');
INSERT INTO `admin_operation_log` VALUES (828, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:48:05', '2020-05-19 16:48:05');
INSERT INTO `admin_operation_log` VALUES (829, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:52:00', '2020-05-19 16:52:00');
INSERT INTO `admin_operation_log` VALUES (830, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 17:01:20', '2020-05-19 17:01:20');
INSERT INTO `admin_operation_log` VALUES (831, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u6807\\u9898\",\"cover\":\"\\u5173\\u952e\\u8bcd\",\"content\":\"\\u63cf\\u8ff0\",\"text_b\":null,\"text_n\":null,\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\"}', '2020-05-19 17:04:36', '2020-05-19 17:04:36');
INSERT INTO `admin_operation_log` VALUES (832, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 17:04:36', '2020-05-19 17:04:36');
INSERT INTO `admin_operation_log` VALUES (833, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 17:04:52', '2020-05-19 17:04:52');
INSERT INTO `admin_operation_log` VALUES (834, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 17:04:55', '2020-05-19 17:04:55');
INSERT INTO `admin_operation_log` VALUES (835, 1, 'gjadmin', 'GET', '127.0.0.1', '[]', '2020-05-19 17:22:50', '2020-05-19 17:22:50');
INSERT INTO `admin_operation_log` VALUES (836, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 17:22:51', '2020-05-19 17:22:51');
INSERT INTO `admin_operation_log` VALUES (837, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 17:25:02', '2020-05-19 17:25:02');
INSERT INTO `admin_operation_log` VALUES (838, 1, 'gjadmin/navs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 17:25:04', '2020-05-19 17:25:04');
INSERT INTO `admin_operation_log` VALUES (839, 1, 'gjadmin/navs/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"uri\":\"\\/test1\",\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mingdu.test\\/gjadmin\\/navs\"}', '2020-05-19 17:25:11', '2020-05-19 17:25:11');
INSERT INTO `admin_operation_log` VALUES (840, 1, 'gjadmin/navs', 'GET', '127.0.0.1', '[]', '2020-05-19 17:25:12', '2020-05-19 17:25:12');
INSERT INTO `admin_operation_log` VALUES (841, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 17:25:19', '2020-05-19 17:25:19');
INSERT INTO `admin_operation_log` VALUES (842, 1, 'gjadmin/pages/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u7f51\\u7ad9\\u6807\\u9898\",\"cover\":\"\\u7f51\\u7ad9\\u5173\\u952e\\u8bcd\",\"content\":\"\\u7f51\\u7ad9\\u63cf\\u8ff0\",\"text_b\":null,\"text_n\":null,\"_token\":\"i589tZQKtRUhl5MOu8eYEyRFZPNWYLT01hyplrZH\",\"_method\":\"PUT\"}', '2020-05-19 17:25:26', '2020-05-19 17:25:26');
INSERT INTO `admin_operation_log` VALUES (843, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 17:25:26', '2020-05-19 17:25:26');
INSERT INTO `admin_operation_log` VALUES (844, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 17:26:08', '2020-05-19 17:26:08');
INSERT INTO `admin_operation_log` VALUES (845, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 17:26:09', '2020-05-19 17:26:09');
INSERT INTO `admin_operation_log` VALUES (846, 1, 'gjadmin/seos', 'GET', '127.0.0.1', '[]', '2020-05-19 17:33:59', '2020-05-19 17:33:59');
INSERT INTO `admin_operation_log` VALUES (847, 1, 'gjadmin/pages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 17:41:02', '2020-05-19 17:41:02');
INSERT INTO `admin_operation_log` VALUES (848, 1, 'gjadmin/auth/login', 'GET', '192.168.10.1', '[]', '2020-12-03 13:51:57', '2020-12-03 13:51:57');
INSERT INTO `admin_operation_log` VALUES (849, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2020-12-03 13:51:57', '2020-12-03 13:51:57');
INSERT INTO `admin_operation_log` VALUES (850, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2020-12-03 15:15:11', '2020-12-03 15:15:11');
INSERT INTO `admin_operation_log` VALUES (851, 1, 'gjadmin/navs', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-03 15:23:46', '2020-12-03 15:23:46');
INSERT INTO `admin_operation_log` VALUES (852, 1, 'gjadmin/auth/login', 'GET', '192.168.10.1', '[]', '2021-04-29 11:33:20', '2021-04-29 11:33:20');
INSERT INTO `admin_operation_log` VALUES (853, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-04-29 11:33:20', '2021-04-29 11:33:20');
INSERT INTO `admin_operation_log` VALUES (854, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-04-29 11:51:23', '2021-04-29 11:51:23');
INSERT INTO `admin_operation_log` VALUES (855, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-29 11:51:25', '2021-04-29 11:51:25');
INSERT INTO `admin_operation_log` VALUES (856, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:51:58', '2021-04-29 11:51:58');
INSERT INTO `admin_operation_log` VALUES (857, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:53:18', '2021-04-29 11:53:18');
INSERT INTO `admin_operation_log` VALUES (858, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:56:08', '2021-04-29 11:56:08');
INSERT INTO `admin_operation_log` VALUES (859, 1, 'gjadmin/ckeditor/image', 'POST', '192.168.10.1', '{\"ckCsrfToken\":\"8DCa14VgdZ99K6CS1tD5mnaTXh59G0D21MaW7r42\",\"_token\":\"pHdYSHK1y0FOATlL77SbI4bkXVaJByEO81dkKxZN\"}', '2021-04-29 11:56:19', '2021-04-29 11:56:19');
INSERT INTO `admin_operation_log` VALUES (860, 1, 'gjadmin/ckeditor/file', 'POST', '192.168.10.1', '{\"ckCsrfToken\":\"8DCa14VgdZ99K6CS1tD5mnaTXh59G0D21MaW7r42\",\"_token\":\"pHdYSHK1y0FOATlL77SbI4bkXVaJByEO81dkKxZN\"}', '2021-04-29 11:56:32', '2021-04-29 11:56:32');
INSERT INTO `admin_operation_log` VALUES (861, 1, 'gjadmin/pages/1', 'PUT', '192.168.10.1', '{\"title\":\"\\u7f51\\u7ad9\\u6807\\u9898\",\"cover\":\"\\u7f51\\u7ad9\\u5173\\u952e\\u8bcd\",\"content\":\"\\u7f51\\u7ad9\\u63cf\\u8ff0\",\"text_b\":\"<p><img alt=\\\"\\\" src=\\\"\\/uploads\\/images\\/202104\\/e7fb3fa1422198b31583c81bf44f71c9.png\\\" \\/><\\/p>\\r\\n\\r\\n<div class=\\\"ckeditor-html5-video\\\" style=\\\"text-align:center\\\">\\r\\n<video controlslist=\\\"nodownload\\\" src=\\\"\\/uploads\\/images\\/202104\\/080f3d11bb5d4fd0d5634fc566e3ac1a.mp4\\\">&nbsp;<\\/video>\\r\\n<\\/div>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"text_n\":null,\"_token\":\"pHdYSHK1y0FOATlL77SbI4bkXVaJByEO81dkKxZN\",\"_method\":\"PUT\"}', '2021-04-29 11:56:42', '2021-04-29 11:56:42');
INSERT INTO `admin_operation_log` VALUES (862, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:56:43', '2021-04-29 11:56:43');
INSERT INTO `admin_operation_log` VALUES (863, 1, 'gjadmin/pages/1', 'PUT', '192.168.10.1', '{\"title\":\"\\u7f51\\u7ad9\\u6807\\u9898\",\"cover\":\"\\u7f51\\u7ad9\\u5173\\u952e\\u8bcd\",\"content\":\"\\u7f51\\u7ad9\\u63cf\\u8ff0\",\"text_b\":\"<p><img alt=\\\"\\\" src=\\\"\\/uploads\\/images\\/202104\\/e7fb3fa1422198b31583c81bf44f71c9.png\\\" \\/><\\/p>\\r\\n\\r\\n<div class=\\\"ckeditor-html5-video\\\" style=\\\"text-align:center\\\">\\r\\n<video src=\\\"\\/uploads\\/images\\/202104\\/080f3d11bb5d4fd0d5634fc566e3ac1a.mp4\\\">&nbsp;<\\/video>\\r\\n<\\/div>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"text_n\":null,\"_token\":\"pHdYSHK1y0FOATlL77SbI4bkXVaJByEO81dkKxZN\",\"_method\":\"PUT\"}', '2021-04-29 11:56:50', '2021-04-29 11:56:50');
INSERT INTO `admin_operation_log` VALUES (864, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:56:51', '2021-04-29 11:56:51');
INSERT INTO `admin_operation_log` VALUES (865, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:58:04', '2021-04-29 11:58:04');
INSERT INTO `admin_operation_log` VALUES (866, 1, 'gjadmin/pages/1', 'PUT', '192.168.10.1', '{\"key\":\"0\",\"text_a\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"pHdYSHK1y0FOATlL77SbI4bkXVaJByEO81dkKxZN\",\"_method\":\"PUT\"}', '2021-04-29 11:58:07', '2021-04-29 11:58:07');
INSERT INTO `admin_operation_log` VALUES (867, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:58:07', '2021-04-29 11:58:07');
INSERT INTO `admin_operation_log` VALUES (868, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:58:10', '2021-04-29 11:58:10');
INSERT INTO `admin_operation_log` VALUES (869, 1, 'gjadmin/pages/1', 'PUT', '192.168.10.1', '{\"title\":\"\\u7f51\\u7ad9\\u6807\\u9898\",\"cover\":\"\\u7f51\\u7ad9\\u5173\\u952e\\u8bcd\",\"content\":\"\\u7f51\\u7ad9\\u63cf\\u8ff0\",\"text_b\":\"<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"text_n\":null,\"_token\":\"pHdYSHK1y0FOATlL77SbI4bkXVaJByEO81dkKxZN\",\"_method\":\"PUT\"}', '2021-04-29 11:58:16', '2021-04-29 11:58:16');
INSERT INTO `admin_operation_log` VALUES (870, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:58:17', '2021-04-29 11:58:17');
INSERT INTO `admin_operation_log` VALUES (871, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 11:58:18', '2021-04-29 11:58:18');
INSERT INTO `admin_operation_log` VALUES (872, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 13:35:28', '2021-04-29 13:35:28');
INSERT INTO `admin_operation_log` VALUES (873, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 13:36:35', '2021-04-29 13:36:35');
INSERT INTO `admin_operation_log` VALUES (874, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 13:36:38', '2021-04-29 13:36:38');
INSERT INTO `admin_operation_log` VALUES (875, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 13:36:40', '2021-04-29 13:36:40');
INSERT INTO `admin_operation_log` VALUES (876, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 14:51:19', '2021-04-29 14:51:19');
INSERT INTO `admin_operation_log` VALUES (877, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 14:53:52', '2021-04-29 14:53:52');
INSERT INTO `admin_operation_log` VALUES (878, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 16:52:06', '2021-04-29 16:52:06');
INSERT INTO `admin_operation_log` VALUES (879, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '[]', '2021-04-29 17:49:36', '2021-04-29 17:49:36');
INSERT INTO `admin_operation_log` VALUES (880, 1, 'gjadmin/auth/login', 'GET', '192.168.10.1', '[]', '2021-04-30 09:23:14', '2021-04-30 09:23:14');
INSERT INTO `admin_operation_log` VALUES (881, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-04-30 09:23:15', '2021-04-30 09:23:15');
INSERT INTO `admin_operation_log` VALUES (882, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-04-30 09:24:43', '2021-04-30 09:24:43');
INSERT INTO `admin_operation_log` VALUES (883, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-04-30 10:27:50', '2021-04-30 10:27:50');
INSERT INTO `admin_operation_log` VALUES (884, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-04-30 11:30:51', '2021-04-30 11:30:51');
INSERT INTO `admin_operation_log` VALUES (885, 1, 'gjadmin/auth/login', 'GET', '192.168.10.1', '[]', '2021-04-30 12:01:01', '2021-04-30 12:01:01');
INSERT INTO `admin_operation_log` VALUES (886, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-04-30 12:01:02', '2021-04-30 12:01:02');
INSERT INTO `admin_operation_log` VALUES (887, 1, 'gjadmin/auth/login', 'GET', '192.168.10.1', '[]', '2021-04-30 14:03:26', '2021-04-30 14:03:26');
INSERT INTO `admin_operation_log` VALUES (888, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-04-30 14:03:27', '2021-04-30 14:03:27');
INSERT INTO `admin_operation_log` VALUES (889, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-04-30 14:06:02', '2021-04-30 14:06:02');
INSERT INTO `admin_operation_log` VALUES (890, 1, 'gjadmin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-30 14:06:10', '2021-04-30 14:06:10');
INSERT INTO `admin_operation_log` VALUES (891, 1, 'gjadmin/auth/menu/10/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-30 14:27:59', '2021-04-30 14:27:59');
INSERT INTO `admin_operation_log` VALUES (892, 1, 'gjadmin/auth/menu/10', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u8054\\u7cfb\",\"icon\":\"fa-volume-control-phone\",\"uri\":\"\\/pages\\/2\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"exTRmmytuEZzbh9O8DM1YLsshnQ8JhOZafm0k5Ie\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/hanrui.test\\/gjadmin\\/auth\\/menu\"}', '2021-04-30 14:28:07', '2021-04-30 14:28:07');
INSERT INTO `admin_operation_log` VALUES (893, 1, 'gjadmin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-30 14:28:08', '2021-04-30 14:28:08');
INSERT INTO `admin_operation_log` VALUES (894, 1, 'gjadmin/auth/menu/10/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-30 14:28:27', '2021-04-30 14:28:27');
INSERT INTO `admin_operation_log` VALUES (895, 1, 'gjadmin/auth/menu/10', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u8054\\u7cfb\\u65b9\\u5f0f\",\"icon\":\"fa-volume-control-phone\",\"uri\":\"\\/pages\\/2\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"exTRmmytuEZzbh9O8DM1YLsshnQ8JhOZafm0k5Ie\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/hanrui.test\\/gjadmin\\/auth\\/menu\"}', '2021-04-30 14:28:31', '2021-04-30 14:28:31');
INSERT INTO `admin_operation_log` VALUES (896, 1, 'gjadmin/auth/menu/10', 'GET', '192.168.10.1', '[]', '2021-04-30 14:28:31', '2021-04-30 14:28:31');
INSERT INTO `admin_operation_log` VALUES (897, 1, 'gjadmin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-30 14:28:32', '2021-04-30 14:28:32');
INSERT INTO `admin_operation_log` VALUES (898, 1, 'gjadmin/auth/menu/10/edit', 'GET', '192.168.10.1', '[]', '2021-04-30 14:28:32', '2021-04-30 14:28:32');
INSERT INTO `admin_operation_log` VALUES (899, 1, 'gjadmin/auth/login', 'GET', '192.168.10.1', '[]', '2021-05-08 14:45:23', '2021-05-08 14:45:23');
INSERT INTO `admin_operation_log` VALUES (900, 1, 'gjadmin', 'GET', '192.168.10.1', '[]', '2021-05-08 14:45:24', '2021-05-08 14:45:24');
INSERT INTO `admin_operation_log` VALUES (901, 1, 'gjadmin/pages/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-08 14:46:13', '2021-05-08 14:46:13');
INSERT INTO `admin_operation_log` VALUES (902, 1, 'gjadmin/pages/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-08 14:46:14', '2021-05-08 14:46:14');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-05-18 11:06:38', '2020-05-18 11:06:38');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$beabRMORgWvg9Vg4WHkGcO0fT19uEVYsJaJ6fhLJ1zl8ebylJWbgW', '格加信息', 'uploads/images/202005/53e9b83001651b36bc16a07f81ca4511.jpg', 'zsSIrvSc69MRZMqXfFPxsbrjp8BO3nWpkUd437MzjO8ldiMXeGWnAnYXV6xT', '2020-05-18 11:06:38', '2020-05-19 09:24:25');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL DEFAULT 0,
  `tips` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `tit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `cover` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, 0, '首页Banner', NULL, NULL, NULL, NULL, '2020-05-19 16:06:38', '2020-05-19 16:06:38', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_01_04_173148_create_admin_tables', 2);
INSERT INTO `migrations` VALUES (5, '2020_05_18_181129_create_navs_table', 3);
INSERT INTO `migrations` VALUES (6, '2020_05_18_184827_create_pages_table', 4);
INSERT INTO `migrations` VALUES (7, '2020_05_19_154256_create_articles_table', 5);
INSERT INTO `migrations` VALUES (8, '2020_05_19_154340_create_sections_table', 5);
INSERT INTO `migrations` VALUES (9, '2020_05_19_164103_create_seos_table', 6);
INSERT INTO `migrations` VALUES (10, '2021_04_30_140831_create_messages_table', 7);

-- ----------------------------
-- Table structure for navs
-- ----------------------------
DROP TABLE IF EXISTS `navs`;
CREATE TABLE `navs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_show` tinyint(1) NULL DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of navs
-- ----------------------------
INSERT INTO `navs` VALUES (1, 0, 1, '首页', NULL, NULL, NULL, NULL, NULL, '/test1', '2020-05-18 18:35:16', '2020-05-19 17:25:11');
INSERT INTO `navs` VALUES (2, 1, 2, 'test2', NULL, NULL, NULL, NULL, NULL, '/test2', '2020-05-18 18:42:55', '2020-05-18 18:44:08');
INSERT INTO `navs` VALUES (3, 0, 4, 'test3', NULL, NULL, NULL, NULL, NULL, '/test3', '2020-05-18 18:43:19', '2020-05-18 18:44:37');
INSERT INTO `navs` VALUES (4, 1, 3, 'test4', NULL, NULL, NULL, NULL, NULL, '/test4', '2020-05-18 18:43:47', '2020-05-18 18:44:08');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL DEFAULT 0,
  `tips` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_a` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_b` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_d` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_e` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_f` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_g` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_h` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_i` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_j` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_k` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_l` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_m` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text_n` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `tit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 0, '基本信息', '网站标题', '网站关键词', '网站描述', NULL, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-18 18:55:06', '2021-04-29 11:58:16', NULL, NULL, NULL, NULL);
INSERT INTO `pages` VALUES (2, 0, '联系我们', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-18 19:49:51', '2020-05-18 19:52:05', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sections
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sections_parent_id_index`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for seos
-- ----------------------------
DROP TABLE IF EXISTS `seos`;
CREATE TABLE `seos`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `router` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `seos_router_unique`(`router`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seos
-- ----------------------------
INSERT INTO `seos` VALUES (1, '/test', 'test', 'test', 'test', '2020-05-19 16:47:11', '2020-05-19 16:47:36');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
