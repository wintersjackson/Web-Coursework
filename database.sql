CREATE DATABASE database;
USE database;

DROP TABLE IF EXISTS `Order`;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS category;

CREATE TABLE IF NOT EXISTS category(
	id       int  primary key,
    name     varchar(20) NOT NULL,
    key( name)
)ENGINE=InnoDB CHARSET=latin1;

CREATE TABLE IF NOT EXISTS product (
    product_id          int                 primary key auto_increment,
    name        varchar(100)         NOT NULL,
    price       decimal(8,2)        NOT NULL,
    description text,
    stock       int unsigned  NOT NULL default 0,
    category_id    int          NOT NULL,
	CONSTRAINT `category` FOREIGN KEY (category_id) REFERENCES category (id)
) ENGINE=InnoDB CHARSET=latin1;


CREATE TABLE IF NOT EXISTS customer (
    id      int          primary key auto_increment,
    name    varchar(50)  NOT NULL,
    addressLine1 varchar(30) NOT NULL,
	addressLine2 varchar(30),
	addressLine3 varchar(30),
	addressLine4 varchar(30),
	
    unique key (name, address)
) ENGINE=InnoDB CHARSET=latin1;
	
CREATE TABLE IF NOT EXISTS `order` (
    customer_id         int           primary key auto_increment,
    customer   int           NOT NULL,
)ENGINE=InnoDB CHARSET=latin1;

CREATE TABLE IF NOT EXISTS order_product (
  order_id int(10) unsigned NOT NULL,
  product_id int(10) unsigned NOT NULL,
  price double NOT NULL,
  PRIMARY KEY (id),
  KEY product (product_id),
  CONSTRAINT product FOREIGN KEY (product_id) REFERENCES product (id)
  CONSTRAINT `order` FOREIGN KEY (order_id) REFERENCES order (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

















	
	
	