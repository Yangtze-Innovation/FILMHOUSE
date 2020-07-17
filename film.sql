/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : film

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 17/07/2020 12:20:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for f_film
-- ----------------------------
DROP TABLE IF EXISTS `f_film`;
CREATE TABLE `f_film`  (
  `id` int(11) NOT NULL,
  `filmname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `releaseTime` date NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `year` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `director` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `actor` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `studio` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `playTime` datetime(0) NULL DEFAULT NULL,
  `filmpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of f_film
-- ----------------------------
INSERT INTO `f_film` VALUES (1, '枪王之王', NULL, NULL, NULL, NULL, NULL, '尔冬升', '古天乐、吴彦祖', '3', '2020-07-17 19:30:00', 'https://timg01.bdimg.com/timg?wapbaike&quality=90&size=b940_626&sec=1349839550&di=faa56ed3a7fdc809381e78ed9477f2b2&src=http://bkimg.cdn.bcebos.com/pic/e1fe9925bc315c607a5c1b8b85b1cb134854778c', '《枪王之王》是由尔冬升执导，古天乐、吴彦祖、李冰冰、蔡卓妍领衔主演的动作电影，于2010年7月2日在中国内地上映 。该片讲述外汇基金经理关友博与警官庄子维亦敌亦友的双雄斗智，同时牵出关友博与安娜、婷婷之间的三角恋故事。');
INSERT INTO `f_film` VALUES (2, '复仇者联盟4：终局之战 ', NULL, NULL, NULL, NULL, NULL, '安东尼·罗素和乔·罗素', '，小罗伯特·唐尼、克里斯·埃文斯', '2', '2020-07-17 19:30:00', 'https://upload.wikimedia.org/wikipedia/zh/7/76/Avengers_Endgame_Poster.jpg', '《复仇者联盟4：终局之战》是由美国漫威影业公司出品的科幻电影，由安东尼·罗素和乔·罗素联合执导，小罗伯特·唐尼、克里斯·埃文斯、克里斯·海姆斯沃斯、马克·鲁法洛、斯嘉丽·约翰逊、杰瑞米·雷纳、保罗·路德、布丽·拉尔森、唐·钱德尔、凯伦·吉兰、乔什·布洛林等主演。影片改编自美国漫威漫画，是漫威电影宇宙的第22部电影，讲述了在《复仇者联盟3：无限战争》的毁灭性事件过后，复仇者联盟在剩余盟友的帮助下再一 ');
INSERT INTO `f_film` VALUES (3, '朝花夕誓——于离别之朝束起约定之花', '2017-07-17', 'XXX', 'XXX', 'XXX', '2020', '冈田麿里，篠原俊哉（副）', '玛奇亚 (配音)石见舞菜香', '1', '2020-07-17 19:30:00', 'http://ww1.sinaimg.cn/large/0083sXMXgy1ggt6iqladmj312w12w7wj.jpg', NULL);
INSERT INTO `f_film` VALUES (4, '枪王之王', NULL, NULL, NULL, NULL, NULL, '尔冬升', '古天乐、吴彦祖', '3', '2020-07-17 19:30:00', 'https://timg01.bdimg.com/timg?wapbaike&quality=90&size=b940_626&sec=1349839550&di=faa56ed3a7fdc809381e78ed9477f2b2&src=http://bkimg.cdn.bcebos.com/pic/e1fe9925bc315c607a5c1b8b85b1cb134854778c', '《枪王之王》是由尔冬升执导，古天乐、吴彦祖、李冰冰、蔡卓妍领衔主演的动作电影，于2010年7月2日在中国内地上映 。该片讲述外汇基金经理关友博与警官庄子维亦敌亦友的双雄斗智，同时牵出关友博与安娜、婷婷之间的三角恋故事。');

-- ----------------------------
-- Table structure for f_user
-- ----------------------------
DROP TABLE IF EXISTS `f_user`;
CREATE TABLE `f_user`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of f_user
-- ----------------------------
INSERT INTO `f_user` VALUES (1, 'admin', '123456');

SET FOREIGN_KEY_CHECKS = 1;
