/*
Navicat MySQL Data Transfer

Source Server         : localhost3306
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : kuoyelin

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2019-04-16 10:18:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'admin', 'admin', '姚雅丽', '15613155379', '软件部', '1');
INSERT INTO `admin_user` VALUES ('2', '20163446', '20163446', '寇晓萌', '15613155379', '软件部', '0');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', '1', '性格', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '啦啦啦', '1', '审核通过');
INSERT INTO `article` VALUES ('3', '如何与别人相处', '人际', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '善良', '1', '审核通过');
INSERT INTO `article` VALUES ('4', '121', '性格', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '121212', '1', '待审核');
INSERT INTO `article` VALUES ('5', '如何成为最好的自己', '性格', '9b0ef054c41c3e599308cd09925caf7e.jpg', '善良', '2', '审核通过');

-- ----------------------------
-- Table structure for common_user
-- ----------------------------
DROP TABLE IF EXISTS `common_user`;
CREATE TABLE `common_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `volunteer` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_user
-- ----------------------------
INSERT INTO `common_user` VALUES ('1', '20163587', '201635877', '是', '否');
INSERT INTO `common_user` VALUES ('2', '20163588', '20163588', '否', '否');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `common_user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `professional_rank` varchar(255) DEFAULT NULL,
  `work_year` varchar(255) DEFAULT NULL,
  `enter_time` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `h_title` varchar(255) DEFAULT NULL,
  `h_fee` varchar(255) DEFAULT NULL,
  `h_introduction` varchar(255) DEFAULT NULL,
  `h_content` varchar(255) DEFAULT NULL,
  `front_image` varchar(255) DEFAULT NULL,
  `behind_image` varchar(255) DEFAULT NULL,
  `order_state` varchar(255) DEFAULT NULL,
  `order_count` varchar(255) DEFAULT NULL,
  `card_image` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('1', '2', '姚雅丽', '女', '心理专家', '4', '2016-01-02', '41142419961210454X', '12', '12', '121', '12', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '1', '12', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '审核通过');
INSERT INTO `doctor` VALUES ('7', '2', '袁亚琴', '女', '心理医生-主任医师', '4', '2019-04-16', '411424199612104545', '如何成为最好的自己', '200', '如何成为最好的自己？方法', '咨询我把', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '', null, null, '', null);
INSERT INTO `doctor` VALUES ('8', '2', '杨磊', '男', '心理医生-主任医师', '4', '2019-04-22', '411424199612104545', '12121', '4', '12121', '121212', '9b0ef054c41c3e599308cd09925caf7e.jpg', '', null, null, '', '待审核');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('2', '', '1212', '性格', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '0', '待审核');

-- ----------------------------
-- Table structure for test_paper
-- ----------------------------
DROP TABLE IF EXISTS `test_paper`;
CREATE TABLE `test_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result` varchar(1000) DEFAULT NULL,
  `biaozhun` varchar(1000) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES ('2', '68;', '1¤3¤12121￠', '2');

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES ('1', '请按照实际情况选择：', '我从不觉得比别人差 0;我对自身的的缺点和错误总感到自卑 1;我对自己的过错总是不能原谅 2;我对一切过错都谴责自己 3;', '性格', '微信图片_20190219215556.jpg', '1');
INSERT INTO `title` VALUES ('2', '请按照实际情况选择：', '我从无大失所望的感觉 0;我有时对自己感到非常失望 1;我对自己感到厌恶 2;我十分痛恨自己 3;', '性格', '1.jpg', '1');
INSERT INTO `title` VALUES ('3', '如果你的好友和你发生了争吵分歧，你将怎么办？', '不理他，中断朋友关系 1;暂时不谈这个问题，求同存异，以后再说 2;请两个人共同的好朋友劝和，打破僵局 3;', '职场', 'null', '1');
INSERT INTO `title` VALUES ('4', '请按照实际情况选择：', '我从无大失所望的感觉 0;我有时对自己感到非常失望 1;我总是感到悲伤，而且再也不能自拔 2;我感到极度悲伤，甚至不能自制 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('5', '你听说有同事向领导打你的小报告，你会怎么办？', '直接冲到那个同事面前，和他大吵一顿 1;向领导说明情况，请领导调查真相 2;清者自清，不去理睬，和以前一样干好工作 3;', '职场', '0070bJRKgy1fy9ypagoxmj32dd2dde81.jpg', '1');
INSERT INTO `title` VALUES ('6', '如果父母性格不合，经常吵架，你会怎么办？', '大声威胁他们：再吵我就搬出去住！ 1;少回家，乐得清静 2;在父亲面前夸母亲，在母亲面前夸父亲，设法增进他们的感情。 3;', '职场', '0070bJRKgy1fy9ypagoxmj32dd2dde81.jpg', '1');
INSERT INTO `title` VALUES ('7', '同事跟你夸耀她买了一条新裙子，其实你觉得很一般，看着她兴高采烈，你会怎样？', '直接告诉她裙子不怎么样 1;微笑着倾听，不说话。 2;告诉她这条裙子比她之前买的那条要好看。 3;', '职场', '0070bJRKgy1fy9ypagoxmj32dd2dde81.jpg', '1');
INSERT INTO `title` VALUES ('8', '请按照实际情况选择', '我对将来有足够的信心 0;我对将来信心不足 1;我觉得没什么可指望的 2;我觉得将来毫无希望，而且决无好转的可能 3;', '健康', '310270.jpg', '1');
INSERT INTO `title` VALUES ('9', '同事一起在外聚餐，你到达摆好的餐桌前会做什么？', '赞美饭店的豪华或者菜肴的精美。 1;看看椅子、餐具是否足够。 2;看看人是否到齐，招呼后来的人。 3;', '职场', '0070bJRKgy1fy9ypagoxmj32dd2dde81.jpg', '1');
INSERT INTO `title` VALUES ('10', '坐公交车的时候，你一般习惯于？', '坐着睡觉或发呆。 1;看看站在旁边的人。 2;看窗外的景色，发现一些新开的店。 3;', '职场', '0070bJRKgy1fy9ypagoxmj32dd2dde81.jpg', '1');
INSERT INTO `title` VALUES ('11', '上了公交后你发现自己没带零钱，你会怎么办？', '偷偷地躲在人堆里。 1;急着下车。 2;跟司机说明情况，希望免掉车费。 3;', '职场', '0070bJRKgy1fy9ypagoxmj32dd2dde81.jpg', '1');
INSERT INTO `title` VALUES ('12', '同事带来家乡特产和你分享，你会？', '客气地拒绝，说自己不习惯吃这些。 1;表达感谢并且接受。 2;接受并且之后也带零食和同事分享。 3;', '职场', '0070bJRKgy1fy9ypagoxmj32dd2dde81.jpg', '1');
INSERT INTO `title` VALUES ('13', '领导交给你一项本来不归你管的任务，你会怎么办？', '很迟疑，流露出想拒绝的意思。 1;毫不犹豫地答应下来，能不能办好就不管了。 2;从领导那里尽量获得有关信息，私下请教同事，力求做好。 3;', '职场', '0070bJRKgy1fy9ypagoxmj32dd2dde81.jpg', '1');
INSERT INTO `title` VALUES ('14', '同事讲了一个你以前就听过的笑话，你怎么反应？', '立马说：哈，这个早就听过了，你OUT了！ 1;微笑不语。 2;哈哈大笑。 3;', '职场', '0070bJRKgy1fy9ypagoxmj32dd2dde81.jpg', '1');
INSERT INTO `title` VALUES ('15', '请按照实际情况选择：', '我总是没有失败的感觉 0;我觉得比一般人失败的次数多些 1;回顾往事，我想起的几乎都是失败的情景 2;我觉得自己生来就不具备做人的资格 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('16', '请按照实际情况选择', '我像以往一样对一切都不抱偏见 0;我已不像以往一样对一切都很欣赏 1;我再也不能对任何事情都真正满意了 2;我对一切都感到厌倦 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('17', '你更喜欢吃那种水果?', '草莓 2;苹果 3;西瓜 5;菠萝 10;橘子 15;', '性格', '584b9f3473dfa.jpg', '1');
INSERT INTO `title` VALUES ('18', '请按照实际情况选择：', '我毫无犯罪感 0;有时我感到自己有罪 1;大部分时间里，我有犯罪感 2;我总有犯罪感 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('19', '请按照实际情况选择：', '我从不觉得我应该得到惩罚 0;我觉得我有可能得到惩罚 1;我期待着别人对我的惩罚 2;我觉得正在遭到别人的惩罚 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('20', '请按照实际情况选择：', '我从没有自杀的念头 0;我有自杀的念头 1;我愿意自杀 2;如果有机会，我就自杀 3;', '健康', '310270.jpg', '1');
INSERT INTO `title` VALUES ('21', '请按照实际情况选择：', '我没有发现最近自己的性生活和以前有什么不同 0;我对性生活已不像以往那么感兴趣了 1;我现在对性生活不太感兴趣 2;我对性生活毫无兴趣了 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('22', '你平时休闲经常去的地方', '郊外 2;电影院 3;公园 5;商场 10;酒吧 15;练歌房 20;', '性格', 'timg.jpg', '1');
INSERT INTO `title` VALUES ('23', '请按照实际情况选择：', '我不像以往那么担心健康 0;我担心身体各种不适 1;我对健康感到忧虑 2;我对健康感到极度忧虑，根本不能想别的事情 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('24', '请按照实际情况选择：', '我一直没有减轻体重的感觉 0;我有体重下降的感觉 1;我感到体重下降了很多 2;我感到体重下降太多了 3;', '性格', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('25', '你认为容易吸引你的人是?', '有才气的人 2;依赖你的人 3;优雅的人 5;善良的人 10;性情豪放的人 15;', '性格', '20180605075808_67766.jpg', '1');
INSERT INTO `title` VALUES ('26', '请按照实际情况选择：', '我的胃口想以往一样好 0;我的胃口以不像以往那么好了 1;我现在胃口很坏 2;我对一切食物都没有胃口 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('27', '请按照实际情况选择：', '我不爱哭 0;我比过去爱哭 1;我最近总想哭 2;我过去会哭，可现在想哭也哭不出来了 3;', '性格', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('28', '请按照实际情况选择：', '我不像以往那样性急了 0;我比以前急躁些 1;我经常容易被激怒 2;我现在总是处于急躁情绪中 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('29', '请按照实际情况选择：', '我对其他人从未失去兴趣 0;我已经不像以前对别人感兴趣了 1;我对别人已经失去了大部分兴趣 2;我对一切人都不敢兴趣 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('30', '如果你可以成为一种动物，你希望自己是哪种?', '猫 2;马 3;大象 5;猴子 10;狗 15;狮子 20;', '性格', 'timgZVARYPOP.jpg', '1');
INSERT INTO `title` VALUES ('31', '请按照实际情况选择：', '我所决定的事一定办到 0;我以不像以前那样对别人感兴趣了 1;', '性格', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('32', '天气很热，你更愿意选择什么方式解暑?', '游泳 5;喝冷饮 10;开空调 15;', '性格', 'timgVNE8G984.jpg', '1');
INSERT INTO `title` VALUES ('33', '请按照实际情况选择：', '我从不觉得比以前丑了 0;我对青春和魅力日趋担心 1;我感到青春不再，日渐衰老 2;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('34', '请按照实际情况选择：', '我能像以前那样工作 0;我感到现在要做一件事情，往往要花费比以前大的力气才行 1;我感到做一切事情都很费劲 2;我已感到什么事也不能干了 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('35', '如果必须与一个你讨厌的动物或昆虫在一起生活，你能容忍哪一个?', '蛇 2;猪 5;老鼠 10;苍蝇 15;', '性格', 'timgA88POQRQ.jpg', '1');
INSERT INTO `title` VALUES ('36', '请按照实际情况选择：', '我能像以前那样躺下就睡 0;我睡觉已不如以前香甜了 1;我比以前要早1至2个小时醒来，而且再难入睡 2;我比以前早好几个小时醒来，而且再也睡不着了 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('37', '请按照实际情况选择：', '我仍像以往一样不知疲倦 0;我比以往容易疲倦 1;我干什么事都容易疲倦 2;我总觉得疲倦，不愿意做事 3;', '健康', '20160111054212245.jpg', '1');
INSERT INTO `title` VALUES ('38', '你喜欢看哪类电影、电视剧?', '悬疑推理类 2;童话神话类 3;自然科学类 5;伦理道德类 10;战争枪战类 15;', '性格', 'timgIKOX0409.jpg', '1');
INSERT INTO `title` VALUES ('39', '以下哪个是你身边必带的物品?', '打火机 2;口红 2;记事本 3;纸巾 5;手机 10;', '性格', 'W020180816360304187421.jpg', '1');
INSERT INTO `title` VALUES ('40', '你出行时喜欢坐什么交通工具?', '火车 2;自行车 3;汽车 5;飞机 10;步行 15;', '性格', '2531170_222436975000_2.jpg', '1');
INSERT INTO `title` VALUES ('41', '以下颜色你更喜欢哪种?', '紫 2;黑 3;蓝 5;白 8;黄 12;红 15;', '性格', 'd439b6003af33a8720f3bc26cd5c10385343b574.jpg', '1');
INSERT INTO `title` VALUES ('42', '下列运动中挑选一个你最喜欢的(不一定擅长)?', '瑜珈 2;自行车 3;乒乓球 5;拳击 8;足球 10;蹦极 15;', '性格', 'b7555fa89bfa.jpg', '1');
INSERT INTO `title` VALUES ('43', '如果你拥有一座别墅，你认为它应当建立在哪里?', '湖边 2;草原 3;海边 5;森林 10;城中区 15;', '性格', '0176dc564f338832f87512f6dc30b5.jpg@1280w_1l_2o_100sh.jpg', '1');
INSERT INTO `title` VALUES ('44', '你更喜欢以下哪种天气现象?', '雪 2;风 3;雨 5;雾 10;雷电 15;', '性格', '1465354747557026.jpg', '1');
INSERT INTO `title` VALUES ('45', '你认为自己更喜欢在以下哪一个城市中生活?', '丽江 1;拉萨 3;昆明 5;西安 8;杭州 10;北京 15;', '性格', '3680557_133406269113_2.jpg', '1');
INSERT INTO `title` VALUES ('46', '你希望自己的窗口在一座30层大楼的第几层?', '丽江 1;拉萨 3;昆明 5;西安 8;杭州 10;北京 15;', '性格', '0b4e1794-6cc4-4111-8aa4-56165fe4a723.jpg', '1');
INSERT INTO `title` VALUES ('47', '聊闲天不再让你感到兴奋？', '是 2;否 1;', '性格', '3d-11273762.jpg', '1');
INSERT INTO `title` VALUES ('48', '每天晚上的睡眠都像休息日前一晚那样好？', '是 2;否 1;', '性格', '202609m8vp5gukmmgmyi8z.jpg', '1');
INSERT INTO `title` VALUES ('49', '对于很多事情，很多人，你学会了原谅？', '是 2;否 1;', '性格', '16298cb40aa74bec9f7860569c31335f_th.png', '1');
INSERT INTO `title` VALUES ('50', '你变得更加通情达理？', '是 2;否 1;', '性格', '8ee497dfdf1de02fa00fb3463d44ccd17ae2fcae_size39_w640_h960.jpg', '1');
INSERT INTO `title` VALUES ('51', '你开始尊重并且接受差异？', '是 2;否 1;', '性格', '20101203091550-43771830.jpg', '1');
INSERT INTO `title` VALUES ('52', '你不会把爱强加给任何人？', '是 2;否 1;', '性格', 'd8f9d72a6059252de145392f3f9b033b5bb5b94e.jpg', '1');
INSERT INTO `title` VALUES ('53', '你接受现实的能力越来越强？', '是 2;否 1;', '性格', '82bdad0a7ec35d32.jpg', '1');
INSERT INTO `title` VALUES ('54', '对待事物你不再妄加评判？', '是 2;否 1;', '性格', 'fcfaaf51f3deb48f16ef670cf51f3a292cf5785a.jpg', '1');
INSERT INTO `title` VALUES ('55', '你宁愿选择沉默也不去做没有意义的争论？', '是 2;否 1;', '性格', '5316bfc9efef2a73bff2fbc1bef1a426.jpeg.jpg', '1');
INSERT INTO `title` VALUES ('56', '幸福感不是取决于别人，而是自己？', '是 2;否 1;', '性格', 'TIM图片20190318152317.png', '1');
INSERT INTO `title` VALUES ('57', '你何时感觉最好', '早晨 2;下午及傍晚 4;夜里 6;', '职场', 'timgEIVOS9NA.jpg', '1');
INSERT INTO `title` VALUES ('58', '你走路时是（）', '大步快走 6;小步快走 4;不快，仰着头面对着世界 7;不快，低着头 2;很慢 1;', '职场', 'untitled.png', '1');
INSERT INTO `title` VALUES ('59', '和人说话时，你（）', '手臂交迭地站着 4;双手紧握着 2;一只手或双手放在臀部 5;碰着或推着与你说话的人 7;玩着你的耳朵，摸着你的下巴，或用手整理头发 6;', '性格', 'untitled.png', '1');
INSERT INTO `title` VALUES ('60', '坐着休息时，你的（）', '两膝并拢 4;两腿交叉 6;两腿伸直 2;一腿卷在身下 1;', '职场', 'untitled.png', '1');
INSERT INTO `title` VALUES ('61', '碰到你感到发笑的事时，你的反应是（）', '一个欣赏地大笑 6;笑着，但不大声 4;轻声地笑 3;羞怯地微笑 5;', '职场', 'untitled.png', '1');
INSERT INTO `title` VALUES ('62', '当你去一个派对或社交场合时，你（）', '很大声地入场以引起注意 6;安静地入场，找你认识的人 4;非常安静地入场，尽量不引人注意 2;', '职场', 'u=1633837092,784464874&fm=26&gp=0.jpg', '1');
INSERT INTO `title` VALUES ('63', '当你非常专心工作时，有人打断你，你会（）', '欢迎他 6;感到非常愤怒 2;在两者之间 4;', '职场', 'u=3670179698,2601659700&fm=26&gp=0.jpg', '1');
INSERT INTO `title` VALUES ('64', '下列颜色中，你最喜欢哪种颜色？', '红或橘色 6;黑色 7;黄或浅蓝色 5;绿色 4;深蓝或紫色 3;白色 2;棕或灰色 1;', '职场', 'd439b6003af33a8720f3bc26cd5c10385343b574.jpg', '1');
INSERT INTO `title` VALUES ('65', '临入睡的前几分钟，你在床上的姿势是（）', '仰躺，伸直 7;俯躺，伸直 6;侧躺，微卷 4;头睡在一手臂上 2;被盖过头 1;', '职场', 'untitled.png', '1');
INSERT INTO `title` VALUES ('66', '你经常梦到你在（）', '下落 4;打架或挣扎 2;找东西或人 3;飞或漂浮 5;你平常不做梦 6;你的梦都是愉快的 1;', '职场', 'untitled.png', '1');
INSERT INTO `title` VALUES ('67', '2121', '2121A1E81A1E91212A1E81A1E9', '性格', 'null', '1');
INSERT INTO `title` VALUES ('68', '是', '大叔大婶¤2￠大叔大婶多¤3￠', '性格', 'null', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '{\"nickName\":\"夕枫月影\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/hSztR1icbMDQanOQDrCpAZ2mvbjQWE6D84jwlicnMiaCwkzAicE76M9MwXLkB6obnAIiaaGgnv7zB3XcnKZOHjMqjJg/132\"}', '夕枫月影');
INSERT INTO `user` VALUES ('2', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqgjkQ2aQOpwvrCEzMDFmgU2qT3RXJ73eyegziaWq582Pm6icAQdkSPJyacu7y9r4ibR5JL0udB6VexQ/132\"}', 'Bonnenult');
INSERT INTO `user` VALUES ('3', '{\"nickName\":\"那YY\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shijiazhuang\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/0fvxNsNFWcKvU8gjR6bc4WnsklcekWONJsOzA0aHFJKT9ibISpxROQhPenpyZytKzuSYtoBLibUGZRofWWouNV1g/132\"}', '那YY');
INSERT INTO `user` VALUES ('4', '{\"nickName\":\"小鬼当家\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoyNOEic1I3QMibygKWoABKenpkhl7p51pR3rM92DNSRiaWZ5J923j7icvwQrNRZeJpdCE1oicKspX8iabQ/132\"}', '小鬼当家');
INSERT INTO `user` VALUES ('5', '{\"nickName\":\"夕枫月影\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/cCwAKhXhbettqtnqJRuXY5V55maUviaBiaEeHf0NUqAz1wdFRuDGSicXWcpCiabouwoZsU91s0McX9YAic9nN67qa6A/132\"}', '夕枫月影');
INSERT INTO `user` VALUES ('6', '{\"nickName\":\"玥儿吖\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Dalian\",\"province\":\"Liaoning\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/ZUsdwacqNShJ6zFItmknEibHBCXUqzFqahJUTZ9DicCZrdEoHGMHlVJqMZiaXibCxPzcBrBxDbfG1r6JTYVbHibBToA/132\"}', '玥儿吖');

-- ----------------------------
-- Table structure for user_result
-- ----------------------------
DROP TABLE IF EXISTS `user_result`;
CREATE TABLE `user_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_resu` varchar(255) DEFAULT NULL,
  `user_nickname` varchar(255) DEFAULT NULL,
  `user_timu` varchar(255) DEFAULT NULL,
  `timu_type` varchar(255) DEFAULT NULL,
  `timu_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_result
-- ----------------------------
INSERT INTO `user_result` VALUES ('1', '职场沟通力：50分', '{\"nickName\":\"夕枫月影\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/cCwAKhXhbettqtnqJRuXY5V55maUviaBiaEeHf0NUqAz1wdFRuDGSicXWcpCiabouwoZsU91s0McX9YAic9nN67qa6A/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('2', '轻度抑郁症', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '你是否有抑郁症', '性格', 'yiyu1.jpg');
INSERT INTO `user_result` VALUES ('3', '30', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('4', '职场沟通力：20分', '{\"nickName\":\"夕枫月影\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/cCwAKhXhbettqtnqJRuXY5V55maUviaBiaEeHf0NUqAz1wdFRuDGSicXWcpCiabouwoZsU91s0McX9YAic9nN67qa6A/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('5', '重度抑郁症', '{\"nickName\":\"夕枫月影\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/cCwAKhXhbettqtnqJRuXY5V55maUviaBiaEeHf0NUqAz1wdFRuDGSicXWcpCiabouwoZsU91s0McX9YAic9nN67qa6A/132\"}', '你是否有抑郁症', '性格', 'yiyu1.jpg');
INSERT INTO `user_result` VALUES ('6', '轻度抑郁症', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '你是否有抑郁症', '性格', 'yiyu1.jpg');
INSERT INTO `user_result` VALUES ('7', '聪明，性格活泼，人缘好，善于交', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '测测你的性格是什么样的？', '性格', 'TIM图片20190318143912.png');
INSERT INTO `user_result` VALUES ('8', '聪明，性格活泼，人缘好，善于交', '{\"nickName\":\"那YY\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shijiazhuang\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/36gVfnkMnnGmyVDYhrP8YYPzu5nNbony8BYvWSBIvkt9f2o9FasicEiahHculib8nA3MzrB2yGQdJhRtTshz4jjwQ/132\"}', '测测你的性格是什么样的？', '性格', 'TIM图片20190318143912.png');
INSERT INTO `user_result` VALUES ('9', '职场沟通力：20分', '{\"nickName\":\"夕枫月影\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/cCwAKhXhbettqtnqJRuXY5V55maUviaBiaEeHf0NUqAz1wdFRuDGSicXWcpCiabouwoZsU91s0McX9YAic9nN67qa6A/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('10', '你目前的成熟度很高，掌握了社会成员所具备的知识、技能和行为规范，并且能够引领他人来适应这个改造的过程。你有很强的责任感，面对问题能够采取建设性的态度来应对，而不是一味的逃避。同时你变得更加的宽容，大度。你有着成熟的生活阅历，有既定的生活目标和固定的行为模式。然而这并不意味着社会化的结束，随着时间的推移，你的社会化还会继续发展。', '{\"nickName\":\"那YY\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shijiazhuang\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/36gVfnkMnnGmyVDYhrP8YYPzu5nNbony8BYvWSBIvkt9f2o9FasicEiahHculib8nA3MzrB2yGQdJhRtTshz4jjwQ/132\"}', '人格测试：你是一个成熟的人吗？', '性格', '20101203091550-43771830.jpg');
INSERT INTO `user_result` VALUES ('11', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('12', '吸引人的冒险家，别人认为你有一个令人兴奋的、高度活泼的、相当易冲动的个性：你是一个天生的领袖、一个做决定会很快的人，虽然你的决定不总是对的。别人认为你是大胆的和冒险的，会愿意让你尝试做任何事青，即是一个愿意尝试机会而欣赏冒险的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('13', '你目前的成熟度基本合格，但是尚有发展的空间，需要不断的努力。你基本掌握了生活技能和社会文化，开始独立参与社会生活，并且逐步的适应社会生活。但前面无路可走时，你会觉得彷徨失措，当你前面的路很多时，你又会觉得迷失。这就是不断适应环境，改造自我的过程。而你要做的，就是要走好选择的路，而别只选好走的路。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '人格测试：你是一个成熟的人吗？', '性格', '20101203091550-43771830.jpg');
INSERT INTO `user_result` VALUES ('14', '你目前的成熟度基本合格，但是尚有发展的空间，需要不断的努力。你基本掌握了生活技能和社会文化，开始独立参与社会生活，并且逐步的适应社会生活。但前面无路可走时，你会觉得彷徨失措，当你前面的路很多时，你又会觉得迷失。这就是不断适应环境，改造自我的过程。而你要做的，就是要走好选择的路，而别只选好走的路。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '人格测试：你是一个成熟的人吗？', '性格', '20101203091550-43771830.jpg');
INSERT INTO `user_result` VALUES ('15', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('16', '聪明，性格活泼，人缘好，善于交朋友，心机较深。事业心强，渴望成功。思维较理性，崇尚爱情，但当爱情与婚姻发生冲突时会选择有利于自己的婚姻。金钱欲望强烈。\r\n', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '测测你的性格是什么样的？', '性格', 'TIM图片20190318143912.png');
INSERT INTO `user_result` VALUES ('17', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('18', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('19', '精神正常', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '你是否有抑郁症', '性格', 'yiyu1.jpg');
INSERT INTO `user_result` VALUES ('20', '聪明，性格活泼，人缘好，善于交朋友，心机较深。事业心强，渴望成功。思维较理性，崇尚爱情，但当爱情与婚姻发生冲突时会选择有利于自己的婚姻。金钱欲望强烈。\r\n', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '测测你的性格是什么样的？', '性格', 'TIM图片20190318143912.png');
INSERT INTO `user_result` VALUES ('21', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('22', '精神正常', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '你是否有抑郁症', '性格', 'yiyu1.jpg');
INSERT INTO `user_result` VALUES ('23', '吸引人的冒险家，别人认为你有一个令人兴奋的、高度活泼的、相当易冲动的个性：你是一个天生的领袖、一个做决定会很快的人，虽然你的决定不总是对的。别人认为你是大胆的和冒险的，会愿意让你尝试做任何事青，即是一个愿意尝试机会而欣赏冒险的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('24', '你目前的成熟度基本合格，但是尚有发展的空间，需要不断的努力。你基本掌握了生活技能和社会文化，开始独立参与社会生活，并且逐步的适应社会生活。但前面无路可走时，你会觉得彷徨失措，当你前面的路很多时，你又会觉得迷失。这就是不断适应环境，改造自我的过程。而你要做的，就是要走好选择的路，而别只选好走的路。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '人格测试：你是一个成熟的人吗？', '性格', '20101203091550-43771830.jpg');
INSERT INTO `user_result` VALUES ('25', '聪明，性格活泼，人缘好，善于交朋友，心机较深。事业心强，渴望成功。思维较理性，崇尚爱情，但当爱情与婚姻发生冲突时会选择有利于自己的婚姻。金钱欲望强烈。\r\n', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '测测你的性格是什么样的？', '性格', 'TIM图片20190318143912.png');
INSERT INTO `user_result` VALUES ('26', '吸引人的冒险家，别人认为你有一个令人兴奋的、高度活泼的、相当易冲动的个性：你是一个天生的领袖、一个做决定会很快的人，虽然你的决定不总是对的。别人认为你是大胆的和冒险的，会愿意让你尝试做任何事青，即是一个愿意尝试机会而欣赏冒险的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('27', '聪明，性格活泼，人缘好，善于交朋友，心机较深。事业心强，渴望成功。思维较理性，崇尚爱情，但当爱情与婚姻发生冲突时会选择有利于自己的婚姻。金钱欲望强烈。\r\n', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '测测你的性格是什么样的？', '性格', 'TIM图片20190318143912.png');
INSERT INTO `user_result` VALUES ('28', '聪明，性格活泼，人缘好，善于交朋友，心机较深。事业心强，渴望成功。思维较理性，崇尚爱情，但当爱情与婚姻发生冲突时会选择有利于自己的婚姻。金钱欲望强烈。\r\n', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '测测你的性格是什么样的？', '性格', 'TIM图片20190318143912.png');
INSERT INTO `user_result` VALUES ('29', '富有活力的完善者，别人认为你是一个有活力、有魅力、好玩的、讲究实际的、而永远有趣的人，一个经常是群众注意力的焦点，但是你是一个足够平衡的人，不至于因此而昏了头，他们也认为你亲切和蔼体贴能谅解人，一个永远会让使人高兴起来并会帮助别人的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('30', '吸引人的冒险家，别人认为你有一个令人兴奋的、高度活泼的、相当易冲动的个性：你是一个天生的领袖、一个做决定会很快的人，虽然你的决定不总是对的。别人认为你是大胆的和冒险的，会愿意让你尝试做任何事青，即是一个愿意尝试机会而欣赏冒险的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('31', '精神正常', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '你是否有抑郁症', '性格', 'yiyu1.jpg');
INSERT INTO `user_result` VALUES ('32', '吸引人的冒险家，别人认为你有一个令人兴奋的、高度活泼的、相当易冲动的个性：你是一个天生的领袖、一个做决定会很快的人，虽然你的决定不总是对的。别人认为你是大胆的和冒险的，会愿意让你尝试做任何事青，即是一个愿意尝试机会而欣赏冒险的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('33', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('34', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('35', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('36', '24', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('37', '职场沟通力：50分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('38', '职场沟通力：50分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('39', '轻度抑郁症', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '你是否有抑郁症', '性格', 'yiyu1.jpg');
INSERT INTO `user_result` VALUES ('40', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('41', '职场沟通力：50分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('42', '富有活力的完善者，别人认为你是一个有活力、有魅力、好玩的、讲究实际的、而永远有趣的人，一个经常是群众注意力的焦点，但是你是一个足够平衡的人，不至于因此而昏了头，他们也认为你亲切和蔼体贴能谅解人，一个永远会让使人高兴起来并会帮助别人的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('43', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('44', '富有活力的完善者，别人认为你是一个有活力、有魅力、好玩的、讲究实际的、而永远有趣的人，一个经常是群众注意力的焦点，但是你是一个足够平衡的人，不至于因此而昏了头，他们也认为你亲切和蔼体贴能谅解人，一个永远会让使人高兴起来并会帮助别人的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('45', '富有活力的完善者，别人认为你是一个有活力、有魅力、好玩的、讲究实际的、而永远有趣的人，一个经常是群众注意力的焦点，但是你是一个足够平衡的人，不至于因此而昏了头，他们也认为你亲切和蔼体贴能谅解人，一个永远会让使人高兴起来并会帮助别人的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('46', '富有活力的完善者，别人认为你是一个有活力、有魅力、好玩的、讲究实际的、而永远有趣的人，一个经常是群众注意力的焦点，但是你是一个足够平衡的人，不至于因此而昏了头，他们也认为你亲切和蔼体贴能谅解人，一个永远会让使人高兴起来并会帮助别人的人。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场心理测试', '职场', '20180605075808_67766.jpg');
INSERT INTO `user_result` VALUES ('47', '你目前的成熟度基本合格，但是尚有发展的空间，需要不断的努力。你基本掌握了生活技能和社会文化，开始独立参与社会生活，并且逐步的适应社会生活。但前面无路可走时，你会觉得彷徨失措，当你前面的路很多时，你又会觉得迷失。这就是不断适应环境，改造自我的过程。而你要做的，就是要走好选择的路，而别只选好走的路。', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '人格测试：你是一个成熟的人吗？', '性格', '20101203091550-43771830.jpg');
INSERT INTO `user_result` VALUES ('48', '职场沟通力：50分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('49', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');
INSERT INTO `user_result` VALUES ('50', '职场沟通力：20分', '{\"nickName\":\"Bonnenult\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hengshui\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqKy1tYNnbycZAD88b0QLL8uo1r0Zoez49ZqExsmrU93yqOk9HnpGwEITTdhL4yUHiakOTYqwCu0ew/132\"}', '职场沟通能力测试', '职场', 'meilun.jpg');

-- ----------------------------
-- Table structure for volunteer
-- ----------------------------
DROP TABLE IF EXISTS `volunteer`;
CREATE TABLE `volunteer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `common_user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `work_time_begin` double DEFAULT NULL,
  `work_time_end` double NOT NULL,
  `good_type` varchar(255) DEFAULT NULL,
  `work_image` varchar(255) DEFAULT NULL,
  `front_image` varchar(255) DEFAULT NULL,
  `behind_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of volunteer
-- ----------------------------
INSERT INTO `volunteer` VALUES ('1', '2', '姚雅丽', '女', '411424', '15613155379', '本科', '石家庄铁道大学', '石家庄', '审核通过', '12', '15', '心理', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg', '1d0ecd06bd24eb7fdcf7b3b4a9ea4ec3.jpg');
INSERT INTO `volunteer` VALUES ('14', '2', '姚雅丽', '女', '411424199612104545', '15613155379', '本科', '石家庄铁道大写', '石家庄', '待审核', '12', '13', '性格', '', '032eb1c4fb5da628416b949b09b9f394.jpg', '');

-- ----------------------------
-- Table structure for yuyue
-- ----------------------------
DROP TABLE IF EXISTS `yuyue`;
CREATE TABLE `yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuyue
-- ----------------------------
INSERT INTO `yuyue` VALUES ('1', '1', '1', '同意处理');
