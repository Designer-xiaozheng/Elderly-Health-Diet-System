DROP TABLE IF EXISTS `ordinary_users`;
CREATE TABLE `ordinary_users`(
	   `ordinary_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '普通用户ID',
`user_number` varchar(64) comment '用户编号',
`user_mobile_phone` varchar(64) NOT NULL UNIQUE comment '用户手机',
`user_mailbox` varchar(64) NOT NULL UNIQUE comment '用户邮箱',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ordinary_users_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '普通用户';

DROP TABLE IF EXISTS `daily_movie`;
CREATE TABLE `daily_movie`(
	   `daily_movie_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '每日电影ID',
`movie_title` varchar(64) comment '电影名称',
`alias` varchar(64) comment '别名',
`director` varchar(64) comment '导演',
`screenwriter` varchar(64) comment '编剧',
`performer` varchar(64) comment '演员',
`type` varchar(64) comment '类型',
`country` varchar(64) comment '国家',
`language` varchar(64) comment '语言',
`particular_year` varchar(64) comment '年份',
`film_length` varchar(64) comment '片长',
`release_time` varchar(64) comment '上映时间',
`official_website` varchar(255) comment '官方网站',
`idmb_link` varchar(255) comment 'IDMB链接',
`idmb_score` varchar(64) comment 'IDMB评分',
`douban_score` varchar(64) comment '豆瓣评分',
`awards` varchar(64) comment '获奖情况',
`movie_poster` varchar(255) comment '影片海报',
`similar_film_recommendation` varchar(64) comment '相似电影推荐',
`plot` text comment '剧情',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (daily_movie_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '每日电影';
insert into `daily_movie` values (1,'电影名称1','别名1','导演1','编剧1','演员1','类型1','国家1','语言1','年份1','片长1','上映时间1','www.baidu.com','www.baidu.com','IDMB评分1','豆瓣评分1','获奖情况1','/api/upload/image_1645265004645.jpg','相似电影推荐1','剧情1','81','771','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `daily_movie` values (2,'电影名称2','别名2','导演2','编剧2','演员2','类型2','国家2','语言2','年份2','片长2','上映时间2','www.baidu.com','www.baidu.com','IDMB评分2','豆瓣评分2','获奖情况2','/api/upload/image_1645162515558.jpg','相似电影推荐2','剧情2','835','35','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `daily_movie` values (3,'电影名称3','别名3','导演3','编剧3','演员3','类型3','国家3','语言3','年份3','片长3','上映时间3','www.baidu.com','www.baidu.com','IDMB评分3','豆瓣评分3','获奖情况3','/api/upload/image_1645162515365.jpg','相似电影推荐3','剧情3','468','597','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `daily_movie` values (4,'电影名称4','别名4','导演4','编剧4','演员4','类型4','国家4','语言4','年份4','片长4','上映时间4','www.baidu.com','www.baidu.com','IDMB评分4','豆瓣评分4','获奖情况4','/api/upload/image_1645162515410.jpg','相似电影推荐4','剧情4','292','396','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `daily_movie` values (5,'电影名称5','别名5','导演5','编剧5','演员5','类型5','国家5','语言5','年份5','片长5','上映时间5','www.baidu.com','www.baidu.com','IDMB评分5','豆瓣评分5','获奖情况5','/api/upload/image_1645162515558.jpg','相似电影推荐5','剧情5','837','872','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `daily_movie` values (6,'电影名称6','别名6','导演6','编剧6','演员6','类型6','国家6','语言6','年份6','片长6','上映时间6','www.baidu.com','www.baidu.com','IDMB评分6','豆瓣评分6','获奖情况6','/api/upload/image_1645162515531.jpg','相似电影推荐6','剧情6','711','754','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `daily_movie` values (7,'电影名称7','别名7','导演7','编剧7','演员7','类型7','国家7','语言7','年份7','片长7','上映时间7','www.baidu.com','www.baidu.com','IDMB评分7','豆瓣评分7','获奖情况7','/api/upload/image_1645265004645.jpg','相似电影推荐7','剧情7','4','721','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `daily_movie` values (8,'电影名称8','别名8','导演8','编剧8','演员8','类型8','国家8','语言8','年份8','片长8','上映时间8','www.baidu.com','www.baidu.com','IDMB评分8','豆瓣评分8','获奖情况8','/api/upload/image_1645162515485.jpg','相似电影推荐8','剧情8','255','646','0','2022-04-11 21:04:22','2022-04-11 21:04:22');

DROP TABLE IF EXISTS `high_score_film`;
CREATE TABLE `high_score_film`(
	   `high_score_film_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '高分电影ID',
`movie_title` varchar(64) comment '电影名称',
`alias` varchar(64) comment '别名',
`director` varchar(64) comment '导演',
`screenwriter` varchar(64) comment '编剧',
`performer` varchar(64) comment '演员',
`type` varchar(64) comment '类型',
`country` varchar(64) comment '国家',
`language` varchar(64) comment '语言',
`particular_year` varchar(64) comment '年份',
`film_length` varchar(64) comment '片长',
`release_time` varchar(64) comment '上映时间',
`official_website` varchar(255) comment '官方网站',
`idmb_link` varchar(255) comment 'IDMB链接',
`idmb_score` varchar(64) comment 'IDMB评分',
`douban_score` varchar(64) comment '豆瓣评分',
`awards` varchar(64) comment '获奖情况',
`movie_poster` varchar(255) comment '影片海报',
`similar_film_recommendation` varchar(64) comment '相似电影推荐',
`plot` text comment '剧情',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (high_score_film_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '高分电影';
insert into `high_score_film` values (1,'电影名称1','别名1','导演1','编剧1','演员1','类型1','国家1','语言1','年份1','片长1','上映时间1','www.baidu.com','www.baidu.com','IDMB评分1','豆瓣评分1','获奖情况1','/api/upload/image_1645265004623.jpg','相似电影推荐1','剧情1','835','495','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `high_score_film` values (2,'电影名称2','别名2','导演2','编剧2','演员2','类型2','国家2','语言2','年份2','片长2','上映时间2','www.baidu.com','www.baidu.com','IDMB评分2','豆瓣评分2','获奖情况2','/api/upload/image_1645265004615.jpg','相似电影推荐2','剧情2','45','725','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `high_score_film` values (3,'电影名称3','别名3','导演3','编剧3','演员3','类型3','国家3','语言3','年份3','片长3','上映时间3','www.baidu.com','www.baidu.com','IDMB评分3','豆瓣评分3','获奖情况3','/api/upload/image_1645162515349.jpg','相似电影推荐3','剧情3','840','333','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `high_score_film` values (4,'电影名称4','别名4','导演4','编剧4','演员4','类型4','国家4','语言4','年份4','片长4','上映时间4','www.baidu.com','www.baidu.com','IDMB评分4','豆瓣评分4','获奖情况4','/api/upload/image_1645265004606.jpg','相似电影推荐4','剧情4','590','114','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `high_score_film` values (5,'电影名称5','别名5','导演5','编剧5','演员5','类型5','国家5','语言5','年份5','片长5','上映时间5','www.baidu.com','www.baidu.com','IDMB评分5','豆瓣评分5','获奖情况5','/api/upload/image_1645265004623.jpg','相似电影推荐5','剧情5','875','210','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `high_score_film` values (6,'电影名称6','别名6','导演6','编剧6','演员6','类型6','国家6','语言6','年份6','片长6','上映时间6','www.baidu.com','www.baidu.com','IDMB评分6','豆瓣评分6','获奖情况6','/api/upload/image_1645265004623.jpg','相似电影推荐6','剧情6','926','110','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `high_score_film` values (7,'电影名称7','别名7','导演7','编剧7','演员7','类型7','国家7','语言7','年份7','片长7','上映时间7','www.baidu.com','www.baidu.com','IDMB评分7','豆瓣评分7','获奖情况7','/api/upload/image_1645265004645.jpg','相似电影推荐7','剧情7','726','114','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `high_score_film` values (8,'电影名称8','别名8','导演8','编剧8','演员8','类型8','国家8','语言8','年份8','片长8','上映时间8','www.baidu.com','www.baidu.com','IDMB评分8','豆瓣评分8','获奖情况8','/api/upload/image_1645162515439.jpeg','相似电影推荐8','剧情8','616','382','0','2022-04-11 21:04:22','2022-04-11 21:04:22');

DROP TABLE IF EXISTS `popular_movies`;
CREATE TABLE `popular_movies`(
	   `popular_movies_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '热门电影ID',
`movie_title` varchar(64) comment '电影名称',
`alias` varchar(64) comment '别名',
`director` varchar(64) comment '导演',
`screenwriter` varchar(64) comment '编剧',
`performer` varchar(64) comment '演员',
`type` varchar(64) comment '类型',
`country` varchar(64) comment '国家',
`language` varchar(64) comment '语言',
`particular_year` varchar(64) comment '年份',
`film_length` varchar(64) comment '片长',
`release_time` varchar(64) comment '上映时间',
`official_website` varchar(255) comment '官方网站',
`idmb_link` varchar(255) comment 'IDMB链接',
`idmb_score` varchar(64) comment 'IDMB评分',
`douban_score` varchar(64) comment '豆瓣评分',
`awards` varchar(64) comment '获奖情况',
`movie_poster` varchar(255) comment '影片海报',
`similar_film_recommendation` varchar(64) comment '相似电影推荐',
`plot` text comment '剧情',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (popular_movies_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '热门电影';
insert into `popular_movies` values (1,'电影名称1','别名1','导演1','编剧1','演员1','类型1','国家1','语言1','年份1','片长1','上映时间1','www.baidu.com','www.baidu.com','IDMB评分1','豆瓣评分1','获奖情况1','/api/upload/image_1645162515558.jpg','相似电影推荐1','剧情1','86','247','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `popular_movies` values (2,'电影名称2','别名2','导演2','编剧2','演员2','类型2','国家2','语言2','年份2','片长2','上映时间2','www.baidu.com','www.baidu.com','IDMB评分2','豆瓣评分2','获奖情况2','/api/upload/image_1645265004632.jpg','相似电影推荐2','剧情2','457','900','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `popular_movies` values (3,'电影名称3','别名3','导演3','编剧3','演员3','类型3','国家3','语言3','年份3','片长3','上映时间3','www.baidu.com','www.baidu.com','IDMB评分3','豆瓣评分3','获奖情况3','/api/upload/image_1645162515485.jpg','相似电影推荐3','剧情3','632','951','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `popular_movies` values (4,'电影名称4','别名4','导演4','编剧4','演员4','类型4','国家4','语言4','年份4','片长4','上映时间4','www.baidu.com','www.baidu.com','IDMB评分4','豆瓣评分4','获奖情况4','/api/upload/image_1645265004619.jpg','相似电影推荐4','剧情4','823','951','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `popular_movies` values (5,'电影名称5','别名5','导演5','编剧5','演员5','类型5','国家5','语言5','年份5','片长5','上映时间5','www.baidu.com','www.baidu.com','IDMB评分5','豆瓣评分5','获奖情况5','/api/upload/image_1645265004615.jpg','相似电影推荐5','剧情5','911','624','0','2022-04-11 21:04:22','2022-04-11 21:04:22');
insert into `popular_movies` values (6,'电影名称6','别名6','导演6','编剧6','演员6','类型6','国家6','语言6','年份6','片长6','上映时间6','www.baidu.com','www.baidu.com','IDMB评分6','豆瓣评分6','获奖情况6','/api/upload/image_1645162515364.jpg','相似电影推荐6','剧情6','120','841','0','2022-04-11 21:04:23','2022-04-11 21:04:23');
insert into `popular_movies` values (7,'电影名称7','别名7','导演7','编剧7','演员7','类型7','国家7','语言7','年份7','片长7','上映时间7','www.baidu.com','www.baidu.com','IDMB评分7','豆瓣评分7','获奖情况7','/api/upload/image_1645162515365.jpg','相似电影推荐7','剧情7','86','945','0','2022-04-11 21:04:23','2022-04-11 21:04:23');
insert into `popular_movies` values (8,'电影名称8','别名8','导演8','编剧8','演员8','类型8','国家8','语言8','年份8','片长8','上映时间8','www.baidu.com','www.baidu.com','IDMB评分8','豆瓣评分8','获奖情况8','/api/upload/image_1645265004623.jpg','相似电影推荐8','剧情8','333','121','0','2022-04-11 21:04:23','2022-04-11 21:04:23');

DROP TABLE IF EXISTS `all_movies`;
CREATE TABLE `all_movies`(
	   `all_movies_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '所有电影ID',
`movie_title` varchar(64) comment '电影名称',
`alias` varchar(64) comment '别名',
`director` varchar(64) comment '导演',
`screenwriter` varchar(64) comment '编剧',
`performer` varchar(64) comment '演员',
`type` varchar(64) comment '类型',
`country` varchar(64) comment '国家',
`language` varchar(64) comment '语言',
`particular_year` varchar(64) comment '年份',
`film_length` varchar(64) comment '片长',
`release_time` varchar(64) comment '上映时间',
`official_website` varchar(255) comment '官方网站',
`idmb_link` varchar(255) comment 'IDMB链接',
`idmb_score` varchar(64) comment 'IDMB评分',
`douban_score` varchar(64) comment '豆瓣评分',
`awards` varchar(64) comment '获奖情况',
`movie_poster` varchar(255) comment '影片海报',
`similar_film_recommendation` varchar(64) comment '相似电影推荐',
`plot` text comment '剧情',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (all_movies_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '所有电影';
insert into `all_movies` values (1,'电影名称1','别名1','导演1','编剧1','演员1','类型1','国家1','语言1','年份1','片长1','上映时间1','www.baidu.com','www.baidu.com','IDMB评分1','豆瓣评分1','获奖情况1','/api/upload/image_1645162515531.jpg','相似电影推荐1','剧情1','224','476','0','2022-04-11 21:04:23','2022-04-11 21:04:23');
insert into `all_movies` values (2,'电影名称2','别名2','导演2','编剧2','演员2','类型2','国家2','语言2','年份2','片长2','上映时间2','www.baidu.com','www.baidu.com','IDMB评分2','豆瓣评分2','获奖情况2','/api/upload/image_1645162515485.jpg','相似电影推荐2','剧情2','319','660','0','2022-04-11 21:04:23','2022-04-11 21:04:23');
insert into `all_movies` values (3,'电影名称3','别名3','导演3','编剧3','演员3','类型3','国家3','语言3','年份3','片长3','上映时间3','www.baidu.com','www.baidu.com','IDMB评分3','豆瓣评分3','获奖情况3','/api/upload/image_1645162515364.jpg','相似电影推荐3','剧情3','657','535','0','2022-04-11 21:04:23','2022-04-11 21:04:23');
insert into `all_movies` values (4,'电影名称4','别名4','导演4','编剧4','演员4','类型4','国家4','语言4','年份4','片长4','上映时间4','www.baidu.com','www.baidu.com','IDMB评分4','豆瓣评分4','获奖情况4','/api/upload/image_1645162515531.jpg','相似电影推荐4','剧情4','3','269','0','2022-04-11 21:04:23','2022-04-11 21:04:23');
insert into `all_movies` values (5,'电影名称5','别名5','导演5','编剧5','演员5','类型5','国家5','语言5','年份5','片长5','上映时间5','www.baidu.com','www.baidu.com','IDMB评分5','豆瓣评分5','获奖情况5','/api/upload/image_1645162515382.jpeg','相似电影推荐5','剧情5','66','434','0','2022-04-11 21:04:23','2022-04-11 21:04:23');
insert into `all_movies` values (6,'电影名称6','别名6','导演6','编剧6','演员6','类型6','国家6','语言6','年份6','片长6','上映时间6','www.baidu.com','www.baidu.com','IDMB评分6','豆瓣评分6','获奖情况6','/api/upload/image_1645265004645.jpg','相似电影推荐6','剧情6','851','991','0','2022-04-11 21:04:23','2022-04-11 21:04:23');
insert into `all_movies` values (7,'电影名称7','别名7','导演7','编剧7','演员7','类型7','国家7','语言7','年份7','片长7','上映时间7','www.baidu.com','www.baidu.com','IDMB评分7','豆瓣评分7','获奖情况7','/api/upload/image_1645162515382.jpeg','相似电影推荐7','剧情7','977','5','0','2022-04-11 21:04:23','2022-04-11 21:04:23');
insert into `all_movies` values (8,'电影名称8','别名8','导演8','编剧8','演员8','类型8','国家8','语言8','年份8','片长8','上映时间8','www.baidu.com','www.baidu.com','IDMB评分8','豆瓣评分8','获奖情况8','/api/upload/image_1645162515531.jpg','相似电影推荐8','剧情8','322','571','0','2022-04-11 21:04:23','2022-04-11 21:04:23');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` varchar(500) DEFAULT NULL COMMENT '添加字段：',
  `field_set` varchar(500) DEFAULT NULL COMMENT '修改字段：',
  `field_get` varchar(500) DEFAULT NULL COMMENT '查询字段：',
  `table_nav_name` varchar(255) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(255) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定制授权';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '论坛id',
  `display` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `praise_len` int(10) unsigned DEFAULT '0' COMMENT '点赞数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问数',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(125) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `img` text COMMENT '封面图',
  `content` longtext COMMENT '正文',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '发帖人头像：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '论坛分类：[0,1000]用来搜索指定类型的论坛帖',
  PRIMARY KEY (`forum_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='论坛：';
insert into `forum` values ('1','100','1','小明','0','149','测试标题','关键字1','描述','#','标签','/static/img/img_temp.jpg','<h1>fafgwagbagbwgwag</h1>',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'http://localhost:5000/upload/jingdian (11)_15.jpg','0');
insert into `forum` values ('2','100','2','小明','0','30','测试标题2','关键字2','dec','#','标签','/static/img/img_temp.jpg','测试文章内容2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('3','100','2','小红','0','42','测试标题3','关键字3','dec2','#','标签','/static/img/img_temp.jpg','测试文章内容3',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('4','100','2','小红','0','22','测试标题4','关键字4','dec3','#','标签','/static/img/img_temp.jpg','测试文章内容4',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
DROP TABLE IF EXISTS `forum_type`;
CREATE TABLE `forum_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类图标：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='论坛频道：用于汇总浏览论坛，在不同频道下展示不同论坛。';
insert into `forum_type` values ('1','休闲','描述','/article/list?type_id=1','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('2','娱乐','企业信息描述描述描述描述','/article/list?type_id=2','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('3','开心','操作帮助描述描述描述','/article/list?type_id=3','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `auth` values ('1','管理员','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','1','1','1','1','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('2','管理员','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','1','1','1','1','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('3','管理员','每日电影','daily_movie','每日电影','/daily_movie/table','','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('4','管理员','每日电影','daily_movie','每日电影详情','/daily_movie/view','','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('5','管理员','每日电影','daily_movie','每日电影','/daily_movie/list','top','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('6','管理员','每日电影','daily_movie','每日电影详情','/daily_movie/details','','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('7','管理员','高分电影','high_score_film','高分电影','/high_score_film/table','','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('8','管理员','高分电影','high_score_film','高分电影详情','/high_score_film/view','','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('9','管理员','高分电影','high_score_film','高分电影','/high_score_film/list','top','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('10','管理员','高分电影','high_score_film','高分电影详情','/high_score_film/details','','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('11','管理员','热门电影','popular_movies','热门电影','/popular_movies/table','','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('12','管理员','热门电影','popular_movies','热门电影详情','/popular_movies/view','','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('13','管理员','热门电影','popular_movies','热门电影','/popular_movies/list','top','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('14','管理员','热门电影','popular_movies','热门电影详情','/popular_movies/details','','_blank','1','1','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('15','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('16','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('17','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('18','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('19','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('20','管理员','论坛','forum','影片交流','/forum/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"import_db":true,"export_db":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('21','管理员','论坛','forum','影片交流','/forum/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('22','管理员','论坛','forum','影片交流','/forum/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('23','管理员','论坛','forum','影片交流','/forum/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('24','管理员','论坛分类','forum_type','论坛分类列表','/forum_type/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('25','管理员','论坛分类','forum_type','论坛分类详情','/forum_type/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('26','管理员','新闻','article','新闻列表','/article/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"import_db":true,"export_db":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('27','管理员','新闻','article','新闻详情','/article/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('28','管理员','新闻','article','影片资讯','/article/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('29','管理员','新闻','article','影片资讯','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('30','管理员','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('31','管理员','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('32','游客','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','1','0','0','0','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('33','游客','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','1','0','0','0','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('34','游客','每日电影','daily_movie','每日电影','/daily_movie/table','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('35','游客','每日电影','daily_movie','每日电影详情','/daily_movie/view','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('36','游客','每日电影','daily_movie','每日电影','/daily_movie/list','top','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('37','游客','每日电影','daily_movie','每日电影详情','/daily_movie/details','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('38','游客','高分电影','high_score_film','高分电影','/high_score_film/table','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('39','游客','高分电影','high_score_film','高分电影详情','/high_score_film/view','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('40','游客','高分电影','high_score_film','高分电影','/high_score_film/list','top','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('41','游客','高分电影','high_score_film','高分电影详情','/high_score_film/details','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('42','游客','热门电影','popular_movies','热门电影','/popular_movies/table','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('43','游客','热门电影','popular_movies','热门电影详情','/popular_movies/view','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('44','游客','热门电影','popular_movies','热门电影','/popular_movies/list','top','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('45','游客','热门电影','popular_movies','热门电影详情','/popular_movies/details','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('46','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('47','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('48','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('49','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('50','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('51','游客','论坛','forum','论坛列表','/forum/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('52','游客','论坛','forum','论坛详情','/forum/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('53','游客','论坛','forum','论坛','/forum/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('54','游客','论坛','forum','论坛详情','/forum/details','','_blank','0','0','0','0','','','',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('55','游客','论坛分类','forum_type','论坛分类列表','/forum_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('56','游客','论坛分类','forum_type','论坛分类详情','/forum_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('57','游客','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('58','游客','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('59','游客','新闻','article','影片资讯','/article/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('60','游客','新闻','article','影片资讯','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('61','游客','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('62','游客','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('63','普通用户','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','0','0','0','0','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('64','普通用户','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','0','0','1','0','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox','user_number,user_mobile_phone,user_mailbox',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('65','普通用户','每日电影','daily_movie','每日电影','/daily_movie/table','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('66','普通用户','每日电影','daily_movie','每日电影详情','/daily_movie/view','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('67','普通用户','每日电影','daily_movie','每日电影','/daily_movie/list','top','_blank','0','0','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('68','普通用户','每日电影','daily_movie','每日电影详情','/daily_movie/details','','_blank','0','0','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('69','普通用户','高分电影','high_score_film','高分电影','/high_score_film/table','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('70','普通用户','高分电影','high_score_film','高分电影详情','/high_score_film/view','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('71','普通用户','高分电影','high_score_film','高分电影','/high_score_film/list','top','_blank','0','0','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('72','普通用户','高分电影','high_score_film','高分电影详情','/high_score_film/details','','_blank','0','0','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('73','普通用户','热门电影','popular_movies','热门电影','/popular_movies/table','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('74','普通用户','热门电影','popular_movies','热门电影详情','/popular_movies/view','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('75','普通用户','热门电影','popular_movies','热门电影','/popular_movies/list','top','_blank','0','0','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('76','普通用户','热门电影','popular_movies','热门电影详情','/popular_movies/details','','_blank','0','0','1','1','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('77','普通用户','所有电影','all_movies','所有电影','/all_movies/table','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('78','普通用户','所有电影','all_movies','所有电影详情','/all_movies/view','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('79','普通用户','所有电影','all_movies','所有电影','/all_movies/list','top','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('80','普通用户','所有电影','all_movies','所有电影详情','/all_movies/details','','_blank','0','0','0','0','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot','movie_title,alias,director,screenwriter,performer,type,country,language,particular_year,film_length,release_time,official_website,idmb_link,idmb_score,douban_score,awards,movie_poster,similar_film_recommendation,plot',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('81','普通用户','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('82','普通用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('83','普通用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('84','普通用户','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('85','普通用户','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('86','普通用户','论坛','forum','影片交流','/forum/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('87','普通用户','论坛','forum','影片交流','/forum/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('88','普通用户','论坛','forum','影片交流','/forum/list','','_blank','1','0','0','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('89','普通用户','论坛','forum','影片交流','/forum/details','','_blank','1','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('90','普通用户','论坛分类','forum_type','论坛分类列表','/forum_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('91','普通用户','论坛分类','forum_type','论坛分类详情','/forum_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('92','普通用户','新闻','article','影片资讯','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('93','普通用户','新闻','article','影片资讯','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('94','普通用户','新闻','article','影片资讯','/article/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('95','普通用户','新闻','article','影片资讯','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('96','普通用户','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `auth` values ('97','普通用户','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `user_group` values ('3','100','普通用户',null,'ordinary_users','ordinary_users_id','0','3',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1645162467474.jpg','483',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1645162467424.jpg','999',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1645162467429.jpg','615',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `slides` values ('4','轮播图4','内容4','/article/details?article=4','/api/upload/image_1645162467587.jpg','10',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `slides` values ('5','轮播图5','内容5','/article/details?article=5','/api/upload/image_1645162467474.jpg','361',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `slides` values ('6','轮播图6','内容6','/article/details?article=6','/api/upload/image_1645162467424.jpg','477',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
insert into `article` values ('1','网络电影精品化，《冒牌大保镖》：冒险神展开，笑打两不误','电影','908','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>网络电影精品化已是创作者共识，不断提升创作修养，升级作品格调和品质亦将是大势所趋，最近上线的《冒牌大保镖》就是标杆之作，这部电影由王太利、柳岩、王珞嘉等新老实力派演员领衔，讲述了一个误打误撞陷入惊天危机的故事。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210328ac/378/w1778h1000/20210328/b434-kmvwsvy7532779.jpg"></p><p>这是一个错位喜剧特质明显的故事，三个坑蒙拐骗的私导，无意中被人当作保镖，面对从天而降的巨额酬金，三人将错就错，没想到一步步陷入更加危险的境地——这是一个充满蝴蝶效应的故事，通过一个错误的开始，让错误不断分裂膨胀，最终形成一个无法补救的巨大危机命悬一线，充满喜剧性反转的神展开让整个冒险程奇峰迭起，却也环环相扣，危机的出现与解除都符合逻辑，并最终让人物完成“拯救”任务，皆大欢喜，内容成熟而精彩。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210328ac/213/w2048h1365/20210328/2fe8-kmvwsvy7532866.jpg"></p><p>喜剧让故事飞扬跳脱，演员的表演则给喜剧注入活力，王太利、柳岩这对搭档充满了新鲜趣味，王太利饰演的王稳重略带“屌丝”气质，柳岩饰演的叶明珠则飒爽靓丽，自带反差喜感，而且两人演技成熟，文戏包袱笑料不断，武戏也很带节奏，让网络电影精品化找到细节上的参考。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210328ac/213/w2048h1365/20210328/6a72-kmvwsvy7532912.jpg"></p><p>而就演员印象，柳岩在影片中的表现令人印象深刻，出场司机造型干练精明，中场红裙造型十分亮眼，尤其在片中开大巴飙车一段，将角色的彪悍与技术流展现的淋漓尽致，与最后眼泪滚滚的哀婉形成首尾互动，人物在动作戏和情感戏中转换自如，展现出了更宽广的戏路与更细致的表演。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210328ac/213/w2048h1365/20210328/6614-kmvwsvy7532864.jpg"></p><p>从柳岩飙车也可看到影片的脑洞，也让影片在喜剧与表演之外有了更亮眼的表现——就动作戏份的创意化以及动作场面的大片化，在影片中，爆炸、飙车、枪战、多人混战场面随时出现，不但汲取了大量好莱坞特工片的打斗场面，还将科幻片中游戏大战的设计移植到真人对打中，让整个打斗的过程更戏剧化和喜剧化。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210328ac/213/w2048h1365/20210328/555f-kmvwsvy7532903.jpg"></p><p>当然，“让神经元受损的瘫痪者重新站起来”的科研发明以及最终让王太利的应用赋予影片一丝丝科幻的味道，尽管只是让动作戏份更具可看性，但轻科幻元素的应用还是让人感到惊喜，也使网络影片在故事的推进过程中，告别了套路化程式化，使影片内容更丰富，格局更加宏大。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210328ac/213/w2048h1365/20210328/5db4-kmvwsvy7532889.jpg"></p><p>《冒牌大保镖》全程西双版纳拍摄竟然让影片有一种异域风情，随着飙车以及屋顶奇袭的动作场景，这些景色更是散发出一种另类的魅力，细究起来，与爱情片中的浪漫多了一种危险的气息，令人着迷。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd20210328ac/213/w2048h1365/20210328/240d-kmvwsvy7532846.jpg"></p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('2','预测票房仅10亿，4部电影拼成《哥斯拉大战金刚》，还能撑多久','电影','590','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>3月26日，电影《哥斯拉大战金刚》首映，虽然排片占比接近了60%，但是截止到本文发布时间，该片票房未到5000万，预测票房仅为10.82亿。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/313/w640h473/20210326/10ee-kmvwsvy1587509.jpg"></p><p>按理说，首映日就能取得5000万票房，预测达到10亿，这样的成绩对于很多影片来说，都是可望而不可及，比如春节档刘德华的《人潮汹涌》，上映43天后才7.36亿票房，而与《哥斯拉大战金刚》同天上映的樊少皇、于荣光的《非正式爱情》，票房还没过50万。</p><p>但是对于《哥斯拉大战金刚》来说，这个成绩并不是很理想，因为该片的观影意愿人数已经超过了50万，而且从春节档至今，电影市场都被剧情和喜剧片占领，大制作的影片一个都没有。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/309/w640h469/20210326/aff5-kmvwsvy1587512.jpg"></p><p>最为关键的是，《哥斯拉大战金刚》称得上是4部影片拼成的电影，该片以《哥斯拉》《哥斯拉2》《金刚》《金刚：骷髅岛》为架构，将两个毫无关联的角色，硬性安排到了一起，还搞了个世仇身份，上来就开打，这对观众的视觉神经绝对是个冲击。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/288/w640h448/20210326/984a-kmvwsvy1587724.jpg"></p><p>看完《哥斯拉大战金刚》后，总体感觉有以下几点：</p><p><strong>一是称得上超一线大片。</strong>上面说了，春节档至今，超一线的巨制影片几乎没有，而《哥斯拉大战金刚》算是弥补了这个空白，无论是视觉还是听觉，都称得上好莱坞工业片中的佼佼者，尤其配上沉浸式多维还音系统的巨幕，让身处其中的观众大呼过瘾，意犹未尽。</p><p><strong>二是剧情设计独具匠心。</strong>作为怪兽世界的两个独苗，哥斯拉与金刚能够凑到一起，真的是独具匠心，该片以家庭、生态、友情为主题，让两个泰坦怪兽相爱相杀，却又非不死不休，那种追求将对方踩在脚下的征服感，为《哥斯拉大战金刚》增加了一些温情。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/317/w640h477/20210326/9bdb-kmvwsvy1587725.jpg"></p><p><strong>三是角色设计巧妙。</strong>作为怪兽电影，《哥斯拉大战金刚》把两个大IP弄到一起，极有可能造成混乱感，毕竟哥斯拉和金刚在各自的系列中都是当仁不让的主角，这次两者PK，谁是正面，谁是反面，真的不好处理，非常容易伤害到另一方的影迷。</p><p>好在《哥斯拉大战金刚》进行了调整，将戏份较少的哥斯拉，采用青春叛逆期的模式放在了反方，同时又不影响观众对它的同情和喜爱，这种角色设计还是很讨巧的。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/332/w640h492/20210326/3d66-kmvwsvy1587901.jpg"></p><p>不过，从票房上来看，《哥斯拉大战金刚》显然没有达到预期目标，要知道，该片上映的时间，恰逢内地电影空窗期，而与它同时首映的几部影片，在排片上被全面压制，这种绝对优势下，《哥斯拉大战金刚》的预测票房不应该只有10亿。</p><p>当然了，也有部分网友并不看好《哥斯拉大战金刚》，称这种爆米花式的好莱坞工业片，过分追求感官特效，在剧情方面一塌糊涂，两个怪兽一言不和，挥拳相向，让处于其间的人类戏份显得很尴尬，甚至是生硬。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/323/w640h483/20210326/897f-kmvwsvy1587900.jpg"></p><p>但是不管怎样，作为一部大制作的影片，《哥斯拉大战金刚》还是吸引了很多观众走进影院，欣赏这对相爱相杀的“小哥俩”，享受美妙刺激的视觉盛宴。</p><p>可话说回来，作为怪兽电影的又一部作品，这次让哥斯拉与金刚的碰面，似乎也预示着二者单独主线的结束，就像很多漫威电影一样，做到后来变成了超级英雄大拼盘了。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/307/w640h467/20210326/6220-kmvwsvy1588111.jpg"></p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('3','PS4游戏《对马岛之魂》确认改编电影！','电影','456','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>PS4游戏《#对马岛之魂#》确认改编电影！《疾速追杀》导演查德·斯塔赫斯基执导该片！</p><p>《对马岛之魂》是2020年Sucker Punch工作室打造的一款日本武士题材开放世界游戏，主角扮演化为“战鬼”的对马岛武士镜井仁，与几位志同道合的好友一同荡平侵略对马岛的蒙古人。发售至今销量已达650万份！</p><p>《对马岛之魂》的美术风格全方面致敬日本剑戟片，游戏中甚至可以开启黑白滤镜的“黑泽明模式”游玩。#游改影视#</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/753d-kmvwsvy1584830.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/f111-kmvwsvy1584955.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/04c4-kmvwsvy1585128.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/da5e-kmvwsvy1585218.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('4','PS4游戏《对马岛之魂》确认改编电影！','电影','133','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>PS4游戏《#对马岛之魂#》确认改编电影！《疾速追杀》导演查德·斯塔赫斯基执导该片！</p><p>《对马岛之魂》是2020年Sucker Punch工作室打造的一款日本武士题材开放世界游戏，主角扮演化为“战鬼”的对马岛武士镜井仁，与几位志同道合的好友一同荡平侵略对马岛的蒙古人。发售至今销量已达650万份！</p><p>《对马岛之魂》的美术风格全方面致敬日本剑戟片，游戏中甚至可以开启黑白滤镜的“黑泽明模式”游玩。#游改影视#</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/753d-kmvwsvy1584830.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/f111-kmvwsvy1584955.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/04c4-kmvwsvy1585128.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/da5e-kmvwsvy1585218.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('5','预测票房仅10亿，4部电影拼成《哥斯拉大战金刚》，还能撑多久','电影','786','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>3月26日，电影《哥斯拉大战金刚》首映，虽然排片占比接近了60%，但是截止到本文发布时间，该片票房未到5000万，预测票房仅为10.82亿。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/313/w640h473/20210326/10ee-kmvwsvy1587509.jpg"></p><p>按理说，首映日就能取得5000万票房，预测达到10亿，这样的成绩对于很多影片来说，都是可望而不可及，比如春节档刘德华的《人潮汹涌》，上映43天后才7.36亿票房，而与《哥斯拉大战金刚》同天上映的樊少皇、于荣光的《非正式爱情》，票房还没过50万。</p><p>但是对于《哥斯拉大战金刚》来说，这个成绩并不是很理想，因为该片的观影意愿人数已经超过了50万，而且从春节档至今，电影市场都被剧情和喜剧片占领，大制作的影片一个都没有。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/309/w640h469/20210326/aff5-kmvwsvy1587512.jpg"></p><p>最为关键的是，《哥斯拉大战金刚》称得上是4部影片拼成的电影，该片以《哥斯拉》《哥斯拉2》《金刚》《金刚：骷髅岛》为架构，将两个毫无关联的角色，硬性安排到了一起，还搞了个世仇身份，上来就开打，这对观众的视觉神经绝对是个冲击。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/288/w640h448/20210326/984a-kmvwsvy1587724.jpg"></p><p>看完《哥斯拉大战金刚》后，总体感觉有以下几点：</p><p><strong>一是称得上超一线大片。</strong>上面说了，春节档至今，超一线的巨制影片几乎没有，而《哥斯拉大战金刚》算是弥补了这个空白，无论是视觉还是听觉，都称得上好莱坞工业片中的佼佼者，尤其配上沉浸式多维还音系统的巨幕，让身处其中的观众大呼过瘾，意犹未尽。</p><p><strong>二是剧情设计独具匠心。</strong>作为怪兽世界的两个独苗，哥斯拉与金刚能够凑到一起，真的是独具匠心，该片以家庭、生态、友情为主题，让两个泰坦怪兽相爱相杀，却又非不死不休，那种追求将对方踩在脚下的征服感，为《哥斯拉大战金刚》增加了一些温情。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/317/w640h477/20210326/9bdb-kmvwsvy1587725.jpg"></p><p><strong>三是角色设计巧妙。</strong>作为怪兽电影，《哥斯拉大战金刚》把两个大IP弄到一起，极有可能造成混乱感，毕竟哥斯拉和金刚在各自的系列中都是当仁不让的主角，这次两者PK，谁是正面，谁是反面，真的不好处理，非常容易伤害到另一方的影迷。</p><p>好在《哥斯拉大战金刚》进行了调整，将戏份较少的哥斯拉，采用青春叛逆期的模式放在了反方，同时又不影响观众对它的同情和喜爱，这种角色设计还是很讨巧的。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/332/w640h492/20210326/3d66-kmvwsvy1587901.jpg"></p><p>不过，从票房上来看，《哥斯拉大战金刚》显然没有达到预期目标，要知道，该片上映的时间，恰逢内地电影空窗期，而与它同时首映的几部影片，在排片上被全面压制，这种绝对优势下，《哥斯拉大战金刚》的预测票房不应该只有10亿。</p><p>当然了，也有部分网友并不看好《哥斯拉大战金刚》，称这种爆米花式的好莱坞工业片，过分追求感官特效，在剧情方面一塌糊涂，两个怪兽一言不和，挥拳相向，让处于其间的人类戏份显得很尴尬，甚至是生硬。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/323/w640h483/20210326/897f-kmvwsvy1587900.jpg"></p><p>但是不管怎样，作为一部大制作的影片，《哥斯拉大战金刚》还是吸引了很多观众走进影院，欣赏这对相爱相杀的“小哥俩”，享受美妙刺激的视觉盛宴。</p><p>可话说回来，作为怪兽电影的又一部作品，这次让哥斯拉与金刚的碰面，似乎也预示着二者单独主线的结束，就像很多漫威电影一样，做到后来变成了超级英雄大拼盘了。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/307/w640h467/20210326/6220-kmvwsvy1588111.jpg"></p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('6','刘德华《人潮汹涌》入围意大利乌甸尼远东电影节,票房有望破9亿','电影','122','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>【影讯】刘德华监制，饶晓志执导，#刘德华#、@肖央、@万茜领衔主演的电影《人潮汹涌》获邀参展第23届意大利乌甸尼远东电影节，并入围主竞赛单元影片！这是刘德华继《无间道》阔别18年后再度入选该电影节，祝贺刘德华先生！</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/397/w640h557/20210328/deb2-kmvwsvy7580956.jpg"></p><p>远东电影节（又称“远东国际电影节”，英文：Far East Film Festival，简称“FEFF”），自1999年举办首届，是欧洲最大的介绍亚洲电影的电影节。每年开春在意大利东北部小城乌迪内（Udine）举行，展映来自远东地区的优秀影片。远东电影节虽然不属于竞赛类影展，但按照影展的传统，组织者会安排观影者投票，每位观影者可对看电影打分（5-0分，5分最高），最后统计每部电影的平均分数，分数最高的三部影片成为最受观众欢迎的影片，获得电影节“观众奖”大奖。</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/207/w640h367/20210328/6902-kmvwsvy7580957.jpg"></p><p>早前香港电影刘德华《无间道》、《沦落人》和易烊千玺《少年的你》获得观众奖第一名的成绩。杜琪峰导演《神探》、王家卫监制《逆光飞翔》和曾国祥导演《少年的你》获得黑龙奖第一名。香港电影人许冠文、杜琪峰、施南生、洪金宝、成龙、曾志伟和林青霞，日本电影人久石让和大林宣彦获得金桑树终身成就奖。</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/113/w640h273/20210328/dc26-kmvwsvy7580946.jpg"></p><p>《人潮汹涌》中肖央饰演的角色陈晓萌，30多岁一无所有，没有工作没有车子房子，没有生活基础自然不会拥有爱情。在电影剧组跑龙套，生活完全没有保障，房租都交不起。这样的生活看不到希望，于是准备轻生自杀，却缕缕挫败！刘德华饰演的周全是一位知名杀手，豪宅名车帅气逼人英俊潇洒。机缘巧合之下周全失忆，两位身份互换！</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/113/w640h273/20210328/7b35-kmvwsvy7580953.jpg"></p><p>从此周全过上陈晓萌的生活，他住进老式出租屋，可是生活非常规律将出租屋打扫的干干净净，收拾的整整齐齐。他积极乐观热爱生活，做人知恩图报有一颗感恩的心，他将每一个人对他的帮助全部记录在记事本上。对待跑龙套的工作认真负责非常敬业，他将每一个龙套角色演的演出层次感，他认真敬业的态度得到很多导演的认可。假以时日一定有机会出演男主角，甚至有望获得奖项。</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/272/w640h432/20210328/1296-kmvwsvy7580955.jpg"></p><p>陈晓萌过上周全的生活，住进豪宅开上豪车。然而他却对生活没有追求只会挥霍。短短几天时间将豪宅搞的一片狼藉，自己的生活过得一塌糊涂。很多人抱怨生活，认为自己的烦恼痛苦都是因为没钱。可是《人潮汹涌》告诉我们，我们生活一塌糊涂的根源不是没钱，而是对生活没有追求，做事不用心，做人没有原则。当一个人不懂得热爱生活、热爱工作、感恩他人时，即使给他金钱也会将生活过得一片狼藉。当一个人有追求，有原则、勤劳、上进时，他的生活品质已经提升，获得财富则是必然的事情！</p><p><img src="http://n.sinaimg.cn/sinakd20210328ac/113/w640h273/20210328/1d35-kmvwsvy7580951.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('7','平遥展映口碑电影《最佳导演》定档4月9日　导演还乡遭遇离奇婚闹','电影','334','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>由“新锐导演”张先执导，金靖承、蒋楚依主演的黑色喜剧电影《最佳导演》，今日曝光定档预告和定档海报，正式宣布将于4月9日全国上映。作为第三届平遥国际电影展从山西出发单元最受欢迎影片，《最佳导演》早在展映时期，就获得了观众们的好评，有影迷赞叹：“首部婚闹题材的电影，拍的很现实。”还有网友表示：“影片前段荒诞压抑、黑色幽默，后段爆发中又稍显克制，没有过分狗血抓马，是一种堪称坚定的艺术表达。”</p><p><a href="https://weibo.com/tv/show/1034:4619861318631554?from=old_pc_videoshow" rel="noopener noreferrer" target="_blank" style="color: rgb(94, 111, 170);">黑色喜剧电影《最佳导演》定档预告</a></p><p><strong>知名导演遭遇离奇婚闹婚礼现场成为“真人秀”</strong></p><p>作为影片的首支预告，一开场就抛出了核心问题——“这场婚礼对你来说意味着什么”，婚礼中，被称为家乡骄傲、上了电视的男主角章章没有帅气的造型、笔挺的西服，反而被扒光了衣服捆在路边，身旁的“兄弟”、“朋友”兴高采烈。男主母亲“早就想和他们闹一场了”的台词预示着一场冲突即将爆发，闪回镜头中，争吵场景接连出现，让人不禁好奇这场婚礼上到底发生了什么？结尾处章章面对镜头：“现在我要去迎接我的新娘了”一下子将观众带入婚礼前夕，好奇感倍增。</p><p>定档海报与预告片交相呼应，被迫脱光衣服、穿上黑色丝袜的章章被捆在电灯杆上一脸难堪，身旁的父母也面色凝重。影片《最佳导演》讲述了久作他乡客的导演章章（金靖承&nbsp;饰）携未婚妻珊妮（蒋楚依&nbsp;饰）衣锦还乡，这对新人原本打算旅行结婚却遭逢家人反对，无奈之下，一场由父母和三姑六婆共同操持“办给新人家长和亲友的真人秀”婚礼被迫推进。面对种种难以应付的婚礼习俗，章章压抑无奈又不得不屈服，一场夹杂在古老与现代冲突之中的婚礼逐渐拉开序幕……</p><p><img src="https://n.sinaimg.cn/sinakd10123/491/w1500h2191/20210328/7355-kmvwsvy9412011.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('8','预测票房仅10亿，4部电影拼成《哥斯拉大战金刚》，还能撑多久','电影','865','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>3月26日，电影《哥斯拉大战金刚》首映，虽然排片占比接近了60%，但是截止到本文发布时间，该片票房未到5000万，预测票房仅为10.82亿。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/313/w640h473/20210326/10ee-kmvwsvy1587509.jpg"></p><p>按理说，首映日就能取得5000万票房，预测达到10亿，这样的成绩对于很多影片来说，都是可望而不可及，比如春节档刘德华的《人潮汹涌》，上映43天后才7.36亿票房，而与《哥斯拉大战金刚》同天上映的樊少皇、于荣光的《非正式爱情》，票房还没过50万。</p><p>但是对于《哥斯拉大战金刚》来说，这个成绩并不是很理想，因为该片的观影意愿人数已经超过了50万，而且从春节档至今，电影市场都被剧情和喜剧片占领，大制作的影片一个都没有。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/309/w640h469/20210326/aff5-kmvwsvy1587512.jpg"></p><p>最为关键的是，《哥斯拉大战金刚》称得上是4部影片拼成的电影，该片以《哥斯拉》《哥斯拉2》《金刚》《金刚：骷髅岛》为架构，将两个毫无关联的角色，硬性安排到了一起，还搞了个世仇身份，上来就开打，这对观众的视觉神经绝对是个冲击。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/288/w640h448/20210326/984a-kmvwsvy1587724.jpg"></p><p>看完《哥斯拉大战金刚》后，总体感觉有以下几点：</p><p><strong>一是称得上超一线大片。</strong>上面说了，春节档至今，超一线的巨制影片几乎没有，而《哥斯拉大战金刚》算是弥补了这个空白，无论是视觉还是听觉，都称得上好莱坞工业片中的佼佼者，尤其配上沉浸式多维还音系统的巨幕，让身处其中的观众大呼过瘾，意犹未尽。</p><p><strong>二是剧情设计独具匠心。</strong>作为怪兽世界的两个独苗，哥斯拉与金刚能够凑到一起，真的是独具匠心，该片以家庭、生态、友情为主题，让两个泰坦怪兽相爱相杀，却又非不死不休，那种追求将对方踩在脚下的征服感，为《哥斯拉大战金刚》增加了一些温情。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/317/w640h477/20210326/9bdb-kmvwsvy1587725.jpg"></p><p><strong>三是角色设计巧妙。</strong>作为怪兽电影，《哥斯拉大战金刚》把两个大IP弄到一起，极有可能造成混乱感，毕竟哥斯拉和金刚在各自的系列中都是当仁不让的主角，这次两者PK，谁是正面，谁是反面，真的不好处理，非常容易伤害到另一方的影迷。</p><p>好在《哥斯拉大战金刚》进行了调整，将戏份较少的哥斯拉，采用青春叛逆期的模式放在了反方，同时又不影响观众对它的同情和喜爱，这种角色设计还是很讨巧的。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/332/w640h492/20210326/3d66-kmvwsvy1587901.jpg"></p><p>不过，从票房上来看，《哥斯拉大战金刚》显然没有达到预期目标，要知道，该片上映的时间，恰逢内地电影空窗期，而与它同时首映的几部影片，在排片上被全面压制，这种绝对优势下，《哥斯拉大战金刚》的预测票房不应该只有10亿。</p><p>当然了，也有部分网友并不看好《哥斯拉大战金刚》，称这种爆米花式的好莱坞工业片，过分追求感官特效，在剧情方面一塌糊涂，两个怪兽一言不和，挥拳相向，让处于其间的人类戏份显得很尴尬，甚至是生硬。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/323/w640h483/20210326/897f-kmvwsvy1587900.jpg"></p><p>但是不管怎样，作为一部大制作的影片，《哥斯拉大战金刚》还是吸引了很多观众走进影院，欣赏这对相爱相杀的“小哥俩”，享受美妙刺激的视觉盛宴。</p><p>可话说回来，作为怪兽电影的又一部作品，这次让哥斯拉与金刚的碰面，似乎也预示着二者单独主线的结束，就像很多漫威电影一样，做到后来变成了超级英雄大拼盘了。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/307/w640h467/20210326/6220-kmvwsvy1588111.jpg"></p><p><br></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('9','太突然！黄金绿叶廖启智因患癌离世，电影版《寻秦记》成遗作','电影','73','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>太突然！智叔廖启智因患病离开人世。</p><p>作为一名香港黄金绿叶、老戏骨，廖启智曾为观众献上了不少精彩的演技表现。</p><p><strong>用“敬业”来形容廖启智，完全没有问题。</strong></p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/613/w900h513/20210329/1c8a-kmvwsvy9681139.jpg"></p><p>可此前因为患病，廖启智就不得不停下手里的工作，进行治疗。</p><p>原来，早在2020年12月中旬，廖启智就因为身体不适，在医院检查出胃癌。</p><p>选择低调的他，暂停了相关的演艺工作，积极配合治疗。</p><p><strong>此前陈敏儿在接受采访时，表示廖启智积极配合医生治疗，更被医生称为非常棒的病人。</strong></p><p>去年因为环境关系，廖启智一直都有保持运动，身体状况和体能都还不错。</p><p>可让大家没有想到的是，如今智叔还是离开了我们。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/631/w900h531/20210329/caf7-kmvwsvy9681150.jpg"></p><p>如今，我们以回顾智叔参演的经典角色作品，来跟他告别。</p><p>01 配角小人物也可以很精彩</p><p>早在1976年，廖启智就去参加无线艺人训练班，失败落选的他，并没有选择放弃。</p><p>在进入训练班并签约无线的他，出演过许多经典角色。</p><p><strong>尽管是配角，但廖启智却能够将每一个角色都拿捏得很精准。</strong></p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/281/w1178h703/20210329/3e7f-kmvwsvy9681187.png"></p><p>如《大运河》、《刑事侦缉档案II》等等，廖启智在多部剧都有着精彩的表现。让观众印象深刻的，还有向海岚版《杨贵妃》。</p><p>在这个版本的《杨贵妃》里，廖启智扮演的是高力士。</p><p>作为皇帝“背后的男人”，高力士乃著名宦官。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/177/w1049h728/20210329/7c3c-kmvwsvy9681213.png"></p><p>在接见杨玉环、为其更衣沐浴时，杨玉环因一番“男女之事”触怒高力士，高力士的神情从卑微瞬间转变成愤怒，在愤怒短暂片刻之后，他又收起愤怒的面容，继而保持微笑。</p><p>这短短几秒钟的演技展现，廖启智的情绪变化，就已经让观众不得不服。</p><p>在后续的剧情展现上，识货、懂得品物的高力士，宛如一个贪财小人的存在。</p><p>但明白“君子不夺人所好”的道理、沉浸在宝物的完美世界里的高力士，显然不是一个普通人。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/116/w1049h667/20210329/d8ea-kmvwsvy9681174.png"></p><p><strong>虽然在《杨贵妃》里，廖启智扮演的是配角，但他却诠释出了不一样的配角风格。</strong></p><p>演技有劲、更有说服力。</p><p>廖启智在港剧的表现，让很多后辈以及观众，都明白到什么叫做真正的演技。</p><p>他能够去演一些脸谱化的反面角色，或者说性格较为负面的人设，就好比《天子寻龙》这部剧里，慕容雪贪慕虚荣的父亲。</p><p>又或者多层次的人物刻画，就好比刚才提到的向海岚版《杨贵妃》。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/85/w1037h648/20210329/fb74-kmvwsvy9681188.png"></p><p>廖启智用自己的演技去证明了，即便是配角小人物，也可以演绎得很精彩。</p><p>02 老戏骨的“敬业”</p><p>作为香港资深绿叶，廖启智曾贡献过许多精彩的作品。</p><p>早期签约无线电视的廖启智，在后来凭借出演多部电影获得奖项与肯定。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/278/w1179h699/20210329/d26a-kmvwsvy9681223.png"></p><p><strong>廖启智在剧情片《笼民》里出演智障青年，凭该角色获得金像奖最佳男配角，在后来还夺得了多个最佳男演员奖、最佳男配角奖。</strong></p><p>这些奖项，都展现出了廖启智作为黄金绿叶的“敬业”。</p><p>电视剧、电影中的他十分高调，无论是正派还是反派，都演出了该有的气势。</p><p>但现实中的廖启智，却十分低调。</p><p><strong>哪怕因为患病，廖启智都选择低调处理，不想要占用太多公共资源。</strong></p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/315/w1194h721/20210329/29df-kmvwsvy9681222.png"></p><p>在此前，廖启智被拍到在街头做小贩、卖衣服，更一度被媒体冠上“生活潦倒”的名头。</p><p>然而公司却出面解释，当时廖启智是在拍戏，里面展现的内容都是花絮片段。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/791/w995h596/20210329/ccfb-kmvwsvy9681182.png"></p><p>能够将一个角色演绎得如此接地气，论敬业我只服智叔。</p><p>03 影版《寻秦记》成遗作</p><p>早在TVB版《寻秦记》中，廖启智就曾有份参演，并在剧中饰演神秘的乌有博士。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/230/w1141h689/20210329/1200-kmvwsvy9681212.png"></p><p>在戏中，乌有博士和富豪李小超这两个角色，是帮助项少龙回归到秦国时期的关键性人物。</p><p>虽然两人出现的戏份并不多，却给了观众很多遐想的空间。</p><p>然而谁也没有想到的是，<strong>电影版《寻秦记》出现了廖启智的身影，而且还是一副现代装扮。</strong></p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/190/w1131h659/20210329/b0e5-kmvwsvy9681179.png"></p><p>早在电影版《寻秦记》曝光演员阵容之后，观众都较为期待这部电影。</p><p>毕竟电影版仍然是剧版的原班人马出现，除了古天乐、林峯外，宣萱、郭羡妮以及滕丽名等一众主演均回归。</p><p>更让观众猜不到的是，在剧版《寻秦记》中，廖启智和邓一君均已回归。</p><p><strong>在春节档上映的电影中，电影院就曝光了《寻秦记》电影版的贴片预告。</strong></p><p>虽然首预告我们并没有看到智叔，但仅仅只是贴片预告的短短那几秒，就已经让人沸腾、欢呼雀跃了。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/113/w1093h620/20210329/3b78-kmvwsvy9681181.png"></p><p>很多人看到这些熟面孔之后，第一时间就是想要知道电影版《寻秦记》究竟何时定档，想要走进电影院一览“芳容”。</p><p><strong>可惜的是，智叔看不到电影版《寻秦记》上映了。</strong></p><p>而这部作品，也成为了智叔的遗作。</p><p>04 智叔，一路走好</p><p>3月28日，廖启智因患病离世。</p><p>据悉，廖启智是安然在家人的陪伴下离世的。此前达叔吴孟达也因为患癌，离开了我们。</p><p>在智叔离开之后，不少艺人都纷纷发文悼念。</p><p><strong>与廖启智合作过的黄宗泽、张智尧均在社交平台发文悼念，并祝福智叔一路走好。</strong></p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/134/w1114h620/20210329/9853-kmvwsvy9681166.png"></p><p>同样与廖启智在《杨贵妃》里合作过的向海岚，也在得知该消息之后，选择发文悼念。</p><p>向海岚在文中提到，自己第一部电视剧就是与智叔合作的。</p><p>而向海岚的配图，也是电视剧《杨贵妃》里，杨玉环与高力士的同框照。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/423/w1262h761/20210329/e249-kmvwsvy9681183.png"></p><p>同为老戏骨的罗家英，也在社交平台发布了悼念的话语，称廖启智是“好戏之人”、“人人公认的一位好先生”。</p><p>显然，智叔不仅仅演戏足够敬业，在生活上、工作上对待朋友的态度，也是非常友好的。</p><p>也因此，在廖启智离开之后，不少艺人都在得知后的第一时间，在社交平台表达了自己的情绪。</p><p><img src="http://n.sinaimg.cn/sinakd20210329ac/160/w1092h668/20210329/9b3d-kmvwsvy9681185.png"></p>','','2022年03月23日 12:51 新浪网');
insert into `article` values ('10','PS4游戏《对马岛之魂》确认改编电影！','电影','68','0',"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ",null,null,null,'<p>PS4游戏《#对马岛之魂#》确认改编电影！《疾速追杀》导演查德·斯塔赫斯基执导该片！</p><p>《对马岛之魂》是2020年Sucker Punch工作室打造的一款日本武士题材开放世界游戏，主角扮演化为“战鬼”的对马岛武士镜井仁，与几位志同道合的好友一同荡平侵略对马岛的蒙古人。发售至今销量已达650万份！</p><p>《对马岛之魂》的美术风格全方面致敬日本剑戟片，游戏中甚至可以开启黑白滤镜的“黑泽明模式”游玩。#游改影视#</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/753d-kmvwsvy1584830.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/f111-kmvwsvy1584955.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/04c4-kmvwsvy1585128.jpg"></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/600/w1920h1080/20210326/da5e-kmvwsvy1585218.jpg"></p>','','2022年03月23日 12:51 新浪网');
insert into `article_type` values ('1','100','电影','0',null,null,null,"2022-04-11 13:04:23.000 ","2022-04-11 13:04:23.000 ");
