/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : musicwebdb

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 27/11/2022 16:14:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums`  (
  `album_id` int(0) NOT NULL AUTO_INCREMENT,
  `singer_id` int(0) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `decription` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`album_id`) USING BTREE,
  INDEX `singer_id`(`singer_id`) USING BTREE,
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`singer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of albums
-- ----------------------------
INSERT INTO `albums` VALUES (1, 1, 'World of Walker', '26/11/2021 by Sony Music Entertainment Sweden AB');
INSERT INTO `albums` VALUES (2, 2, 'Parallax', '10/9/2021 by Arcadium');
INSERT INTO `albums` VALUES (3, 3, 'In the Zone', '13/11/2003 by Zomba Recording LLC');
INSERT INTO `albums` VALUES (4, 4, 'Star boy', '25/11/2016 by Republic Records, a Division of UMG Recordings, Inc');
INSERT INTO `albums` VALUES (5, 5, 'Hybrid Theory', '24/10/2000 by Warner Records Inc');
INSERT INTO `albums` VALUES (6, 6, 'Wishes to Eternity', '1/4/2001 by Universal Music Oy');
INSERT INTO `albums` VALUES (7, 7, 'Everytime we touch', '31/3/2006 by Zooland Records');

-- ----------------------------
-- Table structure for playlists
-- ----------------------------
DROP TABLE IF EXISTS `playlists`;
CREATE TABLE `playlists`  (
  `playlist_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `decription` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`playlist_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playlists
-- ----------------------------
INSERT INTO `playlists` VALUES (1, 1, 'playlist1', 'Wibu Music');
INSERT INTO `playlists` VALUES (2, 2, 'playlist2', 'US/UK Music');
INSERT INTO `playlists` VALUES (3, 3, 'Nhac chill', 'Mecha music');
INSERT INTO `playlists` VALUES (4, 4, 'thuanhoa', 'Nhac anh hat bang tieng anh');
INSERT INTO `playlists` VALUES (5, 1, 'asvas', NULL);

-- ----------------------------
-- Table structure for playlists_songs
-- ----------------------------
DROP TABLE IF EXISTS `playlists_songs`;
CREATE TABLE `playlists_songs`  (
  `song_id` int(0) NOT NULL,
  `playlist_id` int(0) NOT NULL,
  PRIMARY KEY (`song_id`, `playlist_id`) USING BTREE,
  INDEX `playlist_id`(`playlist_id`) USING BTREE,
  CONSTRAINT `playlists_songs_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `playlists_songs_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`playlist_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playlists_songs
-- ----------------------------
INSERT INTO `playlists_songs` VALUES (1, 1);
INSERT INTO `playlists_songs` VALUES (2, 1);
INSERT INTO `playlists_songs` VALUES (3, 1);
INSERT INTO `playlists_songs` VALUES (4, 1);
INSERT INTO `playlists_songs` VALUES (5, 1);
INSERT INTO `playlists_songs` VALUES (6, 1);
INSERT INTO `playlists_songs` VALUES (2, 2);
INSERT INTO `playlists_songs` VALUES (3, 2);
INSERT INTO `playlists_songs` VALUES (11, 2);
INSERT INTO `playlists_songs` VALUES (16, 2);
INSERT INTO `playlists_songs` VALUES (8, 3);
INSERT INTO `playlists_songs` VALUES (9, 3);
INSERT INTO `playlists_songs` VALUES (10, 3);
INSERT INTO `playlists_songs` VALUES (19, 3);
INSERT INTO `playlists_songs` VALUES (20, 3);
INSERT INTO `playlists_songs` VALUES (1, 4);
INSERT INTO `playlists_songs` VALUES (12, 4);
INSERT INTO `playlists_songs` VALUES (15, 4);
INSERT INTO `playlists_songs` VALUES (16, 4);

-- ----------------------------
-- Table structure for singers
-- ----------------------------
DROP TABLE IF EXISTS `singers`;
CREATE TABLE `singers`  (
  `singer_id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `decription` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`singer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of singers
-- ----------------------------
INSERT INTO `singers` VALUES (1, 'Alan Walker', 'World DJ');
INSERT INTO `singers` VALUES (2, 'The Fat Rat', 'German DJ, record producer and musician');
INSERT INTO `singers` VALUES (3, 'Britney Spears', 'Queen of POP');
INSERT INTO `singers` VALUES (4, 'The Weeknd', 'Canadian singer, songwriter, and record producer');
INSERT INTO `singers` VALUES (5, 'Linkin Park', 'American rock band from Agoura Hills, California');
INSERT INTO `singers` VALUES (6, 'Nightwish', 'A Finnish symphonic metal band from Kitee');
INSERT INTO `singers` VALUES (7, 'Cascada', 'German dance music act founded in 2004 by singer Natalie Horler');

-- ----------------------------
-- Table structure for songs
-- ----------------------------
DROP TABLE IF EXISTS `songs`;
CREATE TABLE `songs`  (
  `song_id` int(0) NOT NULL AUTO_INCREMENT,
  `singer_id` int(0) NOT NULL,
  `album_id` int(0) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `release_date` date NOT NULL,
  PRIMARY KEY (`song_id`) USING BTREE,
  INDEX `album_id`(`album_id`) USING BTREE,
  INDEX `singer_id`(`singer_id`) USING BTREE,
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`singer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of songs
-- ----------------------------
INSERT INTO `songs` VALUES (1, 1, 1, 'Alone', '2016-12-02');
INSERT INTO `songs` VALUES (2, 1, 1, 'On My Way', '2019-03-21');
INSERT INTO `songs` VALUES (3, 1, 1, 'Lost Control', '2018-02-16');
INSERT INTO `songs` VALUES (4, 1, 1, 'Lily', '2019-04-04');
INSERT INTO `songs` VALUES (5, 1, 1, 'Different World', '2018-11-30');
INSERT INTO `songs` VALUES (6, 1, 1, 'Sing me to sleep', '2016-06-03');
INSERT INTO `songs` VALUES (7, 1, 1, 'All Falls Down', '2017-10-27');
INSERT INTO `songs` VALUES (8, 1, 1, 'Darkside', '2018-07-27');
INSERT INTO `songs` VALUES (9, 1, 1, 'Faded', '2015-12-04');
INSERT INTO `songs` VALUES (10, 2, 2, 'Hiding in the Blue', '2021-07-09');
INSERT INTO `songs` VALUES (11, 2, 2, 'Rise Up', '2019-10-25');
INSERT INTO `songs` VALUES (12, 3, 3, 'Criminal', '2011-10-19');
INSERT INTO `songs` VALUES (13, 3, 3, 'Three', '2009-11-14');
INSERT INTO `songs` VALUES (14, 3, 3, 'Toxic', '2009-10-25');
INSERT INTO `songs` VALUES (15, 4, 4, 'Starboy', '2016-09-28');
INSERT INTO `songs` VALUES (16, 5, 5, 'In The End', '2009-10-27');
INSERT INTO `songs` VALUES (17, 5, 5, 'Numb', '2007-03-05');
INSERT INTO `songs` VALUES (18, 5, 5, 'What I have done?', '2007-04-04');
INSERT INTO `songs` VALUES (19, 6, 6, 'She is my sin', '2006-01-22');
INSERT INTO `songs` VALUES (20, 7, 7, 'Everytime we touch', '2007-03-08');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT,
  `account` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(0) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `account`(`account`) USING BTREE,
  UNIQUE INDEX `UKr2bdsy4yqtkpssr475ch00bdr`(`account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin123@gmail.com', '123456789', 'i am admin', 0);
INSERT INTO `users` VALUES (2, 'huynhhothoty@gmail.com', '123456789', 'tho ty dep trai', 0);
INSERT INTO `users` VALUES (3, 'herobaonguyen@gmail.com', '123456789', 'hero', 1);
INSERT INTO `users` VALUES (4, 'thuanhoatruong@gmail.com', '123456789', 'Mirisrodos', 1);
INSERT INTO `users` VALUES (5, 'hoa123123@gmail.com', '123', 'hoa', 0);

SET FOREIGN_KEY_CHECKS = 1;
