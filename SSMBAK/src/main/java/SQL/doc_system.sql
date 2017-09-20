
CREATE TABLE t_user(

  id INT NOT NULL AUTO_INCREMENT,

  name VARCHAR(50) DEFAULT NULL COMMENT '用户姓名',

  password VARCHAR(80) DEFAULT NULL COMMENT '密码',

  email VARCHAR(36) DEFAULT NULL COMMENT '邮箱',

  PRIMARY KEY (id)

)DEFAULT CHARSET = utf8;


INSERT INTO t_user(name,password,email) VALUES ('cxspace','33269456','JieLiu2017@aliyun.com');


CREATE TABLE t_document(

  id INT NOT NULL AUTO_INCREMENT,

  title VARCHAR(300) DEFAULT NULL COMMENT '文章标题',

  content LONGTEXT COMMENT '文章内容',

  create_time VARCHAR(60) COMMENT '创建时间',

  useremail VARCHAR(100) COMMENT '用户邮箱',

  username VARCHAR(100) COMMENT '创建者姓名',

  second_catalog_id INT COMMENT '二级目录索引',

  PRIMARY KEY (id)

)DEFAULT CHARSET = utf8;


CREATE TABLE t_comment(

  id INT NOT NULL AUTO_INCREMENT,

  doc_id INT COMMENT '文档id',

  content LONGTEXT COMMENT '文档内容',

  username VARCHAR(100) COMMENT '评论者姓名',

  email VARCHAR(100) COMMENT '邮箱',

  create_time VARCHAR(60) COMMENT '创建时间',

  PRIMARY KEY (id)

)DEFAULT CHARSET = utf8;


CREATE TABLE t_first_catalog(

  id INT NOT NULL AUTO_INCREMENT,

  name VARCHAR(200) COMMENT '一级目录名',

  PRIMARY KEY(id)

)DEFAULT CHARSET = utf8;


CREATE TABLE t_second_catalog(

  id INT NOT NULL AUTO_INCREMENT,

  name VARCHAR(200) COMMENT '二级目录名',

  first_catalog_id INT COMMENT '一级目录索引',

  PRIMARY KEY(id)

)DEFAULT CHARSET = utf8;

