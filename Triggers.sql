DELIMITER //
CREATE Trigger on_new_instance AFTER INSERT ON item_instance
FOR EACH ROW
UPDATE item SET instances_count = instances_count+1 
WHERE item.item_id = NEW.item_id;
END 
//DELIMITER ;

DELIMITER //
CREATE Trigger on_remove_instance AFTER DELETE ON item_instance
FOR EACH ROW
UPDATE item SET instances_count = intances_count-1 
WHERE item.item_id = OLD.item_id;
END 
//DELIMITER ;