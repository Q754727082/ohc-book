/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : book_note

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 01/03/2022 23:57:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_zh` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_cls` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `component` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, '/admin', 'AdminIndex', '首页', 'el-icon-s-home', 'AdminIndex', 0);
INSERT INTO `admin_menu` VALUES (2, '/admin/dashboard', 'DashboardAdmin', '运行情况', NULL, 'dashboard/admin/index', 1);
INSERT INTO `admin_menu` VALUES (3, '/admin', 'User', '用户管理', 'el-icon-user', 'AdminIndex', 0);
INSERT INTO `admin_menu` VALUES (4, '/admin', 'Content', '内容管理', 'el-icon-tickets', 'AdminIndex', 0);
INSERT INTO `admin_menu` VALUES (5, '/admin', 'System', '系统配置', 'el-icon-s-tools', 'AdminIndex', 0);
INSERT INTO `admin_menu` VALUES (6, '/admin/user/profile', 'Profile', '用户信息', NULL, 'user/UserProfile', 3);
INSERT INTO `admin_menu` VALUES (7, '/admin/user/role', 'Role', '角色配置', NULL, 'user/Role', 3);
INSERT INTO `admin_menu` VALUES (8, '/admin/content/book', 'BookManagement', '图书管理', NULL, 'content/BookManagement', 4);
INSERT INTO `admin_menu` VALUES (9, '/admin/content/banner', 'BannerManagement', '广告管理', NULL, 'content/BannerManagement', 4);
INSERT INTO `admin_menu` VALUES (10, '/admin/content/article', 'ArticleManagement', '文章管理', NULL, 'content/ArticleManagement', 4);

-- ----------------------------
-- Table structure for admin_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission`;
CREATE TABLE `admin_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc_` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permission
-- ----------------------------
INSERT INTO `admin_permission` VALUES (1, 'users_management', '用户管理', '/api/admin/user');
INSERT INTO `admin_permission` VALUES (2, 'roles_management', '角色管理', '/api/admin/role');
INSERT INTO `admin_permission` VALUES (3, 'content_management', '内容管理', '/api/admin/content');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_zh` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, 'sysAdmin', '系统管理员', 1);
INSERT INTO `admin_role` VALUES (2, 'contentManager', '内容管理员', 1);
INSERT INTO `admin_role` VALUES (3, 'visitor', '访客', 1);
INSERT INTO `admin_role` VALUES (9, 'test', '测试角色', 1);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NULL DEFAULT NULL,
  `mid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 194 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (19, 4, 1);
INSERT INTO `admin_role_menu` VALUES (20, 4, 2);
INSERT INTO `admin_role_menu` VALUES (21, 3, 1);
INSERT INTO `admin_role_menu` VALUES (22, 3, 2);
INSERT INTO `admin_role_menu` VALUES (23, 9, 1);
INSERT INTO `admin_role_menu` VALUES (24, 9, 2);
INSERT INTO `admin_role_menu` VALUES (121, 1, 1);
INSERT INTO `admin_role_menu` VALUES (122, 1, 2);
INSERT INTO `admin_role_menu` VALUES (123, 1, 3);
INSERT INTO `admin_role_menu` VALUES (124, 1, 6);
INSERT INTO `admin_role_menu` VALUES (125, 1, 7);
INSERT INTO `admin_role_menu` VALUES (126, 1, 4);
INSERT INTO `admin_role_menu` VALUES (127, 1, 8);
INSERT INTO `admin_role_menu` VALUES (128, 1, 9);
INSERT INTO `admin_role_menu` VALUES (129, 1, 10);
INSERT INTO `admin_role_menu` VALUES (130, 1, 5);
INSERT INTO `admin_role_menu` VALUES (188, 2, 1);
INSERT INTO `admin_role_menu` VALUES (189, 2, 2);
INSERT INTO `admin_role_menu` VALUES (190, 2, 4);
INSERT INTO `admin_role_menu` VALUES (191, 2, 8);
INSERT INTO `admin_role_menu` VALUES (192, 2, 9);
INSERT INTO `admin_role_menu` VALUES (193, 2, 10);

-- ----------------------------
-- Table structure for admin_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permission`;
CREATE TABLE `admin_role_permission`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `rid` int(20) NULL DEFAULT NULL,
  `pid` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_role_permission_role_1`(`rid`) USING BTREE,
  INDEX `fk_role_permission_permission_1`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permission
-- ----------------------------
INSERT INTO `admin_role_permission` VALUES (83, 5, 3);
INSERT INTO `admin_role_permission` VALUES (108, 1, 1);
INSERT INTO `admin_role_permission` VALUES (109, 1, 2);
INSERT INTO `admin_role_permission` VALUES (110, 1, 3);
INSERT INTO `admin_role_permission` VALUES (139, 2, 3);

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_operator_role_operator_1`(`uid`) USING BTREE,
  INDEX `fk_operator_role_role_1`(`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES (40, 24, 2);
INSERT INTO `admin_user_role` VALUES (70, 2, 3);
INSERT INTO `admin_user_role` VALUES (71, 3, 2);
INSERT INTO `admin_user_role` VALUES (72, 1, 1);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `press` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `abs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_book_category_on_cid`(`cid`) USING BTREE,
  CONSTRAINT `fk_book_category_on_cid` FOREIGN KEY (`cid`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'https://i.loli.net/2019/04/10/5cadaa0d0759b.jpg', '且在人间', '余秀华', '2019-2-1', '湖南文艺出版社', '诗人余秀华中篇小说首次结集出版。\r\n\r\n        《且在人间》——以余秀华为生活原型，讲述一个残疾女人悲苦倔强、向死而生的故事。\r\n\r\n        女主人公周玉生活在乡村，患有“脑瘫”，她几乎被所有人漠视，甚至被整个社会抛弃，但是她渴望被当成一个普通的健康人,而不是带着怜悯或不屑，她只要求平等。爱情的缺 失，家庭的不幸，生活的种种际遇让周玉用诗歌的方式把 情感抒发出来，最终她用诗歌创作出了一个文学的世界，得到了人们的认可。', 2);
INSERT INTO `book` VALUES (2, 'https://i.loli.net/2019/04/10/5cada7e73d601.jpg', '三体', '刘慈欣', ' 2008-1', '重庆出版社', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\r\n\r\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\r\n\r\n人类的末日悄然来临。', 2);
INSERT INTO `book` VALUES (32, 'https://i.loli.net/2019/04/10/5cada99bd8ca5.jpg', '叙事的虚构性', '[美] 海登·怀特 ', '2019-3', '南京大学出版社', '海登•怀特被誉为人类伟大的思想家之一。从1973年出版具有里程碑意义的专著《元史学》以来，怀特的作品对于历史学、文学研究、人类学、哲学、艺术史、电影传媒研究等将叙事学作为关注焦点的学科而言意义非凡。\n\n本书由罗伯特•多兰作序，他巧妙地将怀特重要但难得一见的文章汇集成册，研究探讨他关于历史书写和叙事的革命性理论。怀特的这些文章大多采用论文体，内容涉及多位思想家，探讨诸多主题，文笔犀利，语言优美。\n\n《叙事的虚构性》追溯怀特重要思想的演变轨迹，是历史编纂学者和学习者、历史理论和文学研究学者们的重要读物。', 3);
INSERT INTO `book` VALUES (35, 'https://i.loli.net/2019/04/10/5cada940e206a.jpg', '圣母', '[日]秋吉理香子 ', '2019-3', '新星出版社', '一起男童被害案搅得蓝出市人心惶惶。\n\n好不容易怀孕生产的保奈美抱紧年幼的孩子，立誓要不惜任何代价保护她。\n\n男人是在孩子出生后才成为父亲的，但女人，是从小生命来到体内的那一瞬间起，就是母亲了。患有不孕症的保奈美是经历过艰辛的治疗过程才终于有了孩子的，她不允许这起命案威胁到宝贵的孩子！\n\n母亲，就是要消除所有对子女的威胁，每一位母亲都应肩负这样的使命，这是神圣的天职！', 1);
INSERT INTO `book` VALUES (37, 'https://i.loli.net/2019/04/10/5cada8986e13a.jpg', '奢侈与逸乐', '[英]马克辛·伯格', '2019-3', '中国工人出版社', '本书探讨了十八世纪英国新式、时尚的消费品的发明、制造和购买。', 3);
INSERT INTO `book` VALUES (38, 'https://i.loli.net/2019/04/10/5cada8b8a3a17.jpg', '忧伤动物', '[德]莫妮卡·马龙 ', '2019-4', '漓江出版社', '“忧伤动物”(animal triste)这个词组取自一句最早可以追溯到亚里士多德时代的拉丁语名言，即“欢爱后，每个动物都忧伤不已”（Post coitum omne animal triste est）。无疑，这部冠以如此标题的小说让人有不祥的预感并暗示着宿命的思想。小说的女主人公是位近乎百岁的老人。在多年前有意斩断了与外界的一切联系之后，在她的后半生里，她唯一能做的就是或躺或坐在“印着鲜红、艳绿和深紫色的大花”、让人想起“食肉植物的花朵”的床单上，追忆几十年前她和自己...', 1);
INSERT INTO `book` VALUES (54, 'https://i.loli.net/2019/04/10/5cada9d9d23a6.jpg', '爱界', '[英] 费伊·韦尔登 ', '2019-3-1', '人民文学出版社', '去不去爱，爱的界限何在，一直是普拉克西丝的人生课题。\n\n年迈的她独自待在肮脏而昏暗的地下室里，想写回忆录，可她该写些什么呢？是写父母未婚同居生下了她，她还年幼天真无邪时，母女就遭父亲抛弃？还是写她曾经或是主动或是被动地成了未婚同居者、妻子、情人、母亲、后母？还是写她两年的牢狱生活？她想描绘二十世纪女性的众生相，想记录女性群体在情感、灵魂和思想方面所处的三重困境，想道出女性之间的大爱如何铸成姐妹之谊。', 3);
INSERT INTO `book` VALUES (55, 'https://i.loli.net/2019/04/10/5cada824c7119.jpg', '密室中的旅行', '[美] 保罗·奥斯特 ', '2019-3', '九州出版社', '一旦被抛进这个世界，我们就永远不会消失，即使造物者已经死去。\n\n.\n\n布兰克先生发现自己被囚禁在一个陌生的房间里，对过去的身份和经历一无所知。桌上有四叠六英寸厚的文稿，其中有一份未完待续的囚犯自述；还有一叠似曾相识的照片，照片中的人物将逐一登场。他续写了那个囚犯的故事，却发现自己正在经历的一切也早已被记录在文稿中……', 1);
INSERT INTO `book` VALUES (59, 'https://i.loli.net/2019/04/10/5cada87fd5c72.jpg', '基本穿搭', '[日]大山旬 ', '2019-3', '四川人民出版社', '对穿衣搭配感到不耐烦，认为时尚很麻烦，穿什么都可以或者对衣服有着自己的想法但不够自信，本书就是为这样的人而准备的穿衣指南。不需要追随瞬息万变的时尚潮流，也不需要烦恼色彩搭配，只要掌握最低限度的知识和备齐常规单品，谁都能完成清爽得体的 80分搭配。', 4);
INSERT INTO `book` VALUES (60, 'https://i.loli.net/2019/04/10/5cada976927da.jpg', '冒牌人生', '陈思安', '2019-4', '四川文艺出版社', '《冒牌人生》收录了十篇短篇小说。十个故事分别以城市中的怪人为主角，他们默默无闻地生存在城市主流生活的边缘地带：或是等待手术的性别认同障碍者，或是武艺高强而深藏不露的夜市摊主，或是卧底追凶的底层保安，或是甘于...', 1);
INSERT INTO `book` VALUES (61, 'https://i.loli.net/2019/04/10/5cada9202d970.jpg', '战争哀歌', '[越]保宁 ', '2019-4', '湖南文艺出版社', '《战争哀歌》超越了战争，战争是它的背景，它的内核是关于逝去的青春，关于美和伤痛！\n\n一场突如其来的战争打碎了阿坚和阿芳这对年轻情侣的生活，在血肉横飞的战争中，主人公阿坚成了幸存者，但战争带来的伤痛还远远没有平息。那些经历仍旧萦绕在阿坚的生活之中，被战争毁灭的不仅 仅是阿坚， 阿芳也遭遇了难以想象的梦魇。时间越长，阿坚越觉得自己不是活着，而是被困在这人世间。', 1);
INSERT INTO `book` VALUES (62, 'https://i.loli.net/2019/04/10/5cada9c852298.jpg', '胡椒的全球史', '[美] 玛乔丽·谢弗 ', '2019-3', '上海三联出版社', '看似不起眼的胡椒，却是家家餐桌必备。在中世纪时，更是欧洲达官显贵们的最爱、财富与地位的象征。黑胡椒原产于印度，距离欧洲各港口有十万八千里之远，取之向来不易。商人们对其供应来源不遗余力的追寻，成为世界史上一股重要的推动力量，促成全球贸易的兴起，重新划定了世界经济版图。', 2);
INSERT INTO `book` VALUES (63, 'https://i.loli.net/2019/04/10/5cada962c287c.jpg', '与病对话', '胡冰霜', '2019-3-31', '北京联合出版公司', '一部融合科普性与趣味性、兼具心理学与哲学意味的医学散文。\n\n一位满怀仁心的资深医者对几十年行医生涯的回望与省思。\n\n全书以真实的病例和鲜活的故事贯穿始终，作者从一位全科医生、心理学者的视角观察、解读疾病与患者身心之关系，厘清大众对诸多常见疾病的误解...', 1);
INSERT INTO `book` VALUES (64, 'https://i.loli.net/2019/04/10/5cada858e6019.jpg', '上帝笑了99次', '[英]彼得·凯弗', '2019-2', '北京联合出版公司', '一只美洲羊驼会坠入爱河吗？机器人能变成人吗？怎样才能不赢得公主青睐？人类一思考，上帝就发笑。在99个奇妙、怪诞、滑稽的问题背后，其实是99个烧脑的哲学、道德、法律领域的经典悖论，也是99道极富挑战性的大思考测试。本书内容覆盖了大多数常见哲学话题，包括形而上学、逻辑学、伦理学、语言哲学、政治哲学、自我认知、人际关系、美学、存在主义等，还配有20多幅漫画插图。在锻炼思维之外，本书也能帮我们建立个性化的哲学知识体系。', 3);
INSERT INTO `book` VALUES (65, 'https://i.loli.net/2019/04/10/5cada8e1aa892.jpg', '互联网算法', '[美] 菲斯曼等 ', '2019-4', '江西人民出版社', '只要你租过房子、上网买过东西、自己经营过企业，那么你就处在商业变革的前线。在这场变革中，亚马逊、谷歌、优步等不同以往的企业取得了史无前例的成功，而促成这场变革的不只是科技进步，还有经济学思想。\n\n在这本趣味横生的书中，我们会看到，经济思想的革命远比科技革命更宏大。从谷歌广告的算法，到网上购物规避欺诈，都要依靠经济学家建立的经济模型，甚至连互联网公司...', 6);
INSERT INTO `book` VALUES (66, 'https://i.loli.net/2019/04/10/5cada9ec514c9.jpg', '七侯笔录', '马伯庸', '2019-4-15', '湖南文艺出版社', '一个关于文化的离奇故事，一段关于文人的壮丽传说。\n\n几千年来，每一位风华绝代的文人墨客辞世之时，都会让自己的灵魂寄寓在一管毛笔之中。他们身躯虽去，才华永存，这些伟大的精神凝为性情不一的笔灵，深藏于世间，只为一句“不教天下才情付诸东流”的誓言。其中最伟大的七位古人，他们所凝聚的七管笔灵，被称为“管城七侯”。\n\n一位不学无术的现代少年，无意中邂逅了李白的青莲笔，命运就此与千年之前的诗仙交织一处，并为他开启了一个叫作笔冢的神秘世界。', 3);
INSERT INTO `book` VALUES (67, 'https://i.loli.net/2019/04/10/5cada9870c2ab.jpg', '中心与边缘', '[美] 希尔斯', '2019-3', '译林出版社', '美国著名社会学家爱德华·希尔斯的主要研究成果包括他对“克里斯玛”、“中心”和“边缘”等概念的解释，以及他对“大众社会”一词的修正，这些研究对分析政治和文化领导力以及社会凝聚力具有重要价值。本书对希尔斯数十载社会理论研究进行了全面而详细的总结，为解释与探究当代社会的结构与变化提供了极具科学性的参考依据。', 3);
INSERT INTO `book` VALUES (68, 'https://i.loli.net/2019/04/10/5cad643643d4c.jpg', '水浒群星闪耀时', '李黎', '2019-4', '上海文艺出版社', '本书以众所周知的梁山英雄为写作对象，重点书写其上山后、招安前的日常生活，涉及他们的喜怒哀乐、同类中人、乡愁怀旧、未来憧憬、命运追问等。书中涉及宋江、武松、鲁智深、李俊、燕青等等耳熟能详的人物而显得有些“改编”与水浒研究的意味，但鉴于所有人物皆为虚构，本书稿的内容是虚构之上的虚构，旨在宏大叙事的语境下突出个人的细微之处和命运感。', 1);
INSERT INTO `book` VALUES (69, 'https://i.loli.net/2019/04/10/5cad63931ce27.jpg', '谋杀狄更斯', '[美] 丹·西蒙斯 ', '2019-5', '上海文艺出版社', '“狄更斯的那场意外灾难发生在1865年6月9日，那列搭载他的成功、平静、理智、手稿与情妇的火车一路飞驰，迎向铁道上的裂隙，突然触目惊心地坠落了。”', 1);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '文学');
INSERT INTO `category` VALUES (2, '流行');
INSERT INTO `category` VALUES (3, '文化');
INSERT INTO `category` VALUES (4, '生活');
INSERT INTO `category` VALUES (5, '经管');
INSERT INTO `category` VALUES (6, '科技');

-- ----------------------------
-- Table structure for jotter_article
-- ----------------------------
DROP TABLE IF EXISTS `jotter_article`;
CREATE TABLE `jotter_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_content_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_content_md` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_abstract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jotter_article
-- ----------------------------
INSERT INTO `jotter_article` VALUES (1, '凉风有兴', '凉风有兴，秋月无边，而我思乡的情绪好比度日如年。虽然我风流倜傥玉树临风，但我还是有聪明的头脑和强健的臂腕。', '凉风有兴，秋月无边，而我思乡的情绪好比度日如年。虽然我风流倜傥玉树临风，但我还是有聪明的头脑和强健的臂腕。', '凉风有兴，秋月无边，而我思乡的情绪好比度日如年。', 'https://i.loli.net/2020/01/16/d2ZlKI1WRE4p7XB.png', '2021-05-13 21:14:27');
INSERT INTO `jotter_article` VALUES (2, '爱你一万年', '<p>曾经有份真挚的爱情摆在我的面前，我没有珍惜，等到失去的时候才后悔莫急，人世间最痛苦的事莫过余此，如果上天在给我一次机会，我会对那个女孩说我爱你，如果要在这份爱上加个期限，我希望是一万年。</p>\n', '曾经有份真挚的爱情摆在我的面前，我没有珍惜，等到失去的时候才后悔莫急，人世间最痛苦的事莫过余此，如果上天在给我一次机会，我会对那个女孩说我爱你，如果要在这份爱上加个期限，我希望是一万年。', '曾经有份真挚的爱情摆在我的面前，我没有珍惜，等到失去的时候才后悔莫及，人世间最痛苦的事莫过于此。', 'https://i.loli.net/2020/01/16/DdGBk1R3mj5er6v.png', '2021-05-16 16:23:06');
INSERT INTO `jotter_article` VALUES (3, '《图书笔记》项目简介', '<p>这是一个简单的前后端分离项目，主要采用 Vue + SpringBoot 技术栈开发。</p>\n<h1><a id=\"_2\"></a>整体效果</h1>\n<h2><a id=\"1_4\"></a>1.首页</h2>\n<p>作为展示页面，包括开发这个项目的主要参考资料、近期更新和 Slogan</p>\n<h2><a id=\"2_8\"></a>2.图书馆</h2>\n<p>提供图书信息展示功能</p>\n<h2><a id=\"3_12\"></a>3.登录页面</h2>\n<h2><a id=\"4_14\"></a>4.后台管理</h2>\n<p>包含 dashboard、内容管理、用户及权限管理等</p>\n<h1><a id=\"_18\"></a>技术栈</h1>\n<h2><a id=\"1_20\"></a>1.前端技术栈</h2>\n<p>1.Vue<br />\n2.ElementUI<br />\n3.axios</p>\n<h2><a id=\"2_26\"></a>2.后端技术栈</h2>\n<p>1.Spring Boot<br />\n2.Spring Data + JPA<br />\n3.MySQL<br />\n4.Shiro</p>\n', '这是一个简单的前后端分离项目，主要采用 Vue + SpringBoot 技术栈开发。\n\n# 整体效果\n\n## 1.首页\n\n作为展示页面，包括开发这个项目的主要参考资料、近期更新和 Slogan\n\n## 2.图书馆\n\n提供图书信息展示功能\n\n## 3.登录页面\n\n## 4.后台管理\n\n包含 dashboard、内容管理、用户及权限管理等\n\n# 技术栈\n\n## 1.前端技术栈\n\n1.Vue  \n2.ElementUI  \n3.axios   \n\n## 2.后端技术栈\n\n1.Spring Boot  \n2.Spring Data + JPA \n3.MySQL  \n4.Shiro\n\n', '图书笔记是一个简单的前后端分离项目，主要采用 Vue.js + SpringBoot 技术栈开发。', 'https://i.loli.net/2020/01/19/egDEfu5jXlJ6r3a.png', '2021-05-19 18:43:35');
INSERT INTO `jotter_article` VALUES (4, 'Nodejs环境配置', '<p><h3>Nodejs环境配置</h3><ul><li><a href=\"#_2\">下载注意事项</a></li><ul><li><a href=\"#1npm_6\">1、安装npm</a></li><li><a href=\"#2_9\">2、新建两个文件夹</a></li><li><a href=\"#3_12\">3、配环境变量</a></li><li><a href=\"#4_17\">4、设置全局路径</a></li><li><a href=\"#5NPM_23\">5、设置NPM的镜像源</a></li><li><a href=\"#6Yarn_28\">6、安装Yarn</a></li><li><a href=\"#7_vuecli_32\">7、安装 vue-cli</a></li><li><a href=\"#8_webpack_35\">8、安装 webpack</a></li></ul></ul></p>\n<h1><a id=\"_2\"></a>下载注意事项</h1>\n<p>旧版下载链接：<a href=\"https://nodejs.org/zh-cn/download/releases/\" target=\"_blank\">https://nodejs.org/zh-cn/download/releases/</a><br />\n尽量下载老版本，稳定，比如13、14，下载msi后缀名的windows安装包</p>\n<h2><a id=\"1npm_6\"></a>1、安装npm</h2>\n<p>其实就是安装nodejs，因为nodejs里包含npm，安装过程一路默认即可，修改一下安装路径</p>\n<h2><a id=\"2_9\"></a>2、新建两个文件夹</h2>\n<p>在nodejs的安装目录下，新建文件夹node_cache和node_global</p>\n<h2><a id=\"3_12\"></a>3、配环境变量</h2>\n<p><img src=\"https://img-blog.csdnimg.cn/083970c473494eaf97147ae7b62e6e51.png#pic_center\" alt=\"在这里插入图片描述\" /><br />\n<img src=\"https://img-blog.csdnimg.cn/6f756f43c6c04bce9bf2f4b9071c9035.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAU2lsZW5jZU91,size_12,color_FFFFFF,t_70,g_se,x_16#pic_center\" alt=\"在这里插入图片描述\" /></p>\n<h2><a id=\"4_17\"></a>4、设置全局路径</h2>\n<p>在cmd中输入：<br />\nnpm config set prefix “D:\\devTools\\nodejs\\node_global”<br />\nnpm config set cache “D:\\devTools\\nodejs\\node_cache”<br />\n<font color=#900>(记住双引号要加上)</font></p>\n<h2><a id=\"5NPM_23\"></a>5、设置NPM的镜像源</h2>\n<p>npm install -g cnpm --registry=https://registry.npm.taobao.org<br />\n<font color=#900>(注意:高版本node需要用管理员身份打开CMD才能执行，低版本不需要)</font></p>\n<h2><a id=\"6Yarn_28\"></a>6、安装Yarn</h2>\n<p>使用cnpm安装：<br />\ncnpm install -g yarn</p>\n<h2><a id=\"7_vuecli_32\"></a>7、安装 vue-cli</h2>\n<p>cnpm install -g @vue/cli</p>\n<h2><a id=\"8_webpack_35\"></a>8、安装 webpack</h2>\n<p>webpack 是 JavaScript 打包器(module bundler)：<br />\ncnpm install -g webpack</p>\n', '@[TOC](Nodejs环境配置)\n\n# 下载注意事项\n旧版下载链接：[https://nodejs.org/zh-cn/download/releases/](https://nodejs.org/zh-cn/download/releases/)\n尽量下载老版本，稳定，比如13、14，下载msi后缀名的windows安装包\n\n## 1、安装npm\n其实就是安装nodejs，因为nodejs里包含npm，安装过程一路默认即可，修改一下安装路径\n\n## 2、新建两个文件夹\n在nodejs的安装目录下，新建文件夹node_cache和node_global\n\n## 3、配环境变量\n![在这里插入图片描述](https://img-blog.csdnimg.cn/083970c473494eaf97147ae7b62e6e51.png#pic_center)\n![在这里插入图片描述](https://img-blog.csdnimg.cn/6f756f43c6c04bce9bf2f4b9071c9035.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAU2lsZW5jZU91,size_12,color_FFFFFF,t_70,g_se,x_16#pic_center)\n\n\n## 4、设置全局路径\n在cmd中输入：\nnpm config set prefix \"D:\\devTools\\nodejs\\node_global\"\nnpm config set cache \"D:\\devTools\\nodejs\\node_cache\"\n<font color=#900>(记住双引号要加上)</font>\n\n## 5、设置NPM的镜像源\nnpm install -g cnpm --registry=https://registry.npm.taobao.org\n<font color=#900>(注意:高版本node需要用管理员身份打开CMD才能执行，低版本不需要)</font>\n\n\n## 6、安装Yarn\n使用cnpm安装：\ncnpm install -g yarn\n\n## 7、安装 vue-cli\ncnpm install -g @vue/cli\n\n## 8、安装 webpack\nwebpack 是 JavaScript 打包器(module bundler)：\ncnpm install -g webpack\n\n', '小白Nodejs环境配置教程', 'http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg', '2021-07-08 15:43:05');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '4794ddb7543de70c11f7dc76d3b3a9fd', 'C21jSpzNjM0KeeOt13eTVg==', '欧华超', '13609001924', '754727082@qq.com', 1);
INSERT INTO `user` VALUES (2, 'test', '8d8a509e6074fb3df7c3f8c1e2509eda', '60Aq3iD1QmnX+QIe8AzmHQ==', '测试', '18344266352', 'Q754727082@163.com', 1);
INSERT INTO `user` VALUES (3, 'editor', '8583a2d965d6159edbf65c82d871fa3e', 'MZTe7Qwf9QgXBXrZzTIqJQ==', '编辑', '13609556324', '496587652@qq.com', 1);

SET FOREIGN_KEY_CHECKS = 1;
