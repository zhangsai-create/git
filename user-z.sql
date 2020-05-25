/*
 Navicat Premium Data Transfer

 Source Server         : ueser-value
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : user-value

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 22/04/2020 01:41:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('zhangsan', '123456');
INSERT INTO `user` VALUES ('123456', '123456789');
INSERT INTO `user` VALUES ('123456', '11111111');

SET FOREIGN_KEY_CHECKS = 1;
