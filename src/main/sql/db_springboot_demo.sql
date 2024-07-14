/*
 Navicat Premium Data Transfer

 Source Server         : DB_MySQL
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : db_springboot_demo

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 14/07/2024 16:57:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL COMMENT '1：有效；0：失效',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (13, 'admin', 'admin', 1, '2024-07-14 16:22:21', NULL);
INSERT INTO `user` VALUES (14, 'user', 'user', 1, '2024-07-14 16:26:09', NULL);
INSERT INTO `user` VALUES (16, 'will', 'will', 1, '2024-07-14 16:27:41', NULL);

SET FOREIGN_KEY_CHECKS = 1;
