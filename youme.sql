-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-03-25 13:37:38
-- 服务器版本： 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youme`
--

-- --------------------------------------------------------

--
-- 表的结构 `ym_admin`
--

CREATE TABLE `ym_admin` (
  `id` mediumint(9) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ym_admin`
--

INSERT INTO `ym_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'admin8', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'admin3', ''),
(8, 'admin5', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `ym_article`
--

CREATE TABLE `ym_article` (
  `id` mediumint(9) NOT NULL,
  `title` varchar(30) NOT NULL COMMENT '标题',
  `keywords` varchar(150) NOT NULL COMMENT '关键词',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  `pic` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `click` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点击量',
  `cateid` mediumint(9) NOT NULL,
  `time` int(10) NOT NULL COMMENT '发布时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ym_article`
--

INSERT INTO `ym_article` (`id`, `title`, `keywords`, `desc`, `pic`, `content`, `click`, `cateid`, `time`) VALUES
(9, '氨基酸', '氨基酸', '                                                                                                                                                                                    生活，热爱                                                                      ', '/static/uploads/20170923/d2a66c0346475e8de6b3436a58018370.jpg', '<div class="line number1 index0 alt2"><code class="xhtml plain"></code><div class="line number1 index0 alt2"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">html</code><code class="xhtml plain">&gt;</code></div><div class="line number2 index1 alt1"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">head</code><code class="xhtml plain">&gt;</code></div><div class="line number3 index2 alt2"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">meta</code> <code class="xhtml color1">http-equiv</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;Content-Type&quot;</code> <code class="xhtml color1">content</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;text/html; charset=utf-8&quot;</code><code class="xhtml plain">&gt;</code></div><div class="line number4 index3 alt1"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">title</code><code class="xhtml plain">&gt;登录界面<code class="xhtml keyword">title</code><code class="xhtml plain">&gt;</code></code></div><div class="line number5 index4 alt2"><code class="xhtml plain"><code class="xhtml keyword">head</code><code class="xhtml plain">&gt;</code></code></div><div class="line number6 index5 alt1">&nbsp;</div><div class="line number7 index6 alt2"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">body</code><code class="xhtml plain">&gt;</code></div><div class="line number8 index7 alt1"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">form</code> <code class="xhtml color1">method</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;post&quot;</code> <code class="xhtml color1">action</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;login.php&quot;</code><code class="xhtml plain">&gt;</code></div><div class="line number9 index8 alt2"><code class="xhtml plain">账号：</code></div><div class="line number10 index9 alt1"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">input</code> <code class="xhtml color1">type</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;text&quot;</code> <code class="xhtml color1">name</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;usernamel&quot;</code><code class="xhtml plain">&gt;&lt;</code><code class="xhtml keyword">br</code><code class="xhtml plain">/&gt;&lt;</code><code class="xhtml keyword">br</code><code class="xhtml plain">/&gt;</code></div><div class="line number11 index10 alt2"><code class="xhtml plain">密码：</code></div><div class="line number12 index11 alt1"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">input</code> <code class="xhtml color1">type</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;password&quot;</code> <code class="xhtml color1">name</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;passwordl&quot;</code><code class="xhtml plain">&gt;</code></div><div class="line number13 index12 alt2"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">input</code> <code class="xhtml color1">type</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;submit&quot;</code> <code class="xhtml color1">value</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;登录&quot;</code> <code class="xhtml color1">name</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;subl&quot;</code><code class="xhtml plain">&gt;</code></div><div class="line number14 index13 alt1"><code class="xhtml plain">&lt;</code><code class="xhtml keyword">a</code> <code class="xhtml color1">href</code><code class="xhtml plain">=</code><code class="xhtml string">&quot;<a href="http://127.0.0.1:8080/register.html">http://127.0.0.1:8080/register.html</a>&quot;</code><code class="xhtml plain">&gt;没有账号，注册<code class="xhtml keyword">a</code><code class="xhtml plain">&gt;</code></code></div><div class="line number15 index14 alt2"><code class="xhtml plain"><code class="xhtml keyword">form</code><code class="xhtml plain">&gt;</code></code></div><div class="line number16 index15 alt1"><code class="xhtml plain"><code class="xhtml keyword">body</code><code class="xhtml plain">&gt;</code></code></div><code class="xhtml plain"><code class="xhtml keyword">html</code><code class="xhtml plain">&gt;</code><code class="xhtml plain"></code></code></div><pre class="brush:html;toolbar:false"><br/></pre><p><br/></p>', 6, 9, 1509106701),
(6, '生活', '生活', '                                    生活没烦恼生活没烦恼生活没烦恼                                ', '/static/uploads/20170923/7505ecd4629be2f5bd9515837f350de5.jpg', '<p>生活没烦恼生活没烦恼生活没烦恼生活没烦恼生活没烦恼</p>', 9, 8, 1506166076),
(7, '年货', '生活,美好,热爱', '                                                                        年货                                                                ', '/static/uploads/20170917/c00bd6dda5d928ab39150de8b122946d.jpg', '<p>年货年货年货年货</p>', 3, 9, 1506166202),
(13, '的交集啊哦', '生活,美好', '的交集啊哦的交集啊哦', '/static/uploads/20170923/88841f6c53b3c790a389082f1e655232.jpg', '<p>的交集啊哦的交集啊哦的交集啊哦的交集啊哦</p>', 12, 9, 1506164364),
(14, '卡死', '卡死卡死卡死', '卡死卡死卡死卡死', '/static/uploads/20170923/d12883f9be9f44b911bbb721c2c56635.jpg', '<p>卡死卡死卡死卡死卡死</p>', 16, 9, 1506164390);

-- --------------------------------------------------------

--
-- 表的结构 `ym_cate`
--

CREATE TABLE `ym_cate` (
  `id` mediumint(9) NOT NULL,
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  `keywords` varchar(150) NOT NULL COMMENT '栏目关键词',
  `desc` text NOT NULL COMMENT '栏目描述',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '栏目类型0：列表 1：留言'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ym_cate`
--

INSERT INTO `ym_cate` (`id`, `catename`, `keywords`, `desc`, `type`) VALUES
(8, '大生活', '大生活', '                       ', 0),
(9, '光影斑斓', '光影斑斓', '光影斑斓        ', 0),
(10, '如是观', '如是观', '                                                                        如是观                                                                                                                                                                                                                                              ', 0),
(17, '留言', '留言', '                                                                                                       f111                                                                                                                                                                                                                                                                  ', 1),
(14, '圈圈说', '圈圈说', '                                                                                                                                                留言本                                                                                                                                                                                                                                                                                                                 ', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ym_guest`
--

CREATE TABLE `ym_guest` (
  `id` mediumint(9) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `homepage` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `face` varchar(150) NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '1',
  `artid` mediumint(9) NOT NULL DEFAULT '0',
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ym_guest`
--

INSERT INTO `ym_guest` (`id`, `nickname`, `email`, `homepage`, `content`, `face`, `level`, `artid`, `pid`, `time`) VALUES
(1, 'fsadf', 'dfasdf@qq.com', 'www.122.com', 'sdfsdf', '', 1, 0, 0, 1469539481),
(2, 'fsadf2', 'dfasd2f@qq.com', 'www.12222.com', 'sdfsdf2', '', 1, 0, 0, 1469539687),
(3, '童攀', 'tongpan@qq.com', 'www.12222.com', '童攀童攀童攀童攀童攀童攀童攀童攀', '', 1, 0, 0, 1469539721),
(4, '童年', 'tongnian@qq.com', 'www.12222.com', '童年童年童年童年童年童年童年童年童年童年童年童年童年', '', 1, 0, 0, 1469539739),
(5, '天天', 'tongnian@qq.com', 'www.12222.com', '天天天天天天天天天天天天天天天天天天天天', '', 1, 0, 0, 1469539760),
(6, 'dfsd', 'dfasdf@qq.com', 'www.12222.com', 'fasdfsdfsdf', '', 1, 0, 0, 1469542092),
(7, 'dfsd', 'dfasdf@qq.com', 'www.12222.com', 'sdfasdfsdf', '', 1, 0, 0, 1469542468);

-- --------------------------------------------------------

--
-- 表的结构 `ym_link`
--

CREATE TABLE `ym_link` (
  `id` mediumint(9) NOT NULL,
  `title` varchar(30) NOT NULL COMMENT '链接标题',
  `desc` varchar(255) NOT NULL COMMENT '链接描述',
  `url` varchar(60) NOT NULL COMMENT '链接地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ym_link`
--

INSERT INTO `ym_link` (`id`, `title`, `desc`, `url`) VALUES
(1, '百度4', '                                                                        百度百度百度百度百度                                                                ', 'http://www.baidu.com'),
(2, 'title', 'desc', 'url'),
(5, '112', '                                    3                                ', '2'),
(6, 'sdfsadf', 'asdf', 'sdfasdf'),
(8, 'sdfsd', 'asdfsdf', 'sadfsadf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ym_admin`
--
ALTER TABLE `ym_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ym_article`
--
ALTER TABLE `ym_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ym_cate`
--
ALTER TABLE `ym_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ym_guest`
--
ALTER TABLE `ym_guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ym_link`
--
ALTER TABLE `ym_link`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ym_admin`
--
ALTER TABLE `ym_admin`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `ym_article`
--
ALTER TABLE `ym_article`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `ym_cate`
--
ALTER TABLE `ym_cate`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `ym_guest`
--
ALTER TABLE `ym_guest`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `ym_link`
--
ALTER TABLE `ym_link`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
