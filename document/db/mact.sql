/*
MySQL Backup
Database: mact
Backup Time: 2019-05-24 18:14:25
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `mact`.`gen_scheme`;
DROP TABLE IF EXISTS `mact`.`gen_table`;
DROP TABLE IF EXISTS `mact`.`gen_table_column`;
DROP TABLE IF EXISTS `mact`.`gen_template`;
DROP TABLE IF EXISTS `mact`.`mact_user`;
DROP TABLE IF EXISTS `mact`.`sys_area`;
DROP TABLE IF EXISTS `mact`.`sys_dict`;
DROP TABLE IF EXISTS `mact`.`sys_log`;
DROP TABLE IF EXISTS `mact`.`sys_menu`;
DROP TABLE IF EXISTS `mact`.`sys_role`;
DROP TABLE IF EXISTS `mact`.`sys_role_menu`;
DROP TABLE IF EXISTS `mact`.`sys_user`;
DROP TABLE IF EXISTS `mact`.`sys_user_role`;
CREATE TABLE `gen_scheme` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `NAME` varchar(200) DEFAULT NULL COMMENT 'NAME',
  `CATEGORY` longtext COMMENT 'CATEGORY',
  `PACKAGE_NAME` text COMMENT 'PACKAGE_NAME',
  `MODULE_NAME` varchar(30) DEFAULT NULL COMMENT 'MODULE_NAME',
  `SUB_MODULE_NAME` varchar(30) DEFAULT NULL COMMENT 'SUB_MODULE_NAME',
  `FUNCTION_NAME` text COMMENT 'FUNCTION_NAME',
  `FUNCTION_NAME_SIMPLE` varchar(100) DEFAULT NULL COMMENT 'FUNCTION_NAME_SIMPLE',
  `FUNCTION_AUTHOR` varchar(100) DEFAULT NULL COMMENT 'FUNCTION_AUTHOR',
  `GEN_TABLE_ID` varchar(200) DEFAULT NULL COMMENT 'GEN_TABLE_ID',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT 'CREATE_BY',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT 'CREATE_DATE',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT 'UPDATE_BY',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'UPDATE_DATE',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT 'REMARKS',
  `DEL_FLAG` char(1) NOT NULL COMMENT 'DEL_FLAG'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='GEN_SCHEME';
CREATE TABLE `gen_table` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `NAME` varchar(200) DEFAULT NULL COMMENT 'NAME',
  `COMMENTS` text COMMENT 'COMMENTS',
  `CLASS_NAME` varchar(100) DEFAULT NULL COMMENT 'CLASS_NAME',
  `PARENT_TABLE` varchar(200) DEFAULT NULL COMMENT 'PARENT_TABLE',
  `PARENT_TABLE_FK` varchar(100) DEFAULT NULL COMMENT 'PARENT_TABLE_FK',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT 'CREATE_BY',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT 'CREATE_DATE',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT 'UPDATE_BY',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'UPDATE_DATE',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT 'REMARKS',
  `DEL_FLAG` char(1) NOT NULL COMMENT 'DEL_FLAG'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='GEN_TABLE';
CREATE TABLE `gen_table_column` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `GEN_TABLE_ID` varchar(64) DEFAULT NULL COMMENT 'GEN_TABLE_ID',
  `NAME` varchar(200) DEFAULT NULL COMMENT 'NAME',
  `COMMENTS` text COMMENT 'COMMENTS',
  `JDBC_TYPE` varchar(100) DEFAULT NULL COMMENT 'JDBC_TYPE',
  `JAVA_TYPE` text COMMENT 'JAVA_TYPE',
  `JAVA_FIELD` varchar(200) DEFAULT NULL COMMENT 'JAVA_FIELD',
  `IS_PK` char(1) DEFAULT NULL COMMENT 'IS_PK',
  `IS_NULL` char(1) DEFAULT NULL COMMENT 'IS_NULL',
  `IS_INSERT` char(1) DEFAULT NULL COMMENT 'IS_INSERT',
  `IS_EDIT` char(1) DEFAULT NULL COMMENT 'IS_EDIT',
  `IS_LIST` char(1) DEFAULT NULL COMMENT 'IS_LIST',
  `IS_QUERY` char(1) DEFAULT NULL COMMENT 'IS_QUERY',
  `QUERY_TYPE` varchar(200) DEFAULT NULL COMMENT 'QUERY_TYPE',
  `SHOW_TYPE` varchar(200) DEFAULT NULL COMMENT 'SHOW_TYPE',
  `DICT_TYPE` varchar(200) DEFAULT NULL COMMENT 'DICT_TYPE',
  `SETTINGS` longtext COMMENT 'SETTINGS',
  `SORT` decimal(38,2) DEFAULT NULL COMMENT 'SORT',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT 'CREATE_BY',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT 'CREATE_DATE',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT 'UPDATE_BY',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'UPDATE_DATE',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT 'REMARKS',
  `DEL_FLAG` char(1) NOT NULL COMMENT 'DEL_FLAG'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='GEN_TABLE_COLUMN';
CREATE TABLE `gen_template` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `NAME` varchar(200) DEFAULT NULL COMMENT 'NAME',
  `CATEGORY` longtext COMMENT 'CATEGORY',
  `FILE_PATH` text COMMENT 'FILE_PATH',
  `FILE_NAME` varchar(200) DEFAULT NULL COMMENT 'FILE_NAME',
  `CONTENT` longtext COMMENT 'CONTENT',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT 'CREATE_BY',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT 'CREATE_DATE',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT 'UPDATE_BY',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT 'UPDATE_DATE',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT 'REMARKS',
  `DEL_FLAG` char(1) NOT NULL COMMENT 'DEL_FLAG'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='GEN_TEMPLATE';
CREATE TABLE `mact_user` (
  `ID` varchar(64) DEFAULT NULL COMMENT 'id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `user_sex` char(1) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `education` char(2) DEFAULT NULL COMMENT '学历',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `record_time` datetime DEFAULT NULL COMMENT '录音时间',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `file_path` varchar(255) DEFAULT NULL COMMENT '录音文件地址',
  `status` char(1) DEFAULT NULL COMMENT '状态（1有效、0无效）',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT '创建者',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT '更新者',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '更新时间',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `DEL_FLAG` char(1) DEFAULT NULL COMMENT '删除标识'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `sys_area` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `PARENT_ID` varchar(64) NOT NULL COMMENT '?????ID',
  `PARENT_IDS` longtext NOT NULL COMMENT '?????IDS',
  `NAME` varchar(100) NOT NULL COMMENT '????',
  `SORT` decimal(38,0) NOT NULL COMMENT '???',
  `CODE` varchar(100) DEFAULT NULL COMMENT '????',
  `TYPE` char(1) DEFAULT NULL COMMENT '????',
  `CREATE_BY` varchar(64) NOT NULL COMMENT '??????',
  `CREATE_DATE` datetime NOT NULL COMMENT '????????',
  `UPDATE_BY` varchar(64) NOT NULL COMMENT '??????',
  `UPDATE_DATE` datetime NOT NULL COMMENT '????????',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '???',
  `DEL_FLAG` char(1) NOT NULL COMMENT '??????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='????????';
CREATE TABLE `sys_dict` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `VALUE` varchar(100) NOT NULL COMMENT '?',
  `LABEL` varchar(100) NOT NULL COMMENT '???',
  `TYPE` varchar(100) NOT NULL COMMENT '????',
  `DESCRIPTION` varchar(100) NOT NULL COMMENT '????',
  `SORT` decimal(38,0) NOT NULL COMMENT '???',
  `PARENT_ID` varchar(64) DEFAULT NULL COMMENT '?????ID',
  `CREATE_BY` varchar(64) NOT NULL COMMENT '??????',
  `CREATE_DATE` datetime NOT NULL COMMENT '????????',
  `UPDATE_BY` varchar(64) NOT NULL COMMENT '??????',
  `UPDATE_DATE` datetime NOT NULL COMMENT '????????',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '???',
  `DEL_FLAG` char(1) NOT NULL COMMENT '??????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???????';
CREATE TABLE `sys_log` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `TYPE` char(1) DEFAULT NULL COMMENT '????',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '????',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT '??????',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '????????',
  `REMOTE_ADDR` varchar(255) DEFAULT NULL COMMENT '???',
  `USER_AGENT` varchar(255) DEFAULT NULL COMMENT '???????',
  `REQUEST_URI` varchar(255) DEFAULT NULL COMMENT '????URI',
  `METHOD` varchar(5) DEFAULT NULL COMMENT '????',
  `PARAMS` longtext COMMENT '????',
  `EXCEPTION` longtext COMMENT '??'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?????';
CREATE TABLE `sys_menu` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `PARENT_ID` varchar(64) DEFAULT NULL COMMENT '?????ID',
  `PARENT_IDS` longtext COMMENT '?????ids',
  `NAME` varchar(100) DEFAULT NULL COMMENT '???????',
  `SORT` decimal(38,0) DEFAULT NULL COMMENT '???',
  `HREF` longtext COMMENT '???',
  `TARGET` varchar(20) DEFAULT NULL COMMENT '???',
  `ICON` varchar(100) DEFAULT NULL COMMENT '???',
  `IS_SHOW` char(1) DEFAULT NULL COMMENT '?????',
  `PERMISSION` varchar(200) DEFAULT NULL COMMENT '??????',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT '??????',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '???????',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT '?????',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '??????',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '????',
  `DEL_FLAG` char(1) DEFAULT NULL COMMENT '??????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???';
CREATE TABLE `sys_role` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `NAME` varchar(100) NOT NULL COMMENT '???????',
  `ENNAME` varchar(255) DEFAULT NULL COMMENT '???????',
  `ROLE_TYPE` varchar(255) DEFAULT NULL COMMENT '??????',
  `DATA_SCOPE` char(1) DEFAULT NULL COMMENT '?????Χ',
  `IS_SYS` varchar(64) DEFAULT NULL COMMENT '????????',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '??????',
  `CREATE_BY` varchar(64) NOT NULL COMMENT '??????',
  `CREATE_DATE` datetime NOT NULL COMMENT '???????',
  `UPDATE_BY` varchar(64) NOT NULL COMMENT '?????',
  `UPDATE_DATE` datetime NOT NULL COMMENT '??????',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '????',
  `DEL_FLAG` char(1) NOT NULL COMMENT '??????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???';
CREATE TABLE `sys_role_menu` (
  `ROLE_ID` varchar(64) NOT NULL,
  `MENU_ID` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `sys_user` (
  `ID` varchar(64) NOT NULL COMMENT 'ID',
  `LOGIN_NAME` varchar(100) NOT NULL COMMENT '???',
  `PASSWORD` varchar(100) NOT NULL COMMENT '????',
  `NO` varchar(100) DEFAULT NULL COMMENT '????',
  `NAME` varchar(100) NOT NULL COMMENT '?????',
  `EMAIL` varchar(200) DEFAULT NULL COMMENT '????',
  `PHONE` varchar(200) DEFAULT NULL COMMENT '?绰',
  `MOBILE` varchar(200) DEFAULT NULL COMMENT '???',
  `USER_TYPE` char(1) DEFAULT NULL COMMENT '???',
  `PHOTO` text COMMENT '???',
  `LOGIN_IP` varchar(100) DEFAULT NULL COMMENT '??ε??ip',
  `LOGIN_DATE` datetime DEFAULT NULL COMMENT '??ε?????',
  `LOGIN_FLAG` varchar(64) DEFAULT NULL COMMENT '??????',
  `OBJECT_ID` varchar(64) DEFAULT NULL COMMENT '????id',
  `OBJECT_DAO` varchar(200) DEFAULT NULL COMMENT '????dao',
  `CREATE_BY` varchar(64) NOT NULL COMMENT '??????',
  `CREATE_DATE` datetime NOT NULL COMMENT '???????',
  `UPDATE_BY` varchar(64) NOT NULL COMMENT '?????',
  `UPDATE_DATE` datetime NOT NULL COMMENT '??????',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '????',
  `DEL_FLAG` char(1) NOT NULL COMMENT '??????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???';
CREATE TABLE `sys_user_role` (
  `USER_ID` varchar(64) NOT NULL,
  `ROLE_ID` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
BEGIN;
LOCK TABLES `mact`.`gen_scheme` WRITE;
DELETE FROM `mact`.`gen_scheme`;
INSERT INTO `mact`.`gen_scheme` (`ID`,`NAME`,`CATEGORY`,`PACKAGE_NAME`,`MODULE_NAME`,`SUB_MODULE_NAME`,`FUNCTION_NAME`,`FUNCTION_NAME_SIMPLE`,`FUNCTION_AUTHOR`,`GEN_TABLE_ID`,`CREATE_BY`,`CREATE_DATE`,`UPDATE_BY`,`UPDATE_DATE`,`REMARKS`,`DEL_FLAG`) VALUES ('d5b9e891c42947ed92cf96d71281225c', 'mactUser', 'curd', 'com.thinkgem.javamg.modules', 'mact', '', 'mact用户', 'mact用户', 'lj', 'd1cac1abcefe42bfa3abba216588c490', '1', '2019-05-11 19:31:20', '1', '2019-05-12 16:53:48', '', '0');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`gen_table` WRITE;
DELETE FROM `mact`.`gen_table`;
INSERT INTO `mact`.`gen_table` (`ID`,`NAME`,`COMMENTS`,`CLASS_NAME`,`PARENT_TABLE`,`PARENT_TABLE_FK`,`CREATE_BY`,`CREATE_DATE`,`UPDATE_BY`,`UPDATE_DATE`,`REMARKS`,`DEL_FLAG`) VALUES ('d1cac1abcefe42bfa3abba216588c490', 'mact_user', '用户记录表', 'MactUser', '', '', '1', '2019-05-11 17:00:36', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', '', '0');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`gen_table_column` WRITE;
DELETE FROM `mact`.`gen_table_column`;
INSERT INTO `mact`.`gen_table_column` (`ID`,`GEN_TABLE_ID`,`NAME`,`COMMENTS`,`JDBC_TYPE`,`JAVA_TYPE`,`JAVA_FIELD`,`IS_PK`,`IS_NULL`,`IS_INSERT`,`IS_EDIT`,`IS_LIST`,`IS_QUERY`,`QUERY_TYPE`,`SHOW_TYPE`,`DICT_TYPE`,`SETTINGS`,`SORT`,`CREATE_BY`,`CREATE_DATE`,`UPDATE_BY`,`UPDATE_DATE`,`REMARKS`,`DEL_FLAG`) VALUES ('1e3b47b691fb416da5029d95a4e268d7', 'd1cac1abcefe42bfa3abba216588c490', 'id', 'id', 'varchar(64)', 'String', 'id', '0', '1', '1', '0', '1', '1', '=', 'input', '', NULL, 10.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('1ff2b5f6b09a4390a739ffb75aa36ec7', 'd1cac1abcefe42bfa3abba216588c490', 'user_name', '姓名', 'varchar(255)', 'String', 'userName', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 20.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('22e7912f3850483c92795107f88c17d8', 'd1cac1abcefe42bfa3abba216588c490', 'user_sex', '性别', 'char(1)', 'String', 'userSex', '0', '1', '1', '1', '1', '1', '=', 'radiobox', 'sex', NULL, 30.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('77cf4ec07b4841a888618c0cdfda2515', 'd1cac1abcefe42bfa3abba216588c490', 'birthday', '出生日期', 'date', 'java.util.Date', 'birthday', '0', '1', '1', '1', '1', '1', 'between', 'dateselect', '', NULL, 40.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('721b430626684fdfa17f48d1fbf1dc4e', 'd1cac1abcefe42bfa3abba216588c490', 'education', '学历', 'char(2)', 'String', 'education', '0', '1', '1', '1', '1', '1', 'like', 'select', 'education', NULL, 50.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('9b1e7a29903548149115515e43083c92', 'd1cac1abcefe42bfa3abba216588c490', 'login_time', '登录时间', 'datetime', 'java.util.Date', 'loginTime', '0', '1', '1', '1', '1', '1', 'between', 'dateselect', '', NULL, 60.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('4c6e0566a6524e8ca6474c248b8a79f3', 'd1cac1abcefe42bfa3abba216588c490', 'record_time', '录音时间', 'datetime', 'java.util.Date', 'recordTime', '0', '1', '1', '1', '1', '1', 'between', 'dateselect', '', NULL, 70.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('202e6cfb49c04cf49bc1f36c82225ebc', 'd1cac1abcefe42bfa3abba216588c490', 'file_name', '文件名', 'varchar(255)', 'String', 'fileName', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 80.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('345d051ed2434427bfcd43d9672954b3', 'd1cac1abcefe42bfa3abba216588c490', 'file_path', '录音文件地址', 'varchar(255)', 'String', 'filePath', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 90.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('afd85a374e384adc88668d6909f5ae08', 'd1cac1abcefe42bfa3abba216588c490', 'status', '状态（1有效、0无效）', 'char(1)', 'String', 'status', '0', '1', '1', '1', '1', '1', '=', 'radiobox', '', NULL, 100.00, '1', '2019-05-11 19:30:23', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('94199544ed69497a8cedfc356ab02c0c', 'd1cac1abcefe42bfa3abba216588c490', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.javamg.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', NULL, 110.00, '1', '2019-05-11 19:30:24', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('cc8de4ae156947cda93d4134ba4b8703', 'd1cac1abcefe42bfa3abba216588c490', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 120.00, '1', '2019-05-11 19:30:24', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('9bae606f20ca457faeaeaef94f361281', 'd1cac1abcefe42bfa3abba216588c490', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.javamg.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 130.00, '1', '2019-05-11 19:30:24', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('5a0f33da4b5a48b5975ac0f05a860047', 'd1cac1abcefe42bfa3abba216588c490', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 140.00, '1', '2019-05-11 19:30:24', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('d695b2f2e9ca4ba897041f0a8e555dea', 'd1cac1abcefe42bfa3abba216588c490', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', NULL, 150.00, '1', '2019-05-11 19:30:24', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0'),('670c4c7648de44cb8fc4f0e0ed0aa00b', 'd1cac1abcefe42bfa3abba216588c490', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '1', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 160.00, '1', '2019-05-11 19:30:24', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-12 16:40:51', NULL, '0');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`gen_template` WRITE;
DELETE FROM `mact`.`gen_template`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`mact_user` WRITE;
DELETE FROM `mact`.`mact_user`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`sys_area` WRITE;
DELETE FROM `mact`.`sys_area`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`sys_dict` WRITE;
DELETE FROM `mact`.`sys_dict`;
INSERT INTO `mact`.`sys_dict` (`ID`,`VALUE`,`LABEL`,`TYPE`,`DESCRIPTION`,`SORT`,`PARENT_ID`,`CREATE_BY`,`CREATE_DATE`,`UPDATE_BY`,`UPDATE_DATE`,`REMARKS`,`DEL_FLAG`) VALUES ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('93', 'String', 'String', 'gen_java_type', 'Java类型', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('94', 'Long', 'Long', 'gen_java_type', 'Java类型', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('95', 'dao', '仅持久层', 'gen_category', '代码生成分类', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('96', '1', '男', 'sex', '性别', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0'),('97', '2', '女', 'sex', '性别', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0'),('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('99', 'Double', 'Double', 'gen_java_type', 'Java类型', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('1', '0', '正常', 'del_flag', '删除标记', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('101', 'com.javamg.javamg.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('102', 'com.javamg.javamg.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('103', 'com.javamg.javamg.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('17', '1', '国家', 'sys_area_type', '区域类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('19', '3', '地市', 'sys_area_type', '区域类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('2', '1', '删除', 'del_flag', '删除标记', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('20', '4', '区县', 'sys_area_type', '区域类型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('3', '1', '显示', 'show_hide', '显示/隐藏', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('32', '1', '所有数据', 'sys_data_scope', '数据范围', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', 90, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('38', '9', '按明细设置', 'sys_data_scope', '数据范围', 100, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('39', '1', '系统管理', 'sys_user_type', '用户类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('4', '0', '隐藏', 'show_hide', '显示/隐藏', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('40', '2', '部门经理', 'sys_user_type', '用户类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('41', '3', '普通用户', 'sys_user_type', '用户类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('5', '1', '是', 'yes_no', '是/否', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('6', '0', '否', 'yes_no', '是/否', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('67', '1', '接入日志', 'sys_log_type', '日志类型', 30, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0'),('68', '2', '异常日志', 'sys_log_type', '日志类型', 40, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0'),('73', 'crud', '增删改查', 'gen_category', '代码生成分类', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('75', 'tree', '树结构', 'gen_category', '代码生成分类', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('76', '=', '=', 'gen_query_type', '查询方式', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('77', '!=', '!=', 'gen_query_type', '查询方式', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('78', '>', '>', 'gen_query_type', '查询方式', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('79', '<', '<', 'gen_query_type', '查询方式', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('80', 'between', 'Between', 'gen_query_type', '查询方式', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('81', 'like', 'Like', 'gen_query_type', '查询方式', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('84', 'input', '文本框', 'gen_show_type', '字段生成方案', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1'),('d33401e8a8be42d0a73fe175764a610e', '1', '博士研究生', 'education', '学历', 10, NULL, '1', '2019-05-12 16:39:19', '1', '2019-05-13 19:18:47', '', '0'),('3abd34ba4d804d48bd03d829e920a262', '2', '硕士研究生', 'education', '学历', 20, NULL, '1', '2019-05-12 16:40:01', '1', '2019-05-13 19:18:50', '', '0'),('b43a76192c64481db95bc308ff8695f6', '3', '本科', 'education', '学历', 30, NULL, '1', '2019-05-12 16:40:11', '1', '2019-05-12 16:40:11', '', '0'),('ed8cedd9c07c4dfba3fc26a995c240ef', '4', '高职', 'education', '学历', 40, NULL, '1', '2019-05-13 19:18:59', '1', '2019-05-13 19:19:09', '', '0'),('afdfa9b213904ed3b178b7f4ab74429a', '5', '大专', 'education', '学历', 50, NULL, '1', '2019-05-13 19:19:20', '1', '2019-05-13 19:19:20', '', '0'),('b0cd474736a44dfeb0f9f37070aaaca3', '6', '中专', 'education', '学历', 60, NULL, '1', '2019-05-13 19:19:32', '1', '2019-05-13 19:19:32', '', '0'),('6dcb47b30abd40578742bca1b55757ab', '7', '高级中学', 'education', '学历', 70, NULL, '1', '2019-05-13 19:19:43', '1', '2019-05-13 19:19:43', '', '0'),('50733b02796347b29203063e18fc0fca', '8', '初级中学', 'education', '学历', 80, NULL, '1', '2019-05-13 19:19:57', '1', '2019-05-13 19:19:57', '', '0'),('adfc94b299d94f11a559c0866173b13a', '9', '小学', 'education', '学历', 90, NULL, '1', '2019-05-13 19:20:07', '1', '2019-05-13 19:20:07', '', '0'),('8ed693532ac642c798154f5d19556ff2', '10', '其他', 'education', '学历', 100, NULL, '1', '2019-05-13 19:20:19', '1', '2019-05-13 19:20:19', '', '0');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`sys_log` WRITE;
DELETE FROM `mact`.`sys_log`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`sys_menu` WRITE;
DELETE FROM `mact`.`sys_menu`;
INSERT INTO `mact`.`sys_menu` (`ID`,`PARENT_ID`,`PARENT_IDS`,`NAME`,`SORT`,`HREF`,`TARGET`,`ICON`,`IS_SHOW`,`PERMISSION`,`CREATE_BY`,`CREATE_DATE`,`UPDATE_BY`,`UPDATE_DATE`,`REMARKS`,`DEL_FLAG`) VALUES ('1', '0', '0,', '功能菜单', 0, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('79', '1', '0,1,', '代码生成', 5000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0'),('27', '1', '0,1,', '我的面板', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('2', '1', '0,1,', '系统设置', 900, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('11', '10', '0,1,2,3,10,', '查看', 30, NULL, NULL, NULL, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('12', '10', '0,1,2,3,10,', '修改', 40, NULL, NULL, NULL, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('14', '13', '0,1,2,13,', '区域管理', 50, '/sys/area/', NULL, 'icon-th', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('20', '13', '0,1,2,13,', '用户管理', 30, '/sys/user/list', NULL, 'icon-user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('15', '14', '0,1,2,13,14,', '查看', 30, NULL, NULL, NULL, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('16', '14', '0,1,2,13,14,', '修改', 40, NULL, NULL, NULL, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('67', '2', '0,1,2,', '日志查询', 985, NULL, NULL, NULL, '1', NULL, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0'),('3', '2', '0,1,2,', '系统设置', 980, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('13', '2', '0,1,2,', '用户管理', 970, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('21', '20', '0,1,2,13,20,', '查看', 30, NULL, NULL, NULL, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('22', '20', '0,1,2,13,20,', '修改', 40, NULL, NULL, NULL, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('71', '27', '0,1,27,', '文件管理', 90, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('28', '27', '0,1,27,', '个人信息', 30, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('29', '28', '0,1,27,28,', '个人信息', 30, '/sys/user/info', NULL, 'icon-user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('30', '28', '0,1,27,28,', '修改密码', 40, '/sys/user/modifyPwd', NULL, 'icon-lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('7', '3', '0,1,2,3,', '角色管理', 50, '/sys/role/', NULL, 'icon-lock', '1', 'sys:role:view,sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('4', '3', '0,1,2,3,', '菜单管理', 30, '/sys/menu/', NULL, 'icon-list-alt', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('10', '3', '0,1,2,3,', '字典管理', 60, '/sys/dict/', NULL, 'icon-th-list', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('5', '4', '0,1,2,3,4,', '查看', 30, NULL, NULL, NULL, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('6', '4', '0,1,2,3,4,', '修改', 40, NULL, NULL, NULL, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('57', '56', '0,1,27,40,56,', '查看', 30, NULL, NULL, NULL, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('59', '56', '0,1,27,40,56,', '修改', 50, NULL, NULL, NULL, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('58', '56', '0,1,27,40,56,', '上传', 40, NULL, NULL, NULL, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('68', '67', '0,1,2,67,', '日志查询', 30, '/sys/log', NULL, 'icon-pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0'),('84', '67', '0,1,2,67,', '连接池监视', 40, '/../druid', NULL, 'icon-indent-right', '1', NULL, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', NULL, '0'),('8', '7', '0,1,2,3,7,', '查看', 30, NULL, NULL, NULL, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('9', '7', '0,1,2,3,7,', '修改', 40, NULL, NULL, NULL, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('56', '71', '0,1,27,71,', '文件管理', 90, '/../static/ckfinder/ckfinder.html', NULL, 'icon-folder-open', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0'),('80', '79', '0,1,79,', '代码生成', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0'),('81', '80', '0,1,79,80,', '生成方案配置', 30, '/gen/genScheme', NULL, NULL, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0'),('82', '80', '0,1,79,80,', '业务表配置', 20, '/gen/genTable', NULL, NULL, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0'),('691af558a1064f5d9b73e9c324ca8642', '1', '0,1,', '语料管理', 5030, '', '', '', '1', '', '1', '2019-05-12 16:23:18', '1', '2019-05-12 16:23:18', '', '0'),('4c1df4fe11ea42f9ab3be17687e46aec', '76e5943ff36146ed98e7232c37f6acb5', '0,1,691af558a1064f5d9b73e9c324ca8642,76e5943ff36146ed98e7232c37f6acb5,', '语料采集', 30, '/mact/mactUser', '', 'icon-music', '1', '', '1', '2019-05-12 16:24:58', '1', '2019-05-12 16:52:07', '', '0'),('b21ea914cc5244a8ba948e316e521756', '4c1df4fe11ea42f9ab3be17687e46aec', '0,1,691af558a1064f5d9b73e9c324ca8642,76e5943ff36146ed98e7232c37f6acb5,4c1df4fe11ea42f9ab3be17687e46aec,', '查看', 30, '', '', '', '0', 'mact:mactUser:view', '1', '2019-05-12 16:25:51', '1', '2019-05-12 16:26:08', '', '0'),('16bf67bedce94e4ca7119a2beb74af8d', '4c1df4fe11ea42f9ab3be17687e46aec', '0,1,691af558a1064f5d9b73e9c324ca8642,76e5943ff36146ed98e7232c37f6acb5,4c1df4fe11ea42f9ab3be17687e46aec,', '修改', 60, '', '', '', '0', 'mact:mactUser:edit', '1', '2019-05-12 16:26:24', '1', '2019-05-12 16:26:24', '', '0'),('76e5943ff36146ed98e7232c37f6acb5', '691af558a1064f5d9b73e9c324ca8642', '0,1,691af558a1064f5d9b73e9c324ca8642,', '语料管理', 10, '', '', '', '1', '', '1', '2019-05-12 16:29:39', '1', '2019-05-12 16:29:39', '', '0');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`sys_role` WRITE;
DELETE FROM `mact`.`sys_role`;
INSERT INTO `mact`.`sys_role` (`ID`,`NAME`,`ENNAME`,`ROLE_TYPE`,`DATA_SCOPE`,`IS_SYS`,`USEABLE`,`CREATE_BY`,`CREATE_DATE`,`UPDATE_BY`,`UPDATE_DATE`,`REMARKS`,`DEL_FLAG`) VALUES ('1', '系统管理员', 'sysadmin', 'assignment', '1', '1', '1', '1', '2013-05-27 08:00:00', '1', '2015-07-10 11:41:44', '系统内置管理员角色', '0'),('5da6dc7368fb44e29bbd337e38ae501a', '普通用户', 'normal', 'assignment', '8', '1', '1', '1', '2019-05-07 18:46:14', '1', '2019-05-07 18:46:14', NULL, '0'),('dce5ba3a2bbc40038dd7a4986966a23d', '语料管理', 'radioRole', 'assignment', '8', '1', '1', '1', '2019-05-08 09:57:58', '1', '2019-05-13 17:39:33', '', '0');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`sys_role_menu` WRITE;
DELETE FROM `mact`.`sys_role_menu`;
INSERT INTO `mact`.`sys_role_menu` (`ROLE_ID`,`MENU_ID`) VALUES ('1', '1'),('1', '2'),('1', '13'),('1', '20'),('1', '21'),('1', '22'),('1', '14'),('1', '15'),('1', '16'),('1', '3'),('1', '4'),('1', '5'),('1', '6'),('1', '7'),('1', '10'),('1', '11'),('1', '12'),('1', '67'),('1', '79'),('1', '80'),('1', '82'),('1', '81'),('1', '84'),('5da6dc7368fb44e29bbd337e38ae501a', '1'),('5da6dc7368fb44e29bbd337e38ae501a', '79'),('5da6dc7368fb44e29bbd337e38ae501a', '80'),('5da6dc7368fb44e29bbd337e38ae501a', '82'),('5da6dc7368fb44e29bbd337e38ae501a', '81'),('dce5ba3a2bbc40038dd7a4986966a23d', '1'),('dce5ba3a2bbc40038dd7a4986966a23d', '691af558a1064f5d9b73e9c324ca8642'),('dce5ba3a2bbc40038dd7a4986966a23d', '76e5943ff36146ed98e7232c37f6acb5'),('dce5ba3a2bbc40038dd7a4986966a23d', '4c1df4fe11ea42f9ab3be17687e46aec'),('dce5ba3a2bbc40038dd7a4986966a23d', 'b21ea914cc5244a8ba948e316e521756'),('dce5ba3a2bbc40038dd7a4986966a23d', '16bf67bedce94e4ca7119a2beb74af8d');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`sys_user` WRITE;
DELETE FROM `mact`.`sys_user`;
INSERT INTO `mact`.`sys_user` (`ID`,`LOGIN_NAME`,`PASSWORD`,`NO`,`NAME`,`EMAIL`,`PHONE`,`MOBILE`,`USER_TYPE`,`PHOTO`,`LOGIN_IP`,`LOGIN_DATE`,`LOGIN_FLAG`,`OBJECT_ID`,`OBJECT_DAO`,`CREATE_BY`,`CREATE_DATE`,`UPDATE_BY`,`UPDATE_DATE`,`REMARKS`,`DEL_FLAG`) VALUES ('1', 'admin', '5dc0d51b48fc82df9b45de40b86e9ce0a4e7f825b10417115ab3c74c', NULL, '系统管理员', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2019-05-14 11:18:52', '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2015-07-10 11:41:22', '最高管理员', '0'),('b0419abf585742d4a93a65fd4115fc6b', 'timsaid', '0829b7245a492a5b785e2824cf000fe3f554b25aaa6ce05f2a436cf8', NULL, 'timsaid', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2019-05-14 11:26:17', '1', NULL, NULL, '1', '2019-05-07 18:46:51', '1', '2019-05-13 17:39:41', NULL, '0'),('8a4c7df9f62a46bd93146a0947e6d49c', 'mact', 'f4b4b771191dcb13eee1c7cbdd042e5fec074d06ca078e3dc4b57d78', NULL, 'mact', '', '', '', '', '', '127.0.0.1', '2019-05-23 16:52:38', '1', NULL, NULL, '1', '2019-05-13 17:40:23', '1', '2019-05-13 17:40:23', '', '0');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `mact`.`sys_user_role` WRITE;
DELETE FROM `mact`.`sys_user_role`;
INSERT INTO `mact`.`sys_user_role` (`USER_ID`,`ROLE_ID`) VALUES ('1', '1'),('b0419abf585742d4a93a65fd4115fc6b', '5da6dc7368fb44e29bbd337e38ae501a'),('b0419abf585742d4a93a65fd4115fc6b', 'dce5ba3a2bbc40038dd7a4986966a23d'),('8a4c7df9f62a46bd93146a0947e6d49c', 'dce5ba3a2bbc40038dd7a4986966a23d');
UNLOCK TABLES;
COMMIT;
