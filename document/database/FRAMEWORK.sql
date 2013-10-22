------------------------------------------------------
-- Export file for user FRAMEWORK                   --
-- Created by Administrator on 2013/10/22, 17:21:45 --
------------------------------------------------------

set define off
spool FRAMEWORK.log

prompt
prompt Creating table EXAMPLE_
prompt =======================
prompt
create table EXAMPLE_
(
  id_             NUMBER(38) not null,
  insert_user_id_ NUMBER(38),
  insert_time_    TIMESTAMP(6),
  update_user_id_ NUMBER(38),
  update_time_    TIMESTAMP(6),
  serial_         NUMBER(38),
  remark_         CLOB
)
;
comment on table EXAMPLE_
  is '样例表';
comment on column EXAMPLE_.id_
  is '编号';
comment on column EXAMPLE_.insert_user_id_
  is '执行新增操作的用户的编号';
comment on column EXAMPLE_.insert_time_
  is '执行新增操作的时间';
comment on column EXAMPLE_.update_user_id_
  is '执行修改操作的用户的编号';
comment on column EXAMPLE_.update_time_
  is '执行修改操作的时间';
comment on column EXAMPLE_.serial_
  is '次序';
comment on column EXAMPLE_.remark_
  is '备注';
alter table EXAMPLE_
  add constraint EXAMPLE_PK_ID primary key (ID_);


spool off
