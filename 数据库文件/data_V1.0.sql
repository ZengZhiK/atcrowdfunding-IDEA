insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('1','superadmin', '123456', '超级管理员', 'admin@atguigu.com', '2019-01-12 17:18:00');
insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('2','zhangsan', '123456', 'zhangsan', 'test@atguigu.com', '2019-01-12 17:18:00');
insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('3','lisi', '123456', 'lisi', 'lisi@atguigu.com', '2019-01-12 17:18:00');
insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('4','wangwu', '123456', 'wangwu', 'wangwu@atguigu.com', '2019-01-12 17:18:00');
insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('5','zhaoliu', '123456', 'zhaoliu', 'zhaoliu@atguigu.com', '2019-01-12 17:18:00');
insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('6','tianqi', '123456', 'tianqi', 'tianqi@atguigu.com', '2019-01-12 17:18:00');
insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('7','wanba', '123456', 'wanba', 'wanba@atguigu.com', '2019-01-12 17:18:00');
insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('8','aaa', '123456', 'aaa', 'aaa@atguigu.com', '2019-01-12 17:18:00');
insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('9','bbb', '123456', 'bbb', 'bbb@atguigu.com', '2019-01-12 17:18:00');
insert into `t_admin` (`id`, `loginacct`, `userpswd`, `username`, `email`, `createtime`) values('10','ccc', '123456', 'ccc', 'ccc@atguigu.com', '2019-01-12 17:18:00');

insert into `t_role` (`id`, `name`) values('1','PM - 项目经理');
insert into `t_role` (`id`, `name`) values('2','SE - 软件工程师');
insert into `t_role` (`id`, `name`) values('3','PG - 程序员');
insert into `t_role` (`id`, `name`) values('4','TL - 组长');
insert into `t_role` (`id`, `name`) values('5','GL - 组长');
insert into `t_role` (`id`, `name`) values('6','QA - 品质保证');
insert into `t_role` (`id`, `name`) values('7','QC - 品质控制');
insert into `t_role` (`id`, `name`) values('8','SA - 软件架构师');
insert into `t_role` (`id`, `name`) values('9','CMO / CMS - 配置管理员');


insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('1',NULL,'用户模块','glyphicon glyphicon-user','0');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('2','user:add','新增','glyphicon glyphicon-plus','1');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('3','user:delete','删除','glyphicon glyphicon-remove','1');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('4','user:update','更新','glyphicon glyphicon-pencil','1');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('5','user:get','查询','glyphicon glyphicon-zoom-in','1');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('6','user:assign:role','授予角色','glyphicon glyphicon-user','1');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('7',NULL,'角色模块','glyphicon glyphicon-heart','0');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('8','role:add','新增','glyphicon glyphicon-plus','7');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('9','role:delete','删除','glyphicon glyphicon-remove','7');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('10','role:get','查询','glyphicon glyphicon-zoom-in','7');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('11','role:update','修改','glyphicon glyphicon-pencil','7');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('12','role:assign:permission','授予权限','glyphicon glyphicon-user','7');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('13',NULL,'菜单模块','glyphicon glyphicon-th-list','0');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('14','menu:add','新增','glyphicon glyphicon-plus','13');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('15','menu:delete','删除','glyphicon glyphicon-remove','13');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('16','menu:update','修改','glyphicon glyphicon-pencil','13');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('17','menu:get','查询','glyphicon glyphicon-zoom-in','13');
insert into `t_permission` (`id`, `name`, `title`, `icon`, `pid`) values('18','menu:assign:permission','授予权限','glyphicon glyphicon-user','13');






insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('1','0','控制面板','glyphicon glyphicon-dashboard','main.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('2','0','权限管理','glyphicon glyphicon glyphicon-tasks',NULL);
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('3','2','用户维护','glyphicon glyphicon-user','admin/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('4','2','角色维护','glyphicon glyphicon-king','role/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('5','2','权限维护','glyphicon glyphicon-lock','permission/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('6','2','菜单维护','glyphicon glyphicon-th-list','menu/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('7','0','业务审核','glyphicon glyphicon-ok',NULL);
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('8','7','实名认证审核','glyphicon glyphicon-check','auth_cert/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('9','7','广告审核','glyphicon glyphicon-check','auth_adv/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('10','7','项目审核','glyphicon glyphicon-check','auth_project/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('11','0','业务管理','glyphicon glyphicon-th-large',NULL);
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('12','11','资质维护','glyphicon glyphicon-picture','cert/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('13','11','分类管理','glyphicon glyphicon-equalizer','certtype/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('14','11','流程管理','glyphicon glyphicon-random','process/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('15','11','广告管理','glyphicon glyphicon-hdd','advert/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('16','11','消息模板','glyphicon glyphicon-comment','message/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('17','11','项目分类','glyphicon glyphicon-list','projectType/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('18','11','项目标签','glyphicon glyphicon-tags','tag/index.html');
insert into `t_menu` (`id`, `pid`, `name`, `icon`, `url`) values('19','0','参数管理','glyphicon glyphicon-list-alt','param/index.html');




insert into `t_cert` (`id`, `name`) values('1','营业执照副本');
insert into `t_cert` (`id`, `name`) values('2','税务登记证');
insert into `t_cert` (`id`, `name`) values('3','组织机构代码证');
insert into `t_cert` (`id`, `name`) values('4','单位登记证件');
insert into `t_cert` (`id`, `name`) values('5','法定代表人证件');
insert into `t_cert` (`id`, `name`) values('6','经营者证件');
insert into `t_cert` (`id`, `name`) values('7','手执身份证照片');




insert into `t_dictionary` (`id`, `name`, `code`, `subcode`, `val`) values('1','性别','sex','男','0');
insert into `t_dictionary` (`id`, `name`, `code`, `subcode`, `val`) values('2','性别','sex','女','1');
insert into `t_dictionary` (`id`, `name`, `code`, `subcode`, `val`) values('3','实名认证状态','authstatus','未实名认证','0');
insert into `t_dictionary` (`id`, `name`, `code`, `subcode`, `val`) values('4','实名认证状态','authstatus','实名认证审核中','1');
insert into `t_dictionary` (`id`, `name`, `code`, `subcode`, `val`) values('5','实名认证状态','authstatus','已实名认证','2');
insert into `t_dictionary` (`id`, `name`, `code`, `subcode`, `val`) values('6','账户类型','accttype','企业','0');
insert into `t_dictionary` (`id`, `name`, `code`, `subcode`, `val`) values('7','账户类型','accttype','个体','1');
insert into `t_dictionary` (`id`, `name`, `code`, `subcode`, `val`) values('8','账户类型','accttype','个人','2');
insert into `t_dictionary` (`id`, `name`, `code`, `subcode`, `val`) values('9','账户类型','accttype','政府','3');



insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('4','0','1');
insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('5','0','2');
insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('6','0','3');
insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('7','0','5');
insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('8','1','1');
insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('9','1','6');
insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('10','2','6');
insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('11','2','7');
insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('12','3','5');
insert into `t_account_type_cert` (`id`, `accttype`, `certid`) values('13','3','4');
