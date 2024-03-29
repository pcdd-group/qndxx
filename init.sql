SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for organize
-- ----------------------------
DROP TABLE IF EXISTS `organize`;
CREATE TABLE `organize`
(
    `id`            int auto_increment NOT NULL,
    `organize_name` varchar(255)       NOT NULL,
    `season`        int                NOT NULL,
    `period`        int                NOT NULL,
    `is_enable`     bit(1)             NOT NULL,
    `created_at`    datetime,
    PRIMARY KEY (`id`)
) COMMENT ='组织表';

-- ----------------------------
-- Records of organize
-- ----------------------------
INSERT INTO `organize`
VALUES (1, '计算机科学与技术 2020', 12, 8, true, '2021-01-23 15:14:07');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `user_id`     varchar(255) NOT NULL,
    `username`    varchar(255) NOT NULL,
    `pwd`         varchar(16),
    `role`        varchar(255) NOT NULL,
    `organize_id` int          NOT NULL,
    PRIMARY KEY (`user_id`),
    FOREIGN KEY (`organize_id`) REFERENCES organize (`id`)
) COMMENT ='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user`
VALUES ('1', '卢花蕾', '1', 'admin', 1);
INSERT INTO `user`
VALUES ('202007028678', '席蝶', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202006089584', '酆土', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202016943761', '和卉怀', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202095958876', '孟北', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202015661836', '晋有', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202076145330', '郈它啥', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202085805763', '庄佯', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202023734833', '空振乡', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202092194293', '有拆', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202022317672', '太叔由', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202059430550', '王潍', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202009348687', '庞伞疥', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202089378993', '归代', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202096860716', '蒯娘', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202025395430', '喻氧墅', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202075385492', '於辈', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202018082592', '左臼', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202022991240', '邓竹', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202033149278', '水啥', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202055001467', '缪童', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202087169010', '潘易', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202028697907', '方噶', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202023595190', '夏侯曼翠', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202030110608', '申霜', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202036812921', '邱渊', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202089062133', '贝靴', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202092859808', '郗袖统', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202049600474', '安责监', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202032893136', '双育', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202028808588', '卫薪', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202073898616', '公羊腮', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202021240297', '韦盈', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202085867847', '丁案', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202049486854', '孟歧', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202088477226', '弘踊', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202022735433', '胡谭', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202023527840', '晋抑', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202058640341', '郜波', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202011443067', '毛拇赋', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202072539735', '范捡', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202000309082', '管萍冰', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202003542231', '时座', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202052703799', '廖俄', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202057347379', '葛曙', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202055028292', '章征', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202092168091', '鲍矫江', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202035480259', '虞界', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202021494452', '壤驷肖', '1', 'user', 1);
INSERT INTO `user`
VALUES ('202097596172', '萧傲珊', '1', 'user', 1);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`
(
    `id`         int auto_increment NOT NULL,
    `user_id`    varchar(255)       NOT NULL,
    `img_key`    varchar(255)       NOT NULL,
    `size`       decimal(9, 2),
    `ext_name`   varchar(255),
    `created_at` datetime,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES user (`user_id`)
) COMMENT ='上传记录表';

-- ----------------------------
-- Records of image
-- ----------------------------

-- ----------------------------
-- Table structure for system
-- ----------------------------
DROP TABLE IF EXISTS `system`;
CREATE TABLE `system`
(
    `notice`  text,
    `version` char(6)
) COMMENT ='系统参数表';

-- ----------------------------
-- Records of param
-- ----------------------------
INSERT INTO `system`(version)
VALUES ('v2.1.0');

SET FOREIGN_KEY_CHECKS = 1;
