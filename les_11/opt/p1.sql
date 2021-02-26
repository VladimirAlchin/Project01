CREATE PROCEDURE `add_logs` ( 
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
