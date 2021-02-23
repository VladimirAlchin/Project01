/*
В базе данных shop и sample присутствуют одни и те же таблицы,
 учебной базы данных. Переместите запись id = 1 из таблицы 
 shop.users в таблицу sample.users. Используйте транзакции.
 START TRANSACTION;
 
START TRANSACTION;
select @count := count(*) from shop.users where id = 1;
insert into sample.users
select * from shop.users where id = 1;
COMMIT;


Создайте представление, которое выводит название name 
товарной позиции из таблицы products и соответствующее 
название каталога name из таблицы catalogs.

USE shop;
CREATE VIEW cat AS select p.name as product , c.name as catalog from shop.products as p 
join shop.catalogs as c on c.id = p.catalog_id

(по желанию) Пусть имеется таблица с календарным полем created_at. 
В ней размещены разряженые календарные записи за август 2018 года 
'2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
Составьте запрос, который выводит полный список дат за август
, выставляя в соседнем поле значение 1, если дата присутствует в исходном 
таблице и 0, если она отсутствует.

Не сделано 

WITH recursive date_list AS
(
  select '2021-01-01' as n
  UNION ALL
  SELECT date_add(n ,interval 1 day) FROM date_list WHERE n<'2021-02-20'
)
SELECT * FROM date_list;

*/


/*
Практическое задание по теме “Хранимые процедуры и функции, триггеры"

Создайте хранимую функцию hello(), которая будет возвращать приветствие,
 в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна 
 возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна
 возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер",
 с 00:00 до 6:00 — "Доброй ночи".
 
DELIMITER //
DROP FUNCTION IF EXISTS hello;
CREATE FUNCTION hello ()
RETURNS TEXT DETERMINISTIC
BEGIN
	set @a = TIME(NOW()) ;
    IF @a between '06:00:00' and  '12:00:00' THEN set @b = 'Доброе утро' ;
    ELSEIF  @a between  '12:00:00' and  '18:00:00' THEN set @b = 'Добрый день' ;
    ELSE set @b =  'Доброй ночи' ;
    end if;
  RETURN @b;
END//

select hello()
 
 
В таблице products есть два текстовых поля: name с названием товара 
и description с его описанием. Допустимо присутствие обоих полей
 или одно из них. Ситуация, когда оба поля принимают неопределенное 
 значение NULL неприемлема. Используя триггеры, добейтесь того,
 чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить
 полям NULL-значение необходимо отменить операцию.
 
 DELIMITER //
CREATE TRIGGER `products_BEFORE_INSERT`
BEFORE INSERT ON `products` FOR EACH ROW BEGIN
    IF NEW.name IS NULL and new.description is null THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'введите корректные значения';
    END IF;
END
 
 
 USE shop;INSERT INTO `shop`.`products`
(
`name`,
`description`
)
VALUES
(
NULL,
NULL);
 
 
 14:19:27	INSERT INTO `shop`.`products` ( `name`, `description` ) VALUES ( NULL, NULL)
 Error Code: 1644. введите корректные значения	0,0074 sec

*/







