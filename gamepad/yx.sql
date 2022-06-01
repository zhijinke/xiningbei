/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : yx

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 10/05/2022 16:32:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '111');
INSERT INTO `admin` VALUES (2, 'aaa', '111');
INSERT INTO `admin` VALUES (4, 'abc', '123456');

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sale` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduce` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgsrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES (1, '樱之刻-在樱花之森下漫步--', 201.00, '日语', '预约中', '天才与才子与凡人。弱小的神与强大的神。<br>比幸福前方更遥远故事。<br>那便是，樱之物语的第二幕。<br>', 'images/1.png');
INSERT INTO `game` VALUES (2, '\r\nATRI -My Dear Moments-', 72.00, '英语', '已发售', '「在日渐沉没的世界里，我找到了你。」<br>在不远的未来，海平面原因不明地急速上升，导致了地表多数都沉入海中。<br>在一个逐渐沉入海中的平和小镇，属于少年和机器人少女的难忘夏日就这么开始了——', 'images/2.png');
INSERT INTO `game` VALUES (3, '樱之诗-在樱花之森上飞舞-', 112.00, '中文', '已发售', '春天。由于世界著名的艺术家父亲的去世，变得天涯孤独的主人公·草薙直哉，要开始了寄居在友人的夏目圭家的生活。<br>在那里迎接他的是在他将要上学的地方担任班主任的夏目蓝，以及从事演员的圭的妹妹夏目雫。<br>然后，随着新学期的到来，幼时转校离去的青梅竹马御桜禀再度出现在他的面前。<br>随风飞舞的樱花花瓣的彼方，那是，有如曾经约定下的再会——。<br>时间将思念重叠在一起，当感情的奔流成形之时，在那里相遇到的光景将会是？<br>', 'images/8.jpg');
INSERT INTO `game` VALUES (4, '美好的每一天', 102.00, '日语', '已发售', '六个视点，一个故事，多种旋律。<br>各个视点组成了故事。<br>然后故事编绘出旋律。<br>「天空与世界」「终结与开始」「文学与化学」「救世主与英雄」「兄与妹」「向日葵的坡道」<br>旋律变成了共鸣的乐章。<br>这就是名为『素晴らしき日々』的故事。', 'images/4.jpg');
INSERT INTO `game` VALUES (5, '向日葵教会和漫长的暑假', 90.00, '日语', '已发售', '有亘古不变的事物。<br>也有会发生变化的事物。<br>即使如此——也有想要回去的地方。<br>太阳在云彩中隐藏了身影，夏天已悄然落至身旁。<br>明日叶阳介，在时隔8年之後回到了这裏。<br>他的人生中最重要的时光，恐怕便是在此度过。<br>那是在阳光之下绽放着的小建筑物·胧白教会，<br>或者说，向日葵的教会。<br>', 'images/5.jpg');
INSERT INTO `game` VALUES (6, '樱之刻-在樱花之森下漫步--', 201.00, '日语', '预约中', '天才与才子与凡人。弱小的神与强大的神。<br>比幸福前方更遥远故事。<br>那便是，樱之物语的第二幕。<br>', 'images/1.png');
INSERT INTO `game` VALUES (7, '\r\nATRI -My Dear Moments-', 72.00, '英语', '预约中', '「在日渐沉没的世界里，我找到了你。」<br>在不远的未来，海平面原因不明地急速上升，导致了地表多数都沉入海中。<br>在一个逐渐沉入海中的平和小镇，属于少年和机器人少女的难忘夏日就这么开始了——', 'images/2.png');
INSERT INTO `game` VALUES (8, '樱之诗-在樱花之森上飞舞-', 112.00, '中文', '已发售', '春天。由于世界著名的艺术家父亲的去世，变得天涯孤独的主人公·草薙直哉，要开始了寄居在友人的夏目圭家的生活。<br>在那里迎接他的是在他将要上学的地方担任班主任的夏目蓝，以及从事演员的圭的妹妹夏目雫。<br>然后，随着新学期的到来，幼时转校离去的青梅竹马御桜禀再度出现在他的面前。<br>随风飞舞的樱花花瓣的彼方，那是，有如曾经约定下的再会——。<br>时间将思念重叠在一起，当感情的奔流成形之时，在那里相遇到的光景将会是？<br>', 'images/23.jpg');
INSERT INTO `game` VALUES (9, '美好的每一天', 102.00, '日语', '预约中', '六个视点，一个故事，多种旋律。<br>各个视点组成了故事。<br>然后故事编绘出旋律。<br>「天空与世界」「终结与开始」「文学与化学」「救世主与英雄」「兄与妹」「向日葵的坡道」<br>旋律变成了共鸣的乐章。<br>这就是名为『素晴らしき日々』的故事。', 'images/4.jpg');
INSERT INTO `game` VALUES (10, '向日葵教会和漫长的暑假', 90.00, '日语', '预约中', '有亘古不变的事物。<br>也有会发生变化的事物。<br>即使如此——也有想要回去的地方。<br>太阳在云彩中隐藏了身影，夏天已悄然落至身旁。<br>明日叶阳介，在时隔8年之後回到了这裏。<br>他的人生中最重要的时光，恐怕便是在此度过。<br>那是在阳光之下绽放着的小建筑物·胧白教会，<br>或者说，向日葵的教会。<br>', 'images/5.jpg');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `con` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` date NOT NULL,
  `imgsrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, ' 《圣境之塔》养老手游', '移动互联网时代，万物皆可云，继什么云养猫、云养狗、云课堂后，以修勾夜店老板为代表的一批线上云蹦迪也开始流行起来，近日，由“《圣境之塔》卡巴拉养生局”联合修勾夜店老板举办的沙滩森林版云蹦迪就引来了15万玩家网友同场狂欢，由于人气太旺，现场不少玩家频频发出“我在哪里”的灵魂拷问，据说当晚有大量玩家竟然在森林舞池里面迷路了。<br>\r\n女装修狗惊艳全场，修勾夜店上演养老蹦迪现场<br>\r\n据说本次修勾夜店老板将舞台设置在了神秘的卡巴拉大陆，区别于以往现代化的舞池，由大海、阳光、沙滩、森林组成全新舞台充满了浓浓的自然休闲气息，让我不自觉地就想到“我的理想退休生活”，就是找一个这样有山有水的地方种田、养花、钓鱼....\r\n面对如此风景优美的蹦迪环镜，就连修狗狗也好好打扮了一番，纷纷头戴各种花饰盛装出席，甚至不少修勾还骑上了据说是来自于卡巴拉大陆的“咕咕鸡”坐骑，满满的土豪气质简直快要流出屏幕了，虽说这样的搭配不知道是那个天才想出来的，但想到人家修狗狗好不容易这么拉风一次，我也就忍了。吐槽归吐槽，可这种毫无理由的混搭风格足够在人心中留下不灭的印象，到现在我脑海里还会不时闪过女装修狗狗骑着鸡蹦迪的名场面。<br>\r\n女装修狗我也就忍了，可舞台后面写着“本场消费由卡巴拉养老局赞助”的大红横幅以及舞池右边的大幅户外广告牌又算怎么回事？怎么都感觉这不是来蹦迪的，而是来跳广场舞来了？感情这是修勾夜店老年迪斯科专场的节奏啊？ <br>\r\n这种以广场舞蹦迪的形式很有记忆点，同时也给观众们留下了深刻的印象。不得不说修勾夜店老板的操作确有几分新意，能够把养老和蹦迪两个冲突的动作熔于一炉算得上很有创意了，配合云蹦迪本身不设门槛的基本属性，休闲养老蹦迪没毛病。<br>\r\n就在我还在疑惑修勾夜店老板这是要提前进入养老生活的时候，背后的神秘土豪老板就自己曝光了，随着DJ带领大家一次又一次的喊出“谢谢圣境之塔卡巴拉养老局”、“圣境之塔手游，养老必达”、“圣境之塔手游，给你一个五星级养老归属”等口号的时候，我就明白了，原来是前段时间勾搭UP主快速社死，然后被大量玩家称之为“史上最惨甲方爸爸”的《圣境之塔》手游“穷官方”<br>\r\n话说前不久，知名UP主@叫我死盖就好忽然爆出一张甲方爸爸私信求合作的聊天截图，没钱付广告费但是又想火的“穷甲方”引起大量网友吐槽，随后这名甲方还被官方抓包为项目组内鬼，“穷甲方”的帽子就这样稳稳的落在《圣境之塔》手游项目组头上了。<br>\r\n万万没想到，这一次“穷甲方”竟然还有钱来包场蹦迪，还把游戏里面的花灵和咕咕鸡都拿出来赞助修勾夜店了，也难怪修狗狗会头戴各种女性发饰骑着鸡来蹦迪了，还有修勾夜店变身养老蹦迪现场也就不奇怪了，很符合《圣境之塔》官方人设。<br>\r\n把优美的卡巴拉大陆变成生活气息浓厚的养老蹦迪现场，各式花灵与坐骑咕咕鸡联袂亮相，卡巴拉养老局名不虚传，“穷官方”就是会玩。<br>\r\n蹦养生迪玩养老游戏，《圣境之塔》再破圈<br>\r\n到修勾夜店蹦养生迪，来《圣境之塔》玩养老游戏，这一套行运流水的操作不得不让人佩服，不管如何，我算是对《圣境之塔》印象深刻了。<br>\r\n事实上，《圣境之塔》也确实可以当得起“养老游戏”的称谓，作为一款被佛系项目组称之为“养老游戏”的森系休闲MMO手游，它有着诸多贴合养老主题的玩法，在游戏中我们不仅可以养成风格各异、能力不同的各种花灵来帮助自己冒险战斗，而且还有跳舞、演奏、种田、游泳等诸多生活玩法，最重要的是这些生活玩法的奖励就足以让你在游戏里照常升级，而非一定要去不停的战斗和闯关<br>\r\n视频赏析：https://v.qq.com/x/page/i3333h00iyv.html<br>\r\n可以说，在卡巴拉大陆上生活，战斗不是唯一和必须的选项，放置系统可以让你轻松挂机，海量生活玩法更是让玩家可以轻松悠闲的在卡巴拉大路上游山玩水，休闲且高自由度的设定对于新手玩家和休闲玩家来说友好度爆棚。 <br>\r\n在看到《圣境之塔》前我是不相信什么“养老游戏”说法的，特别是在MMO这个领域内“肝”才是主流，为此游戏圈内的养老派和肝游派还为此爆发一次争论，肝游派一如既往的信奉打怪升级优胜劣汰，而养老派则渴望慢节奏休闲娱乐。事实上，随着放置类、休闲类游戏兴起，整个游戏围内的养老派和肝游派之间的争论一直没有停歇，虽然我并不反对肝游，但仍然希望一款真正的养老游戏出现，而这款《圣境之塔》或许就是养老派真正想要的。<br>\r\n要知道，虽然市面上的休闲类游戏并不少见，甚至放置类游戏都已经成为一大流派，但真正打出“养老游戏”概念的则十分罕见，而《圣境之塔》恰恰就一直在强调这一点，项目组一直致力于深挖各类休闲玩法，并推出诸如以歌会友、甜蜜下午茶、开心游乐园、亲密温泉、种菜、捕虫、垂钓等丰富多样的休闲项目，满足不同养老休闲玩家的需要。如', '2020-05-03', 'images/4.jpg');
INSERT INTO `news` VALUES (2, '《格林魔书》重制版7月发售！', '日本一宣布了香草社游戏《格林魔书》的重制版《格林魔书 OnceMore》将于7月28日发售的消息。本作的第一弹PV也一并公开。<br>\r\n《格林魔书》讲述了在魔法学校“银之星体之塔”上学的少女莉蕾·布劳，为了避免学校被全灭的惨剧，回到了5天前为揭开真相并阻止惨剧而展开行动的故事。游戏为RTS类型，玩家在游戏中将控制莉蕾，借助魔书的力量召唤使魔，在守护自己的阵营的同时攻略敌阵。<br>\r\n在这次的重制版中，除了会对图像进行高清化之外，还会新录制角色语音。除了剧情部分外，战斗中也加入了莉蕾等角色的声音。另外，游戏还将加入可以转变战局的“大魔法”系统和提升魔法阵或使魔的“技能树”系统。战斗过程也加入了“快进”和战斗中存档的功能。困难难度的难度有所上升，让游戏更具有挑战性。<br>', '2022-05-01', 'images/5.jpg');
INSERT INTO `news` VALUES (3, '全网预约破500', '承袭经典IP，重燃格斗青春！由银汉游戏研发，bilibili游戏独家代理的正统IP续作《时空猎人3》自全网预约开启后，吸引了众多IP用户的关注，时至今日全网预约已突破500万！<br>\r\n作为经典横版格斗手游《时空猎人》的正统续作，《时空猎人3》融合前作经典内容，对世界观、角色设计和格斗手感等多方面进行重置和升级，同时加入当下玩家更喜爱的游戏元素，将情怀和创新完美结合，终以全新面貌再度启程。<br>', '2022-05-04', 'images/6.jpg');
INSERT INTO `news` VALUES (4, '《来自深渊》公开游戏模式', 'Spike Chunsoft介绍了ARPG《来自深渊 朝向黑暗的双星》（PC、PS4、Nintendo Switch）的游戏模式和一部分游戏系统。<br>\r\n在本作中，分为HELLO ABYSS和DEEP IN ABYSS两种游戏模式。在HELLO ABYSS中，玩家将在重温动画故事的同时，学习基本游戏系统和进行方法。玩家在此模式中，将控制主人公莉可和雷格一起向着深渊前进。游戏中的事件有全语音配音。<br>', '2022-05-17', 'images/23.jpg');
INSERT INTO `news` VALUES (5, '《灰色 战场的船歌》4月5日开服！', 'EXNOA运营的DMM游戏《灰色 战场的船歌》宣布了将于4月5日开服的消息。本作的一段序章视频也一并公开。在这次的视频中，可以看到原作本篇和这次的游戏故事之间的联系。<br>\r\n本作游戏是讲述在《灰色的果实》、《灰色的迷宫》和《灰色的乐园》中有着活跃表现的雄二等人，在体验超高科技VRMMO游戏《潘多拉》中冒险的故事。游戏分为普通版和X版，两版本数据互通，目前都在事前预约中。<br>', '2022-05-02', 'images/8.jpg');
INSERT INTO `news` VALUES (6, '《失落的龙约》即将停服', '由任天堂与Cygames合作制作的手机游戏《Dragalia Lost ～失落的龙约～》宣布了即将停服的消息。<br>\r\n根据官方通知《Dragalia Lost ～失落的龙约～》的主线剧情将于2022年7月追加最终章（第26章后篇）并完结。主线剧情完结后将继续运营一段时间，此后将结束《Dragalia Lost ～失落的龙约～》的运营并关闭服务器。具体时间将于日后另行通知。<br>\r\n另外官方也宣布了将于3月31日开放的召唤中将最后一次追加新角色。此后除主线剧情和部分任务外，将不再追加其它新内容。<br>', '2022-05-19', 'images/9.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, '用户1', '123', '111');
INSERT INTO `user` VALUES (3, '用户2', '123', '222');
INSERT INTO `user` VALUES (5, '用户3', '123', '333');
INSERT INTO `user` VALUES (7, '用户4', '123', '444');
INSERT INTO `user` VALUES (9, '用户5', '123', '555');
INSERT INTO `user` VALUES (10, '用户6', '123', '666');
INSERT INTO `user` VALUES (13, '用户7', '123', '777');
INSERT INTO `user` VALUES (14, '用户8', '123', '888');
INSERT INTO `user` VALUES (15, '用户9', '123', '999');
INSERT INTO `user` VALUES (16, '用户10', '123', '000');

SET FOREIGN_KEY_CHECKS = 1;
