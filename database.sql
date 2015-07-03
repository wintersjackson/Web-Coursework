CREATE DATABASE database;
USE database;

DROP TABLE IF EXISTS `order`;
DROP TABLE IF EXISTS `customer`;
DROP TABLE IF EXISTS `product`;
DROP TABLE IF EXISTS `category`;

CREATE TABLE IF NOT EXISTS category (
  `id`   INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  KEY (name)
)
  ENGINE = InnoDB
  CHARSET = latin1;

CREATE TABLE IF NOT EXISTS product (
  `product_id`  INT PRIMARY KEY        AUTO_INCREMENT,
  `name`        VARCHAR(100)  NOT NULL,
  `price`       DECIMAL(8, 2) NOT NULL,
  `description` TEXT,
  `stock`       INT UNSIGNED  NOT NULL DEFAULT 0,
  `category_id` INT           NOT NULL,
  CONSTRAINT `category` FOREIGN KEY (category_id) REFERENCES category (id)
)
  ENGINE = InnoDB
  CHARSET = latin1;


CREATE TABLE IF NOT EXISTS `customer` (
  `id`              INT PRIMARY KEY AUTO_INCREMENT,
  `name`             VARCHAR(50)  NOT NULL,
  `address_house`    VARCHAR(255) NOT NULL,
  `address_street`   VARCHAR(255) NOT NULL,
  `address_town`     VARCHAR(255) NOT NULL,
  `address_county`   VARCHAR(255) NOT NULL,
  `address_postcode` VARCHAR(255) NOT NULL,
  `address_country`  VARCHAR(255) NOT NULL,

  UNIQUE KEY (`name`, `address`)
)
  ENGINE = InnoDB
  CHARSET = latin1;

CREATE TABLE IF NOT EXISTS `order` (
  `customer_id`  INT PRIMARY KEY AUTO_INCREMENT,
  `customer` INT NOT NULL
)
  ENGINE = InnoDB
  CHARSET = latin1;

CREATE TABLE IF NOT EXISTS order_product (
  `order_id`   INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  `price`      DOUBLE           NOT NULL,
  KEY `product` (order_id),
  KEY `product` (product_id),
  CONSTRAINT `product` FOREIGN KEY (product_id) REFERENCES `product` (id),
    CONSTRAINT `order` FOREIGN KEY (order_id) REFERENCES `order` (id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

















	
	
