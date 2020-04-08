-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        8.0.12 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  10.3.0.5855
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 guaguasp 的数据库结构
CREATE DATABASE IF NOT EXISTS `guaguasp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `guaguasp`;

-- 导出  表 guaguasp.main 结构
CREATE TABLE IF NOT EXISTS `main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abq` varchar(50) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `bigtitle` varchar(50) NOT NULL DEFAULT '0',
  `dhuliang` char(50) NOT NULL DEFAULT '0',
  `litter` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  guaguasp.main 的数据：6 rows
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` (`id`, `abq`, `number`, `bigtitle`, `dhuliang`, `litter`) VALUES
	(1, '奇门遁甲', 1, '奇门遁甲', '236.8万', '天师召唤生死符血斩大蛇'),
	(2, '少年的你', 2, '少年的你', '2020.2万', '你保护世界，我来保护你'),
	(3, '狼群行动', 3, '狼群行动', '853.2万', '樊少皇殊死救援彰显血性'),
	(4, '站住小偷', 4, '站住小偷', '4695.3万', '偷偷是盗！爆笑抓贼！！'),
	(5, '美味侦探', 5, '美味侦探', '1152.5万', '神秘美食凶杀案连环不断'),
	(6, '冰雪奇缘', 6, '冰雪奇缘', '749.2万', '迪士尼经典动画升级回归');
/*!40000 ALTER TABLE `main` ENABLE KEYS */;

-- 导出  表 guaguasp.moveinfo 结构
CREATE TABLE IF NOT EXISTS `moveinfo` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(300) NOT NULL DEFAULT '0',
  `time` char(50) NOT NULL DEFAULT '0',
  `wenzi1` char(100) NOT NULL DEFAULT '0',
  `wenzi2` char(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  guaguasp.moveinfo 的数据：7 rows
/*!40000 ALTER TABLE `moveinfo` DISABLE KEYS */;
INSERT INTO `moveinfo` (`mid`, `img`, `time`, `wenzi1`, `wenzi2`) VALUES
	(1, 'http://puui.qpic.cn/tv/0/722368113_1280720/0', '01:25', '奇门遁甲·正在热播', '雾隐门天师古墓集结血战妖王'),
	(3, 'http://puui.qpic.cn/tv/0/700405184_1280720/0', '02:00', '丛林奇航·全新预告', '巨石强森再度开启丛林冒险'),
	(4, 'http://puui.qpic.cn/tv/0/698157715_1280720/0', '03:08', '冰雪奇缘2·片尾曲', '29种语言版强势来袭'),
	(5, 'http://puui.qpic.cn/tv/0/697526766_1280720/0', '05:33', '唐顿庄园·独家视频', '电影删减片段独家发布'),
	(6, 'http://puui.qpic.cn/tv/0/691959179_1280720/0', '02:27', '黑寡妇·终极预告', '黑暗过往神秘劲敌即将揭晓'),
	(7, 'http://puui.qpic.cn/tv/0/678520883_1280720/0', '01:27', '绝地战警：疾速追击', '最强老铁再度出击'),
	(8, 'http://puui.qpic.cn/tv/0/681228051_1280720/0', '02:24', '史酷比狗·最新预告', '神秘公司探寻惊险案件');
/*!40000 ALTER TABLE `moveinfo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
