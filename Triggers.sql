DELIMITER //
CREATE Trigger on_new_instance AFTER INSERT ON item_instance
FOR EACH ROW
UPDATE item SET item.instances_count = item.instances_count+1 
WHERE item.item_id = NEW.item_id;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_remove_instance AFTER DELETE ON item_instance
FOR EACH ROW
UPDATE item SET item.instances_count = item.intances_count-1 
WHERE item.item_id = OLD.item_id;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_new_enchant AFTER INSERT ON enchant
FOR EACH ROW
UPDATE item_instance SET item_instance.enchant_count = enchant_count+1 
WHERE item_instance.instance_number = NEW.item_instance_number;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_remove_enchant AFTER DELETE ON enchant
FOR EACH ROW
UPDATE item_instance SET enchant_count = enchant_count-1 
WHERE item_instance.instance_number = OLD.item_instance_number;
END 
//DELIMITER ;
