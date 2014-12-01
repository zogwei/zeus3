/*
Navicat MySQL Data Transfer

Source Server         : 192.168.186.22
Source Server Version : 50536
Source Host           : 192.168.186.22:3306
Source Database       : zeus2

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2014-12-01 10:42:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zeus_debug_history
-- ----------------------------
DROP TABLE IF EXISTS `zeus_debug_history`;
CREATE TABLE `zeus_debug_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `execute_host` varchar(255) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `log` mediumtext,
  `runtype` varchar(255) DEFAULT NULL,
  `script` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_file
-- ----------------------------
DROP TABLE IF EXISTS `zeus_file`;
CREATE TABLE `zeus_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_follow
-- ----------------------------
DROP TABLE IF EXISTS `zeus_follow`;
CREATE TABLE `zeus_follow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_group
-- ----------------------------
DROP TABLE IF EXISTS `zeus_group`;
CREATE TABLE `zeus_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `configs` text,
  `descr` varchar(255) DEFAULT NULL,
  `directory` int(11) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `resources` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_job
-- ----------------------------
DROP TABLE IF EXISTS `zeus_job`;
CREATE TABLE `zeus_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `auto` int(11) DEFAULT NULL,
  `configs` text,
  `cron_expression` varchar(255) DEFAULT NULL,
  `cycle` varchar(255) DEFAULT NULL,
  `dependencies` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `group_id` int(11) NOT NULL,
  `history_id` bigint(20) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `last_end_time` datetime DEFAULT NULL,
  `last_result` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `offset` int(11) DEFAULT NULL,
  `owner` varchar(255) NOT NULL,
  `post_processers` varchar(255) DEFAULT NULL,
  `pre_processers` varchar(255) DEFAULT NULL,
  `ready_dependency` varchar(255) DEFAULT NULL,
  `resources` text,
  `run_type` varchar(255) DEFAULT NULL,
  `schedule_type` int(11) DEFAULT NULL,
  `script` text,
  `start_time` datetime DEFAULT NULL,
  `start_timestamp` bigint(20) DEFAULT NULL,
  `statis_end_time` datetime DEFAULT NULL,
  `statis_start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_job_history
-- ----------------------------
DROP TABLE IF EXISTS `zeus_job_history`;
CREATE TABLE `zeus_job_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cycle` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `execute_host` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `illustrate` varchar(255) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `log` mediumtext,
  `operator` varchar(255) DEFAULT NULL,
  `properties` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `statis_end_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `trigger_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_lock
-- ----------------------------
DROP TABLE IF EXISTS `zeus_lock`;
CREATE TABLE `zeus_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `server_update` datetime DEFAULT NULL,
  `subgroup` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_permission
-- ----------------------------
DROP TABLE IF EXISTS `zeus_permission`;
CREATE TABLE `zeus_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_profile
-- ----------------------------
DROP TABLE IF EXISTS `zeus_profile`;
CREATE TABLE `zeus_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `hadoop_conf` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_timezone
-- ----------------------------
DROP TABLE IF EXISTS `zeus_timezone`;
CREATE TABLE `zeus_timezone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timezone` varchar(255) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_user
-- ----------------------------
DROP TABLE IF EXISTS `zeus_user`;
CREATE TABLE `zeus_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `wangwang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_worker
-- ----------------------------
DROP TABLE IF EXISTS `zeus_worker`;
CREATE TABLE `zeus_worker` (
  `host` varchar(255) NOT NULL,
  `rate` float DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`host`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
