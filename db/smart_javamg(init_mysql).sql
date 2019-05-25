/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : smart_javamg

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 11/05/2019 16:57:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_scheme
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NAME',
  `CATEGORY` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'CATEGORY',
  `PACKAGE_NAME` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'PACKAGE_NAME',
  `MODULE_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'MODULE_NAME',
  `SUB_MODULE_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SUB_MODULE_NAME',
  `FUNCTION_NAME` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'FUNCTION_NAME',
  `FUNCTION_NAME_SIMPLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'FUNCTION_NAME_SIMPLE',
  `FUNCTION_AUTHOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'FUNCTION_AUTHOR',
  `GEN_TABLE_ID` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'GEN_TABLE_ID',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'CREATE_BY',
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT 'CREATE_DATE',
  `UPDATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'UPDATE_BY',
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT 'UPDATE_DATE',
  `REMARKS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'REMARKS',
  `DEL_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'DEL_FLAG'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'GEN_SCHEME' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NAME',
  `COMMENTS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'COMMENTS',
  `CLASS_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'CLASS_NAME',
  `PARENT_TABLE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PARENT_TABLE',
  `PARENT_TABLE_FK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PARENT_TABLE_FK',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'CREATE_BY',
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT 'CREATE_DATE',
  `UPDATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'UPDATE_BY',
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT 'UPDATE_DATE',
  `REMARKS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'REMARKS',
  `DEL_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'DEL_FLAG'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'GEN_TABLE' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `GEN_TABLE_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'GEN_TABLE_ID',
  `NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NAME',
  `COMMENTS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'COMMENTS',
  `JDBC_TYPE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JDBC_TYPE',
  `JAVA_TYPE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'JAVA_TYPE',
  `JAVA_FIELD` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA_FIELD',
  `IS_PK` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IS_PK',
  `IS_NULL` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IS_NULL',
  `IS_INSERT` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IS_INSERT',
  `IS_EDIT` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IS_EDIT',
  `IS_LIST` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IS_LIST',
  `IS_QUERY` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IS_QUERY',
  `QUERY_TYPE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QUERY_TYPE',
  `SHOW_TYPE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SHOW_TYPE',
  `DICT_TYPE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DICT_TYPE',
  `SETTINGS` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'SETTINGS',
  `SORT` decimal(38, 2) NULL DEFAULT NULL COMMENT 'SORT',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'CREATE_BY',
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT 'CREATE_DATE',
  `UPDATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'UPDATE_BY',
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT 'UPDATE_DATE',
  `REMARKS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'REMARKS',
  `DEL_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'DEL_FLAG'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'GEN_TABLE_COLUMN' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NAME',
  `CATEGORY` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'CATEGORY',
  `FILE_PATH` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'FILE_PATH',
  `FILE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'FILE_NAME',
  `CONTENT` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'CONTENT',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'CREATE_BY',
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT 'CREATE_DATE',
  `UPDATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'UPDATE_BY',
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT 'UPDATE_DATE',
  `REMARKS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'REMARKS',
  `DEL_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'DEL_FLAG'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'GEN_TEMPLATE' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mact_user
-- ----------------------------
DROP TABLE IF EXISTS `mact_user`;
CREATE TABLE `mact_user`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `user_sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `education` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `record_time` datetime(0) NULL DEFAULT NULL COMMENT '录音时间',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录音文件地址',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（1有效、0无效）'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `PARENT_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????ID',
  `PARENT_IDS` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????IDS',
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????',
  `SORT` decimal(38, 0) NOT NULL COMMENT '???',
  `CODE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `CREATE_DATE` datetime(0) NOT NULL COMMENT '????????',
  `UPDATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `UPDATE_DATE` datetime(0) NOT NULL COMMENT '????????',
  `REMARKS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `DEL_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `VALUE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?',
  `LABEL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '???',
  `TYPE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????',
  `SORT` decimal(38, 0) NOT NULL COMMENT '???',
  `PARENT_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????ID',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `CREATE_DATE` datetime(0) NOT NULL COMMENT '????????',
  `UPDATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `UPDATE_DATE` datetime(0) NOT NULL COMMENT '????????',
  `REMARKS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `DEL_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'sex', '性别', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('101', 'com.javamg.javamg.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('102', 'com.javamg.javamg.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('103', 'com.javamg.javamg.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市', 'sys_area_type', '区域类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('20', '4', '区县', 'sys_area_type', '区域类型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', 90, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', 100, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', 30, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', 40, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('78', '>', '>', 'gen_query_type', '查询方式', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('79', '<', '<', 'gen_query_type', '查询方式', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `TITLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT '????????',
  `REMOTE_ADDR` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `USER_AGENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????',
  `REQUEST_URI` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????URI',
  `METHOD` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `PARAMS` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????',
  `EXCEPTION` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('95c9f57731854c1b8406f61eccf6b338', '1', '系统设置-系统设置-菜单管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:48:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('57fac1e6282c4c6ba358130774be5ab5', '1', '系统设置-系统设置-菜单管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:48:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('873cf39e232946dc9d59621a1689fd18', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:48:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1b70846df9bc404d8a9cf34b4523a6de', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:30:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('09080b3342ba4383bc6be8ac6584499d', '1', '系统设置-系统设置-角色管理-修改', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:31:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/assign', 'GET', 'id=1', NULL);
INSERT INTO `sys_log` VALUES ('fea8883f3e354d50ad741bd7ae53e7bd', '1', '系统设置-用户管理-用户管理-查看', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:33:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/form', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('606bacae9f794cb389f2941c648e42dd', '1', '系统设置-用户管理-用户管理-查看', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:33:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/form', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('49849ec97cdc4ea99ca63a7a3a46ba9c', '1', '系统设置-用户管理-区域管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:33:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/area/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f632a09f46bc4d69be05d8c46c720189', '1', '系统设置-系统设置-菜单管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:33:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('14d2bf72aaa249caba336caff8f56008', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:33:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('03300c61199341abb99d9730d8773c8d', '1', '系统设置-系统设置-角色管理-修改', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:34:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/assign', 'GET', 'id=1', NULL);
INSERT INTO `sys_log` VALUES ('19d6013312b049679c2fa883ab6664db', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:34:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e66e4631e6b343e485cf08112008f0f7', '1', '系统设置-系统设置-角色管理-修改', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:34:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/assign', 'GET', 'id=5da6dc7368fb44e29bbd337e38ae501a', NULL);
INSERT INTO `sys_log` VALUES ('a1f92c2ac1be4636bf30906bc649a42c', '1', '系统设置-系统设置-菜单管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:35:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a86ff0ffd8bb479998841db090e19c73', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:35:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5500d88dd95d4aae9a55f37aa9e1afb9', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:36:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('496c04addde343b787f893b7957f5164', '1', '系统设置-用户管理-区域管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:36:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/area/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8063d35e2f1541f9ae683815d7bd0f62', '1', '系统设置-系统设置-菜单管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:36:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9a01502a05954786bc80cdc10c81b2e7', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:36:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('9e3d9746dbf34bf484856250e04fe559', '1', '系统设置-用户管理-区域管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:38:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/area/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8edc53fc69214deebcea152fe1807ff2', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:38:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('96cadf64379e4eb7a54f137a47c46e00', '1', '系统设置-系统设置-菜单管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:40:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6de0ffe0fd664dc8821573922f230034', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:40:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('57889f824fb94f328a025797c99b7dc9', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:40:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('864bfab663ba4b4a8473a86568b1f7ef', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:40:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('546d990993a84ee3a43f7601a799ffbb', '1', '系统设置-系统设置-角色管理-查看', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:40:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/form', 'GET', 'id=5da6dc7368fb44e29bbd337e38ae501a', NULL);
INSERT INTO `sys_log` VALUES ('a3f57d620713498b85ae39228840de98', '1', '系统登录', '1', '2019-05-08 09:30:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('aed619e171f64832aae8ee5237f93fbe', '1', '系统设置-用户管理-用户管理', '1', '2019-05-08 09:30:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('048f9e4be11f4b95865487dc3862ebf2', '1', '系统设置-用户管理-区域管理', '1', '2019-05-08 09:30:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/area/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('45c39d91d8ca49a089360597cd34e206', '1', '系统设置-系统设置-菜单管理', '1', '2019-05-08 09:30:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b4279850da9149289292dcce9a829b3d', '1', '系统设置-系统设置-角色管理', '1', '2019-05-08 09:30:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('afa4de961377426db996220fa15dda14', '1', '系统设置-系统设置-字典管理', '1', '2019-05-08 09:30:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/dict/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('006375fe834042f887f05cb2ece30d55', '1', '系统设置-系统设置-角色管理', '1', '2019-05-08 09:30:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a65b53d2c5e944ae943a2d101af89d93', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:30:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('062635fb36c442e0bfe99f123fdc7516', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:30:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f06cedf7c2bf4315b61a84748ec12942', '1', '系统设置-系统设置-角色管理-修改', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:31:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/assign', 'GET', 'id=1', NULL);
INSERT INTO `sys_log` VALUES ('0700e36039f34648b2e571f90b2497fb', '1', '系统设置-系统设置-角色管理-查看', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:31:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/usertorole', 'GET', 'id=1', NULL);
INSERT INTO `sys_log` VALUES ('a3a036d197f842db96fe24b020f4d00c', '1', '系统设置-系统设置-角色管理-修改', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:31:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/assignrole', 'POST', 'id=1&idsArr=b0419abf585742d4a93a65fd4115fc6b,timsaid', NULL);
INSERT INTO `sys_log` VALUES ('6f5c6a10555b40cfa32fd559a3540663', '1', '系统登录', '1', '2019-05-08 09:31:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('31706a6c1190426a8fb6bff32b5fda0c', '1', '系统设置-用户管理-用户管理', '1', '2019-05-08 09:31:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a796ad240f884a599e1494a0acb42c08', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:31:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('4b059dedc1da47ca8bc17c25b37a15ce', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:31:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('91b5e6b1d3a74b659ac4dc969094953a', '1', '系统设置-用户管理-区域管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:31:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/area/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e4716b53fd144eb985cbe644e7ce1ae6', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:31:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('278cff5eeba849099a0ffab9fa2a4858', '1', '系统设置-用户管理-用户管理-查看', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:31:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/form', 'GET', 'id=b0419abf585742d4a93a65fd4115fc6b', NULL);
INSERT INTO `sys_log` VALUES ('6c9f45955469491b8e0920ae490f7947', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:32:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0f9944bb3e6d43e3bb2948ab22341404', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:33:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/form', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dd856181f5f94122994c7b8f7d3c9b70', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:33:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('fdb17d65fee140769dd5c5e0ff486cbd', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:33:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1e8a0393a32f4d81aae864a044073c7c', '1', '系统设置-系统设置-角色管理-查看', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:40:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/form', 'GET', 'id=5da6dc7368fb44e29bbd337e38ae501a', NULL);
INSERT INTO `sys_log` VALUES ('f7ef4efc62c441d998c9f89f6665bc0d', '1', '代码生成-代码生成-业务表配置', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:41:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/gen/genTable', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1b7fb0c489f04fc4a823e6a83db2b312', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:41:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('28e1de3122e4427290e14ef5683b20d7', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:41:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6e82d42c735046cfbcb29d1fecb9b26a', '1', '系统设置-系统设置-菜单管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:41:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('083059090ee14ccf8ff6d37f77bd4a0c', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:41:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c116fe4cf8914648a0a3c2a88aa3b16a', '1', '系统设置-系统设置-菜单管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:41:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ba921afb88214df69a27d1e5b5e4fa1c', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:46:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('eee9e2b3767a4f54a722c8e2ccef2979', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:56:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7acd11ef911c43cba62d8926d000cedf', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:56:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d455c2c525fb48d1ab25d4ff428865e3', '1', '系统设置-用户管理-用户管理-查看', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:56:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/form', 'GET', 'id=b0419abf585742d4a93a65fd4115fc6b', NULL);
INSERT INTO `sys_log` VALUES ('f6d3c909b53646c5a5b2e4d323f97673', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:56:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('68699b2d8af2418e9f41118ad2b00b9e', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:56:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d4f8dde845e349d0a9332bf84930aa48', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:56:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7f1126696d484eab92c55b5691df1af6', '1', '系统设置-系统设置-角色管理-查看', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:56:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/form', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5ccd27196bf840619ad951be44edcef7', '1', '系统设置-系统设置-角色管理-修改', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:57:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/save', 'POST', 'id=&oldName=&name=测试角色&oldEnname=&enname=testrole&roleType=assignment&sysData=1&useable=1&menuIds=1,2,13,14,15,16&remarks=', NULL);
INSERT INTO `sys_log` VALUES ('f38dd81648a84026bff7042da0650913', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:57:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', 'repage=', NULL);
INSERT INTO `sys_log` VALUES ('c0e41c2f32d442cc9837aa060a8aec9e', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:57:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c4da37c764724b1c97a20f1f6792b43f', '1', '系统登录', '1', '2019-05-08 09:57:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('b48f1e9ce44e4942946ac912f7550a2f', '1', '系统设置-用户管理-用户管理', '1', '2019-05-08 09:57:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('6fb968ea5e9d4606b177c1bd540a776b', '1', '系统设置-系统设置-角色管理', '1', '2019-05-08 09:57:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f3306a0be30740ceb55d8c191841203c', '1', '系统设置-系统设置-菜单管理', '1', '2019-05-08 09:57:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('44fb2515ebe741a990f7f07d3cad3d2b', '1', '系统设置-系统设置-角色管理', '1', '2019-05-08 09:57:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('21cdf699687d4b38a863e05ea442ab91', '1', '系统设置-系统设置-角色管理-查看', '1', '2019-05-08 09:57:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/form', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('09b464a21a15490cb55f462004d99dfd', '1', '系统设置-系统设置-角色管理-修改', '1', '2019-05-08 09:57:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/save', 'POST', 'id=&oldName=&name=测试角色&oldEnname=&enname=testRole&roleType=assignment&sysData=1&useable=1&menuIds=1,27,71,56,57,58,59&remarks=', NULL);
INSERT INTO `sys_log` VALUES ('3817d6f77bda47418d17d04ab665b73a', '1', '系统设置-系统设置-角色管理', '1', '2019-05-08 09:57:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', 'repage=', NULL);
INSERT INTO `sys_log` VALUES ('8fa3cfadec834fb79adcb7153c16a927', '1', '系统设置-用户管理-用户管理', '1', '2019-05-08 09:58:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('dc53670d9c54428a9173fa7a238eaced', '1', '系统设置-用户管理-用户管理-查看', '1', '2019-05-08 09:58:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/form', 'GET', 'id=b0419abf585742d4a93a65fd4115fc6b', NULL);
INSERT INTO `sys_log` VALUES ('c1e9379bef8642178f791fc51eb68bca', '1', '系统登录', '1', '2019-05-07 18:44:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('b91faefd401b4123a46653717251b677', '1', '系统设置-系统设置-角色管理', '1', '2019-05-07 18:45:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1fbddb4f23374fdfaf26c740f8cfcf30', '1', '系统设置-系统设置-角色管理-查看', '1', '2019-05-07 18:45:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/form', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('693cc5f599d142f885baa7b25dfba938', '1', '系统设置-系统设置-角色管理-修改', '1', '2019-05-07 18:46:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/save', 'POST', 'id=&oldName=&name=普通用户&oldEnname=&enname=normal&roleType=assignment&sysData=1&useable=1&menuIds=1,79,80,82,81&remarks=', NULL);
INSERT INTO `sys_log` VALUES ('b1cf1f8f62fe45c1ac2ed563e64fa539', '1', '系统设置-系统设置-角色管理', '1', '2019-05-07 18:46:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', 'repage=', NULL);
INSERT INTO `sys_log` VALUES ('a2e50026fa324f169f5f43b5ca66c6e5', '1', '系统设置-系统设置-角色管理-修改', '1', '2019-05-07 18:46:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/assign', 'GET', 'id=5da6dc7368fb44e29bbd337e38ae501a', NULL);
INSERT INTO `sys_log` VALUES ('367378df81e9427abcdb6dbe3fda5f22', '1', '系统设置-系统设置-角色管理-查看', '1', '2019-05-07 18:46:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/usertorole', 'POST', 'id=5da6dc7368fb44e29bbd337e38ae501a&___t0.37355852882236973=', NULL);
INSERT INTO `sys_log` VALUES ('f7166aac601b4eae8de2baaac1aea67e', '1', '系统设置-系统设置-角色管理-查看', '1', '2019-05-07 18:46:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/usertorole', 'POST', 'id=5da6dc7368fb44e29bbd337e38ae501a&___t0.5160874444621832=', NULL);
INSERT INTO `sys_log` VALUES ('79dc928756984e92ae7fb270ff3cefe9', '1', '系统设置-系统设置-角色管理', '1', '2019-05-07 18:46:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('76bdd8a06914416584caeab47a23ee84', '1', '系统设置-用户管理-用户管理', '1', '2019-05-07 18:46:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('204428cb95a94ee08f340078d41c74d2', '1', '系统设置-用户管理-用户管理-查看', '1', '2019-05-07 18:46:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/form', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5e3e77e214ed4be4adba80542d705cd9', '1', '系统设置-用户管理-用户管理-修改', '1', '2019-05-07 18:46:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/checkLoginName', 'GET', 'oldLoginName=&loginName=timsaid', NULL);
INSERT INTO `sys_log` VALUES ('d468a405be7e4d508e1a882ba8113413', '1', '系统设置-用户管理-用户管理-修改', '1', '2019-05-07 18:46:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/save', 'POST', 'id=&photo=&name=timsaid&oldLoginName=&loginName=timsaid&newPassword=&confirmNewPassword=&email=&phone=&mobile=&loginFlag=1&userType=&roleIdList=5da6dc7368fb44e29bbd337e38ae501a&_roleIdList=on&remarks=', NULL);
INSERT INTO `sys_log` VALUES ('9814023a577044a1928439a975abdf69', '1', '系统设置-用户管理-用户管理', '1', '2019-05-07 18:46:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', 'repage=', NULL);
INSERT INTO `sys_log` VALUES ('3066b738c36e42df93673f3796b74bad', '1', '系统设置-系统设置-菜单管理', '1', '2019-05-07 18:46:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2421167896d64f529394e3009e4ec2f1', '1', '系统设置-系统设置-角色管理', '1', '2019-05-07 18:46:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2e98a431a5664993967b0a8cff476df1', '1', '系统设置-系统设置-角色管理-修改', '1', '2019-05-07 18:46:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/assign', 'GET', 'id=5da6dc7368fb44e29bbd337e38ae501a', NULL);
INSERT INTO `sys_log` VALUES ('694c18c4969f414a8c07b44d7f4960ae', '1', '系统设置-系统设置-角色管理', '1', '2019-05-07 18:47:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('75173fc6e70c4be3bde4f04014a6c1f9', '1', '系统设置-系统设置-角色管理-修改', '1', '2019-05-07 18:47:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/assign', 'GET', 'id=1', NULL);
INSERT INTO `sys_log` VALUES ('457756c04327415e920fbf6259c6a478', '1', '系统设置-系统设置-角色管理-查看', '1', '2019-05-07 18:47:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/usertorole', 'POST', 'id=1&___t0.48117840289242375=', NULL);
INSERT INTO `sys_log` VALUES ('fb07e75932a5459e87f6c0581c98a826', '1', '系统设置-系统设置-角色管理', '1', '2019-05-07 18:47:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('5e42dd7c37d048fa865915d8962f9476', '1', '系统设置-系统设置-角色管理-修改', '1', '2019-05-07 18:47:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/assign', 'GET', 'id=1', NULL);
INSERT INTO `sys_log` VALUES ('8c97fa47d18f416c9d7687450d6e7460', '1', '系统设置-用户管理-用户管理', '1', '2019-05-07 18:44:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('b72e6b143c714a6ea7f69268bd88c2a3', '1', '系统设置-用户管理-区域管理', '1', '2019-05-07 18:44:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/area/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('540c5cae5184471c9323c50e46a6716c', '1', '系统设置-用户管理-用户管理', '1', '2019-05-07 18:44:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('23ad505f40c94e70b465364dd025e200', '1', '系统设置-系统设置-菜单管理', '1', '2019-05-07 18:45:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('08db6588c8a64fd4b7e3d53cb4630ce5', '1', '系统设置-系统设置-角色管理', '1', '2019-05-07 18:45:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('40486626e8444f27a51afbd4ce9af4e9', '1', '系统设置-系统设置-字典管理', '1', '2019-05-07 18:45:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/dict/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('7db23dd114114889a1cb57c2630d9bef', '1', '系统设置-系统设置-菜单管理', '1', '2019-05-07 18:45:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f20eab4fd5f1423a8b4c212bb889224f', '1', '系统设置-系统设置-角色管理', '1', '2019-05-07 18:45:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4cc51120ba2849d8846da075e3526264', '1', '系统设置-系统设置-字典管理', '1', '2019-05-07 18:45:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/dict/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d895b55a9de84e88909a6f41c980fc20', '1', '系统设置-系统设置-菜单管理', '1', '2019-05-07 18:45:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2585eacd22d44d2ab49e857902289d03', '1', '系统设置-用户管理-用户管理', '1', '2019-05-07 18:47:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('965fa128dd614298b12cc3b5e277822d', '1', '系统设置-用户管理-用户管理-查看', '1', '2019-05-07 18:47:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/form', 'GET', 'id=b0419abf585742d4a93a65fd4115fc6b', NULL);
INSERT INTO `sys_log` VALUES ('e69b6e66359e4db38bad965716121cfc', '1', '系统设置-用户管理-用户管理-修改', '1', '2019-05-07 18:47:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/checkLoginName', 'GET', 'oldLoginName=timsaid&loginName=timsaid', NULL);
INSERT INTO `sys_log` VALUES ('493356def4d84f399f1bbfcc5626b313', '1', '系统设置-用户管理-用户管理-修改', '1', '2019-05-07 18:47:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/save', 'POST', 'id=b0419abf585742d4a93a65fd4115fc6b&photo=&name=timsaid&oldLoginName=timsaid&loginName=timsaid&newPassword=&confirmNewPassword=&email=&phone=&mobile=&loginFlag=1&userType=&roleIdList=5da6dc7368fb44e29bbd337e38ae501a&_roleIdList=on&remarks=', NULL);
INSERT INTO `sys_log` VALUES ('ff00cb9513214933ba07835a5bb92aaf', '1', '系统设置-用户管理-用户管理', '1', '2019-05-07 18:47:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', 'repage=', NULL);
INSERT INTO `sys_log` VALUES ('fd1262e4cbbe4c23870ed65b53752746', '1', '系统设置-系统设置-角色管理', '1', '2019-05-07 18:47:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('40aa3b5962ae4b97a9b2b00ef3e01f43', '1', '系统设置-系统设置-角色管理-修改', '1', '2019-05-07 18:47:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/assign', 'GET', 'id=1', NULL);
INSERT INTO `sys_log` VALUES ('8611a0c582d64156840e92760e299f89', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:47:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('d7935473336f49bca24a1b2f017dde5b', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:47:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2d21db3de3ce4cd1931c99a5d32abc40', '1', '系统设置-系统设置-菜单管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:48:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/menu/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1fdfcfcce7794a429f208ea10abb5475', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:48:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('f3ae52b8075a43bd869afe8a9f0bdb15', '1', '系统设置-用户管理-区域管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:48:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/area/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ace3f4b41a4a4e7a8aaa057e5ad88dca', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:48:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('16b033adbbf64030b82280a9d3206816', '1', '系统设置-系统设置-角色管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-07 18:48:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a86db092e6a346fab4ce040bd1ace0d0', '1', '系统设置-用户管理-用户管理-修改', '1', '2019-05-08 09:58:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/checkLoginName', 'GET', 'oldLoginName=timsaid&loginName=timsaid', NULL);
INSERT INTO `sys_log` VALUES ('2cfb78bb144e49b48668cbe9fea7c122', '1', '系统设置-用户管理-用户管理-修改', '1', '2019-05-08 09:58:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/save', 'POST', 'id=b0419abf585742d4a93a65fd4115fc6b&photo=&name=timsaid&oldLoginName=timsaid&loginName=timsaid&newPassword=&confirmNewPassword=&email=&phone=&mobile=&loginFlag=1&userType=&roleIdList=dce5ba3a2bbc40038dd7a4986966a23d&_roleIdList=on&remarks=', NULL);
INSERT INTO `sys_log` VALUES ('11b90be91af747008561b7753e13112a', '1', '系统设置-用户管理-用户管理', '1', '2019-05-08 09:58:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', 'repage=', NULL);
INSERT INTO `sys_log` VALUES ('456678288c174d7da177a9ec683a8bbb', '1', '系统设置-系统设置-角色管理', '1', '2019-05-08 09:58:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('d5464e0691de4afd9ad0b50aae8f405d', '1', '系统设置-系统设置-角色管理-修改', '1', '2019-05-08 09:58:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/role/assign', 'GET', 'id=dce5ba3a2bbc40038dd7a4986966a23d', NULL);
INSERT INTO `sys_log` VALUES ('01947d48a131487a83732ce945dbf0aa', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:58:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('c83c962d3ca94d538286f916c69cc45e', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:58:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('0206d9c1140e4f6a9222a1f26cf274ae', '1', '代码生成-代码生成-业务表配置', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:58:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/gen/genTable', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('41f8ea288bd44fe49d9193a464d4ccc3', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:58:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1689b505595f4a80bf0557e926ce5575', '1', '系统设置-用户管理-用户管理', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:58:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/sys/user/list', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c0075c261d4041b99172ae156b65098f', '2', NULL, 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 10:03:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', 'login=', 'org.apache.jasper.JasperException: /WEB-INF/views/modules/sys/sysIndex.jsp (line: 212, column: 0) Unterminated &lt;c:if tag\r\n	at org.apache.jasper.compiler.DefaultErrorHandler.jspError(DefaultErrorHandler.java:41)\r\n	at org.apache.jasper.compiler.ErrorDispatcher.dispatch(ErrorDispatcher.java:275)\r\n	at org.apache.jasper.compiler.ErrorDispatcher.jspError(ErrorDispatcher.java:91)\r\n	at org.apache.jasper.compiler.Parser.parseBody(Parser.java:1686)\r\n	at org.apache.jasper.compiler.Parser.parseOptionalBody(Parser.java:1006)\r\n	at org.apache.jasper.compiler.Parser.parseCustomTag(Parser.java:1281)\r\n	at org.apache.jasper.compiler.Parser.parseElements(Parser.java:1460)\r\n	at org.apache.jasper.compiler.Parser.parse(Parser.java:139)\r\n	at org.apache.jasper.compiler.ParserController.doParse(ParserController.java:227)\r\n	at org.apache.jasper.compiler.ParserController.parse(ParserController.java:100)\r\n	at org.apache.jasper.compiler.Compiler.generateJava(Compiler.java:201)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:358)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:338)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:325)\r\n	at org.apache.jasper.JspCompilationContext.compile(JspCompilationContext.java:580)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:363)\r\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\r\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:716)\r\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\r\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\r\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\r\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:209)\r\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:267)\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1221)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1005)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:952)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:870)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:961)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:852)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:837)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:88)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:94)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:492)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:620)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:502)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1152)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:684)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.doRun(AprEndpoint.java:2527)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.run(AprEndpoint.java:2516)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n');
INSERT INTO `sys_log` VALUES ('80921f06419c4c9ba54c5f3b38149486', '1', '代码生成-代码生成-业务表配置', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 09:58:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a/gen/genTable', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('65de4a5a7ff44c4a93ec2ed2e3b631bd', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 10:04:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2b9762c65b1741298f110dc34874f5cc', '2', NULL, 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 10:04:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', NULL, 'org.apache.jasper.JasperException: /WEB-INF/views/modules/sys/sysIndex.jsp (line: 125, column: 188) The function getCurrentRole cannot be located with the specified prefix\r\n	at org.apache.jasper.compiler.DefaultErrorHandler.jspError(DefaultErrorHandler.java:41)\r\n	at org.apache.jasper.compiler.ErrorDispatcher.dispatch(ErrorDispatcher.java:275)\r\n	at org.apache.jasper.compiler.ErrorDispatcher.jspError(ErrorDispatcher.java:107)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor$1FVVisitor.visit(Validator.java:1600)\r\n	at org.apache.jasper.compiler.ELNode$Function.accept(ELNode.java:139)\r\n	at org.apache.jasper.compiler.ELNode$Nodes.visit(ELNode.java:214)\r\n	at org.apache.jasper.compiler.ELNode$Visitor.visit(ELNode.java:256)\r\n	at org.apache.jasper.compiler.ELNode$Root.accept(ELNode.java:61)\r\n	at org.apache.jasper.compiler.ELNode$Nodes.visit(ELNode.java:214)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.validateFunctions(Validator.java:1609)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.prepareExpression(Validator.java:1614)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.visit(Validator.java:750)\r\n	at org.apache.jasper.compiler.Node$ELExpression.accept(Node.java:950)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2376)\r\n	at org.apache.jasper.compiler.Node$Visitor.visitBody(Node.java:2428)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.visit(Validator.java:898)\r\n	at org.apache.jasper.compiler.Node$CustomTag.accept(Node.java:1536)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2376)\r\n	at org.apache.jasper.compiler.Node$Visitor.visitBody(Node.java:2428)\r\n	at org.apache.jasper.compiler.Node$Visitor.visit(Node.java:2434)\r\n	at org.apache.jasper.compiler.Node$Root.accept(Node.java:464)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2376)\r\n	at org.apache.jasper.compiler.Validator.validateExDirectives(Validator.java:1853)\r\n	at org.apache.jasper.compiler.Compiler.generateJava(Compiler.java:219)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:358)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:338)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:325)\r\n	at org.apache.jasper.JspCompilationContext.compile(JspCompilationContext.java:580)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:363)\r\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\r\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:716)\r\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\r\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\r\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\r\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:209)\r\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:267)\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1221)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1005)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:952)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:870)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:961)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:852)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:837)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:88)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:94)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:492)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:620)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:502)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1152)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:684)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.doRun(AprEndpoint.java:2527)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.run(AprEndpoint.java:2516)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n');
INSERT INTO `sys_log` VALUES ('71b3086f65cd44bf9cbf98e552405744', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 10:07:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4cc51eb44a7f4ae4afc39afee0266875', '2', NULL, 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 10:07:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', NULL, 'org.apache.jasper.JasperException: /WEB-INF/views/modules/sys/sysIndex.jsp (line: 125, column: 184) The function getCurrentRole cannot be located with the specified prefix\r\n	at org.apache.jasper.compiler.DefaultErrorHandler.jspError(DefaultErrorHandler.java:41)\r\n	at org.apache.jasper.compiler.ErrorDispatcher.dispatch(ErrorDispatcher.java:275)\r\n	at org.apache.jasper.compiler.ErrorDispatcher.jspError(ErrorDispatcher.java:107)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor$1FVVisitor.visit(Validator.java:1600)\r\n	at org.apache.jasper.compiler.ELNode$Function.accept(ELNode.java:139)\r\n	at org.apache.jasper.compiler.ELNode$Nodes.visit(ELNode.java:214)\r\n	at org.apache.jasper.compiler.ELNode$Visitor.visit(ELNode.java:256)\r\n	at org.apache.jasper.compiler.ELNode$Root.accept(ELNode.java:61)\r\n	at org.apache.jasper.compiler.ELNode$Nodes.visit(ELNode.java:214)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.validateFunctions(Validator.java:1609)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.prepareExpression(Validator.java:1614)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.visit(Validator.java:750)\r\n	at org.apache.jasper.compiler.Node$ELExpression.accept(Node.java:950)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2376)\r\n	at org.apache.jasper.compiler.Node$Visitor.visitBody(Node.java:2428)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.visit(Validator.java:898)\r\n	at org.apache.jasper.compiler.Node$CustomTag.accept(Node.java:1536)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2376)\r\n	at org.apache.jasper.compiler.Node$Visitor.visitBody(Node.java:2428)\r\n	at org.apache.jasper.compiler.Node$Visitor.visit(Node.java:2434)\r\n	at org.apache.jasper.compiler.Node$Root.accept(Node.java:464)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2376)\r\n	at org.apache.jasper.compiler.Validator.validateExDirectives(Validator.java:1853)\r\n	at org.apache.jasper.compiler.Compiler.generateJava(Compiler.java:219)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:358)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:338)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:325)\r\n	at org.apache.jasper.JspCompilationContext.compile(JspCompilationContext.java:580)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:363)\r\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\r\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:716)\r\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\r\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\r\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\r\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:209)\r\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:267)\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1221)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1005)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:952)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:870)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:961)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:852)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:837)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:88)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:94)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:492)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:620)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:502)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1152)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:684)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.doRun(AprEndpoint.java:2527)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.run(AprEndpoint.java:2516)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n');
INSERT INTO `sys_log` VALUES ('f4c46323dc87463eb6df8fc948a7f166', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 10:03:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', 'login=', NULL);
INSERT INTO `sys_log` VALUES ('45b68473ad13480e8289387bf79576ec', '1', '系统登录', 'b0419abf585742d4a93a65fd4115fc6b', '2019-05-08 10:09:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '/labrador/a', 'GET', NULL, NULL);
INSERT INTO `sys_log` VALUES ('e468c26924d34c7fa261caa5bbd27d49', '1', '系统登录', '1', '2019-05-11 16:56:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('3fb1656656af42b7ac4596b9350bccef', '1', '系统设置-用户管理-用户管理', '1', '2019-05-11 16:56:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1c36b61464ea441b9e255f7e2fe201a8', '1', '代码生成-代码生成-业务表配置', '1', '2019-05-11 16:56:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '/smart_javamg/a/gen/genTable', 'GET', '', '');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `PARENT_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????ID',
  `PARENT_IDS` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '?????ids',
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????',
  `SORT` decimal(38, 0) NULL DEFAULT NULL COMMENT '???',
  `HREF` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '???',
  `TARGET` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `ICON` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `IS_SHOW` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????',
  `PERMISSION` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT '???????',
  `UPDATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????',
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT '??????',
  `REMARKS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `DEL_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '功能菜单', 0, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('79', '1', '0,1,', '代码生成', 5000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', 900, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', 30, NULL, NULL, NULL, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', 40, NULL, NULL, NULL, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', 50, '/sys/area/', NULL, 'icon-th', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', 30, '/sys/user/list', NULL, 'icon-user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', 30, NULL, NULL, NULL, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', 40, NULL, NULL, NULL, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,1,2,', '日志查询', 985, NULL, NULL, NULL, '1', NULL, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', 980, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,1,2,', '用户管理', 970, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', 30, NULL, NULL, NULL, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', 40, NULL, NULL, NULL, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('71', '27', '0,1,27,', '文件管理', 90, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,27,', '个人信息', 30, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', 30, '/sys/user/info', NULL, 'icon-user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', 40, '/sys/user/modifyPwd', NULL, 'icon-lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', 50, '/sys/role/', NULL, 'icon-lock', '1', 'sys:role:view,sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', 30, '/sys/menu/', NULL, 'icon-list-alt', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', 60, '/sys/dict/', NULL, 'icon-th-list', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', 30, NULL, NULL, NULL, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', 40, NULL, NULL, NULL, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', 30, NULL, NULL, NULL, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', 50, NULL, NULL, NULL, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', 40, NULL, NULL, NULL, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', 30, '/sys/log', NULL, 'icon-pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', 40, '/../druid', NULL, 'icon-indent-right', '1', NULL, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', 30, NULL, NULL, NULL, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', 40, NULL, NULL, NULL, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('56', '71', '0,1,27,71,', '文件管理', 90, '/../static/ckfinder/ckfinder.html', NULL, 'icon-folder-open', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('80', '79', '0,1,79,', '代码生成', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('81', '80', '0,1,79,80,', '生成方案配置', 30, '/gen/genScheme', NULL, NULL, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('82', '80', '0,1,79,80,', '业务表配置', 20, '/gen/genTable', NULL, NULL, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '???????',
  `ENNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????',
  `ROLE_TYPE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `DATA_SCOPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????Χ',
  `IS_SYS` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????',
  `USEABLE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `CREATE_DATE` datetime(0) NOT NULL COMMENT '???????',
  `UPDATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????',
  `UPDATE_DATE` datetime(0) NOT NULL COMMENT '??????',
  `REMARKS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `DEL_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', 'sysadmin', 'assignment', '1', '1', '1', '1', '2013-05-27 08:00:00', '1', '2015-07-10 11:41:44', '系统内置管理员角色', '0');
INSERT INTO `sys_role` VALUES ('5da6dc7368fb44e29bbd337e38ae501a', '普通用户', 'normal', 'assignment', '8', '1', '1', '1', '2019-05-07 18:46:14', '1', '2019-05-07 18:46:14', NULL, '0');
INSERT INTO `sys_role` VALUES ('dce5ba3a2bbc40038dd7a4986966a23d', '测试角色', 'testRole', 'assignment', '8', '1', '1', '1', '2019-05-08 09:57:58', '1', '2019-05-08 09:57:58', NULL, '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `ROLE_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MENU_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '79');
INSERT INTO `sys_role_menu` VALUES ('1', '80');
INSERT INTO `sys_role_menu` VALUES ('1', '82');
INSERT INTO `sys_role_menu` VALUES ('1', '81');
INSERT INTO `sys_role_menu` VALUES ('1', '84');
INSERT INTO `sys_role_menu` VALUES ('5da6dc7368fb44e29bbd337e38ae501a', '1');
INSERT INTO `sys_role_menu` VALUES ('5da6dc7368fb44e29bbd337e38ae501a', '79');
INSERT INTO `sys_role_menu` VALUES ('5da6dc7368fb44e29bbd337e38ae501a', '80');
INSERT INTO `sys_role_menu` VALUES ('5da6dc7368fb44e29bbd337e38ae501a', '82');
INSERT INTO `sys_role_menu` VALUES ('5da6dc7368fb44e29bbd337e38ae501a', '81');
INSERT INTO `sys_role_menu` VALUES ('dce5ba3a2bbc40038dd7a4986966a23d', '1');
INSERT INTO `sys_role_menu` VALUES ('dce5ba3a2bbc40038dd7a4986966a23d', '27');
INSERT INTO `sys_role_menu` VALUES ('dce5ba3a2bbc40038dd7a4986966a23d', '71');
INSERT INTO `sys_role_menu` VALUES ('dce5ba3a2bbc40038dd7a4986966a23d', '56');
INSERT INTO `sys_role_menu` VALUES ('dce5ba3a2bbc40038dd7a4986966a23d', '57');
INSERT INTO `sys_role_menu` VALUES ('dce5ba3a2bbc40038dd7a4986966a23d', '58');
INSERT INTO `sys_role_menu` VALUES ('dce5ba3a2bbc40038dd7a4986966a23d', '59');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `LOGIN_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '???',
  `PASSWORD` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????',
  `NO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????',
  `EMAIL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `PHONE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?绰',
  `MOBILE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `USER_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `PHOTO` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '???',
  `LOGIN_IP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??ε??ip',
  `LOGIN_DATE` datetime(0) NULL DEFAULT NULL COMMENT '??ε?????',
  `LOGIN_FLAG` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `OBJECT_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????id',
  `OBJECT_DAO` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????dao',
  `CREATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `CREATE_DATE` datetime(0) NOT NULL COMMENT '???????',
  `UPDATE_BY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????',
  `UPDATE_DATE` datetime(0) NOT NULL COMMENT '??????',
  `REMARKS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `DEL_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '5dc0d51b48fc82df9b45de40b86e9ce0a4e7f825b10417115ab3c74c', NULL, '系统管理员', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2019-05-11 16:56:27', '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2015-07-10 11:41:22', '最高管理员', '0');
INSERT INTO `sys_user` VALUES ('b0419abf585742d4a93a65fd4115fc6b', 'timsaid', '0829b7245a492a5b785e2824cf000fe3f554b25aaa6ce05f2a436cf8', NULL, 'timsaid', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2019-05-08 10:09:36', '1', NULL, NULL, '1', '2019-05-07 18:46:51', '1', '2019-05-08 09:58:08', NULL, '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `USER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ROLE_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('b0419abf585742d4a93a65fd4115fc6b', 'dce5ba3a2bbc40038dd7a4986966a23d');
INSERT INTO `sys_user_role` VALUES ('b0419abf585742d4a93a65fd4115fc6b', '5da6dc7368fb44e29bbd337e38ae501a');
INSERT INTO `sys_user_role` VALUES ('b0419abf585742d4a93a65fd4115fc6b', '1');

SET FOREIGN_KEY_CHECKS = 1;
