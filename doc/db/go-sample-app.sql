create table t_user_info
(
    id           bigint auto_increment not null comment 'uid'
        primary key,
    nick_name    varchar(128) default '' comment '昵称',
    gmt_create   datetime     default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP not null comment '添加时间',
    gmt_modified datetime     default CURRENT_TIMESTAMP not null comment '更新时间'
) comment '用户信息表';

create table t_product_info
(
    id           bigint auto_increment not null comment 'ID' primary key,
    product_name varchar(128) default '' comment '商品名称',
    gmt_create   datetime     default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP not null comment '添加时间',
    gmt_modified datetime     default CURRENT_TIMESTAMP not null comment '更新时间'
) comment '商品信息表';

create table t_book_info
(
    id           bigint auto_increment not null comment 'ID' primary key,
    uid          bigint       default 0                 not null comment 'uid',
    product_id   bigint       default 0                 not null comment '商品id',
    product_name varchar(128) default '' comment '商品名称',
    gmt_create   datetime     default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP not null comment '添加时间',
    gmt_modified datetime     default CURRENT_TIMESTAMP not null comment '更新时间'
) comment '预订表';
