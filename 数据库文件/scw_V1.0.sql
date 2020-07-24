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
   accttype             char(1) comment '�˻�����',
   certid               int(11) comment '��������',
   primary key (id)
);

alter table t_account_type_cert comment '�˻����ʹ�ϵ��';

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

alter table t_admin comment '����Ա��';

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

alter table t_admin_role comment '����Ա��ɫ��';

/*==============================================================*/
/* Table: t_advertisement                                       */
/*==============================================================*/
create table t_advertisement
(
   id                   int(11) not null auto_increment,
   name                 varchar(255),
   iconpath             varchar(255),
   status               char(1) comment '0 - �ݸ壬 1 - δ��ˣ� 2 - �����ɣ� 3 - ����',
   url                  varchar(255),
   adminid              int(11),
   primary key (id)
);

alter table t_advertisement comment '����';

/*==============================================================*/
/* Table: t_cert                                                */
/*==============================================================*/
create table t_cert
(
   id                   int(11) not null auto_increment comment '��������',
   name                 varchar(255) comment '��������',
   primary key (id)
);

alter table t_cert comment '���ʱ�';

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

alter table t_dictionary comment '�����ֵ�';

/*==============================================================*/
/* Table: t_member                                              */
/*==============================================================*/
create table t_member
(
   id                   int(11) not null auto_increment,
   loginacct            varchar(255) not null comment '��¼�˺�',
   userpswd             char(255) not null comment '��¼����',
   username             varchar(255) not null comment '�û�����',
   email                varchar(255) not null comment '��������',
   authstatus           char(1) not null comment 'ʵ����֤״̬ 0 - δʵ����֤�� 1 - ʵ����֤�����У� 2 - ��ʵ����֤',
   usertype             char(1) not null comment ' �û�����: 0 - ���ˣ� 1 - ��ҵ',
   realname             varchar(255) comment '��ʵ����',
   cardnum              varchar(255) comment '���֤����',
   accttype             char(1) comment '�˻�����: 0 - ��ҵ�� 1 - ���壬 2 - ���ˣ� 3 - ����',
   primary key (id)
);

alter table t_member comment '��Ա��';

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

alter table t_member_address comment '�ջ���ַ��';

/*==============================================================*/
/* Table: t_member_cert                                         */
/*==============================================================*/
create table t_member_cert
(
   id                   int(11) not null,
   memberid             int(11) comment '��ԱID',
   certid               int(11) comment '����ID',
   iconpath             varchar(255) comment 'ͼƬ·��',
   primary key (id)
);

alter table t_member_cert comment '��Ա���ʱ�';

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

alter table t_member_project_follow comment '��Ŀ��ע��';

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

alter table t_menu comment '�˵���';

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

alter table t_message comment '��Ϣ��';

/*==============================================================*/
/* Table: t_order                                               */
/*==============================================================*/
create table t_order
(
   id                   int(11) not null auto_increment,
   memberid             int(11) comment '��ԱID',
   projectid            int(11) comment '��ĿID',
   returnid             int(11) comment '�ر�ID',
   ordernum             varchar(255) comment '�������',
   createdate           char(19) comment '����ʱ��',
   money                int(11) comment '֧�ֽ��',
   rtncount             int(11) comment '�ر�����',
   status               char(1) comment '0 - ����� 1 - ������ɣ� 9 - ���׹ر�',
   address              varchar(255) comment '�ջ���ַ',
   invoice              char(1) comment '0 - ������Ʊ�� 1 - ����Ʊ',
   invoictitle          varchar(255) comment '��Ʊ̧ͷ',
   remark               varchar(255) comment '��ע',
   primary key (id)
);

alter table t_order comment '������';

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

alter table t_param comment '������';

/*==============================================================*/
/* Table: t_permission                                          */
/*==============================================================*/
create table t_permission
(
   id                   int(11) not null auto_increment comment '����',
   name                 varchar(255) comment '��ɱ�ʶ',
   title                varchar(255) comment '��ʶ˵��',
   icon                 varchar(255),
   pid                  int(11) comment '��Id',
   primary key (id)
);

alter table t_permission comment '��ɣ�Ȩ�ޣ���';

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

alter table t_permission_menu comment '��ɲ˵���';

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

alter table t_permission_resource comment '�����Դ��';

/*==============================================================*/
/* Table: t_project                                             */
/*==============================================================*/
create table t_project
(
   id                   int(11) not null auto_increment,
   name                 varchar(255) comment '��Ŀ����',
   remark               varchar(255) comment '��Ŀ���',
   money                bigint (11) comment '���ʽ��',
   day                  int(11) comment '��������',
   status               char(1) comment '0 - ������ʼ�� 1 - �ڳ��У� 2 - �ڳ�ɹ��� 3 - �ڳ�ʧ��',
   deploydate           char(10) comment '��������',
   supportmoney         bigint(11) comment '֧�ֽ��',
   supporter            int(11) comment '֧��������',
   completion           int(3) comment '��ɶ�',
   memberid             int(11) comment '������ID',
   createdate           char(19) comment '��������',
   follower             int(11) comment '��ע������',
   primary key (id)
);

alter table t_project comment '��Ŀ��';

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

alter table t_project_tag comment '��Ŀ��ǩ��ϵ��';

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

alter table t_project_type comment '��Ŀ�����ϵ��';

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

alter table t_resource comment '��Դ��';

/*==============================================================*/
/* Table: t_return                                              */
/*==============================================================*/
create table t_return
(
   id                   int(11) not null auto_increment comment '����',
   projectid            int(11) comment '��ĿID',
   type                 char(1) comment '0 - ʵ��ر��� 1 ������Ʒ�ر�',
   supportmoney         int(11) comment '֧�ֽ��',
   content              varchar(255) comment '�ر�����',
   count                int(11) comment '0 Ϊ���޻ر�����',
   signalpurchase       int(11) comment '�����޹�',
   purchase             int(11) comment '�޹�����',
   freight              int(11) comment '�˷�',
   invoice              char(1) comment '0 - ������Ʊ�� 1 - ����Ʊ',
   rtndate              int(11) comment '�ر�ʱ��,�ڳ�ɹ����������лر�',
   primary key (id)
);

alter table t_return comment '�ر���';

/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
create table t_role
(
   id                   int(11) not null auto_increment,
   name                 varchar(255),
   primary key (id)
);

alter table t_role comment '��ɫ��';

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

alter table t_role_permission comment '��ɫ��ɱ�';

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

alter table t_tag comment '��Ŀ��ǩ';

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

alter table t_transaction comment '֧����';

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

alter table t_type comment '��Ŀ����';

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
