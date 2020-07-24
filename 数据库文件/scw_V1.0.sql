drop table if exists t_account_type_cert;

drop table if exists t_admin;

drop table if exists t_admin_role;

drop table if exists t_advertisement;

drop table if exists t_cert;

drop table if exists t_dictionary;

drop table if exists t_member;

drop table if exists t_member_address;

drop table if exists t_member_cert;

drop table if exists t_member_project_follow;

drop table if exists t_menu;

drop table if exists t_message;

drop table if exists t_order;

drop table if exists t_param;

drop table if exists t_permission;

drop table if exists t_permission_menu;

drop table if exists t_permission_resource;

drop table if exists t_project;

drop table if exists t_project_tag;

drop table if exists t_project_type;

drop table if exists t_resource;

drop table if exists t_return;

drop table if exists t_role;

drop table if exists t_role_permission;

drop table if exists t_tag;

drop table if exists t_transaction;

drop table if exists t_type;

/*==============================================================*/
/* Table: t_account_type_cert                                   */
/*==============================================================*/
create table t_account_type_cert
(
   id                   int(11) not null,
   accttype             char(1) comment '账户类型',
   certid               int(11) comment '资质主键',
   primary key (id)
);

alter table t_account_type_cert comment '账户资质关系表';

/*==============================================================*/
/* Table: t_admin                                               */
/*==============================================================*/
create table t_admin
(
   id                   int not null auto_increment,
   loginacct            varchar(255) not null,
   userpswd             char(255) not null,
   username             varchar(255) not null,
   email                varchar(255) not null,
   createtime           char(19),
   primary key (id)
);

alter table t_admin comment '管理员表';

/*==============================================================*/
/* Table: t_admin_role                                          */
/*==============================================================*/
create table t_admin_role
(
   id                   int(11) not null auto_increment,
   adminid              int(11),
   roleid               int(11),
   primary key (id)
);

alter table t_admin_role comment '管理员角色表';

/*==============================================================*/
/* Table: t_advertisement                                       */
/*==============================================================*/
create table t_advertisement
(
   id                   int(11) not null auto_increment,
   name                 varchar(255),
   iconpath             varchar(255),
   status               char(1) comment '0 - 草稿， 1 - 未审核， 2 - 审核完成， 3 - 发布',
   url                  varchar(255),
   adminid              int(11),
   primary key (id)
);

alter table t_advertisement comment '广告表';

/*==============================================================*/
/* Table: t_cert                                                */
/*==============================================================*/
create table t_cert
(
   id                   int(11) not null auto_increment comment '资质主键',
   name                 varchar(255) comment '资质名称',
   primary key (id)
);

alter table t_cert comment '资质表';

/*==============================================================*/
/* Table: t_dictionary                                          */
/*==============================================================*/
create table t_dictionary
(
   id                   int(11) not null auto_increment,
   name                 varchar(255),
   code                 varchar(255),
   subcode              varchar(255),
   val                  varchar(255),
   primary key (id)
);

alter table t_dictionary comment '数据字典';

/*==============================================================*/
/* Table: t_member                                              */
/*==============================================================*/
create table t_member
(
   id                   int(11) not null auto_increment,
   loginacct            varchar(255) not null comment '登录账号',
   userpswd             char(255) not null comment '登录密码',
   username             varchar(255) not null comment '用户名称',
   email                varchar(255) not null comment '电子邮箱',
   authstatus           char(1) not null comment '实名认证状态 0 - 未实名认证， 1 - 实名认证申请中， 2 - 已实名认证',
   usertype             char(1) not null comment ' 用户类型: 0 - 个人， 1 - 企业',
   realname             varchar(255) comment '真实名称',
   cardnum              varchar(255) comment '身份证号码',
   accttype             char(1) comment '账户类型: 0 - 企业， 1 - 个体， 2 - 个人， 3 - 政府',
   primary key (id)
);

alter table t_member comment '会员表';

/*==============================================================*/
/* Table: t_member_address                                      */
/*==============================================================*/
create table t_member_address
(
   id                   int(11) not null auto_increment,
   memberid             int(11),
   address              varchar(255),
   primary key (id)
);

alter table t_member_address comment '收货地址表';

/*==============================================================*/
/* Table: t_member_cert                                         */
/*==============================================================*/
create table t_member_cert
(
   id                   int(11) not null,
   memberid             int(11) comment '会员ID',
   certid               int(11) comment '资质ID',
   iconpath             varchar(255) comment '图片路径',
   primary key (id)
);

alter table t_member_cert comment '会员资质表';

/*==============================================================*/
/* Table: t_member_project_follow                               */
/*==============================================================*/
create table t_member_project_follow
(
   id                   int(11) not null,
   projectid            int(11),
   memberid             int(11),
   primary key (id)
);

alter table t_member_project_follow comment '项目关注表';

/*==============================================================*/
/* Table: t_menu                                                */
/*==============================================================*/
create table t_menu
(
   id                   int(11) not null auto_increment,
   pid                  int(11),
   name                 varchar(255),
   icon                 varchar(255),
   url                  varchar(255),
   primary key (id)
);

alter table t_menu comment '菜单表';

/*==============================================================*/
/* Table: t_message                                             */
/*==============================================================*/
create table t_message
(
   id                   int(11) not null auto_increment,
   memberid             int(11),
   content              varchar(255),
   senddate             char(19),
   primary key (id)
);

alter table t_message comment '消息表';

/*==============================================================*/
/* Table: t_order                                               */
/*==============================================================*/
create table t_order
(
   id                   int(11) not null auto_increment,
   memberid             int(11) comment '会员ID',
   projectid            int(11) comment '项目ID',
   returnid             int(11) comment '回报ID',
   ordernum             varchar(255) comment '订单编号',
   createdate           char(19) comment '创建时间',
   money                int(11) comment '支持金额',
   rtncount             int(11) comment '回报数量',
   status               char(1) comment '0 - 待付款， 1 - 交易完成， 9 - 交易关闭',
   address              varchar(255) comment '收货地址',
   invoice              char(1) comment '0 - 不开发票， 1 - 开发票',
   invoictitle          varchar(255) comment '发票抬头',
   remark               varchar(255) comment '备注',
   primary key (id)
);

alter table t_order comment '订单表';

/*==============================================================*/
/* Table: t_param                                               */
/*==============================================================*/
create table t_param
(
   id                   int(11) not null auto_increment,
   name                 varchar(255),
   code                 varchar(255),
   val                  varchar(255),
   primary key (id)
);

alter table t_param comment '参数表';

/*==============================================================*/
/* Table: t_permission                                          */
/*==============================================================*/
create table t_permission
(
   id                   int(11) not null auto_increment comment '主键',
   name                 varchar(255) comment '许可标识',
   title                varchar(255) comment '标识说明',
   icon                 varchar(255),
   pid                  int(11) comment '父Id',
   primary key (id)
);

alter table t_permission comment '许可（权限）表';

/*==============================================================*/
/* Table: t_permission_menu                                     */
/*==============================================================*/
create table t_permission_menu
(
   id                   int(11) not null auto_increment,
   menuid               int(11),
   permissionid         int(11),
   primary key (id)
);

alter table t_permission_menu comment '许可菜单表';

/*==============================================================*/
/* Table: t_permission_resource                                 */
/*==============================================================*/
create table t_permission_resource
(
   id                   int(11) not null auto_increment,
   resourceid           int(11),
   permissionid         int(11),
   primary key (id)
);

alter table t_permission_resource comment '许可资源表';

/*==============================================================*/
/* Table: t_project                                             */
/*==============================================================*/
create table t_project
(
   id                   int(11) not null auto_increment,
   name                 varchar(255) comment '项目名称',
   remark               varchar(255) comment '项目简介',
   money                bigint (11) comment '筹资金额',
   day                  int(11) comment '筹资天数',
   status               char(1) comment '0 - 即将开始， 1 - 众筹中， 2 - 众筹成功， 3 - 众筹失败',
   deploydate           char(10) comment '发布日期',
   supportmoney         bigint(11) comment '支持金额',
   supporter            int(11) comment '支持者数量',
   completion           int(3) comment '完成度',
   memberid             int(11) comment '发起人ID',
   createdate           char(19) comment '创建日期',
   follower             int(11) comment '关注者数量',
   primary key (id)
);

alter table t_project comment '项目表';

/*==============================================================*/
/* Table: t_project_tag                                         */
/*==============================================================*/
create table t_project_tag
(
   id                   int(11) not null auto_increment,
   projectid            int(11),
   tagid                int(11),
   primary key (id)
);

alter table t_project_tag comment '项目标签关系表';

/*==============================================================*/
/* Table: t_project_type                                        */
/*==============================================================*/
create table t_project_type
(
   id                   int not null auto_increment,
   projectid            int(11),
   typeid               int(11),
   primary key (id)
);

alter table t_project_type comment '项目分类关系表';

/*==============================================================*/
/* Table: t_resource                                            */
/*==============================================================*/
create table t_resource
(
   id                   int(11) not null auto_increment,
   url                  varchar(255),
   createat             varchar(19),
   updateat             varchar(19),
   primary key (id)
);

alter table t_resource comment '资源表';

/*==============================================================*/
/* Table: t_return                                              */
/*==============================================================*/
create table t_return
(
   id                   int(11) not null auto_increment comment '主键',
   projectid            int(11) comment '项目ID',
   type                 char(1) comment '0 - 实物回报， 1 虚拟物品回报',
   supportmoney         int(11) comment '支持金额',
   content              varchar(255) comment '回报内容',
   count                int(11) comment '0 为不限回报数量',
   signalpurchase       int(11) comment '单笔限购',
   purchase             int(11) comment '限购数量',
   freight              int(11) comment '运费',
   invoice              char(1) comment '0 - 不开发票， 1 - 开发票',
   rtndate              int(11) comment '回报时间,众筹成功后多少天进行回报',
   primary key (id)
);

alter table t_return comment '回报表';

/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
create table t_role
(
   id                   int(11) not null auto_increment,
   name                 varchar(255),
   primary key (id)
);

alter table t_role comment '角色表';

/*==============================================================*/
/* Table: t_role_permission                                     */
/*==============================================================*/
create table t_role_permission
(
   id                   int(11) not null auto_increment,
   roleid               int(11),
   permissionid         int(11),
   primary key (id)
);

alter table t_role_permission comment '角色许可表';

/*==============================================================*/
/* Table: t_tag                                                 */
/*==============================================================*/
create table t_tag
(
   id                   int(11) not null auto_increment,
   pid                  int(11),
   name                 varchar(255),
   primary key (id)
);

alter table t_tag comment '项目标签';

/*==============================================================*/
/* Table: t_transaction                                         */
/*==============================================================*/
create table t_transaction
(
   id                   int(11) not null,
   ordersn              varchar(255),
   paysn                varchar(255),
   memberid             int(11),
   amount               float,
   paystate             tinyint,
   source               varchar(255),
   status               tinyint,
   completiontime       varchar(19),
   note                 varchar(255),
   createat             varchar(19),
   updateat             varchar(19),
   primary key (id)
);

alter table t_transaction comment '支付表';

/*==============================================================*/
/* Table: t_type                                                */
/*==============================================================*/
create table t_type
(
   id                   int(11) not null auto_increment,
   name                 varchar(255),
   remark               varchar(255),
   primary key (id)
);

alter table t_type comment '项目分类';

alter table t_account_type_cert add constraint FK_Reference_19 foreign key (certid)
      references t_cert (id) on delete restrict on update restrict;

alter table t_admin_role add constraint FK_Reference_1 foreign key (adminid)
      references t_admin (id) on delete restrict on update restrict;

alter table t_admin_role add constraint FK_Reference_2 foreign key (roleid)
      references t_role (id) on delete restrict on update restrict;

alter table t_member_address add constraint FK_Reference_13 foreign key (memberid)
      references t_member (id) on delete restrict on update restrict;

alter table t_member_cert add constraint FK_Reference_14 foreign key (memberid)
      references t_member (id) on delete restrict on update restrict;

alter table t_member_cert add constraint FK_Reference_15 foreign key (certid)
      references t_cert (id) on delete restrict on update restrict;

alter table t_member_project_follow add constraint FK_Reference_11 foreign key (projectid)
      references t_project (id) on delete restrict on update restrict;

alter table t_member_project_follow add constraint FK_Reference_12 foreign key (memberid)
      references t_member (id) on delete restrict on update restrict;

alter table t_order add constraint FK_Reference_16 foreign key (returnid)
      references t_return (id) on delete restrict on update restrict;

alter table t_order add constraint FK_Reference_17 foreign key (projectid)
      references t_project (id) on delete restrict on update restrict;

alter table t_order add constraint FK_Reference_18 foreign key (memberid)
      references t_member (id) on delete restrict on update restrict;

alter table t_permission_menu add constraint FK_Reference_10 foreign key (menuid)
      references t_menu (id) on delete restrict on update restrict;

alter table t_permission_menu add constraint FK_Reference_9 foreign key (permissionid)
      references t_permission (id) on delete restrict on update restrict;

alter table t_permission_resource add constraint FK_Reference_20 foreign key (permissionid)
      references t_permission (id) on delete restrict on update restrict;

alter table t_permission_resource add constraint FK_Reference_21 foreign key (resourceid)
      references t_resource (id) on delete restrict on update restrict;

alter table t_project_tag add constraint FK_Reference_7 foreign key (projectid)
      references t_project (id) on delete restrict on update restrict;

alter table t_project_tag add constraint FK_Reference_8 foreign key (tagid)
      references t_tag (id) on delete restrict on update restrict;

alter table t_project_type add constraint FK_Reference_5 foreign key (projectid)
      references t_project (id) on delete restrict on update restrict;

alter table t_project_type add constraint FK_Reference_6 foreign key (typeid)
      references t_type (id) on delete restrict on update restrict;

alter table t_role_permission add constraint FK_Reference_3 foreign key (roleid)
      references t_role (id) on delete restrict on update restrict;

alter table t_role_permission add constraint FK_Reference_4 foreign key (permissionid)
      references t_permission (id) on delete restrict on update restrict;
