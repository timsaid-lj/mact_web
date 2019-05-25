--用户表
insert into sys_user (ID, LOGIN_NAME, PASSWORD, NO, NAME, EMAIL, PHONE, MOBILE, USER_TYPE, PHOTO, LOGIN_IP, LOGIN_DATE, LOGIN_FLAG, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('1', 'admin', '5dc0d51b48fc82df9b45de40b86e9ce0a4e7f825b10417115ab3c74c', null, '系统管理员', null, null, null, null, null, '0:0:0:0:0:0:0:1', to_date('10-07-2015 11:42:29', 'dd-mm-yyyy hh24:mi:ss'), '1', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('10-07-2015 11:41:22', 'dd-mm-yyyy hh24:mi:ss'), '最高管理员', '0');

-- 菜单表
insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('1', '0', '0,', '功能菜单', 0, null, null, null, '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('79', '1', '0,1,', '代码生成', 5000, null, null, null, '1', null, '1', to_date('16-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('16-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('27', '1', '0,1,', '我的面板', 100, null, null, null, '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('2', '1', '0,1,', '系统设置', 900, null, null, null, '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('11', '10', '0,1,2,3,10,', '查看', 30, null, null, null, '0', 'sys:dict:view', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('12', '10', '0,1,2,3,10,', '修改', 40, null, null, null, '0', 'sys:dict:edit', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('14', '13', '0,1,2,13,', '区域管理', 50, '/sys/area/', null, 'icon-th', '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('20', '13', '0,1,2,13,', '用户管理', 30, '/sys/user/list', null, 'icon-user', '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('15', '14', '0,1,2,13,14,', '查看', 30, null, null, null, '0', 'sys:area:view', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('16', '14', '0,1,2,13,14,', '修改', 40, null, null, null, '0', 'sys:area:edit', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('67', '2', '0,1,2,', '日志查询', 985, null, null, null, '1', null, '1', to_date('03-06-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('03-06-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('3', '2', '0,1,2,', '系统设置', 980, null, null, null, '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('13', '2', '0,1,2,', '机构用户', 970, null, null, null, '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('21', '20', '0,1,2,13,20,', '查看', 30, null, null, null, '0', 'sys:user:view', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('22', '20', '0,1,2,13,20,', '修改', 40, null, null, null, '0', 'sys:user:edit', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('71', '27', '0,1,27,', '文件管理', 90, null, null, null, '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('28', '27', '0,1,27,', '个人信息', 30, null, null, null, '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('29', '28', '0,1,27,28,', '个人信息', 30, '/sys/user/info', null, 'icon-user', '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('30', '28', '0,1,27,28,', '修改密码', 40, '/sys/user/modifyPwd', null, 'icon-lock', '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('7', '3', '0,1,2,3,', '角色管理', 50, '/sys/role/', null, 'icon-lock', '1', 'sys:role:view,sys:role:edit', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('4', '3', '0,1,2,3,', '菜单管理', 30, '/sys/menu/', null, 'icon-list-alt', '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('10', '3', '0,1,2,3,', '字典管理', 60, '/sys/dict/', null, 'icon-th-list', '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('91', '90', '0,1,79,90,', '主子表', 60, '/test/testDataMain', ' ', ' ', '1', ' ', '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), ' ', '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('92', '90', '0,1,79,90,', '树结构', 90, '/test/testTree', ' ', ' ', '1', ' ', '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), ' ', '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('93', '90', '0,1,79,90,', '单表', 30, '/test/testData', ' ', ' ', '1', ' ', '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), ' ', '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('5', '4', '0,1,2,3,4,', '查看', 30, null, null, null, '0', 'sys:menu:view', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('6', '4', '0,1,2,3,4,', '修改', 40, null, null, null, '0', 'sys:menu:edit', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('57', '56', '0,1,27,40,56,', '查看', 30, null, null, null, '0', 'cms:ckfinder:view', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('59', '56', '0,1,27,40,56,', '修改', 50, null, null, null, '0', 'cms:ckfinder:edit', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('58', '56', '0,1,27,40,56,', '上传', 40, null, null, null, '0', 'cms:ckfinder:upload', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('68', '67', '0,1,2,67,', '日志查询', 30, '/sys/log', null, 'icon-pencil', '1', 'sys:log:view', '1', to_date('03-06-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('03-06-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('84', '67', '0,1,2,67,', '连接池监视', 40, '/../druid', null, null, '1', null, '1', to_date('18-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('18-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('8', '7', '0,1,2,3,7,', '查看', 30, null, null, null, '0', 'sys:role:view', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('9', '7', '0,1,2,3,7,', '修改', 40, null, null, null, '0', 'sys:role:edit', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('56', '71', '0,1,27,71,', '文件管理', 90, '/../static/ckfinder/ckfinder.html', null, 'icon-folder-open', '1', null, '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('80', '79', '0,1,79,', '代码生成', 50, null, null, null, '1', null, '1', to_date('16-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('16-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('90', '79', '0,1,79,', '生成示例', 120, null, ' ', ' ', '1', ' ', '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), ' ', '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('81', '80', '0,1,79,80,', '生成方案配置', 30, '/gen/genScheme', null, null, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', to_date('16-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('16-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('82', '80', '0,1,79,80,', '业务表配置', 20, '/gen/genTable', null, null, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', to_date('16-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('16-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('96', '91', '0,1,79,90,91,', '编辑', 60, null, ' ', ' ', '0', 'test:testDataMain:edit', '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), ' ', '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('97', '91', '0,1,79,90,91,', '查看', 30, null, ' ', ' ', '0', 'test:testDataMain:view', '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), ' ', '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('98', '93', '0,1,79,90,93,', '查看', 30, null, ' ', ' ', '0', 'test:testData:view', '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), ' ', '0');

insert into sys_menu (ID, PARENT_ID, PARENT_IDS, NAME, SORT, HREF, TARGET, ICON, IS_SHOW, PERMISSION, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('99', '93', '0,1,79,90,93,', '编辑', 60, null, ' ', ' ', '0', 'test:testData:edit', '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('12-08-2013 13:10:05', 'dd-mm-yyyy hh24:mi:ss'), ' ', '0');

--角色表
insert into sys_role (ID, NAME, ENNAME, ROLE_TYPE, DATA_SCOPE, IS_SYS, USEABLE, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('1', '系统管理员', 'sysadmin', 'assignment', '1', '1', '1', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('10-07-2015 11:41:44', 'dd-mm-yyyy hh24:mi:ss'), '系统内置管理员角色', '0');

--角色菜单表
insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '1');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '2');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '13');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '20');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '21');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '22');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '14');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '15');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '16');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '3');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '4');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '5');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '6');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '7');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '10');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '11');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '12');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '79');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '80');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '82');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '81');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '90');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '93');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '98');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '99');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '91');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '97');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '96');

insert into sys_role_menu (ROLE_ID, MENU_ID)
values ('1', '92');

--用户角色表
insert into sys_user_role (USER_ID, ROLE_ID)
values ('1', '1');

--数据字典
insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', 70.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', 80.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', 90.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('93', 'String', 'String', 'gen_java_type', 'Java类型', 10.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', 20.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类', 40.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('96', '1', '男', 'sex', '性别', 10.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('97', '2', '女', 'sex', '性别', 20.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', 30.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', 40.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('1', '0', '正常', 'del_flag', '删除标记', 10.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('10', 'yellow', '黄色', 'color', '颜色值', 40.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', 50.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('101', 'com.javamg.javamg.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', 60.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('102', 'com.javamg.javamg.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', 70.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('103', 'com.javamg.javamg.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', 80.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', 90.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('11', 'orange', '橙色', 'color', '颜色值', 50.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('12', 'default', '默认主题', 'theme', '主题方案', 10.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', 20.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('14', 'readable', '橙色主题', 'theme', '主题方案', 30.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('15', 'united', '红色主题', 'theme', '主题方案', 40.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('16', 'flat', 'Flat主题', 'theme', '主题方案', 60.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('17', '1', '国家', 'sys_area_type', '区域类型', 10.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', 20.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('19', '3', '地市', 'sys_area_type', '区域类型', 30.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('2', '1', '删除', 'del_flag', '删除标记', 20.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('20', '4', '区县', 'sys_area_type', '区域类型', 40.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('3', '1', '显示', 'show_hide', '显示/隐藏', 10.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('32', '1', '所有数据', 'sys_data_scope', '数据范围', 10.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', 20.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', 30.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', 40.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', 50.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', 90.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', 100.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('39', '1', '系统管理', 'sys_user_type', '用户类型', 10.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('4', '0', '隐藏', 'show_hide', '显示/隐藏', 20.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('40', '2', '部门经理', 'sys_user_type', '用户类型', 20.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('41', '3', '普通用户', 'sys_user_type', '用户类型', 30.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('5', '1', '是', 'yes_no', '是/否', 10.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('6', '0', '否', 'yes_no', '是/否', 20.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('67', '1', '接入日志', 'sys_log_type', '日志类型', 30.00, '0', '1', to_date('03-06-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('03-06-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('68', '2', '异常日志', 'sys_log_type', '日志类型', 40.00, '0', '1', to_date('03-06-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('03-06-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('7', 'red', '红色', 'color', '颜色值', 10.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', 10.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', 20.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('75', 'tree', '树结构', 'gen_category', '代码生成分类', 30.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('76', '=', '=', 'gen_query_type', '查询方式', 10.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('77', '!=', '!=', 'gen_query_type', '查询方式', 20.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('78', '>', '>', 'gen_query_type', '查询方式', 30.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('79', '<', '<', 'gen_query_type', '查询方式', 40.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('8', 'green', '绿色', 'color', '颜色值', 20.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('80', 'between', 'Between', 'gen_query_type', '查询方式', 50.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('81', 'like', 'Like', 'gen_query_type', '查询方式', 60.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', 70.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', 80.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', 10.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', 20.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', 30.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', 40.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', 50.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', 60.00, '0', '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-10-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into sys_dict (ID, VALUE, LABEL, TYPE, DESCRIPTION, SORT, PARENT_ID, CREATE_BY, CREATE_DATE, UPDATE_BY, UPDATE_DATE, REMARKS, DEL_FLAG)
values ('9', 'blue', '蓝色', 'color', '颜色值', 30.00, '0', '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('27-05-2013 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, '0');
