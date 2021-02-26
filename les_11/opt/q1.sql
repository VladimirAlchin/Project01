/*
Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
 catalogs и products в таблицу logs помещается время и дата создания записи, 
название таблицы, идентификатор первичного ключа и содержимое поля name.

USE shop;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs(
  id int ,
  date datetime comment ' дата и время добавления',
  tb_name varchar(15) comment 'название таблицы',
  name VARCHAR(255) COMMENT 'поле name',
  col_key bigint comment 'первичный ключ'
) COMMENT = 'таблица логов' ENGINE=ARCHIVE;

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_logs`( 
in col_tb_name varchar(15) ,
in col_name varchar(255) , 
in col_key int )
BEGIN
	insert into shop.logs ( 
    date , 
    tb_name , 
    name , 
    col_key )
    valueS ( 
    NOW() , 
    col_tb_name , 
    col_name , 
    col_key);
    
END


call add_logs('catalogs' , 'text in name' , 123 )

CREATE DEFINER=`root`@`localhost` TRIGGER `catalogs_AFTER_INSERT` AFTER INSERT
 ON `catalogs` FOR EACH ROW BEGIN
	call add_logs ('catalogs' , NEW.name , NEW.id);
END

DROP TRIGGER IF EXISTS `shop`.`users_AFTER_INSERT`;

DELIMITER $$
USE `shop`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
	call add_logs ('catalogs' , NEW.name , NEW.id);
    
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `shop`.`products_AFTER_INSERT`;

DELIMITER $$
USE `shop`$$
CREATE DEFINER = CURRENT_USER TRIGGER `shop`.`products_AFTER_INSERT` AFTER INSERT ON `products` FOR EACH ROW
BEGIN
		call add_logs ('catalogs' , NEW.name , NEW.id);
END$$
DELIMITER ;



*/



