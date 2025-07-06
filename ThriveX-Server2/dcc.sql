-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: test_thrive
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album_cate`
--

DROP TABLE IF EXISTS `album_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_cate` (
                              `id` int NOT NULL AUTO_INCREMENT,
                              `name` varchar(255) NOT NULL COMMENT '相册名称',
                              `cover` text COMMENT '相册封面',
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `album_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_cate`
--

LOCK TABLES `album_cate` WRITE;
/*!40000 ALTER TABLE `album_cate` DISABLE KEYS */;
INSERT INTO `album_cate` VALUES (1,'旅行','https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100');
/*!40000 ALTER TABLE `album_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_image`
--

DROP TABLE IF EXISTS `album_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_image` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `name` varchar(255) NOT NULL COMMENT '照片名称',
                               `description` varchar(255) DEFAULT NULL COMMENT '照片描述',
                               `image` text COMMENT '照片地址',
                               `cate_id` int NOT NULL COMMENT '相册 ID',
                               `create_time` varchar(255) NOT NULL,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `album_image_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_image`
--

LOCK TABLES `album_image` WRITE;
/*!40000 ALTER TABLE `album_image` DISABLE KEYS */;
INSERT INTO `album_image` VALUES (1,'日本富士山','日本标志性的富士山风景,白雪皑皑的山顶与蓝天相映成趣','https://images.unsplash.com/photo-1480796927426-f609979314bd?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(2,'日落时分','夕阳西下的美丽景色,金色的阳光洒在大地上','https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(3,'山川湖泊','壮丽的山川与平静的湖泊交相辉映,展现大自然的鬼斧神工','https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(4,'星空璀璨','繁星点点的夜空,银河横跨天际,令人沉醉的夜景','https://images.unsplash.com/photo-1441716844725-09cedc13a4e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(5,'绿色山谷','郁郁葱葱的山谷,清新的空气与翠绿的植被构成和谐画面','https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(6,'京都古寺','日本京都的传统寺庙,展现着东方古典建筑的独特魅力','https://images.unsplash.com/photo-1542051841857-5f90071e7989?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(7,'城市夜景','灯火通明的现代都市,霓虹闪烁的夜晚风景','https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(8,'海边日落','金色的夕阳映照在海面上,浪花轻轻拍打着沙滩','https://images.unsplash.com/photo-1504198322253-cfa87a0ff25f?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(9,'樱花季节','粉色的樱花绽放,营造出浪漫唯美的春日氛围','https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(10,'繁华都市','现代化的城市景观,高楼大厦鳞次栉比','https://images.unsplash.com/photo-1503614472-8c93d56e92ce?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(11,'雪山之巅','巍峨的雪山山峰,白雪皑皑,云雾缭绕','https://images.unsplash.com/photo-1444464666168-49d633b86797?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(13,'街头巷尾','充满生活气息的街道,记录着城市的日常点滴','https://images.unsplash.com/photo-1492571350019-22de08371fd3?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(14,'晨光熹微','清晨的第一缕阳光,唤醒沉睡的大地','https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(15,'极光之夜','绚丽的北极光在夜空中舞动,创造出梦幻般的景象','https://images.unsplash.com/photo-1504714146340-959ca07e1f38?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508'),(16,'山水如画','如诗如画的山水风景,展现大自然的壮美与和谐','https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&auto=format&fit=crop&w=3840&q=100',1,'1729224230508');
/*!40000 ALTER TABLE `album_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
                           `id` int NOT NULL AUTO_INCREMENT COMMENT '文章ID',
                           `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章标题',
                           `description` varchar(200) DEFAULT NULL COMMENT '文章介绍',
                           `summary` varchar(255) DEFAULT NULL COMMENT '文章摘要',
                           `content` text NOT NULL COMMENT '文章主要内容',
                           `cover` varchar(300) DEFAULT NULL COMMENT '文章封面',
                           `view` int DEFAULT '0' COMMENT '文章浏览量',
                           `comment` int DEFAULT '0' COMMENT '评论数量',
                           `is_draft` tinyint(1) DEFAULT 0 COMMENT '是否为草稿（0：否，1：是）',
                           `is_encrypt` tinyint(1) DEFAULT 0 COMMENT '是否加密（0：否，1：是）',
                           `is_del` tinyint(1) DEFAULT 0 COMMENT '是否删除（0：否，1：是）',
                           `status` enum('default','no_home','hide') DEFAULT 'default' COMMENT '文章状态',
                           `password` varchar(100) DEFAULT '' COMMENT '加密文章的密码',
                           `create_time` varchar(255) NOT NULL COMMENT '文章创建时间',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Hello World','当你看到这篇文章时就意味着安装成功，一切就绪！','当你看到这篇文章时就意味着安装成功，一切就绪！\n',NULL,5,0,'1729224230508'),(2,'🎉 ThriveX 现代化博客管理系统','ThriveX 是一个简而不简单的现代化博客管理系统，专注于分享技术文章和知识，为技术爱好者和从业者提供一个分享、交流和学习的平台。用户可以在平台上发表自己的技术文章，或浏览其他用户分享的文章，并与他们进行讨论和互动。','# 🎉 ThriveX 现代化博客管理系统\n\n🎉 `ThriveX` 是一个年轻、高颜值、全开源、永不收费的现代化博客管理系统，它是一个基于 `NextJS` + `Spring Boot` 的产物，所有技术栈都是目前市面上最主流的\n\n🛠️ **技术架构：**\n\n前端：**React 19**、**Next.js 15**、**TailwindCSS 4**、TypeScript、Zustand、Motion React、React Form Hooks、Echarts、Antd、Scss、Vercel、Docker\n\n\n后端：**Spring Boot**、Mybatis Plus、MySQL、X File Storage、Swagger、Docker\n\n\n❤️ **项目初衷：**\n\n一直对网站开发领域很感兴趣，从小就希望有一个属于自己的网站，因此踏上了 `Web` 全栈开发的旅途，立志有朝一日也能开发一款属于自己的网站。如今历时 `2` 年有余，一个人从 `0` 到 `1` 独立完成整个项目的全栈开发，也算是完成了从小的一个心愿\n\n\n\n## 项目演示\n\n### 前端\n\n这里只演示部分前端界面，具体大家可以自行查看 **->** [https://liuyuyang.net](https://liuyuyang.net)\n![首页](https://bu.dusays.com/2024/10/28/671f7a44631d7.png)\n![足迹](https://bu.dusays.com/2024/09/17/66e97036dddcb.png)\n\n\n\n### 控制端\n\n![数据分析](https://bu.dusays.com/2024/09/17/66e97035726ae.png)\n![文件系统](https://bu.dusays.com/2024/09/17/66e97031cd456.png)\n\n\n\n## 项目部署\n\n前端：[https://docs.liuyuyang.net/docs/项目部署/前端.html](https://docs.liuyuyang.net/docs/项目部署/前端.html)\n控制端：[https://docs.liuyuyang.net/docs/项目部署/控制端.html](https://docs.liuyuyang.net/docs/项目部署/控制端.html)\n后端：[https://docs.liuyuyang.net/docs/项目部署/后端.html](https://docs.liuyuyang.net/docs/项目部署/后端.html)\n\n\n\n## 项目结构\n\n```\n├── public // 存放公共资源\n├── src // 核心源码\n│   ├── api // 所有API接口\n│   ├── app\n│   │   ├── error.tsx // 自定义错误页\n│   │   ├── favicon.ico // 项目图标\n│   │   ├── layout.tsx // 网站布局\n│   │   ├── loading.tsx // 自定义加载页\n│   │   ├── not-found.tsx // 自定义404页\n│   │   ├── page.tsx // 首页\n│   ├── assets // 存放项目所有资源\n│   │   ├── font\n│   │   ├── image\n│   │   └── svg\n│   ├── components // 公共组件\n│   ├── stores // 数据全局共享\n│   ├── styles // 全局样式\n│   ├── types // 全局类型\n│   └── utils // 通用方法\n├── package-lock.json\n├── package.json\n├── postcss.config.mjs\n├── tailwind.config.ts\n└── tsconfig.json\n```\n\n\n\n\n## 开源地址\n\n### 2.0 最新版（Nextjs + Spring Boot）\n\n前端：[LiuYuYang01/ThriveX-Blog (github.com)](https://github.com/LiuYuYang01/ThriveX-Blog)\n\n控制端：[LiuYuYang01/ThriveX-Admin (github.com)](https://github.com/LiuYuYang01/ThriveX-Admin)\n\n后端：[LiuYuYang01/ThriveX-Server (github.com)](https://github.com/LiuYuYang01/ThriveX-Server)\n\n\n\n### 1.0 旧版（Vue3 + Python Flask）\n\n前端：[LiuYuYang01/Thrive-Blog (github.com)](https://github.com/LiuYuYang01/Thrive-Blog)\n\n控制端：[LiuYuYang01/Thrive-Admin (github.com)](https://github.com/LiuYuYang01/Thrive-Admin)\n\n后端：[LiuYuYang01/Thrive-Server (github.com)](https://github.com/LiuYuYang01/Thrive-Server)\n\n![后台](https://bu.dusays.com/2024/09/17/66e96ca781d49.png)\n\n\n\n## 开源协议\n\n为了项目的生态越来越强大，作者在这里恳请大家保留 `ThriveX` 博客系统版权\n\n在项目 `Star` 突破 `2K` 后大家可自由选择删除 `or` 保留\n\n如果对该项目进行二次开发，最终需将项目进行开源并保留版权 且 禁止任何商业行为\n\n最后希望大家能够请遵守开源协议：**AGPL-3.0 license** \n\n弘扬开源精神，从你我做起！\n\n\n\n## 关于项目\n\n这个项目是我一个人从设计 -> 产品 -> 前端 -> 控制端 -> 后端以及数据库从 `0` 到 `1` 创造的，一个人的精力有限，项目可能会存在一些隐藏的 `BUG`，希望大家能够及时在 `GitHub` 提交 `Issue`，这样也好加以改正，不断改善，成为最佳！\n\n当然我更希望大家能够提交 `PR` 成为 `ThriveX` 的贡献者，大家一起参与进来，构建一个强大的博客管理系统！\n\n\n## 特别鸣谢\n\n该项目的风格借鉴了很多优秀网站的灵感，下面我主要列举几个：\n\n[https://blog.zwying.com/](https://blog.zwying.com/)\n\n[https://www.blatr.cn/](https://www.blatr.cn/)\n\n[https://poetize.cn/](https://poetize.cn/)\n\n\n\n## ThriveX 交流群 🔥\n\n加微信：`liuyuyang2023`   记得备注：拉群\n\n![微信](https://bu.dusays.com/2025/06/03/683e96eb43ad8.jpg)\n\n\n## 技术支持\n\n项目部署 + `3` 天答疑服务 一口价 `200`，不议价哦。\n\n不过我不太提倡，因为我时间比较忙。大家可以在上述找到我的微信进入官方交流群，在我或热心网友闲的时候也会免费帮忙解决问题的\n\n\n\n# 常见疑惑\n\n下面总结一些大家常问的疑惑\n\n\n## 为什么会想到开发这个项目？\n\n**问：** 为什么会想到开发这个项目？\n\n**答：** 在开发这个项目之前我也使用了很多流行的博客系统，比如：`WordPress`（使用了两年）、`Emlog`、`Zblog`（一年）、`Typecho`（两年）\n\n这些系统都有一个共同点，它们都是基于 `PHP` 开发的，如果不会 `PHP` 就不好自定义网站主题和功能插件，只能去找别人写好的，如果别人没有写，那么你就没办法用，这样就会有很大的局限性。\n\n关键是 `PHP` 在国内几乎已经被淘汰了，所以没有必要再去刻意学习这门语言。\n\n出于局限性我就萌生了开发一整个博客系统的想法，从 `22` 年正式落实并开发，目前已经持续完成三大版本，分别是：\n\n1. Vue2 + Express（Nodejs）\n2. Vue3 + Flask（Python）\n3. NextJS + Spring Boot（Java）\n\n样式借鉴了很多大佬的网站风格，但代码都是自己一行一行敲出来的，目前在 `Github` 已有近 `3000` 次代码提交记录\n\n项目的所有技术栈都是目前最主流的，是一个非常年轻的现代化博客管理系统 🎉\n\n\n\n## 为什么不采用纯 JavaScript 全栈开发？\n\n有些网友提出了这个问题，目前 `Nextjs + Spring Boot` 实在太臃肿了，完全可以采用 `Nextjs + Prisma` 纯 `JavaScript` 技术栈实现全栈开发，这样部署也方便。\n\n是的，没错。\n\n但我的想法是把前端、控制端 以及 后端全部分离，任何地方都可以相互独立出来。比如你想自己写前端，不管你使用哪些技术栈，只需要调用后端接口就可以自己开发。\n\n如果使用了 `Nextjs` 做全栈，那么前后端就会捆绑起来，这样的话前端就必须使用 `React` 而且如果不懂 `Nextjs` 还会额外增加开发及学习成本\n\n\n\n## 项目后期是否会考虑收费？\n\n有很多跟我一样从 `0` 到 `1` 写博客系统的同行，但他们大多数以盈利为目地而开发，而且更新频率并不高，大家不信可以对比一下做个参考\n\n而我可以在此承诺，`ThriveX` 在现在乃至未来不会以任何方式收费，就连赞助二维码都不会有，这一波格局直接拉满 😁\n\n这个项目纯纯为爱发电，这一点是所有博客系统当中比不了的\n\n\n\n## 项目会保持长期维护吗？\n\n大家可能会觉得我不以盈利为目的最终会丧失热情导致不再维护，其实我想说这个顾虑可以打消\n\n在这两年期间内我已经累计提交了近 `3000` 次代码，只要工作之余有时间我都会不断的更新维护，有任何 `BUG` 我都会及时解决\n\n\n\n# 后续研发计划\n\n## 前端\n\n1. ~~照片墙页面~~\n2. ~~闪念集成 `WangEditor` 编辑器~~\n3. ~~资源懒加载~~\n4. 优化文章翻页（待完成）\n\n\n\n## 控制端\n\n1. ~~素材库~~\n2. ~~集成 `DeepSeek` 文章优化~~\n3. ~~文件列表懒加载~~\n4. ~~优化 RBAC 权限~~\n5. ~~批量通过 `Markdown` 文件导入文章~~\n6. 文件上传多个导致偶尔无法复制\n7. 修改前端 `ico` 图标没有效果','https://bu.dusays.com/2024/09/17/66e97036dddcb.png',99999,0,'1731833778995'),(5,'Markdown 文章样式',NULL,'# Markdown 样式\n\n## 一、字符效果\n\n| 类型 | 使用方法 | 效果 |  \n| :--: | :--: | :--: |\n| 删除线 | \\~\\~文本\\~\\~ | ~~文本效果~~ |\n| 斜体字 | \\_文本\\_ | _文本效果_ |\n| 粗体字 | \\*\\*文本\\*\\* | **文本效果** |\n| 上标 | \\~文本\\~ | ~文本效果~ |\n| 下标 | \\^文本\\^ | ^文本效果^ |\n| 标记 | \\=\\=文本\\=\\= | ==文本效果== |\n\n## 二、列表\n\n### 1、无序列表\n\n- 福建\n  - 厦门\n  - 福州\n- 浙江\n- 江苏\n\n### 2、有序列表\n\n1. 动物\n   1. 人类\n   2. 犬类\n2. 植物\n3. 微生物\n\n### 3、任务列表\n\n- [x] 预习计算机网络\n- [ ] 复习现代控制理论\n- [ ] 刷现代控制理论历年卷\n  - [ ] 2019 年期末试卷\n  - [ ] 2020 年期末试卷\n\n# 三、链接\n\n## 1、超链接\n\n1. 使用方法：\\[普通链接\\]\\(链接地址)\n2. 效果展示：[ThriveX 官网](https://thrivex.liuyuyang.net/)\n3. 在新窗口打开（待完善）：<a href=\"https://docs.liuyuyang.net/\" target=\"_blank\">ThriveX 文档</a>\n\n## 2、图片链接\n\n1. 使用方法：\\[图片名称\\]\\(图片地址)\n2. 效果展示：![星空宇航员](https://bu.dusays.com/2024/04/24/6628990012b51.jpg)\n\n## 四、引用\n\n1. 使用方法：\\> 这里写引用的内容\n2. 效果展示：\n> 这里写引用的内容\n\n## 五、脚注\n1. 使用方法：\\[^1\\]\n2. 效果展示：\n这是一个简单的脚注 [^1] 而这是一个更长的脚注 [^bignote].\n\n[^1]: 这是第一个脚注.\n[^bignote]: 这是一个非常长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长的脚注.\n\n## 六、代码\n\n### 1、行内代码\n\n1. 使用方法：\\` 代码 \\`\n2. 效果展示：`npm install marked`\n\n### 2、代码片段\n\n1. 使用方法：\n    1. 以\\`\\`\\` 开头  以\\`\\`\\` 结尾\n    2. \n2. 效果展示：\n```html\n<!DOCTYPE html>\n<html>\n    <head>\n        <mate charest=\"utf-8\" />\n        <title>Hello world!</title>\n    </head>\n    <body>\n        <h1>Hello world!</h1>\n    </body>\n</html>\n```\n\n## 七、数学公式\n\n### 1、行间公式：\n$\n\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))\n$\n\n### 2、行内公式\n$E=mc^2$\n\n## 八、特殊符号\n\n&copy; & &uml; &trade; &iexcl; &pound;\n&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot;\n\nX&sup2; Y&sup3; &frac34; &frac14; &times; &divide; &raquo;\n\n18&ordm;C &quot; &apos;\n\n## 九、Emoji 表情 🎉\n\n- 马：🐎\n- 星星：✨\n- 笑脸：😀\n- 跑步：🏃‍\n\n## 十、提示信息\n- 使用方法: \n    -  \\> \\[!类型\\] 标题 开头\n    -  \\> 正文\n\n> [!note] Note\n> 用于强调即使用户在快速浏览时也应考虑的重点信息。\n\n\n> [!Tip] Tip\n> 用于帮助用户更成功的可选信息。\n\n\n> [!Check] Check\n> xxxxxxxx\n\n\n> [!warning] Warning\n> 由于存在潜在风险，需要用户立即关注的关键内容。\n\n\n> [!Danger] Danger\n> 一个行为的潜在负面后果。# 数学公式\n\n\n## 视频\n\n### 自定义视频\n\n<h3>单视频</h3>\n<video width=\"640\" height=\"360\" controls>\n    <source src=\"http://vjs.zencdn.net/v/oceans.mp4\" type=\"video/mp4\">\n    您的浏览器不支持 HTML5 视频标签。\n</video>\n\n<h3>视频尺寸</h3>\n<video width=\"800\" controls>\n    <source src=\"http://vjs.zencdn.net/v/oceans.mp4\" type=\"video/mp4\">\n    您的浏览器不支持 HTML5 视频标签。\n</video>\n\n<h3>视频加封面</h3>\n<video width=\"640\" height=\"360\" controls poster=\"https://bu.dusays.com/2024/09/17/66e9704b2b809.png\">\n    <source src=\"http://vjs.zencdn.net/v/oceans.mp4\" type=\"video/mp4\">\n    您的浏览器不支持 HTML5 视频标签。\n</video>\n\n<h3>视频加封面加尺寸</h3>\n<video width=\"100%\" controls poster=\"https://bu.dusays.com/2024/09/17/66e9704b2b809.png\">\n    <source src=\"http://vjs.zencdn.net/v/oceans.mp4\" type=\"video/mp4\">\n    您的浏览器不支持 HTML5 视频标签。\n</video>\n\n\n### 哔哩哔哩视频\n\n<h3>默认宽度</h3>\n<iframe src=\"//player.bilibili.com/player.html?isOutside=true&aid=113651931481594&bvid=BV1yaB7YbEy6&cid=27343916591&p=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen></iframe>\n\n<h3>自定义尺寸</h3>\n<iframe src=\"//player.bilibili.com/player.html?isOutside=true&aid=113651931481594&bvid=BV1yaB7YbEy6&cid=27343916591&p=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen style=\"width:100%;height:500px\"></iframe>\n\n\n## 其他\n\n### 折叠\n<details>\n<summary>点击展开</summary>\n\n这里是折叠内容。\n\n</details>\n\n\n### 分割线\n___\n\n***\n\n---\n\n\n### 解析 HTML 标签\n<div style=\"color: red; font-size:30px\">ThriveX 现代化博客管理系统</div>',NULL,2,0,'1744980393520');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_cate`
--

DROP TABLE IF EXISTS `article_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_cate` (
                                `id` int NOT NULL AUTO_INCREMENT,
                                `article_id` int NOT NULL COMMENT '文章ID',
                                `cate_id` int NOT NULL COMMENT '分类ID',
                                PRIMARY KEY (`id`),
                                UNIQUE KEY `article_cate_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1469 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章和分类的中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_cate`
--

LOCK TABLES `article_cate` WRITE;
/*!40000 ALTER TABLE `article_cate` DISABLE KEYS */;
INSERT INTO `article_cate` VALUES (1440,1,1),(1444,2,1),(1460,5,1);
/*!40000 ALTER TABLE `article_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_config`
--

DROP TABLE IF EXISTS `article_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_config` (
                                  `id` int NOT NULL AUTO_INCREMENT,
                                  `status` enum('default','no_home','hide') DEFAULT 'default' COMMENT '文章状态',
                                  `password` varchar(100) DEFAULT '' COMMENT '是否文章加密',
                                  `is_encrypt` tinyint DEFAULT '0' COMMENT '是否加密',
                                  `is_draft` tinyint DEFAULT '0' COMMENT '是否为草稿',
                                  `is_del` tinyint DEFAULT '0' COMMENT '是否删除',
                                  `article_id` int NOT NULL COMMENT '对应的文章id',
                                  PRIMARY KEY (`id`),
                                  UNIQUE KEY `article_config_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_config`
--

LOCK TABLES `article_config` WRITE;
/*!40000 ALTER TABLE `article_config` DISABLE KEYS */;
INSERT INTO `article_config` VALUES (1,'default','',0,0,0,1),(2,'default','',0,0,0,2),(5,'default','',0,0,0,5);
/*!40000 ALTER TABLE `article_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_tag` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `article_id` int NOT NULL COMMENT '文章 ID',
                               `tag_id` int NOT NULL COMMENT '标签 ID',
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `article_tag_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
INSERT INTO `article_tag` VALUES (1,1,3),(2,2,3);
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistant`
--

DROP TABLE IF EXISTS `assistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistant` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `name` varchar(255) NOT NULL COMMENT '助手名称',
                             `key` varchar(500) NOT NULL COMMENT '密钥',
                             `model` varchar(255) NOT NULL COMMENT '模型',
                             `is_default` tinyint NOT NULL DEFAULT '0' COMMENT '是否被启用',
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `assistant_pk` (`name`),
                             UNIQUE KEY `assistant_pk_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='助手管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistant`
--

LOCK TABLES `assistant` WRITE;
/*!40000 ALTER TABLE `assistant` DISABLE KEYS */;
/*!40000 ALTER TABLE `assistant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baidu`
--

DROP TABLE IF EXISTS `baidu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baidu` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `access_token` varchar(255) NOT NULL COMMENT '访问令牌',
                         `refresh_token` varchar(255) NOT NULL COMMENT '刷新令牌',
                         `expires_time` datetime NOT NULL COMMENT '过期时间',
                         `create_time` datetime NOT NULL COMMENT '创建时间',
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='百度统计token管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baidu`
--

LOCK TABLES `baidu` WRITE;
/*!40000 ALTER TABLE `baidu` DISABLE KEYS */;
/*!40000 ALTER TABLE `baidu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cate`
--

DROP TABLE IF EXISTS `cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cate` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `name` varchar(255) NOT NULL COMMENT '分类名称',
                        `icon` varchar(100) DEFAULT NULL COMMENT '分类图标',
                        `url` varchar(255) DEFAULT '/' COMMENT '分类链接',
                        `mark` varchar(100) NOT NULL COMMENT '分类标识',
                        `level` int DEFAULT NULL COMMENT '分类级别',
                        `order` int NOT NULL DEFAULT '0' COMMENT '分类顺序',
                        `type` varchar(10) DEFAULT 'cate' COMMENT '导航还是分类',
                        PRIMARY KEY (`id`) USING BTREE,
                        UNIQUE KEY `name` (`name`) USING BTREE,
                        UNIQUE KEY `cate_pk` (`mark`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate`
--

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES (1,'默认分类','💻','/','kfbj',0,1,'cate'),(67,'首页','💎','/','home',0,0,'nav'),(68,'足迹','⛳️','/footprint','zj',0,9,'nav'),(69,'关于我','👋','/my','my',0,16,'nav'),(70,'朋友圈','😇','/friend','pyq',0,11,'nav'),(71,'留言墙','💌','/wall/all','wall',0,12,'nav'),(72,'GitHub','🔥','https://github.com/LiuYuYang01/ThriveX-Blog','github',0,999,'nav'),(73,'统计','📊','/data','data',0,8,'nav'),(74,'闪念','🏕️','/record','record',0,9,'nav'),(77,'我的设备','🔭','/equipment','wdsb',0,15,'nav'),(78,'标签墙','🏷️','/tags','bqy',0,13,'nav'),(79,'我的履历','💪','/resume','wdll',0,16,'nav'),(80,'照片墙','📷︎','/album','zpq',0,14,'nav'),(81,'鱼塘','🐟','/fishpond','yt',0,10,'nav');
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `name` varchar(50) NOT NULL COMMENT '评论者名称',
                           `avatar` varchar(255) DEFAULT NULL COMMENT '评论者头像',
                           `content` text NOT NULL COMMENT '评论内容',
                           `email` varchar(100) DEFAULT NULL COMMENT '评论者邮箱',
                           `url` varchar(500) DEFAULT NULL COMMENT '评论者网站',
                           `article_id` int NOT NULL COMMENT '所属文章ID',
                           `comment_id` int DEFAULT '0' COMMENT '二级评论',
                           `audit_status` int DEFAULT '0' COMMENT '是否审核',
                           `create_time` varchar(255) NOT NULL,
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (514,'宇阳','https://q1.qlogo.cn/g?b=qq&nk=3311118881&s=640','记得点个star','3311118881@qq.com','https://liuyuyang.net/',2187,0,0,'1729225111457'),(515,'ThriveX','https://q1.qlogo.cn/g?b=qq&nk=3311118881&s=640','太强了吧','3311118881@qq.com','https://liuyuyang.net',2,0,1,'1744980488518'),(516,'ThriveX','','太强了吧','3311118881@qq.com','https://liuyuyang.net',2,0,0,'1744980488518');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
                          `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置名称',
                          `value` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置值',
                          `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置分组',
                          `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
                          UNIQUE KEY `config_pk` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='网站配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('covers','[\"https://bu.dusays.com/2023/11/10/654e2da1d80f8.jpg\",\"https://bu.dusays.com/2023/11/10/654e2d719d31c.jpg\",\"https://bu.dusays.com/2023/11/10/654e2cf92cd45.jpg\",\"https://bu.dusays.com/2023/11/10/654e2cf6055b0.jpg\",\"https://bu.dusays.com/2023/11/10/654e2db0889fe.jpg\",\"https://bu.dusays.com/2023/11/10/654e2d50015a9.jpg\",\"https://bu.dusays.com/2023/11/05/65473848ed863.jpg\",\"https://bu.dusays.com/2023/11/10/654e2c870e280.jpg\",\"https://bu.dusays.com/2023/11/10/654e2c717eb73.jpg\",\"https://bu.dusays.com/2023/11/10/654e2c5d75d5b.jpg\",\"https://bu.dusays.com/2023/11/10/654e2da27801e.jpg\",\"https://bu.dusays.com/2023/11/10/654e2d2a67517.jpg\",\"https://bu.dusays.com/2023/11/10/654e2cf47f17a.jpg\",\"https://bu.dusays.com/2023/11/05/65473848ed863.jpg\"]','layout','文章随机封面'),('create_time','1547568000000','web','网站创建时间'),('dark_logo','https://bu.dusays.com/2024/05/03/663481106dcfd.png','layout','暗色LOGO'),('description','也许会是最好用的博客管理系统','web','网站描述'),('favicon','https://res.liuyuyang.net/usr/images/favicon.ico','web','网站ico图标'),('font','https://res.liuyuyang.net/LXGWWenKai.ttf','web','网站字体'),('footer','真诚邀请大家成为 ThriveX 博客管理系统的贡献者，一起参与项目开发，构建一个强大的博客管理系统！','web','网站底部信息'),('icp','豫ICP备2020031040号-1','web','域名备案号'),('is_article_layout','classics','layout','网站布局'),('keyword','宇阳,刘宇阳,Thrive,前端,Python,Java,Thrive,ThriveX,ThriveX现代化博客管理系统','web','网站关键词'),('light_logo','https://bu.dusays.com/2024/05/03/663481106e2a4.png','layout','亮色LOGO'),('reco_article','[\"1\",\"2\"]','layout','作者推荐的文章'),('record_info','🎯 梦想做一名技术顶尖的架构师，奈何学历太低！','layout','说说卡片个人介绍'),('record_name','👋 Liu 宇阳','layout','说说卡片名称'),('right_sidebar','[\"author\",\"hotArticle\",\"newComments\",\"randomArticle\"]','layout','侧边栏布局'),('social','[\"{\\\"name\\\":\\\"GitHub\\\",\\\"url\\\":\\\"https://github.com/LiuYuYang01\\\"}\",\"{\\\"name\\\":\\\"Gitee\\\",\\\"url\\\":\\\"https://gitee.com/liu_yu_yang666\\\"}\",\"{\\\"name\\\":\\\"Juejin\\\",\\\"url\\\":\\\"https://juejin.cn/user/3083456627092078/posts\\\"}\",\"{\\\"name\\\":\\\"CSDN\\\",\\\"url\\\":\\\"https://blog.csdn.net/haodian666?type=blog\\\"}\",\"{\\\"name\\\":\\\"QQ\\\",\\\"url\\\":\\\"http://wpa.qq.com/msgrd?v=3&uin=3311118881&site=qq&menu=yes\\\"}\"]','layout','社交网站'),('subhead','现代化博客管理系统','web','网站副标题'),('swiper_image','https://bu.dusays.com/2024/04/24/6628990012b51.jpg','layout','首页轮播图'),('swiper_text','[\"System.out.print(\\\"欢迎使用 ThriveX 博客管理系统！\\\"); \",\"print(\\\"这是一个 Nextjs + Spring Boot 的产物\\\") \"]','layout','首页轮播图打字机文案'),('title','ThriveX','web','网站名称'),('url','https://liuyuyang.net/','web','网站地址');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_detail`
--

DROP TABLE IF EXISTS `file_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_detail` (
                               `id` varchar(32) NOT NULL COMMENT '文件id',
                               `url` varchar(512) NOT NULL COMMENT '文件访问地址',
                               `size` bigint DEFAULT NULL COMMENT '文件大小，单位字节',
                               `filename` varchar(256) DEFAULT NULL COMMENT '文件名称',
                               `original_filename` varchar(256) DEFAULT NULL COMMENT '原始文件名',
                               `base_path` varchar(256) DEFAULT NULL COMMENT '基础存储路径',
                               `path` varchar(256) DEFAULT NULL COMMENT '存储路径',
                               `ext` varchar(32) DEFAULT NULL COMMENT '文件扩展名',
                               `content_type` varchar(128) DEFAULT NULL COMMENT 'MIME类型',
                               `platform` varchar(32) DEFAULT NULL COMMENT '存储平台',
                               `th_url` varchar(512) DEFAULT NULL COMMENT '缩略图访问路径',
                               `th_filename` varchar(256) DEFAULT NULL COMMENT '缩略图名称',
                               `th_size` bigint DEFAULT NULL COMMENT '缩略图大小，单位字节',
                               `th_content_type` varchar(128) DEFAULT NULL COMMENT '缩略图MIME类型',
                               `object_id` varchar(32) DEFAULT NULL COMMENT '文件所属对象id',
                               `object_type` varchar(32) DEFAULT NULL COMMENT '文件所属对象类型，例如用户头像，评价图片',
                               `metadata` text COMMENT '文件元数据',
                               `user_metadata` text COMMENT '文件用户元数据',
                               `th_metadata` text COMMENT '缩略图元数据',
                               `th_user_metadata` text COMMENT '缩略图用户元数据',
                               `attr` text COMMENT '附加属性',
                               `file_acl` varchar(32) DEFAULT NULL COMMENT '文件ACL',
                               `th_file_acl` varchar(32) DEFAULT NULL COMMENT '缩略图文件ACL',
                               `hash_info` text COMMENT '哈希信息',
                               `upload_id` varchar(128) DEFAULT NULL COMMENT '上传ID，仅在手动分片上传时使用',
                               `upload_status` int DEFAULT NULL COMMENT '上传状态，仅在手动分片上传时使用，1：初始化完成，2：上传完成',
                               `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='文件记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_detail`
--

LOCK TABLES `file_detail` WRITE;
/*!40000 ALTER TABLE `file_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footprint`
--

DROP TABLE IF EXISTS `footprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footprint` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `title` varchar(255) NOT NULL COMMENT '标题',
                             `content` varchar(1500) DEFAULT NULL COMMENT '内容',
                             `address` varchar(255) NOT NULL COMMENT '地址',
                             `position` varchar(255) NOT NULL COMMENT '坐标纬度',
                             `images` json DEFAULT NULL COMMENT '图片',
                             `create_time` varchar(255) NOT NULL COMMENT '时间',
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `footprint_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footprint`
--

LOCK TABLES `footprint` WRITE;
/*!40000 ALTER TABLE `footprint` DISABLE KEYS */;
INSERT INTO `footprint` VALUES (33,'测试足迹','测试足迹','测试足迹','119.138475,33.6119','[]','1599667200000');
/*!40000 ALTER TABLE `footprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `title` varchar(100) NOT NULL COMMENT '网站标题',
                        `description` varchar(255) NOT NULL COMMENT '网站描述',
                        `email` varchar(100) DEFAULT NULL COMMENT '网站邮箱',
                        `image` varchar(255) NOT NULL COMMENT '网站logo',
                        `url` varchar(500) DEFAULT NULL COMMENT '网站链接',
                        `rss` varchar(500) DEFAULT NULL,
                        `order` int NOT NULL DEFAULT '0' COMMENT '友联顺序',
                        `type_id` int NOT NULL COMMENT '网站所绑定的类型',
                        `audit_status` int NOT NULL DEFAULT '0' COMMENT '是否审核',
                        `create_time` varchar(255) NOT NULL COMMENT '网站创建时间',
                        PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (50,'宇阳','ThriveX 博客管理系统作者','liuyuyang1024@yeah.net','https://q1.qlogo.cn/g?b=qq&nk=3311118881&s=640','https://liuyuyang.net/','https://liuyuyang.net/api/rss',0,4,1,'1723533206613');
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_type`
--

DROP TABLE IF EXISTS `link_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_type` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `name` varchar(100) NOT NULL COMMENT '类型名称',
                             `is_admin` int NOT NULL DEFAULT '0' COMMENT '用户是否可选择',
                             `order` int NOT NULL DEFAULT '0' COMMENT '显示顺序',
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `type_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='网站类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_type`
--

LOCK TABLES `link_type` WRITE;
/*!40000 ALTER TABLE `link_type` DISABLE KEYS */;
INSERT INTO `link_type` VALUES (1,'生活类',0,4),(2,'技术类',0,5),(3,'全站置顶',1,1),(4,'推荐',1,2),(5,'大佬',1,3),(6,'聚合类',0,6);
/*!40000 ALTER TABLE `link_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oss`
--

DROP TABLE IF EXISTS `oss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oss` (
                       `id` int NOT NULL AUTO_INCREMENT,
                       `platform` varchar(255) NOT NULL COMMENT '平台',
                       `access_key` varchar(100) DEFAULT NULL COMMENT 'key',
                       `secret_key` varchar(255) DEFAULT '/' COMMENT '密钥',
                       `end_point` varchar(100) DEFAULT NULL COMMENT 'endPoint',
                       `bucket_name` varchar(255) DEFAULT NULL,
                       `domain` varchar(255) DEFAULT NULL,
                       `base_path` varchar(255) DEFAULT NULL,
                       `is_enable` int DEFAULT NULL COMMENT '是否启用',
                       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='oss配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oss`
--

LOCK TABLES `oss` WRITE;
/*!40000 ALTER TABLE `oss` DISABLE KEYS */;
INSERT INTO `oss` VALUES (1,'local',NULL,'','/Users/yang/Desktop/收纳/项目/ThriveX/ThriveX-Server/',NULL,'localhost:9003/static/','upload/',1);
/*!40000 ALTER TABLE `oss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
                              `id` int NOT NULL AUTO_INCREMENT,
                              `name` varchar(100) NOT NULL COMMENT '权限标识',
                              `description` varchar(255) NOT NULL COMMENT '权限介绍',
                              `group` varchar(50) NOT NULL COMMENT '权限分组',
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `Permission_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'user:add','新增用户','user'),(2,'user:del','删除用户','user'),(3,'user:edit','编辑用户','user'),(4,'user:info','获取用户','user'),(5,'user:list','获取用户列表','user'),(6,'user:pass','修改用户密码','user'),(7,'data:add','新增数据','data'),(8,'data:del','删除数据','data'),(9,'article:add','新增文章','article'),(10,'article:del','删除文章','article'),(11,'article:reduction','还原被删除的文章','article'),(12,'article:del','批量删除文章','article'),(13,'article:edit','编辑文章','article'),(14,'cate:add','新增分类','cate'),(15,'cate:del','删除分类','cate'),(16,'cate:edit','编辑分类','cate'),(17,'comment:del','删除评论','comment'),(18,'comment:edit','编辑评论','comment'),(19,'comment:audit','审核评论','comment'),(22,'config:edit','修改项目配置','config'),(23,'email:dismiss','驳回通知邮件','email'),(24,'file:info','获取文件信息','file'),(25,'file:dir','获取目录列表','file'),(26,'file:list','获取文件列表','file'),(27,'file:add','文件上传','file'),(28,'file:del','删除文件','file'),(29,'oss:add','新增oss配置','oss'),(30,'oss:del','删除oss配置','oss'),(31,'oss:edit','更新oss配置','oss'),(32,'oss:info','获取oss配置','oss'),(33,'oss:list','获取oss配置列表','oss'),(34,'oss:enable','启用oss配置','oss'),(35,'oss:getEnableOss','获取当前启用的oss配置','oss'),(36,'oss:getPlatform','获取支持的oss平台','oss'),(37,'record:add','新增说说','record'),(38,'record:del','删除说说','record'),(39,'record:edit','编辑说说','record'),(40,'role:add','新增角色','role'),(41,'role:del','删除角色','role'),(42,'role:edit','编辑角色','role'),(43,'role:info','获取角色','role'),(44,'role:list','获取角色列表','role'),(46,'role:bindingRoute','分配角色权限','role'),(47,'route:add','新增路由','route'),(48,'route:del','删除路由','route'),(49,'route:edit','编辑路由','route'),(50,'route:info','获取路由','route'),(51,'route:list','获取路由列表','route'),(52,'swiper:add','新增轮播图','swiper'),(53,'swiper:del','删除轮播图','swiper'),(54,'swiper:edit','编辑轮播图','swiper'),(55,'tag:add','新增标签','tag'),(56,'tag:del','删除标签','tag'),(57,'tag:edit','编辑标签','tag'),(58,'wall:del','删除留言','wall'),(59,'wall:edit','编辑留言','wall'),(60,'wall:audit','审核留言','wall'),(62,'permission:add','新增权限','permission'),(63,'permission:del','删除权限','permission'),(64,'permission:edit','编辑权限','permission'),(65,'permission:info','获取权限','permission'),(66,'permission:list','获取权限列表','permission'),(67,'link:del','删除网站','link'),(68,'link:edit','编辑网站','link'),(69,'link:audit','审核网站','link'),(70,'email:reply_wall','回复留言','email'),(71,'wall:choice','设置与取消精选留言','wall'),(72,'album_cate:add','新增相册','album'),(73,'album_cate:del','删除相册','album'),(74,'album_cate:edit','编辑相册','album'),(75,'album_image:add','新增照片','album'),(76,'album_image:del','删除照片','album'),(77,'album_image:edit','编辑照片','album'),(78,'assistant:add','新增助手','assistant'),(79,'assistant:del','删除助手','assistant'),(80,'assistant:edit','编辑助手','assistant'),(81,'assistant:list','获取助手列表','assistant'),(82,'assistant:default','设置默认助手','assistant');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `content` text NOT NULL COMMENT '内容',
                          `images` json DEFAULT NULL COMMENT '图片',
                          `create_time` varchar(255) NOT NULL COMMENT '时间',
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `record_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (1,'测试','[\"https://bu.dusays.com/2024/11/17/6739adf188f64.png\"]','1736513670072');
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `name` varchar(255) NOT NULL COMMENT '角色名称',
                        `mark` varchar(100) NOT NULL COMMENT '角色标识',
                        `description` varchar(255) NOT NULL COMMENT '角色描述',
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'管理员','admin','最高权限'),(2,'作者','author','发布文章、查看文章列表');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permission` (
                                   `id` int NOT NULL AUTO_INCREMENT,
                                   `role_id` int NOT NULL COMMENT '角色ID',
                                   `permission_id` int NOT NULL COMMENT '权限ID',
                                   PRIMARY KEY (`id`),
                                   UNIQUE KEY `role_permission_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `path` varchar(100) NOT NULL COMMENT '路由路径',
                         `description` varchar(255) NOT NULL COMMENT '路由描述',
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `routes_pk_2` (`id`),
                         UNIQUE KEY `routes_pk` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'/','仪表盘'),(2,'/create','创作'),(5,'/setup','系统'),(6,'/article','文章管理'),(7,'/tag','标签管理'),(8,'/comment','评论管理'),(9,'/cate','分类管理'),(10,'/web','网站管理'),(11,'/swiper','轮播图管理'),(12,'/user','用户管理'),(13,'/role','角色管理'),(14,'/rss','订阅中心'),(15,'/chart','文件系统'),(17,'/iter','更新日志'),(20,'/route','路由管理'),(21,'/file','文件管理'),(23,'/footprint','足迹管理'),(24,'/work','工作台'),(25,'/wall','留言管理'),(26,'/draft','草稿箱'),(27,'/recycle','回收站'),(28,'/record','说说管理'),(29,'/create_record','闪念'),(30,'/storage','存储管理'),(31,'/album','相册管理'),(32,'/assistant','助手管理');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_role`
--

DROP TABLE IF EXISTS `route_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_role` (
                              `id` int NOT NULL AUTO_INCREMENT,
                              `route_id` int NOT NULL COMMENT '路由id',
                              `role_id` int NOT NULL COMMENT '角色id',
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `routes_role_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_role`
--

LOCK TABLES `route_role` WRITE;
/*!40000 ALTER TABLE `route_role` DISABLE KEYS */;
INSERT INTO `route_role` VALUES (1,1,5),(2,10,5),(3,7,5),(4,9,5),(5,8,5),(6,6,5),(7,2,5),(8,5,5),(9,30,1),(10,27,1),(11,26,1),(12,25,1),(13,24,1),(14,23,1),(15,21,1),(16,14,1),(17,17,1),(18,20,1),(19,1,1),(20,2,1),(21,5,1),(22,6,1),(23,7,1),(24,8,1),(25,9,1),(26,10,1),(27,11,1),(28,12,1),(29,13,1),(30,15,1),(31,16,1),(32,28,1),(33,29,1),(34,32,1),(35,33,1),(36,1,2),(37,7,2),(38,9,2),(39,8,2),(40,6,2),(41,2,2),(42,31,1),(43,32,1);
/*!40000 ALTER TABLE `route_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swiper`
--

DROP TABLE IF EXISTS `swiper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `swiper` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                          `description` varchar(255) DEFAULT NULL,
                          `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                          `url` varchar(500) DEFAULT NULL,
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swiper`
--

LOCK TABLES `swiper` WRITE;
/*!40000 ALTER TABLE `swiper` DISABLE KEYS */;
INSERT INTO `swiper` VALUES (1,'半山腰的风景很美，然而我还是更想到山顶看看','The scenery halfway up the mountain is beautiful, but I still prefer to see the mountaintop','https://bu.dusays.com/2023/11/10/654e2cf6055b0.jpg','/');
/*!40000 ALTER TABLE `swiper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
                       `id` int NOT NULL AUTO_INCREMENT,
                       `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                       PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (3,'测试标签');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `username` varchar(50) NOT NULL COMMENT '用户名',
                        `password` varchar(50) NOT NULL COMMENT '密码',
                        `name` varchar(50) NOT NULL COMMENT '用户名称',
                        `email` varchar(100) DEFAULT NULL COMMENT '用户邮箱',
                        `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
                        `info` varchar(255) DEFAULT NULL COMMENT '用户介绍',
                        `role_id` varchar(50) NOT NULL COMMENT '用户角色ID',
                        `create_time` varchar(255) NOT NULL COMMENT '用户创建时间',
                        PRIMARY KEY (`id`) USING BTREE,
                        UNIQUE KEY `user_pk` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','宇阳','3311118881@qq.com','https://bu.dusays.com/2024/11/17/6739adf188f64.png','ThriveX 博客管理系统作者','1','1723533206613');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_token`
--

DROP TABLE IF EXISTS `user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_token` (
                              `id` int NOT NULL AUTO_INCREMENT,
                              `uid` int NOT NULL COMMENT '用户 ID',
                              `token` text NOT NULL COMMENT '用户token',
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `user_token_pk_2` (`id`),
                              UNIQUE KEY `user_token_pk_3` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户 token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_token`
--

LOCK TABLES `user_token` WRITE;
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
INSERT INTO `user_token` VALUES (57,1,'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjp7ImlkIjoxLCJuYW1lIjoi566h55CG5ZGYIiwibWFyayI6ImFkbWluIiwiZGVzY3JpcHRpb24iOiLmnIDpq5jmnYPpmZAifSwiZXhwIjoxNzUxMjgzNTg1LCJ1c2VyIjp7ImlkIjoxLCJjcmVhdGVUaW1lIjoiMTcyMzUzMzIwNjYxMyIsInVzZXJuYW1lIjoiYWRtaW4iLCJwYXNzd29yZCI6ImUxMGFkYzM5NDliYTU5YWJiZTU2ZTA1N2YyMGY4ODNlIiwibmFtZSI6IuWuh-mYsyIsImluZm8iOiJUaHJpdmVYIOWNmuWuoueuoeeQhuezu-e7n-S9nOiAhSIsImVtYWlsIjoiMzMxMTExODg4MUBxcS5jb20iLCJhdmF0YXIiOiJodHRwczovL2J1LmR1c2F5cy5jb20vMjAyNC8xMS8xNy82NzM5YWRmMTg4ZjY0LnBuZyIsInJvbGVJZCI6IjEiLCJyb2xlIjpudWxsfX0.s5W_OtcNsVr25XJy2kIw8ayV-Q2bfWI-aVFDYM0GE7M');
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wall`
--

DROP TABLE IF EXISTS `wall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wall` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `name` varchar(100) DEFAULT '神秘人' COMMENT '留言人名称',
                        `content` varchar(255) NOT NULL COMMENT '留言内容',
                        `color` varchar(100) DEFAULT '#ffe3944d' COMMENT '留言墙颜色',
                        `email` varchar(100) DEFAULT NULL COMMENT '留言者邮箱',
                        `cate_id` int NOT NULL,
                        `audit_status` int DEFAULT '0' COMMENT '是否审核',
                        `is_choice` int NOT NULL DEFAULT '0' COMMENT '是否为精选留言',
                        `create_time` varchar(255) NOT NULL COMMENT '发布时间',
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `wall_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='留言墙';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wall`
--

LOCK TABLES `wall` WRITE;
/*!40000 ALTER TABLE `wall` DISABLE KEYS */;
INSERT INTO `wall` VALUES (104,'测试','测试测试测试测试测试','#fcafa24d','3311118881@qq.com',6,1,0,'1729231268305'),(107,'测试','测试测试测试测试测试','#fcafa24d','3311118881@qq.com',6,0,0,'1729231268305'),(108,'测试','测试测试测试测试测试','#fcafa24d','3311118881@qq.com',6,0,0,'1729231268305');
/*!40000 ALTER TABLE `wall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wall_cate`
--

DROP TABLE IF EXISTS `wall_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wall_cate` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `name` varchar(100) NOT NULL COMMENT '分类名称',
                             `mark` varchar(100) NOT NULL COMMENT '分类标识',
                             `order` int NOT NULL COMMENT '分类顺序',
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `wall_cate_pk_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='留言分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wall_cate`
--

LOCK TABLES `wall_cate` WRITE;
/*!40000 ALTER TABLE `wall_cate` DISABLE KEYS */;
INSERT INTO `wall_cate` VALUES (1,'全部','all',1),(2,'想对我说的话','info',2),(3,'对我的建议','suggest',3),(6,'其他','other',6),(7,'精选','choice',0);
/*!40000 ALTER TABLE `wall_cate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-27 20:30:06
