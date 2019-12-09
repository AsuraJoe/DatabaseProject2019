DELIMITER //
CREATE PROCEDURE User_login(username VARCHAR(30), pass VARCHAR(45))
BEGIN 
select *
from user u 
where u.username= username and u.pass=pass;
END 
//DELIMITER;

DELIMITER //
CREATE PROCEDURE Add_user(username VARCHAR(30), pass VARCHAR(45), email VARCHAR(45) )
BEGIN 
INSERT INTO USER(username, pass, email) values(username, pass, email);
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE grant_mod_rights (user_id int)
BEGIN 
UPDATE USER 
SET moderator = true
WHERE u.user_id = user_id;
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE get_instanceOf_Item (item_id int)
BEGIN 
Select instance_number, stack from item_instance i
WHERE i.item_id = item_id;
END
//DELIMITER ;


DELIMITER //
CREATE PROCEDURE get_instance_enchant (num int)
BEGIN 
Select ec.instance_number, e.enchantment_name, ec.lv  from enchant ec, enchantment e
WHERE ec.item_id = item_id;
END
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE Add_item(item_id int, item_name VARCHAR(40), placeable boolean )
BEGIN 
INSERT INTO Item(item_id, item_name, placeable) values(item_id, item_name, placeable);
END 
//DELIMITER ;
                                                               
DELIMITER //
CREATE PROCEDURE Add_item_instance(stack int, item_id int)
BEGIN 
INSERT INTO item_instance(stack, item_id) values(stack, item_id);
END 
//DELIMITER ;
                                                               
DELIMITER //
CREATE PROCEDURE Add_entity(entity_id int, entity_name varchar(30))
BEGIN 
INSERT INTO entity(entity_id, entity_name) values(entity_id, entity_name);
END 
//DELIMITER ;  
                                                               
DELIMITER //
CREATE PROCEDURE Add_entity_instance(entity_id int)
BEGIN 
INSERT INTO entity_instance(entity_id) values(entity_id);
END 
//DELIMITER ;
                                                               
DELIMITER //
CREATE PROCEDURE Add_block(block_id int, block_name varchar(30), transparent boolean, gravity boolean)
BEGIN 
INSERT INTO block(block_id, block_name, transparent, gravity) values(block_id, block_name, transparent, gravity);
END 
//DELIMITER ;  
                                                               
DELIMITER //
CREATE PROCEDURE Add_block_instance(instance_number int, breaking_stage int)
BEGIN 
INSERT INTO block_instance(instance_number, breaking_stage) values(instance_number, breaking_stage);
END 
//DELIMITER ;            
                                                               
DELIMITER //
CREATE PROCEDURE Add_biome(name varchar(45))
BEGIN 
INSERT INTO biome(name varchar) values(name varchar);
END 
//DELIMITER ;                                                                 
                
DELIMITER //
CREATE PROCEDURE Add_biome_blocks(name varchar(45), block_id int)
BEGIN 
INSERT INTO biome_blocks(name varchar, block_id) values(name varchar, block_id);
END 
//DELIMITER ;
                                        
DELIMITER //
CREATE PROCEDURE Add_structure(name varchar(45), biome varchar(45))
BEGIN 
INSERT INTO structure(name varchar, biome varchar) values(name varchar, biome varchar);
END 
//DELIMITER ;
                                                               
DELIMITER //
CREATE PROCEDURE Add_enchantment(enchantment_id int, enchantment_name varchar(40), max_level int)
BEGIN 
INSERT INTO enchantment(enchantment_id, enchantment_name varchar, max_level) values(enchantment_id, enchantment_name varchar, max_level);
END 
//DELIMITER ;
                                                               
DELIMITER //
CREATE PROCEDURE Add_enchant (enchantment_id int, item_instance_number int, lv int)
BEGIN 
INSERT INTO enchant (enchantment_id, item_instance_number, lv) values(enchantment_id, item_instance_number, lv);
END 
//DELIMITER ; 
                                                               
DELIMITER //
CREATE PROCEDURE Add_mob(instance_number int, mob_name varchar(45),mob_type varchar(45), health int, air int)
BEGIN 
INSERT INTO mob(instance_number, mob_name, mob_type, health, air) values(instance_number, mob_name, mob_type, health, air);
END 
//DELIMITER ; 
                                                               
DELIMITER //
CREATE PROCEDURE Add_block_drops(block_id int,  item_id int)
BEGIN 
INSERT INTO block_drops(block_id,  item_id) values(block_id,  item_id);
END 
//DELIMITER ;
                                                                                                                            
