DELIMITER //
CREATE Trigger on_new_instance AFTER INSERT ON item_instance
FOR EACH ROW
BEGIN
UPDATE item SET item.instances_count = item.instances_count+1 
WHERE item.item_id = NEW.item_id;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_remove_instance AFTER DELETE ON item_instance
FOR EACH ROW
BEGIN
UPDATE item SET item.instances_count = item.instances_count-1 
WHERE item.item_id = OLD.item_id;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_new_enchant AFTER INSERT ON enchant
FOR EACH ROW
BEGIN
UPDATE item_instance SET item_instance.enchant_count = enchant_count+1 
WHERE item_instance.instance_number = NEW.item_instance_number;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_remove_enchant AFTER DELETE ON enchant
FOR EACH ROW
BEGIN
UPDATE item_instance SET enchant_count = enchant_count-1 
WHERE item_instance.instance_number = OLD.item_instance_number;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_insert_player BEFORE INSERT ON player
FOR EACH ROW
BEGIN
INSERT INTO entity_instance VALUES();
SET NEW.instance_number =  last_insert_id() ;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_insert_minecart BEFORE INSERT ON minecart
FOR EACH ROW
BEGIN
INSERT INTO entity_instance(entity_id) VALUES(42);
SET NEW.instance_number =  last_insert_id() ;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_insert_entity_instance after INSERT ON entity_instance
FOR EACH ROW
BEGIN
	If (exists (select * from mob_properties where New.entity_id  = mob_properties.entity_id)) 
	THEN
		INSERT INTO mob(instance_number,health) VALUES( NEW.instance_number, (select default_health from mob_properties where New.entity_id  = mob_properties.entity_id));
	END IF;
END 
//DELIMITER ;
