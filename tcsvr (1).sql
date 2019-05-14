-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 05 月 08 日 18:01
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `tcsvr`
--

-- --------------------------------------------------------

--
-- 表的结构 `tv_admin`
--

CREATE TABLE IF NOT EXISTS `tv_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(30) NOT NULL,
  `admin_real` varchar(10) NOT NULL,
  `admin_password` varchar(32) NOT NULL,
  `lasttime` varchar(30) NOT NULL,
  `lastip` varchar(20) NOT NULL,
  `verify` varchar(32) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='管理员表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `tv_admin`
--

INSERT INTO `tv_admin` (`admin_id`, `admin_username`, `admin_real`, `admin_password`, `lasttime`, `lastip`, `verify`) VALUES
(1, 'admin', '', '28c99e5edd76455e289b67eba31a866d', '1557197686', '127.0.0.1', 'baa4c23d81e0155072419a147777d5ab'),
(2, 'admin1', '', '67ecba42e37d6e9ee57f4d222a8e4897', '1557197686', '127.0.0.1', '08cb7889cf136bb29282de1da0d29330');

-- --------------------------------------------------------

--
-- 表的结构 `tv_article`
--

CREATE TABLE IF NOT EXISTS `tv_article` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_content` text NOT NULL,
  `a_title` varchar(20) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tv_article`
--

INSERT INTO `tv_article` (`a_id`, `a_content`, `a_title`) VALUES
(1, '<p>&nbsp; &nbsp; &nbsp; <img src="http://www.tcsvr.com/cms/umeditor/php/upload/20190502/15567872452710.jpg" _src="http://www.tcsvr.com/cms/umeditor/php/upload/20190502/15567872452710.jpg"/>&nbsp; &nbsp;</p><p class="tit">我们旨在赋能企业改变营销、销售和经营的方式。我们为商家、品牌及其他企业提供基本的互联网基础设施以及营销平台，让其可借助互联网的力量与用户和客户互动。我们的业务包括核心电商、云计算、数字媒体和娱乐以及创新项目和其他业务。我们并通过子公司菜鸟网络及所投资的关联公司口碑，参与物流和本地服务行业，同时与蚂蚁金融服务集团有战略合作，该金融服务集团主要通过中国领先的第三方网上支付平台支付宝运营。</p>', '联系我们'),
(2, '<div class="col-lg-12 mpz"><h6 class="po">天下视</h6></div><div class="row pp"><div class="col-lg-6"><p>地址：广东省深圳市科兴科学园</p><p>手机：17303169207 / 18501562740</p><p>邮编：517000</p></div><div class="col-lg-6 "><p>传真：0755-88886666</p><p>电话：0755-88886666</p><p>邮箱: 1484552626@qq.com</p></div><div class="col-lg-2"><p>关注我们:</p></div><div class="col-lg-8"><img src="images/tcs.jpg" alt="" class="tcs"/>\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div></div>', '联系我们'),
(3, '<div class="card text-center">\r\n            <div class="card-header">\r\n                <h4>体验设计师</h4>\r\n                <p>2019-02-27 / 地点： 深圳 / 人数：2 人 / 待遇： 10K+</p>\r\n            </div>\r\n            <div class="card-body pad">\r\n                <h5 class="card-title tal">工作内容:</h5>\r\n                <ol class="tal">\r\n                    <li>1. 负责佳能全系列产品在3-5级城市的市场开拓；</li>\r\n                    <li>2. 收集分析市场信息，规划当地的市场策略；</li>\r\n                    <li>3. 协调公司内部各个产品部门支持3-5级城市的总体市场销售。</li>\r\n                </ol>\r\n                <h5 class="card-title tal">要求:</h5>\r\n                <ol class="tal">\r\n                    <li>1. 大专以上学历，28岁以上，3年以上大型公司市场或者销售工作经验；</li>\r\n                    <li>2. 文案策划能力强，对市场敏锐度高，熟悉IT/OA/数码行业；</li>\r\n                    <li>3. 具有对产品以及市场的规划、统筹能力，能适应适当出差；</li>\r\n                    <li>4. 会英语尤佳；</li>\r\n                    <li>5. 具备协调沟通能力;</li>\r\n                </ol>\r\n            </div>\r\n            <div class="card-footer text-muted">\r\n                    <button type="button" class="btn btn-primary" data-toggle="modal"\r\n                    data-target=".bd-example-modal-lg">在线联系</button>\r\n\r\n                <div id="fr" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"\r\n                    aria-labelledby="myLargeModalLabel" aria-hidden="true">\r\n                    <div class="modal-dialog modal-lg">\r\n                        <div class="modal-content">\r\n                            <form class="auto pdt" method="get" action="">\r\n                                <table>\r\n                                    <tr>\r\n                                        <td>姓名：</td>\r\n                                        <td><input class="txt" type="text" name="username"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td colspan="2">\r\n                                            <p id="tip"></p>\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>姓别：</td>\r\n                                        <td>\r\n                                            <input type="radio" name="sex" id="man" checked><label for="man">男</label>\r\n                                            <input type="radio" name="sex" id="wom"><label for="wom">女</label>\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>年龄：</td>\r\n                                        <td><input class="txt" type="text" name="ages"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td colspan="2">\r\n                                            <p id="atip"></p>\r\n                                        </td>\r\n                                    </tr>\r\n\r\n                                    <tr>\r\n                                        <td>电话：</td>\r\n                                        <td><input class="txt" type="text" name="phone"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td colspan="2">\r\n                                            <p id="ptip"></p>\r\n                                        </td>\r\n                                    </tr>\r\n\r\n                                    <tr>\r\n                                        <td>邮件：</td>\r\n                                        <td><input class="txt" type="text" name="email"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>学历：</td>\r\n                                        <td>\r\n                                            <select class="txt" name="" id="">\r\n                                                <option value="">大专</option>\r\n                                                <option value="" selected>本科</option>\r\n                                                <option value="">本科以上</option>\r\n                                                <option value="">大专以下</option>\r\n                                            </select>\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td class="vat">工作经历:</td>\r\n                                        <td>\r\n                                           <textarea name="txt" id="" cols="42" rows="10"></textarea>\r\n                                        </td>\r\n                                    </tr>\r\n                                </table>\r\n                               <button  type="submit" class="btn btn-primary ">提交</button>\r\n                            </form>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>            </div>\r\n        </div>\r\n        <div class="card text-center container mpz">\r\n            <div class="card-header">\r\n                <h4>设计总监</h4>\r\n                <p>2019-02-27 / 地点： 深圳 / 人数：1 人 / 待遇： 20K+</p>\r\n            </div>\r\n            <div class="card-body pad">\r\n                <h5 class="card-title tal">工作内容:</h5>\r\n                <ol class="tal">\r\n                    <li>1. 制定平台的运营模式、策略及目标，并推动落地实施，挖掘用户的消费习惯和消费场景，优化服务选型；</li>\r\n                    <li>2.\r\n                        配合公司整体战略，规划完善公司的会员体系、激励机制和会员权益创新管理总体策略，提升用户的忠诚度及粘性，精通用户生命周期管理理念和精准营销数据分析的结论，提升包括留存率、高价值会员占比、老客销售占比等核心CRM指标。\r\n                    </li>\r\n                    <li>3. 策划运营活动，提升用户活跃度，负责网站促销方式，通过有效的促销活动，提升整体GMV；</li>\r\n                    <li>4 .通过有效的数据分析，掌握运营状况，并做出针对性的调整；</li>\r\n                </ol>\r\n                <h5 class="card-title tal">要求:</h5>\r\n                <ol class="tal">\r\n                    <li>1. 大学本科以上学历，30岁以上，5年以上大型公司市场或者销售工作经验；</li>\r\n                    <li>2. 3年以上大型平台运营工作经验，具备一定规模团队的管理能力；</li>\r\n                    <li>3. 会英语尤佳；</li>\r\n                    <li>4. 具备良好的执行力和团队合作精神 。 </li>\r\n                </ol>\r\n            </div>\r\n            <div class="card-footer text-muted">\r\n                    <button type="button" class="btn btn-primary" data-toggle="modal"\r\n                    data-target=".bd-example-modal-lg">在线联系</button>\r\n\r\n                <div id="fr" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"\r\n                    aria-labelledby="myLargeModalLabel" aria-hidden="true">\r\n                    <div class="modal-dialog modal-lg">\r\n                        <div class="modal-content">\r\n                            <form class="auto pdt">\r\n                                <table>\r\n                                    <tr>\r\n                                        <td>姓名：</td>\r\n                                        <td><input class="txt" type="text" name="username"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>姓别：</td>\r\n                                        <td>\r\n                                            <input type="radio" name="sex" id="man" checked><label for="man">男</label>\r\n                                            <input type="radio" name="sex" id="wom"><label for="wom">女</label>\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>年龄：</td>\r\n                                        <td><input class="txt" type="text"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>电话：</td>\r\n                                        <td><input class="txt" type="text"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>邮件：</td>\r\n                                        <td><input class="txt" type="text"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>学历：</td>\r\n                                        <td>\r\n                                            <select class="txt" name="" id="">\r\n                                                <option value="">大专</option>\r\n                                                <option value="" selected>本科</option>\r\n                                                <option value="">本科以上</option>\r\n                                                <option value="">大专以下</option>\r\n                                            </select>\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td class="vat">工作经历:</td>\r\n                                        <td>\r\n                                           <textarea name="txt" id="" cols="42" rows="10"></textarea>\r\n                                        </td>\r\n                                    </tr>\r\n                                </table>\r\n                               <button id="tj" type="submit" class="btn btn-primary ">提交</button>\r\n                            </form>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>            </div>\r\n        </div>\r\n        <div class="card text-center container mpz">\r\n            <div class="card-header">\r\n                <h4>设计师</h4>\r\n                <p>2019-02-27 / 地点： 深圳 / 人数：5 人 / 待遇： 10K+</p>\r\n            </div>\r\n            <div class="card-body pad">\r\n                <h5 class="card-title tal">工作内容:</h5>\r\n                <ol class="tal">\r\n                    <li>1. 负责公司及客户软件的网页广告，包括图片、动画、彩页的设计与制作；</li>\r\n                    <li>2. 负责对网页的风格、色彩、布局设计工作，图片美化处理；</li>\r\n                    <li>3. 负责公司旗下网站平台的策划、设计、切图、排版、改版； </li>\r\n                    <li>4. 负责公司自媒体平台产品界面图片进行创意设计、美化、排版；</li>\r\n                    <li>5. 负责对公司线上活动广告宣传进行创意策划、排版、美工设计；</li>\r\n                    <li>6. 负责公司主要网站的日常页面更新与维护，进行必要的改版；</li>\r\n                    <li>7. 协助配合其他部门以及上级领导完成其他工作安排。</li>\r\n                </ol>\r\n                <h5 class="card-title tal">要求:</h5>\r\n                <ol class="tal">\r\n                    <li>1. 大专以上学历，23岁以上，1年以上设计工作经验；</li>\r\n                    <li>2. 设计兴趣浓厚，具有良好的审美观、优秀的视觉创意能力和设计执行能力；</li>\r\n                    <li>3. 对市场设计有良好的洞悉能力，擅长色彩搭配及创意设计；</li>\r\n                    <li>4. 熟练使用CorelDraw、Illustrator等美术设计软件等美术设计软件</li>\r\n                    <li>5. 精通Photoshop/Flash/Dreamweaver/Fireworks等网页制作软件 。 </li>\r\n                </ol>\r\n            </div>\r\n            <div class="card-footer text-muted">\r\n                <button type="button" class="btn btn-primary" data-toggle="modal"\r\n                    data-target=".bd-example-modal-lg">在线联系</button>\r\n\r\n                <div id="fr" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"\r\n                    aria-labelledby="myLargeModalLabel" aria-hidden="true">\r\n                    <div class="modal-dialog modal-lg">\r\n                        <div class="modal-content">\r\n                            <form class="auto pdt">\r\n                                <table>\r\n                                    <tr>\r\n                                        <td>姓名：</td>\r\n                                        <td><input class="txt" type="text"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>姓别：</td>\r\n                                        <td>\r\n                                            <input type="radio" name="sex" id="man" checked><label for="man">男</label>\r\n                                            <input type="radio" name="sex" id="wom"><label for="wom">女</label>\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>年龄：</td>\r\n                                        <td><input class="txt" type="text"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>电话：</td>\r\n                                        <td><input class="txt" type="text"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>邮件：</td>\r\n                                        <td><input class="txt" type="text"></td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>学历：</td>\r\n                                        <td>\r\n                                            <select class="txt" name="" id="">\r\n                                                <option value="">大专</option>\r\n                                                <option value="" selected>本科</option>\r\n                                                <option value="">本科以上</option>\r\n                                                <option value="">大专以下</option>\r\n                                            </select>\r\n                                        </td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td class="vat">工作经历:</td>\r\n                                        <td>\r\n                                           <textarea name="txt" id="" cols="42" rows="10"></textarea>\r\n                                        </td>\r\n                                    </tr>\r\n                                </table>\r\n                               <button id="tj" type="submit" class="btn btn-primary ">提交</button>\r\n                            </form>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n', '加入我们');

-- --------------------------------------------------------

--
-- 表的结构 `tv_banner`
--

CREATE TABLE IF NOT EXISTS `tv_banner` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_img` varchar(100) NOT NULL,
  `b_thumb` varchar(100) NOT NULL,
  `b_link` varchar(100) NOT NULL,
  `b_isshow` tinyint(4) NOT NULL,
  `b_titile` varchar(20) NOT NULL,
  `b_txt` varchar(30) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tv_banner`
--

INSERT INTO `tv_banner` (`b_id`, `b_img`, `b_thumb`, `b_link`, `b_isshow`, `b_titile`, `b_txt`) VALUES
(1, '2019/05/155686492663388.jpg', '2019-05/03/155686492663388.jpg', '', 1, '天下视', '昂首向前走 得与失之间会明白所有'),
(2, '2019/05/155686493716088.jpg', '2019-05/03/155686493716088.jpg', '', 1, '天下视', '人生若只如初见 何事秋风悲画扇'),
(3, '2019/05/155686494979785.jpg', '2019-05/03/155686494979785.jpg', '', 1, '天下视', '多想在见你 哪怕匆匆一眼就别离');

-- --------------------------------------------------------

--
-- 表的结构 `tv_contact`
--

CREATE TABLE IF NOT EXISTS `tv_contact` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) NOT NULL,
  `c_sex` tinyint(4) NOT NULL,
  `c_age` tinyint(4) NOT NULL,
  `c_phone` varchar(22) NOT NULL,
  `c_email` varchar(30) NOT NULL,
  `c_education` varchar(15) NOT NULL,
  `c_work` text NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tv_jion`
--

CREATE TABLE IF NOT EXISTS `tv_jion` (
  `j_id` int(11) NOT NULL AUTO_INCREMENT,
  `j_time` varchar(30) NOT NULL,
  `j_title` varchar(30) NOT NULL,
  `j_txt` varchar(100) NOT NULL,
  `j_condtion` text NOT NULL,
  `j_isshow` tinyint(4) NOT NULL,
  PRIMARY KEY (`j_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tv_jion`
--

INSERT INTO `tv_jion` (`j_id`, `j_time`, `j_title`, `j_txt`, `j_condtion`, `j_isshow`) VALUES
(1, '1555220217', '体验设计师', ' / 地点： 深圳 / 人数：2 人 / 待遇： 10K+', '                    <li>1. 负责佳能全系列产品在3-5级城市的市场开拓；</li>\n                    <li>2. 收集分析市场信息，规划当地的市场策略；</li>\n                    <li>3. 协调公司内部各个产品部门支持3-5级城市的总体市场销售。</li>\n                </ol>\n                <h5 class="card-title tal">要求:</h5>\n                <ol class="tal">\n                    <li>1. 大专以上学历，28岁以上，3年以上大型公司市场或者销售工作经验；</li>\n                    <li>2. 文案策划能力强，对市场敏锐度高，熟悉IT/OA/数码行业；</li>\n                    <li>3. 具有对产品以及市场的规划、统筹能力，能适应适当出差；</li>\n                    <li>4. 会英语尤佳；</li>\n                    <li>5. 具备协调沟通能力;</li>\n', 1),
(2, '1555422217', '设计总监', ' / 地点： 深圳 / 人数：1 人 / 待遇： 20K+', '                    <li>1. 制定平台的运营模式、策略及目标，并推动落地实施，挖掘用户的消费习惯和消费场景，优化服务选型；</li>\r\n                    <li>2.\r\n                        配合公司整体战略，规划完善公司的会员体系、激励机制和会员权益创新管理总体策略，提升用户的忠诚度及粘性，精通用户生命周期管理理念和精准营销数据分析的结论，提升包括留存率、高价值会员占比、老客销售占比等核心CRM指标。\r\n                    </li>\r\n                    <li>3. 策划运营活动，提升用户活跃度，负责网站促销方式，通过有效的促销活动，提升整体GMV；</li>\r\n                    <li>4 .通过有效的数据分析，掌握运营状况，并做出针对性的调整；</li>\r\n                </ol>\r\n                <h5 class="card-title tal">要求:</h5>\r\n                <ol class="tal">\r\n                    <li>1. 大学本科以上学历，30岁以上，5年以上大型公司市场或者销售工作经验；</li>\r\n                    <li>2. 3年以上大型平台运营工作经验，具备一定规模团队的管理能力；</li>\r\n                    <li>3. 会英语尤佳；</li>\r\n                    <li>4. 具备良好的执行力和团队合作精神 。 </li>\r\n', 1),
(3, '1555421217', '设计师', ' / 地点： 深圳 / 人数：5 人 / 待遇： 10K+', '                    <li>1. 负责公司及客户软件的网页广告，包括图片、动画、彩页的设计与制作；</li>\n                    <li>2. 负责对网页的风格、色彩、布局设计工作，图片美化处理；</li>\n                    <li>3. 负责公司旗下网站平台的策划、设计、切图、排版、改版； </li>\n                    <li>4. 负责公司自媒体平台产品界面图片进行创意设计、美化、排版；</li>\n                    <li>5. 负责对公司线上活动广告宣传进行创意策划、排版、美工设计；</li>\n                    <li>6. 负责公司主要网站的日常页面更新与维护，进行必要的改版；</li>\n                    <li>7. 协助配合其他部门以及上级领导完成其他工作安排。</li>\n                </ol>\n                <h5 class="card-title tal">要求:</h5>\n                <ol class="tal">\n                    <li>1. 大专以上学历，23岁以上，1年以上设计工作经验；</li>\n                    <li>2. 设计兴趣浓厚，具有良好的审美观、优秀的视觉创意能力和设计执行能力；</li>\n                    <li>3. 对市场设计有良好的洞悉能力，擅长色彩搭配及创意设计；</li>\n                    <li>4. 熟练使用CorelDraw、Illustrator等美术设计软件等美术设计软件</li>\n                    <li>5. 精通Photoshop/Flash/Dreamweaver/Fireworks等网页制作软件 。 </li>\n', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tv_message`
--

CREATE TABLE IF NOT EXISTS `tv_message` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(30) NOT NULL,
  `m_sex` tinyint(4) NOT NULL,
  `m_ages` int(11) NOT NULL,
  `m_email` varchar(50) NOT NULL,
  `m_phone` varchar(20) NOT NULL,
  `m_content` text NOT NULL,
  `m_time` varchar(20) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='留言表' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tv_message`
--

INSERT INTO `tv_message` (`m_id`, `m_name`, `m_sex`, `m_ages`, `m_email`, `m_phone`, `m_content`, `m_time`, `u_id`) VALUES
(1, '', 0, 0, 'asd', '123', '\r\n	asd				', '1556188597', 0),
(2, '', 0, 0, 'asd', '123', '\r\n	asd				', '1556188617', 0),
(7, '', 0, 0, 'asd', '123', 'asd', '1556191143', 25),
(8, 'ssss', 0, 0, 'asd', '123', 'sdas', '1556191362', 25),
(12, 'qwe', 0, 0, '', 'asdasdasdasd', 'qweqwedd', '1557286840', 33),
(13, 'qwe', 0, 0, '', 'asdasdasdasd', 'qweqwedd', '1557286949', 33);

-- --------------------------------------------------------

--
-- 表的结构 `tv_nav`
--

CREATE TABLE IF NOT EXISTS `tv_nav` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_name` varchar(20) NOT NULL,
  `n_link` varchar(100) NOT NULL,
  `n_isshow` tinyint(4) NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `tv_nav`
--

INSERT INTO `tv_nav` (`n_id`, `n_name`, `n_link`, `n_isshow`) VALUES
(1, '主页', 'index.php', 1),
(2, '关于我们', 'about.php', 1),
(3, '新闻动态', 'news.php', 1),
(5, '加入我们', 'jion.php', 1),
(6, '联系我们', 'index.php', 1),
(4, '产品展示', 'rec.php', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tv_new`
--

CREATE TABLE IF NOT EXISTS `tv_new` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_title` varchar(30) NOT NULL,
  `n_txt` text NOT NULL,
  `n_detai` text NOT NULL,
  `n_img` varchar(100) NOT NULL,
  `n_thumb` varchar(100) NOT NULL,
  `nl_id` int(11) NOT NULL,
  `n_time` varchar(30) NOT NULL,
  `n_isshow` tinyint(4) NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `tv_new`
--

INSERT INTO `tv_new` (`n_id`, `n_title`, `n_txt`, `n_detai`, `n_img`, `n_thumb`, `nl_id`, `n_time`, `n_isshow`) VALUES
(1, 'Dream World', '足不出户即可浪漫约会 VR社交这次真的来了', '<h3>足不出户即可浪漫约会 VR社交这次真的来了</h3>\n            <p>在科技行业中，VR（虚拟现实）一直是近两年比较热门话题，除了我们熟知的HTC、索尼、Facebook等国外大厂，国内也有数百家VR公司如雨后春笋般不断冒出。随着VR设备被越来越多的人熟知，大家关心的话题也从“VR到底是什么”变成了“我能用VR玩什么”。</p>\n            <p>无论是HTC Vive、oculus等主机头盔，还是诸如Gear VR、暴风魔镜这些移动设备，平台上大部分内容还是一些简单的小游戏和体验类Demo，这些并不足以让用户长时间对VR设备提起兴趣。内容的匮乏让VR市场并没有预期的那么火爆，于是有不少内容团队都开始尝试“VR+社交”的概念，各大视频直播平台、硬件厂商，都陆续推出了自家的VR社交产品。</p>\n            <p>而今天笔者介绍的，则是国内一家名为DreamVR的初创团队打造的一款VR社交平台——Dream World。</p>\n            <p class="img"><img src="http://cms-bucket.nosdn.127.net/87c6a3d7c74a4c3282d4d609ee7228c020160812083750.jpeg" alt=""></p>\n            <p>进入开始画面我们会看到熟悉的创建角色的面板，姓名、性别、肤色等一系列按钮一目了然。</p>\n            <p>虽值得一提的是，有梦社交平台里不仅加入了个性服饰的选择，还加入了捏脸这个功能，这个在传统大型端游里出现的功能无疑让该款App一上来就增分不少。</p>\n            <p class="img"><img src="http://cms-bucket.nosdn.127.net/636e157f172446b6a8c448727eede16820160812083758.jpeg" alt=""></p>\n            <p>创建角色之后，你会进到一个风格简约大气的海景房，没错这就是你在虚拟世界中的家。房间里的设施很齐全，并且可以依照玩家自己的喜欢进行个性化装扮。</p>\n            <p>一个人守着空荡荡的房间一定会觉得特别寂寞，这时我们就可以邀请平台上的其他好友来家中做客。DreamWorld为我们提供了许多小游戏，斗地主、狼人杀、麻将等聚会游戏，都可以在家中与好友畅玩。</p>\n            <p class="img"><img src="http://cms-bucket.nosdn.127.net/d422264833f54cba9de73e4e65d014d220160812083806.jpeg" alt=""></p>\n            <p>想和另一半在家中玩玩情调？DreamWorld当然也可以帮你实现。为心爱的人弹奏一曲动听的音乐，同时还可以和你的Ta来一次浪漫的海边漫步。</p>\n            <p>在家中待时间久了未免会感到无趣，通过视选的方式我们可以来到另外一个场景，比如笔者接下来要介绍的这个IMAX电影院。</p>\n            <p class="img"><img src="http://cms-bucket.nosdn.127.net/cda8aff39f8b4ea7801a23adf65e235520160812083814.jpeg" alt=""></p>\n            <p>首先映入眼帘的是一个科幻感十足的“购票大厅”，共有“包场”和“选座”两个选项供用户选择。顾名思义，包场选项就是你一个人承包了整个影院，我们除了可以邀请多名自己的好友一同观影，也可以一起吐槽聊天。</p>\n            <p>如果你是一个喜欢交朋友的人，也可以像现实一样选择购票选座的方式。选场的好处是可以和更多陌生人进行联系，并且这些人和你有同样的观影爱好。根据影片类型进行陌生交友。想想就是一件十分有趣的事情。</p>\n            <p>最主要的是，影片片源均有光线传媒正版授权，并且还有不少独家院线大片呦</p>\n            <p>该款App采用了独家的语音交互技术，我们可以和同在电影院里的小伙伴用语音这种最直接的方式进行交流，获得最贴近真实的体验</p>\n            <p>虽说虚拟现实影视先行，但游戏依然是不可忽略的一点。除了卡牌类的游戏，DreamVR也在紧锣密鼓的为该款应用添加一个“秘密武器”。因为游戏还在开发中，这里就先卖个关子，不过可以透露的是这一个绝对、绝对、绝对意想不到的游戏。</p>\n            <p>除了打造这个VR社交平台，笔者发现该团队也在其他领域进行了不少尝试。</p>\n            <p>比如跳票多年的动漫电影《大鱼海棠》的VR预告片就是这个团队给做的，纵观国内这方面的作品好像真的只有这一款了。之后又与现在最会搞品牌营销的Uber进行合作，为该品牌现场提供了VR方面的艺术体验。据悉，为了让Dream World的社交属性更为浓郁，DreamVR正页为新浪微博打造了VR版的H5游戏。（本文来源：VR观察 责任编辑：丁广胜_NT1941）</p>\n', '', '', 1, '2019-05-03 03:17:07', 1),
(2, 'Vtime XR为VR社交网络推出AR模式', 'Vtime XR推出了一款虚拟现实社交网络，你可以通过VR或者智能手机上的AR观看。AR模式今天在iOS和Android上发布', '        <h3>Vtime XR为VR社交网络推出AR模式</h3>\n            <p>Vtime XR推出了一款虚拟现实社交网络，你可以通过VR或者智能手机上的AR观看。AR模式今天在iOS和Android上发布。</p>\n            <p>该公司（命名为vTime）将更名为vTime XR，以将其网络推广为一种跨现实（XR）体验，将VR聊天与通过增强现实（AR）与朋友联系的能力结合起来，即在现实世界之上叠加动画效果。</p>\n            <p>用户将能够满足与他人在一个共享的虚拟空间利用VR头显或手持智能手机AR。跨平台交叉现实提供，Vtime XR让用户选择设备和类型的身临其境的体验，他们更喜欢通过基于“增大化现实”技术的选择、虚拟现实、2 D魔法窗口模式。</p>\n            <p class="img"><img src="http://n.sinaimg.cn/sina_vr/transform/38/w550h288/20190219/HRBo-htfpvza3014300.png" alt=""></p>\n            <p>VR用户将完全沉浸在Vtime XR的度假目的地中，而AR用户将通过在任何真实世界的平面上放置360度的目的地实时立体模型加入其中。AR用户可以与他人交互，改变和扩展他们对目的地的看法，以及访问Vtime特性，如角色定制、图像共享和私有消息。</p>\n            <p>>今天在iOS和Android上发布的AR模式将适用于所有支持苹果的ARKit和谷歌的ARCore的手机</p>\n            <p>Vtime的总经理Clemens Wangerin在一份声明中说：“创造世界上第一个跨现实的社交体验对我们来说是一个非常难得的机会，我们不能错过。”“AR为vTime未来的创新提供了另一个沉浸式的平台，vTime XR标志着我们为全球社区提供市场领先和高度参与的交流体验的下一步，无论他们选择的技术是什么。”</p>\n            <p class="img"><img src="http://n.sinaimg.cn/sina_vr/transform/42/w550h292/20190219/xY0X-htfpvza3016251.png" alt=""></p>\n            <p>Vtime XR的跨现实功能的推出与一个全新的视觉标识相吻合，该标识包括公司和产品的新标识，以及一个更新的网站和标识动画。</p>\n            <p>Vtime XR是免费的，现在可以下载Android、iPhone、谷歌Cardboard、Oculus Go、三星Gear VR、Windows混合现实、Daydream View和Oculus Rift。</p>\n            <p>Vtime成立于2013年，总部位于英国利物浦，为其AR和VR互动技术募集了760万美元。</p>\n            <p>图文出自：venturebeat</p>\n            <p>原文链接：https://venturebeat.com/2019/02/19/vtime-xr-unveils-ar-mode-for-vr-social-network/</p>        <p></p>\n', '', '', 1, '2019-05-03 03:17:04', 1),
(3, '将AI 接入VR', '将AI 接入VR， 打破VR用户与社交网络的次元壁，ObEN 获腾讯500万美元战投', '<h3>将AI 接入VR</h3>\n            <p>初创公司ObEN对外宣布，公司已获得500万美元战略投资，由腾讯领投，CMC董事长黎瑞刚及峰尚资本跟投。资金将主要用于加速ObEN的产品开发，并帮助推动其明星的人工智能版权平台广泛应用到各类数字平台上。</p>\n            <p>郑毅向36氪独家透露，他们正在与国内一家极具影响力的选秀节目合作。今年下半年，ObEN计划推出面向消费者的app，提供AI形象设计服务及全新互动形式。</p>\n            <p>ObEN成立于 2014 年，成立之初曾募集到 15 万美元的种子轮融资，入围过 HTC Vive X 孵化器。2016年11月曾获得770万美元A论融资，领投方是中国盾安集团旗下投资分部 CrestValue Capital，参投方包括知名风投 Cybernaut Investment 旗下美国投资基金 Cybernaut Westlake Partners 和深圳清华力合创业投资有限公司。2017年3月，又获得来自软银的投资，当时并未对外公布融资金额。</p>\n            <p>ObEN作为一家人工智能公司，致力于帮助消费者建立虚拟形象，在数字世界构建自己的虚拟身份。而之所以能够频频获得资本青睐，ObEN自然有其独特的优势，通过其专有的AI技术快速结合人的2D图像和语音创建个人3D头像，将个人头像传输到虚拟现实和增强现实环境中，简单来说就是这项专利可以让用户通过一张照片、一段音频就能生成自己的VR化身和声音，这个3D虚拟形象还可以不断学习用户的说话、唱歌、表情和动作，变得和用户自身越来越相似，通过了解用户的行为和习惯，未来可以带来更多的社交和虚拟互动，获得难忘的体验。</p>\n            <p class="img"><img src="https://pic.36krcnd.com/avatar/201703/30012531/lvn9sdikuewut2a6.png!1200" alt=""></p>\n            <p>过去，创造一个虚拟现实个体对象的成本很高（至少投入数千美金），不仅需要昂贵的硬件设备，还需要在专业录音师内花费大量时间录音，再利用三位图像重建和电音模拟技术才能打造出和你本人非常相似的虚拟现实角色。但现在，Oben 解决了这个问题，利用你的2D 照片和简单的语音记录，就能快速制造出一个和你非常相似、且逼真的虚拟现实人物。和目前类似卡通形象的虚拟现实角色不同，Oben 的虚拟现实个体包含了一个人的特征、性格和脾气，而且只需一款智能手机就能搞定，之后还能轻松导入到其他虚拟现实和增强现实环境中。</p>\n            <p>ObEN月腾讯的初期合作早有渊源，obEN此前就与微信美国合作了微信机器人，2017年3月通过HTC Vive也达成了合作，使微信用户有机会体验VR社交。VR用户从viveport的VR App进入ObEN demo App，扫描微信二维码，将ObEN  App与自己的微信关联，然后就可以在VR里就向微信好友发邀请，并与之互动。微信端用户不需要下载任何App，只需要拍摄一张照片，即可以参与到VR社交中。</p>\n            <p>当时，ObEN N demo App展示了基础版、进阶版、高级版三种不同的玩法。基础版中，HTC Vive的VR用户可以在VR世界里无障碍接收及回复微信信息，还可以在VR里自拍，然后把自己的自拍发给微信好友传阅。</p>\n            <p>进阶版中，VR用户将会在微信里获得“传送能力”，一点击就能来到帝国大厦五十层或者迈阿密沙滩边，还能向微信好友发出邀请，“xxx在VR里邀请你海边漫步”。微信用户在点击链接后，需要向VR用户发送一张自拍。obEN会用算法帮助自动生成这个好友的虚拟3D形象，把这个微信好友传送到VR里，VR用户就可以和这位朋友一起在VR世界里徜徉了。在真实世界里，微信用户之后会收到一个短视频形式的VR视频，看见“自己”和朋友在VR里游玩</p>\n            <p>高端版中，VR用户选择“Rockstar Duet Experience”（电子摇滚明星体验）这个功能后，可以向微信好友发出邀请，“xxx在VR里邀请你合唱一曲《因为爱情》”，点击链接后，微信好友不仅需要发送自拍，还需要读一小段歌词，obEN会自动用算法生成虚拟3D形象与声音形象，迅速完成了一个360度MV。值得说明的是，这是通过微信小程序实现的。</p>\n            <p class="img"><img src="https://pic.36krcnd.com/avatar/201703/30010816/48jsby0hq1awd7ie.png!1200" alt=""></p>\n            <p>其实，自从VR头显设备降低到数千元以下后，社交就被认为是VR的一个重要场景，不仅吸引了Facebook、腾讯这样的社交巨头，也吸引了诸如AltspaceVR、High Fidelity、VTime、脑穿越这些创业公司。</p>\n            <p>不过，对于这些玩家来说，如果是面向熟人社交场景，快速低成本的3D形象创建，都是一个不得不面对的问题。</p>\n            <p>去年Oculus Connect 3大会上，扎克伯格直播展示了自己通过Facebook messenger在VR世界里和Priscilla视频的一幕。外界看到的是小扎向全世界宣布他对VR与社交结合的期待，但却可能不知道小扎为自己的3D形象花费了一笔不小的费用。这也是为什么ObEN 会选择从这个痛点入手。</p>\n            <p>不过，与其说ObEN  是一家VR社交公司，倒不如说它是一家AI公司。这家公司团队中有UCLA（加州大学洛杉矶分校）和CalTech（加州理工学院）的专家，擅长声音模拟技术与3D图像重建技术，能够通过一张自拍照建立3D虚拟人物形象，以及用户几分钟的录音来建立一个电音模型。这次展示的Demo里，也是全球第一次将人工智能技术使用到VR（快速建立人的三维形象，语音合成说话、歌曲）中，全球第一次使用人工智能技术在VR端生成短视频。</p>\n            <p>而未来，ObEN 则希望成为“ 每个人的人工智能社交平台”——用自己的人工智能技术生成视频内容（AIGC，AI Generated Content），包括UGC和PGC。与各类平台合作，是内容获取和发布的重要手段与方式。</p>\n            <p>此外，今年6月底，SM集团与ObEN日前正式签署合同，成立合资企业幻星（香港）有限公司。ObEN拥有的全栈AI技术能够打造人类的AI虚拟形象。(原创文章，作者：石亚琼)</p>\n   ', '', '', 1, '2019-05-03 03:17:00', 1),
(4, 'VR社交有戏？VRChat用户量已达150万', '1月16日消息 根据SteamSpy数据，从2017年圣诞节至今，VR社交应用VRChat下载量已经增加了120万次，目前全球总用户量达150万。', '<h3>VR社交有戏？VRChat用户量已达150万</h3><p>1月16日消息 根据SteamSpy数据，从2017年圣诞节至今，VR社交应用VRChat下载量已经增加了120万次，目前全球总用户量达150万。</p><p class="img"><img src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2173000406,2927580198&amp;fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=410&amp;s=D7E5BC44423189D60ACC718B030070C0" alt=""/></p><p>根据Valve的Steam报告，VRChat上周日的同时在线用户数量最高达到2万，成功进入同时在线用户数应用前三十。到了人人都上班上学的周一上午，该平台也有超过1.3万人同时在线。</p><p>虽然SteamSpy和Valve都没有说明这些用户是通过VR头显还是PC登陆平台，但可以确定的一点是：VRChat是已经成为一个“VR优先”的社交空间。普通PC用户进入房间，看到满屋子都是摆着各种手势的虚拟人物的一刹那，好奇心肯定被大大激发。</p><p class="img"><img src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1282046924,2817940417&amp;fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=410&amp;s=37E747A6FB339AD809CFA1B60300304B" alt=""/></p><p>这款免费应用支持PC和VR。最近得益于如PewDiePie、videogamedunkey和 Jameskii等油管播主的直播以及一些Twitch视频的流行，不知不觉间便火了起来。</p><p>不过，有多火就有多乱。近段时间平台上也出现了一些性别歧视和种族歧视言论。对此，VRChat团队上周发表了一封公开信，表示要铲除这些不良网络现象。</p>', '', '', 1, '2019-05-03 03:22:22', 1),
(5, 'Beat Saber', '火遍抖音的《Beat Saber》 让人停不下的VR音游', '            <h3>火遍抖音的《Beat Saber》 让人停不下的VR音游</h3>\n            <p>它绝对是当下最好的VR音游(没有之一)，也可能是目前最好的VR游戏。平心而论，未荻很少用如此绝对的主观感受去评价一款游戏，但无论是对虚拟现实的沉浸感把握，作品的游戏性本身，还是游戏受众上看，曾一度火遍抖音的《Beat Saber》(节奏光剑)无疑是VR游戏金字塔尖的存在!</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1811/09102102c21.jpg" alt=""></p>\n            <p>碍于当前支持Steam的VR设备的价位和体积，以及对电脑配置的高要求，《Beat Saber》的游戏成本实在有些高。未荻曾在它最火的时候前往VR线下体验店尝试，当时的收费标准是15分钟33元，实在让人望而却步。于是玩家对于《Beat Saber》登陆更为小巧、亲民的PSVR的呼声也日益高涨。</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1811/0910211VN7.jpg" alt=""></p>\n            <p>终于，《Beat Saber》的热度虽然褪去不少，但官方总算回应了玩家的期待!近日，《Beat Saber》公开最新宣传视频，宣布本作将于11月20日登陆PS4平台!</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1811/0910214420N.jpg" alt=""></p>\n            <p>《Beat Saber》是一款音乐打节拍游戏，游戏有着精致的游戏场景、高清的画质，结合了创新的VR玩法。在游戏中玩家可以伴随着动感的音乐，使用指尖模拟光剑切开飞驰而来的方块。在方块来到你身边时削减节拍，每个节拍都会指出您需要使用哪种把光剑，以及挥舞光剑的方向。</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1811/091021594350.gif" alt=""></p>\n            <p>游戏打击手感十分强烈，加上音游惯有的密集动作指令，往往需要玩家在空旷的现实场景中左右横跳，因此也被不少玩家拿来当做健身、减肥游戏，听说效果还不赖!</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1811/0910221B333.gif" alt=""></p>\n            <p>只不过，PSVR版的《Beat Saber》也存在一些劣势，比如说音游最关键的游戏曲库。PS4显然并不像Steam那样支持自定义歌曲，不过考虑到索尼也是影音娱乐公司，旗下拥有诸多歌曲版权，在曲库阵容上同样值得期待。</p>\n', '', '', 2, '', 1),
(6, '娱乐至死的年代，VR如何让世界出新彩？', '1. VR将把我们未知的世界形象化 2.体验式营销将不再是空话                                    3.降低学习新技能的难度 4.降低学习新技能的难度 5.增强遥控能力 6.轻松复制历史美景玩“穿越”                                ', '            <h3>娱乐至死的年代，VR如何让世界出新彩？</h3>\n            <h4>1.VR将把我们未知的世界形象化</h4>\n            <p>大多数房地产和装修行业对概念化这一名词很感兴趣，此前它们向用户展示时只能使用模型和样板房，但随着技术的进步，各种电脑上的3D模型渲染也成了新招式。不过，对许多人来说，只是看看这些东西还是不知道新家到底会是什么样，但VR的出现将会彻底改变这样的窘境。</p>\n            <p>只要带上VR头盔，你就能漫步于新装修的虚拟房间中。在这里，你可以随意指点，哪点不满意都可以随时进行调整，挪个沙发或加个壁炉更是易如反掌，如果你不喜欢，甚至可以直接砸掉一面墙。</p>\n            <p>在VR的帮助下，每个人都可将臆想中的世界形象化，而专注于此类业务的公司也已经出现。举例来说，Matterport公司声称已经将25万张图片地图融入了VR之中，几个月后用户就能在虚拟世界中造访世界各地了。</p>\n            <p>同时，VR还能在建筑行业中大行其道。设计师可以随时找出自己设计中的不人性化的瑕疵，并在建造前进行及时更改。</p>\n            <h4>2. 体验式营销将不再是空话</h4>\n            <p>VR改变世界的第二种方式是体验式营销，未来这种方式将在现实世界有更多应用，通过虚拟头盔，我们能事先体验到事物的真实感受。</p>\n            <p>举例来说，如果你想游历某个景点，完全可以先在虚拟世界造访一番，在这里甚至连讲解员的声音都是那么真实</p>\n            <p>此外，VR在购物上也有自己得天独厚的优势，我们足不出户就能逛遍全世界的商店，选到自己满意的商品。</p>\n            <h4>3. 降低学习新技能的难度</h4>\n            <p>眼下，VR设备已经进入美国部队，成为了美国大兵训练中的良师益友。举例来说，在VR世界之中你能体验到荷枪实弹的真实战斗体验，真实程度堪比演戏，这将对士兵能力的提高起到重要作用。</p>\n            <p>同时，部队还能利用VR进行射击、跳伞、潜水等科目的训练，这将大大节省成本，更能减少危险的出现。此外，对医学院的学生来说，VR也是新的学习方式，他们无需在血淋淋的标本上操作了，戴上头盔，想解剖什么都行。而且，这种方式更为直观，且可多次重复学习。</p>\n            <p>除了军事和医学领域，我们还可利用VR学习任何技能。你无需迈出家门，就可通过与外国人面对面交流学习外语。此外，它还能带我们实地体验一些此前普通人根本没办法接触的知识，如火箭制造、电气工程、天体物理学和人工智能等。这将大大拓展我们的视野，最重要的是它可以极大的降低我们的学习成本。</p>\n            <h4>4. 增强遥控能力</h4>\n            <p>眼下，许多无人机已经专门为未来的VR应用预留了接口，到时带上VR头盔，我们就能跟无人机一起“飞翔”了，那种第一视角的飞行与操控感觉一定会非常惊艳。除此之外，这项技术还能用于太空探索，未来宇航员无需出仓，就能在航天器中操纵机械手完成设备的检修，我们更是可以第一视角操控各种飞行器完成对外太空的探索。因此，VR在遥控领域的应用几乎没有任何局限性。</p>\n            <p>VR头盔在遥控上的应用将让我们摆脱原本使用视频或遥控器的笨拙方式，我们即使身体未到，也能真切的感受现场的环境</p>        <p></p>\n            <h4>5. 轻松复制历史美景玩“穿越”</h4>\n            <p>最后一项改变主要集中在娱乐领域，借助VR技术，我们可以轻松复原数百年前纽约的街景或者许多军迷魂牵梦绕的战场景观，漫步其中，想必也会感慨万千</p>\n            <p>不过，对旧世界的复原还只是娱乐功能的一项，许多喜欢“向前看”的用户更偏爱虚拟世界。国外许多玩家已经开始想象VR版《侠盗猎车手》的样子了，同时许多剧迷也想带上VR眼镜到《权力的游戏》世界中走一遭。</p>\n            <p>不过，以上的设想都只是开始，随着技术的不断精进，未来VR的玩法会更加多样，我们的世界也会变得更加丰富多彩。（编译/吕佳辉）</p>\n', '2019/05/155686081026098.jpg', '2019-05/03/155686081026098.jpg', 5, '2019-05-03 01:19:34', 1),
(7, 'Asgard''s Wrath', 'Sanzaru Games和Oculus Studios宣布了他们最新的合作，史诗级VR游戏《Asgard''s Wrath》.', '            <h3>Asgard''s Wrath</h3>\n            <p>Sanzaru Games和Oculus Studios宣布了他们最新的合作，史诗级VR游戏《Asgard''s Wrath》。 发布了几个屏幕截图以及展示一些游戏玩法的短片预告片。Oculus Studios执行制片人Mike Doran发布了一个游戏视频，突出了更多的体验。</p>\n            <p class="img"><img src="http://www.ivrwan.com/d/file/2019-02-19/a6de31a3cf210544fddea972579fbc59.png" alt=""></p>\n            <p>非常期待幻想角色扮演游戏（RPG）类型，如The Elder Scrolls V：Skyrim VR， 短视频显示了一些战斗以及物品和人工制品收藏。它看起来像是使用剑和盾组合的战士角色。稍后，你会看到一只青蛙正在寻找伴侣从虚空中跳出来，然后带领主角穿越到一个陌生的地方。</p>\n            <p>可以看出《Asgard''s Wrath》的。废墟很好，黑暗和阴沉，雨水从地板上闪闪发光。它已经是一个非常令人印象深刻的标题，没有显示大规模的景观。</p>\n            <p>《Asgard''s Wrath》是一款基于北欧神话背景的超30小时VR冒险， 玩家将作为被神王奥丁所挑选的战士去挑战邪神洛基。这意味着你不仅要作为一个凡人而战，而且还要利用那些虔诚的力量来为自己在战斗中占据优势。游戏中有不同的角色类可供选择，例如法师、盗贼以及战士，工作室对近战格斗进行特别的优化，微调物理效果以提供尽可能真实的战斗体验。你还可以根据情况在凡人模式和上帝模式之间切换。</p>\n', '', '', 2, '', 1),
(8, '沙漠巴士', '史上最无聊游戏《沙漠巴士》出了VR版 四人联机共度无聊时光', '            <h3>沙漠巴士</h3>\n            <p>要说能有一款游戏能因为“无聊”而远近闻名，那就只有《沙漠巴士》了。在游玩这款游戏的过程中，玩家所能做的就只有开巴士。而它最无聊的地方在于，游戏中的时间和现实同步，玩家真的得花上8个小时才能开完全程，全程只有画质感人的贴图风景，此外什么都没有。</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1711/3010530134J.jpg" alt=""></p>\n            <p>如今，这款史上最无聊的游戏换了身新衣服，以VR的姿态登上了Steam平台。原作的精髓都很好地保留了下来，比如无聊。不过更重要的是，这次《沙漠巴士》VR版支持四人联机...你可以约上几个小伙伴一起开车共度无聊时光了.</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1711/30105255aF.jpg" alt=""></p>\n            <h3>以下是官方介绍</h3>\n            <p>享受从图桑市开到拉斯维加斯全程8小时(现实时间)的动感之旅，当你到了目的地，还能转身开回去!</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1711/301052435304.jpg" alt=""></p>\n            <p>令人兴奋的真实巴士司机玩法，你不仅可以开车，甚至还可以鸣喇叭和打开公交车门，新的互动系统包括在车内喷清新剂。</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1711/3010530D254.jpg" alt=""></p>\n            <p>《沙漠巴士》VR版突破性地加入了全新的联机系统!玩家可以四人联机，一人开车三人坐车，身为乘客你可以坐巴士，在车上挥手，甚至向司机扔纸(车票?)</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1711/3010531J005.jpg" alt=""></p>\n            <p>比较良心的是，这款游戏在Steam上定价为免费，假若你有VR设备的话，那一定不能错过这款传说中的无聊名作哦。</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1711/3010531154E.jpg" alt=""></p>\n', '', '', 2, '', 1),
(9, '用VR玩《马里奥》《魂斗罗》是种什么样的体验?', '早在2016年，国外就有大佬开发了一款3DNES模拟器，它能够把咱们小时候玩的那些FC游戏转换成3D图像，效果直逼3DS上那些官方复刻的3D  FC游戏。     ', '            <h3>用VR玩《马里奥》《魂斗罗》是种什么样的体验?</h3>\n            <p>早在2016年，国外就有大佬开发了一款3DNES模拟器，它能够把咱们小时候玩的那些FC游戏转换成3D图像，效果直逼3DS上那些官方复刻的3D FC游戏。</p>\n            <p ><img src="http://newsimg.5054399.com/uploads/userup/1803/0Q0340c4F.gif" alt=""></p>\n            <p>随着VR技术的迅速发展，人们已经不满足于让魂斗罗里的小人“跑出”屏幕，而是追求真正“沉浸入”魂斗罗的世界。</p>\n            <p><img src="http://newsimg.5054399.com/uploads/userup/1803/0Q0343O963.jpg" alt=""></p>\n            <p>而这个梦想终于是实现了，开发者近日宣布，这款模拟器进行了一次有趣的更新，那就是支持VR效果。玩家可以用Oculus Rift或HTC Vive头显设备体验不一样的童年了。</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1803/0Q034435329.jpg" alt=""></p>\n            <p>讲道理，想要让FC游戏适配VR设备可不是码几串代码，转个格式那么简单。需要在3D框架的重建时努力改善每款“像素游戏”中每个像素块的外观和视觉效果，这可不是小工程。</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1803/0Q0345II2.jpg" alt=""></p>\n            <p>最后还是感谢开发商，能让我们体验到不一样的童年。</p>\n            <p class="img"><img src="http://newsimg.5054399.com/uploads/userup/1803/0Q034293934.jpg" alt=""></p>\n            <p></p>\n', '', '', 2, '', 1),
(10, 'VR+影视', '史上最无聊游戏《沙漠巴士》出了VR版 四人联机共度无聊时光', '            <h3>资本冷眼旁观，VR+影视的路有多难走？</h3>\n            <p>11月25日，李安导演作为颁奖嘉宾出席了台湾金马奖典礼，在金马会后庆功宴接受采访时透露，会在新片《双子煞星》中加入VR技术。李安导演近几年开始尝试在其电影中结合新技术，就像之前的电影《比利·林恩的中场战事》采用了120帧高帧率拍法，已经取得了不错的效果。显然此次VR也以其独特魅力吸引了这位大导演。</p>\n            <p class="img"><img src="https://hiphotos.baidu.com/feed/pic/item/9f2f070828381f3055bdeb57a2014c086f06f0ac.jpg" alt=""></p>\n            <p>而今年更早的时候，斯皮尔伯格也与HTC Vive联合拍摄了以VR为核心的高概念电影《玩家一号》。此外，今年更有4部中国VR作品入围威尼斯电影节VR单元，我们可以看出威尼斯等电影节对于VR电影的重视。</p>\n            <p>影视无疑已成为如今VR最重要的应用领域之一，那么VR影视对比传统影视剧有什么不一样的吸引力呢？</p>\n            <h4>是什么让你钟情于VR+影视？</h4>\n            <h5>无法比拟的代入感</h5>\n            <p>VR纪录片《Wave of Grace》真实展示了疾病肆虐的利比里亚现状，当你戴上VR头显置身于纪录片中时，你会感到自己就站在利比里亚的某片墓地，一些身穿防化服的志愿者正在将一位埃博拉病毒受害者下葬。你感觉自己似乎要跌入坟墓，而当意识到已被数以百计的坟墓环绕时，生命的脆弱感顿时向你袭来。</p>\n            <p class="img"><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=469235947,1587138862&fm=173&s=7CC2E10BF899980F390020B003005094&w=640&h=295&img.JPEG" alt=""></p>\n            <p>这种真实的代入感简直比十则新闻报道加起来都要震撼，这是传统电影无法比拟的。VR技术360°全景体验是视觉体验上巨大的飞跃，某种程度的体验比一些高超的镜头语言还要吸引观众。</p>\n            <h4>和电影的互动让人无法拒绝</h4>\n            <p>传统影视中，观众只是被动的坐在荧幕前观看，虽然剧情的发展会跌宕起伏，但是我们知道结局再怎么出人意料也是不会随我们的意志而改变的。</p>\n            <p>但是VR电影能将观众从传统电影的单线性叙事模式中解放出来。因为VR电影是360°电影，这意味着电影在叙事结构上时间空间的连续逻辑以及故事视角会呈现多样性，观众将有极大的自主选择权。</p>\n            <p class="img"><img src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=623287286,3204774321&fm=173&s=DF3C06C6505209DADAAF7A3E03005048&w=640&h=381&img.JPEG" alt=""></p>\n            <p>就像被认为是迄今为止最好的VR短片《Henry》，在这部VR动画电影中观众可以加入这只刺猬的生日派对，观众可以参与排队的准备工作，跟着这只小刺猬一起忙前忙后。想想自己也能成为电影中的一名角色，是不是很激动呢？我们有什么理由拒绝这样的VR电影呢？</p>\n            <h4>梦想虽好，切记前路漫漫</h4>\n            <p>即便VR+影视看起来如此的吸引人，但由于当前大环境对VR投资的谨慎以及其自身存在的各种问题，目前VR影视还是面临艰难的处境。</p>\n            <h4>极高的创作难度</h4>\n            <p>VR电影是360°视角，一方面这是传统电影无法比拟的视觉优势，另一方面在叙事结构和故事视角的处理上，VR电影难度会更高。这种颠覆性的改变不仅要求剧本包含多线性叙事结构，而且还要求导演们有更多的创造力。但是目前VR技术的不成熟却大大限制了他们的想象与创造力，这样的矛盾目前看还是很难调和的。</p>\n            <p class="img"><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=824303179,376698704&fm=173&s=F904DA1516737B8002B353D4030030B4&w=595&h=338&img.JPEG" alt=""></p>\n            <p>再举一个简单的例子，在拍摄《福尔摩斯》这样的侦探片当中，侦探最后与众人齐聚一堂进行破案分析的场景时，导演、摄影、剪辑该如何去满足观众希望视角在侦探、犯罪嫌疑人、旁观者、群众等角色以及电影场景的不断闪回，显然难度不是一般的高。</p>\n            <p>我们能看到如今的VR影视作品大多数还是以短片为主，甚至不能称之为电影，这主要是因为蒙太奇的缺失很大程度上影响了VR叙事的长度和流畅性。蒙太奇是人们为了适应平面影视而发展出来的一种镜头语言，是电影最基本最独特的艺术表现方法。运用蒙太奇手法可以大大地丰富了电影艺术的表现力，从而增强电影艺术的感染力。</p>\n            <p class="img"><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2090762245,3257069292&fm=173&s=EEB215C7C2E9170DCA15513303001050&w=553&h=313&img.JPEG" alt=""></p>\n            <p>因此我们能看到，即使获得业内极高评价的《Henry》，对比一些传统优秀电影，它的剧情还是显得很老套和低龄化，故事情节多少有些“无趣”。《Henry》只是做到完整的叙事以及没有太多硬伤的镜头语言就非常难能可贵了。</p>\n            <h4>高昂的成本以及变现困难</h4>\n            <p>今年6月的时候，Facebook宣布关闭了Oculus Story Studio。这个顶尖的VR影视工作室曾经凭借《Henry》、《Lost》斩获众多大奖，可是Facebook还是毅然关闭了它，无外乎是因为其高昂的成本加上遥遥无期的盈利。据悉，片长10分钟的《迷失》花费了近1000万美元，这是一种近乎无底洞式的烧钱。世界顶尖的工作室尚且如此，更遑论其他更多面临融资难的小厂商了。</p>\n            <p class="img"><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3976550217,4096973921&fm=173&s=FECCC009EE037F5516809CC50300E095&w=633&h=469&img.JPEG" alt=""></p>\n            <p>为了寻求VR影视变现之道，IMAX在去年便开始铺设线下VR影院，今年年初又听说将在中国开设首个VR影院。IMAX 中心洛杉矶店6万美元的月营收似乎证明了VR线下影院有钱可准，但IMAX的海量内容产品和高端硬件配置又是难以复制的。</p>\n            <h4>VR对影视类型的限制</h4>\n            <p>以目前VR技术发展的状况看，最适合VR与电影有机结合的是侦探、恐怖、记录、科幻等对于还原现实场景有天然优势和需求的电影题材。还有一类基本没有技术含量的，就是偏成人娱乐的片子，这也是目前发展的最具规模的类型。</p>\n            <p>据了解，在全球最大的成人网站Pornhub上，VR视频已有数千部。但坦率的说，VR影视片的类型单一也是一大问题。</p>\n            <p class="img"><img src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=908616278,256657776&fm=173&s=9AD3708446331584280419B80300C090&w=600&h=400&img.JPEG" alt=""></p>\n            <h4>可能面临新的电影审查机制</h4>\n            <p>鉴于国内的电影审查制度，一方面，传统电影中的色情、暴力元素是必须禁止的；另一方面也要考虑VR强烈的真实体验带来的一些问题。比如一些纪录片会拍到大型野生动物之间的搏斗，可能会出现一些血腥的场面，而VR会表现的更真实，这也许会因为审查问题进行修改。</p>\n            <p>以目前VR+影视的发展趋势看，未来VR电影必定不会是单纯的电影，但为了VR影视的长久发展，我们还是应该把握住电影的本质，注重故事内容的打磨，而不能停留在炫耀技术上.</p>\n            <p class="img"><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3202526379,61453241&fm=173&s=5D43B140BC5334D6DA6080150300D0C9&w=551&h=323&img.JPEG" alt=""></p>\n            <p>由于传统影视和VR影视的巨大差异，即使未来VR技术成熟，VR影视还是很难颠覆传统影视的主流地位，但必将为影视产业带来一场革命，拥有自己固定的受众群体。由此看，VR影视十分可期。</p>\n', '', '', 3, '', 1);
INSERT INTO `tv_new` (`n_id`, `n_title`, `n_txt`, `n_detai`, `n_img`, `n_thumb`, `nl_id`, `n_time`, `n_isshow`) VALUES
(12, 'VR影像展', 'VR已死？我们在VR影像展看到了电影的未来', '                <h3>VR已死？我们在VR影像展看到了电影的未来</h3>\n                <p class="img"><img\n                        src="http://t12.baidu.com/it/u=974268248,386852852&fm=173&app=25&f=JPEG?w=640&h=359&s=278068A01C533EC250AC9D9503008091"\n                        alt=""></p>\n                <p>从2016到2017短短一年时间，VR行业从风口跌落谷底。最明显的是，无论资本还是媒体，都不再对VR充满热情了，不少人甚至发出“VR已死”的言论。</p>\n                <p>事实真的如此吗？</p>\n                <p>2017年第74届威尼斯电影节首次新增了“VR电影竞赛单元”，VR电影也有了专属奖项，今年4月的北京电影节，也有了“VR单元”。比起VR游戏，VR电影发展面临的挑战不仅来自于技术和成本，可能会是对电影行业颠覆性的改变。\n                </p>\n                <p>去年十二月，斯皮尔伯格的《头号玩家》在我国狂澜13.96亿票房，再次用VR游戏颠覆了观众们对未来虚拟现实的想象。</p>\n                <p class="img"><img\n                        src="http://t11.baidu.com/it/u=461503405,1779347956&fm=173&app=25&f=JPEG?w=640&h=427&s=3524D01452D053DC8D9D24D70300C0E2"\n                        alt=""></p>\n                <p>最近，2018年青岛VR影像周也赋予了这个问题不同的答案。</p>\n                <h4>虚拟世界带来的“沉浸式”体验</h4>\n                <p>VR电影未来的样子是怎样虽然还没有定论，但在探索中，业内普遍认为VR电影的基本特性之一便是——“沉浸感”，沉浸感的体验是什么样子？如果你酷爱戏剧，那么对于去年《不眠之夜》这部作品你一定不会陌生。它被称为“沉浸式戏剧”，即观众不再是坐在台下观看，成为了演出的参与者和主导者，剧情会根据观众的选择呈现出不同的走向，而产生不同的结局，“沉浸式戏剧”和VR的体验有些类似。\n                </p>\n                <p class="img"><img\n                        src="http://t10.baidu.com/it/u=93950643,1389235042&fm=173&app=25&f=JPEG?w=640&h=381&s=40512B66C776019433645D1801008092"\n                        alt=""></p>\n                <p>\n                    <h4>《不眠之夜》宣传图</h4>\n                </p>\n                <p>在刚刚过去的青岛VR影像周中，预言家游报（ID：yuyanjiayoubao）一共体验了十几个VR短片，发现的确和普通观影比起来有着质的不同，在戴上VR设备后，自己仿佛置身于电影场景中，开始前志愿者会让用户站在正确的方向上，短片开始后通常会根据声音来跟进剧情进行转身和移动\n                </p>\n                <p>6 月 23 日至 26 日，VR展映以行业场和公众场的形式向观众开放。官方展映一共分为三个部分：立式 VR 、VR 剧场和 VR\n                    装置。据介绍，此次砂之盒沉浸影像展邀请了全球顶级VR创作团队和他们的作品。影像周共收集了来自 20 多个国家近 50 部在圣丹斯、翠贝卡、威尼斯、戛纳、釜山等国际电影节获奖/入围的 VR\n                    作品，其中一半作品为亚洲首映。</p>\n                <p>砂之盒创始人楼彦昕表示，砂之盒是国内最早举办和促进虚拟现实在影像叙事方面的交流平台，此次在青岛举办2018青岛国际VR影像周——砂之盒沉浸影像展，是希望构建一个类似电影节形态的窗口，可以将国内外最好的VR作品汇聚在这里，形成可持续的交流与合作。\n                </p>\n                <p>大多数VR短片时长在5-10分钟左右，剧情简单易懂，虽然并没有感到网上所说的眩晕感，但在看的时候如果剧情不够吸引人，就会觉得有点无聊，而且由于带上设备后是无法看到除画面外别的东西的，因此如果片段不够好看，就会有别无选择被迫观看的感觉。\n                </p>\n                <p>VR影像展远比想象中的火爆，主办方砂之盒为了方便观众观看，专门做了一个提供挑选场次的小程序，观众可以提前预约观看时间，预言家游报（ID：yuyanjiayoubao）发现大多数热门短片的预约时间一般都排满了，直到晚上九点现场每个项目还都有陆陆续续的排队观众。据楼彦昕介绍，仅23和24日两天展馆就一共接待了2000位行业和大众观众。\n                </p>\n                <p class="img"><img\n                        src="http://t12.baidu.com/it/u=3719749376,1962659025&fm=173&app=25&f=JPEG?w=474&h=986&s=2B887222031A44610EFD65DA0000C0B1"\n                        alt=""></p>\n                <p>小程序预约情况常常爆满</p>\n                <p>孙阿姨一家是来青岛游玩的游客，趁着外孙放暑假一家人出来旅游，女儿在网上看到宣传后就把这里当成了景点带家人前来参观，“就是感觉新奇好玩，从前没看过这种展出，最喜欢海底的景色，真的好像在海底一样，鱼儿在身边游来游去，挺逼真的。”孙阿姨笑道，“挺长见识的，就是有的是全英文，没有字幕看不懂。”\n                </p>\n                <p>阿姨口中的海底景色是由Michael\n                    Muller拍摄的《潜入当下》，这部电影由VR机器拍摄，在加勒比海到美洲再到非洲多个地方取景，耗资巨大，加上Muller多年拍摄海底景象和生物的经验，才能把画面拍的如此逼真动人。事实上如今很多号称VR短片的视频，由于资金问题大多由2D机器拍摄，观感会大打折扣。\n                </p>\n                <p class="img"><img\n                        src="http://t12.baidu.com/it/u=2929576061,92420959&fm=173&app=25&f=JPEG?w=640&h=352&s=9302944C5CC637601A3E16100300C0D9"\n                        alt=""></p>\n                <p>《潜入当下》预告片截图</p>\n                <p>“当全身心沉浸在VR短片中的时候，会感到有点孤独，没有手柄可以触碰影片中物体的话，就会有种莫名的无力感。”小新是青岛的一名大三学生，在影像展中的这些作品中，她最喜欢的是《休的色彩》和《小王子VR》，这两部作品都有手柄，观看的过程中都有少许趣味性的互动，“互动不用太多，只要能有存在感就行。\n                </p>\n                <p>小新所喜欢的带有交互性的体验正是如今消费者对娱乐的需求趋势，能和读者互动的图书畅销，有“社交性”的沉浸式戏剧一票难求，连曾经功能单一的美图秀秀和大众点评等工具型App都加入了社交功能，对此星云奖科幻作家Sean\n                    Stewart把曾经的艺术比喻为烹饪，只需要做好了呈献给观众就好，而现在的艺术像是跳舞，如何牵引对方一起愉快的共舞，且不打乱节奏才是最重要的。</p>\n                <p>区别于游戏，VR电影应该有自己的逻辑</p>\n                <p>从前我们看电影是在一个水平面上的，观看者是被动接收画面提供给我们的信息，除了镜面穿帮，观众是看不到拍摄者的。但是VR电影给了观众一个互动的机会，观众可以自己去探寻拍摄环境，这样的话拍摄机位就是很大的问题，找到合适的观众观看的机位、移动的轨迹等等都和以往的电影是不同的，甚至传统的构图方法也已经不适用于VR影片了。</p>\n                <p class="img"><img src="http://t11.baidu.com/it/u=2168930650,2684855503&fm=173&app=25&f=JPEG?w=640&h=335&s=E280DB0D784031578AA870890300A082" alt=""></p>\n                <p>VR拍摄场景</p>\n                <p><img src="http://t12.baidu.com/it/u=1416497648,70052032&fm=173&app=25&f=JPEG?w=640&h=425&s=A6F27D844817BED672D4D88F0300A080" alt=""></p>\n                <p>青岛VR影像周现场</p>\n                <p>在《看电影》的主编阿郎看来，目前的所谓“VR电影”并没有自己的逻辑，一些影像在遵循游戏逻辑，有些在遵循科学和科教的逻辑，他不认为现存所有的观看美学就是符合VR电影观看美学的，它应该是独特的。</p>\n                <p>《血肉与黄沙》是由传奇影业制作，著名导演亚利桑德罗·冈萨雷斯·伊纳里多执导的VR影片，内容讲述了美国与墨西哥边境跨境难民穿越沙漠艰难迁徙的真实故事。阿郎回忆在观看该片时，进入观看环境的时候，能直观感受到难民逃离的无奈情绪，光脚踩在黄沙上的感觉。</p>\n                <p>“我十分期待VR电影发展的原因，是因为我觉得VR电影会慢慢重新定义一种崭新的观看美学，能改变我看世界的角度和方式。”他补充道。</p>\n                <p>行业大起大落，VR电影发展仍面临多重困境</p>\n                <p>据互联网数据中心报告显示，2017年全球VR应用总消费额4.17亿美元。这个数字，跟共享单车、电商、社交网络等互联网领域和科技细分行业相比，可以说微不足道。VR行业经历了：2015年疯狂入局，2016上半年爆发式增长，2016下半年裁员倒闭、融资困难，2017年行业洗牌，行业虚高的泡沫很快被打破。三年间，大起大落的VR行业如同坐了一次过山车。</p>\n                <p>这其实来自于背后的投资人不一样。美国的VR和AR投资最主要集中在大公司上，中国在资本市场上对AR、VR最大的支持来自于上市公司，上市公司是听散户的话的，散户的情绪极其波动，容易形成资本泡沫。</p>\n                <p>在2018年第一季度VR/AR行业共发生46起投资案中，国内企业占11起，相比于去年Q4的61起以及去年Q1的70起，无论是环比还是同比都出现明显下滑。同时，VR/AR 游戏、娱乐、影视公司投资案共7起，相较于去年Q4的9起有所下滑。</p>\n                <p class="img"><img src="http://t11.baidu.com/it/u=2192257048,149579637&fm=173&app=25&f=JPEG?w=640&h=368&s=30D07185084113434431A2990300009F" alt=""></p>\n                <p>由于技术方便的不够成熟和普及，“4分钟花费60万”的VR短片拍摄成本居高不下。因此内容制作公司如何能拿到融资变得极为重要。无论是在欧洲还是澳洲，政府和相关文化部门对于VR的发展都是给予支持的，也许投资的规模仅是百万级别，但却已经能足够支撑创业者继续做下去。</p>\n                <p>在今年圣诞斯电影节上，VR融资和发行企业 CityLights 宣布以7位数的资金收购"Spheres", 这是一个由三部分组成的系列节目, 能让观众利用VR探索太空深处。 虽没有透露具体的数字，但对于从未在圣丹斯电影节上有过任何交易的新生媒介来说，这仍然是一笔大买卖，而且这也证明了VR电影的影响力在不断增强。</p>\n                <p class="img"><img src="http://t12.baidu.com/it/u=2144897603,3417145920&fm=173&app=25&f=JPEG?w=640&h=395&s=6DC09346037E9A730070B89F0300C083" alt=""></p>\n                <p>但目前国内的情况却不容乐观，首先在内容方面，国内的融资就方式较为单一，且由于现在整个影视行业都是高风险投资行业，加上VR的变现能力不强，因此融资渠道更是变窄了不少。目前有效的解决方式就是和国外合作进行内容创作，但同时也需要克服语言障碍和作品思维逻辑不同等问题。</p>\n                <p>面对变现难题，平塔工作室CEO雷峥蒙认为需要找到自己的商业模式，和普通影视作品差不多，平塔工作室的商业模式整体也是三个板块，第一个板块是发行，第二个板块是广告收入，第三个板块是衍生价值。比如在他们制作的入围威尼斯电影节的VR交互动画短片《拾梦老人》中，平塔工作室在短片中设立了一个广告牌并进行了招商，卖给了一家房地产公司。同时在衍生品的销售方面，公司取得的成绩也还不错，和淘宝合作制作的衍生雨伞一家销售了近5万把，每一笔销售都能拿到分账。</p>\n                <p>在欧洲，不少公共图书馆和公共场所都能体验到VR的设备和内容，但在中国目前的普及度还是很低，国内免费体验的场所较少，且体验馆的价位大多在100到500元不等，昂贵的价格把不少感兴趣的用户拒之门外，如果连VR体验都无法在国内进行普及，距离国内VR市场发展进入稳定期还有很远。</p>\n', '', '', 3, '', 1),
(13, '直面5G冲击 传统影视强化技术注重大屏体验', '正如4G时代为视频网站及短视频内容平台架设起飞速发展的快车道，VR借5G网络的“东风”站上行业风口似乎也已成为大势所趋', '            <h3>直面5G冲击 传统影视强化技术注重大屏体验</h3>\n            <p>正如4G时代为视频网站及短视频内容平台架设起飞速发展的快车道，VR借5G网络的“东风”站上行业风口似乎也已成为大势所趋。作为影视行业中最亲近互联网生态的“排头兵”，视频网站势必要基于5G的各项升级对运作模式进行调整。</p>\n            <p>喻国明院长指出：“对于网络公司，尤其视频网站公司而言，在一两年当中还要把自己传统的引领模式尽可能的支撑下去，因为现在的模式相对来说仍然具备可操作性，不能直接放弃，但是必须要不断进行新的尝试。针对5G带来的新销售模式、内容模式，娱乐模式、分发模式，要有积极的探索，这是从服务形态角度（必须进行的市场培育）。”</p>\n            <p>对此，腾讯集团已经做好准备。在腾讯集团副总裁、腾讯影业首席执行官程武看来，5G将是科技时代迎来的又一座里程碑。“科技会给不同行业带来更多机会，腾讯一直坚持‘互联网+’的理念，希望它成为一种赋能工具，为传统行业提供‘水’和‘电’，”他说，“我们要重视电影科技的发展，希望未来能够在电影技术传播，电影本体制作和电影作品再传播的过程中，尽可能做到与5G的更多元结合。”</p>\n            <p class="img"><img src="http://image13.m1905.cn/uploadfile/2019/0308/20190308033810616392.jpg" alt=""></p>\n            <h3>腾讯集团副总裁、腾讯影业首席执行官程武</h3>\n            <p>至于传统影视公司，5G到来之后，他们所要面临的挑战或许更大。博纳影业集团总裁于冬直言不讳：“5G时代对于高清内容的需求和占用消费观影的时间，对（传统）电影会形成一定的冲击。”而如何留住观众，将是传统电影与新兴事物对峙中的关键。</p>\n            <p class="img"><img src="http://image14.m1905.cn/uploadfile/2019/0308/20190308033934766761.jpg" alt=""></p>\n            <h3>博纳影业集团总裁于冬</h3>\n            <p>“剧场式效果给中国电影的技术提升提出了更高的要求。中国电影必须要在技术上打造出观影沉浸式体验感来强化感官效果，把观众牢牢的钉在电影院里。”于冬给出了他理解中的发展方向：“否则我们一味地强调故事，一味强调情感，这些会慢慢把观众拉到小屏内容中去。我们大屏集中观影的这种互动方式，沉浸式的观影感受才是小屏无法体验的。所以中国电影的未来是在剧场式效果（的强化）。”</p>\n            <p>两会期间，中国移动上海公司党委书记、董事长陈力说，今年公司将在上海推动主城区、郊区业务热点区域、垂直行业应用区域的5G连片覆盖，并计划于3月底前与虹口区联合打造第一个“双千兆”示范区域。9月底前，上海全市范围内将全面完成不少于5000个5G基站建设，千兆宽带覆盖560万家庭用户和3000栋楼宇，建成世界级信息基础设施标杆。</p>\n            <p>作为上影集团董事长的任仲伦，也期待这项技术能够被更快的应用到电影制作过程当中。“电影就是艺术加技术，”他说，“5G时代，可能科技会把我们带到全新的世界观里去。如果不关注技术，电影不可能有今天的魅力。一个电影企业如果不关注世界尖端先进技术的演变和发展，就不可能站在电影行业的风口浪尖上。”</p>\n            <p class="img"><img src="http://image14.m1905.cn/uploadfile/2019/0308/20190308034033397699.jpg" alt=""></p>\n            <h3>上影集团董事长任仲伦</h3>\n            <p>2011年，上影集团曾与全球顶尖特效公司共同建立“上影特艺”，为国内及海外市场提供业界顶尖的视频制作、管理、传送及接入解决方案等服务。未来，任仲伦希望该基地能够继续融通全球更多影视资源，借助5G时代的信息处理能力，让上海成为全球影视制作的另一处高地。</p>\n            <p>尽管2019年被视作5G时代的“元年”，不过目前，它在影视、传媒等领域的应用还暂时停留在概念性影响阶段，距离迎来商业化时代的真正开启，还需假以时日。</p>\n            <p>无论是VR还是传统影视制作企业，都应该把握住接下来的时间，不断根据5G的发展，进行技术上的普及，硬件方面的建设以及潜在市场的挖掘与培育。</p>\n            <p>但毫无疑问，5G时代将助力各行各业走向更高质量的发展，改变我们的社会和生活。(时间：2019.03.08 来源：1905电影网作者：獠牙牙)</p>\n', '', '', 3, '', 1),
(14, 'HTC Vive', '使用HTC Vive制作的三部VR电影获得SXSW提名', '            <h3>使用使用HTC Vive制作的三部VR电影获得SXSW提名制作的三部VR电影获得SXSW提名</h3>\n            <p>2019年3月8日HTC Vive与台北金马电影节执行委员会联合组宣布，使用HTC Vive以及 Atlas V制作的《5x1》、《The Making Of》和《Gloomy Eyes》分别获得“最佳360°视频奖”、“最佳沉浸式故事奖”的“最佳沉浸式艺术奖”提名。导演Midi Z的《The Making Of》之前曾获得过2016年威尼斯日最佳故事片菲多拉奖。当他接收到来自SXSW的消息时，他说：“在制作‘The Making OF’的过程中，我感到非常沮丧。随着时间的推进，我的恐惧越来越强烈，我不确定是否要砍掉虚拟现实的想法。但现在我要感谢电影节对我作品的认可。它给了我更多的信心，我希望在未来能够在这个新的流派继续挑战自己。”</p>\n            <p class="img"><img src="http://www.diankeji.com/uploads/file/vr/2019-03-08/bcad594afd82a18460ed2be7e78dade7.jpg" alt=""></p>\n            <h4>VR电影《Gloomy Eyes》</h4>\n            <p>2017年，HTC Vive推出了世界上第一部虚拟现实电影《荒芜》，并在威尼斯电影节上获得提名。然后在2018年，HTC与台北金马电影节执委会合作，制作了由戛纳最佳导演侯孝贤、廖清成执导的VR电影《5x1》。另一方面，HTC Vive还与法国公司Atlas V合作，后者是上一届威尼斯电影节最佳虚拟现实奖得主。HTC Vive与Atlas V合作制作的虚拟现实动画《忧郁的眼睛》，在入选圣丹斯之后，再次入选SXSW。</p>\n            <p>SXSW是世界上最大的音乐节，现在演变成一个将音乐、电影和技术互动艺术结合在一起的创意展会。许多电影大片，如《Ready Player One》、《Star Wars》、HBO的《Westworld》都选择了在SXSW首映。</p>\n', '', '', 3, '', 1),
(15, 'Oculus Rift', 'Steam硬件调查结果显示VR设备中Oculus Rift占比提升', '            <h3>Steam硬件调查结果显示VR设备中Oculus Rift占比提升</h3>\n            <p>近日根据Steam硬件调查结果显示，VR设备中Oculus Rift以及Windows Mixed Reality占比出现提升，相比之下HTC Vive与Oculus Rift的差距再进一步扩大。</p>\n            <p>目前Oculus Rift在Steam平台占比为48.21%(不包含Oculus Rift DK1/2)，而HTC Vive与HTC Vive Pro占比则为41.18%，差距从2月份公布的3.81%扩大至7.03%。</p>\n            <p class="img"><img src="images/newsb1.jpg" alt=""></p>\n            <p>而微软的Windows Mixed Reality头显自去年4月份开始一直保持小幅上涨，如今在steam平台上占比已经达到9.96%，约十分之一!</p>\n            <p>不过接下来steam平台VR硬件的占比或许会发生改变，因为HTC Vive以及Oculus旗下的新品将陆续上市。</p>\n', '', '', 4, '', 1),
(16, 'AR/VR头盔', '高通拟与原始设备制造商合作\r\n为智能手机打造AR/\r\nVR头盔', '            <h3>高通拟与原始设备制造商合作 为智能手机打造AR/VR头盔</h3>\n            <p>为了支持它们的发展，高通表示，它将扩大其HMD加速器计划(HAP)，帮助制造商降低工程成本和缩短发货时间。</p>\n            <p class="img"><img src="http://inews.gtimg.com/newsapp_bt/0/7869219348/641" alt=""></p>\n            <p>腾讯科技讯 据外媒报道，高通认为，高端智能手机有能力支持虚拟现实(VR)和增强现实(AR)体验，因此，它准备与原始设备制造商合作，为智能手机打造AR/VR头盔。</p>\n            <p>今天，在巴塞罗那举行的世界移动大会上，该公司详细介绍了全球首款扩展现实XR专用芯片，该芯片支持小米、vivo、一加、LG、黑鲨和华硕等公司的高端手机与AR/VR头盔连接使用。</p>\n            <p>这家圣地亚哥芯片制造商表示，XR扩展现实专用芯片提供由内向外的六自由度(6DoF)跟踪。它们通过USB Type-C连接到包含其旗舰芯片组Snapdragon 855的手机上。(例如，三星最新发布的Galaxy S10系列、LG的G8 ThinQ和V50 ThinQ 5G以及索尼的Xperia 10、10 Plus和1。)</p>\n            <p>这些AR/VR头盔通常以较低的价格出售，并与手机捆绑在一起销售，而且很快就会带有一个特殊的兼容性标志图标，表明它们已经达到了某些基准性能和兼容性阈值。</p>\n            <p>第一批与基于Snapdragon 855的手机兼容的XR平台是宏碁的Ojo头盔(Ojo Headset)和Nreal的Light AR眼镜，将来还会兼容宏碁、小鸟看看科技(Pico)、Arvizio公司、网易AR、Ioniconic Engine公司、直播VR公司NextVR、商汤科技、宏达电(HTC)和AR平台公司Wikitude等其他原始设备制造商的设备。</p>\n            <p>为了支持它们的发展，高通表示，它将扩大其HMD加速器计划(HAP)，帮助制造商降低工程成本和缩短发货时间。>\n            <p>高通公司产品管理高级总监雨果-斯沃特(Hugo Swart)说：“我们的HMD加速器计划一直是从零部件供应商到ODM(原始设计制造商)等生态系统合作伙伴的关键催化剂，旨在促使它们向消费者提供优质的独立XR头盔。在此计划的基础上，我们将把这一点扩展到XR平台和兼容的智能手机上，首先从采用Snapdragon 855的智能手机开始。通过与生态系统各相关方合作，我们正在努力实现一个共同目标，即通过5G提供优质的、身临其境的体验，从而改变世界的连接和通信方式。”</p>\n            <p>在高通重新致力于打造XR芯片的前两年，该公司宣布了一款基于Snapdragon 820片上系统芯片的独立VR头盔，并在一年多一点的时间里发布了一款配置Snapdragon 845的升级VR头盔。</p>\n            <p>最近，在圣克拉拉举行的2018年增强现实世界博览会上，高通揭开了Snapdragon XR1的面纱。这是一款专门为AR和VR头盔打造的芯片，可提供6自由度(6DoF)、运动跟踪控制器和视觉惯性里程计(VIO)头部跟踪。</p>\n            <p>归根结底，外形是高通的XR平台与XR1平台之间的关键区别。XR1平台内部只有显示器和传感器。XR1头盔采用定制设计的Snapdragon芯片，由Kryo处理器和Adreno图形处理器组成，同时配备光谱图像信号处理器，可在多个显示器上以每秒60帧的速度以最小的延迟时间输出高达4K分辨率的内容。</p>\n            <p>不出所料，XR1芯片的价格更高，对于相当多的消费者来说，这是无法接受的。根据研究公司Techanalysis最近进行的一项调查显示，大约45%的潜在HMD买家认为当今的AR和VR设备太贵。</p>\n            <p>尽管如此，价格实惠的无屏平台——像那些基于高通XR芯片但没有屏幕的头盔——出货量大幅下降，部分原因是设备制造商已不再将其与智能手机搭配销售。根据市场研究公司IDC的统计数据显示，在2018年第三季度，成交量暴跌了59%。</p>\n            <p>从积极的方面来看，整个行业都呈上升趋势。去年夏天，IDC公司乐观地预测，到2022年，AR/VR头盔市场将以52.5%的复合年增长率增长。在去年12月，它还报告称，VR和AR硬件发货量在去年第三季度分别实现了8.2%和1.1%的同比增长。</p>\n            <p>高通重新押注XR1芯片将有助于扭转中低端头盔市场的局面。但是，只有时间能给出答案。（腾讯科技审校/乐学）</p>\n', '', '', 4, '', 1),
(17, '扩展iPhone功能', '分析师预测苹果今年Q4量产AR眼镜 扩展iPhone功能', '            <h3>分析师预测苹果今年Q4量产AR眼镜 扩展iPhone功能</h3>\n            <p>苹果对于AR一直抱有浓厚的兴趣，这点从苹果发布会上屡次登场的AR应用、苹果CEO蒂姆库克的“强烈推荐”中不难看出。近日著名分析师郭明錤公布了一份最新报告显示，苹果最快将于2019年Q4量产AR头戴设备，不过他也谈到该时间节点有可能推迟至2020年Q2。</p>\n            <p class="img"><img src="images/newsb3.jpg" alt=""></p>\n            <p>与此前亮相的HoloLens或者Magic Leap One不同，苹果打造的收款AR眼镜更多的是作为“显示屏”与iPhone组合使用，没错iPhone负责连接、运算等工作。因此，苹果AR眼镜或许能够设计的更加轻薄，佩戴体验更为舒适，同时众多基于苹果ARKit设计的软件将迎来“春天”。</p>\n            <p class="img"><img src="images/newsb4.jpg" alt=""></p>\n            <p>近两年iPhone在创新方面的表现并不让人满意，或许推出AR眼镜将有望实现“曲线救国”。</p>\n', '', '', 4, '', 1),
(18, 'VR/AR设备汇总', 'CES汇集了全球的各大科技厂商，在这里他们都会拿出最新的科技产品来证实其公司实力。在这里我们可以看到许多的黑科技产品。', '            <h3>CES 2019：全球最新VR/AR设备汇总</h3>\n            <p>在本月8日一年一度的CES在美国的拉斯维加斯正式拉开帷幕，作为目前全球最大的科技展会之一。CES汇集了全球的各大科技厂商，在这里他们都会拿出最新的科技产品来证实其公司实力。在这里我们可以看到许多的黑科技产品。</p>\n            <p>作为一名科技爱好者笔者也很关注这场盛会，鉴于产品的种类比较烦多因此我挑选了一些认为有代表性的产品和大家分享下。</p>\n            <h4>DigiLens发布最新AR眼镜原型</h4>\n            <p class="img"><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3765260386,1212787013&fm=173&app=49&f=JPEG?w=550&h=276&s=FF2393477E325413C81C947A0300C068" alt=""></p>\n            <p>硅谷波导公司DigiLens展示了其最新的Crystal AR眼镜原型。DigiLens制作的全新光波导显示屏具有高透明度、重量轻的特点。</p>\n            <p>Crystal眼镜的FOV约30°，戴的时间越久，FOV会慢慢变大。此外，眼镜一侧搭载一颗8百万像素摄像头，另一侧搭载投射装置，仅有一块透镜集成了全息光波导技术。</p>\n            <h4>Nokov（度量）光学三维动作捕捉系统携全新产品</h4>\n            <p class="img"><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1951652104,1319421772&fm=173&app=49&f=JPEG?w=536&h=395&s=AA02618542644CBED288EDCA0300F093" alt=""></p>\n            <p>Nokov（度量）光学三维动作捕捉系统携全新产品——VR开发定位套件亮相CES South Hall 3 30359展位，树立动作捕捉行业标杆。此套件专为VR客户和集成商打造，可作为空间定位系统，与HMD、Cave、3D LED等集成，构建超低延迟的VR应用解决方案。</p>\n            <h4>ThirdEye正式推出X2智能眼镜</h4>\n            <p class="img"><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2827044888,3072824087&fm=173&app=49&f=JPEG?w=550&h=262&s=E0F21A663800077EC2E0689E0100C082" alt=""></p>\n            <p>展会上，AR眼镜制造商ThirdEye演示了其X2智能眼镜。</p>\n            <p>整个眼镜采用一体化设计，整体为黑色，眼镜腿部分为红色，简约而不失大气。X2眼镜的FOV为45度，内置处理器、电池、WiFi、蓝牙、GPS等模组。</p>\n            <p>X2内置了一系列的软件，如The ThirdEye App Suite，这为智能眼镜提供了完整的MR软件平台。这款眼镜搭载Android 8.0平台，并为全球开发者创建了一个专用平台，允许他们将AR、VR和MR应用程序提交至ThirdEye App Store。</p>\n            <p>这款设备已经可以通过ThirdEye官网进行预购，售价1950美元（不含运费）。</p>\n            <h4>创维两款全新VR一体机</h4>\n            <p class="img"><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3967722514,2562297133&fm=173&app=49&f=JPEG?w=550&h=299&s=6E841D6370E696A667015CC60100E0E3" alt=""></p>\n            <p>国产品牌创维也在美国消费者电子展CES 2019上展出两款全新的VR一体机，分别具备3K分辨率（2880 x 1600）和4K分辨率（3840 x 2160），主打影视娱乐消费。预计今年4月上市。</p>\n            <p>最新亮相的VR头显是在2018年推出的3K VR一体机S8000上进行了全新设计，并同时增加了4K版。采用三星的Exynos 8895芯片，支持8K视频硬解码。4K分辨率超高清显示屏和8K硬解码技术的组合可大幅减轻纱窗效应，为用户带来更细腻的视觉效果，更好的沉浸式观影娱乐。</p>\n            <p>为了兼顾更多用户需求，创维还将推出一款消费级产品，主打高性价比。全新设计的VR一体机都是采用Fast-LCD显示屏，重量在330克左右，具备110度FOV，提供头手三自由度交互，另外还提供无线充电功能。新品预计在2019年4月份上市，其中3K版预计价格在1000元以内，4K版价格有待进一步公布。</p>\n            <p>DigiLens发布最新AR眼镜原型</p>\n            <p class="img"><img src="" alt="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2772108573,3867962522&fm=173&app=49&f=JPEG?w=550&h=286&s=AE72478708516AD642B59CD903004093"></p>\n            <p>硅谷波导公司DigiLens展示了其最新的Crystal AR眼镜原型。DigiLens制作的全新光波导显示屏具有高透明度、重量轻的特点。</p>\n            <p>Crystal眼镜的FOV约30°，戴的时间越久，FOV会慢慢变大。此外，眼镜一侧搭载一颗8百万像素摄像头，另一侧搭载投射装置，仅有一块透镜集成了全息光波导技术。</p>\n            <p>Pickett表示，Crystal参考设计仅采用两层全彩光波导，与Magic Leap的单眼6层光波导相比成本大大降低，通过这种参考设计，让获得授权的公司自行制造眼镜。</p>\n            <p>Pico带来最新一款VR一体机G2 4K</p>\n            <p class="img"><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3825482478,3575911842&fm=173&app=49&f=JPEG?w=545&h=361&s=FD904B9548633A9076B45925030070E0" alt=""></p>\n            <p>Pico带来最新一款VR一体机G2 4K，它保持了Pico G2简雅外观和舒适佩戴设计，在保证高端性能配置和画面流畅稳定的同时，将屏幕分辨率从3K升级为4K，画质更加清晰细腻，屏幕颗粒感大大降低，现场带来视觉冲击力极强的VR体验，在以清晰度和显示效果为“硬指标”的虚拟现实领域是革命性的进步。新版G2 4K可完美解码至高8K的360度的VR视频内容，配合精准流畅的手柄追踪交互，再一次将VR“沉浸感”推向极致。</p>\n            <p>近期，Pico已与眼球追踪技术服务商七鑫易维展开合作，合力开发出一套基于G2 4K的眼球追踪行业解决方案，可应用于心理医疗预测和治愈，以及眼科疾病检测和治疗。这套方案也可以广泛应用于社交应用、眼动游戏、眼动分析等领域。据悉，Pico G2 4K产品将很快发布上市，具体配置、售价信息也将一一揭晓</p>\n            <h4>TPCAST Air为VR企业提供第二代无线传输解决方案</h4>\n            <p class="img"><img src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3988568408,244955380&fm=173&app=49&f=JPEG?w=550&h=312&s=0AE27A2318E436861D3CA116010080A0" alt=""></p>\n            <p>中国科技初创公司TPCAST在将注意力转向Oculus Rift之前，首先为HTC Vive设计了一款无线解决方案。对于CES 2019，该公司现在已经发布了第二代无线解决方案，TPCAST Air，专为多用户工业和企业VR应用而设计。</p>\n            <p>该解决方案基于TPCAST的实时编解码技术（RTCodec and RTCIP），能够利用常规Wi-Fi网络在VR一体机上显示PC VR应用。目前支持Oculus Go等头显，未来TPCAST将增加对Oculus Quest的支持。</p>\n            <h4>VIVE COSMOS产品</h4>\n            <p class="img"><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=846412500,3688219786&fm=173&app=49&f=JPEG?w=547&h=262&s=0385DD0454BE3B84310FD48C0300A0E8" alt=""></p>\n            <p>VIVE COSMOS是为了满足用户需求，让VR更具有扩展性而诞生的，而“COSMOS”就带着一个“巨大宇宙的概念”，公司高层对此也很满意。</p>\n            <p>关于VIVE COSMOS所使用的inside-out追踪技术，汪丛青做了回应。对比微软的MR系列头显以及现状，他表示，MR及inside-out追踪技术并非微软主要的产品，而HTC不同，他们聚焦这个技术上。如果没有更多的投入，在inside-out方面就无法取得进步。</p>\n            <h4>Insta360 Titan</h4>\n            <p class="img"><img src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=4076332169,3405202575&fm=173&app=49&f=JPEG?w=543&h=297&s=69603A62004E2B559CE0340B0100E0C1" alt=""></p>\n            <p>全景相机品牌Insta360宣布，11K电影级VR摄影机Insta360 Titan在全球范围内开启预售。</p>\n            <p>Titan是全球率先采用MFT传感器的8目VR摄影机，具备超强防抖和高帧率功能，支持 10bit色彩取样，可搭配Farsight图传，将为用户带来高品质11K 3D全景影像解决方案。</p>\n            <p>Titan是全球首款采用M4/3传感器的8目VR摄影机。通过实时拼接，可实现11K 3D、11K 2D全景照片，4K 3D@30fps及4K 2D@30fps全景视频，大幅提高产出效率。采用后期拼接，则可实现11K 2D、10K 3D@30fps 及5.3K@120fps全景视频制作。</p>\n            <h4>3dRudder ：适配PSVR的足部控制器</h4>\n            <p class="img"><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3253335987,3205286470&fm=173&app=49&f=JPEG?w=541&h=304&s=EDE28F465FE0877644591D0A0100A0C1" alt=""></p>\n            <p>这款足部运动控制器由一个圆形平台控制器组成，玩家可以在体验VR时把自己的脚放在上面，然后向想要在VR中移动的方向倾斜称，这款设备的设计初衷是为了以更舒适的方式模拟在VR中的运动。</p>\n            <p>3dRudder表示，预计将会有超过20款的游戏支持该套件，但目前只有7款在其官网上列出，其中包括许多知名游戏，如《Ultrawings》，《Sairento》以及近期人气火热的《Red Matter》。不过，它最吸引人的地方是即将推出的Carbon Studios‘The Wizards的PSVR版。(新浪VR 1-10)</p>\n', '', '', 4, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tv_new_class`
--

CREATE TABLE IF NOT EXISTS `tv_new_class` (
  `nl_id` int(11) NOT NULL AUTO_INCREMENT,
  `nl_title` varchar(30) NOT NULL,
  `nl_isshow` tinyint(4) NOT NULL,
  PRIMARY KEY (`nl_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tv_new_class`
--

INSERT INTO `tv_new_class` (`nl_id`, `nl_title`, `nl_isshow`) VALUES
(1, '社交网络', 1),
(2, 'VR 游戏', 1),
(3, 'VR 影视', 1),
(4, 'VR 设备', 1),
(5, '主新闻', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tv_rec`
--

CREATE TABLE IF NOT EXISTS `tv_rec` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_img` varchar(100) NOT NULL,
  `r_thumb` varchar(110) NOT NULL,
  `r_link` varchar(100) NOT NULL,
  `r_title` varchar(20) NOT NULL,
  `r_txt` varchar(30) NOT NULL,
  `r_detail` text NOT NULL,
  `r_isshow` tinyint(4) NOT NULL,
  `rl_id` int(11) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `tv_rec`
--

INSERT INTO `tv_rec` (`r_id`, `r_img`, `r_thumb`, `r_link`, `r_title`, `r_txt`, `r_detail`, `r_isshow`, `rl_id`) VALUES
(1, '2019/05/155686657798904.jpg', '2019-05/03/155686657798904.jpg', '', 'Dream World', '遇见美好，遇见生活', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, 1),
(2, '2019/05/15568665049277.jpg', '2019-05/03/15568665049277.jpg', '', 'Fallout 4 VR(辐射4 VR)', '角色扮演，未来战争', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, 2),
(3, '2019/05/155686614467892.jpg', '2019-05/03/155686614467892.jpg', '', '生化危机', '城市猎人，丧尸屠戮', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;城市猎人，丧尸屠戮 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, 2),
(4, '2019/05/155686612784255.jpg', '2019-05/03/155686612784255.jpg', '', '头号玩家', '甘于现实，征战未来？    ', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, 3),
(5, '2019/05/155686648824163.jpg', '2019-05/03/155686648824163.jpg', '', '星际争霸', '流浪星空，征战星际    ', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, 3),
(9, '2019/05/155679374291101.jpg', '2019-05/02/155679374291101.jpg', '', '无限行驶', '速度激情，空间无限   ', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, 4),
(10, '2019/05/155693694062655.jpg', '2019-05/04/155693694062655.jpg', '', '主题酒店', '与你有约，非诚勿扰', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, 1),
(11, '2019/05/155693869674230.jpg', '2019-05/04/155693869674230.jpg', '', '太空舱', '暗黑系列，幻影星空', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, 4);

-- --------------------------------------------------------

--
-- 表的结构 `tv_rec_class`
--

CREATE TABLE IF NOT EXISTS `tv_rec_class` (
  `rl_id` int(11) NOT NULL AUTO_INCREMENT,
  `rl_title` varchar(30) NOT NULL,
  `rl_link` varchar(100) NOT NULL,
  PRIMARY KEY (`rl_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `tv_rec_class`
--

INSERT INTO `tv_rec_class` (`rl_id`, `rl_title`, `rl_link`) VALUES
(1, '社交网络', 'rec.php'),
(2, 'VR 游戏', 'game.php'),
(3, 'VR 影视', 'move.php'),
(4, 'VR 设备', 'recsb.php');

-- --------------------------------------------------------

--
-- 表的结构 `tv_user`
--

CREATE TABLE IF NOT EXISTS `tv_user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `u_name` varchar(30) DEFAULT NULL,
  `u_password` varchar(32) DEFAULT NULL,
  `u_sex` tinyint(4) DEFAULT NULL,
  `u_phone` varchar(20) DEFAULT NULL,
  `u_email` varchar(100) DEFAULT NULL,
  `u_birthday` varchar(20) DEFAULT NULL,
  `u_photo1` varchar(100) DEFAULT NULL,
  `u_photo2` varchar(100) DEFAULT NULL,
  `u_real` varchar(20) DEFAULT NULL,
  `lasttime` varchar(50) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `tv_user`
--

INSERT INTO `tv_user` (`u_id`, `u_name`, `u_password`, `u_sex`, `u_phone`, `u_email`, `u_birthday`, `u_photo1`, `u_photo2`, `u_real`, `lasttime`) VALUES
(25, 'ssss', '81dc9bdb52d04dc20036dbd8313ed05', 0, '123', 'asd', '2019-04-25', NULL, NULL, '355', '1556193461'),
(26, '1234', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1556242933'),
(22, 'admin', 'e034fb6b66aacc1d48f445ddfb08da98', 0, '', '', '2019-04-26', NULL, NULL, '', '1556242542'),
(27, 'sdasd', '3bad6af0fa4b8b330d162e19938ee981', 0, 'asad', 'ss', 'NaN-NaN-NaN', '2019/04/155628094369879.jpg', '2019-04/26/155628094369879.jpg', '', '1556242542'),
(32, '1234s', '8f60c8102d29fcd525162d02eed4566b', 0, '33', '2', '2019-04-27', '2019/04/15562954721095.jpg', '2019-04/27/15562954721095.jpg', '', ''),
(33, '1111', 'b0baee9d279d34fa1dfd71aadb908c3f', 0, '', '', '2019-05-14', '2019/05/15571973011599.jpg', '2019-05/07/15571973011599.jpg', '', '1557201389'),
(39, 'wwww', 'b59c67bf196a4758191e42f76670ceba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(42, '1111111', 'b0baee9d279d34fa1dfd71aadb908c3f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(43, '111111', 'afcb7a2f1c158286b48062cd885a9866', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
