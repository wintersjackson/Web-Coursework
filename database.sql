CREATE DATABASE database;
USE database;

DROP TABLE IF EXISTS `Order`;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Supplier;
DROP TABLE IF EXISTS Category;

CREATE TABLE IF NOT EXISTS Category(
	id       varchar(8)  primary key,
    name     varchar(20) not null,
    priority double      not null unique,
    key(priority, name)
)

CREATE TABLE IF NOT EXISTS Supplier (
    id   int         primary key auto_increment,
    name varchar(20) not null
	
	CREATE TABLE IF NOT EXISTS Item (
    id          int                 primary key auto_increment,
    name        varchar(20)         not null,
    price       decimal(8,2)        not null,
    description text,
    stock       mediumint unsigned  not null default 0,
    category    varchar(8)          not null,
	supplier    int,
    constraint foreign key (supplier) references Supplier(id)
) 

CREATE TABLE IF NOT EXISTS Customer (
    id      int          primary key auto_increment,
    name    varchar(50)  not null,
    address varchar(200) not null,
    unique key (name, address)
) engine=InnoDB;
	
CREATE TABLE IF NOT EXISTS `Order` (
    id         int           primary key auto_increment,
    customer   int           not null,
)
















	
	
	