DELIMITER //
CREATE PROCEDURE User_login(username VARCHAR(30), pass VARCHAR(45))
BEGIN 
select *
from user u 
where u.username= username and u.pass=pass;
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE Add_user(username VARCHAR(30), pass VARCHAR(45), email VARCHAR(45) )
BEGIN 
INSERT INTO USER(username, pass, email) values(username, pass, email);
END 
//DELIMITER ;

DELIMITER //
CREATE PROCEDURE grant_mod_rights (user_id int)
BEGIN 
UPDATE USER u
SET moderator = true
WHERE u.user_id = user_id;
END 
//DELIMITER ;