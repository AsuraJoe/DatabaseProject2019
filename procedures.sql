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
Select i.instance_number, i.stack, i.item_id, i.enchant_count, ii.item_name from item_instance i, item ii
WHERE i.item_id = item_id AND i.item_id = ii.item_id;
END
//DELIMITER ;

Drop procedure if exists get_instance_enchant;
DELIMITER //
CREATE PROCEDURE get_instance_enchant (num int)
BEGIN 
Select ec.item_instance_number, e.enchantment_name, ec.lv  from enchant ec, enchantment e
WHERE ec.item_instance_number = num and e.enchantment_id=ec.enchantment_id;
END
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE Add_item(item_id int, item_name VARCHAR(40), max_stack int, placeable boolean )
BEGIN 
INSERT INTO Item(item_id, item_name, max_stack, placeable) values(item_id, item_name, max_stack, placeable);
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
INSERT INTO entity(entity_id, entity_name) values(entity_id, entity_name;
END 
//DELIMITER ;  
                                                               
DELIMITER //
CREATE PROCEDURE Add_entity_instance(entity_id int)
BEGIN 
INSERT INTO entity_instance(entity_id,x,y,z) values(entity_id,(select rand()*(256)-128),(select rand()*(256)-128),(select rand()*(256)-128));
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
INSERT INTO block_instance(instance_number, breaking_stage, x, y, z) values(instance_number, breaking_stage,(select(floor(rand()*(256)-128))),(select(floor(rand()*(256)-128))),(select(floor(rand()*(256)-128))));
END 
//DELIMITER ;            
                                                               
DELIMITER //
CREATE PROCEDURE Add_biome(name varchar(45))
BEGIN 
INSERT INTO biome(name) values(name);
END 
//DELIMITER ;                                                                 
                
DELIMITER //
CREATE PROCEDURE Add_biome_block(name varchar(45), block_id int)
BEGIN 
INSERT INTO biome_blocks(name, block_id) values(name, block_id);
END 
//DELIMITER ;
                                        
DELIMITER //
CREATE PROCEDURE delete_biome_block(id int, bname varchar(45))
begin
delete from biome_blocks where name = bname and block_id = id;
end
//DELIMITER ;
                                        
DELIMITER //
CREATE PROCEDURE Add_structure(name varchar(45), biome varchar(45))
BEGIN 
INSERT INTO structure(name, biome) values(name, biome);
END 
//DELIMITER ;
							       
DELIMITER //
CREATE PROCEDURE delete_structure(sname varchar(45))
begin
delete from structure where name = sname;
end
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE view_structures()
begin
select * from structure;
end
//DELIMITER ;
                                                               
DELIMITER //
CREATE PROCEDURE Add_enchantment(enchantment_id int, enchantment_name varchar(40), max_level int)
BEGIN 
INSERT INTO enchantment(enchantment_id, enchantment_name, max_level) values(enchantment_id, enchantment_name, max_level);
END 
//DELIMITER ;
							
DELIMITER //
CREATE PROCEDURE Add_enchant (enchantment_id int, item_instance_number int, lv int)
BEGIN 
INSERT INTO enchant (enchantment_id, item_instance_number, lv) values(enchantment_id, item_instance_number, lv);
END 
//DELIMITER ; 
                                                               
DELIMITER //
CREATE PROCEDURE Add_mob( mob_name varchar(45),mob_type varchar(45), health int, air int)
BEGIN 
INSERT INTO mob(mob_name, mob_type, health, air) values(mob_name, mob_type, health, air);
END 
//DELIMITER ; 
                                                               
DELIMITER //
CREATE PROCEDURE Add_block_drops(block_id int,  item_id int)
BEGIN 
INSERT INTO block_drops(block_id,  item_id) values(block_id,  item_id);
END 
//DELIMITER ;


DELIMITER //
CREATE PROCEDURE Add_player(username varchar(20))
BEGIN 
INSERT INTO player(username, health, hunger, air) values(username, 20, 20, 0);
END 
//DELIMITER ;

/*Delete procs*/
 
 DELIMITER //
CREATE PROCEDURE delete_user(id int)
BEGIN 
Delete from user where user_id = id;
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_item(id int)
BEGIN 
Delete from item where item_id = id;
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_item_instance(id int)
BEGIN 
Delete from item_instance u where u.instance_number = id;
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_entity(id int)
BEGIN 
Delete from entity where entity_id = id;
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_mob(id int)
BEGIN 
Delete from mob where instance_number = id;
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_player(id int)
BEGIN 
Delete from player where instance_number = id;
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_enchant(eid int, iid int)
BEGIN 
Delete from enchant where enchantment_id=eid and item_instance_number =iid;
END 
//DELIMITER;

                                             
DELIMITER// 
create procedure view_biomes()
begin
select i.* from biome i;
end
//DELIMITER;
									
DELIMITER //
CREATE PROCEDURE view_biome_blocks(bname varchar(45))
begin
select i.block_id, i.block_name
from block i inner join biome_blocks j on i.block_id = j.block_id
where j.name = bname;
end
//DELIMITER ;
            
delete_biome_block()
                                             
DELIMITER //
create procedure view_chunks()
begin
select j.lower_x, j.lower_z, i.name
from biome i inner join chunk j on (i.name = j.biome_name);
end
//DELIMITER 


