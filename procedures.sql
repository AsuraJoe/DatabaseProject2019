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