CREATE DEFINER=`root`@`localhost` PROCEDURE `add_logs`( 
in col_tb_name varchar(15) ,
in col_act int(1) , 
in col_key int )
BEGIN
	INSERT INTO `course`.`logs` ( 
    `table`,
`actions`,
`users_id`,
`key_col`)
    valueS ( 
    col_tb_name , 
    col_act , 
    (select id from users where login = USER()),
    col_key);


END